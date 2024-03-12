Return-Path: <devicetree+bounces-50108-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 5F053879A5C
	for <lists+devicetree@lfdr.de>; Tue, 12 Mar 2024 18:11:01 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 19EA7285671
	for <lists+devicetree@lfdr.de>; Tue, 12 Mar 2024 17:11:00 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B5110137C22;
	Tue, 12 Mar 2024 17:10:57 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b="HDxzL5W6"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f51.google.com (mail-wr1-f51.google.com [209.85.221.51])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8AEE81272A4
	for <devicetree@vger.kernel.org>; Tue, 12 Mar 2024 17:10:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.51
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1710263457; cv=none; b=AQBFXQyfIirZwh4rgweaLqpWM1TD7Zh5Co1oQN51UAy9rXEy7BVck2rjmzQ+Jvodqhys2gYU+YK2G62E/O4orAI708G9iYg/kjyfuKWEjr5pJ5UAFvOKp0t41RR5deGmg9OUB1vDo4vylDtbuoT9X4CFsRr9OaNxmbnC7BrBV4Q=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1710263457; c=relaxed/simple;
	bh=b4CGYyV6H0a8CZ9PDg43UgcxxQo7epOIcKkB3Z+8OrQ=;
	h=References:From:To:Cc:Subject:Date:In-reply-to:Message-ID:
	 MIME-Version:Content-Type; b=OoJoW+Wjx8es/9BgOQEksrhbOdBcqqPvbUHKSpAcu6HOxnyLzbaYxj9WQlvDfODlAwu1w1Jq6984M5mtc4ILncCQ1Dnx4tv8pFqDx7dDfZX1IBp4c5NfGD/JbvaSVxLGg/BvZyQJvkLeJRUKa+SAFw5Z3ZIdDJ7EzDg7ADl5aZA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com; spf=pass smtp.mailfrom=baylibre.com; dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b=HDxzL5W6; arc=none smtp.client-ip=209.85.221.51
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=baylibre.com
Received: by mail-wr1-f51.google.com with SMTP id ffacd0b85a97d-33e92b3b5c9so2935331f8f.2
        for <devicetree@vger.kernel.org>; Tue, 12 Mar 2024 10:10:54 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20230601.gappssmtp.com; s=20230601; t=1710263453; x=1710868253; darn=vger.kernel.org;
        h=mime-version:message-id:in-reply-to:date:subject:cc:to:from
         :user-agent:references:from:to:cc:subject:date:message-id:reply-to;
        bh=kedMR37YPDPlsEfMRj5mdnPqWnjFh+suhNRGVJF/T6E=;
        b=HDxzL5W6LiQ8y1PSj+/cA+582apnAs8EmTVpfxlZGpeKL0gz+GgG5IgvEP3xeDOaw8
         gQJ0m9lBFDNjrVP5GFLgyU7tDpYpmUbMpulKiwFVVXJoPiNz0bwIOJoVjk9fP043fENY
         Gb0uFBc/qWFg8BVZ3Co0Czu9p5YWCDOSSe6TTrwl0mpLNcggBLfGLpdtTnRGxcMfcWeo
         BA4+fzOgSFbUV3odblOFLUw72eo/BsYfF3BNZMnK86j1LYZR4Nqz+Fd/sDhD5+prQsVj
         3tzlHNeKTWJw6lXmRMnHqe6XJ4mEE6d5VNoA3uKLz2KAF2ex71+QUxhDoA+Uts4ayAqm
         yr1w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1710263453; x=1710868253;
        h=mime-version:message-id:in-reply-to:date:subject:cc:to:from
         :user-agent:references:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=kedMR37YPDPlsEfMRj5mdnPqWnjFh+suhNRGVJF/T6E=;
        b=DPBrDJJ+LU5VEwh2WUChc99w5RII5aIpw2UKUjs3EEWvTmCHh6AdOcDbeuTk/PzBSv
         MyYWq+5WdZilHTY46lvDzyDrQ+N1ktlWpv+kFGlFZIkC11aRxxaKlHA0P8B1JcUlk7Bm
         C3TtE/UvPMvQ/qI8bp05hFSKY8NJquKLVhsp05AZUbrdvvMG71E/oGhlfesX+VcVUSCk
         nAcUkmjRR0bS81CorZjlFoXG4uqVo8fWOnEQFeshoh1iIHT/CosXvABGZIfKuJ7D9Q3f
         7PYUrMncF/jGoIkGvCX/AnIUrM2VbaHv/l49/0w84pvhStSps9a8bMy9KhycKycUij4G
         ZuFg==
X-Forwarded-Encrypted: i=1; AJvYcCUdVJUCZRee9O0dTBL3Qc0QNxt18GNB/El36Mc2dAfxS6E2aUcCu4c1MzgdIpKxdQT/1lY2+/Pn25s91uR0wlfRZ+xPuM+gk2MMKA==
X-Gm-Message-State: AOJu0YyfREz90wriP0QvKdjCl0bi6uMBtbtqAx+vHwhiyKxvlEgnt26F
	R8/fiZNppdIr+yWOUx1zGXnwcQck3g70ykbtpWHlsZUV4+kbDeBXFxZtx4tNd+o=
X-Google-Smtp-Source: AGHT+IHRsWaKFE7WsFa8j5+Rh+xMT4T6zAID5V3p6aN0dHDcm3x+mt+R2RJMgYs5YTlQcps+fSIZoA==
X-Received: by 2002:adf:f38a:0:b0:33e:5737:ae63 with SMTP id m10-20020adff38a000000b0033e5737ae63mr45287wro.66.1710263452633;
        Tue, 12 Mar 2024 10:10:52 -0700 (PDT)
Received: from localhost ([2a01:e0a:3c5:5fb1:af7b:cf60:208b:83f4])
        by smtp.gmail.com with ESMTPSA id bv10-20020a0560001f0a00b0033e033898c5sm9554413wrb.20.2024.03.12.10.10.52
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 12 Mar 2024 10:10:52 -0700 (PDT)
References: <87v8a64f3d.wl-kuninori.morimoto.gx@renesas.com>
 <87ttpq4f2c.wl-kuninori.morimoto.gx@renesas.com>
 <e7121fbc-c814-4153-9f17-82ad5de13e64@sirena.org.uk>
 <87a5n46xjk.wl-kuninori.morimoto.gx@renesas.com>
 <7248b107-db87-4409-b93c-f65035d0a6b4@sirena.org.uk>
 <1jo7bje6da.fsf@starbuckisacylon.baylibre.com>
 <b9de4fd1-ef4a-4c30-b3cf-e36931be90f1@sirena.org.uk>
User-agent: mu4e 1.10.8; emacs 29.2
From: Jerome Brunet <jbrunet@baylibre.com>
To: Mark Brown <broonie@kernel.org>
Cc: Jerome Brunet <jbrunet@baylibre.com>, Kuninori Morimoto
 <kuninori.morimoto.gx@renesas.com>, Pierre-Louis Bossart
 <pierre-louis.bossart@linux.intel.com>, Bard Liao
 <yung-chuan.liao@linux.intel.com>, bard.liao@intel.com, Conor Dooley
 <conor+dt@kernel.org>, Krzysztof Kozlowski
 <krzysztof.kozlowski+dt@linaro.org>, Rob Herring <robh+dt@kernel.org>,
 alsa-devel@alsa-project.org, devicetree@vger.kernel.org
Subject: Re: [PATCH v7 1/5] ASoC: makes CPU/Codec channel connection map
 more generic
Date: Tue, 12 Mar 2024 18:09:27 +0100
In-reply-to: <b9de4fd1-ef4a-4c30-b3cf-e36931be90f1@sirena.org.uk>
Message-ID: <1jjzm7e5pg.fsf@starbuckisacylon.baylibre.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain


On Tue 12 Mar 2024 at 17:06, Mark Brown <broonie@kernel.org> wrote:

> [[PGP Signed Part:Undecided]]
> On Tue, Mar 12, 2024 at 05:29:25PM +0100, Jerome Brunet wrote:
>
>> Mark, I suspect the boards you have (like the libretech Alta/Solitude or
>> the kvim3 maybe) will show the same thing.
>
> I don't have the kvim3 but I can try with the other two (modulo pain
> with u-boot), it'll be tomorrow now though.

Submitting u-boot mainline support for these is on my TODO list :/
I'll try to speed this up as well

>
>> I can't really test right now, sorry.
>> I can check and test further later this week.
>
> Ack - so long as someone looks into it.
>
> [[End of PGP Signed Part]]


-- 
Jerome

