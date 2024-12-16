Return-Path: <devicetree+bounces-131560-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id D37489F3D26
	for <lists+devicetree@lfdr.de>; Mon, 16 Dec 2024 23:00:10 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 6A83E1888EEA
	for <lists+devicetree@lfdr.de>; Mon, 16 Dec 2024 22:00:11 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E378F5588E;
	Mon, 16 Dec 2024 22:00:06 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=sifive.com header.i=@sifive.com header.b="id3WywLl"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-il1-f172.google.com (mail-il1-f172.google.com [209.85.166.172])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1BA2A1D63CF
	for <devicetree@vger.kernel.org>; Mon, 16 Dec 2024 22:00:03 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.166.172
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1734386406; cv=none; b=IN0iArtuZTmrVNsGK8ZqvrChydqvpCfUHiUSw4sVXyhaCw3VYY3ceXEI4dPVGRVdzSl0xpHPbAifF2GJz1Ui1Fq80U/sIdFb9qQveTMx3Ws5sQSKCw/X38zzjHhfph7egHsuXthOqNkQvMC4xZHoJvmH/GEkK2ejeYY+2k+UTm8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1734386406; c=relaxed/simple;
	bh=WY1yk75xj3D29k5mczcyeteQJJJq8P3Ye1L3yD6YJMU=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=ekyRr+ZL/cGEDMUq7ZlvKOH12gd9f/DYW1u0G/ygi1FDBFySeR8VlYssTTFVjfi2kqmZOqpGRzTEl4SAuKnSKWVXunmR+yavpKx+2qSQWRSWVs00FJP1vRBJ5fAETZCn1MHALnODTtkwZ+mH9Y9NOnI6af+2e+YF2htBcQvC0vc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=sifive.com; spf=pass smtp.mailfrom=sifive.com; dkim=pass (2048-bit key) header.d=sifive.com header.i=@sifive.com header.b=id3WywLl; arc=none smtp.client-ip=209.85.166.172
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=sifive.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=sifive.com
Received: by mail-il1-f172.google.com with SMTP id e9e14a558f8ab-3a9caa3726fso15275915ab.1
        for <devicetree@vger.kernel.org>; Mon, 16 Dec 2024 14:00:03 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=sifive.com; s=google; t=1734386403; x=1734991203; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:content-language:from
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=M9GAPUOnO/AZAUr8mlWdqcXEUNfkQg4dQQPEXS1LGaw=;
        b=id3WywLlm5GdGdXLtHYpT9Q36oZ8Fld3Hrj9xJh6ZB7CZQDnkK5tiY8Fo3aQO/boJ8
         FQclL1JAkbmLsAmwRfQ8srBrzYVG6QHRsvklyxg8SIIKtOiXtL1GD5qOUNlfjVB9F+Z4
         RHwCdDhFhC/LNQpVFKesYTPc8ydxbwOL+JkisZJKN23nGKgOPlmCAFWsuUjhdPA13QJ5
         pgBgP/mK60m4790PgnZ9E2/TSK0ovWTANSFuYjHaynj1G2C/Io8/Nu4S68ov5lRYgULV
         BtsIcEuNzNooWMTYAcPatTsv7F3xlDrlHK7XkojUqwYJh3Kcqvbn9O/tTtFguVYlEw7J
         9Vtg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1734386403; x=1734991203;
        h=content-transfer-encoding:in-reply-to:content-language:from
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=M9GAPUOnO/AZAUr8mlWdqcXEUNfkQg4dQQPEXS1LGaw=;
        b=gz4WfVzu2wsVh9k/NykLPCJ963Jgb7CA3Y25a8xPHsuE4z69kt5krBmgrhq3IcClFP
         O7lIv8lW1kwTwel+472DDScfBXi6vYUNp8jAT5PkbxPzdmFpFVSx8vJI78jq1DTLzIhG
         6FA2BDIgpwWgFPZBK3iCYQpZZxcFCeJ2rSzlPOrh3vanN/2kBF4xw6SnnoMvIZOUorPa
         D88Flle9xTS+opjcvzzjSN1qKWIHKoV48kaBRl3AJEEaBAZwjeowcs1eqK9wynBw1G5r
         GtShKrfAz20CVyu4pj4mnmtJmnBbDRMU5pIJPX5h05OacmtiKzRRtaZMpMUQRHc33I5d
         yqaw==
X-Forwarded-Encrypted: i=1; AJvYcCUXhgXJ/fM5NY1FhH6KCSrnFD2oCARxIuITf5V58rUUUTA5MC40/wt6WVunB+rDV+WWMzRJANPHRfM9@vger.kernel.org
X-Gm-Message-State: AOJu0YwM+xdbx7/ZBzZK8+b6ddNFKY9MPFMC2p+lakWBScE9McPCKSKn
	hRpzmQQuVpKbQtluYVkoXYVzvsMeKJmK/iiFJBSK/F8ZWCxTUd0vHGJhqQO5F+Y=
X-Gm-Gg: ASbGncvgLQVTuRdDQlqe4OG7SZGXjhbXvnh0pYm3rQ9gfsSf7auPVuB75FNEcYhyAMx
	T4y0+ebsfVsJvHID/yQxI1mai3GmKErLdC1WfZJ0/ImD/mVdkS2RQ12pa5Y1pHt6OoVbQYZGcK1
	4KC+Ll4HSeXJ2aFZCGrG1xvh1OWb2nHBvOk642Ru/PEQm8tMuECXme1F6+XCUTvLYGunel8YuiS
	pXsiFDXe7ofzZcMAfRJahrdcTV9Dyosjmm+Lw95oTAk4gRiAZ1bf0BtypmzzQvOt05z8StRAQWQ
	ZMiBiA==
X-Google-Smtp-Source: AGHT+IHIM+DoAUO4uH+jY49Cft/09OtchiEcCTITNYy9jOukvV//rMl/YNzathv8XDZ/7POhKMPjZQ==
X-Received: by 2002:a05:6e02:18ca:b0:3a9:d0e6:abf2 with SMTP id e9e14a558f8ab-3bb0ac12780mr11516415ab.10.1734386403225;
        Mon, 16 Dec 2024 14:00:03 -0800 (PST)
Received: from [100.64.0.1] ([165.188.116.15])
        by smtp.gmail.com with ESMTPSA id 8926c6da1cb9f-4e5e3c69e2asm1403241173.138.2024.12.16.14.00.00
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 16 Dec 2024 14:00:02 -0800 (PST)
Message-ID: <5e878b5b-b49d-4757-8f7e-4b323a4998b3@sifive.com>
Date: Mon, 16 Dec 2024 16:00:00 -0600
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v3 1/3] dt-bindings: riscv: add bfloat16 ISA extension
 description
To: Inochi Amaoto <inochiama@gmail.com>
Cc: linux-doc@vger.kernel.org, linux-riscv@lists.infradead.org,
 linux-kernel@vger.kernel.org, devicetree@vger.kernel.org,
 Yixun Lan <dlan@gentoo.org>, Longbin Li <looong.bin@gmail.com>,
 Conor Dooley <conor.dooley@microchip.com>,
 Chen Wang <unicorn_wang@outlook.com>, Jonathan Corbet <corbet@lwn.net>,
 Paul Walmsley <paul.walmsley@sifive.com>, Palmer Dabbelt
 <palmer@dabbelt.com>, Albert Ou <aou@eecs.berkeley.edu>,
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
 Conor Dooley <conor+dt@kernel.org>, =?UTF-8?B?Q2zDqW1lbnQgTMOpZ2Vy?=
 <cleger@rivosinc.com>, Evan Green <evan@rivosinc.com>,
 Charlie Jenkins <charlie@rivosinc.com>,
 Andrew Jones <ajones@ventanamicro.com>, Jesse Taube <jesse@rivosinc.com>,
 Andy Chiu <andybnac@gmail.com>, Alexandre Ghiti <alexghiti@rivosinc.com>,
 Yong-Xuan Wang <yongxuan.wang@sifive.com>
References: <20241206055829.1059293-1-inochiama@gmail.com>
 <20241206055829.1059293-2-inochiama@gmail.com>
From: Samuel Holland <samuel.holland@sifive.com>
Content-Language: en-US
In-Reply-To: <20241206055829.1059293-2-inochiama@gmail.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit

On 2024-12-05 11:58 PM, Inochi Amaoto wrote:
> Add description for the BFloat16 precision Floating-Point ISA extension,
> (Zfbfmin, Zvfbfmin, Zvfbfwma). which was ratified in commit 4dc23d62
> ("Added Chapter title to BF16") of the riscv-isa-manual.
> 
> Signed-off-by: Inochi Amaoto <inochiama@gmail.com>
> Acked-by: Conor Dooley <conor.dooley@microchip.com>
> ---
>  .../devicetree/bindings/riscv/extensions.yaml | 45 +++++++++++++++++++
>  1 file changed, 45 insertions(+)
> 
> diff --git a/Documentation/devicetree/bindings/riscv/extensions.yaml b/Documentation/devicetree/bindings/riscv/extensions.yaml
> index 9c7dd7e75e0c..0a1f1a76d129 100644
> --- a/Documentation/devicetree/bindings/riscv/extensions.yaml
> +++ b/Documentation/devicetree/bindings/riscv/extensions.yaml
> @@ -329,6 +329,12 @@ properties:
>              instructions, as ratified in commit 056b6ff ("Zfa is ratified") of
>              riscv-isa-manual.
>  
> +        - const: zfbfmin
> +          description:
> +            The standard Zfbfmin extension which provides minimal support for
> +            16-bit half-precision brain floating-point instructions, as ratified

I think you mean "binary" here and in the entries below, not "brain".

> +            in commit 4dc23d62 ("Added Chapter title to BF16") of riscv-isa-manual.
> +
>          - const: zfh
>            description:
>              The standard Zfh extension for 16-bit half-precision binary
> @@ -525,6 +531,18 @@ properties:
>              in commit 6f702a2 ("Vector extensions are now ratified") of
>              riscv-v-spec.
>  
> +        - const: zvfbfmin
> +          description:
> +            The standard Zvfbfmin extension for minimal support for vectored
> +            16-bit half-precision brain floating-point instructions, as ratified
> +            in commit 4dc23d62 ("Added Chapter title to BF16") of riscv-isa-manual.
> +
> +        - const: zvfbfwma
> +          description:
> +            The standard Zvfbfwma extension for vectored half-precision brain
> +            floating-point widening multiply-accumulate instructions, as ratified
> +            in commit 4dc23d62 ("Added Chapter title to BF16") of riscv-isa-manual.
> +
>          - const: zvfh
>            description:
>              The standard Zvfh extension for vectored half-precision
> @@ -663,6 +681,33 @@ properties:
>          then:
>            contains:
>              const: zca
> +      # Zfbfmin depends on F
> +      - if:
> +          contains:
> +            const: zfbfmin
> +        then:
> +          contains:
> +            const: f
> +      # Zvfbfmin depends on V or Zve32f
> +      - if:
> +          contains:
> +            const: zvfbfmin
> +        then:
> +          oneOf:
> +            - contains:
> +                const: v
> +            - contains:
> +                const: zve32f
> +      # Zvfbfwma depends on Zfbfmin and Zvfbfmin
> +      - if:
> +          contains:
> +            const: zvfbfwma
> +        then:
> +          allOf:
> +            - contains:
> +                const: zfbfmin
> +            - contains:
> +                const: zvfbfmin
>  
>  allOf:
>    # Zcf extension does not exist on rv64


