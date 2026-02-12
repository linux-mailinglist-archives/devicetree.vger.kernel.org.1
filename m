Return-Path: <devicetree+bounces-265014-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id eOs1OSGvjWmz5wAAu9opvQ
	(envelope-from <devicetree+bounces-265014-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Thu, 12 Feb 2026 11:44:49 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 47D3612CA40
	for <lists+devicetree@lfdr.de>; Thu, 12 Feb 2026 11:44:49 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 68C2C305F3F5
	for <lists+devicetree@lfdr.de>; Thu, 12 Feb 2026 10:44:30 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 426D32EDD63;
	Thu, 12 Feb 2026 10:44:30 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="QmK4mQos";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="Jp1lBfAY"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C7E362BDC1C
	for <devicetree@vger.kernel.org>; Thu, 12 Feb 2026 10:44:28 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770893070; cv=none; b=JCj5LY90QpAcLR8qdV3dE8Dt35MpFmtBqIJLGia7egYN7sYJMg36BJc5cXDMukN0iqXHTf7wwzwFepCB8hT+7VvVW24Y315FdPh1zy2hIuMbX77xKTPX+Yo+ZyQJvy1Qy2yQ3ipE7dRWSLQBwsjsGWUCEVdBFCMp2/CxX5wZ7q0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770893070; c=relaxed/simple;
	bh=VfnryVwy76qfl6rcKdpgx+vFKR/El0L107AaXJ3jJVo=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=mf4THeDqqp3jb0fKPO9oAbJRAisPIlsUwhvge8tkpFCq35WPXCBn5jpO/F3+pBx2CLBz5k5x0m211ayY0Bg36Y0JtbNI+zWFcf02rfj78Mx/oaTDTpm4OfI++1pAjLqV2ykCzALOqQ60OyfHQBZ191wVPApFh3S9ILpBQyHt3eI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=QmK4mQos; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=Jp1lBfAY; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279870.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 61CAgZ473963695
	for <devicetree@vger.kernel.org>; Thu, 12 Feb 2026 10:44:28 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	ncYzEF5LnROxHmgpRG4yPJsO7MF5gr8kBl4VVLXh3pg=; b=QmK4mQosJZ/dzd5e
	3Cy1QiYq3i/3Mi7bToW3/BDtbqlmNE++gGCpGDhJiKZANPrt6zJSbChZhD4PbcP0
	3Z0t2Q4GU/srJhDUsFjSloS93ZTpN+tN8ayW7/r/P3KsULX+gbFbb4QSd7GMO9pN
	6wAm/+xIGIN+f3fbxer3fD8IZJ5u+m4Y77fe2Tk06X2lxj7BKBVBcm7Zqk6+S5XJ
	k3CPd9/dljI8uvbEXJ5gP/6d+aX8Wp0gwGiNK0qzPIpfhDqEg93ie36JJL/9LZjh
	n1mn90bSHMCzLO9dbjnn+Y0EH29Odc9q39a8e5zRmFJ09dtCcjFuWix1ZFX/r+C4
	cI9AoA==
Received: from mail-pj1-f72.google.com (mail-pj1-f72.google.com [209.85.216.72])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4c8y8ntneq-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Thu, 12 Feb 2026 10:44:27 +0000 (GMT)
Received: by mail-pj1-f72.google.com with SMTP id 98e67ed59e1d1-354c0234c1fso5979343a91.2
        for <devicetree@vger.kernel.org>; Thu, 12 Feb 2026 02:44:27 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1770893067; x=1771497867; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=ncYzEF5LnROxHmgpRG4yPJsO7MF5gr8kBl4VVLXh3pg=;
        b=Jp1lBfAYFJXcR1fAeTZ/UbSpk17tofK1Jmkkadj4I1HeawzzY6GKo/xZZOA1pYoToF
         GW/wI1/fkj9kv6g+pGYBHr+SEJc9vbBP4GgjfScPPNKwX4C/QOKOBjTwaRUEm78bcdz8
         rwPVz4GK3UMcqhm+FRvGzqX47Qvdmpbsj5KFQF3KVu7KFWJXHKfxo40SdST0S7uyxUDU
         6Ypr22mlfyQjF0p39Qbdn1XuTbrfrUsowfbS8r9yBHJEY0ugTVL7z1RF57SJLf2LN+2g
         UPGa4XJ+hA3BKRKFnpYheuL+7rIZwORwhMZYYyIs9er2jWaipUZjMMzbFMcNmyLMw3RV
         nY6A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1770893067; x=1771497867;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-gg:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=ncYzEF5LnROxHmgpRG4yPJsO7MF5gr8kBl4VVLXh3pg=;
        b=ipyLJP20wF5ONyJDVsuWe0lYdYugQQZzxq4d5PrLPjz9SwitbJcC+lhwbBilZG7aNA
         dRFyWVe59B2KgPzT5fq+Xn8uHbIXn3c0WQeDytUuFnB3VGXnk9wQ0+X2nXHulckMc4Bp
         BUqxibAUoCge0j7wQUqxqlJqIWW2kc5AYYDpeyIkhAOem6G5jWGnEEukPsAYo20XjA3K
         LkdK/sPF/y/Aw8prIavix/rU0aAIW4OvMRplXqCOlpKKrxgR2p6RFx9xBGC6iMTzUX3e
         sAfraCVuFL0py7BspOOq9HxZ0d9GVAG+JHGW6oTAilZaaVdCB3+mk6aa+r9IkeXm2IDi
         k9nQ==
X-Forwarded-Encrypted: i=1; AJvYcCVzgWvHGVrGCowhBz8Y1QUDX4FbHj/1yDD2L+NQnXvvmHz/bjcWf+pdsZBNobC14iJVSbJPCiY5rXfs@vger.kernel.org
X-Gm-Message-State: AOJu0YxtniTD8Dqrus3iHgPRFdmf8vjvYlfo1b+SQ4uX5gOtNqL9gRJN
	ocrw5KsNG2U9HvcCOkLqPrBl6D4SErUz/3W5Zq3aUQAWwE8JtIWLDKxmxrwTtSzk6SVVM6/ku3b
	q1gzcdZTjECzHjG9YZAAFmJjGdz7IhSBZJyFRpeJ1sDnJiefEt+4YAmH5JZhHAV16
X-Gm-Gg: AZuq6aKmpMP2UyLjwUXP1nYtlGiun5JYKCF9l05mx6rx7o+FE2vPAMSyfsiCXwXM1iC
	iiiOnzThLjFAmR9MGWnjA+WfIilHQr38rf8XfrwdXqXZ43XioQnaujX7X9dVOk97NVqfOXk2Lqy
	jDjbN1ZIBXujlrqFzqbYUTG9LpkkloeEPdBBmmJg1rS7mqF+Y5n/EdasvjZWKltzx+uPHKXk7K/
	bmHk4yb0fTDxrLcKTupQfG5SEUW/KZyYTwoFoHU6qbpZpNizqQ2VxGD8E3q96N99YH3PfVIugKW
	bC7YEPBUsAFiGYiuMEASJgW5AzSRSyYJH6ntjEuQzjy3RwzmT/MVk46QJj9gKb3dzZvMrKfdBpS
	9045hRGTJPU0jrTYfilqpth7/t+vj53kuuGcI8HATrlOXIBZ5GJGvTj46Dw==
X-Received: by 2002:a17:90b:39cf:b0:341:88d5:a74e with SMTP id 98e67ed59e1d1-3568f525b6bmr2142684a91.29.1770893066584;
        Thu, 12 Feb 2026 02:44:26 -0800 (PST)
X-Received: by 2002:a17:90b:39cf:b0:341:88d5:a74e with SMTP id 98e67ed59e1d1-3568f525b6bmr2142653a91.29.1770893066074;
        Thu, 12 Feb 2026 02:44:26 -0800 (PST)
Received: from hu-sushruts-hyd.qualcomm.com ([202.46.23.25])
        by smtp.gmail.com with ESMTPSA id 98e67ed59e1d1-3567e7d9537sm4983375a91.4.2026.02.12.02.44.22
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 12 Feb 2026 02:44:25 -0800 (PST)
From: Sushrut Shree Trivedi <sushrut.trivedi@oss.qualcomm.com>
Date: Thu, 12 Feb 2026 16:14:01 +0530
Subject: [PATCH v3 1/2] arm64: dts: qcom:
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
Message-Id: <20260212-industrial-mezzanine-pcie-v3-1-1e152937a76a@oss.qualcomm.com>
References: <20260212-industrial-mezzanine-pcie-v3-0-1e152937a76a@oss.qualcomm.com>
In-Reply-To: <20260212-industrial-mezzanine-pcie-v3-0-1e152937a76a@oss.qualcomm.com>
To: Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org,
        Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>,
        Sushrut Shree Trivedi <sushrut.trivedi@oss.qualcomm.com>
X-Mailer: b4 0.14.3
X-Developer-Signature: v=1; a=ed25519-sha256; t=1770893058; l=4365;
 i=sushrut.trivedi@oss.qualcomm.com; s=20251127; h=from:subject:message-id;
 bh=VfnryVwy76qfl6rcKdpgx+vFKR/El0L107AaXJ3jJVo=;
 b=LJc+idH+m1F9gIO/g0eyhXh1dbzNXwHSwlT6gs0YW65HTOK2otD88JX6WmuZT7E3Ephtx81ms
 9u97foyaF6CDLiKntD1RJt1HZIaaAeZKZHZT16Sdv/MHbY5940W3lGg
X-Developer-Key: i=sushrut.trivedi@oss.qualcomm.com; a=ed25519;
 pk=OrUHTxBaSg1oY3CtCictJ5A4bDMNLRZS1S+QfD9pdjw=
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMjEyMDA4MCBTYWx0ZWRfX0pMKD5mzWSWI
 hZDBHg3ZuVolKKohbA9mnlznRWqRUPdPX73MRFHkHreT7ybxmf1Jo2IGrB/OGAyitQohvAw/tPt
 Z7eojhCpq2HC4u/7xMUkEF7pDFKsk0BHIpis/XDUiICjfJmH9jeXwYzf5E2XKMXySqxBqRag9wb
 VmiWCw8WNigvTqXhUlOfyY/E5p8LL3qK3eYK0t7y92dMNJRQmBJEMLhhySpX9NFjQgpAtCngq/1
 7nGdgMYw3grinmzCRCrrED+3zH/UODXKuoo3GD06fIsJ7jAM5jMjqCJgdrGXMXG92uESZtjvtXW
 ttBIjRqQ8kAKSLif3mcJ8Zh1rstqGYlCwIadepf4uvGTXl3C/rS83mELYmv2u4W3rKhKPLAL8Hu
 PB7BKKUaOKyyNu/LM3URkspJnPkcqXwgXnZ1lZeKA9h9TeLiynV2G7qaN4em6e5eOb/aRprdZjR
 trstsBJeS06h7a15TAQ==
X-Authority-Analysis: v=2.4 cv=VNvQXtPX c=1 sm=1 tr=0 ts=698daf0b cx=c_pps
 a=RP+M6JBNLl+fLTcSJhASfg==:117 a=ZePRamnt/+rB5gQjfz0u9A==:17
 a=IkcTkHD0fZMA:10 a=HzLeVaNsDn8A:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=Mpw57Om8IfrbqaoTuvik:22 a=GgsMoib0sEa3-_RKJdDe:22
 a=EUspDBNiAAAA:8 a=RBLAtJqH_bkH6XPhXP4A:9 a=QEXdDO2ut3YA:10
 a=iS9zxrgQBfv6-_F4QbHw:22
X-Proofpoint-GUID: CAxTu2BDrPa9WkiJ38UeottUFgDk6-pj
X-Proofpoint-ORIG-GUID: CAxTu2BDrPa9WkiJ38UeottUFgDk6-pj
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-02-12_03,2026-02-11_04,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 impostorscore=0 phishscore=0 spamscore=0 suspectscore=0 adultscore=0
 malwarescore=0 bulkscore=0 priorityscore=1501 lowpriorityscore=0
 clxscore=1015 classifier=typeunknown authscore=0 authtc= authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.22.0-2601150000
 definitions=main-2602120080
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-2.16 / 15.00];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[qualcomm.com,reject];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	R_DKIM_ALLOW(-0.20)[qualcomm.com:s=qcppdkim1,oss.qualcomm.com:s=google];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	DKIM_TRACE(0.00)[qualcomm.com:+,oss.qualcomm.com:+];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,0.0.0.0:email,0.0.0.2:email,oss.qualcomm.com:mid,oss.qualcomm.com:dkim,qualcomm.com:email,qualcomm.com:dkim,0.0.0.3:email];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-265014-lists,devicetree=lfdr.de];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	FROM_NEQ_ENVFROM(0.00)[sushrut.trivedi@oss.qualcomm.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	DBL_PROHIBIT(0.00)[0.0.0.1:email];
	RCPT_COUNT_SEVEN(0.00)[10];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Queue-Id: 47D3612CA40
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
 .../qcom/qcs6490-rb3gen2-industrial-mezzanine.dtso | 145 +++++++++++++++++++++
 1 file changed, 145 insertions(+)

diff --git a/arch/arm64/boot/dts/qcom/qcs6490-rb3gen2-industrial-mezzanine.dtso b/arch/arm64/boot/dts/qcom/qcs6490-rb3gen2-industrial-mezzanine.dtso
index 619a42b5ef48..0fb89e71bf7f 100644
--- a/arch/arm64/boot/dts/qcom/qcs6490-rb3gen2-industrial-mezzanine.dtso
+++ b/arch/arm64/boot/dts/qcom/qcs6490-rb3gen2-industrial-mezzanine.dtso
@@ -5,9 +5,45 @@
 
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
+		vin-supply = <&vreg_dc_12v>;
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
+		vin-supply = <&vreg_dc_12v>;
+	};
+
+	vreg_dc_12v: regulator-vreg-dc-12v {
+		compatible = "regulator-fixed";
+		regulator-name = "VREG_DC_12V";
+		regulator-min-microvolt = <24000000>;
+		regulator-max-microvolt = <24000000>;
+
+		regulator-always-on;
+		regulator-boot-on;
+	};
+};
+
 &spi11 {
 	#address-cells = <1>;
 	#size-cells = <0>;
@@ -19,3 +55,112 @@ st33htpm0: tpm@0 {
 		spi-max-frequency = <20000000>;
 	};
 };
+
+&pcie0 {
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
+		i2c-parent = <&i2c1 0x77>;
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
+
+		bias-disable;
+		input-disable;
+		output-enable;
+		power-source = <0>;
+	};
+};

-- 
2.25.1


