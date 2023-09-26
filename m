Return-Path: <devicetree+bounces-3492-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 904227AF132
	for <lists+devicetree@lfdr.de>; Tue, 26 Sep 2023 18:52:00 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sv.mirrors.kernel.org (Postfix) with ESMTP id 75147281EC9
	for <lists+devicetree@lfdr.de>; Tue, 26 Sep 2023 16:51:58 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 4AA5C341B6;
	Tue, 26 Sep 2023 16:51:55 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BF09B27ED8
	for <devicetree@vger.kernel.org>; Tue, 26 Sep 2023 16:51:53 +0000 (UTC)
Received: from mo4-p02-ob.smtp.rzone.de (mo4-p02-ob.smtp.rzone.de [81.169.146.168])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 7DE49CE;
	Tue, 26 Sep 2023 09:51:51 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1695747099; cv=none;
    d=strato.com; s=strato-dkim-0002;
    b=kSGFRL0zczKR3GIhD0fBFecewo53+uDiKTogTmJlTtLxM+8XNEtStpUE7lOJGNU6Xs
    bBs4QfG7Tk2O7mbnEAAj0hyuiHLFZx6e6Uf7tYxlkXqZw4OxVeddi3LYUCNDz+TB9oGG
    1z3QfVXD9I7CoOwxFDLcbZUEuJuck72kSinX3DYvSw7YAvcd7BgGWfb2JQfkHdfLlJyB
    29FZdPCxjLIgmBbO/2oFOCivPKdt6WqCZIoRHw5fsKtn2dpVk6vLm8NZ++Es54+y85Gm
    QoT1TEH7X7nWognKz3StPwsUUWLpNl5LD8a4Sbm7+HMYgJvD5RF1MW7yZIzqdxlLdVLH
    +o/g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; t=1695747099;
    s=strato-dkim-0002; d=strato.com;
    h=Cc:To:In-Reply-To:References:Message-Id:Subject:Date:From:Cc:Date:
    From:Subject:Sender;
    bh=kyLgD0VCEKhD2y8R4NJw6xg2f+jq7nFO8XPoZEM39PI=;
    b=qWUp7D/ozf0IoHlmaMWDw66CbbZAaOgOVF5vpVQSd4goJ7i8TC6x9qua40FvR3DKoG
    qpwojcngonQsxk6oz8g2naNoicw3LrvkDqeIdq7/4AucGeeGmGKGy6OM3MieeIOiPcdg
    k+/MFAn9yVdd4mrFz+C6OLwMVt/Y378t+EqKcOeEXVH+BLVrYBAcWv2FKxcjvdRPzF9U
    Ndf+K6Dj2+TymDiwnraGv+VcAhzgfOFVF89bFtN6o36+u4FM+8SLrz0c2zyiujvyH3xm
    Ff0N/2HV1a2UFN7TMFdeOWYGc8HQs4i7bOE/aCnk4zXqmiG3YXWe5TENNqkSkU3FkSV7
    UsUg==
ARC-Authentication-Results: i=1; strato.com;
    arc=none;
    dkim=none
X-RZG-CLASS-ID: mo02
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; t=1695747099;
    s=strato-dkim-0002; d=gerhold.net;
    h=Cc:To:In-Reply-To:References:Message-Id:Subject:Date:From:Cc:Date:
    From:Subject:Sender;
    bh=kyLgD0VCEKhD2y8R4NJw6xg2f+jq7nFO8XPoZEM39PI=;
    b=qN0xIDrnsba8VB+jVQHf8f8g+5cKa03AFC4PUnujw6zKM82sxvp5NrPmeY8sVQVwyQ
    jT8FQ8+tvBJYObv3M3BW6cLvJYVX7Qaiu3iJQhl0lFVB3DHq0j3Vd+2FIewJOMA7xxB7
    lTA6drxIdkGrs6VxtkTL/0xB1Xt1Mmm0FTwVSwMGdV8UJrOmqJrTTwDrSW2em78GQg5R
    waa1eBENczjTxSuvkf2q7CwHsJ3sh5064AZlavj7V5Rc0f3s5vEo7K411FMLRmKfHIHn
    iboUpJYZQXPeBXMdNmhoxC3JUQNXDRL1ibeuk/c973LoVKX01yknpJtW0IOdUKv3n2UF
    cAyA==
DKIM-Signature: v=1; a=ed25519-sha256; c=relaxed/relaxed; t=1695747099;
    s=strato-dkim-0003; d=gerhold.net;
    h=Cc:To:In-Reply-To:References:Message-Id:Subject:Date:From:Cc:Date:
    From:Subject:Sender;
    bh=kyLgD0VCEKhD2y8R4NJw6xg2f+jq7nFO8XPoZEM39PI=;
    b=QfnfrnH4GbxLcHfantWYb0dmhglBgmIv6aNlJsC7JvONpru5q5gfW2qCoNpG4BVjrV
    XTj0hjpfp8ghGdHxXZAA==
X-RZG-AUTH: ":P3gBZUipdd93FF5ZZvYFPugejmSTVR2nRPhVOQjVd4CteZ/7jYgS+mLFY+H0JAn9VOH+nz0="
Received: from [192.168.244.3]
    by smtp.strato.de (RZmta 49.8.2 SBL|AUTH)
    with ESMTPSA id R04c57z8QGpcg5c
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256 bits))
	(Client did not present a certificate);
    Tue, 26 Sep 2023 18:51:38 +0200 (CEST)
From: Stephan Gerhold <stephan@gerhold.net>
Date: Tue, 26 Sep 2023 18:51:19 +0200
Subject: [PATCH 05/13] arm64: dts: qcom: msm8916-samsung-serranove: Add
 sound and modem
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20230926-msm8916-modem-v1-5-398eec74bac9@gerhold.net>
References: <20230926-msm8916-modem-v1-0-398eec74bac9@gerhold.net>
In-Reply-To: <20230926-msm8916-modem-v1-0-398eec74bac9@gerhold.net>
To: Bjorn Andersson <andersson@kernel.org>
Cc: Andy Gross <agross@kernel.org>, 
 Konrad Dybcio <konrad.dybcio@linaro.org>, linux-arm-msm@vger.kernel.org, 
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
 phone-devel@vger.kernel.org, ~postmarketos/upstreaming@lists.sr.ht, 
 Bryan O'Donoghue <bryan.odonoghue@linaro.org>, 
 Stephan Gerhold <stephan@gerhold.net>
X-Mailer: b4 0.12.3
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_BLOCKED,
	RCVD_IN_MSPIKE_H3,RCVD_IN_MSPIKE_WL,SPF_HELO_PASS,SPF_NONE
	autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
	lindbergh.monkeyblade.net

Enable sound and modem for the Samsung S4 Mini Value Edition. The setup
is similar to most MSM8916 devices, i.e.:

 - QDSP6 audio
 - Speaker/earpiece/headphones/microphones via digital/analog codec in
   MSM8916/PM8916
 - WWAN Internet via BAM-DMUX

except:

 - Samsung-specific audio jack detection (not supported yet)

Signed-off-by: Stephan Gerhold <stephan@gerhold.net>
---
 arch/arm64/boot/dts/qcom/msm8916-samsung-serranove.dts | 14 ++++++++++++++
 1 file changed, 14 insertions(+)

diff --git a/arch/arm64/boot/dts/qcom/msm8916-samsung-serranove.dts b/arch/arm64/boot/dts/qcom/msm8916-samsung-serranove.dts
index 68da2a2d3077..5f33aa0ad7b5 100644
--- a/arch/arm64/boot/dts/qcom/msm8916-samsung-serranove.dts
+++ b/arch/arm64/boot/dts/qcom/msm8916-samsung-serranove.dts
@@ -6,6 +6,8 @@
 /dts-v1/;
 
 #include "msm8916-pm8916.dtsi"
+#include "msm8916-modem-qdsp6.dtsi"
+
 #include <dt-bindings/gpio/gpio.h>
 #include <dt-bindings/input/input.h>
 #include <dt-bindings/interrupt-controller/irq.h>
@@ -319,6 +321,10 @@ &blsp_uart2 {
 	status = "okay";
 };
 
+&mpss_mem {
+	reg = <0x0 0x86800000 0x0 0x5a00000>;
+};
+
 &pm8916_resin {
 	status = "okay";
 	linux,code = <KEY_VOLUMEDOWN>;
@@ -350,6 +356,14 @@ &sdhc_2 {
 	no-1-8-v;
 };
 
+&sound {
+	status = "okay";
+	audio-routing =
+		"AMIC1", "MIC BIAS External1",
+		"AMIC2", "MIC BIAS Internal2",
+		"AMIC3", "MIC BIAS External1";
+};
+
 &usb {
 	status = "okay";
 	extcon = <&muic>, <&muic>;

-- 
2.42.0


