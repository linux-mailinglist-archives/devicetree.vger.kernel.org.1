Return-Path: <devicetree+bounces-76624-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id BC7AE90B5B2
	for <lists+devicetree@lfdr.de>; Mon, 17 Jun 2024 18:04:19 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 67B161F22F06
	for <lists+devicetree@lfdr.de>; Mon, 17 Jun 2024 16:04:19 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 6B1231D9527;
	Mon, 17 Jun 2024 16:02:12 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=sifive.com header.i=@sifive.com header.b="Ij/cvxVB"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-io1-f54.google.com (mail-io1-f54.google.com [209.85.166.54])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D9BDEF510
	for <devicetree@vger.kernel.org>; Mon, 17 Jun 2024 16:02:10 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.166.54
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1718640132; cv=none; b=mGWgR/i2IXatvatFUe7WRP/VFU3mXstzWfAEh4LEHlbLnwhdMWYQ2PVTmjHL4HewCUyx4Q5qvRXTD+zoerb1dk97Qlxlr7ZSxHiHuJz18/FeoaC9yzMz2y2y+vwl6Bnvh49NZHjbCNAHoiscl8UrQnPpEKUZonypIO+2Joh1Ks0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1718640132; c=relaxed/simple;
	bh=gwlCe5hnY/gJ427a2/G0fbAq5zBR1zIpQ1yQroB/i0Q=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=Nb6i/3kH3R6v5+sMXMI1ukFbscGi3ep1K2hqRocq9/3kqhHGqc5mz9O9khi1PDT7+ew+bm5MED7N8vT4NfVW1IQ9fCTu+7nIeytNVh4FC6vMMsOT+wp2phk6M1GANVBOB/aPU7Slf8sV47tLtKRbjveFk4KE3Io9SCoaqv0BVdU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=sifive.com; spf=pass smtp.mailfrom=sifive.com; dkim=pass (2048-bit key) header.d=sifive.com header.i=@sifive.com header.b=Ij/cvxVB; arc=none smtp.client-ip=209.85.166.54
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=sifive.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=sifive.com
Received: by mail-io1-f54.google.com with SMTP id ca18e2360f4ac-7eb7a2f062cso181172739f.0
        for <devicetree@vger.kernel.org>; Mon, 17 Jun 2024 09:02:10 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=sifive.com; s=google; t=1718640130; x=1719244930; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:content-language:from
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=uqgkhvJDnWklw/NEi6lAiqs+H2Sv/nOzZyxuIfPIpJo=;
        b=Ij/cvxVBaVc+QhymuhVt3l4g+zK3N2/kHLst6DbgkxgCfBN+snDN50Qxf3LDGKnVk6
         aOcSYUGUIcvTimmzSmb8LaoB+avthiOz44uNNV4voSZLAz4SlA1rxOaXtlgdRb13h3Gm
         oKoTu+SZdAQ+YjURLAGglzIct4S3DJTTlQjvlgihPJ1jf2U6LYBEO03cTJ7FUbuXInVz
         fklcFYDAWYnpdaoba4nGjVt/vv5OcbqWfDSylzwyp5fg3bqPQnzJPQpMPkqDZIM7/y09
         4z6wwoWW0LZ264j5f7JDJX31gwndsLKscOHvKwA8BrpvFST+2XgOtI56EV+449iEN/S1
         fRAw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1718640130; x=1719244930;
        h=content-transfer-encoding:in-reply-to:content-language:from
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=uqgkhvJDnWklw/NEi6lAiqs+H2Sv/nOzZyxuIfPIpJo=;
        b=t6/DIYXYKQCkWZXHvXbjhWtx8tdJQxgtjrYT0w7Amy/7DnJ7JByhMlVyABMET6mwKi
         Q9e7Db28ZAI1Ep73Dvu1fG4ZHsMbrwG6B+7qQ/3mZ99vsjg2qsKQDt3+CHTi8thRmheU
         Ox8XIW1LeKfFf9FQ+Md3rwqWEHQ+ctbWwf34TmeH53Ro6QKaS5kVR/2O1Body69bHwrM
         DExkdRcZ95+EuJrOiEm9Lv1sXLjT8x6KAmYSdF6g+NinwJoZ0Hq6AEEiGRdl9pmsbZo1
         MnfUSsE/RvQN/SzLQurLVXhd2IeIv+9MqEkWjTJW1ehXtleg3Jz7d4LV6WSP2+sITp+S
         mA4w==
X-Forwarded-Encrypted: i=1; AJvYcCWVknLMlHrX7IjWPQjXH4QJZCiDHsXJdPZl90kYTKtJT2POM1Oah2vvdLHhWvWyAhV3xMG/Zp/vZ1jcrifPcWf4NzcxSZ8q3uOYbA==
X-Gm-Message-State: AOJu0Yxg13RZuBadXk6fb8hf/lEsKVSe+fGTsr0ZTr8EdROL0w1QDnrP
	z3ims8gxqlUJyO0CG6r6W73NwKuuO6NP2noEygscscb/SdEuTGmw6C0lXAaYeL0=
X-Google-Smtp-Source: AGHT+IGKbQLdD/JERZVBeB2s/YJiMwN6RbVW3XS9jI0ypwFKcJ3JZH9gjestGTkJCAXWkeSpQzy60w==
X-Received: by 2002:a05:6602:6c07:b0:7eb:7ebd:1fa4 with SMTP id ca18e2360f4ac-7ebeb4921e2mr1182859539f.1.1718640100005;
        Mon, 17 Jun 2024 09:01:40 -0700 (PDT)
Received: from [100.64.0.1] ([147.124.94.167])
        by smtp.gmail.com with ESMTPSA id 8926c6da1cb9f-4b9569ef011sm2720523173.103.2024.06.17.09.01.38
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 17 Jun 2024 09:01:39 -0700 (PDT)
Message-ID: <b5c4c938-2278-4bba-a0e8-2f5838941302@sifive.com>
Date: Mon, 17 Jun 2024 11:01:37 -0500
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 5/6] riscv: dts: sophgo: Add initial SG2002 SoC device
 tree
To: Thomas Bonnefille <thomas.bonnefille@bootlin.com>
Cc: Albert Ou <aou@eecs.berkeley.edu>, Palmer Dabbelt <palmer@dabbelt.com>,
 Thomas Gleixner <tglx@linutronix.de>,
 Daniel Lezcano <daniel.lezcano@linaro.org>,
 Thomas Petazzoni <thomas.petazzoni@bootlin.com>,
 =?UTF-8?Q?Miqu=C3=A8l_Raynal?= <miquel.raynal@bootlin.com>,
 linux-kernel@vger.kernel.org, devicetree@vger.kernel.org,
 linux-riscv@lists.infradead.org, Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley
 <conor+dt@kernel.org>, Paul Walmsley <paul.walmsley@sifive.com>,
 Chen Wang <unicorn_wang@outlook.com>, Inochi Amaoto <inochiama@outlook.com>,
 Chao Wei <chao.wei@sophgo.com>
References: <20240612-sg2002-v2-0-19a585af6846@bootlin.com>
 <20240612-sg2002-v2-5-19a585af6846@bootlin.com>
From: Samuel Holland <samuel.holland@sifive.com>
Content-Language: en-US
In-Reply-To: <20240612-sg2002-v2-5-19a585af6846@bootlin.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit

Hi Thomas,

On 2024-06-12 3:02 AM, Thomas Bonnefille wrote:
> Add initial device tree for the SG2002 RISC-V SoC by SOPHGO.
> 
> Signed-off-by: Thomas Bonnefille <thomas.bonnefille@bootlin.com>
> ---
>  arch/riscv/boot/dts/sophgo/sg2002.dtsi | 34 ++++++++++++++++++++++++++++++++++
>  1 file changed, 34 insertions(+)
> 
> diff --git a/arch/riscv/boot/dts/sophgo/sg2002.dtsi b/arch/riscv/boot/dts/sophgo/sg2002.dtsi
> new file mode 100644
> index 000000000000..0fc80da7c139
> --- /dev/null
> +++ b/arch/riscv/boot/dts/sophgo/sg2002.dtsi
> @@ -0,0 +1,34 @@
> +// SPDX-License-Identifier: (GPL-2.0 OR MIT)
> +/*
> + * Copyright (C) 2024 Thomas Bonnefille <thomas.bonnefille@bootlin.com>
> + */
> +
> +/dts-v1/;

While it doesn't hurt, you don't need this directive in both the .dtsi and each
.dts file. It looks like it usually goes in the board .dts file only.

Regards,
Samuel

> +
> +#include <dt-bindings/interrupt-controller/irq.h>
> +#include "cv18xx.dtsi"
> +
> +/ {
> +	compatible = "sophgo,sg2002";
> +
> +	memory@80000000 {
> +		device_type = "memory";
> +		reg = <0x80000000 0x10000000>;
> +	};
> +};
> +
> +&plic {
> +	compatible = "sophgo,sg2002-plic", "thead,c900-plic";
> +};
> +
> +&clint {
> +	compatible = "sophgo,sg2002-clint", "thead,c900-clint";
> +};
> +
> +&clk {
> +	compatible = "sophgo,sg2000-clk";
> +};
> +
> +&sdhci0 {
> +	compatible = "sophgo,sg2002-dwcmshc";
> +};
> 


