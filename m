Return-Path: <devicetree+bounces-253342-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [172.105.105.114])
	by mail.lfdr.de (Postfix) with ESMTPS id 20083D0AF34
	for <lists+devicetree@lfdr.de>; Fri, 09 Jan 2026 16:36:35 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 4D9C030C62C0
	for <lists+devicetree@lfdr.de>; Fri,  9 Jan 2026 15:30:46 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 6E004322B7F;
	Fri,  9 Jan 2026 15:30:35 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="Rr6Ompob";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="I0jz5Zs1"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C5F1D30AAD8
	for <devicetree@vger.kernel.org>; Fri,  9 Jan 2026 15:30:32 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767972635; cv=none; b=kWC7ZrQR7C+RFMpo9GvpKaMTlBTlTHBa7ENFwBRXuaG8OQlP6DdHXEdoTjoOsu2FWKLulGkz7rAqHuAuiXflqLkVpIHFt/qtjm3GoEivfvrdDOt0J6+QH6DjPWGQAhtb9Y1XQkFbYgZ8UUrjntH4JC+V8w3l6im2N2s5xlY0Ufc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767972635; c=relaxed/simple;
	bh=ioZRh55wDkscBeqn4+hW9QrcAQVQvNg04kbdteev5pM=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:To:Cc; b=DSjFJAtO/1y+Bho9E0EPXIoiYGbiUAmB8QMCS6rpi3d5TqrdNwK1paIq0/+E81jfBm6scDPFbR8ZGBdwjIUBxnz1vE7ltddpqadEJb62eCqMcSwS9fMcuDKOAnEmCtP+74wkIJ0ltAG3pCYgNGswTkaJ+Mip8iz+TkOd4Anow2Y=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=Rr6Ompob; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=I0jz5Zs1; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279872.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 6099jOch007998
	for <devicetree@vger.kernel.org>; Fri, 9 Jan 2026 15:30:32 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:message-id
	:mime-version:subject:to; s=qcppdkim1; bh=Jb0Km8R9NCZ2RRCM4RJbRN
	8XpEXZjPdNv9OaTTgvMyo=; b=Rr6Ompobv3nFtywUd2XPb5n6W+D6QeF4fHKs4R
	7zPGD6q8OyNiTOSxXvIWqpg6aj5b1gfsI5auzeZjvb51DvZfvuJP06EnVPI+pDD7
	zksVvgdAi//fWws3PwizynMx8dHYXofu7AbCu9//n2MPL26yWgQpxQMiGIUGj/0K
	12TOWIXb3UtF8DDNdN80U6z2VmdwOPe7bcPtTx1LHnFzFgKue5xayTv9DUHt+9W7
	wzo8C70XLMB8Km50cGlPLAwPMxjTG0BD6o3Z2+7NL6jaD+lnkr7FILNSWFtv+OB8
	c/9Nm5VFuxudHYkqUZGKEzTLGf2scTSoAmbrRXynu7A+Jnng==
Received: from mail-qk1-f199.google.com (mail-qk1-f199.google.com [209.85.222.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4bjyaqgx6q-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Fri, 09 Jan 2026 15:30:31 +0000 (GMT)
Received: by mail-qk1-f199.google.com with SMTP id af79cd13be357-8bbe16e0a34so941764985a.1
        for <devicetree@vger.kernel.org>; Fri, 09 Jan 2026 07:30:31 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1767972630; x=1768577430; darn=vger.kernel.org;
        h=cc:to:message-id:content-transfer-encoding:mime-version:subject
         :date:from:from:to:cc:subject:date:message-id:reply-to;
        bh=Jb0Km8R9NCZ2RRCM4RJbRN8XpEXZjPdNv9OaTTgvMyo=;
        b=I0jz5Zs1FyQJTZteW+CuG1kqf1WSziusp5AclBABCgLYBsSxdUJjD+EJ2U9xHQfwtC
         +KrThIPOCmZTgExQHv1qtfZhXOF1cE3PHodCNBbtOYbXnEYZZxp0Nnb7QJ53PGLCjzYl
         +Wv7KWdCxiJhAQjOkrLh+zF5HlLuCTX0bH4kEh5ymYkTrizlyU8Zn/hhR+1SkHg/z8IJ
         OK+J2aSTPaY9QurQpD30Od3FtFYKW3qe2FDu83U+03TVwH8G0XkGQVGBq549myplFaW9
         Xpm1b3SWAW24AYRVeQQ0NNBRHqRFgpJQAOPjhQVdz2jp1jsyK1tP3jObBIAZk2bvKq47
         KWEQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1767972630; x=1768577430;
        h=cc:to:message-id:content-transfer-encoding:mime-version:subject
         :date:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=Jb0Km8R9NCZ2RRCM4RJbRN8XpEXZjPdNv9OaTTgvMyo=;
        b=ay5f6mMolSrMtntU15HqfJIekIi8l2hcek48h7Vj3prgHljnvtaW9RmpXmWGmXygtW
         veUkMQqj6T7q+jfW0ZPVvM9j1HOptUiSFFOeZlUFUcHC7TpD2VSbTBBO+IHHEH4zZNWV
         dPSEpdWM1ZsFkCmJkDLc5D+3jbH3pEnyvK4no8O7N6OGCkbhvfZySdYfMKTMyDnO7DZE
         IaQfVywH5Vf/0QfdUMqSEX3DHwttdVHnmpB7VQ7cb0y3u0pmJ01gVwhU1lcadBvfEoVU
         pGeEmkGa5G0pmMAEjCPgYsIpeRi62Cymtf2qnZTOrl0Ql3nny6BVS9nrmEnPsKaPACxR
         e6bQ==
X-Forwarded-Encrypted: i=1; AJvYcCUjSfn7weQdj9LsKuoO9nJt1PLvjVHODdHF73+bCJ0qGPDuoly5uLznRzOFhbm2ak+CkED9Spdj2MkW@vger.kernel.org
X-Gm-Message-State: AOJu0Yyxeh7M/wNdeHSGIEwdpn9fIiO1QQQDY81tmsliWnIxkbBNIveL
	9j/Rr8vyWTzWIaP3XQUzFdctQ0n/8RyLJy0pZlXtrgXlmfabEZ71zh+IQKHtYx79r8i5OHeb8sO
	B8FwjyjMh4UnIzrz50TfRguzxGZOqFWXnHBITETuIgOB9gYIKDMGyer2UQ492DgRo
X-Gm-Gg: AY/fxX4/uX1eemv38xUtr6ztNQFy0W0WHUXg5jXWbhB4dClbXvdzcS7d+o7MJNXf1JY
	qUwkUY6S3R04L0X1oVShaeY0Mzx3BobCjtju/wx9J02ITvim0iLx9yGfi06qqjuMymn8hGG5xVp
	fSzl1zmD1ZhUxffDWvKeDKnHWE954sXQIunV/XZi7+3qjwLfDRpZ9yl73ROxcA3leCvKxy9xRCh
	DEMW8O5UDd33esZa0Tqu9kEJOiH8MNUnKzDwuGn6CKMJGINzJMwWbnfq0gLuyT7VuLST8+u0aEE
	fpETyj8FJBybezGDQMZYOyGV8dNLfPKYnBE5F3rM3ZKwYolK7hsufMOm3gB75Evv9jNQSoZpV23
	+bi9v5mVw/dmB6sdjKLTBwn/nBwTIl1gyUPN/hHJ3Aewk8xtPak8No6QoGuUDH5AVa4GfVaEP0t
	ZF3fIChfd2xyOoK62Z2WmMZzc=
X-Received: by 2002:a05:620a:4105:b0:828:faae:b444 with SMTP id af79cd13be357-8c37f51e9b5mr1627702185a.20.1767972629525;
        Fri, 09 Jan 2026 07:30:29 -0800 (PST)
X-Google-Smtp-Source: AGHT+IHhUcXtb5gx9nSmRvRPsE+L2k83bqDKrMSjq5pjK8Cji35aBixEApOc4Yl/W1K4r80x5Pn3vQ==
X-Received: by 2002:a05:620a:4105:b0:828:faae:b444 with SMTP id af79cd13be357-8c37f51e9b5mr1627693785a.20.1767972628864;
        Fri, 09 Jan 2026 07:30:28 -0800 (PST)
Received: from umbar.lan (2001-14ba-a073-af00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a073:af00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 38308e7fff4ca-382eb922e32sm23918221fa.47.2026.01.09.07.30.26
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 09 Jan 2026 07:30:28 -0800 (PST)
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
Date: Fri, 09 Jan 2026 17:30:24 +0200
Subject: [PATCH RFC] arm64: dts: qcom: qcs6490-rb3gen2: power on onboard
 uPD720201 controller
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260109-rb3gen2-upd720201-v1-1-50d9b22dbc2a@oss.qualcomm.com>
X-B4-Tracking: v=1; b=H4sIAA8fYWkC/x2MQQqAIBAAvxJ7TlgVUroGPaBrdCjdbC8WShFEf
 086zsDMA5kSU4a2eiDRxZn3WEDWFbhtjoEE+8KgUDUo0Yq06EBRifPwpkiUws7OSYdWG2OhdEe
 ile//OcLQdzC97wf+lFZAaAAAAA==
X-Change-ID: 20260108-rb3gen2-upd720201-8acc1c083778
To: Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
X-Mailer: b4 0.14.3
X-Developer-Signature: v=1; a=openpgp-sha256; l=2079;
 i=dmitry.baryshkov@oss.qualcomm.com; h=from:subject:message-id;
 bh=ioZRh55wDkscBeqn4+hW9QrcAQVQvNg04kbdteev5pM=;
 b=owGbwMvMwMXYbdNlx6SpcZXxtFoSQ2aivFCR1W8BDv4sm7yUrRVdzzvrK9lyTxddDpVxYHwyJ
 6y8K6ST0ZiFgZGLQVZMkcWnoGVqzKbksA87ptbDDGJlApnCwMUpABOJV+VgWO6ntFM+SkDa4ry/
 hYad6aYPv/5deej9MNcw6vLa/U11y/teeoXLMVZpHJjs9jSno8ci7MCkF9objE8baOonp/mrKap
 tvWP+L6Wmwkxv4k+PjfVpwqxhpu6PNKe0n7OtcP8e47N6uc7i/1fv+4lrylwVPfbCa9MP2/mHQj
 fMOOvqHvejRO3IxjA/DpOn07wYnx30UnZdrbUv+210nrDh56C+5pAuflte7cn1Bpf65MyEvn6e1
 9rwco90xy6uWB4+i/WLAwSfqM1f0yB78TbTSpFNLWuzV95f9aZh8YMo3Rs7J+xLc5TQYC5hXJBb
 Pt3m0z/2uYeUbpbP/XHigGjhA5N42f2l31kfMK11t00EAA==
X-Developer-Key: i=dmitry.baryshkov@oss.qualcomm.com; a=openpgp;
 fpr=8F88381DD5C873E4AE487DA5199BF1243632046A
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMTA5MDExNiBTYWx0ZWRfX4ga0d9QGdWjb
 2YKh4U16kZgZCSPVQDnFpbn8YSfCWcGXS562oCwXC46N5FmWzFFZBJ2VVLmJt9EWwcVebeXytLy
 cyUmh6Y/n0jNGOBQKphsgbeZFfI9C5uwYy4oyUuWZrGn3WbwusPDq+SHy3IIFenxhJBwnxPJOa1
 XtJ8b8FJbRQxTYPnILwXgyzFIH3lXi7BtzujmSy3IoJ8rZHinP9jizw4KZrpmyXcyapH866eJeM
 4AhPBvvQ6qXmxsuYC+Xezq8hKShU2uV5Qi17G8tZCFwcMPjmTZAWg9PeBDt7vLyjYlC5kwfx8lJ
 J6zz+H5gxQ2cub5hO818EFVOvNCBE3i/bNUcPxoSUiuWdXLszR70FmjsjMFJPNwLgWAgMtrzAgq
 1HVnOns7atZnZ+oIlYtvGzUhKK+qjqHKtlY8GIkIUBBqoAqT7s198tbEhhsYFDHmsns8fJLlQQZ
 /Zx2XZV3iGz4TBn2Y3w==
X-Proofpoint-GUID: YjVwybRch-uSxFl7a4mYUOeeQtHC8tA1
X-Authority-Analysis: v=2.4 cv=IKUPywvG c=1 sm=1 tr=0 ts=69611f17 cx=c_pps
 a=HLyN3IcIa5EE8TELMZ618Q==:117 a=xqWC_Br6kY4A:10 a=IkcTkHD0fZMA:10
 a=vUbySO9Y5rIA:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=EUspDBNiAAAA:8 a=9NoVGIZdV82FU8rnK1oA:9 a=QEXdDO2ut3YA:10
 a=bTQJ7kPSJx9SKPbeHEYW:22
X-Proofpoint-ORIG-GUID: YjVwybRch-uSxFl7a4mYUOeeQtHC8tA1
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2026-01-09_04,2026-01-08_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 impostorscore=0 spamscore=0 suspectscore=0 bulkscore=0 phishscore=0
 adultscore=0 clxscore=1015 malwarescore=0 lowpriorityscore=0
 priorityscore=1501 classifier=typeunknown authscore=0 authtc= authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.22.0-2512120000
 definitions=main-2601090116

One of ports of the TC9563 bridge is connected to the PCIe Renesas host
controller. Specify the voltage regulator, powering on the USB host
controller.

Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
---
Note, with these changes I can't get the onboard hub / ASIX controller
to work. Most likely those need to be powered on separately, but my
quick attempts to do it failed up to now.
---
 arch/arm64/boot/dts/qcom/qcs6490-rb3gen2.dts | 23 +++++++++++++++++++++++
 1 file changed, 23 insertions(+)

diff --git a/arch/arm64/boot/dts/qcom/qcs6490-rb3gen2.dts b/arch/arm64/boot/dts/qcom/qcs6490-rb3gen2.dts
index e3d2f01881ae..ddb5a381b724 100644
--- a/arch/arm64/boot/dts/qcom/qcs6490-rb3gen2.dts
+++ b/arch/arm64/boot/dts/qcom/qcs6490-rb3gen2.dts
@@ -217,6 +217,17 @@ pmic_glink_sbu_in: endpoint {
 		};
 	};
 
+	vreg_pcie0_3v3: regulator-pcie0-3v3 {
+		compatible = "regulator-fixed";
+		regulator-name = "PCIE0-3V3";
+		gpio = <&pm7250b_gpios 1 GPIO_ACTIVE_HIGH>;
+		regulator-min-microvolt = <3300000>;
+		regulator-max-microvolt = <3300000>;
+		enable-active-high;
+		pinctrl-0 = <&pcie0_3v3_en>;
+		pinctrl-names = "default";
+	};
+
 	vph_pwr: regulator-vph-pwr {
 		compatible = "regulator-fixed";
 		regulator-name = "vph_pwr";
@@ -807,6 +818,8 @@ &pcie1 {
 	pinctrl-0 = <&pcie1_reset_n>, <&pcie1_wake_n>, <&pcie1_clkreq_n>;
 	pinctrl-names = "default";
 
+	vddpe-3v3-supply = <&vreg_pcie0_3v3>;
+
 	iommu-map = <0x0 &apps_smmu 0x1c80 0x1>,
 		    <0x100 &apps_smmu 0x1c81 0x1>,
 		    <0x208 &apps_smmu 0x1c84 0x1>,
@@ -1378,6 +1391,16 @@ &edp_hot_plug_det {
 };
 
 &pm7250b_gpios {
+	pcie0_3v3_en: pcie0-3v3-en-state {
+		pins = "gpio1";
+		function = "normal";
+
+		bias-disable;
+		input-disable;
+		output-enable;
+		power-source = <0>;
+	};
+
 	lt9611_rst_pin: lt9611-rst-state {
 		pins = "gpio2";
 		function = "normal";

---
base-commit: b74f0330d6283319451a0ef818ef50bf2805d875
change-id: 20260108-rb3gen2-upd720201-8acc1c083778

Best regards,
-- 
With best wishes
Dmitry


