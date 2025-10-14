Return-Path: <devicetree+bounces-226399-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 536ADBD84C2
	for <lists+devicetree@lfdr.de>; Tue, 14 Oct 2025 10:54:46 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 649201921A54
	for <lists+devicetree@lfdr.de>; Tue, 14 Oct 2025 08:55:09 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 4B5AE2DE1FA;
	Tue, 14 Oct 2025 08:54:44 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="RgaO6zD7"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pf1-f175.google.com (mail-pf1-f175.google.com [209.85.210.175])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7C5742DCF77
	for <devicetree@vger.kernel.org>; Tue, 14 Oct 2025 08:54:42 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.210.175
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760432084; cv=none; b=i3+zk8UjD+V60EYCRPclNsL+9IbUSbfLJ3a+FRPZKT9ZVksu2lOGzFLsXxq5da+9yS0Lh9s27y7zwNjgwXbEJqxuoPyRePYjeDu9aeAf6uJ6KdTeHE/+wpmadDd/srty4dM16cV9uDtYS0T/ltOhUMD8SFOQwPOpqaHGAQX8OJY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760432084; c=relaxed/simple;
	bh=7x1ksEGRUIlN/JRIZWql+/rRJiRrxtl9r0MDlxoj8Co=;
	h=Message-ID:Date:MIME-Version:From:Subject:To:Cc:References:
	 In-Reply-To:Content-Type; b=dYPEEVBmbYctDjqM22amnyY9yffuLNq9EIFv+I182/kzw2Oy3Ny2kfNa179djqKA5wnHlpVuj20eGy1pVk8/r8ef3p9qdolXcmHZhQj8WvqNvExhw41brUDXMWyqWodflTMGBGnfUJ0rgIEabZ+wpBN9op8VQR/3YryDPx/E8LI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=RgaO6zD7; arc=none smtp.client-ip=209.85.210.175
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-pf1-f175.google.com with SMTP id d2e1a72fcca58-791c287c10dso4286619b3a.1
        for <devicetree@vger.kernel.org>; Tue, 14 Oct 2025 01:54:42 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1760432082; x=1761036882; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:content-language:references
         :cc:to:subject:from:user-agent:mime-version:date:message-id:from:to
         :cc:subject:date:message-id:reply-to;
        bh=ISi9f6KzQSpnphkygLBuAPANu77cvnhCFWLhBPhHgsY=;
        b=RgaO6zD7JIq0U1oTpkDVKzmcZUfv7rs1fKBnpjk22jmaEJeOhOopafaZAqyFnmyEhH
         AGRlxGAZ8oyhvit0nMn7qf4QrELfs4w6o3YMAIQYf5et4EmHgEJsDuJjZPk9vHVkR8Qq
         tDN4faYddijCXim041/EKruc2EiJuki368SkZLekMxUYssjkvzpt27/+xV07/CL4uk7J
         WpEILnCEl6K5rvoc+py9mTY2zYnWpddaSWY7n5/ge29ZQ+IMqVwNNYQnMzn4MWvIn96u
         ywCsstlWGSYIlKdYoEAWqPebmtROZ9qYtKHsPwDynY+c6XMIw411qIDc982ytjKffXQo
         hbUA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1760432082; x=1761036882;
        h=content-transfer-encoding:in-reply-to:content-language:references
         :cc:to:subject:from:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=ISi9f6KzQSpnphkygLBuAPANu77cvnhCFWLhBPhHgsY=;
        b=hVKYXYLre4eNUNJGasWus+WS5pMS5TYqKT5l5MxW54YQnnlHst1Rc5GR4faqYLu+YD
         pfQXo/TImXC9AYS24L3zNg5/gplN2CyeXIYz58hV/vWGnlHdcCLtJyiuscEw0ohVS9s7
         nLJXvy1GtDS9+tTSlwA3aPw8xazN/7HiGtTGa0th9X0dZPmU83DYhtmPlZqHQ/SNQYxk
         02SKwkONWpwlLxDuKF1r2dp7Ux2hzv5WONwmjKnYPB/fDW4BLSYzXqkcFHXCWBsGMt2Y
         1WEjzzgUU7uin6ungRgBOB4SclyVUNfFTBezzNn4SK+C9za3Pis98sCY8FzlyZGxFSCJ
         t3ow==
X-Forwarded-Encrypted: i=1; AJvYcCVhpPytLJc3gPFV0HOUhQ3a2O+bWX5IeSoZY0JADwUpfwKBuWIcwtETFcigHMVZ6XhZux71m6p9pJEI@vger.kernel.org
X-Gm-Message-State: AOJu0YyCFXKjnIrXiYZ89UWSSKCxedv6RSeFvX/erpBTeh28ge4dy7k1
	PJXV6fCrvGq9YlJ4Of+L2DH9LtdjEp8f0RcnG2w1uYj3TIexhlaIk0eF
X-Gm-Gg: ASbGncu4Aon9xHLezqlD0EVWbI1d1AR8eDPTlMUsAV1uGEZcYeUtBFsGSW+8ib38xmM
	UbWLiP893OuupwUUwrbfgwYjWTF2wKJXC6t0d+nNwsbMfHqo1YSGYKNCcJfQMgbrBzNNnupbiSy
	Bfon1stQRW5AGG0Nz4g0x12kkXbVRulBxxT6cX2j9wuQwmeAWkfR8N/sSOJhO9C0RFRHLe4TwXO
	HLkbSE/sYrotXYV7vuHsx4FcfzkEKBg05zjZ4Yx9LRrZ+35C4XjiO3i+Tq5tOoWHFiUDis5JEPk
	d0cF6/B9Z7v49b670+1jWV5fuMYcDiuDd5W4nJKcdXshxe21BQrYQE4zkrkHlKwMEWqer+pjKE3
	eVoQiZedoqwMA2gpnGfyeFpIt8IlZPhmmLvMtdkWwmDlbpj3oGZwglA==
X-Google-Smtp-Source: AGHT+IGqTpN25zTj2NoGAGnl9jeNvvTw7CBNIuJy1oxy3KZR2C7Ji/G8drrYLcEK31MzNn+ZS3y/Fg==
X-Received: by 2002:a05:6a00:4fd3:b0:776:12ea:c737 with SMTP id d2e1a72fcca58-79387e05323mr21822249b3a.23.1760432081535;
        Tue, 14 Oct 2025 01:54:41 -0700 (PDT)
Received: from [192.168.0.13] ([172.92.174.155])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-7992b060b66sm14499599b3a.8.2025.10.14.01.54.40
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 14 Oct 2025 01:54:41 -0700 (PDT)
Message-ID: <8226884b-96f9-483e-bcee-466ff3e04b23@gmail.com>
Date: Tue, 14 Oct 2025 01:53:38 -0700
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
From: Bo Gan <ganboing@gmail.com>
Subject: Re: [PATCH v7 1/2] dt-bindings: ethernet: eswin: Document for EIC7700
 SoC
To: weishangjuan@eswincomputing.com, devicetree@vger.kernel.org,
 andrew+netdev@lunn.ch, davem@davemloft.net, edumazet@google.com,
 kuba@kernel.org, robh@kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org,
 netdev@vger.kernel.org, pabeni@redhat.com, mcoquelin.stm32@gmail.com,
 alexandre.torgue@foss.st.com, vladimir.oltean@nxp.com,
 rmk+kernel@armlinux.org.uk, yong.liang.choong@linux.intel.com,
 anthony.l.nguyen@intel.com, prabhakar.mahadev-lad.rj@bp.renesas.com,
 jan.petrous@oss.nxp.com, jszhang@kernel.org, inochiama@gmail.com,
 0x1207@gmail.com, boon.khai.ng@altera.com, linux-kernel@vger.kernel.org,
 linux-stm32@st-md-mailman.stormreply.com,
 linux-arm-kernel@lists.infradead.org
Cc: ningyu@eswincomputing.com, linmin@eswincomputing.com,
 lizhi2@eswincomputing.com, pinkesh.vaghela@einfochips.com,
 Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
References: <20250918085612.3176-1-weishangjuan@eswincomputing.com>
 <20250918085903.3228-1-weishangjuan@eswincomputing.com>
Content-Language: en-US
In-Reply-To: <20250918085903.3228-1-weishangjuan@eswincomputing.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit

On 9/18/25 01:59, weishangjuan@eswincomputing.com wrote:
> From: Shangjuan Wei <weishangjuan@eswincomputing.com>
> 
> Add ESWIN EIC7700 Ethernet controller, supporting clock
> configuration, delay adjustment and speed adaptive functions.
> 
> Signed-off-by: Zhi Li <lizhi2@eswincomputing.com>
> Signed-off-by: Shangjuan Wei <weishangjuan@eswincomputing.com>
> Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
> ---
>   .../bindings/net/eswin,eic7700-eth.yaml       | 127 ++++++++++++++++++
>   1 file changed, 127 insertions(+)
>   create mode 100644 Documentation/devicetree/bindings/net/eswin,eic7700-eth.yaml
> 
> diff --git a/Documentation/devicetree/bindings/net/eswin,eic7700-eth.yaml b/Documentation/devicetree/bindings/net/eswin,eic7700-eth.yaml
> new file mode 100644
> index 000000000000..57d6d0efc126
> --- /dev/null
> +++ b/Documentation/devicetree/bindings/net/eswin,eic7700-eth.yaml
> @@ -0,0 +1,127 @@
> +# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
> +%YAML 1.2
> +---
> +$id: http://devicetree.org/schemas/net/eswin,eic7700-eth.yaml#
> +$schema: http://devicetree.org/meta-schemas/core.yaml#
> +
> +title: Eswin EIC7700 SOC Eth Controller
> +
> +maintainers:
> +  - Shuang Liang <liangshuang@eswincomputing.com>
> +  - Zhi Li <lizhi2@eswincomputing.com>
> +  - Shangjuan Wei <weishangjuan@eswincomputing.com>
> +
> +description:
> +  Platform glue layer implementation for STMMAC Ethernet driver.
> +
> +select:
> +  properties:
> +    compatible:
> +      contains:
> +        enum:
> +          - eswin,eic7700-qos-eth
> +  required:
> +    - compatible
> +
> +allOf:
> +  - $ref: snps,dwmac.yaml#
> +
> +properties:
> +  compatible:
> +    items:
> +      - const: eswin,eic7700-qos-eth
> +      - const: snps,dwmac-5.20
> +
> +  reg:
> +    maxItems: 1
> +
> +  interrupts:
> +    maxItems: 1
> +
> +  interrupt-names:
> +    const: macirq
> +
> +  clocks:
> +    items:
> +      - description: AXI clock
> +      - description: Configuration clock
> +      - description: GMAC main clock
> +      - description: Tx clock
> +
> +  clock-names:
> +    items:
> +      - const: axi
> +      - const: cfg
> +      - const: stmmaceth
> +      - const: tx
> +
> +  resets:
> +    maxItems: 1
> +
> +  reset-names:
> +    items:
> +      - const: stmmaceth
> +
> +  rx-internal-delay-ps:
> +    enum: [0, 200, 600, 1200, 1600, 1800, 2000, 2200, 2400]
> +
> +  tx-internal-delay-ps:
> +    enum: [0, 200, 600, 1200, 1600, 1800, 2000, 2200, 2400]
> +
> +  eswin,hsp-sp-csr:
> +    $ref: /schemas/types.yaml#/definitions/phandle-array
> +    items:
> +      - description: Phandle to HSP(High-Speed Peripheral) device
> +      - description: Offset of phy control register for internal
> +                     or external clock selection
> +      - description: Offset of AXI clock controller Low-Power request
> +                     register
> +      - description: Offset of register controlling TX/RX clock delay
> +    description: |
> +      High-Speed Peripheral device needed to configure clock selection,
> +      clock low-power mode and clock delay.
> +
> +required:
> +  - compatible
> +  - reg
> +  - clocks
> +  - clock-names
> +  - interrupts
> +  - interrupt-names
> +  - phy-mode
> +  - resets
> +  - reset-names
> +  - rx-internal-delay-ps
> +  - tx-internal-delay-ps
> +  - eswin,hsp-sp-csr
> +
> +unevaluatedProperties: false
> +
> +examples:
> +  - |
> +    ethernet@50400000 {
> +        compatible = "eswin,eic7700-qos-eth", "snps,dwmac-5.20";
> +        reg = <0x50400000 0x10000>;
> +        clocks = <&d0_clock 186>, <&d0_clock 171>, <&d0_clock 40>,
> +                <&d0_clock 193>;
> +        clock-names = "axi", "cfg", "stmmaceth", "tx";
> +        interrupt-parent = <&plic>;
> +        interrupts = <61>;
> +        interrupt-names = "macirq";
> +        phy-mode = "rgmii-id";
> +        phy-handle = <&phy0>;
> +        resets = <&reset 95>;
> +        reset-names = "stmmaceth";
> +        rx-internal-delay-ps = <200>;
> +        tx-internal-delay-ps = <200>;
> +        eswin,hsp-sp-csr = <&hsp_sp_csr 0x100 0x108 0x118>;
> +        snps,axi-config = <&stmmac_axi_setup>;
> +        snps,aal;
> +        snps,fixed-burst;
> +        snps,tso;
> +        stmmac_axi_setup: stmmac-axi-config {
> +            snps,blen = <0 0 0 0 16 8 4>;
> +            snps,rd_osr_lmt = <2>;
> +            snps,wr_osr_lmt = <2>;
> +        };
> +    };
> \ No newline at end of file
> --
> 2.17.1
> 

Hi ShangJuan,

I'm active user of HiFive p550. I'd like to test out this driver. Do you have
the device tree section of phy0 for Hifive p550 board? Or it's optional for
p550 board and I can just provide an empty &phy0 node? Regarding hsp_sp_csr
node, I should be able to use
https://github.com/sifiveinc/riscv-linux/blob/b4a753400e624a0eba3ec475fba2866dd7efb767/arch/riscv/boot/dts/eswin/eic7700.dtsi#L167
correct?

Bo

