Return-Path: <devicetree+bounces-16014-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id F093B7EC7E8
	for <lists+devicetree@lfdr.de>; Wed, 15 Nov 2023 16:52:32 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 90D08B20BC1
	for <lists+devicetree@lfdr.de>; Wed, 15 Nov 2023 15:52:30 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 9E610433BA;
	Wed, 15 Nov 2023 15:52:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="mgQMnBQY"
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3ADDD433B7
	for <devicetree@vger.kernel.org>; Wed, 15 Nov 2023 15:52:15 +0000 (UTC)
Received: from mail-yb1-xb31.google.com (mail-yb1-xb31.google.com [IPv6:2607:f8b0:4864:20::b31])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 6A05619E
	for <devicetree@vger.kernel.org>; Wed, 15 Nov 2023 07:52:13 -0800 (PST)
Received: by mail-yb1-xb31.google.com with SMTP id 3f1490d57ef6-da041ffef81so7553043276.0
        for <devicetree@vger.kernel.org>; Wed, 15 Nov 2023 07:52:13 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1700063532; x=1700668332; darn=vger.kernel.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=nl/GtZGBvIjYyrU77SaU/zaNCPsUzyakCfkfS5CUVyA=;
        b=mgQMnBQY8XCSvfOMvEzz1WpA4gb31gkqX9UN5ACLdCIrAuYGeAsWEyJdYM9yY1bV9Y
         kGFjDH+uJV9wcBpHvFZbuvUW825vS1P6mwhbHtqF0Y1+q0pDtH/lvlyC2plHYWbJXKZb
         TRcKbRH0JArMiGvBgZgl5y5Rdo8JQWIf21S3Y2jVpBCqRumY1kHfdgOKlLtf2fs3csvC
         SNrF1BRs1By38/SH8iFSY4AjdLLHm3zTtyiTaXe0lZ4o45BPlSZJXoCD7/obQHGlswfv
         qDldQ1Gl2eV66DPVZZsB0fpPAdrLP+WIMUS/dhPdbyQjK1i6VpcajoJeOLTg1+iUJOAl
         Lbpw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1700063532; x=1700668332;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=nl/GtZGBvIjYyrU77SaU/zaNCPsUzyakCfkfS5CUVyA=;
        b=eYN4+5nu01gOW0pXI3BACT/jO943RhLvioSdE3rx1p9YijY8BcmkU178sFAJFQ+yeR
         +ps1dyySwLySQX/quUMYcWcJpQvPnO3gH6XJjGmy3HU5rlLB8A/dKkZynAFuN8NPH44W
         VHE3s+OcmZ34zK79UWZkQOE8APcp5Il0tRNdrt6maOYTE06JdSPiNnpaKqGAg+kYqViN
         CXEU0F5eN6faS47ZxO6S/yAPnnI/7HYhkPU0r5Orz5op7v9Rsxhqv9Xcfineyj8t4nlp
         d2SedAWbvWG7MG46ojHxWGYRxmnNmPYbfERC9EeJx7LWKVHllUyGzZL7cuggOYGVZ32E
         uCSQ==
X-Gm-Message-State: AOJu0YyRRbPK1JiscrrhoJR9rt4SogLbbCJfQgzXgETeg9YFrjsZDJyB
	gXpXWyXwwdBQ7BKYv7rZVh4GvLRynrHM+jZERAhMeQ==
X-Google-Smtp-Source: AGHT+IEzfN02zXNZYe7wq1LQwxLuhPnJTlfkFfYCvhwqktqFDoyH/tvLX++NG+ov0may+Csq2S4ITU78lW8TCEox/TQ=
X-Received: by 2002:a25:d843:0:b0:daf:5375:52fe with SMTP id
 p64-20020a25d843000000b00daf537552femr13117763ybg.6.1700063532606; Wed, 15
 Nov 2023 07:52:12 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20231114102321.1147951-1-sai.krishna.potthuri@amd.com>
In-Reply-To: <20231114102321.1147951-1-sai.krishna.potthuri@amd.com>
From: Ulf Hansson <ulf.hansson@linaro.org>
Date: Wed, 15 Nov 2023 16:51:37 +0100
Message-ID: <CAPDyKFpVwKK=fj5c5xTCkVKk3WgpH89ZP1OSdUK72XEXGbkYuA@mail.gmail.com>
Subject: Re: [PATCH v2] dt-bindings: mmc: arasan,sdci: Add gate property for
 Xilinx platforms
To: Sai Krishna Potthuri <sai.krishna.potthuri@amd.com>
Cc: Rob Herring <robh+dt@kernel.org>, 
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, Conor Dooley <conor+dt@kernel.org>, 
	Michal Simek <michal.simek@xilinx.com>, Adrian Hunter <adrian.hunter@intel.com>, 
	linux-mmc@vger.kernel.org, linux-kernel@vger.kernel.org, 
	devicetree@vger.kernel.org, git@amd.com, saikrishna12468@gmail.com
Content-Type: text/plain; charset="UTF-8"

On Tue, 14 Nov 2023 at 11:23, Sai Krishna Potthuri
<sai.krishna.potthuri@amd.com> wrote:
>
> From: Swati Agarwal <swati.agarwal@amd.com>
>
> Add gate property in example node for Xilinx platforms which will be used
> to ungate the DLL clock. DLL clock is required for higher frequencies like
> 50MHz, 100MHz and 200MHz.
> DLL clock is automatically selected by the SD controller when the SD
> output clock frequency is more than 25 MHz.
>
> Signed-off-by: Swati Agarwal <swati.agarwal@amd.com>
> Co-developed-by: Sai Krishna Potthuri <sai.krishna.potthuri@amd.com>
> Signed-off-by: Sai Krishna Potthuri <sai.krishna.potthuri@amd.com>
> Acked-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>

Applied for next, thanks!

Kind regards
Uffe


> ---
> Note: This patch only updates the example nodes with the gate property for
> Xilinx platforms.
>
> Changes in v2:
> - Updated subject prefix to match with the subsystem.
>
>  Documentation/devicetree/bindings/mmc/arasan,sdhci.yaml | 8 ++++----
>  1 file changed, 4 insertions(+), 4 deletions(-)
>
> diff --git a/Documentation/devicetree/bindings/mmc/arasan,sdhci.yaml b/Documentation/devicetree/bindings/mmc/arasan,sdhci.yaml
> index 3e99801f77d2..9075add020bf 100644
> --- a/Documentation/devicetree/bindings/mmc/arasan,sdhci.yaml
> +++ b/Documentation/devicetree/bindings/mmc/arasan,sdhci.yaml
> @@ -226,8 +226,8 @@ examples:
>            interrupt-parent = <&gic>;
>            interrupts = <0 48 4>;
>            reg = <0xff160000 0x1000>;
> -          clocks = <&clk200>, <&clk200>;
> -          clock-names = "clk_xin", "clk_ahb";
> +          clocks = <&clk200>, <&clk200>, <&clk1200>;
> +          clock-names = "clk_xin", "clk_ahb", "gate";
>            clock-output-names = "clk_out_sd0", "clk_in_sd0";
>            #clock-cells = <1>;
>            clk-phase-sd-hs = <63>, <72>;
> @@ -239,8 +239,8 @@ examples:
>            interrupt-parent = <&gic>;
>            interrupts = <0 126 4>;
>            reg = <0xf1040000 0x10000>;
> -          clocks = <&clk200>, <&clk200>;
> -          clock-names = "clk_xin", "clk_ahb";
> +          clocks = <&clk200>, <&clk200>, <&clk1200>;
> +          clock-names = "clk_xin", "clk_ahb", "gate";
>            clock-output-names = "clk_out_sd0", "clk_in_sd0";
>            #clock-cells = <1>;
>            clk-phase-sd-hs = <132>, <60>;
> --
> 2.25.1
>

