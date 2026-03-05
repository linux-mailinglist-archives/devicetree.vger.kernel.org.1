Return-Path: <devicetree+bounces-271578-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id EDbWELqHqWki+gAAu9opvQ
	(envelope-from <devicetree+bounces-271578-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Thu, 05 Mar 2026 14:40:10 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id CEFCC212ABB
	for <lists+devicetree@lfdr.de>; Thu, 05 Mar 2026 14:40:09 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 39453303A254
	for <lists+devicetree@lfdr.de>; Thu,  5 Mar 2026 13:39:48 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id DB7FA3A4F24;
	Thu,  5 Mar 2026 13:39:47 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="acmHMOUx";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="XCrqvuiR"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 833B4255F2C
	for <devicetree@vger.kernel.org>; Thu,  5 Mar 2026 13:39:46 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772717987; cv=none; b=thKvHnJQ4OICJPNTiXC8MSuZAPKdbANOQYbIjntzO0nmrZga1x9bv9wX/5l4URvx7eYS38AYWHKznaqzvbDcydCVy3jgBwKNVM2aExwJSKZ52Ksm2hkhMLOQWaPhD9wpW54+ZG8buDlb82mSiHL0IAg5BffMGEqegpLzHKmkgvs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772717987; c=relaxed/simple;
	bh=mZOq4Lkgs8v8T9NZyyJHg91spf5S0MZ2S/xwswzDHPk=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=KajpDZksnlX1CMtGdt9cS+TTBNq4QegEwjaIOzAP7kh7NTIVst2RYdUR+PkuP/uKu6sCfnzgFSSFEtE1WQwbREbcDypTT4FgVZHGSOsFPMqd5iPu4aRO3hvLuQyDRTsLP2iih7zM7b2eaitaiR5IZWuBTtEMGCrUi/kZ39tGgoo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=acmHMOUx; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=XCrqvuiR; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279864.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 625AG4no2118292
	for <devicetree@vger.kernel.org>; Thu, 5 Mar 2026 13:39:46 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	XTXqn42rKWNP7ZScqGq5Fan9LitTyer6iA3RuPMR4Aw=; b=acmHMOUxk6Vmwrxu
	nPAUW7+QyCtoDJNBov2dsHZS7PszUOC2qlUXmSqaaF9wU0hFtIzEoiyqBAgrMGaH
	ewrbVdxKWvQCyAGrT5iJfY9QTWiFMahY8X5C1xKD+sQuzuJxGTI1vrlxyaFCHKm7
	lNf+NgHPLDhqE0hypcuGLcRyhvjS/Qil6GIFBvWHOE2p0hCqXHaE5BLMd+ULzob3
	YZ0M2f1hYv3QWYCYOjCAMjd4JcJyISSIp7+tNQCaGrQa9ym9onI874QUIdgZvpfH
	kVWnFbR6gNyS5iBK71fejvO5LsJwIRyuVbpVo/OufroARonOqRCJKUAj0UXqGXvc
	7dLlIA==
Received: from mail-pj1-f70.google.com (mail-pj1-f70.google.com [209.85.216.70])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4cps0m3h2t-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Thu, 05 Mar 2026 13:39:45 +0000 (GMT)
Received: by mail-pj1-f70.google.com with SMTP id 98e67ed59e1d1-35641c14663so8456800a91.2
        for <devicetree@vger.kernel.org>; Thu, 05 Mar 2026 05:39:45 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1772717985; x=1773322785; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=XTXqn42rKWNP7ZScqGq5Fan9LitTyer6iA3RuPMR4Aw=;
        b=XCrqvuiRF+eK+ZubgoGADxjLRGiGUBQcs82nv67sf6+DA3CuNMvsDBkGWQ9ayixJ7U
         Mk/37itewdWslQO7DX5fWrlgQaMXR+EFzsX/7uiTFxyH/YquuzYREY4grOPJiXpj1Q/A
         JAbVxjyKdETKWPq3FnBoAc3G+qFsMcpIyl3gQjahFTysDuHa0uWkXCxmpdmmyswJjmT2
         PnYQ51/hbGlYcXhSUcV0t+ZkXCKyaz/PacHH2YlowXlFex8aAjVf6XDFO6+DQyoexnFz
         DkZ/6bjU2vbTM261sQTzn+Msg17OkEJHXZfykte2r4444lAf5agqi/cQFHxl9IkXgBPA
         HkzQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1772717985; x=1773322785;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-gg:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=XTXqn42rKWNP7ZScqGq5Fan9LitTyer6iA3RuPMR4Aw=;
        b=IJpIn2926sIiwFDdxbXx2ilBwjN523tQfQH6H8+FVKrerW4/TwhUfomoqIm+ATfdFq
         i1vyb9cwsOAwZi2Df/c11jmWX72J/ggK4ZOOpHp2APZXkOggy/l57iiTA4WjHJvBVi+S
         2A2yT489xY5axTbMz2x9N4NaYwOiTQOWBd91lYsZHxf9/5KlFHpNYQLQXH6my8etRk3H
         STTpxVvBLfsZSzQqtG1gIDMEumLnFD6a8FSAPpFnZuKzezmm7Zdui/KxeybgtoPcB4LQ
         Pljq1HEJHUoB/UpgYq0F12M+NGeFQP603rkj9XliPRs+56Xm34D9aXnKhwUIMtoQ4WpQ
         V5gw==
X-Forwarded-Encrypted: i=1; AJvYcCXaYR+ZCXFE45DHJbk4k2Im5w60+OxJBXrfe1jvWbCvTi+D83eYqV4xzHz5pgk5yIrCxxS48DZadO31@vger.kernel.org
X-Gm-Message-State: AOJu0YynbZvHB6ihR3OxOsadunc3uVuSLahzIkghicMz8gWPmyfXWgjh
	XD2wbAbREnNq0uRuGspHDOe7rrrfK8Xu8SBIMPIKzys1jBsghsEiTCkPFRZropzExs5SJiNw8bS
	z+uf6rBFGnJAWiqWF1pCj7F0Ukq1NzrDqoVeHtOhosghivi9ZmJ3ILONr/sWuZr08
X-Gm-Gg: ATEYQzygM1qfvyoVABFnlJiWXKyKUcPcBjSKt6aWBK2Zz+xef6Lw5/X1gs2X8o8pIIO
	4h9KKDg4jwRiihFmvQKrmzdruvo+XcmipLH/ViShOzl64oueZ7Qg4hudApUFVWPn9B++HnJLGGf
	86wEVREW9vwZinWVhlA1c//SJ4DRWPFi8I1ElmlAtv1e8d8I36RyxTAtVzTpCRA+lihidjb+tq6
	Lf4+3z+2caFEjk8wGoqHxfDUcZez9SlqxSiikSGj+16b3cGDnIkiWsFvNfE6NgNEW3M446SYYea
	YztQJsqaXdI86l719R+AdwqYzsHLFa2fd7q2e2u6CPUGqrjPAs5DfvAq6CC1/gGCGZLJfzx9P8L
	FCMR2uz0uhvfnse4gJeRyrxXG5yJxWsAOtttVRNEWX74sW7ioP63l3aloWQ==
X-Received: by 2002:a17:90b:3c46:b0:358:f04e:a617 with SMTP id 98e67ed59e1d1-359a69c764fmr5172636a91.10.1772717984825;
        Thu, 05 Mar 2026 05:39:44 -0800 (PST)
X-Received: by 2002:a17:90b:3c46:b0:358:f04e:a617 with SMTP id 98e67ed59e1d1-359a69c764fmr5172604a91.10.1772717984256;
        Thu, 05 Mar 2026 05:39:44 -0800 (PST)
Received: from hu-sushruts-hyd.qualcomm.com ([202.46.23.25])
        by smtp.gmail.com with ESMTPSA id 98e67ed59e1d1-359b2d5fe2dsm2195236a91.7.2026.03.05.05.39.40
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 05 Mar 2026 05:39:43 -0800 (PST)
From: Sushrut Shree Trivedi <sushrut.trivedi@oss.qualcomm.com>
Date: Thu, 05 Mar 2026 19:09:31 +0530
Subject: [PATCH v4 1/2] arm64: dts: qcom:
 qcs6490-rb3gen2-industrial-mezzanine: Add TC9563 PCIe switch node for
 PCIe0
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260305-industrial-mezzanine-pcie-v4-1-1f2c9d1344d7@oss.qualcomm.com>
References: <20260305-industrial-mezzanine-pcie-v4-0-1f2c9d1344d7@oss.qualcomm.com>
In-Reply-To: <20260305-industrial-mezzanine-pcie-v4-0-1f2c9d1344d7@oss.qualcomm.com>
To: Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org,
        Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>,
        Sushrut Shree Trivedi <sushrut.trivedi@oss.qualcomm.com>,
        Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
X-Mailer: b4 0.14.3
X-Developer-Signature: v=1; a=ed25519-sha256; t=1772717976; l=4725;
 i=sushrut.trivedi@oss.qualcomm.com; s=20251127; h=from:subject:message-id;
 bh=mZOq4Lkgs8v8T9NZyyJHg91spf5S0MZ2S/xwswzDHPk=;
 b=D5UODKCQkBThJknAiBfl1IFg1qYZFJGLH+ZTRlRGe9beYCpcsI4tglSZr/GGAWroMOaNDUsaa
 H316RfKfpnBCmUv7O2pRJJyg+gnBiJaUURzeFXbEeH0gJ54UAKjWJZC
X-Developer-Key: i=sushrut.trivedi@oss.qualcomm.com; a=ed25519;
 pk=OrUHTxBaSg1oY3CtCictJ5A4bDMNLRZS1S+QfD9pdjw=
X-Authority-Analysis: v=2.4 cv=e6wLiKp/ c=1 sm=1 tr=0 ts=69a987a1 cx=c_pps
 a=0uOsjrqzRL749jD1oC5vDA==:117 a=ZePRamnt/+rB5gQjfz0u9A==:17
 a=IkcTkHD0fZMA:10 a=Yq5XynenixoA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=DJpcGTmdVt4CTyJn9g5Z:22
 a=EUspDBNiAAAA:8 a=RBLAtJqH_bkH6XPhXP4A:9 a=QEXdDO2ut3YA:10
 a=mQ_c8vxmzFEMiUWkPHU9:22
X-Proofpoint-ORIG-GUID: fN2wuTfBC1ankNgb16_QkqAY9jZgElGO
X-Proofpoint-GUID: fN2wuTfBC1ankNgb16_QkqAY9jZgElGO
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMzA1MDEwOSBTYWx0ZWRfX3q0SMT2aCPJ8
 jJbZY8y52EAL7rhEsLXRknDu3oeKFbMT7dpOIfnwdxNp6VsWYP9nanGBXjRt86+cs+nnZXqxLZL
 qPh+GPOO6+W6Vr5nkLytJj96WF5QkVzoMRuEL/J9umYPx7hYli/g0xO7MQqQLWNU67ZdEC/pedQ
 X5GgOsQ3zHzM9aDq8zlcgG6srEfPPYo/B81cLaFOTdl0qOwFBneBmHJapbkORxOK6xaqVDxfMPW
 erEYqXxj/bW//+wiHcsgZWJWN5o2zM65PPvpCCBo5ZmURrMlHYedIVs9fvyNHcX2yZ2KeKCD9x+
 NKW2TitM6n998WdSD5rSwAueUgIKTf73dvBLcpEY29S/ux1Mo9FiyTCZlOCzSLzVpXZTKj/DxZ8
 SI3SjkhG0vpKt+Dyz+zlFxAPY8rRm4x+Qh37cnc086jWeCqCp/ETzd9G7ZxLBgmJuqchG1Iz8Dz
 EYQeKvF93ieGqFX6luw==
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1143,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-03-05_04,2026-03-04_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 malwarescore=0 bulkscore=0 phishscore=0 lowpriorityscore=0 clxscore=1011
 spamscore=0 adultscore=0 impostorscore=0 suspectscore=0 priorityscore=1501
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2602130000 definitions=main-2603050109
X-Rspamd-Queue-Id: CEFCC212ABB
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-2.16 / 15.00];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[qualcomm.com,reject];
	R_DKIM_ALLOW(-0.20)[qualcomm.com:s=qcppdkim1,oss.qualcomm.com:s=google];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	DKIM_TRACE(0.00)[qualcomm.com:+,oss.qualcomm.com:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	TAGGED_FROM(0.00)[bounces-271578-lists,devicetree=lfdr.de];
	DBL_BLOCKED_OPENRESOLVER(0.00)[0.0.0.3:email,0.0.0.2:email,oss.qualcomm.com:dkim,oss.qualcomm.com:mid,qualcomm.com:dkim,qualcomm.com:email,0.0.0.0:email];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[sushrut.trivedi@oss.qualcomm.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_PROHIBIT(0.00)[0.0.0.1:email];
	MID_RHS_MATCH_FROM(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	TAGGED_RCPT(0.00)[devicetree,dt];
	RCPT_COUNT_SEVEN(0.00)[11];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Action: no action

Add a node for the TC9563 PCIe switch connected to PCIe0. The switch
has three downstream ports.Two embedded Ethernet devices are present
on one of the downstream ports. All the ports present in the
node represent the downstream ports and embedded endpoints.

Power to the TC9563 is supplied through two LDO regulators, which
are on by default and are added as fixed regulators. TC9563 can be
configured through I2C.

Signed-off-by: Sushrut Shree Trivedi <sushrut.trivedi@oss.qualcomm.com>
Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
Reviewed-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
---
 .../qcom/qcs6490-rb3gen2-industrial-mezzanine.dtso | 159 +++++++++++++++++++++
 1 file changed, 159 insertions(+)

diff --git a/arch/arm64/boot/dts/qcom/qcs6490-rb3gen2-industrial-mezzanine.dtso b/arch/arm64/boot/dts/qcom/qcs6490-rb3gen2-industrial-mezzanine.dtso
index 619a42b5ef48..c58a9ad5c331 100644
--- a/arch/arm64/boot/dts/qcom/qcs6490-rb3gen2-industrial-mezzanine.dtso
+++ b/arch/arm64/boot/dts/qcom/qcs6490-rb3gen2-industrial-mezzanine.dtso
@@ -5,9 +5,33 @@
 
 /dts-v1/;
 /plugin/;
+#include <dt-bindings/gpio/gpio.h>
 #include <dt-bindings/clock/qcom,gcc-sc7280.h>
 #include <dt-bindings/pinctrl/qcom,pmic-gpio.h>
 
+&{/} {
+
+	vreg_0p9: regulator-vreg-0p9 {
+		compatible = "regulator-fixed";
+		regulator-name = "VREG_0P9";
+		regulator-min-microvolt = <900000>;
+		regulator-max-microvolt = <900000>;
+
+		regulator-always-on;
+		regulator-boot-on;
+	};
+
+	vreg_1p8: regulator-vreg-1p8 {
+		compatible = "regulator-fixed";
+		regulator-name = "VREG_1P8";
+		regulator-min-microvolt = <1800000>;
+		regulator-max-microvolt = <1800000>;
+
+		regulator-always-on;
+		regulator-boot-on;
+	};
+};
+
 &spi11 {
 	#address-cells = <1>;
 	#size-cells = <0>;
@@ -19,3 +43,138 @@ st33htpm0: tpm@0 {
 		spi-max-frequency = <20000000>;
 	};
 };
+
+&pcie0 {
+	perst-gpios = <&tlmm 87 GPIO_ACTIVE_LOW>;
+
+	pinctrl-0 = <&pcie0_reset_n>, <&pcie0_wake_n>, <&pcie0_clkreq_n>;
+	pinctrl-names = "default";
+
+	iommu-map = <0x0 &apps_smmu 0x1c00 0x1>,
+		    <0x100 &apps_smmu 0x1c01 0x1>,
+		    <0x208 &apps_smmu 0x1c04 0x1>,
+		    <0x210 &apps_smmu 0x1c05 0x1>,
+		    <0x218 &apps_smmu 0x1c06 0x1>,
+		    <0x300 &apps_smmu 0x1c07 0x1>,
+		    <0x400 &apps_smmu 0x1c08 0x1>,
+		    <0x500 &apps_smmu 0x1c09 0x1>,
+		    <0x501 &apps_smmu 0x1c10 0x1>;
+
+	status = "okay";
+};
+
+&pcie0_phy {
+	vdda-phy-supply = <&vreg_l10c_0p88>;
+	vdda-pll-supply = <&vreg_l6b_1p2>;
+
+	status = "okay";
+};
+
+&pcie0_port {
+	#address-cells = <3>;
+	#size-cells = <2>;
+
+	pcie@0,0 {
+		compatible = "pci1179,0623";
+		reg = <0x10000 0x0 0x0 0x0 0x0>;
+		#address-cells = <3>;
+		#size-cells = <2>;
+
+		device_type = "pci";
+		ranges;
+		bus-range = <0x2 0xff>;
+
+		vddc-supply = <&vreg_0p9>;
+		vdd18-supply = <&vreg_1p8>;
+		vdd09-supply = <&vreg_0p9>;
+		vddio1-supply = <&vreg_1p8>;
+		vddio2-supply = <&vreg_1p8>;
+		vddio18-supply = <&vreg_1p8>;
+
+		i2c-parent = <&i2c1 0x33>;
+
+		resx-gpios = <&tlmm 78 GPIO_ACTIVE_LOW>;
+
+		pinctrl-0 = <&pcie0_tc9563_resx_n>;
+		pinctrl-names = "default";
+
+		pcie@1,0 {
+			reg = <0x20800 0x0 0x0 0x0 0x0>;
+			#address-cells = <3>;
+			#size-cells = <2>;
+
+			device_type = "pci";
+			ranges;
+			bus-range = <0x3 0xff>;
+		};
+
+		pcie@2,0 {
+			reg = <0x21000 0x0 0x0 0x0 0x0>;
+			#address-cells = <3>;
+			#size-cells = <2>;
+
+			device_type = "pci";
+			ranges;
+			bus-range = <0x4 0xff>;
+		};
+
+		pcie@3,0 {
+			reg = <0x21800 0x0 0x0 0x0 0x0>;
+			#address-cells = <3>;
+			#size-cells = <2>;
+			device_type = "pci";
+			ranges;
+			bus-range = <0x5 0xff>;
+
+			pci@0,0 {
+				reg = <0x50000 0x0 0x0 0x0 0x0>;
+				#address-cells = <3>;
+				#size-cells = <2>;
+				device_type = "pci";
+				ranges;
+			};
+
+			pci@0,1 {
+				reg = <0x50100 0x0 0x0 0x0 0x0>;
+				#address-cells = <3>;
+				#size-cells = <2>;
+				device_type = "pci";
+				ranges;
+			};
+		};
+
+	};
+};
+
+&tlmm {
+	pcie0_tc9563_resx_n: pcie0-tc9563-resx-state {
+		pins = "gpio78";
+		function = "gpio";
+		bias-disable;
+		input-disable;
+		output-enable;
+	};
+
+	pcie0_reset_n: pcie0-reset-n-state {
+		pins = "gpio87";
+		function = "gpio";
+		drive-strength = <16>;
+		output-low;
+		bias-disable;
+	};
+
+	pcie0_clkreq_n: pcie0-clkreq-n-state {
+		pins = "gpio88";
+		function = "gpio";
+		drive-strength = <2>;
+		bias-pull-up;
+	};
+
+	pcie0_wake_n: pcie0-wake-n-state {
+		pins = "gpio89";
+		function = "gpio";
+		drive-strength = <2>;
+		bias-pull-up;
+	};
+
+};

-- 
2.25.1


