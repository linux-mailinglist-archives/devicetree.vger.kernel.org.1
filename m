Return-Path: <devicetree+bounces-268899-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id mMXkJlNhoGk0jAQAu9opvQ
	(envelope-from <devicetree+bounces-268899-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Thu, 26 Feb 2026 16:05:55 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id C38EE1A8387
	for <lists+devicetree@lfdr.de>; Thu, 26 Feb 2026 16:05:49 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 5F1EE3028B0E
	for <lists+devicetree@lfdr.de>; Thu, 26 Feb 2026 14:52:12 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 85D633ECBD1;
	Thu, 26 Feb 2026 14:51:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="jle5kiWa"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f41.google.com (mail-wm1-f41.google.com [209.85.128.41])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 692EC3DA7C7
	for <devicetree@vger.kernel.org>; Thu, 26 Feb 2026 14:51:11 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.41
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772117476; cv=none; b=CpGvQ7XCLxWiE7nvchveftHJ04QEKveywJ/wAUzvzQS63Ytek/RN3AiU3zF1NaWIQVievuNGLWeRXIlEDsIMFNdUoFsRKV7hrdpfMZaz4IjXOJHftw7+0C1wRU46sUYBIAOig3JiGp1W9HDvinNxOzhezpa98L1kG5lMe2xm9C8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772117476; c=relaxed/simple;
	bh=vxDWvv8mb+epglkH3Hn0cudwOLibzt6cGtozzyPrd5k=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=Dds8Ehmtf3WfFowhxNyQiIHZ263lPhKwJQAnwT42NgrrSFXmb5sTLO0qojpbW8AXnJiGRjNjGVmLsvw8XOai5O+99TIQ2Mxq5Td0+ddpvb3D13jidav7/ApGTv+1eM/74OGvxmlzUBrRdLL7368PIOAlfYfPlr1kPV6aIf4mhV4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=jle5kiWa; arc=none smtp.client-ip=209.85.128.41
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wm1-f41.google.com with SMTP id 5b1f17b1804b1-48371bb515eso13069775e9.1
        for <devicetree@vger.kernel.org>; Thu, 26 Feb 2026 06:51:11 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1772117470; x=1772722270; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=9s59gT/FGqvCmBf20Rfr3SRMt29VGd619pvEn9JbdW8=;
        b=jle5kiWan9R22rT7IxgFqJ6DVLmxLNMk80E7yvl57rjL++CMYO9hXdsF21TuNwtZPP
         1xDc9FLNL879c3PUmqGk65EWbQBM/KoDcptaI8kepf8SvM6+X3YAaedt/6zey5DHY21p
         U8PpRZvP6RPhAxWIVGVqVmSF2j1xcXfbyguzI1yvzP9VRi9oUW0vyuG7/GWVrlubTDns
         M6l6GlkVltq+sPZPL0KyxsKf1NjzR6Cu3JNwAH5cqdbgRKIb4dwbvcH2U2MR7u4ln+Sb
         FaEjz6ovKCQP5OKd/1d9jSABR2DcBmb/YfC8adtcAI5mEJN1z+hBKpPjtbSwwAbOXXfj
         Ny/g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1772117470; x=1772722270;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-gg:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=9s59gT/FGqvCmBf20Rfr3SRMt29VGd619pvEn9JbdW8=;
        b=jQHjHOba3xsnKdqXKhBZdzq3LQLarpZoVhQ4MzdXo2qYpn59A5CSwxtVDndYLw1C5r
         /gScST5VCPdHks8KZ873Q2tADhUKOszHPYAhiXuYfqFpNznCmk3SYh7Pflq5cCSUCV3C
         cDwc7P8rqXlQWDCKv9VD+I0mQ37dGNisgBmtdlagLHLYfswMEvSaf3tOnz16QIW/pAWF
         Ns5C+iJbb5Yjoyq7UIsB4Kle6UQ4PMw1WRI7msucZUqkMx64kpR142EfQRocaT8yR1aj
         dS85NvB3V751pn9P5KNktg4JkH9M64F0tgknsfNRPQZ2TIgjkZDjvyrpz8WSiXiAvJoh
         mTnw==
X-Forwarded-Encrypted: i=1; AJvYcCWR3a0MMLkv+CffD56+CtLGCXNz8Xd5Lx0fVgZxEcIWJ/C02q5Q7gJtkyxh5LIxzu4nY6OichV5XN5/@vger.kernel.org
X-Gm-Message-State: AOJu0YxMzjbtB8fi4K4qRhGL2IHaMU7ok6uFHCqIhsKZPerJx5wodtSO
	xPooS5kgcBugcwfehm/EW84Mq9Ip2rvdAXklDDZ9UcYkwM8EukdVsIiPTZRl4rTy+qk=
X-Gm-Gg: ATEYQzwMEmPq/T7Dj5YLM43CPimEzTMtWsAQYzSR7H8WxvmZMcFBWqmXPdRHvseqiX1
	OH1cPKiIY7FCVCUJhQW1qr4er3kgP6c9a+acGOcfHvukUqB3mLuDXVpDVTgDVB+yDlHAAs616Hm
	aZyyyiPTWE6GmcZu8O/tsKtt/jCtgf8vaZNZk6S3X6RAoS9rpeV81rBD4tNy0VeMmx5q6Xh36O1
	MDnGSfDJaJBPp3caoAjsuC+z/eIZ5Z+TneeL+klnEICFQJjby9UkRz4mE+b6VqT2376KSwCkvAE
	QMn0J2XpdMEaa7J/kgXl+z22vP+2k6cIWcdC1EJkaJbR8K7/ms7ES8oYOgle0h4+Hd9uNyTxOKS
	MAZF4aT74+wKpdSHsiLN4WIi860gu6+HBHzhZ43AG4odtuLyl1tpl/heVSm8rnCByZto4OPUodO
	EJg/Smg9UFr4ohTNl3EMi7QIu6gAbntHpywqnEq2jct/AV+vvhmIXcgSLjpEeylsXP
X-Received: by 2002:a05:600c:4508:b0:480:4a90:1afe with SMTP id 5b1f17b1804b1-483c3df76d3mr43199185e9.34.1772117469710;
        Thu, 26 Feb 2026 06:51:09 -0800 (PST)
Received: from [192.168.0.35] (188-141-3-146.dynamic.upc.ie. [188.141.3.146])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-483bfcbf5fbsm36621675e9.18.2026.02.26.06.51.08
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 26 Feb 2026 06:51:09 -0800 (PST)
From: Bryan O'Donoghue <bryan.odonoghue@linaro.org>
Date: Thu, 26 Feb 2026 14:51:06 +0000
Subject: [PATCH 01/11] arm64: dts: qcom: x1e80100: Add CAMCC block
 definition
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260226-x1e-camss-csi2-phy-dtsi-v1-1-f3f7ddfbf849@linaro.org>
References: <20260226-x1e-camss-csi2-phy-dtsi-v1-0-f3f7ddfbf849@linaro.org>
In-Reply-To: <20260226-x1e-camss-csi2-phy-dtsi-v1-0-f3f7ddfbf849@linaro.org>
To: Bjorn Andersson <andersson@kernel.org>, 
 Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org, 
 linux-kernel@vger.kernel.org, Bryan O'Donoghue <bryan.odonoghue@linaro.org>, 
 Vladimir Zapolskiy <vladimir.zapolskiy@linaro.org>, 
 Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
X-Mailer: b4 0.14.3
X-Developer-Signature: v=1; a=openpgp-sha256; l=1765;
 i=bryan.odonoghue@linaro.org; h=from:subject:message-id;
 bh=vxDWvv8mb+epglkH3Hn0cudwOLibzt6cGtozzyPrd5k=;
 b=owEBbQKS/ZANAwAKASJxO7Ohjcg6AcsmYgBpoF3c2GnA9gi1I8G3fEBsZASDiXqkJ+w8y5qbf
 aD68MSc4ymJAjMEAAEKAB0WIQTmk/sqq6Nt4Rerb7QicTuzoY3IOgUCaaBd3AAKCRAicTuzoY3I
 OiOGD/9LyXnmfA8v65VLdOqc+sIFDjNAf6txCZtaq/YCyqtmBqU4A//U5H+uZvKO70BynNCdlkt
 OeRj0H3MO91b55xITsQ1RhTDluACAPSkv4EiAfmX77Zu1emsiW694dkpfegawIc4ew8tQ9jv6t9
 0YIO33iFDE+BywuJxKTxGB+R1Nxi+yVkB4YO2IR+IoJTiSGAe/KAKYL2o7nzu/L0veDTPhgBEVD
 IYjFAmgSAkVk5MW7ktzXOIVBtntHu7jmpkSrMSaSYbO4Na6i4S5eErHWC8tzDuIJIC0TTV6u5Gz
 iR7UX+n8LDzKXC5wNYptLQMKiovTOvVr9tT98AsClzeqN3gfdUEyYkK7uEG+u8E0mezhsvWuNDD
 ntSzhP8zyZMZ4s256cvi471VECWYeInUZStVJpPXGWE9fFucjFcHvFguV2F5r5BWVp/XQCAN69C
 nCnRPFRlHl1HX75kXrn56x2xCPmUeY59M1IyR+dG6Z+wWXTP/qiGehZJI8WOOYIbTGxJCn2/7aT
 3CIRWJDgvFAx1mGlBn04cvVY7jaP5eJjbZJI/80oF/WRaR1nLKkCxcG+ttg1CZnPecT9DNAsRuj
 nw8A5/T7I8wtvbnbFJ6KREbzSBg2C4OgJ/rgLLxnFT1d9PrJ0U2VYjka0CsBJJOx5GQevOKqQBc
 SXFQKDeCbx2cSIA==
X-Developer-Key: i=bryan.odonoghue@linaro.org; a=openpgp;
 fpr=E693FB2AABA36DE117AB6FB422713BB3A18DC83A
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-2.16 / 15.00];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[linaro.org,none];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	R_DKIM_ALLOW(-0.20)[linaro.org:s=google];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	DKIM_TRACE(0.00)[linaro.org:+];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_FROM(0.00)[bounces-268899-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	RSPAMD_URIBL_FAIL(0.00)[ae00000:query timed out];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RSPAMD_EMAILBL_FAIL(0.00)[display-subsystem.ae00000:query timed out];
	FROM_HAS_DN(0.00)[];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[bryan.odonoghue@linaro.org,devicetree@vger.kernel.org];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	NEURAL_HAM(-0.00)[-1.000];
	RCPT_COUNT_SEVEN(0.00)[11];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	DBL_BLOCKED_OPENRESOLVER(0.00)[qualcomm.com:email,ade0000:email,linaro.org:mid,linaro.org:dkim,linaro.org:email,sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,ae00000:email]
X-Rspamd-Queue-Id: C38EE1A8387
X-Rspamd-Action: no action

Add the CAMCC block for x1e80100. The x1e80100 CAMCC block is an iteration
of previous CAMCC blocks with the exception of having two required
power-domains not just one.

Reviewed-by: Vladimir Zapolskiy <vladimir.zapolskiy@linaro.org>
Reviewed-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
Signed-off-by: Bryan O'Donoghue <bryan.odonoghue@linaro.org>
---
 arch/arm64/boot/dts/qcom/hamoa.dtsi | 18 ++++++++++++++++++
 1 file changed, 18 insertions(+)

diff --git a/arch/arm64/boot/dts/qcom/hamoa.dtsi b/arch/arm64/boot/dts/qcom/hamoa.dtsi
index db65c392e6189..f96411f481305 100644
--- a/arch/arm64/boot/dts/qcom/hamoa.dtsi
+++ b/arch/arm64/boot/dts/qcom/hamoa.dtsi
@@ -6,6 +6,7 @@
 #include <dt-bindings/clock/qcom,rpmh.h>
 #include <dt-bindings/clock/qcom,sc8280xp-lpasscc.h>
 #include <dt-bindings/clock/qcom,sm8450-videocc.h>
+#include <dt-bindings/clock/qcom,x1e80100-camcc.h>
 #include <dt-bindings/clock/qcom,x1e80100-dispcc.h>
 #include <dt-bindings/clock/qcom,x1e80100-gcc.h>
 #include <dt-bindings/clock/qcom,x1e80100-gpucc.h>
@@ -5464,6 +5465,23 @@ videocc: clock-controller@aaf0000 {
 			#power-domain-cells = <1>;
 		};
 
+
+		camcc: clock-controller@ade0000 {
+			compatible = "qcom,x1e80100-camcc";
+			reg = <0 0x0ade0000 0 0x20000>;
+			clocks = <&gcc GCC_CAMERA_AHB_CLK>,
+				 <&bi_tcxo_div2>,
+				 <&bi_tcxo_ao_div2>,
+				 <&sleep_clk>;
+			power-domains = <&rpmhpd RPMHPD_MXC>,
+					<&rpmhpd RPMHPD_MMCX>;
+			required-opps = <&rpmhpd_opp_low_svs>,
+					<&rpmhpd_opp_low_svs>;
+			#clock-cells = <1>;
+			#reset-cells = <1>;
+			#power-domain-cells = <1>;
+		};
+
 		mdss: display-subsystem@ae00000 {
 			compatible = "qcom,x1e80100-mdss";
 			reg = <0 0x0ae00000 0 0x1000>;

-- 
2.52.0


