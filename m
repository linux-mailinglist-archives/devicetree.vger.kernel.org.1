Return-Path: <devicetree+bounces-86667-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 2D1279371EE
	for <lists+devicetree@lfdr.de>; Fri, 19 Jul 2024 03:19:15 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 94D19B21671
	for <lists+devicetree@lfdr.de>; Fri, 19 Jul 2024 01:19:12 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B9F7517C9;
	Fri, 19 Jul 2024 01:19:06 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=sifive.com header.i=@sifive.com header.b="MX9B/i7B"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-io1-f49.google.com (mail-io1-f49.google.com [209.85.166.49])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 97F892913
	for <devicetree@vger.kernel.org>; Fri, 19 Jul 2024 01:19:04 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.166.49
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1721351946; cv=none; b=IFVwlJvJMA/PQXvEV6xyir+U+xndm2G1mQL7bVX8VUdhIvtMdc6j3TIXU2Tw8i3/DuE4XZ0JfPWh7BGm8X0No3aifJisibzulZFffKaBmCFp+Kc4ORMyllZ0gJBTm1mViXP9T/9y2eE0EX2jNH3jpry2RFpli67vmO+/n+AitH8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1721351946; c=relaxed/simple;
	bh=j5tLGDY9gGcd5udPLL80op5rVUZUjouE/1JD3eGh7rQ=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=pWCmdSXnEwQAZZCnEx/ozo9CUNtLeQP3h/T21IOH6i8rG+RKTgAL+nDCfgV0oLEWxD3KNlaJ0pkuT9VXf2Cx0sj6AwmQIdtXi0GAAcQ19hcKuD8aMvBV22UK22ziLuBc+0N+5q/QGNrQjqzEQ0jsplCDyaErhmbCaWCuIoA3SRY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=sifive.com; spf=pass smtp.mailfrom=sifive.com; dkim=pass (2048-bit key) header.d=sifive.com header.i=@sifive.com header.b=MX9B/i7B; arc=none smtp.client-ip=209.85.166.49
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=sifive.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=sifive.com
Received: by mail-io1-f49.google.com with SMTP id ca18e2360f4ac-8076ef91d8eso53079139f.1
        for <devicetree@vger.kernel.org>; Thu, 18 Jul 2024 18:19:04 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=sifive.com; s=google; t=1721351944; x=1721956744; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=kitCVRPpRWuruusdc0xZBytLiueygrYSLQr8urocHpw=;
        b=MX9B/i7BWGtQWRGJ8adnZKH0yaObZVMgaixJ4r/lTGv/559R/2Y3LoqCrMLgfpOuWa
         ErTlvDM6KTiPwkdML11/iQIqVPmznWwmNJF00d9vjEDIimnD6hPTilhnLe2vxnHkYh3h
         zZYuODibXVYHl3oxeWXdZc9UnEr7tHpRCxTZRmz8efh4ZyeJJ2pHPFUAsNP89JsBXeFU
         7vRm9Vbe4ro3WKdI18YHLMfSLbrXrm0aHk+LjFi0gGK8Ty0kfl3H5A+vIga40W1jOuaG
         BjsLeeFJ+/y06PZYPDY/Ol9Bu6tMW4PNypgrjn2Ko8uFkcxUbYZ9nXF/W868amHwd2JB
         O/Og==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1721351944; x=1721956744;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=kitCVRPpRWuruusdc0xZBytLiueygrYSLQr8urocHpw=;
        b=m21STW6apzBtQM82TqxQX14AujxQIwmAS13aOxxUKv7jvGuQz1duHouqzf9bduxwE/
         iIoOkkf/rNXzU+hGsck1kjwihWT9UDP2jhAT6rQyqbz3pkniJf7VoPC09Jr5/A+/pUHO
         +HigFy/26cLeCIU6eiaHUOjhtLcuy6aPwteKNqYa0lNgZuhMM9EGcR79buILdhqkir7M
         Q+9pA01wxA68DxQuYV7bXB2hPeqsKQISwfelv0lqmHgjSqb1U6q14cBxtV4Y7NGmUtbH
         7dEQlgc32gdV9MIcQn4F/FOtVBH2zfmkYlSsoC5lBEduhB6D6/ktoyE5cHnyVfiGJ0e0
         15FA==
X-Forwarded-Encrypted: i=1; AJvYcCVQfSkRAVMTqr7lyOJpP3bzDm/JAb755HkLDNrqcStNervuFVVe2VpIq/eBk578JmghlV6Vh5sVmr+k1Qi9vrj2lKUKZIUP6UAHAw==
X-Gm-Message-State: AOJu0YwWF1JdYCSeq/qytM2O+zZ2SPZQ2G5FYmPt5w9jx9klYky5Fig0
	kAZTupvl99dWY4srxPTo0ozTTsxws8SkfWxmckebHkGEg9TJ6M2jaZOPZanZHak=
X-Google-Smtp-Source: AGHT+IGfm/S/FHPE7LA6XdxIKq5BMcfnNylk0g5mtJMSuhuINcBoNq6L3E2sbbLECTpJVZZr2PHwmA==
X-Received: by 2002:a05:6602:6212:b0:807:1908:b095 with SMTP id ca18e2360f4ac-81712003641mr780048939f.13.1721351943793;
        Thu, 18 Jul 2024 18:19:03 -0700 (PDT)
Received: from [100.64.0.1] ([147.124.94.167])
        by smtp.gmail.com with ESMTPSA id 8926c6da1cb9f-4c234405dd7sm107960173.176.2024.07.18.18.19.02
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 18 Jul 2024 18:19:03 -0700 (PDT)
Message-ID: <3a7996d6-1137-44b8-b35d-d9c56bd98277@sifive.com>
Date: Thu, 18 Jul 2024 20:19:01 -0500
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 2/3] riscv: dts: add mailbox for Sophgo cv18x SoCs
To: Yuntao Dai <d1581209858@live.com>
Cc: linux-kernel@vger.kernel.org, devicetree@vger.kernel.org,
 linux-riscv@lists.infradead.org, jassisinghbrar@gmail.com, robh@kernel.org,
 krzk+dt@kernel.org, conor+dt@kernel.org, unicorn_wang@outlook.com,
 inochiama@outlook.com, paul.walmsley@sifive.com, palmer@dabbelt.com,
 aou@eecs.berkeley.edu
References: <SYBP282MB223825D5903777B937A8A377C4A02@SYBP282MB2238.AUSP282.PROD.OUTLOOK.COM>
 <SYBP282MB2238CE3A016F21B632E61219C4A02@SYBP282MB2238.AUSP282.PROD.OUTLOOK.COM>
Content-Language: en-US
From: Samuel Holland <samuel.holland@sifive.com>
In-Reply-To: <SYBP282MB2238CE3A016F21B632E61219C4A02@SYBP282MB2238.AUSP282.PROD.OUTLOOK.COM>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit

On 2024-07-14 11:36 AM, Yuntao Dai wrote:
> Add mailbox node for Sophgo cv18x SoCs
> 
> Signed-off-by: Yuntao Dai <d1581209858@live.com>
> ---
>  arch/riscv/boot/dts/sophgo/cv18xx.dtsi | 9 +++++++++
>  1 file changed, 9 insertions(+)
> 
> diff --git a/arch/riscv/boot/dts/sophgo/cv18xx.dtsi b/arch/riscv/boot/dts/sophgo/cv18xx.dtsi
> index 891932ae4..1c7035737 100644
> --- a/arch/riscv/boot/dts/sophgo/cv18xx.dtsi
> +++ b/arch/riscv/boot/dts/sophgo/cv18xx.dtsi
> @@ -310,5 +310,14 @@
>  			reg = <0x74000000 0x10000>;
>  			interrupts-extended = <&cpu0_intc 3>, <&cpu0_intc 7>;
>  		};
> +
> +		mailbox: mailbox@1900000 {

Please keep nodes sorted by unit address.

> +			compatible = "sophgo,cv1800-mailbox";
> +			reg = <0x01900000 0x1000>;
> +			interrupts = <101 IRQ_TYPE_LEVEL_HIGH>;
> +			interrupt-names = "mailbox";
> +			interrupt-parent = <&plic>;
> +			#mbox-cells = <2>;
> +		};
>  	};
>  };


