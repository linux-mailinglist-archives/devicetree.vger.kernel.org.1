Return-Path: <devicetree+bounces-50103-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 0A5B787996E
	for <lists+devicetree@lfdr.de>; Tue, 12 Mar 2024 17:56:44 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id B3D091F225D5
	for <lists+devicetree@lfdr.de>; Tue, 12 Mar 2024 16:56:43 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 0239D137C22;
	Tue, 12 Mar 2024 16:56:40 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b="vEg5dk2p"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-f45.google.com (mail-lf1-f45.google.com [209.85.167.45])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 00DED273FC
	for <devicetree@vger.kernel.org>; Tue, 12 Mar 2024 16:56:36 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.45
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1710262599; cv=none; b=WRfEQuzia8ls+MIegJubfcMlJoWAl1DqB+/T/XIEkg9PnN2XYZooxctxo+1Q8pNWeTcxWJrrO4oAsH3QY/Nte3QiRPaOXAfwYmLdqNKTCZ/UFi+F11GCyGh+qBSNBreouJDybdbgtphDaum0dBSlnZVbqxO9KCqX5XhqX1AhEmw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1710262599; c=relaxed/simple;
	bh=+Jpp0SctZBoE5oavR5EXIu8le75lHRXJ7ZnPAA9ap1k=;
	h=References:From:To:Cc:Subject:Date:In-reply-to:Message-ID:
	 MIME-Version:Content-Type; b=kR5OdN+QoLxEHCMREWyxUudOjOG4urMP9gIpZsmC7QFB9II0WgYzJcrggdABvPzKSqLK8K6UR/B314Ng88xLXjfoqG6zHT8WvIaiW9PCIMuxW3hpjBqg3ChPWadg4Y9ZBOwRLp3aq/EwffBwhJyMASGsWEGync+BirUqk2L1ggU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com; spf=pass smtp.mailfrom=baylibre.com; dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b=vEg5dk2p; arc=none smtp.client-ip=209.85.167.45
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=baylibre.com
Received: by mail-lf1-f45.google.com with SMTP id 2adb3069b0e04-512f54fc2dbso139705e87.1
        for <devicetree@vger.kernel.org>; Tue, 12 Mar 2024 09:56:36 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20230601.gappssmtp.com; s=20230601; t=1710262595; x=1710867395; darn=vger.kernel.org;
        h=mime-version:message-id:in-reply-to:date:subject:cc:to:from
         :user-agent:references:from:to:cc:subject:date:message-id:reply-to;
        bh=3B6MiC9H6tI4tQWlutOAgnzSQZlla384PUxY79mvHQA=;
        b=vEg5dk2pEyZI0XsNOpO72KdZCLFIqyckwQ6SV7PO6rKZINzq9lLq/hf8iqLtbG7ZQ4
         zbiPWfMor65CnIyiDTprS03QfgzGdHMdts89dTcK5is0ptgqznjoFaLAfu49+ywMj7oV
         W5GPtAEhQi2pN3K+dKr5x+CI7c+Fg9r5UPbk1OIeiSPNCNPsTs8FrvQpnaoc+0JfTXy7
         Hau6NrRZYUSDN2//dhIb15Cgxu4E5AR6tQfSeLDU1SsAnTHsJIUp/TUeiJ4Lu23Twpz3
         iprq34MyYC9PF1i5QwAB+2DTjZzWgCWUN+S6WKnbE263b0xcNCewi9hOnd/S7Uda3LlJ
         PcqA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1710262595; x=1710867395;
        h=mime-version:message-id:in-reply-to:date:subject:cc:to:from
         :user-agent:references:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=3B6MiC9H6tI4tQWlutOAgnzSQZlla384PUxY79mvHQA=;
        b=oJVOmaK5VXiSwa17Xhe7PnpZCQDf5Amn5BjhXHqb23srQBjIg+RvNnmXkoQ9rImKi6
         pPUVr4ZSs1GXdaP/SfqtZSee6LfRl2F6HTw4xFtKlRdycWczUfymeX3uClRKzPf7cias
         zoF5TDFPrY70AYFpz8aqikoHQvanQCCl8N5hkU4HjbfMCyoBxOItWKOImfBSHVyWg1sI
         SvbqQSYZgXE0rii2X9bCUUbTWyX0l7otiYJACgnEq08CIOkbsrnVd/9Y2yPEOJaQ0fK8
         jMfGFdKV8sp4OLyPvYMqyBd7F3f+C69gZqiu5qj45Flxb2gBInJGTUeUaMflShedHB82
         DO6g==
X-Forwarded-Encrypted: i=1; AJvYcCUF1WBieCj+uT8dFlKv5A0aWDnd8CEVJ6N24w99TVR20DtgEm7jPPHlDARVTLUPSsbqkWKtehwD1j/8VK+mHIm8ofI9hdZ+b4Vy+Q==
X-Gm-Message-State: AOJu0YyNVfle5kzoYdw2Sl+92mFbJvfmZn7NkTqgGxWhzbkFt8clUHDm
	XCa096gKkN1fP6PzhOmftFKRM5yq5nXw00lMk1n/J9bAYeJjU0Dp1+19lzd2UCY=
X-Google-Smtp-Source: AGHT+IF8U0bYGEWYmFU/rjKOeBTXnSq7EtQmLk15zyx333S4XxlgMeiXcEfYOOnLbUq1ruRV41D6WQ==
X-Received: by 2002:ac2:5497:0:b0:513:39a0:1fec with SMTP id t23-20020ac25497000000b0051339a01fecmr494622lfk.66.1710262594782;
        Tue, 12 Mar 2024 09:56:34 -0700 (PDT)
Received: from localhost ([2a01:e0a:3c5:5fb1:af7b:cf60:208b:83f4])
        by smtp.gmail.com with ESMTPSA id h15-20020a05600c350f00b004131d2307e7sm12971255wmq.12.2024.03.12.09.56.34
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 12 Mar 2024 09:56:34 -0700 (PDT)
References: <87v8a64f3d.wl-kuninori.morimoto.gx@renesas.com>
 <87ttpq4f2c.wl-kuninori.morimoto.gx@renesas.com>
 <e7121fbc-c814-4153-9f17-82ad5de13e64@sirena.org.uk>
 <87a5n46xjk.wl-kuninori.morimoto.gx@renesas.com>
 <7248b107-db87-4409-b93c-f65035d0a6b4@sirena.org.uk>
User-agent: mu4e 1.10.8; emacs 29.2
From: Jerome Brunet <jbrunet@baylibre.com>
To: Mark Brown <broonie@kernel.org>
Cc: Kuninori Morimoto <kuninori.morimoto.gx@renesas.com>, Pierre-Louis
 Bossart <pierre-louis.bossart@linux.intel.com>, Bard Liao
 <yung-chuan.liao@linux.intel.com>, bard.liao@intel.com, Conor Dooley
 <conor+dt@kernel.org>, Krzysztof Kozlowski
 <krzysztof.kozlowski+dt@linaro.org>, Rob Herring <robh+dt@kernel.org>,
 Jerome Brunet <jbrunet@baylibre.com>, alsa-devel@alsa-project.org,
 devicetree@vger.kernel.org
Subject: Re: [PATCH v7 1/5] ASoC: makes CPU/Codec channel connection map
 more generic
Date: Tue, 12 Mar 2024 17:29:25 +0100
In-reply-to: <7248b107-db87-4409-b93c-f65035d0a6b4@sirena.org.uk>
Message-ID: <1jo7bje6da.fsf@starbuckisacylon.baylibre.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain


On Tue 12 Mar 2024 at 13:51, Mark Brown <broonie@kernel.org> wrote:

> [[PGP Signed Part:Undecided]]
> On Tue, Mar 12, 2024 at 01:36:47AM +0000, Kuninori Morimoto wrote:
>
>> Hmm...
>> does it have un-cleared "dai_link->ch_maps" ?
>
>> Thank you for your help !!
>
> I can't immediately see where ch_maps would get set for this board (it
> looks like Intel is the only user?) but I might be missing something.  I
> don't have the board myself so can't run anything directly - Jerome?

This board (the u200 reference design) does not have anything particular
compared to other Amlogic g12 based design. Not sure I have an u200 with me,
I'll check.

Mark, I suspect the boards you have (like the libretech Alta/Solitude or
the kvim3 maybe) will show the same thing.

The axg sound card (sound/soc/meson/axg-card.c) does not touch ch_maps.

This cards uses a few tricks to deal with this rather complicated HW.
Off the top of my head, maybe the following could complicate things
for this rework:

* dai_links are allocated with krealloc because we need to add links
  for the TDM loopbacks. Whether or not loopback are needed is only known
  halfway through the parsing of DT. Still, __GFP_ZERO is used, so ch_maps
  should be cleared - so I doubt this is the problem

* In addition to DPCM, the card uses "Codec 2 Codec" links.
  IOW, there is 2 layers of links with '.no_pcm = 1'.
  This is necessary because there another layer of digital routing past the
  DPCM backends (basically a mux between the TDM backends and internals
  codecs, like HDMI). Maybe this does not play well with this patch series.

I can't really test right now, sorry.
I can check and test further later this week.

>
> [[End of PGP Signed Part]]


-- 
Jerome

