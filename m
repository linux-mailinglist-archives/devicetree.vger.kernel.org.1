Return-Path: <devicetree+bounces-145070-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id E101EA3043C
	for <lists+devicetree@lfdr.de>; Tue, 11 Feb 2025 08:14:18 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 2AED918877CE
	for <lists+devicetree@lfdr.de>; Tue, 11 Feb 2025 07:14:24 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 2E21F1EB1A5;
	Tue, 11 Feb 2025 07:14:13 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="f5zsGiX7"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pl1-f177.google.com (mail-pl1-f177.google.com [209.85.214.177])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 858681EA7E3
	for <devicetree@vger.kernel.org>; Tue, 11 Feb 2025 07:14:10 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.214.177
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1739258053; cv=none; b=WOFLvjzHD9U/9Lfni57akM+BRAK/j4nW8iXHLk1lky8MND52m/Clv4PPQXhOepz1OL6ErywqJxKh9ymVpF0j3TEKP37KESXlk3ZU0cXdyfAkDEONmkOX0IMfVq0/kUH9MmFRaMi/bop+IiQsl46P64NhAdkTgK6nwYslPlBZaVc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1739258053; c=relaxed/simple;
	bh=Ect0AyTPX+U623UbpTy0ZQGWd6VgrVJ99NZznXGlINw=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=bRdakf31tly1BpPRZ2y5JtpXfYT7cViX+FCK+9JNd18UhoX2zfFOYgKTWouHfvQi7cZPwPlRVrGOU06qqJxGBS9+UbM8b3DyiC199jSOnIH4syVtSQ44zcjFUqWUVt8DwuxiOgqI9DjtzCf7C4v6MI5CRNGyoeHPt4hMvi/6snw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=f5zsGiX7; arc=none smtp.client-ip=209.85.214.177
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-pl1-f177.google.com with SMTP id d9443c01a7336-21f5660c2fdso69230615ad.2
        for <devicetree@vger.kernel.org>; Mon, 10 Feb 2025 23:14:10 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1739258050; x=1739862850; darn=vger.kernel.org;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:from:to
         :cc:subject:date:message-id:reply-to;
        bh=jjaa+HXjrGwq5PRHUao/HX53fhsDrtRqn5yZMM90oN0=;
        b=f5zsGiX7f7XueNnCpUa+5d/KQPRGV0Vw8Y0sCh7UeWhP/zhThGp6cywEbExBS8qC2y
         jKokHSeApSt0GMd9HS+P8lr0qz7ZG+/0C2o6cYn5DJOPmP+nwNS3JcjW8CrwTmPsEjHu
         zL3gahlRPneCV8wIBACT3ZHB+8ZWM0eS9EZ1xYbHxgUtoKN8PojvGNuqiKEpA9Y4h0H3
         cANDr0CUhMhJNYQrIpHNOF/XpnZrbtGLqzOYIAXBdbiBk1pvqSD9+3iJolAlQ/8uCldT
         iI/xZiHYNSHiP+GzUkEPDvWtS2dBAcaAdLde8hzn7OsEGroAQwNSsniokKLnpOwM/6Zf
         hIkQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1739258050; x=1739862850;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=jjaa+HXjrGwq5PRHUao/HX53fhsDrtRqn5yZMM90oN0=;
        b=NoQkxIUOsHE9YbZXHQQ3zcdSNKsf6GSeTOCTWZTR5+vuxQ3D72jXdBtvXpi4NzdEbI
         p7Q8Mw9GW6LHHZHs0lkFFB2aB1xJGawkdjP8uV1wO2KzS0HdfLAdHgY2nmq74YrU16RJ
         HMuOL9cjZYIM+M2n5cat9XuSni9+tqVVab5CFu5Wz+lKac7skRoG4BZN23AbLDFZ+JLz
         ATl7uhrEYW3yxmwdJjUw6pV2YsgpRsLr/07uTF+BC4Ve4WMtvCuz/4kv48Gzburmiglv
         sZre48BJht2baxnO8Q23bMWmkGN/63ONqF7p4DuuQhhmEQCrG1dewrNOPd7X3CIP+794
         omYw==
X-Forwarded-Encrypted: i=1; AJvYcCWO4p12yPLMpjsyGOQ5ajQbtbR3MTObRQvDzPln9FoLurtZmRVTKMfDeUHvCAdHzIad13mP0AMBWidH@vger.kernel.org
X-Gm-Message-State: AOJu0YwrKrzZgb/fyhyH+RA1ZxNzqctCnGF4qUyPfj5GN1BfQfpHKkX5
	eFzDgIn/VzradTicSzMKJhyJzt4jONW1b71pdsOEfHEhI0YqxkmCi2lVpq6qYQ==
X-Gm-Gg: ASbGncv8AWB94NQ296nHtL99oSxYn+ViD1SYfMp4mnLvEeo/eRxrzdxktXfKxu89m6y
	XGbDFO2vXa6/V6FrYcLuPfgTy1Bm7t66fTiX1idBaBssCuZu4nTkhxley8Jux1v9foBAwW7RRez
	UNuQwUp7Xx2U4IIaXTu6EQ1A3KDNsMKePu8UhFMMTSSlm2vB1EgKBtcS69JX29ZSs4QyYmLehDL
	baGLRuvjEf7kFcS0T/jduwR1CoFFczK/wTnSO/i7BRvqwbGDH4MfVjmUlYQowxmEdVZq4JB5EI/
	D1QjFbA33HCTrFRd8WvE8E5pzw==
X-Google-Smtp-Source: AGHT+IFYkM6g1TIlBuXKoU06Jn1k0JzKJXCx5+DC8hZQsvZBv5O/+Jn6hYd8RLMSbBKiGvO2UlS/hA==
X-Received: by 2002:a17:903:947:b0:21b:d2b6:ca7f with SMTP id d9443c01a7336-21f4e75a0aamr282532585ad.32.1739258049757;
        Mon, 10 Feb 2025 23:14:09 -0800 (PST)
Received: from thinkpad ([36.255.17.230])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-21f7516a0cbsm50836975ad.247.2025.02.10.23.14.04
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 10 Feb 2025 23:14:09 -0800 (PST)
Date: Tue, 11 Feb 2025 12:44:01 +0530
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
Subject: Re: [PATCH v7 1/7] dt-bindings: ufs: Document Rockchip UFS host
 controller
Message-ID: <20250211071401.ozup56f6pjuzpawl@thinkpad>
References: <1738736156-119203-1-git-send-email-shawn.lin@rock-chips.com>
 <1738736156-119203-2-git-send-email-shawn.lin@rock-chips.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <1738736156-119203-2-git-send-email-shawn.lin@rock-chips.com>

On Wed, Feb 05, 2025 at 02:15:50PM +0800, Shawn Lin wrote:
> Document Rockchip UFS host controller for RK3576 SoC.
> 
> Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
> Signed-off-by: Shawn Lin <shawn.lin@rock-chips.com>

Acked-by: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>

- Mani

> ---
> 
> Changes in v7: None
> Changes in v6:
> - fix indentation to 4 spaces suggested by Krzysztof
> 
> Changes in v5:
> - use ufshc for devicetree example suggested by Mani
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
> index 0000000..c7d17cf4
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
> +        ufshc: ufshc@2a2d0000 {
> +            compatible = "rockchip,rk3576-ufshc";
> +            reg = <0x0 0x2a2d0000 0x0 0x10000>,
> +                  <0x0 0x2b040000 0x0 0x10000>,
> +                  <0x0 0x2601f000 0x0 0x1000>,
> +                  <0x0 0x2603c000 0x0 0x1000>,
> +                  <0x0 0x2a2e0000 0x0 0x10000>;
> +            reg-names = "hci", "mphy", "hci_grf", "mphy_grf", "hci_apb";
> +            clocks = <&cru ACLK_UFS_SYS>, <&cru PCLK_USB_ROOT>, <&cru PCLK_MPHY>,
> +                     <&cru CLK_REF_UFS_CLKOUT>;
> +            clock-names = "core", "pclk", "pclk_mphy", "ref_out";
> +            interrupts = <GIC_SPI 361 IRQ_TYPE_LEVEL_HIGH>;
> +            power-domains = <&power RK3576_PD_USB>;
> +            resets = <&cru SRST_A_UFS_BIU>, <&cru SRST_A_UFS_SYS>, <&cru SRST_A_UFS>,
> +                     <&cru SRST_P_UFS_GRF>;
> +            reset-names = "biu", "sys", "ufs", "grf";
> +            reset-gpios = <&gpio4 RK_PD0 GPIO_ACTIVE_LOW>;
> +        };
> +    };
> -- 
> 2.7.4
> 

-- 
மணிவண்ணன் சதாசிவம்

