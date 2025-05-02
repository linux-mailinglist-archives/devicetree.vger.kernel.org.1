Return-Path: <devicetree+bounces-173124-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 1D37CAA77C3
	for <lists+devicetree@lfdr.de>; Fri,  2 May 2025 18:53:39 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 898791C202B1
	for <lists+devicetree@lfdr.de>; Fri,  2 May 2025 16:53:28 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 2F89C25A2DA;
	Fri,  2 May 2025 16:52:40 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b="tcxL93Dc"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pf1-f181.google.com (mail-pf1-f181.google.com [209.85.210.181])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4D8C225DCF8
	for <devicetree@vger.kernel.org>; Fri,  2 May 2025 16:52:38 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.210.181
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746204760; cv=none; b=tS9GH/DdjkpJAyjs+VyES2ie02pgVmBfMHFBeda/n2k05VBHL1KBj7fPXU2nGDrvxtLV9vFJb7etfdiOrj/ZrnrFa4krVVKtqssC7dL9GMRGISwfTLEWe+MjmkaQVFOc/eNQImQL5h8S3cP7ARxLsd8bmh40UG6JuddmhXGYk5o=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746204760; c=relaxed/simple;
	bh=flHVlpeehR7TCw0XEm8yjU/UxT+hrKH/vgqJ1V8edzk=;
	h=From:To:Cc:Subject:In-Reply-To:References:Date:Message-ID:
	 MIME-Version:Content-Type; b=d16eLfgiy3yD5xrKBj6epS8XctmTQ5sOBxHJukQbEbLfHks9WfhGBXfaXEE6zBXvNaIXMOMNB/Sn+MKcVjKjdaCRN7nKPy0zDS1gInV4l1DbRQh5s25xQQHS0WQaaz/qywqxWWrjiwWJnKVd5ltRxJq6nnU1LgjhVsPi3VAY5Ls=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com; spf=pass smtp.mailfrom=baylibre.com; dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b=tcxL93Dc; arc=none smtp.client-ip=209.85.210.181
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=baylibre.com
Received: by mail-pf1-f181.google.com with SMTP id d2e1a72fcca58-736aa9d0f2aso3250196b3a.0
        for <devicetree@vger.kernel.org>; Fri, 02 May 2025 09:52:38 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20230601.gappssmtp.com; s=20230601; t=1746204757; x=1746809557; darn=vger.kernel.org;
        h=mime-version:message-id:date:references:in-reply-to:subject:cc:to
         :from:from:to:cc:subject:date:message-id:reply-to;
        bh=zwVDzOur7RIZgOEAv6FVzTh6NPuuDPam1fW7Dewd/Po=;
        b=tcxL93DcEyiiBor9vEoz5e+S1Nb9dV7yIbabQGjxv41EQSMoBuxPMzlCQ2n/Lr0unZ
         VWf5oejvbN927QA9YSaXldmXY5NBM0iLopNipVlGhzph23DvjbQbAkOT6gziGEQQFJfJ
         Qwx6/llt/mQEUWIbJW9ln86ho2mSnzHQQ1aLO8dzd25DTj9uvzUkKnSOvsGyFUxBZ4qk
         ScstrHj3pq4phwpwR+kLollQE3qAxRvNPWr+BbXwdKlD+EphBHsHX8IVkPJ0SpfBmEfQ
         1dDc5EooL1aG34sjVl3ZfOEs3swtHVFINAvICXylR03yjBBr/4wVZabNsaJ3arFXrXLa
         Li/Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1746204757; x=1746809557;
        h=mime-version:message-id:date:references:in-reply-to:subject:cc:to
         :from:x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=zwVDzOur7RIZgOEAv6FVzTh6NPuuDPam1fW7Dewd/Po=;
        b=D/51fDC25sGH9h4Xe6RG8FwoBbwdXEEak2tmHZoaQz0ueVmAh/fYepsfQAXJUrp3eX
         a+ehkgMOn+oMF41l5NC4aUWwBVMrPk+pFI21PRvc36z+kDUYncOgMIOfr3wh3avTonPc
         fKvOiFgYsMBa/gQZ8vcOaxhelozo6s756BOknqy6YP1LyDgq/lM7kdEABTC3d51pyhLh
         reQp6zxZ8tid2MK2pIwkBnehlLnoUJu9EHFK1kv3hQvH2uOQU5y+arRPhATDjBUm/OOM
         HG0jUKFgH0GHVnt660mcA0cz6rR93tOLZwLUhTggaGi/CtE8ZMagj9g018e/KroisjKN
         ByXg==
X-Forwarded-Encrypted: i=1; AJvYcCWXHUkGTv5FW9PpUAy++L9JhFNmhcNCVdttL/+mlTA93LHFLqsgJD70BWSjQgcBd5wQmWGBaXpNd2b2@vger.kernel.org
X-Gm-Message-State: AOJu0Yx3YA3OfTvLiAqE4iNmfY1Q8vaYya3DT4aH7YVZ5gyqup4kltvB
	ay2bD0WbSYx6qmctxqL2MWO3Ec65i9N/YWusnojptTbiMYPpGyCVp13kbZTAfgY=
X-Gm-Gg: ASbGncvnkqYX94xPILdeKh3xcAwQNQDyRpj8R4GxdgceKe7Ak3sD+5//oHqXj4icZ+C
	g+mqW+PgC0JfDULc2XNAZxsyU6DYDpD+JP9TaTPUT9iVrx9FC3uOegq+ckUIwjK7D3E7X9sVPnu
	iOHfS0lIMKC3EAJMiJHsMrdYsM5g/aNf5NdodYHfHQkvIspaXUcVpCzJBmtH+FT8634SS6vAYuN
	q7M5k3Z/xNeQGMmojZt0N1ovLFse03bHK2mhujHQ1pwEWUEU9qaWmGZYwS4/vfZv6yJY0q8nR4d
	c3ufr0BUP51zJurAZ6acGtJVdBlMh0iKdb95ZTI=
X-Google-Smtp-Source: AGHT+IHL853QtPBvn6TRtsHQJ/I0TV+kdjSuCmTaYdabOIhgtftYO0dyIOU2uqAMhP2Xe4dVkYjrRw==
X-Received: by 2002:aa7:9306:0:b0:73e:1e21:b653 with SMTP id d2e1a72fcca58-740672b165dmr5326b3a.5.1746204757544;
        Fri, 02 May 2025 09:52:37 -0700 (PDT)
Received: from localhost ([97.126.182.119])
        by smtp.gmail.com with ESMTPSA id 41be03b00d2f7-b1fb3b56007sm1009841a12.17.2025.05.02.09.52.36
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 02 May 2025 09:52:37 -0700 (PDT)
From: Kevin Hilman <khilman@baylibre.com>
To: Ulf Hansson <ulf.hansson@linaro.org>, Sukrut Bellary
 <sbellary@baylibre.com>
Cc: Russell King <linux@armlinux.org.uk>, Rob Herring <robh@kernel.org>,
 Tony Lindgren <tony@atomide.com>, Krzysztof Kozlowski
 <krzk+dt@kernel.org>, Nishanth Menon <nm@ti.com>, Aaro Koskinen
 <aaro.koskinen@iki.fi>, Andreas Kemnade <andreas@kemnade.info>, Roger
 Quadros <rogerq@kernel.org>, Conor Dooley <conor+dt@kernel.org>, Santosh
 Shilimkar <ssantosh@kernel.org>, Bajjuri Praneeth <praneeth@ti.com>,
 Raghavendra Vignesh <vigneshr@ti.com>, Bin Liu <b-liu@ti.com>,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-omap@vger.kernel.org, devicetree@vger.kernel.org,
 linux-pm@vger.kernel.org
Subject: Re: [PATCH 0/4] PM: TI: AM335x: PM STANDBY fixes
In-Reply-To: <CAPDyKFrM7Qn2YtQKY+vCHP32Z_Ly-ECt=SU9EGojFu1ShktUpQ@mail.gmail.com>
References: <20250318230042.3138542-1-sbellary@baylibre.com>
 <7h34efy1yb.fsf@baylibre.com>
 <CAPDyKFrM7Qn2YtQKY+vCHP32Z_Ly-ECt=SU9EGojFu1ShktUpQ@mail.gmail.com>
Date: Fri, 02 May 2025 09:52:36 -0700
Message-ID: <7hldrfuf8r.fsf@baylibre.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain

Ulf Hansson <ulf.hansson@linaro.org> writes:

> On Fri, 11 Apr 2025 at 02:30, Kevin Hilman <khilman@baylibre.com> wrote:
>>
>> Sukrut Bellary <sbellary@baylibre.com> writes:
>>
>> > This patch series fixes the Power management issues on TI's am335x soc.
>> >
>> > on AM335x, the wakeup doesn't work in the case of STANDBY.
>>
>> This series is specifically targetted at the AM335x EVM (which I don't
>> have to test), so I'd appreciate getting any test reports for this
>> before I queue it up.
>>
>> For AM335x, I currently only have the ICEv2 and Beaglebone Black,
>> neithor of which support suspend resume with RTC wake AFAICT.  If they
>> do, please enlighten me. :)
>>
>> I was able to do a basic boot test on the 2 boards I have with this
>> series applied on top of v6.15-rc1 and basic boot still works, but I was
>> not able to test the PM path that's being changed here, so any tests on
>> AM3 platforms that actually use this path are appreciated.
>>
>> Kevin
>
> Is the pmdomain patch(3) ready to be applied here? Please let me know
> if you want me to pick it up.

Not yet, I have some concerns so I'd like to see more testing on the
actual hardware, which I don't have (yet, but it's on the way).

Kevin



