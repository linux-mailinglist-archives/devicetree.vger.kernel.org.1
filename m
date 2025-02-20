Return-Path: <devicetree+bounces-149123-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id 5EEF6A3E686
	for <lists+devicetree@lfdr.de>; Thu, 20 Feb 2025 22:28:22 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 91F6A7A7FD2
	for <lists+devicetree@lfdr.de>; Thu, 20 Feb 2025 21:27:23 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 255B41EE003;
	Thu, 20 Feb 2025 21:28:15 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b="njYD2RKo"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-oi1-f180.google.com (mail-oi1-f180.google.com [209.85.167.180])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 19A801E571F
	for <devicetree@vger.kernel.org>; Thu, 20 Feb 2025 21:28:12 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.180
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1740086895; cv=none; b=B8RswyMri+kP82znE2Kxka6p24q+PZP6pGcOiXxAD3oD3VxgnkRoBsX84kOO5U9IO0cPTN+YV2mJ/HCZSsqxfTgcScGSwu3cqMBjud51IRUMAoNcWTSI/0laPbEcspsx8dToDtqvjDXWhG8G1Sy50Xh7D149lkRbgXuxFZWAqiM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1740086895; c=relaxed/simple;
	bh=69TZTw72i0WbMFKkXJ+zviVWNEe2WbKT6MwDrizfopk=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=Wbh6qoQ3x4kIOIxUlIpo/enVtNZFsuOvyBzw06xj7BVNm/aUIR6lq6mIBsuuyMjUF+sAqmizUo7dfGOFWnX+FC1G6XDvQf6S/1YJJ73DlIGxUeEqQQ4iPkPXLm0TV4u2TiIvTMFT9YgxvWbdVYOGwoQABXgNGG/VzytTCqWrugM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com; spf=pass smtp.mailfrom=baylibre.com; dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b=njYD2RKo; arc=none smtp.client-ip=209.85.167.180
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=baylibre.com
Received: by mail-oi1-f180.google.com with SMTP id 5614622812f47-3f41706d768so1065290b6e.1
        for <devicetree@vger.kernel.org>; Thu, 20 Feb 2025 13:28:12 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20230601.gappssmtp.com; s=20230601; t=1740086892; x=1740691692; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=8teI2aiwjM2Kr13WVKdYP+m3dqKKJCEMI2qtWnMC/Ws=;
        b=njYD2RKoZMEqZSxfNlR9wePX+bJH9hRXaL+IhXX7dTVB21WY55+a4gLTgb9azPIzJL
         clyCQVgyHULHkwZ6TlgKnaRqVVyeHcA2ek85+zi8+MDVqgbHIH0ZzQXSgiwLzvIodwH5
         S6Mg49dFtcwSMOxU6L8UDCbIT71guJmbIRkKyF1sANcHIdcX2hKfAaokD0UmxrPDSItM
         CpEqbTuy5fNySoYvbppWNGiFz6HpBd9TRfhjB7oRgTmNsAn/4B0QZPUaIl7EDZoNXUqa
         1J/Um7t+dQwWVZTUJ9+8JicFud1HDtB++rNkT/ax3tpu37hznsF3M0EmzJ8GXCg6TH84
         m+JA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1740086892; x=1740691692;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=8teI2aiwjM2Kr13WVKdYP+m3dqKKJCEMI2qtWnMC/Ws=;
        b=HxpnGyn4xvwTmSBn2AOWsLxALK+5ABOlKHBiCeCLe7IpUmKPihZTj0d3jVNmMzQyGS
         qSe4DAT3N/Y5RqJTRitdcu87CJ/tRaV8qaHioU+8Be5V3iy7KV043TJAX9tR/GpoT/DN
         712+jYbhVkMS0v8S4WG3Iven7uExAW5Y47KhZ2+Lm81toRM9LPvhloDkCxr7Hm2a/naI
         BgS4d304a6J3Wazt86F7fpIAdV564uNAaQQBpU47+T2KoN5X/5kPQJd7hiAUtNluLIIE
         CPLdV2oCHYWkvvzbtuTg/8/yB1Vzyhgf0sY0grH03Pwf8VLa2CfTStpb1Nz0o1M7j+md
         p1BQ==
X-Forwarded-Encrypted: i=1; AJvYcCU9sPYzI2oITuidsS5rWPeP5g/PlxAs826eTEZVRja/lDGwwM87LLeXywCuwjFt1Oqpg4Xton+dHoeq@vger.kernel.org
X-Gm-Message-State: AOJu0YxNdqA+EY0+0NZ7/lAVt4ptECHBx0v7DPNVPJAPGelId8f0Uh3o
	meLlzlLb32S/ueVtqNYrgJE8CyYItnIp9mir3a07Z8m22kpwoX5qNeB3HYvF+a8=
X-Gm-Gg: ASbGncuYyQeI1ywkfhIPMRHUWtIdg0/8O4T6ZFw6sFZijM+oeGfqUXatZ096klCNEHd
	701/qCQ1psoEdfsa/JSvzE1F8e8kspJ1DJ0NuXfUo4gpwRhsw3WbwWVqW747Uq6eN6c+JI9Xq+S
	+89SQOTXicCdRRi7SCiEawo7dB8cB2L4dyydVXrHDbunt937w3FBjdlO7t6PpoS0muGPa72SVpp
	RwnMZWTiz3vFCSRccajOveqLDgDWk6odl2foeD5aWaBJ5JSYDaDLJwacrg/P/K9UXOEdhZ4k6aM
	ETQJMymttZSU9jP+vc6zFlJIloV3IDbn7QigdReAN9qrReyriXTd
X-Google-Smtp-Source: AGHT+IHda5wVskrjkmAKgdPIEC/DmfpBOlo13Gpd3qfbwGemyjoGs3i/euhKGLWCrnuYugHibNPpIQ==
X-Received: by 2002:a05:6808:13:b0:3f3:b97d:769e with SMTP id 5614622812f47-3f419ef610dmr2889041b6e.7.1740086892179;
        Thu, 20 Feb 2025 13:28:12 -0800 (PST)
Received: from [192.168.0.142] (ip98-183-112-25.ok.ok.cox.net. [98.183.112.25])
        by smtp.gmail.com with ESMTPSA id 5614622812f47-3f40c3ad34asm1471933b6e.50.2025.02.20.13.28.09
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 20 Feb 2025 13:28:10 -0800 (PST)
Message-ID: <42296bf2-2818-4224-9e52-d1fef59d8a76@baylibre.com>
Date: Thu, 20 Feb 2025 15:28:09 -0600
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH RESEND v3 06/17] Documentation: ABI: add wideband filter
 type to sysfs-bus-iio
To: Jonathan Santos <Jonathan.Santos@analog.com>, linux-iio@vger.kernel.org,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Cc: lars@metafoo.de, Michael.Hennerich@analog.com,
 marcelo.schmitt@analog.com, jic23@kernel.org, robh@kernel.org,
 krzk+dt@kernel.org, conor+dt@kernel.org, jonath4nns@gmail.com,
 marcelo.schmitt1@gmail.com
References: <cover.1739368121.git.Jonathan.Santos@analog.com>
 <aea512746712f8f6d07d29ec6977609c127fabe0.1739368121.git.Jonathan.Santos@analog.com>
Content-Language: en-US
From: David Lechner <dlechner@baylibre.com>
In-Reply-To: <aea512746712f8f6d07d29ec6977609c127fabe0.1739368121.git.Jonathan.Santos@analog.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit

On 2/12/25 12:16 PM, Jonathan Santos wrote:
> The Wideband Low Ripple filter is used for AD7768-1 Driver.
> Document wideband filter option into filter_type_available
> attribute.
> 
> Signed-off-by: Jonathan Santos <Jonathan.Santos@analog.com>
> ---
> v3 Changes:
> * None, since we still did not agree on a better name for this filter type.
> 

I'm convinced at this point that "wideband" is fine.

> v2 Changes:
> * Removed FIR mentions.
> ---
>  Documentation/ABI/testing/sysfs-bus-iio | 2 ++
>  1 file changed, 2 insertions(+)
> 
> diff --git a/Documentation/ABI/testing/sysfs-bus-iio b/Documentation/ABI/testing/sysfs-bus-iio
> index f83bd6829285..9b879e7732cd 100644
> --- a/Documentation/ABI/testing/sysfs-bus-iio
> +++ b/Documentation/ABI/testing/sysfs-bus-iio
> @@ -2291,6 +2291,8 @@ Description:
>  		* "sinc3+pf2" - Sinc3 + device specific Post Filter 2.
>  		* "sinc3+pf3" - Sinc3 + device specific Post Filter 3.
>  		* "sinc3+pf4" - Sinc3 + device specific Post Filter 4.
> +		* "wideband" - filter with wideband low ripple passband
> +		  and sharp transition band.

The description could perhaps be made a bit more generic though
instead of using specifics from the AD7768-1 datasheet. Something
along the lines of Jonathan's 'flattish to a wide range of frequencies'
description.

>  
>  What:		/sys/.../events/in_proximity_thresh_either_runningperiod
>  KernelVersion:	6.6


