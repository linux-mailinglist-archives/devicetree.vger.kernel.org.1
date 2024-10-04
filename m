Return-Path: <devicetree+bounces-107987-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 1A19A99110E
	for <lists+devicetree@lfdr.de>; Fri,  4 Oct 2024 23:01:46 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 42E581C22EE5
	for <lists+devicetree@lfdr.de>; Fri,  4 Oct 2024 21:01:45 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D5BA21AE018;
	Fri,  4 Oct 2024 21:01:35 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b="ylpCy8/P"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pl1-f169.google.com (mail-pl1-f169.google.com [209.85.214.169])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4D7D51AE002
	for <devicetree@vger.kernel.org>; Fri,  4 Oct 2024 21:01:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.214.169
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1728075695; cv=none; b=NezQ53txIfFH8qH+30F4R+9GfxYhusNZrFREKStJ2EHLcVRh8EJgXNkbIv5mGD2ZItl8ZXrZOpvv5qEQDCxN1MJHtheG3SQIHet/WN4ZHhnLZhPsgOYQ48pyFfctXsjVt6WMMyFreDNFUJR3hMlaS4dcpijgEvCvdVP2kQ9WlOg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1728075695; c=relaxed/simple;
	bh=ZrU3UBPWJpylAJORtFhQ5c8nnUiqnSULcp2eKF/OetA=;
	h=From:To:Cc:Subject:In-Reply-To:References:Date:Message-ID:
	 MIME-Version:Content-Type; b=OGPYm4Tc77pXP8HGsf6EvtniKRfm7U7Iw5EIA1x5xXc3eGSMLTZU3uHWo8RA58gV2ZOqB0iYhYQaQSv7hApvPXjH4YFIyvPSZ67yfDsQ82MfeXUBR9+6Fhq9RTqtqAz0qmANX+UmWF+Dd3zfqr9KKVZpj76UQ4Ffx43dA8+BVD8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com; spf=pass smtp.mailfrom=baylibre.com; dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b=ylpCy8/P; arc=none smtp.client-ip=209.85.214.169
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=baylibre.com
Received: by mail-pl1-f169.google.com with SMTP id d9443c01a7336-20bb92346caso16685535ad.0
        for <devicetree@vger.kernel.org>; Fri, 04 Oct 2024 14:01:34 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20230601.gappssmtp.com; s=20230601; t=1728075693; x=1728680493; darn=vger.kernel.org;
        h=mime-version:message-id:date:references:in-reply-to:subject:cc:to
         :from:from:to:cc:subject:date:message-id:reply-to;
        bh=02o52SakPOEEYup05c2CaLqcb8nYoF4Ju3nIc1JSSQY=;
        b=ylpCy8/PB3qo0C4i2r0CMq84CWt5tBXptFy/ta1FTzLSHFg+6XVJzu6ItuujiDlO+6
         Y4f8n8Q4wq4bPLOCFuFobu2rNHCH7T58kas6Y+FZR18y1FkKeEhdHUdHfhe2Dz3yNoPN
         YEca7PNdCrKHDegx5XyQQLTGU5a2YXCpFI5NJWGtwbbya2zVLEMiZQBsRym5uHiKPyii
         +LFSGg/ZM1YtASm/gKg7UtgOReYB4P+abNKErb1wsLjVXOI7QFGeqPcZ2VMK1rO1wdOi
         17KfrkLH4D+p3T+ZkBR7ziYtKu9nmsvito5rnNxSljtuE0XXTZcHQzJbGksc4fc5QOnY
         QJTA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1728075693; x=1728680493;
        h=mime-version:message-id:date:references:in-reply-to:subject:cc:to
         :from:x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=02o52SakPOEEYup05c2CaLqcb8nYoF4Ju3nIc1JSSQY=;
        b=KrLXij39BzoWh3jd//tlHvak/cAcTBVs0RpCgXNtAKbWtdL4LkQ/h9S7pkpBSsdGp3
         OTsEKKmRElv5nKarGHJdS6taHaBEr9+6EZhrGfaUqZ+WJGfyZ6Lo+fl8ukilhiKqJWdG
         mFX2tJGk0XsFl5vtED9YGltAgUBwaxMU6+OfXt4Tc6lv787z1SEFCxjYS7hL8PgsYFFC
         UXmFgaPu4PD4366FJ72TJcWG/E8PCcaBb6S1DlHIDstvflHY0vJupTHWzd3EV5juGPX7
         rJS0BBcb72OP0cQ+eS0VrUmOFSCcatEz05NFYZ1fqh/1Ckm4Q9pPkY+1aVNT0gZaoaDi
         pGGg==
X-Forwarded-Encrypted: i=1; AJvYcCV63Ao9p6ETlPh8GZVA037tGXKOuwzfFbCVcINLiFy/ssBlP5s0+lVFhe84LqOUWYYL70yys/H3nlBj@vger.kernel.org
X-Gm-Message-State: AOJu0Yxz8fpL5KbjHu2gr2vxDBrhuUqGnXRl2WB+vbJfp0ZZTBRD1cxy
	rRCCpD60JAADr+zac0dy93YJp0HMJf9PI4JKy1To6T/45K5fPFm71Fv47aJDcv4=
X-Google-Smtp-Source: AGHT+IGOrzY7Ll1jPw3NbGDwLof/FW9IZlr1dap2JCDIDG/Ooagd56yXVujIfA03YdIssw8ZNUuurA==
X-Received: by 2002:a17:902:cec7:b0:20b:db4:d913 with SMTP id d9443c01a7336-20bff494762mr65270885ad.11.1728075693610;
        Fri, 04 Oct 2024 14:01:33 -0700 (PDT)
Received: from localhost ([71.212.170.185])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-20c139311aasm2699195ad.175.2024.10.04.14.01.32
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 04 Oct 2024 14:01:33 -0700 (PDT)
From: Kevin Hilman <khilman@baylibre.com>
To: Roger Quadros <rogerq@kernel.org>, Tony Lindgren <tony@atomide.com>, Rob
 Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor
 Dooley <conor+dt@kernel.org>, Enric Balletbo i Serra
 <eballetbo@gmail.com>, Javier Martinez Canillas <javier@dowhile0.org>
Cc: Nishanth Menon <nm@ti.com>, srk@ti.com, linux-omap@vger.kernel.org,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, Roger Quadros <rogerq@kernel.org>
Subject: Re: [PATCH 0/3] ARM: dts: ti: omap: fix dtbs_check warnings for
 ti,gpmc-nand and ti,gpmc-onenend
In-Reply-To: <20240903-gpmc-dtb-v1-0-380952952e34@kernel.org>
References: <20240903-gpmc-dtb-v1-0-380952952e34@kernel.org>
Date: Fri, 04 Oct 2024 14:01:32 -0700
Message-ID: <7ha5fjk2fn.fsf@baylibre.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain

Hi Roger,

Roger Quadros <rogerq@kernel.org> writes:

> This series fixes dtbs_check warnings on OMAP platforms
> for ti,gpmc-nand and ti,gpmc-onenand.
>
> The following warnings are fixed
> - "nand@0,0: Unevaluated properties are not allowed ('linux,mtd-name' was unexpected)"
> - "nand@0,0: Unevaluated properties are not allowed ('gpmc,device-nand' was unexpected)"
> - "omap3430-sdp.dtb: onenand@2,0: Unevaluated properties are not allowed ('linux,mtd-name' was unexpected)"
>
> ---
> Roger Quadros (3):
>       ARM: dts: ti: drop linux,mtd-name from NAND nodes
>       ARM: dts: ti: omap: am335x-baltos: drop "gpmc,device-nand" from NAND node
>       ARM: dts: ti: omap3434-sdp: drop linux,mtd-name from onenand node
>
>  arch/arm/boot/dts/ti/omap/am335x-baltos.dtsi       | 1 -
>  arch/arm/boot/dts/ti/omap/am3517-som.dtsi          | 1 -
>  arch/arm/boot/dts/ti/omap/dm8148-evm.dts           | 1 -
>  arch/arm/boot/dts/ti/omap/dm8168-evm.dts           | 1 -
>  arch/arm/boot/dts/ti/omap/dra62x-j5eco-evm.dts     | 1 -
>  arch/arm/boot/dts/ti/omap/logicpd-som-lv.dtsi      | 1 -
>  arch/arm/boot/dts/ti/omap/logicpd-torpedo-som.dtsi | 1 -
>  arch/arm/boot/dts/ti/omap/omap3-evm-37xx.dts       | 1 -
>  arch/arm/boot/dts/ti/omap/omap3-evm.dts            | 1 -
>  arch/arm/boot/dts/ti/omap/omap3-igep.dtsi          | 1 -
>  arch/arm/boot/dts/ti/omap/omap3-ldp.dts            | 1 -
>  arch/arm/boot/dts/ti/omap/omap3-overo-base.dtsi    | 1 -
>  arch/arm/boot/dts/ti/omap/omap3430-sdp.dts         | 2 --
>  13 files changed, 14 deletions(-)
> ---
> base-commit: 5be63fc19fcaa4c236b307420483578a56986a37
> change-id: 20240830-gpmc-dtb-de2ce28acfb6

FYI: you seem to have used the same change-id in this series as in a
previous patch[1], which means when I point b4 at this series, notices
the same change-id in the other patch, thinks it's a v2 of this series,
and tries to apply the v2 patch instead.

I was able to "encourage" b4 to apply this series by using -v1, but it
took me a bit to figure out why I pointed it at a 3 patch series and it
was applying a single patch from a different thread.

Kevin

[1] https://lore.kernel.org/all/20240903-gpmc-dtb-v2-1-8046c1915b96@kernel.org/

