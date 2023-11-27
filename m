Return-Path: <devicetree+bounces-19362-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id 9B26B7FA8EB
	for <lists+devicetree@lfdr.de>; Mon, 27 Nov 2023 19:24:18 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 2D204B20FB0
	for <lists+devicetree@lfdr.de>; Mon, 27 Nov 2023 18:24:16 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 98FD93D39A;
	Mon, 27 Nov 2023 18:24:13 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; dkim=none
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ot1-f43.google.com (mail-ot1-f43.google.com [209.85.210.43])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id CC045198;
	Mon, 27 Nov 2023 10:24:10 -0800 (PST)
Received: by mail-ot1-f43.google.com with SMTP id 46e09a7af769-6d8147d3072so1376329a34.1;
        Mon, 27 Nov 2023 10:24:10 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1701109450; x=1701714250;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=wF7BpdESHg7ukGeVphyj0w+Q03SJQZ4KYg2HXNSbNFU=;
        b=aMaIxoGX/lOdIMeQMPD3C7BqtrAKhiYwhg7wkGJ0QjVwzaC/6r3aMtYxn+kUZxOqe9
         zPnxaDds+DZUZZApZvqBz642RsbnsIuH6KpADMsAuylKQsrWyaFXZBMM5FyDjuYYfGlh
         lE4zgav0snGYvi1N6rI61yBtxfB0y6+F1+FraVqUQ0FO8T39rLbIRXD7PwGi4kKqKH8N
         75gU4x4ugB8P1Ywnd94el8W64Fjy2zQ/Ppeyer9yGmcyiGGCReej2pTHC2SVtBBgMk7Y
         Wujkj9VG/z9h4uiI3xvjtDEYhrwXF5QcR8364gQ7KTHbbJrFOA/kvfbBIywEC1Kr9wQO
         bImw==
X-Gm-Message-State: AOJu0YyHjtWOO9Tu9ZdUtxlnU15irOpFq0xig4E1eegzFP9YPiQmb72e
	XZ1cRG7nGPeBlLUASRJ98w==
X-Google-Smtp-Source: AGHT+IGZ1FUvDOFdx14sqdb4Qh4hz/OmI5KEpI0XR0i001qZqV3VfcIpq4j9OGYlfjltBcQdBbZFUA==
X-Received: by 2002:a05:6830:1e39:b0:6d3:a8b:b34 with SMTP id t25-20020a0568301e3900b006d30a8b0b34mr14340070otr.5.1701109450110;
        Mon, 27 Nov 2023 10:24:10 -0800 (PST)
Received: from herring.priv (66-90-144-107.dyn.grandenetworks.net. [66.90.144.107])
        by smtp.gmail.com with ESMTPSA id v10-20020a056830140a00b006d834fd3399sm128109otp.59.2023.11.27.10.24.09
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 27 Nov 2023 10:24:09 -0800 (PST)
Received: (nullmailer pid 2141620 invoked by uid 1000);
	Mon, 27 Nov 2023 18:24:08 -0000
Date: Mon, 27 Nov 2023 12:24:08 -0600
From: Rob Herring <robh@kernel.org>
To: Jisheng Zhang <jszhang@kernel.org>
Cc: Srinivas Kandagatla <srinivas.kandagatla@linaro.org>, Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, Conor Dooley <conor+dt@kernel.org>, devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, linux-riscv@lists.infradead.org, Chao Wei <chao.wei@sophgo.com>, Chen Wang <unicorn_wang@outlook.com>
Subject: Re: [PATCH 1/2] dt-bindings: nvmem: Add sophgo,efuses
Message-ID: <20231127182408.GA2131525-robh@kernel.org>
References: <20231119131332.999-1-jszhang@kernel.org>
 <20231119131332.999-2-jszhang@kernel.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20231119131332.999-2-jszhang@kernel.org>

On Sun, Nov 19, 2023 at 09:13:31PM +0800, Jisheng Zhang wrote:
> Sophgo SoCs such as CV1800B come with eFuses used to store
> factory-programmed data such as calibration settings for the built-in
> ethernet PHY.
> 
> Signed-off-by: Jisheng Zhang <jszhang@kernel.org>
> ---
>  .../bindings/nvmem/sophgo,efuse.yaml          | 54 +++++++++++++++++++
>  1 file changed, 54 insertions(+)
>  create mode 100644 Documentation/devicetree/bindings/nvmem/sophgo,efuse.yaml
> 
> diff --git a/Documentation/devicetree/bindings/nvmem/sophgo,efuse.yaml b/Documentation/devicetree/bindings/nvmem/sophgo,efuse.yaml
> new file mode 100644
> index 000000000000..e4ae81a1742a
> --- /dev/null
> +++ b/Documentation/devicetree/bindings/nvmem/sophgo,efuse.yaml
> @@ -0,0 +1,54 @@
> +# SPDX-License-Identifier: GPL-2.0-only OR BSD-2-Clause
> +%YAML 1.2
> +---
> +$id: http://devicetree.org/schemas/nvmem/sophgo,efuse.yaml#
> +$schema: http://devicetree.org/meta-schemas/core.yaml#
> +
> +title: Sophgo SoC eFuse-based NVMEM
> +
> +description: |
> +  Sophgo SoCs such as the CV1800B contain factory-programmed eFuses used to e.g. store
> +  calibration data for the built-in ethernet PHY.
> +maintainers:
> +  - Jisheng Zhang <jszhang@kernel.org>
> +
> +allOf:
> +  - $ref: nvmem.yaml#
> +  - $ref: nvmem-deprecated-cells.yaml#

Why does a new binding need to use the deprecated form?

Rob

