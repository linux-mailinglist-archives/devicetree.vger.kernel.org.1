Return-Path: <devicetree+bounces-16011-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 006387EC786
	for <lists+devicetree@lfdr.de>; Wed, 15 Nov 2023 16:39:13 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id A70A2280DD5
	for <lists+devicetree@lfdr.de>; Wed, 15 Nov 2023 15:39:12 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 623FB2FE2A;
	Wed, 15 Nov 2023 15:39:09 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="l/yCOwBz"
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E8CC639FF6;
	Wed, 15 Nov 2023 15:39:07 +0000 (UTC)
Received: from mail-vk1-xa2a.google.com (mail-vk1-xa2a.google.com [IPv6:2607:f8b0:4864:20::a2a])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id CC2C6C2;
	Wed, 15 Nov 2023 07:39:06 -0800 (PST)
Received: by mail-vk1-xa2a.google.com with SMTP id 71dfb90a1353d-4ac2c1a4b87so2729598e0c.0;
        Wed, 15 Nov 2023 07:39:06 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1700062746; x=1700667546; darn=vger.kernel.org;
        h=to:subject:message-id:date:from:mime-version:from:to:cc:subject
         :date:message-id:reply-to;
        bh=Ka6oEPkfLKrGnat5klQHHSJAKoZdHvZ4vqzdVi71ZtY=;
        b=l/yCOwBzS7yxYMWD4KmFnlwyPnqDFYi0T0QNqRUoKH/nOo5AKHeAW4E0sygLRbffRG
         cY4kAdSbJYkOdxIu01w7Mk5ONd/d2vK6GLzmlten5arLwxX/gHxHhWR4LMvz8tadoWwW
         +A+wqmim6zy+PRjUlw5P+Q6g1Y7nY4jTX+8mJFQarLVNNMWWhxOfpeWp8QnhhkwreJZG
         HIEkxOj7vK0KQ7DvcMkRjXK53JmlIj08uXKgTlzmSxC7TS2hMl2tzU/AnNgkzt5C7ybv
         lsmeUVOJFu65ERNOYl/7EUrTkjoOkqLHrP4cY3P6OxUZFpqmGWBUn3EVkCmgoCa4vhnj
         /eQw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1700062746; x=1700667546;
        h=to:subject:message-id:date:from:mime-version:x-gm-message-state
         :from:to:cc:subject:date:message-id:reply-to;
        bh=Ka6oEPkfLKrGnat5klQHHSJAKoZdHvZ4vqzdVi71ZtY=;
        b=qT7b4q+D41P9B+qri4ZD3GvAnWZFoud/08ixeIdtoodmOWanJjLsbrhBP9I3C3cD3R
         NkhS67VS0lIto7qriUjHBV8uJftDXtfrCtDf7bWu07s3xhFC7gXpB9WjhnFc5LMPjEko
         6+wIEqpWDJpexg5qD3BJPBZij/fImiN7V6Lxg1qjGnUy9unGrrv3BZqTrulW/x+c0RE4
         j3Pf5cO2xcrVVSbjRLbRMXJ9GovFOF/9UhbS4GDvfkeuWZ50xRGq9SmEwmRlYkYydP9o
         kigNeSiUhfGsbjfGDijgEjCAWRZ1ro+dH3wyD/wezUc1Fg6prNO7GAwGntStC1gN9t5+
         ZiEQ==
X-Gm-Message-State: AOJu0YweRSqswyAf22dMU5Q1lg7XBxLscESF/uNfQJ01qp7JZkcFpeq2
	UFkOQLbMXXXg+hMGlY9WQ52NAkupS90I/aT3bswH195eDH+RG/a8lZk=
X-Google-Smtp-Source: AGHT+IF2MHChcNxtzmpKThCzu49QGOdBWtNv/atMno9IuYGomNn4RXZcC8XOgVmbqV/mqWo+mBqJNKMtof6nBXYIDUM=
X-Received: by 2002:a05:6122:3bd0:b0:4ab:f4e6:7d7 with SMTP id
 ft16-20020a0561223bd000b004abf4e607d7mr16288432vkb.0.1700062745848; Wed, 15
 Nov 2023 07:39:05 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
From: Isaev Ruslan <legale.legale@gmail.com>
Date: Wed, 15 Nov 2023 18:38:53 +0300
Message-ID: <CACDmYyfOe-jcgj4BAD8=pr08sHpOF=+FRcwrouuLAVsa4+zwtw@mail.gmail.com>
Subject: [PATCH v2] arm64: dts: qcom: ipq6018: add QUP5 I2C node
To: agross@kernel.org, andersson@kernel.org, konrad.dybcio@linaro.org, 
	robh+dt@kernel.org, krzysztof.kozlowski+dt@linaro.org, 
	linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"

Add node to support this bus inside of IPQ6018.
For example, this bus is used to work with the
voltage regulator (mp5496) on the Yuncore AX840 wireless AP.


Signed-off-by: Isaev Ruslan <legale.legale@gmail.com>
---
v1 -> v2: fix clocks typo; fix reg size warning.


 arch/arm64/boot/dts/qcom/ipq6018.dtsi | 15 +++++++++++++++
 1 file changed, 15 insertions(+)

diff --git a/arch/arm64/boot/dts/qcom/ipq6018.dtsi
b/arch/arm64/boot/dts/qcom/ipq6018.dtsi
index e59b9df96..00a61de9d 100644
--- a/arch/arm64/boot/dts/qcom/ipq6018.dtsi
+++ b/arch/arm64/boot/dts/qcom/ipq6018.dtsi
@@ -506,6 +506,21 @@ blsp1_i2c3: i2c@78b7000 {
                        dma-names = "tx", "rx";
                        status = "disabled";
                };
+
+               blsp1_i2c6: i2c@78ba000 {
+                       compatible = "qcom,i2c-qup-v2.2.1";
+                       #address-cells = <1>;
+                       #size-cells = <0>;
+                       reg = <0x0 0x078ba000 0x0 0x600>;
+                       interrupts = <GIC_SPI 300 IRQ_TYPE_LEVEL_HIGH>;
+                       clocks = <&gcc GCC_BLSP1_QUP6_I2C_APPS_CLK>,
+                                <&gcc GCC_BLSP1_AHB_CLK>;
+                       clock-names = "core", "iface";
+                       clock-frequency = <400000>;
+                       dmas = <&blsp_dma 22>, <&blsp_dma 23>;
+                       dma-names = "tx", "rx";
+                       status = "disabled";
+               };

                qpic_bam: dma-controller@7984000 {
                        compatible = "qcom,bam-v1.7.0";
--
2.42.0

