Return-Path: <devicetree+bounces-262034-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id QPa5Mk56gWmOGgMAu9opvQ
	(envelope-from <devicetree+bounces-262034-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 03 Feb 2026 05:32:14 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 46D77D4699
	for <lists+devicetree@lfdr.de>; Tue, 03 Feb 2026 05:32:14 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 65C9430624A5
	for <lists+devicetree@lfdr.de>; Tue,  3 Feb 2026 04:31:42 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 4392121146C;
	Tue,  3 Feb 2026 04:31:42 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="FArgaFMK";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="Tubx90pn"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id AFC3A17BA6
	for <devicetree@vger.kernel.org>; Tue,  3 Feb 2026 04:31:40 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770093102; cv=none; b=Oymeub8pAto8thVTz72BsTeH0Ij0m90bWVtilckK6YAXgDvku7mx8ijqZXsKGCxQ9v0MZaibBfAjxS4N/Wk1MEJCArXrih3UQaHPlFOQMZgDWdcfvYDLMSYbx07Q/GHCMVdMgrKlx6zrm/WuWgSVOvxeHm85Iym42dJoxkYm7Zw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770093102; c=relaxed/simple;
	bh=9mk67q2Nm7U9N4K8hxF/WDuU5gSRnJaaKjFBP7XeR7A=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=bdGOriVI1eMACa5UuPHja51ebkeLHiYbIrTTo/LqH6jh4Xrip5VVM06eLtTTNuhqJKDCaluz4j8jFW6ri4H78vZHtHDmQoFsuhHZUMlPg3E7Nu3W00MRPqC0EU6t8u0mPuxCmV2aEXADj9qeKeycd6m1FaGuQoZJD6GwEpmeA9c=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=FArgaFMK; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=Tubx90pn; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279873.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 612K9rW92261760
	for <devicetree@vger.kernel.org>; Tue, 3 Feb 2026 04:31:39 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	7q3JrJvoZ71ljdPa5eU6lAaROQA6xQR58WcgdDtxkw4=; b=FArgaFMK9Qjlf77g
	DYfofZzr29wk++HfSoN9rwmP0sgJufPG5W1vOZhnTVh7CGph+9PYdvjxas26Bmmc
	Hf19+Mlx5wRYZo591dNxshCst+FPsExRq07DF8Rz9ptGfoVjPT2rDiOfnqNDeOfs
	BTyXgW1kVq0BqJZKwCmI88WQpaOqSe2kedSxspcl6XUVTFPfp7o2TdYBZvfrBOlb
	TcsYYQKxx6kBnY0uOpfP2moJ3HQxvkfG1IyOPt2LQcYeUWeDOZM6o/9QlrSs0b56
	Z6FNX6dOwLZbDK7YfK0mTrfIKM+/q2tB73dR3z3fb6wmLydsTpeNcxOk/9dgJDF6
	YBe0ng==
Received: from mail-pl1-f197.google.com (mail-pl1-f197.google.com [209.85.214.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4c2tmtjun6-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Tue, 03 Feb 2026 04:31:39 +0000 (GMT)
Received: by mail-pl1-f197.google.com with SMTP id d9443c01a7336-2a08cbeb87eso57457925ad.3
        for <devicetree@vger.kernel.org>; Mon, 02 Feb 2026 20:31:39 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1770093099; x=1770697899; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=7q3JrJvoZ71ljdPa5eU6lAaROQA6xQR58WcgdDtxkw4=;
        b=Tubx90pnkihXLKT9gfscBMsm9io2xfo5VYEDG3qYxRgzkD5xZMu6L3zqq/bZLQ2yQN
         96B5JeyuSGdRhHYsL3AF6aBlYP/pVIUC9WErFxHgb4wZ7OXHVbuW8SM1MPZDPpEMeKHr
         BUpOE9pNHUQkkgNL86TYIIdFl68NZW6cR+6MlDyItQUhRSftfuM2LCvmfZnethg9SIqw
         wPQro1bUdzHwNcLztzIRYjNu99mEI1NiyN7YsbSN0+mYpIcgqyMFvCgeqjhtqOyCrLUU
         hxks4QDbB/FP9RVkapeLzaXFFwJa6aD2u0GlNcXaMMbeE4s/J5pF2k4dX7WD7qHu/nu+
         1U0g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1770093099; x=1770697899;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-gg:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=7q3JrJvoZ71ljdPa5eU6lAaROQA6xQR58WcgdDtxkw4=;
        b=R3oLQXO5e+ZS2zb4zUpkTxhq62T56aJLCX570xTW8+waxrKCI/6i32KI4izRWClYoF
         UIt6ZufaEtEiAE8B+8d5CaI7H7qEFoulG88+qjF37fcL0WeEJYgP56MHgPqnmIiHnazF
         77PNzDCOdjeBz1RCY1d08NrIFUKUxK4adHyk4TGM96HsrlHZ9k1G5ZEETb3JICFFp/mN
         O4w5dFFr/ydNk/94EKGC7+N/+ZsS65MwT8U4i/Bt9p4xNLEVYiaRBSpdcmPs0nKauEKf
         7fm04Jq6LvEDziWC0QMZwMsup73jaLHthDri1xbpIB9ppj6nfkYYdTO0CBuF/N8JrjS6
         nBWw==
X-Forwarded-Encrypted: i=1; AJvYcCVexhVHVAtnPaY3K9EZ7muuTvzkn1zZ9rn9ZIAffXTDVr93EoHwLdtqEsrtkbBoOLG4W/k/m1rxQhoL@vger.kernel.org
X-Gm-Message-State: AOJu0YxHc3WJbdlMdIcFrylCLldIolWwMwoXt4HHbKXLOcso4NW03qCk
	JXO3JEWiClSl0EJj9P1gZbMFTmpw4Zv/FaAgoxY8eOW+0JxZssBJ7bScsqHj5TrCDiiSRfY8qGC
	niUGLhcCg51Y0jq47URTZgiZLgs+LzvXmrYcyQpGkUJWcTCfeeRwCwKkZ78cDEDfe
X-Gm-Gg: AZuq6aLtP5TdTgzGHzPYbI+ux8OAQEiXZMXsL084CZkP205KNcH4zoTi9cdAuBdU9oN
	gLtIljDtYfcy+MRJ0saT4plOrT6FNuklc3qjUMH0SPEFwDGGmCaTGLtkTRiVsdTtDdkJ16zxgIB
	fWwn3D+N85jxpCXPwQ0jwOjPY6cLEnSXxNZJcEPG+og/DyZpVqdq/5ozmGvPqFoOboFgjW1KSvk
	5FgU/8tFzeLTZTHeoM+3/C9K+1y6HBwPfdSajMY5FL0Y1KjRuCghcbNJtiycKIKf9TJ2ZuHyz51
	DR8oz/0/IAtpHLsvCrtg5dXpiL2WecNY/FTkedIjL2RgT7Z8MJVJXAp1liWFxOJT6+3xCTQS0rw
	hQlULmPHnhHe7FAUmGuqzbvFpMBk9MeCCpXkj/Usus4RhqQ==
X-Received: by 2002:a17:903:4b30:b0:2a9:5a0:22b5 with SMTP id d9443c01a7336-2a905a0235amr73670945ad.20.1770093098661;
        Mon, 02 Feb 2026 20:31:38 -0800 (PST)
X-Received: by 2002:a17:903:4b30:b0:2a9:5a0:22b5 with SMTP id d9443c01a7336-2a905a0235amr73670565ad.20.1770093098071;
        Mon, 02 Feb 2026 20:31:38 -0800 (PST)
Received: from hu-sushruts-hyd.qualcomm.com ([202.46.23.25])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-2a88b4148d0sm162487605ad.27.2026.02.02.20.31.35
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 02 Feb 2026 20:31:37 -0800 (PST)
From: Sushrut Shree Trivedi <sushrut.trivedi@oss.qualcomm.com>
Date: Tue, 03 Feb 2026 10:01:28 +0530
Subject: [PATCH v2 1/2] arm64: dts: qcom:
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
Message-Id: <20260203-industrial-mezzanine-pcie-v2-1-8579ed6bf931@oss.qualcomm.com>
References: <20260203-industrial-mezzanine-pcie-v2-0-8579ed6bf931@oss.qualcomm.com>
In-Reply-To: <20260203-industrial-mezzanine-pcie-v2-0-8579ed6bf931@oss.qualcomm.com>
To: Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org,
        Sushrut Shree Trivedi <sushrut.trivedi@oss.qualcomm.com>
X-Mailer: b4 0.14.3
X-Developer-Signature: v=1; a=ed25519-sha256; t=1770093091; l=4391;
 i=sushrut.trivedi@oss.qualcomm.com; s=20251127; h=from:subject:message-id;
 bh=9mk67q2Nm7U9N4K8hxF/WDuU5gSRnJaaKjFBP7XeR7A=;
 b=Z7AixNHNBZoRfVT1fNMqaNXM6Qlkxj3ix1OmIYfuyf0g95/nU+6bh0i0t1FRCfr7CtpaKeOCW
 k63zcQV4tBoCXvNVVdTHN0w4sLMnM9FM/d9DzqQkMiwbA6rvScI2n0w
X-Developer-Key: i=sushrut.trivedi@oss.qualcomm.com; a=ed25519;
 pk=OrUHTxBaSg1oY3CtCictJ5A4bDMNLRZS1S+QfD9pdjw=
X-Authority-Analysis: v=2.4 cv=Xb6EDY55 c=1 sm=1 tr=0 ts=69817a2b cx=c_pps
 a=cmESyDAEBpBGqyK7t0alAg==:117 a=ZePRamnt/+rB5gQjfz0u9A==:17
 a=IkcTkHD0fZMA:10 a=HzLeVaNsDn8A:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=EUspDBNiAAAA:8 a=RBLAtJqH_bkH6XPhXP4A:9
 a=QEXdDO2ut3YA:10 a=1OuFwYUASf3TG4hYMiVC:22
X-Proofpoint-ORIG-GUID: fgQZBL_hhKjSJqdE1cishcPJAXu2_X1v
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMjAzMDAzNCBTYWx0ZWRfX+mrgHCJVbXw4
 vqvwVITNEO1To8cy39QCShQ/oGLbGrcUnlp6NRuIufDddoTYyE5H+znByXW7H9FK5/CId04pi9x
 8QP7ZSqmLbSU6vdM2caKAyaH6GBBaxHuUBQVZ5iW3sEQI32MMVhYRqWu3uQYuJ5Lv3i7UJ/b+ix
 rlUE3StADkQkGv62EP+Rka9H79fAwNMdvg2N0AsTyJ98I78kYgPt5xoWXCKmX69Yz6AmaqOzopt
 3O2V/RFAWxFjr5dYchOs3EAdwjRplilM2yHn0e8c7pfEFPqvHB6+grvId9Skj4sgVTeCVJ/c6Yh
 HTYlAFv1JSIw6GnQZtmMGtEQ6CIzDdk5txn4UWy7KB8ow1a4sZRBQWF4Z9ztrUzyGb2RDaYz6sm
 VrGdLDPV9PWqhbmKR+QR5v2dpBYGUPVdB5Qkz6itGqS8GqF9A0eGtNXfHpZpGJRXjiJWEosBbBR
 K2P0pOo/NcuPNf/ogag==
X-Proofpoint-GUID: fgQZBL_hhKjSJqdE1cishcPJAXu2_X1v
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-02-03_01,2026-02-02_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 clxscore=1015 priorityscore=1501 lowpriorityscore=0 phishscore=0 adultscore=0
 suspectscore=0 bulkscore=0 impostorscore=0 malwarescore=0 spamscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2601150000 definitions=main-2602030034
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
	TAGGED_FROM(0.00)[bounces-262034-lists,devicetree=lfdr.de];
	DBL_BLOCKED_OPENRESOLVER(0.00)[0.0.0.2:email,0.0.0.0:email,oss.qualcomm.com:mid,oss.qualcomm.com:dkim,sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,qualcomm.com:email,qualcomm.com:dkim,0.0.0.1:email];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[sushrut.trivedi@oss.qualcomm.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_PROHIBIT(0.00)[0.0.0.3:email];
	MID_RHS_MATCH_FROM(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	TAGGED_RCPT(0.00)[devicetree,dt];
	RCPT_COUNT_SEVEN(0.00)[9];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Queue-Id: 46D77D4699
X-Rspamd-Action: no action

Add a node for the TC9563 PCIe switch connected to PCIe0. The switch
has three downstream ports.Two embedded Ethernet devices are present
on one of the downstream ports. All the ports present in the
node represent the downstream ports and embedded endpoints.

Power to the TC9563 is supplied through two LDO regulators, which
are on by default and are added as fixed regulators. TC9563 can be
configured through I2C.

Signed-off-by: Sushrut Shree Trivedi <sushrut.trivedi@oss.qualcomm.com>
---
 .../qcom/qcs6490-rb3gen2-industrial-mezzanine.dtso | 138 +++++++++++++++++++++
 1 file changed, 138 insertions(+)

diff --git a/arch/arm64/boot/dts/qcom/qcs6490-rb3gen2-industrial-mezzanine.dtso b/arch/arm64/boot/dts/qcom/qcs6490-rb3gen2-industrial-mezzanine.dtso
index 619a42b5ef48..89bbcab0908d 100644
--- a/arch/arm64/boot/dts/qcom/qcs6490-rb3gen2-industrial-mezzanine.dtso
+++ b/arch/arm64/boot/dts/qcom/qcs6490-rb3gen2-industrial-mezzanine.dtso
@@ -5,9 +5,47 @@
 
 /dts-v1/;
 /plugin/;
+#include <dt-bindings/gpio/gpio.h>
 #include <dt-bindings/clock/qcom,gcc-sc7280.h>
 #include <dt-bindings/pinctrl/qcom,pmic-gpio.h>
 
+&{/} {
+
+	vreg_dc_12v: regulator-vreg-dc-12v {
+		compatible = "regulator-fixed";
+		regulator-name = "VREG_DC_12V";
+
+		regulator-always-on;
+		regulator-boot-on;
+		regulator-min-microvolt = <24000000>;
+		regulator-max-microvolt = <24000000>;
+	};
+
+	vreg_1p8: regulator-vreg-1p8 {
+		compatible = "regulator-fixed";
+		regulator-name = "VREG_1P8";
+
+		regulator-always-on;
+		regulator-boot-on;
+		regulator-min-microvolt = <1800000>;
+		regulator-max-microvolt = <1800000>;
+
+		vin-supply = <&vreg_dc_12v>;
+	};
+
+	vreg_0p9: regulator-vreg-0p9 {
+		compatible = "regulator-fixed";
+		regulator-name = "VREG_0P9";
+
+		regulator-always-on;
+		regulator-boot-on;
+		regulator-min-microvolt = <900000>;
+		regulator-max-microvolt = <900000>;
+
+		vin-supply = <&vreg_dc_12v>;
+	};
+};
+
 &spi11 {
 	#address-cells = <1>;
 	#size-cells = <0>;
@@ -19,3 +57,103 @@ st33htpm0: tpm@0 {
 		spi-max-frequency = <20000000>;
 	};
 };
+
+&pcie0 {
+	bus-range = <0x00 0xff>;
+        iommu-map = <0x0 &apps_smmu 0x1c00 0x1>,
+                    <0x100 &apps_smmu 0x1c01 0x1>,
+                    <0x208 &apps_smmu 0x1c04 0x1>,
+                    <0x210 &apps_smmu 0x1c05 0x1>,
+                    <0x218 &apps_smmu 0x1c06 0x1>,
+                    <0x300 &apps_smmu 0x1c07 0x1>,
+                    <0x400 &apps_smmu 0x1c08 0x1>,
+                    <0x500 &apps_smmu 0x1c09 0x1>,
+                    <0x501 &apps_smmu 0x1c10 0x1>;
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
+	pcie0_switch0_usp: pcie@0,0 {
+		compatible = "pci1179,0623";
+		reg = <0x10000 0x0 0x0 0x0 0x0>;
+		#address-cells = <3>;
+		#size-cells = <2>;
+
+		device_type = "pci";
+		ranges;
+
+		vddc-supply = <&vreg_0p9>;
+		vdd18-supply = <&vreg_1p8>;
+		vdd09-supply = <&vreg_0p9>;
+		vddio1-supply = <&vreg_1p8>;
+		vddio2-supply = <&vreg_1p8>;
+		vddio18-supply = <&vreg_1p8>;
+
+		i2c-parent = <&i2c1 0x77>;
+
+		resx-gpios = <&tlmm 78 GPIO_ACTIVE_LOW>;
+
+		pinctrl-0 = <&pcie0_tc9563_resx_n>;
+		pinctrl-names = "default";
+
+		pcie0_switch0_dsp1: pcie@1,0 {
+			reg = <0x20800 0x0 0x0 0x0 0x0>;
+			#address-cells = <3>;
+			#size-cells = <2>;
+
+			device_type = "pci";
+			ranges;
+		};
+
+		pcie0_switch0_dsp2: pcie@2,0 {
+			reg = <0x21000 0x0 0x0 0x0 0x0>;
+			#address-cells = <3>;
+			#size-cells = <2>;
+
+			device_type = "pci";
+			ranges;
+		};
+
+		pcie0_switch0_dsp3: pcie@3,0 {
+			reg = <0x21800 0x0 0x0 0x0 0x0>;
+			#address-cells = <3>;
+			#size-cells = <2>;
+			device_type = "pci";
+			ranges;
+
+			pcie0_switch0_eth0: pci@0,0 {
+				#address-cells = <3>;
+				#size-cells = <2>;
+				device_type = "pci";
+				ranges;
+			};
+
+			pcie0_switch0_eth1: pci@0,1 {
+				#address-cells = <3>;
+				#size-cells = <2>;
+				device_type = "pci";
+				ranges;
+			};
+		};
+	};
+};
+
+&tlmm {
+	pcie0_tc9563_resx_n: pcie0-tc9563-resx-state {
+		pins = "gpio78";
+		function = "gpio";
+
+		bias-disable;
+		input-disable;
+		output-enable;
+		power-source = <0>;
+	};
+};

-- 
2.25.1


