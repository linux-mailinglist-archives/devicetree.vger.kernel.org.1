Return-Path: <devicetree+bounces-231947-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from dfw.mirrors.kernel.org (dfw.mirrors.kernel.org [IPv6:2605:f480:58:1:0:1994:3:14])
	by mail.lfdr.de (Postfix) with ESMTPS id 42BD5C132FD
	for <lists+devicetree@lfdr.de>; Tue, 28 Oct 2025 07:39:24 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.mirrors.kernel.org (Postfix) with ESMTPS id B71AA4E2749
	for <lists+devicetree@lfdr.de>; Tue, 28 Oct 2025 06:39:22 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 7F3D12C0296;
	Tue, 28 Oct 2025 06:39:21 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="T+D/2g1Y"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lj1-f178.google.com (mail-lj1-f178.google.com [209.85.208.178])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8A9A82C0294
	for <devicetree@vger.kernel.org>; Tue, 28 Oct 2025 06:39:19 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.178
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761633561; cv=none; b=OBVT0uphkuerZYgyhEUh8pASSU0Jgj6AzkaFXahiztRAywwYevpODAR/RVuF8Yl5VcWEp/YQ4Z1/3N5tKQRoOMFP/lno3lUAllkSu5Hb9aYS8H14MeHf1KbhDJECAbCn/L8vDGd9PG3Mw2I0pcR91sqJ8MLkye0AhD8Pj0rASZc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761633561; c=relaxed/simple;
	bh=oe8UGTsyZQU+Sb6o4knYJm/Nl+RnNUK56OH6fcAsM64=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=CZtzggoN01ig6bOjYWEeOZ+haYE0yCadJOnXf7vSeqR1q4MRQTCyjxPX0lum+1VddnaOsyWCEKKnjdG4VKU6buhLKnLvmBanNkiGfaHGQ+DorHHook/eqEnsfkbebfqR7qB8ZfCH/i6vh0eW5rm77RLCqw5Jexauh7iy2a3kPs0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=T+D/2g1Y; arc=none smtp.client-ip=209.85.208.178
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-lj1-f178.google.com with SMTP id 38308e7fff4ca-37775ed97daso65483071fa.0
        for <devicetree@vger.kernel.org>; Mon, 27 Oct 2025 23:39:19 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1761633558; x=1762238358; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=o2NHp9DtfBxd6wakLEvsBSL0E8nIoGL8qMdT+jYFy9w=;
        b=T+D/2g1YRWTe3hvcE6dzlW/v7H7zmsCuzU4PeToa71WdgD5U/gfl6VOqTMxwotTjow
         sCXyzAruCgyhUpxXWKp1rtFdo83yEFxedHO305txU/NYFxqfBqkCgc4aISU1QtjjKzf/
         H/ANG1sxpXpAtYR3rCJtXW8V1xMAvtI1BF3sNgW97zA4wHqIsOeuScWQkGFcEGG4U9Xa
         E7jEWWZyDAqQmxpxfh+t/8Ufp0nVLgE9RXnVuhiUvGKtK0Rn8kOxo++RufEezI+tDRBy
         RE/Rs0OA18VTS/KlBxm6gF8W92mwUpzogHFLtbaL/aFvAIyXx1asxi0vuBAOe+q3Zid0
         vG8Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1761633558; x=1762238358;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=o2NHp9DtfBxd6wakLEvsBSL0E8nIoGL8qMdT+jYFy9w=;
        b=I0106YbQ+0co/B9p529nTPalLFtZ1mPIArHz3AfZIE+SUQRrsJrFOTv1P9WHZg9dR6
         VXTZnvaxGhx/gwP6LFhk9iobeXJMrjA/NgAVQ/kvywQB2d2ud28pj3ZMj9rxq0hp2wAn
         3BxaewNRgxsdDl/wvTkwLyweI1RBdDTDBoCNvWu8C2+BF5HE9KGkMUfJqlL3X23La+Uw
         3XZWa3S5/Bjer8xUF42pGgRhP4pE/ve+pZ+zovCMVU7CJQPKj0jq74sg8AeCt4uOcTxe
         q3gmf0ZLOau0Q7v5srC5LG4YsCt0XH9BETk4tjxQ402Qg+SXfwPyF/ctFbZpwRHs7i9J
         VRNQ==
X-Forwarded-Encrypted: i=1; AJvYcCV2LOj76wtauHDg90axcuLIq5v+ZVlZoUPjRIbk9GVw2R/GLBBcSwYBcAkmRvpBI8dqM37PRZ0QQc0C@vger.kernel.org
X-Gm-Message-State: AOJu0Yy0MwTzg+kAVVlGnO4Fo5RHVvq9H6Azr3OdaGTOjdca2w8pA9tp
	2j5uaQb05JNmVPXLe2Odd1dTh/e1zyrqfSUq0N2ggKyvm0BSxzuWSKmp
X-Gm-Gg: ASbGncuIlioePNSB/r0bcaJrDbpnfzoRkDOG8ygHRF3kDhvGArgFHBubJGchFNUO6Vx
	4v0Mv8D+ZhDY+9X4utH4aUtkbo3L1FSVcpsIJsSdRnploy7PSZLka9hJRubpeHCHH6+Gsig8r5g
	uO1c3gpo/XDjU+6yWcGrs8AWWKWpLuj0k1Iq69uuzRcZI7NJ7sGAjoAbIhV83oswo0fR5Z5fCBv
	mjvJQQZMZhLNd4MlwdWKgqvMHbgacEmBkQ664PwpAgdXGpsFeVPbsfS7RFHwBZCzzuawnqW7rNA
	Z+PAyPBLOY+XYwXlmUovRmerD3XCXX+pd9cAeNlI9fU/FvIa+nS16m25sovGFZWEoQzPu0JnYQT
	VQdowkDXyOnXvJOkJlSS5vWFu9VIvGXt4iXJc4M5Zb/caZAld3Uk5QQYwIujJ5VErxSuPGpMuTA
	GuuSy5nNtbvCrOqNwdf0MuCJSnBpfiP3jG/EJzUpezpK2uciGhLvxasoIPZg==
X-Google-Smtp-Source: AGHT+IHynrA8gmQbmSsLhwg1ZIot0gtNKrvR9BYrLAUuDbg/4/iyYf4/D5eEEzFU8nZaoyRtB4Zbkg==
X-Received: by 2002:a05:651c:2228:b0:376:3933:1d89 with SMTP id 38308e7fff4ca-37907cbd1ecmr6519691fa.24.1761633557353;
        Mon, 27 Oct 2025 23:39:17 -0700 (PDT)
Received: from ?IPV6:2a10:a5c0:800d:dd00:8fdf:935a:2c85:d703? ([2a10:a5c0:800d:dd00:8fdf:935a:2c85:d703])
        by smtp.gmail.com with ESMTPSA id 38308e7fff4ca-378ee092282sm26491101fa.5.2025.10.27.23.39.16
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 27 Oct 2025 23:39:16 -0700 (PDT)
Message-ID: <3cd3996a-a9da-494c-b92f-a03a73d403e5@gmail.com>
Date: Tue, 28 Oct 2025 08:39:15 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 00/15] Support ROHM BD72720 PMIC
To: Matti Vaittinen <matti.vaittinen@fi.rohmeurope.com>
Cc: Lee Jones <lee@kernel.org>, Pavel Machek <pavel@kernel.org>,
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
 Conor Dooley <conor+dt@kernel.org>, Sebastian Reichel <sre@kernel.org>,
 Liam Girdwood <lgirdwood@gmail.com>, Mark Brown <broonie@kernel.org>,
 Michael Turquette <mturquette@baylibre.com>, Stephen Boyd
 <sboyd@kernel.org>, Linus Walleij <linus.walleij@linaro.org>,
 Bartosz Golaszewski <brgl@bgdev.pl>, Andreas Kemnade <andreas@kemnade.info>,
 Alexandre Belloni <alexandre.belloni@bootlin.com>,
 linux-leds@vger.kernel.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-pm@vger.kernel.org,
 linux-clk@vger.kernel.org, linux-gpio@vger.kernel.org,
 linux-rtc@vger.kernel.org
References: <cover.1761564043.git.mazziesaccount@gmail.com>
Content-Language: en-US, en-AU, en-GB, en-BW
From: Matti Vaittinen <mazziesaccount@gmail.com>
In-Reply-To: <cover.1761564043.git.mazziesaccount@gmail.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit

On 27/10/2025 13:44, Matti Vaittinen wrote:
> The ROHM BD72720 is a new power management IC for portable, battery
> powered devices. It integrates 10 BUCKs and 11 LDOs, RTC, charger, LEDs,
> GPIOs and a clock gate. To me the BD72720 seems like a successor to the
> BD71828 and BD71815 PMICs.
> 
> This series depends on the series: "[PATCH v5 0/3] power: supply: add
> charger for BD71828":
> https://lore.kernel.org/all/20250918-bd71828-charger-v5-0-851164839c28@kemnade.info/
> sent by Andreas. The power-supplly and MAINTAINERs patches (2/3 and 3/3)
> from that serties aren't merged yet.
> 
> Revision history:
>    RFCv1 => v2:
>    - Drop RFC status
>    - Use stacked regmaps to hide secondary map from the sub-drivers
>    - Quite a few styling fixes and improvements as suggested by
>      reviewers. More accurate changelog in individual patches.
>    - Link to v1:
>      https://lore.kernel.org/all/cover.1759824376.git.mazziesaccount@gmail.com/

As Alexandre pointed out, the 07/15 (MFD) patch was missing from the 
series. For some reason, google's SMTP severs refused from sending it 
with the recipient list used for all other patches, with just: "Status: 
5.7.1". After several retries I had to give-up yesterday.

Today I managed to get it through, after I dropped every direct CC 
address, leaving only the lists. No idea what is happening :(

Anyways, it's in the lore for the interested:
https://lore.kernel.org/all/4c964cef46a396209052aa4194d08fc03f989647.1761564043.git.mazziesaccount@gmail.com/

I will in any case re-spin the series with suggested changes - so 
hopefully I can get the v3 sent correctly to all the recipients :/

Yours,
	-- Matti

