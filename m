Return-Path: <devicetree+bounces-15831-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 413847EBFC8
	for <lists+devicetree@lfdr.de>; Wed, 15 Nov 2023 10:55:32 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id CEE031F26851
	for <lists+devicetree@lfdr.de>; Wed, 15 Nov 2023 09:55:31 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 88C319465;
	Wed, 15 Nov 2023 09:55:26 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="iHLZb3j/"
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3A7197E;
	Wed, 15 Nov 2023 09:55:25 +0000 (UTC)
Received: from mail-vk1-xa30.google.com (mail-vk1-xa30.google.com [IPv6:2607:f8b0:4864:20::a30])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 1A906106;
	Wed, 15 Nov 2023 01:55:24 -0800 (PST)
Received: by mail-vk1-xa30.google.com with SMTP id 71dfb90a1353d-4abf80eab14so2939220e0c.2;
        Wed, 15 Nov 2023 01:55:24 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1700042123; x=1700646923; darn=vger.kernel.org;
        h=cc:to:subject:message-id:date:from:mime-version:from:to:cc:subject
         :date:message-id:reply-to;
        bh=lP6kMRkCOqvaUr4OI6dET5EWrhmrSO9vePyGj/P6sPs=;
        b=iHLZb3j/em8XoAEXR1ZQaEywP3MSY4KawhrS1wMlzrOVjirOn7nYi4a1vazrTTiFav
         bNXXs7GixSl+stXXR1pwjuaImmF4STMmevEyuF15WebOmIp1e+eMfNpg/a7IpE6i02gC
         9vDmqw633/rBCe9yhg2TuJegriyMA2TSa46O6Zcl9dX1ZXH4NMGn4lTWU8wKZsVEoaej
         iM8UI+Z+qTwz8pZIuXm7JdeVsDc+Z1ZqYQHIlvhGzGLc8HsnnHTTXfcp6l5al1ppzya7
         MeSEabAtD5b5/nxVuBpCUWm6UmUUqUxLjLzFCu6/tBlCeXXPxqSeRIOPye3Atw0YfsbZ
         0sLQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1700042123; x=1700646923;
        h=cc:to:subject:message-id:date:from:mime-version:x-gm-message-state
         :from:to:cc:subject:date:message-id:reply-to;
        bh=lP6kMRkCOqvaUr4OI6dET5EWrhmrSO9vePyGj/P6sPs=;
        b=rmDinkDw3/WzQwbwvGhcgRrFL08Zt8JrBEkvGljnFWgjIGBXJtGXGpChE6gWmWGid7
         a1Ut68zUq0Py0TFPADqhw+SmpDGI5cpjEMed1dQPq/eIzpXzPvZpP2dEXyzGhmdm/X0e
         /3BcCyLdpmJdjyO6Y54sVwvy1OZLshC3M+23+jiu2KFsrzH46YTRhLavbjY2RzFIvbup
         9iF1vTeo66vcNe7Qo6oLJMXlYS2o5aqSdX/xbv1cLH7mCfoXDfRTL0XtART/f+f83kXj
         DrNRXaDejlHPXHA7owo/kVIsRp0lkxPa/IKpKTxwuY4C4OPaxVg6LBRfRYVe8041nmVH
         F+qg==
X-Gm-Message-State: AOJu0Yz+sumf/D/30SA19BaoW+QDmW/Xsp7M4CsYXcWwEzs6pwjmKsNT
	l3U4qhTn8yZUnHjTRExy42WJhM0669gzWsmnODvpQU5k9WxoEuhp
X-Google-Smtp-Source: AGHT+IFT1F1D8uo240bZHgFsyj/QNEYuIzR14n4a4kHdyyRi6HsP+gcJQliNAsOFoGs5U/1RvMA3qxZTv5Dkx8BJa2U=
X-Received: by 2002:a05:6122:a19:b0:4ab:ef58:fca4 with SMTP id
 25-20020a0561220a1900b004abef58fca4mr13925082vkn.7.1700042122967; Wed, 15 Nov
 2023 01:55:22 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
From: Legale Legale <legale.legale@gmail.com>
Date: Wed, 15 Nov 2023 12:55:10 +0300
Message-ID: <CACDmYyf4hxbuw+cpKqEDnqmHpS9yPXuE5MPD5_XZ3hjmYuViUQ@mail.gmail.com>
Subject: [PATCH] arm64: dts: qcom: ipq6018: add QUP5 I2C node
To: agross@kernel.org, andersson@kernel.org, konrad.dybcio@linaro.org, 
	robh+dt@kernel.org, krzysztof.kozlowski+dt@linaro.org, 
	linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org
Cc: Legale Legale <legale.legale@gmail.com>
Content-Type: text/plain; charset="UTF-8"

Add node to support this bus inside of IPQ6018.
For example, this bus is used to work with the
voltage regulator (mp5496) on the Yuncore AX840 wireless AP.

Signed-off-by: Isaev Ruslan <legale.legale@gmail.com>
---
 arch/arm64/boot/dts/qcom/ipq6018.dtsi | 15 +++++++++++++++
 1 file changed, 15 insertions(+)

diff --git a/arch/arm64/boot/dts/qcom/ipq6018.dtsi
b/arch/arm64/boot/dts/qcom/ipq6018.dtsi
index e59b9df96c7e..745bfc6e2907 100644
--- a/arch/arm64/boot/dts/qcom/ipq6018.dtsi
+++ b/arch/arm64/boot/dts/qcom/ipq6018.dtsi
@@ -507,6 +507,21 @@ blsp1_i2c3: i2c@78b7000 {
                        status = "disabled";
                };

+               blsp1_i2c6: i2c@78ba000 {
+                       compatible = "qcom,i2c-qup-v2.2.1";
+                       #address-cells = <1>;
+                       #size-cells = <0>;
+                       reg = <0x078ba000 0x600>;
+                       interrupts = <GIC_SPI 300 IRQ_TYPE_LEVEL_HIGH>;
+                       clocks = <&gcc GCC_BLSP1_QUP6_I2C_APPS_CLK>,
+                                <&gcc GCC_BLSP1_AHB_CLK>;
+                       clock-names = "core", "iface";
+                       clock-frequency = <100000>;
+                       dmas = <&blsp_dma 22>, <&blsp_dma 23>;
+                       dma-names = "tx", "rx";
+                       status = "disabled";
+               };
+
                qpic_bam: dma-controller@7984000 {
                        compatible = "qcom,bam-v1.7.0";
                        reg = <0x0 0x07984000 0x0 0x1a000>;
--
2.42.0

