Return-Path: <devicetree+bounces-119947-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 9EC399C0A49
	for <lists+devicetree@lfdr.de>; Thu,  7 Nov 2024 16:43:04 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id C23BF1C20DA7
	for <lists+devicetree@lfdr.de>; Thu,  7 Nov 2024 15:43:03 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 427ED213EC7;
	Thu,  7 Nov 2024 15:43:00 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="o1023zAF"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f54.google.com (mail-wr1-f54.google.com [209.85.221.54])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 44174212D2F
	for <devicetree@vger.kernel.org>; Thu,  7 Nov 2024 15:42:58 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.54
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1730994180; cv=none; b=OcU6/vyPsE6GQuEQbK6oFz/iNEsOX9L8zLqz4tLavaiohGlJj0fOjc3K7xcGeRndYOx+mvHbv240q5lISHWnABQ/3sNCcypTM1bFJj9K4C4Y3NLdFmSdlxOOnTTXte58ZOXAwLPJLGkYBWa0P7BHSsZ0ah+3H2ALTC1ncvkegTY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1730994180; c=relaxed/simple;
	bh=Ocmes03GIEV9WM7tB2F9fJ9RCQvkMK/gGRTXEm0UrE4=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=VmtVPPAgf+zzzcHcGfVRMxBsKrdvdk0tczQbmkltRq+1/tt+LxNNpVsfGaXItIcX6NwqE3RtaAM6BOy7LDA6Jr1gxaOfiUx8waMkJAVAB/YkEgUww6y8VtdwEzEzFwl4LmbYVynXsqqZ1MvHJG/aG5DG7W7bXedlHCu6CkXRBVU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=o1023zAF; arc=none smtp.client-ip=209.85.221.54
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wr1-f54.google.com with SMTP id ffacd0b85a97d-37d473c4bb6so929800f8f.3
        for <devicetree@vger.kernel.org>; Thu, 07 Nov 2024 07:42:58 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1730994176; x=1731598976; darn=vger.kernel.org;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:from:to
         :cc:subject:date:message-id:reply-to;
        bh=YobGRMTq6r2m1GLqKYMeMjlD+pYxCKxFlYRpMg1uhDo=;
        b=o1023zAFp0lte7Ic7ugx0xUfx3RWv3ska/IsS8tip11XrDXzOj6tUT2POZjl3NQwN1
         pIy5zGN95mOmDAZP12Bsz6YJn0HWJ1AdT/g01eGbAEgHTcM4xHaME6SWIzpgW1wj1Maz
         7a9wDJtiU7w9NLvgdrO5lr78t3SXiUXx/S1tmwFS6OYXfOSloa8slYQyQUTVlQsNYS/b
         zoeisTcpWav6tRfwORBI3aUkHIajsqDbcXL4Z/Agbd9JVsgFxLp4QWjWr1GaFpZQuHCH
         cBQjbe3jr52E0gfegQFoW9HbP4dhTL/MF3qNdcpJn7WvkAbKUNgEnrOiuAni4ggKY9GQ
         MgYw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1730994176; x=1731598976;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=YobGRMTq6r2m1GLqKYMeMjlD+pYxCKxFlYRpMg1uhDo=;
        b=dS/rmu6G4YH3cl6K0pb5WRAYDGcA1ovS21AvWICh4TZZeAmcDTh8Yu66fr5KKz/o+S
         1WbuHXwfm4NtahSAr5pqCROmGmCkvTK6KpamfzE4uHGKHi5a8w0cuhG40+/fmJ0iJTms
         y/36fiL9D6IKNWpt478G8VLc2yeLQB+eZEzpzPvrkMxQq2cBwef+R3ahH+1YwdiXE8JF
         0IFA5/YOlKwj7s8U2neb+ue+tI/yzQyYzjrfSNBJuvjuqWLjGZKcVceQiK8obKzFC6fM
         mRqWzHSsg6D5iAvT9LkF40uli6/56CHUN6SX8mpAgrrupTpEwl7CbVbsiMUyjbHg5jXK
         zceQ==
X-Forwarded-Encrypted: i=1; AJvYcCU/eKoySNDxsRVw6cpCEs0WDTLg7J/FdnQuGQxVh1CJihmcAhm5XfL3WJVHFY5zt4PHUwE7ulPkigE2@vger.kernel.org
X-Gm-Message-State: AOJu0Yzwh/R9tZCiI9O44jyUBQIPPk1zqHPqUxB2nlLVrXBwTct6jBVn
	1FBSoCvvPyJzELt5iNR124xOU+c4FSwh9P6PdJ4bG4T9mqAjbZamJ18PPtO+uA==
X-Google-Smtp-Source: AGHT+IFCgk8JSit4kcsOrIG5RALXryrUw/ReDwKvQwa/P1qPxT2aNSJYDBHM8/WH1Pr9qfT9F1GZig==
X-Received: by 2002:a5d:64c5:0:b0:37d:4c40:699 with SMTP id ffacd0b85a97d-381c7a467admr27117943f8f.5.1730994176383;
        Thu, 07 Nov 2024 07:42:56 -0800 (PST)
Received: from thinkpad ([89.101.134.25])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-381eda0ed16sm2021217f8f.107.2024.11.07.07.42.55
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 07 Nov 2024 07:42:55 -0800 (PST)
Date: Thu, 7 Nov 2024 15:42:54 +0000
From: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
To: Shawn Lin <shawn.lin@rock-chips.com>
Cc: Rob Herring <robh+dt@kernel.org>,
	"James E . J . Bottomley" <James.Bottomley@HansenPartnership.com>,
	"Martin K . Petersen" <martin.petersen@oracle.com>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Ulf Hansson <ulf.hansson@linaro.org>,
	Heiko Stuebner <heiko@sntech.de>,
	"Rafael J . Wysocki" <rafael@kernel.org>,
	Alim Akhtar <alim.akhtar@samsung.com>,
	Avri Altman <avri.altman@wdc.com>,
	Bart Van Assche <bvanassche@acm.org>,
	YiFeng Zhao <zyf@rock-chips.com>, Liang Chen <cl@rock-chips.com>,
	linux-scsi@vger.kernel.org, linux-rockchip@lists.infradead.org,
	devicetree@vger.kernel.org, linux-pm@vger.kernel.org
Subject: Re: [PATCH v4 2/7] dt-bindings: ufs: Document Rockchip UFS host
 controller
Message-ID: <20241107154254.bpuqspdrymyg3qsa@thinkpad>
References: <1730705521-23081-1-git-send-email-shawn.lin@rock-chips.com>
 <1730705521-23081-3-git-send-email-shawn.lin@rock-chips.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <1730705521-23081-3-git-send-email-shawn.lin@rock-chips.com>

On Mon, Nov 04, 2024 at 03:31:56PM +0800, Shawn Lin wrote:
> Document Rockchip UFS host controller for RK3576 SoC.
> 
> Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
> Signed-off-by: Shawn Lin <shawn.lin@rock-chips.com>
> ---
> 
> Changes in v4:
> - properly describe reset-gpios
> 
> Changes in v3:
> - rename the file to rockchip,rk3576-ufshc.yaml
> - add description for reset-gpios
> - use rockchip,rk3576-ufshc as compatible
> 
> Changes in v2:
> - rename the file
> - add reset-gpios
> 
>  .../bindings/ufs/rockchip,rk3576-ufshc.yaml        | 105 +++++++++++++++++++++
>  1 file changed, 105 insertions(+)
>  create mode 100644 Documentation/devicetree/bindings/ufs/rockchip,rk3576-ufshc.yaml
> 
> diff --git a/Documentation/devicetree/bindings/ufs/rockchip,rk3576-ufshc.yaml b/Documentation/devicetree/bindings/ufs/rockchip,rk3576-ufshc.yaml
> new file mode 100644
> index 0000000..bc4c3de
> --- /dev/null
> +++ b/Documentation/devicetree/bindings/ufs/rockchip,rk3576-ufshc.yaml
> @@ -0,0 +1,105 @@
> +# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
> +%YAML 1.2
> +---
> +$id: http://devicetree.org/schemas/ufs/rockchip,rk3576-ufshc.yaml#
> +$schema: http://devicetree.org/meta-schemas/core.yaml#
> +
> +title: Rockchip UFS Host Controller
> +
> +maintainers:
> +  - Shawn Lin <shawn.lin@rock-chips.com>
> +
> +allOf:
> +  - $ref: ufs-common.yaml
> +
> +properties:
> +  compatible:
> +    const: rockchip,rk3576-ufshc
> +
> +  reg:
> +    maxItems: 5
> +
> +  reg-names:
> +    items:
> +      - const: hci
> +      - const: mphy
> +      - const: hci_grf
> +      - const: mphy_grf
> +      - const: hci_apb
> +
> +  clocks:
> +    maxItems: 4
> +
> +  clock-names:
> +    items:
> +      - const: core
> +      - const: pclk
> +      - const: pclk_mphy
> +      - const: ref_out
> +
> +  power-domains:
> +    maxItems: 1
> +
> +  resets:
> +    maxItems: 4
> +
> +  reset-names:
> +    items:
> +      - const: biu
> +      - const: sys
> +      - const: ufs
> +      - const: grf
> +
> +  reset-gpios:
> +    maxItems: 1
> +    description: |
> +      GPIO specifiers for host to reset the whole UFS device including PHY and
> +      memory. This gpio is active low and should choose the one whose high output
> +      voltage is lower than 1.5V based on the UFS spec.
> +
> +required:
> +  - compatible
> +  - reg
> +  - reg-names
> +  - clocks
> +  - clock-names
> +  - interrupts
> +  - power-domains
> +  - resets
> +  - reset-names
> +  - reset-gpios
> +
> +unevaluatedProperties: false
> +
> +examples:
> +  - |
> +    #include <dt-bindings/clock/rockchip,rk3576-cru.h>
> +    #include <dt-bindings/reset/rockchip,rk3576-cru.h>
> +    #include <dt-bindings/interrupt-controller/arm-gic.h>
> +    #include <dt-bindings/power/rockchip,rk3576-power.h>
> +    #include <dt-bindings/pinctrl/rockchip.h>
> +    #include <dt-bindings/gpio/gpio.h>
> +
> +    soc {
> +        #address-cells = <2>;
> +        #size-cells = <2>;
> +
> +        ufs: ufs@2a2d0000 {

Could you please use 'ufshc' as the node name as documented in the devicetree
spec?

- Mani

> +              compatible = "rockchip,rk3576-ufshc";
> +              reg = <0x0 0x2a2d0000 0x0 0x10000>,
> +                    <0x0 0x2b040000 0x0 0x10000>,
> +                    <0x0 0x2601f000 0x0 0x1000>,
> +                    <0x0 0x2603c000 0x0 0x1000>,
> +                    <0x0 0x2a2e0000 0x0 0x10000>;
> +              reg-names = "hci", "mphy", "hci_grf", "mphy_grf", "hci_apb";
> +              clocks = <&cru ACLK_UFS_SYS>, <&cru PCLK_USB_ROOT>, <&cru PCLK_MPHY>,
> +                      <&cru CLK_REF_UFS_CLKOUT>;
> +              clock-names = "core", "pclk", "pclk_mphy", "ref_out";
> +              interrupts = <GIC_SPI 361 IRQ_TYPE_LEVEL_HIGH>;
> +              power-domains = <&power RK3576_PD_USB>;
> +              resets = <&cru SRST_A_UFS_BIU>, <&cru SRST_A_UFS_SYS>, <&cru SRST_A_UFS>,
> +                        <&cru SRST_P_UFS_GRF>;
> +              reset-names = "biu", "sys", "ufs", "grf";
> +              reset-gpios = <&gpio4 RK_PD0 GPIO_ACTIVE_LOW>;
> +        };
> +    };
> -- 
> 2.7.4
> 

-- 
மணிவண்ணன் சதாசிவம்

