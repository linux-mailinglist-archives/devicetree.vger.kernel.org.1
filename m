Return-Path: <devicetree+bounces-217755-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id CA754B5929D
	for <lists+devicetree@lfdr.de>; Tue, 16 Sep 2025 11:46:37 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 3C8871888ACC
	for <lists+devicetree@lfdr.de>; Tue, 16 Sep 2025 09:46:59 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 45CC72882B8;
	Tue, 16 Sep 2025 09:46:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b="ihOrmO5c"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f43.google.com (mail-wm1-f43.google.com [209.85.128.43])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F25DA276045
	for <devicetree@vger.kernel.org>; Tue, 16 Sep 2025 09:46:30 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.43
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758015993; cv=none; b=knG3L4QjMczg0Dgu0YkUD+WKPLTPTFexikFIO545yGDKFX76ANKmfWwOpQOYZKe7+xD9pwCFpoz+ea7YYsq/oDyB6SH0M2ABco4l9qta6YG28Vl660UWdHy/ecVfGPj/Xnt1tbQdLIil9EhVm7KLFFMerCRU2maYp08yobjU1Uo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758015993; c=relaxed/simple;
	bh=aZvFpwNaJVyxr1Z6SYFYKIzIYpMe9/vZAJbigLhrk3U=;
	h=From:To:Cc:Subject:In-Reply-To:References:Date:Message-ID:
	 MIME-Version:Content-Type; b=s50Muka+ESEuie9z1bKxoL/0da/qovkUsBi7cCbvAq5tb+30zmMWCj+DEPuyFLehEObnorPn8Qv9t0NDdexo5yKb8guoTcoO1knlY0dMUo6xNVQhVpzufQntuHMi6XhRtMJzlCFeX7eL9TMmUVbNwg6YlbIG6VjmIyQz8STG4iI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com; spf=pass smtp.mailfrom=baylibre.com; dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b=ihOrmO5c; arc=none smtp.client-ip=209.85.128.43
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=baylibre.com
Received: by mail-wm1-f43.google.com with SMTP id 5b1f17b1804b1-45e03730f83so24288795e9.0
        for <devicetree@vger.kernel.org>; Tue, 16 Sep 2025 02:46:30 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20230601.gappssmtp.com; s=20230601; t=1758015989; x=1758620789; darn=vger.kernel.org;
        h=mime-version:message-id:date:user-agent:references:in-reply-to
         :subject:cc:to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=EKriTgmYlGn91P6qgtECUepZvJEA2Di6BahJZ7SaZyQ=;
        b=ihOrmO5cqm2NdGypR+6unc2baqGA4+BUETCtil9DupZVRrWNTF+ZtjXs3VyZZsKvyC
         nWlu6i97Jy+iceag3LAWRpbUKddQHrGkCSofskx4fH83E1g/X8YFluCgMYLCeMRSqpoX
         OCIl/nqdHn0B3N44zShbGv9Uc/mbG5Ks+JQ2DMbCqnmsZ8e20axmn53s0FbsOvLLiPLK
         3RypZFPaAvAAYrokQJoiCPq0xe6EvWyxuC2p9w6xoS7sUQQj39V3MkkZsR4Q8fVilnef
         bUm7pCruTx0txc1o6yPnyFrOfgICuw5o4SbJR++i9nNeKRF08naAmacCVoqODqI1xGwn
         hV2Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1758015989; x=1758620789;
        h=mime-version:message-id:date:user-agent:references:in-reply-to
         :subject:cc:to:from:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=EKriTgmYlGn91P6qgtECUepZvJEA2Di6BahJZ7SaZyQ=;
        b=gt0ewm6eCN4HS/LIP5jFDZm+Q1bW8l9VEasUarXnSWG4LfutMbzbRsN/sZhkjoHA5n
         m3NwfRQecaQutCLblVCiyXBHxXSCLEstMKXhyOKnVSbEEDuzwfdw9uGdJfl5DoRBkp0v
         One7Cg8abEiNjnsaK03rs38s6rgbLiLhELm8GEhlNDCmclTG5+8rxVfbVLSd46QwUA4K
         vTlyqcMFv5FUTo2wZiXgk2Y0Al1fhUcij7XdIsvy2GBWoWODOkdEqE302EQTsgXnW4it
         uwTcH19vX6nkfSe8vC3Zqs+RcX5iZksVIl04frT6iIu/S8yNlsLiqehL4WhMqzsmDo0V
         lNOA==
X-Forwarded-Encrypted: i=1; AJvYcCUedr/LmI2gI6XhFw8+inOPzyiz4ebSLZSZifojs11zQlE5GUNckWlRB4W74A+9OUHDZKYKkdToTECp@vger.kernel.org
X-Gm-Message-State: AOJu0YxFaHMsO4CucbahBmlKxHS1OYtQNBWgis0D5Uy3y2P2mR1Dz+tv
	ZiVDfQbuQt1mOqj54AM6Uw5gCKGTq+y58dntWbdufQ6hK3JWD4dECZHBTEV5blg36Tw=
X-Gm-Gg: ASbGnctinrgRZnd56mAkcH2fSpRS9W8o0SALNrUqp/rEh3ujU9wSCR0rqCD5bBm50T0
	NvpPI7gY61MOQrLNX3dpmPida9dk3K99iUbcv5W1W22y7h1WwPnkSNAkPB58RoLBD/YKU5QQ8uY
	oZXe4FdskYVhTl8obqg2Bhcpvb3FiSxldK8NqMU95j18jxXHReXUl2OQJUgOU2IjJ4FAb68qLs3
	cMi80tGJZp1yD/h8a1UmDpFKry76QRlYZ8Dk45TY7lhOSoNm4p4bFoA9pPjdeSaeiV4GV0pbS8r
	IBDUDY3DouRngNDhBW9qRavubEhLc6VX2O6SiOYstmsXn1lBx1k4m+7NIHfEs35ymR09uf/uhGT
	b5bHj25opCyJLIS3ZJFOR
X-Google-Smtp-Source: AGHT+IE8PXskyGCers87Y7NP0MSYZZPH7pEpN8IMr6HhZYRCkIe+WiPVCA8noQ//F0XdONjDZfZtNw==
X-Received: by 2002:a05:600c:1c0e:b0:45f:2870:222e with SMTP id 5b1f17b1804b1-45f2a023010mr72082385e9.26.1758015989240;
        Tue, 16 Sep 2025 02:46:29 -0700 (PDT)
Received: from localhost ([2a01:e0a:3c5:5fb1:a6cd:21af:56e0:521])
        by smtp.gmail.com with UTF8SMTPSA id ffacd0b85a97d-3e8b7b6ff8fsm13195432f8f.61.2025.09.16.02.46.28
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 16 Sep 2025 02:46:28 -0700 (PDT)
From: Jerome Brunet <jbrunet@baylibre.com>
To: Chuan Liu <chuan.liu@amlogic.com>
Cc: Chuan Liu via B4 Relay <devnull+chuan.liu.amlogic.com@kernel.org>,
  Michael Turquette <mturquette@baylibre.com>,  Stephen Boyd
 <sboyd@kernel.org>,  Rob Herring <robh@kernel.org>,  Krzysztof Kozlowski
 <krzk+dt@kernel.org>,  Conor Dooley <conor+dt@kernel.org>,  Neil Armstrong
 <neil.armstrong@linaro.org>,  Kevin Hilman <khilman@baylibre.com>,  Martin
 Blumenstingl <martin.blumenstingl@googlemail.com>,
  linux-clk@vger.kernel.org,  devicetree@vger.kernel.org,
  linux-kernel@vger.kernel.org,  linux-amlogic@lists.infradead.org,
  linux-arm-kernel@lists.infradead.org,  Krzysztof Kozlowski
 <krzysztof.kozlowski@linaro.org>,  Conor Dooley
 <conor.dooley@microchip.com>
Subject: Re: [PATCH v5 0/2] clk: amlogic: add video-related clocks for S4 SoC
In-Reply-To: <66f130b4-88d7-46d2-9f66-9055896d445a@amlogic.com> (Chuan Liu's
	message of "Tue, 16 Sep 2025 17:30:29 +0800")
References: <20250916-add_video_clk-v5-0-e25293589601@amlogic.com>
	<1j348mj0sw.fsf@starbuckisacylon.baylibre.com>
	<66f130b4-88d7-46d2-9f66-9055896d445a@amlogic.com>
User-Agent: mu4e 1.12.9; emacs 30.1
Date: Tue, 16 Sep 2025 11:46:28 +0200
Message-ID: <1jwm5yhgqz.fsf@starbuckisacylon.baylibre.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain

On Tue 16 Sep 2025 at 17:30, Chuan Liu <chuan.liu@amlogic.com> wrote:

> Hi Jerome:
>
>
> On 9/16/2025 3:47 PM, Jerome Brunet wrote:
>> [ EXTERNAL EMAIL ]
>>
>> On Tue 16 Sep 2025 at 10:06, Chuan Liu via B4 Relay <devnull+chuan.liu.amlogic.com@kernel.org> wrote:
>>
>>> This patch introduces new clock support for video processing components
>>> including the encoder, demodulator and CVBS interface modules.
>>>
>>> The related clocks have passed clk-measure verification.
>>>
>>> Signed-off-by: Chuan Liu <chuan.liu@amlogic.com>
>>> ---
>>> Changes in v5:
>>> - Add Acked-by tags from Conor.
>>> - Remove unnecessary flags as suggested by Jerome.
>> The request was "in an another change" ? Why was this ignored ?
>
>
> Sorry to bother you. I'll drop the flags for 's4_cts_encl_sel' in this
> series and submit a separate patch later to remove CLK_SET_RATE_PARENT
> from enci/encp/cdac/hdmitx clk_muxes. Is that ok?

Why can't make it part of this series, as requested ?
It does not seems that hard to do.

This is another unnecessary revision and the community will have to
review, because you ignored some feedback.

As noted by Krzysztof, you really need to pay more attention to the time
and effort other are spending reviewing your work.

>
>
>>
>>> - Link to v4: https://lore.kernel.org/r/20250909-add_video_clk-v4-0-5e0c01d47aa8@amlogic.com
>>>
>>> Changes in v4:
>>> - Add Acked-by tags from Rob and Krzysztof.
>>> - Fix compilation errors.
>>> - Link to v3: https://lore.kernel.org/r/20250905-add_video_clk-v3-0-8304c91b8b94@amlogic.com
>>>
>>> Changes in v3:
>>> - Rebase with Jerome's latest code base.
>>> - Link to v2: https://lore.kernel.org/r/20250814-add_video_clk-v2-0-bb2b5a5f2904@amlogic.com
>>>
>>> Changes in v2:
>>> - Removed lcd_an clock tree (previously used in meson series but obsolete in
>>> newer chips).
>>> - Removed Rob's 'Acked-by' tag due to dt-binding changes (Is it necessary?).
>>> - Link to v1: https://lore.kernel.org/r/20250715-add_video_clk-v1-0-40e7f633f361@amlogic.com
>>>
>>> ---
>>> Chuan Liu (2):
>>>        dt-bindings: clock: add video clock indices for Amlogic S4 SoC
>>>        clk: amlogic: add video-related clocks for S4 SoC
>>>
>>>   drivers/clk/meson/s4-peripherals.c                 | 206 ++++++++++++++++++++-
>>>   .../clock/amlogic,s4-peripherals-clkc.h            |  11 ++
>>>   2 files changed, 213 insertions(+), 4 deletions(-)
>>> ---
>>> base-commit: 01f3a6d1d59b8e25a6de243b0d73075cf0415eaf
>>> change-id: 20250715-add_video_clk-dc38b5459018
>>>
>>> Best regards,
>> --
>> Jerome

-- 
Jerome

