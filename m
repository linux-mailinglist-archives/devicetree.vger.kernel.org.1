Return-Path: <devicetree+bounces-3493-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 295C17AF12F
	for <lists+devicetree@lfdr.de>; Tue, 26 Sep 2023 18:52:00 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by am.mirrors.kernel.org (Postfix) with ESMTP id 990AA1F25DCE
	for <lists+devicetree@lfdr.de>; Tue, 26 Sep 2023 16:51:59 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E544434CC2;
	Tue, 26 Sep 2023 16:51:56 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A348934188
	for <devicetree@vger.kernel.org>; Tue, 26 Sep 2023 16:51:54 +0000 (UTC)
Received: from mo4-p02-ob.smtp.rzone.de (mo4-p02-ob.smtp.rzone.de [81.169.146.170])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 8A9B910A;
	Tue, 26 Sep 2023 09:51:52 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1695747097; cv=none;
    d=strato.com; s=strato-dkim-0002;
    b=e1FNutQA0rwb5SsRlUBxMtZeclHqJHfw6ET2YwpVwH0LXp6902zwVGrBR8E+nO1dLD
    vfl01YDLnUU91Gvd2IzR6Hd2wecr+i6rMzTddi3yy0BZ/ErJGhNo9mZyL2iSQ3UKi8F7
    /CrTfAsLQP8+5Mu7OhQ22Np8+O2HYsXWWjjfsU/EPMNC0KVKpZH3x8XmjV+N9fBORmmM
    4BcNs07v+R8jtSpYB9uRELSk9wOJIyiwQ2WTcTCLDMunM3h3zhRcK7pZ1zMaS75m36+c
    FCvftLe+JFL0DhHUkgX6KUkI02GFM2sTif5V6N6wjHvSpyoitXJxUhJMcpXaAb8nJYcP
    /iog==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; t=1695747097;
    s=strato-dkim-0002; d=strato.com;
    h=Cc:To:In-Reply-To:References:Message-Id:Subject:Date:From:Cc:Date:
    From:Subject:Sender;
    bh=LqBmkyhk2Cb/MLq0OkUi2RjkOOdxDVt4cx89VaPtOEQ=;
    b=GOptnwsm87mWrCCOfCnuaD430Q1VawHc6SAE8tX4LDcS6rjygS1RXo0GU/NqEBEwNV
    JIz7+DjhmE/SNfVSd3XCoN7HLZfkMM35jaefg0XxGHh19MPhW6sboMVg7BnqnXwBHRHn
    lwXldSNg+J8T93/rTQs+K2r5VbCc6NCTepMRonU2yOhLSH0fs8lwcNTxi04gr2NU7mPK
    il6lQFohJ54cI7l4QIxGejoVEEHf3/DGKNcqWXdLrky2ZtyWN+mLc9kNGKCc/N7Nu9Yp
    fcYxxoF6YGUaosgdGhqawXJBLDxXSQzLtheHePZYhnQtt+I9GpS1XRlXzcQBmFxD2C2U
    m74Q==
ARC-Authentication-Results: i=1; strato.com;
    arc=none;
    dkim=none
X-RZG-CLASS-ID: mo02
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; t=1695747097;
    s=strato-dkim-0002; d=gerhold.net;
    h=Cc:To:In-Reply-To:References:Message-Id:Subject:Date:From:Cc:Date:
    From:Subject:Sender;
    bh=LqBmkyhk2Cb/MLq0OkUi2RjkOOdxDVt4cx89VaPtOEQ=;
    b=Ur/W/iLroAUK7McesfMrwT02l1GYMGln9gEPFlhE+BarkeHm8eUOr4sqkxX2wPo0P7
    OLcHQevQvEJvTG5uYutL3aCESZj/yWQdxVGpdJAMnh/j3JIXumwiosEVZSXZxy2jbtGO
    zNJR4+CWQDhcEayl1qTJzUTkn+UQ6wbLgziXKric9fUsZXmsqHw49Jrj1d4xi+npJRL+
    wuFhNUhcoUxVT40brpyGd7FiQuWV7iKNILqTAE7YH/ZQkwnkz7wLTT29uY/z9QQ1inLX
    gkGS7uGWaTAF7XHuUe+zfqy+riHxLzgwdH4bSFTU6irip2nhFZj/0vUfYt8SjBj3e5Fc
    1AFw==
DKIM-Signature: v=1; a=ed25519-sha256; c=relaxed/relaxed; t=1695747097;
    s=strato-dkim-0003; d=gerhold.net;
    h=Cc:To:In-Reply-To:References:Message-Id:Subject:Date:From:Cc:Date:
    From:Subject:Sender;
    bh=LqBmkyhk2Cb/MLq0OkUi2RjkOOdxDVt4cx89VaPtOEQ=;
    b=DoOuoN9jIWIN+/UZBvQaShXJAACURU/iwsdMf0qhCIirNZrYdLC+U7gvhRazff/ZVM
    D+53Zrp7yX3WHv+058DA==
X-RZG-AUTH: ":P3gBZUipdd93FF5ZZvYFPugejmSTVR2nRPhVOQjVd4CteZ/7jYgS+mLFY+H0JAn9VOH+nz0="
Received: from [192.168.244.3]
    by smtp.strato.de (RZmta 49.8.2 SBL|AUTH)
    with ESMTPSA id R04c57z8QGpbg5Y
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256 bits))
	(Client did not present a certificate);
    Tue, 26 Sep 2023 18:51:37 +0200 (CEST)
From: Stephan Gerhold <stephan@gerhold.net>
Date: Tue, 26 Sep 2023 18:51:15 +0200
Subject: [PATCH 01/13] arm64: dts: qcom: msm8939: Add BAM-DMUX WWAN
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20230926-msm8916-modem-v1-1-398eec74bac9@gerhold.net>
References: <20230926-msm8916-modem-v1-0-398eec74bac9@gerhold.net>
In-Reply-To: <20230926-msm8916-modem-v1-0-398eec74bac9@gerhold.net>
To: Bjorn Andersson <andersson@kernel.org>
Cc: Andy Gross <agross@kernel.org>, 
 Konrad Dybcio <konrad.dybcio@linaro.org>, linux-arm-msm@vger.kernel.org, 
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
 phone-devel@vger.kernel.org, ~postmarketos/upstreaming@lists.sr.ht, 
 Bryan O'Donoghue <bryan.odonoghue@linaro.org>, 
 Stephan Gerhold <stephan@gerhold.net>, 
 Vincent Knecht <vincent.knecht@mailoo.org>
X-Mailer: b4 0.12.3
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_BLOCKED,
	RCVD_IN_MSPIKE_H3,RCVD_IN_MSPIKE_WL,SPF_HELO_PASS,SPF_NONE
	autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
	lindbergh.monkeyblade.net

From: Vincent Knecht <vincent.knecht@mailoo.org>

BAM DMUX is used as the network interface to the modem. This is copied
as-is from msm8916.dtsi.

Signed-off-by: Vincent Knecht <vincent.knecht@mailoo.org>
Signed-off-by: Stephan Gerhold <stephan@gerhold.net>
---
 arch/arm64/boot/dts/qcom/msm8939.dtsi | 30 ++++++++++++++++++++++++++++++
 1 file changed, 30 insertions(+)

diff --git a/arch/arm64/boot/dts/qcom/msm8939.dtsi b/arch/arm64/boot/dts/qcom/msm8939.dtsi
index 324b5d26db40..65c68e0e88d5 100644
--- a/arch/arm64/boot/dts/qcom/msm8939.dtsi
+++ b/arch/arm64/boot/dts/qcom/msm8939.dtsi
@@ -1537,6 +1537,20 @@ spmi_bus: spmi@200f000 {
 			#interrupt-cells = <4>;
 		};
 
+		bam_dmux_dma: dma-controller@4044000 {
+			compatible = "qcom,bam-v1.7.0";
+			reg = <0x04044000 0x19000>;
+			interrupts = <GIC_SPI 29 IRQ_TYPE_LEVEL_HIGH>;
+			#dma-cells = <1>;
+			qcom,ee = <0>;
+
+			num-channels = <6>;
+			qcom,num-ees = <1>;
+			qcom,powered-remotely;
+
+			status = "disabled";
+		};
+
 		mpss: remoteproc@4080000 {
 			compatible = "qcom,msm8916-mss-pil";
 			reg = <0x04080000 0x100>, <0x04020000 0x040>;
@@ -1569,6 +1583,22 @@ mpss: remoteproc@4080000 {
 			qcom,halt-regs = <&tcsr 0x18000 0x19000 0x1a000>;
 			status = "disabled";
 
+			bam_dmux: bam-dmux {
+				compatible = "qcom,bam-dmux";
+
+				interrupt-parent = <&hexagon_smsm>;
+				interrupts = <1 IRQ_TYPE_EDGE_BOTH>, <11 IRQ_TYPE_EDGE_BOTH>;
+				interrupt-names = "pc", "pc-ack";
+
+				qcom,smem-states = <&apps_smsm 1>, <&apps_smsm 11>;
+				qcom,smem-state-names = "pc", "pc-ack";
+
+				dmas = <&bam_dmux_dma 4>, <&bam_dmux_dma 5>;
+				dma-names = "tx", "rx";
+
+				status = "disabled";
+			};
+
 			mba {
 				memory-region = <&mba_mem>;
 			};

-- 
2.42.0


