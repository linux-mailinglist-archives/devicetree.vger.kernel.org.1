Return-Path: <devicetree+bounces-227529-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from dfw.mirrors.kernel.org (dfw.mirrors.kernel.org [142.0.200.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 92EA7BE25A5
	for <lists+devicetree@lfdr.de>; Thu, 16 Oct 2025 11:24:25 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.mirrors.kernel.org (Postfix) with ESMTPS id 6B1214F488A
	for <lists+devicetree@lfdr.de>; Thu, 16 Oct 2025 09:24:24 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 04935310650;
	Thu, 16 Oct 2025 09:24:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (4096-bit key) header.d=canonical.com header.i=@canonical.com header.b="FtEXLqmu"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp-relay-internal-1.canonical.com (smtp-relay-internal-1.canonical.com [185.125.188.123])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3E12330F556
	for <devicetree@vger.kernel.org>; Thu, 16 Oct 2025 09:24:19 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=185.125.188.123
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760606661; cv=none; b=rBaBW/ywnw/xYwTFVUsX13TRzP5RMjOyUM4JSamU3alhUGDFOWev/sEWTJNwCT6orYt1SVMd/6bAMqeKZoPBW1mHiev43RkQkxte3WMbRafeChp/jW+5HqkG7yFRLjMHtetDI25MKZDlboMYHCvfpFGNDIxT7obCG+GHJSImVuk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760606661; c=relaxed/simple;
	bh=PPkKFnupn8q/AeA9zvdOdzxhpodro2Quuk6p4NvODlE=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=bRUkDkbCuJU7dXkEiYU7f0jktSLh6ME2yNKGBY0DNMj32O9ihE1km9cjsbmDPcdNxa7M2mCoY03ev9jIber0jtbbAQTSQbzWheh8ZqeF1OSraJ3xlGZ0dBRMpUFTPl+eLXJp2OAKM/O7zscwQz/5/EXSAR57nJzLPbCT/E9KW3A=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=canonical.com; spf=pass smtp.mailfrom=canonical.com; dkim=pass (4096-bit key) header.d=canonical.com header.i=@canonical.com header.b=FtEXLqmu; arc=none smtp.client-ip=185.125.188.123
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=canonical.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=canonical.com
Received: from mail-wr1-f72.google.com (mail-wr1-f72.google.com [209.85.221.72])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by smtp-relay-internal-1.canonical.com (Postfix) with ESMTPS id BB9803F74E
	for <devicetree@vger.kernel.org>; Thu, 16 Oct 2025 09:24:18 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=canonical.com;
	s=20251003; t=1760606658;
	bh=Jj5YDavVXV4rN07jSdQ2E7BNofwSc+9mwEIbSMC3ewc=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type;
	b=FtEXLqmux7l2HZywJtJ/JjqqkXcIBgzoR5U6Y4inqIzEDBMgcai2mWQttKj+iN0WH
	 qQK8TfWRwylzY3LlVegAuUO/sS/VUYkgAcmBc3XO2pE3nSkfj/IJg54WKrzDaJPZ6F
	 Jltw1bz3irP3qq53lvci5iMYjYcb6THuiwp3NhzsCPanI48o9+umBR1f2qpYIkbcLn
	 pjdm/Lp1z6ccGDfE6mSStLXEKIvXSsOcA+b3NKFURx2yLfwnSXiTt87lst2ifeY/V5
	 UaSsKl44BahM+vY4ALoxvSOJuWtsDPj6XfEp8xk6BNUt+F6+ATtT/oE9rsodvifJcp
	 I5lih/RFXxEc090ZESDPmw8nEb5NA7qSuAr7VqzjmiUWXD7Km1Pbu9xIntlQAVp+tu
	 wtwy4LSEhy1MTFgYTPtsbGjTUAcvzVm/DcW7HHUsbhzaUuuA0olSQ4KhIWW7zZqXIJ
	 3KPskiO2BQnV5LPvRyTMo8YONCbs+wphMXoqfkbE3tPOVkDpnFS6srSM6slwJ7c1pP
	 oKHqDo49HIAMNnRQx6VpMtnQLCbxpZtSJ/JJ+AvLJ3ND2WOIMZSQ2ONpYaP4xv8lZS
	 j7A0q52/NL72vNSQ84o4+fTlDm1t4Al03MhAsUuLq/hfimzQNqjZ4Er8YT9aMphCk/
	 HDd/g++BSvU7M/TyIsbuYha0=
Received: by mail-wr1-f72.google.com with SMTP id ffacd0b85a97d-3ee10a24246so314593f8f.3
        for <devicetree@vger.kernel.org>; Thu, 16 Oct 2025 02:24:18 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1760606655; x=1761211455;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=Jj5YDavVXV4rN07jSdQ2E7BNofwSc+9mwEIbSMC3ewc=;
        b=a0Alv2pIhMpY8n8eXwPMjGx6IUvgCIaksuhfeA7sDw08DIav8VzY2wP9mGgDNKNlOA
         kGgweFqQEYaz+hnBOmrmgPfv02HlQXO8xbTfJXCaNV0cP2zbSGXA1KDmh5ECVTqgeH1S
         glDeLz5UbQ+tj2tFVkchST/DdRtdh1CWJ1ui/SYo4+DmAQ7EZiErKDXvxAoEr5AS1q2A
         u1mDzMI+OoXjQRtgrJIiDugA2gM1dsVn1o/Ow7IcVJZW1Qjp2zIeTgDkw856CjG+w6aV
         zg/g7ZUogNpdal4hS9fl3veOI5dxnZgaVNR/bjoOXQ9tCqnKdqx5eRMUkDqC73N6J+SS
         yZCQ==
X-Gm-Message-State: AOJu0YwTCkGLXV40iC2CRgaZ5VuF5ACRj7Noke4y5o0ElJPJ1etsA7J2
	4Z6/gQJ8DAsLBEcQGJNidPlVXVRQy/s1Cz1whfB+ZlftcV/ynRGXBHZO5FgYtpFGPPoKMBPI96T
	7cflHVTl5g+SUfmM7zAhS0oD87SwVyZGQjdMH2E7LiOAaBesx7xNUh94aM/H2PT+/Xe+jwAlnyl
	+EnkQ=
X-Gm-Gg: ASbGncs2doIK4sfzY0NE9IFpPBqqFT8lpTRe2NfkEwJOfGfxTrIobUCTLmYjLglOXi9
	W5OC8BaCPnyM+LheTOmbi9hTQyxrHkUkMfMxPskEr3GVo0qDoPlVkoK91Ir5IBqtrtmL5NUDNLT
	m0R4vqtuhnsxC6OELVFGrrO8QIQFPMOSBAMiDqTKrl5M2J5jGeOM4Gv4ZFlnYyPvjWw3RYAdBKg
	fUyqd4OttePLWBmZhnujEbr/21/3SnzDDhj8+xhgnMxXlPemeog5C3mGfqDalO2xMCiFItOXotN
	VmhzW+qoX0ft7fCVwIldwDNGCwz2V8nKA9G1tRP1KdyJl4pxgv2eYNjvUQ5bYBYkicmIPYE/E2d
	CNVjcuxJD2bA8ZbeCXeFyYyvJRShUFnuz7u3IdGZmb1kze5lgCoPUmQqTDE2gjXI9JRrZBm7/
X-Received: by 2002:a05:6000:4305:b0:3c8:d236:26bd with SMTP id ffacd0b85a97d-42666ac2ce9mr21148694f8f.11.1760606654852;
        Thu, 16 Oct 2025 02:24:14 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IEcbBGP+l5exuqbqvAtjI14viHyp0QSM9sOIa9CsXS1ysxI1h4z19klvDWfmi0DQ1uixQfYDg==
X-Received: by 2002:a05:6000:4305:b0:3c8:d236:26bd with SMTP id ffacd0b85a97d-42666ac2ce9mr21148675f8f.11.1760606654414;
        Thu, 16 Oct 2025 02:24:14 -0700 (PDT)
Received: from [192.168.103.116] (ip-005-147-080-091.um06.pools.vodafone-ip.de. [5.147.80.91])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-426ce57cce5sm34412027f8f.1.2025.10.16.02.24.13
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 16 Oct 2025 02:24:13 -0700 (PDT)
Message-ID: <64772268-54a1-4495-a901-bfd0e4b06f78@canonical.com>
Date: Thu, 16 Oct 2025 11:24:12 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v1 3/7] dt-bindings: riscv: Add StarFive JH7110S SoC and
 VisionFive 2 Lite board
To: Hal Feng <hal.feng@starfivetech.com>
Cc: devicetree@vger.kernel.org, linux-riscv@lists.infradead.org,
 linux-kernel@vger.kernel.org, Conor Dooley <conor+dt@kernel.org>,
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
 Palmer Dabbelt <palmer@dabbelt.com>, "Rafael J . Wysocki"
 <rafael@kernel.org>, Viresh Kumar <viresh.kumar@linaro.org>,
 Emil Renner Berthing <emil.renner.berthing@canonical.com>,
 E Shattow <e@freeshell.de>, Paul Walmsley <pjw@kernel.org>,
 Albert Ou <aou@eecs.berkeley.edu>
References: <20251016080054.12484-1-hal.feng@starfivetech.com>
 <20251016080054.12484-4-hal.feng@starfivetech.com>
Content-Language: en-US
From: Heinrich Schuchardt <heinrich.schuchardt@canonical.com>
In-Reply-To: <20251016080054.12484-4-hal.feng@starfivetech.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit

On 10/16/25 10:00, Hal Feng wrote:
> Add device tree bindings for the StarFive JH7110S SoC
> and the VisionFive 2 Lite board equipped with it.
> 
> JH7110S SoC is an industrial SoC which can run at -40~85 degrees centigrade
> and up to 1.25GHz. Its CPU cores and peripherals are the same as
> those of the JH7110 SoC.
> 
> VisionFive 2 Lite boards have SD card version (default) and eMMC version,
> which are called "VisionFive 2 Lite" and "VisionFive 2 Lite eMMC"
> respectively.
> 
> Signed-off-by: Hal Feng <hal.feng@starfivetech.com>

Reviewed-by: Heinrich Schuchardt <heinrich.schuchardt@canonical.com>

> ---
>   Documentation/devicetree/bindings/riscv/starfive.yaml | 6 ++++++
>   1 file changed, 6 insertions(+)
> 
> diff --git a/Documentation/devicetree/bindings/riscv/starfive.yaml b/Documentation/devicetree/bindings/riscv/starfive.yaml
> index 04510341a71e..797d9956b949 100644
> --- a/Documentation/devicetree/bindings/riscv/starfive.yaml
> +++ b/Documentation/devicetree/bindings/riscv/starfive.yaml
> @@ -35,6 +35,12 @@ properties:
>                 - starfive,visionfive-2-v1.3b
>             - const: starfive,jh7110
>   
> +      - items:
> +          - enum:
> +              - starfive,visionfive-2-lite
> +              - starfive,visionfive-2-lite-emmc
> +          - const: starfive,jh7110s
> +
>   additionalProperties: true
>   
>   ...


