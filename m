Return-Path: <devicetree+bounces-96407-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id AED4D95DED4
	for <lists+devicetree@lfdr.de>; Sat, 24 Aug 2024 17:57:15 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 6B6B4282F79
	for <lists+devicetree@lfdr.de>; Sat, 24 Aug 2024 15:57:14 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 0D05117C9A7;
	Sat, 24 Aug 2024 15:56:55 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=tuxon.dev header.i=@tuxon.dev header.b="dTRy9MLF"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ej1-f50.google.com (mail-ej1-f50.google.com [209.85.218.50])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 59C9917BED2
	for <devicetree@vger.kernel.org>; Sat, 24 Aug 2024 15:56:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.218.50
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1724515014; cv=none; b=or2hh4azD886Vzkz4ClBEZLil/cMBTa6nuFVtYN14JQxfO1RrNmv6D9uQaUTQkNUU0dO59e1wvOSjBPPZ//EdJLlnYbbRXfMSlmZh6r/thStC57Mz+K1r4mGlsF+ZBcEifI5SEnbWp+9ENPb4i8Sp2zgfFcyAXqEceXbNWYfOes=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1724515014; c=relaxed/simple;
	bh=B22/WAPQ9uWlHrZZAHVyDH47YhpH6uxmQNEGo/bmIMs=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=abwwljyhNyIIKvIiT5ye/+My2yoHh7rW6gx5D0IKkKIhRgBffnj79WtAJLDDhX2EBSo/887omOvTgctkvAAbEISj/aOrr4tzqZiUzVWrx5WtcD1pPEKc2hr7o96N5SF74vbYNqVhuTY1vV2NRQQmhVMB9/VDnflRoWJQ4v48QAQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=tuxon.dev; spf=pass smtp.mailfrom=tuxon.dev; dkim=pass (2048-bit key) header.d=tuxon.dev header.i=@tuxon.dev header.b=dTRy9MLF; arc=none smtp.client-ip=209.85.218.50
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=tuxon.dev
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=tuxon.dev
Received: by mail-ej1-f50.google.com with SMTP id a640c23a62f3a-a80eab3945eso314663466b.1
        for <devicetree@vger.kernel.org>; Sat, 24 Aug 2024 08:56:53 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=tuxon.dev; s=google; t=1724515012; x=1725119812; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=8hSfdydbqZUTZ7JI+cx9KZbtF0P3cGZyyCR8zsO5f1o=;
        b=dTRy9MLFiMj7QxMH/tyUHP/qrHay+86Bv3R9BZ3zf2y+FxXhyF6Bh8iCHZdEjmRxQD
         sCTKQpBhZpkF6g1hjtmpkiqaXXS4tcavPvOTQnxfxpb8hhU6JyW+uJjALrUfnSdxgseS
         WO3Jcd5utoCNmcqYLQLrE3wCKEDRih25xIy7XQkwHBchFi6bCa0K9J410UDquUKRDx/M
         pf6NMLLs4LlChNBdp6c4q/m0Tk0MzmA4Pcom4VWW50ORfwxVRyxyoTJ/K8I63WCklit9
         CQtQH/sfuTOKfmHuQJ9wwpG3LcBYMSlWG/I6dJpiTZwWlrO7GwlcRPjLuRl18JGuLqwj
         VkWA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1724515012; x=1725119812;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=8hSfdydbqZUTZ7JI+cx9KZbtF0P3cGZyyCR8zsO5f1o=;
        b=C0QBXLD+JHkZRH60Ly9Y1AnRjKui268l6B84aTASlR4wsj/fEcNvPit91GH2JTK9f9
         elmVwh4OaESRVNIXFBcYiye1ajH4nfGvF47zcsbEnyKwAeyxkzsw1yY+uvVTpbLVrraQ
         0xxBdxA9WsTc/ki5y6u9ZdHRwHs7MttSjF6OP+qzw3c8sY5N2REP1weFphIkdtD6PWnU
         hgIxNUYnjynBX2JM+AJ5YN13jda4MYYBKxlWrWGnFpvI/qv7X8PBiLYf/nCEnVcX79dw
         05kJ3Z7pO+NAZktSuM94ZFnoRUMKGq0W6WWxOqtrx/+0eUXBxzzh3dFi1lKtUIesWyqx
         eBag==
X-Forwarded-Encrypted: i=1; AJvYcCVAgwmp4khIaO/MnD11+slkjZKQDGyJtEsX0p4JvRsz5Q4qUFOZGBvLcePde/E/VG334ri0l8MhQEpP@vger.kernel.org
X-Gm-Message-State: AOJu0YzDfmabghO0+Jlb+FEmTfcNMVa186kUDUp7+0IBT7EQLZE74nca
	HZT2vA683vKkKLYFyhapqvMpRTWupbe+89cYg8RmLR1OR1V83Ll4ECXtfA4W6+Q=
X-Google-Smtp-Source: AGHT+IEAST2c2vWGhyRRV2/uRPC69LKI8UJf2fJxN8h2IgHheHynSfmAfsIdHth+yhNwjz+rpgnUHQ==
X-Received: by 2002:a17:907:f791:b0:a86:6fa8:c6a3 with SMTP id a640c23a62f3a-a86a52c616bmr387903366b.39.1724515011548;
        Sat, 24 Aug 2024 08:56:51 -0700 (PDT)
Received: from [192.168.50.4] ([82.78.167.94])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-a868f4f439dsm413622566b.202.2024.08.24.08.56.50
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sat, 24 Aug 2024 08:56:51 -0700 (PDT)
Message-ID: <1468f33b-e7ab-4c9f-9328-8fba75a41939@tuxon.dev>
Date: Sat, 24 Aug 2024 18:56:49 +0300
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v1 05/12] ARM: dts: microchip: sam9x60: Add OTPC node
Content-Language: en-US
To: Alexander Dahl <ada@thorsis.com>
Cc: Christian Melki <christian.melki@t2data.com>,
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
 Conor Dooley <conor+dt@kernel.org>,
 "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS"
 <devicetree@vger.kernel.org>, open list <linux-kernel@vger.kernel.org>
References: <20240821105943.230281-1-ada@thorsis.com>
 <20240821105943.230281-6-ada@thorsis.com>
From: claudiu beznea <claudiu.beznea@tuxon.dev>
In-Reply-To: <20240821105943.230281-6-ada@thorsis.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit



On 21.08.2024 13:59, Alexander Dahl wrote:
> See datasheet (DS60001579G) sections "7. Memories" and "23. OTP Memory
> Controller (OTPC)" for reference.

Please detail here what the patch does and why it is necessary. Sending the
reader to some DS chapters w/o any additional information may be worthless.

> 
> Signed-off-by: Alexander Dahl <ada@thorsis.com>
> ---
>  arch/arm/boot/dts/microchip/sam9x60.dtsi | 8 ++++++++
>  1 file changed, 8 insertions(+)
> 
> diff --git a/arch/arm/boot/dts/microchip/sam9x60.dtsi b/arch/arm/boot/dts/microchip/sam9x60.dtsi
> index 291540e5d81e..2159a6817f44 100644
> --- a/arch/arm/boot/dts/microchip/sam9x60.dtsi
> +++ b/arch/arm/boot/dts/microchip/sam9x60.dtsi
> @@ -14,6 +14,7 @@
>  #include <dt-bindings/clock/at91.h>
>  #include <dt-bindings/mfd/at91-usart.h>
>  #include <dt-bindings/mfd/atmel-flexcom.h>
> +#include <dt-bindings/nvmem/microchip,sama7g5-otpc.h>
>  
>  / {
>  	#address-cells = <1>;
> @@ -156,6 +157,13 @@ sdmmc1: sdio-host@90000000 {
>  			status = "disabled";
>  		};
>  
> +		otpc: efuse@eff00000 {
> +			compatible = "microchip,sam9x60-otpc", "syscon";
> +			reg = <0xeff00000 0xec>;
> +			#address-cells = <1>;
> +			#size-cells = <1>;
> +		};
> +
>  		apb {
>  			compatible = "simple-bus";
>  			#address-cells = <1>;

