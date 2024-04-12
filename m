Return-Path: <devicetree+bounces-58757-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id DBE0D8A2F7D
	for <lists+devicetree@lfdr.de>; Fri, 12 Apr 2024 15:33:43 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 921792835FE
	for <lists+devicetree@lfdr.de>; Fri, 12 Apr 2024 13:33:42 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D326883A17;
	Fri, 12 Apr 2024 13:33:40 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="sguxGWKl"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f53.google.com (mail-wm1-f53.google.com [209.85.128.53])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1E8A78288A
	for <devicetree@vger.kernel.org>; Fri, 12 Apr 2024 13:33:38 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.53
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1712928820; cv=none; b=XZOOTyM0UA6ARL09veGGxQllgUJtL3ApzaSaG71W5qnrTpRdl67/exK638zSji90ZXOxxsylVDzJQp/nYcdEOFBzXyWXAeeXbWVmTBe1AKH1/0qVQtHbe5O+WbQ4NeRo5SmSH5hkqbE02474TaS+j4+Q9r0rVmLLuXNGVa+RD4A=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1712928820; c=relaxed/simple;
	bh=KqIDnKhRCZ45cb3YB6h6ZxsOE++xxdlDnJ+GcHer7kg=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=YHRZdEgWxkxciTBfJU9gjIuTjmclZAZ+4Hb38nyGbek3Jwzvwv3pw4S9NUf97/9q+kCsDr2umT6xwsfCQFh9lDs1vfG4Tlx6KlOtunks2vF6uATMyHxXtf3IkC5962nINsNmIqw442fhiDSdjWKVZ9IHpIDPNFeeyQR7fWgq5HQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=sguxGWKl; arc=none smtp.client-ip=209.85.128.53
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wm1-f53.google.com with SMTP id 5b1f17b1804b1-417d092f2ffso6940295e9.2
        for <devicetree@vger.kernel.org>; Fri, 12 Apr 2024 06:33:38 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1712928817; x=1713533617; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:autocrypt:from
         :content-language:references:cc:to:subject:user-agent:mime-version
         :date:message-id:from:to:cc:subject:date:message-id:reply-to;
        bh=nH1sWLIGA864erlhW3b/updKEM+chUr8JvtD9qfNRS0=;
        b=sguxGWKlOiiapygs6VrJNL4iOugp2ySyJdVhrP7xik8oHo4sCO0AaY3+NpZwRnmM3d
         T0gkb081vzveX15AW0AzRjIAZEpvVMVVH9WcDz+Casam6v6x+4p0YKDbo0st3mpG6eLW
         RUNW6Bun+y17GyP470deF3arejUUiqYTNbhro5M/xOZc2gJqFjBvJp9N4kU86ge9lUhx
         AQnyEzg2K1p7g+3ReQBUavU9Ht96miqYrF1mM1DB/lYQG2TF/l/xZl1eV6Bsyx99bG3M
         e+2qOaXUaMGaGymv80wgVv3hhgbo2gXaT8OgZXMEbBss8Is2N499DITvWCum2rWwqD5N
         MR6w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1712928817; x=1713533617;
        h=content-transfer-encoding:in-reply-to:autocrypt:from
         :content-language:references:cc:to:subject:user-agent:mime-version
         :date:message-id:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=nH1sWLIGA864erlhW3b/updKEM+chUr8JvtD9qfNRS0=;
        b=VMTC/UqwQtlPOLk0NNrH328O+Znmkdc31vvjxidobSzQ/VliqyzpO+E8wv86awtqpJ
         swwPg/Yuzrr2JQjS2k15XsgGkjj0tGa3ZpQa5dI7uRkKJ5jh3otODNqBNPLFghKlaGSx
         vjRv4GbfHk3HcElUQ0VHuikTU1P8La8RTFptyiheasWP7RNRGMnGoF67u+FWZ+O4ZfGM
         FIMAjSxoqEsZS5qLbrVBDxzv4R5jMWnuc1s06vTzzyGTEB2wxB9mIqOS8wU1olcWBpgi
         ZUGeKbPKHCO6eSuVUqLRJmgVO9t+AXpXZ6Gi/OLCJvDr5inSWfSoWDV/evSSxKbrWCBO
         cdsQ==
X-Forwarded-Encrypted: i=1; AJvYcCUWEY6W9CwU9ye0axSfEuZLoFVh6dC7fmZRbMgX1eDmsfE44UQrdsrThe/pIXUGyCYRwzsJ4puGKOxVOFelMidiPwB7sUnrMwXs8Q==
X-Gm-Message-State: AOJu0Yz5sMwyRhDUXa9h93yyKbNzJjb3PLs4QWvddGnGm7CwcSY9qCy5
	9akfP6Ck4kl/0kBZv8gih6EAnqCe3oaQbG6C7jiyhBQAmKYfO43u+rYsW+2ocqQ=
X-Google-Smtp-Source: AGHT+IFJ3Xd7NEoepXjbYMnDD6LxfHdlgRUnLee1O7ULfObyPtkPUf0nBwS35MfqAksh1kh3VAR5DQ==
X-Received: by 2002:a05:600c:1910:b0:417:d4f5:6501 with SMTP id j16-20020a05600c191000b00417d4f56501mr2211794wmq.27.1712928817361;
        Fri, 12 Apr 2024 06:33:37 -0700 (PDT)
Received: from [192.168.1.20] ([178.197.223.16])
        by smtp.gmail.com with ESMTPSA id m2-20020a05600c4f4200b004180df6e774sm838322wmq.29.2024.04.12.06.33.35
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 12 Apr 2024 06:33:36 -0700 (PDT)
Message-ID: <9647e461-a299-41fe-a078-5bbfffcc985c@linaro.org>
Date: Fri, 12 Apr 2024 15:33:35 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH] ARM: dts: bcm2835: Enable 3D rendering through V3D
To: =?UTF-8?Q?Ma=C3=ADra_Canal?= <mcanal@igalia.com>,
 Maxime Ripard <mripard@kernel.org>, Melissa Wen <mwen@igalia.com>,
 Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
 Conor Dooley <conor+dt@kernel.org>, Ray Jui <rjui@broadcom.com>,
 Scott Branden <sbranden@broadcom.com>,
 Andre Przywara <andre.przywara@arm.com>,
 Romain Perier <romain.perier@gmail.com>, Stefan Wahren <wahrenst@gmx.net>
Cc: dri-devel@lists.freedesktop.org, bcm-kernel-feedback-list@broadcom.com,
 devicetree@vger.kernel.org, linux-rpi-kernel@lists.infradead.org,
 linux-arm-kernel@lists.infradead.org, kernel-dev@igalia.com
References: <20240412132559.2365947-1-mcanal@igalia.com>
Content-Language: en-US
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Autocrypt: addr=krzysztof.kozlowski@linaro.org; keydata=
 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
 D2GYIS41Kv4Isx2dEFh+/Q==
In-Reply-To: <20240412132559.2365947-1-mcanal@igalia.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit

On 12/04/2024 15:25, Maíra Canal wrote:
> RPi 0-3 is packed with a GPU that provides 3D rendering capabilities to
> the RPi. Currently, the downstream kernel uses an overlay to enable the
> GPU and use GPU hardware acceleration. When deploying a mainline kernel
> to the RPi 0-3, we end up without any GPU hardware acceleration
> (essentially, we can't use the OpenGL driver).
> 
> Therefore, enable the V3D core for the RPi 0-3 in the mainline kernel.
> 
> Signed-off-by: Maíra Canal <mcanal@igalia.com>
> ---
> 
> I decided to add the status property to the `bcm2835-common.dtsi`, but
> there are two other options:
> 
> 1. To add the status property to the `bcm2835-rpi-common.dtsi` file
> 2. To add the status property to each individual RPi model, e.g.
> `bcm2837-rpi-3-b.dts`.
> 
> Let me know which option is more suitable, and if `bcm2835-common.dtsi`
> is not the best option, I can send a v2.
> 
> Best Regards,
> - Maíra
> 
>  arch/arm/boot/dts/broadcom/bcm2835-common.dtsi | 1 +
>  1 file changed, 1 insertion(+)
> 
> diff --git a/arch/arm/boot/dts/broadcom/bcm2835-common.dtsi b/arch/arm/boot/dts/broadcom/bcm2835-common.dtsi
> index 9261b67dbee1..851a6bce1939 100644
> --- a/arch/arm/boot/dts/broadcom/bcm2835-common.dtsi
> +++ b/arch/arm/boot/dts/broadcom/bcm2835-common.dtsi
> @@ -139,6 +139,7 @@ v3d: v3d@7ec00000 {
>  			compatible = "brcm,bcm2835-v3d";
>  			reg = <0x7ec00000 0x1000>;
>  			interrupts = <1 10>;
> +			status = "okay";

Please point me where this is being disabled? Could not find.

Anyway, enabling should be done in last place of override/extend, which
provides additional properties. I believe it is being extend further, so
that's not the place.

Best regards,
Krzysztof


