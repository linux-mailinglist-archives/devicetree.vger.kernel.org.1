Return-Path: <devicetree+bounces-143211-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id BAFDCA2880A
	for <lists+devicetree@lfdr.de>; Wed,  5 Feb 2025 11:31:05 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id C750F1699D1
	for <lists+devicetree@lfdr.de>; Wed,  5 Feb 2025 10:30:41 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id DC09722CBD2;
	Wed,  5 Feb 2025 10:29:39 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=canonical.com header.i=@canonical.com header.b="FAtARg6h"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp-relay-internal-0.canonical.com (smtp-relay-internal-0.canonical.com [185.125.188.122])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2C45B22B8A9
	for <devicetree@vger.kernel.org>; Wed,  5 Feb 2025 10:29:37 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=185.125.188.122
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1738751379; cv=none; b=jcvoiNgWEd9Qkc3NptPs6Ek6hVnG5mc2nkCEE8pLg05308Ty9OJM3HNXPcZayInIsojEHmnqJmmU2m8WOsruwgx6YStHxZUgjrDeLWtWMOi3jU2ZWOJyU42gK3iqdwUHMbwxU57ea2V1DxwPBPV+tgJTKAMXGwKFCv+LDIVDXIY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1738751379; c=relaxed/simple;
	bh=WI78ijGtjowcHXJYrXtfWT/69d/eQD/yPSkusz9kD7Q=;
	h=From:In-Reply-To:References:Mime-Version:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=jpdQOts1PcDVcLsr8oxVjL5QVHtBDqSyV+/EH9M5njbCsRXmUPLgPHn58qP01ID5Us3uDa8DtghLC8zkHiBYuUFsIcWx3bJRHnlZIwoZIUnE6OzQ5tYmJVGoQAD5uZ7dVYd3e8JM38487rjDDKtnTvcDyEaNyYo+vj7DECbG8ho=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=canonical.com; spf=pass smtp.mailfrom=canonical.com; dkim=pass (2048-bit key) header.d=canonical.com header.i=@canonical.com header.b=FAtARg6h; arc=none smtp.client-ip=185.125.188.122
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=canonical.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=canonical.com
Received: from mail-oa1-f69.google.com (mail-oa1-f69.google.com [209.85.160.69])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by smtp-relay-internal-0.canonical.com (Postfix) with ESMTPS id 391373F874
	for <devicetree@vger.kernel.org>; Wed,  5 Feb 2025 10:29:32 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=canonical.com;
	s=20210705; t=1738751372;
	bh=6p5dlNzJ/YPPjs/DSFQLsa5sUOHCa5xG63IkAekOvh0=;
	h=From:In-Reply-To:References:Mime-Version:Date:Message-ID:Subject:
	 To:Cc:Content-Type;
	b=FAtARg6hgwwQSPh5y5NmSeKybqTMW5Owxwd563KoOAs7dd9Qu933kSYPe619Li8gn
	 5LbeRVQdxwuNfc1ItPLJhdaEhX+yaDw9MgSgT8pKhVc44RuRKHSPwiHmv/65CwEqH0
	 /TOJWWQAl8tGoAQoDIWnRocCGaAm8FqyoJC+Jyyrl+Yox4vFl9tw/qmLlyD1GQc3fh
	 2cJuEmqeJpsVwCm/MwSQhCU95bKP7+Bb1gBcE8rWrnC1by16VHK6aolbHkxZLlIxg8
	 /6KCnSgfpiLS8JGjcFI8zct7JzvpGjIoO8TIiv59OWtnasoKtpDOm31u63U8x6iT4I
	 ZY54ZpU3PJIBA==
Received: by mail-oa1-f69.google.com with SMTP id 586e51a60fabf-29fb55d5357so6302942fac.0
        for <devicetree@vger.kernel.org>; Wed, 05 Feb 2025 02:29:32 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1738751370; x=1739356170;
        h=cc:to:subject:message-id:date:mime-version:references:in-reply-to
         :from:x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=6p5dlNzJ/YPPjs/DSFQLsa5sUOHCa5xG63IkAekOvh0=;
        b=o9QghhuA+n1p5ms3FTSPAXdJK0/JJrFgR6tl+LxnkY5Glcgc4iTDbsi94cN20oaycx
         NqCXTAxUPUOrN6iEAUIZmpgUFmE0fYcmxCengCQAVtPb1D/hmdRrCqLgK2WCvhb5eg23
         6/C4sim3UWI68DrknijylwRJ8hDHKLufAWifY+pC0HqjJeUHPa5+2unIBFvP8ciRueXR
         y28vL4EcMsXX23T9UHKUJhiuAxaeB+83++qckj8bYy870DTHDn8c/giJoemU6iCdrYnY
         jK6GGDmwVdBVvIQvyc9pxzptLFf7Vvy7coZWlUZJ4PM21unwtMGiXkGrvey9uViVnLBT
         tq5Q==
X-Forwarded-Encrypted: i=1; AJvYcCVgjERbWALjb2hAwPNkOn1Wi5cet9upkvGNIZWTrBhrEXTo+tGB+w6EnsQ1ONkixJx47/XczcHAS7Kr@vger.kernel.org
X-Gm-Message-State: AOJu0YxQ0U7U77j/RNz2H8j/pOW6X2wDXvAEiAeMMVdvfFxX9g966x/C
	aMX8mjIvdAZAO+HnY8mmG29xy38LuW7Zpp20Qs0RzYJPybL+gme1GQKVnJ5LtitceL07bQLDVDV
	vt4Omdg6Zi098EEi8rix6Sg6x4WYaSWceGkiQp8j/YVb0mpSGl0SXWxDe7o+mQihvnPsk3J9BLF
	1EtQO99H24F7KAzKpQ9+hOxEAlz+pgN2a3UdgWbFULU5fTtyK9pQ==
X-Gm-Gg: ASbGncvC3TI6POIS5tsIgbXu4bhpsrPX9w3v/hi2QR7jUh82dIm7do7aWF+AsrludFm
	1ojOpYSYoi5hQK/ckyoyI0lHOY/Ynh3rpPfsiyfgXMEGVMTw8nU0FT74+qUh4b25f8DxkJOxAM4
	McrSDzOAhyGReV6LQ=
X-Received: by 2002:a05:6870:15c4:b0:29d:c764:f873 with SMTP id 586e51a60fabf-2b8051189e7mr1412754fac.31.1738751370731;
        Wed, 05 Feb 2025 02:29:30 -0800 (PST)
X-Google-Smtp-Source: AGHT+IED9P+bVZqPUW7UO2uWic3Ql/tfX6w4dwltPlCCIcZdxoXy1RTbFe/BWTDvYa6FU+eq3MorrYQsqOpUrQqy/Ck=
X-Received: by 2002:a05:6870:15c4:b0:29d:c764:f873 with SMTP id
 586e51a60fabf-2b8051189e7mr1412739fac.31.1738751370456; Wed, 05 Feb 2025
 02:29:30 -0800 (PST)
Received: from 348282803490 named unknown by gmailapi.google.com with
 HTTPREST; Wed, 5 Feb 2025 10:29:30 +0000
Received: from 348282803490 named unknown by gmailapi.google.com with
 HTTPREST; Wed, 5 Feb 2025 10:29:30 +0000
From: Emil Renner Berthing <emil.renner.berthing@canonical.com>
In-Reply-To: <20250203013730.269558-4-e@freeshell.de>
References: <20250203013730.269558-1-e@freeshell.de> <20250203013730.269558-4-e@freeshell.de>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
Mime-Version: 1.0
Date: Wed, 5 Feb 2025 10:29:30 +0000
X-Gm-Features: AWEUYZkWYCph906PZJ8Zu7NPROce5GWqOyVjvIksBicpE8lH4z17iclUJfeqp4U
Message-ID: <CAJM55Z95pwTZmw-WPcUaB1BGpVoNgaRYYjUnqSFcLTNyVmZahg@mail.gmail.com>
Subject: Re: [PATCH v2 3/5] riscv: dts: starfive: jh7110-common: assign 24MHz
 clock-frequency to uart0
To: E Shattow <e@freeshell.de>, Conor Dooley <conor@kernel.org>, 
	Emil Renner Berthing <kernel@esmil.dk>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Paul Walmsley <paul.walmsley@sifive.com>, 
	Palmer Dabbelt <palmer@dabbelt.com>, Albert Ou <aou@eecs.berkeley.edu>
Cc: linux-kernel@vger.kernel.org, devicetree@vger.kernel.org, 
	linux-riscv@lists.infradead.org
Content-Type: text/plain; charset="UTF-8"

E Shattow wrote:
> Set uart0 clock-frequency for better compatibility with operating system
> and downstream boot loader SPL secondary program loader.
>
> Signed-off-by: E Shattow <e@freeshell.de>
> ---
>  arch/riscv/boot/dts/starfive/jh7110-common.dtsi | 1 +
>  1 file changed, 1 insertion(+)
>
> diff --git a/arch/riscv/boot/dts/starfive/jh7110-common.dtsi b/arch/riscv/boot/dts/starfive/jh7110-common.dtsi
> index 8a59c3001339..6bb13af82147 100644
> --- a/arch/riscv/boot/dts/starfive/jh7110-common.dtsi
> +++ b/arch/riscv/boot/dts/starfive/jh7110-common.dtsi
> @@ -635,6 +635,7 @@ GPOEN_DISABLE,
>  };
>
>  &uart0 {
> +	clock-frequency = <24000000>;
>  	pinctrl-names = "default";
>  	pinctrl-0 = <&uart0_pins>;
>  	status = "okay";

The uart0 node already has a reference to the uart0_core clock, so it shouldn't
need this property.

/Emil

