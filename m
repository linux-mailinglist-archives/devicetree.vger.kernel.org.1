Return-Path: <devicetree+bounces-267488-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id qFg5FlVqnGlnGAQAu9opvQ
	(envelope-from <devicetree+bounces-267488-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Mon, 23 Feb 2026 15:55:17 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [172.105.105.114])
	by mail.lfdr.de (Postfix) with ESMTPS id C7A101784AC
	for <lists+devicetree@lfdr.de>; Mon, 23 Feb 2026 15:55:16 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 452313065859
	for <lists+devicetree@lfdr.de>; Mon, 23 Feb 2026 14:54:42 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B8837266B67;
	Mon, 23 Feb 2026 14:54:41 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="OXGP2MLh";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="ZdZeWADt"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 361C626738B
	for <devicetree@vger.kernel.org>; Mon, 23 Feb 2026 14:54:40 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771858481; cv=none; b=IgrdWRFwABte5cwnNoXz/rQLHU4rCiwBTF+lpv8NLboByidHwfILnVWctngLCVDavc+KN0AlgIUjK6oQXZfifagjNLDyDvrYlzOhn/Lwik3qLxsG7r4gtHlXQjHGeIU3INTFnrK4qEvfkIJk/roetEVvBGOAVOx/K3ugFOhnaR8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771858481; c=relaxed/simple;
	bh=4RqxZ3GVTQtCr8zPGqcxaF4qWMeuidyJ7awSowXLiL8=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=cnESybez8pHTWa+t2PcV+mmbB5qD9j/49zkbCsXbRiOxDbELjVEABRvlDuByO9XQ9XVFomjFElpx2kzGbJodbTBjX+O8N5XjF4I4Tg+6d5e4z4mJgu2qa0TsLtsi8eVc9lDZSpaCT49zrO9UXvtzD5Q/zZlbkpiVVuqlYajvZZw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=OXGP2MLh; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=ZdZeWADt; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279872.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 61NAWDXR3732694
	for <devicetree@vger.kernel.org>; Mon, 23 Feb 2026 14:54:39 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	XKV8QKUBPVFabyVMrgKY0pg8Ws59FODlAvIgba5vaCw=; b=OXGP2MLhWLLuVJIB
	fHBUg+jF8lNuke9OzryvHShYQHdMcADSBTgP/MBUhyADbT2aVuZnGowo5cPqAouz
	x2x8uXktfa7hINREEZBGVKShkIceHtOeTvtRH3y3Ceqv0mqLLabNbkbhljs6+S3o
	R3Dy4dWs7nK1WC+E9Zem19ZCYXD9fxhZjFAOzAv81HflaA74NyY87cxzGoheTp2t
	QSOppmvrryNLxTX2HBpVTMqGdGVQrgD5mY19SL4vUpLgmK2MqFrMOnvdNvWAeF8w
	3FiGY6CrKgHuId1jteCWkERt1AkQGQBPsDMrD0/6U3Yyg/Ogky8I5aWWvAJeBOOW
	PxpXww==
Received: from mail-qk1-f199.google.com (mail-qk1-f199.google.com [209.85.222.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4cgn7t8pp4-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Mon, 23 Feb 2026 14:54:39 +0000 (GMT)
Received: by mail-qk1-f199.google.com with SMTP id af79cd13be357-8cb3a129cd2so5732026085a.0
        for <devicetree@vger.kernel.org>; Mon, 23 Feb 2026 06:54:39 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1771858478; x=1772463278; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=XKV8QKUBPVFabyVMrgKY0pg8Ws59FODlAvIgba5vaCw=;
        b=ZdZeWADtCNhad5/aQ01o6lZDWqXRweaGm5azrZI0bRvDdi+YJEZSyxGjUYhE31g7as
         +RgpEwXtm73G0R70LW1tj43afS60d4wCrlgRT45JqGrT5ZrUReBkb2vRP/oBJeXiLjMV
         LwY1qqVRwBfBv4RmPOXb7XewLMvJYeGcWHj8UwEcHmiL9250B2lcJixv/G64GT+UQ9R9
         Yeq6fuTnaMBRQjNHW3bXFNpimlZwx5PrfgWA3w7lAreSkrMI4F8hVO/8gsgCK86iOaFw
         E04OZlhQ86BYsgcpfXMBKekk6InwLW7FrkoV/ryvHNLKnaD70XsxKSoxj9V/+UnUv5kQ
         ynnw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1771858478; x=1772463278;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-gg:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=XKV8QKUBPVFabyVMrgKY0pg8Ws59FODlAvIgba5vaCw=;
        b=AJ3e+PG/TZWk9W7oQaHz8J8BzT5WEwamqFXZ56mL95vQTa9wXMyAw9jQnmJfOcwcrt
         CaQ7qEf7OcSyur8Natn2zy0fqeS3JJBv5FwJxSyfeXf+8gcRH9iOoD/HGOD3Cj/4BdEm
         0WL6PV7E/0X4NEvV4DlPCh3lfTN36Fi2YROP18dUZpHznboH3T+Zspx7TVIgYaCgBcfx
         A9pH29Itwo++LEqKOYNGZ3dBoAi/Dp9H/OLI4jI6U7D8Ddf2dvUuT96LWDQCepWpDzJ5
         L9LB1UT5zKqXnhlNxYAHnal4Ag7OGOPME2VsFk7dBFZl4oljcbopPal0lwmdCk44np+6
         9hDQ==
X-Forwarded-Encrypted: i=1; AJvYcCXC+jBxGsAkYolVNBQYNV3KY+0CAhUJj/MUSi9av+cD6wXYVqi5LRyBsUNBAEOb2H2KEGiqlPjb8+XP@vger.kernel.org
X-Gm-Message-State: AOJu0YyLlPD7LWYmHVZ7emYu7SfZ2DwoyKeIjgTAIJh4KYKfS/s/hPV1
	bnhKObaBPt70+f1WvjID9Nz7eIc2nNO0ZQPsdaGC8cVBSQgG1vrY1qnXxxJ7Gdq8HtUmlSqollj
	CtoZYJQBHFGvu7knJ5Hqc3z2jXTgOZ7bLXgxOvLVOV5LD8P5KFDv7YQ/x2e6njClBYkvPKu2t
X-Gm-Gg: AZuq6aK9E+0VOjdEVamJpifl/GN8GdUE6iY2XrCCGC3w1TfMhUiprgZG5XocMwp6cwU
	FQQlD1MW5mG6Pct7ssXc/VOE1hccJT4oodaUN67jCWPC4ASOPJ3+XaIVOTK7ErGl+MD0dfuAHdy
	0KF6TGu768IVMXwjS6+mVJcPxdYZk+vstho1z3u62vmCLNwdtQQj+aSuitQAztdSdBGXX7Gyq9k
	2WNNO43fMU7dxazgO2lpSWcV/DGSYg1I/ZaMa3DobwBIQGUmvEA/QU1f4UijMpxG5wvZxLsdqh4
	m8ghH3yWTrfaAExgyCf547HGC0zlc7oKeZ8Fdl1sCA7O2RQJWQ9y4OuFdolpo7kMyhTAgPcv26x
	dtRk69bbqUf7aZHT0DYxHUIsqAEcPxW+6xvIqhglO/XPdJA==
X-Received: by 2002:a05:620a:25d0:b0:8c6:df6b:93fa with SMTP id af79cd13be357-8cb7c0165f6mr1647513285a.43.1771858478385;
        Mon, 23 Feb 2026 06:54:38 -0800 (PST)
X-Received: by 2002:a05:620a:25d0:b0:8c6:df6b:93fa with SMTP id af79cd13be357-8cb7c0165f6mr1647509985a.43.1771858477869;
        Mon, 23 Feb 2026 06:54:37 -0800 (PST)
Received: from [127.0.1.1] ([178.197.223.140])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-5a0eeb0b88esm1646629e87.8.2026.02.23.06.54.36
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 23 Feb 2026 06:54:37 -0800 (PST)
From: Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>
Date: Mon, 23 Feb 2026 15:54:21 +0100
Subject: [PATCH 5/5] arm64: dts: qcom: qrb5165-rb5: Drop redundant
 non-controllable supplies
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260223-qcom-dts-supplies-v1-5-f90ac885b3fd@oss.qualcomm.com>
References: <20260223-qcom-dts-supplies-v1-0-f90ac885b3fd@oss.qualcomm.com>
In-Reply-To: <20260223-qcom-dts-supplies-v1-0-f90ac885b3fd@oss.qualcomm.com>
To: Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org,
        Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>
X-Mailer: b4 0.14.3
X-Developer-Signature: v=1; a=openpgp-sha256; l=2814;
 i=krzysztof.kozlowski@oss.qualcomm.com; h=from:subject:message-id;
 bh=4RqxZ3GVTQtCr8zPGqcxaF4qWMeuidyJ7awSowXLiL8=;
 b=owEBbQKS/ZANAwAKAcE3ZuaGi4PXAcsmYgBpnGof5J8P6qj4Sg2v4vbtUFnWMjsP88C7+IN43
 +0uFKLro5aJAjMEAAEKAB0WIQTd0mIoPREbIztuuKjBN2bmhouD1wUCaZxqHwAKCRDBN2bmhouD
 16SFD/sE1UuxttURZYHzEZM+E4HD9EW3QjZEiT7j4Qxg2BIHvl5/24E5aAzjKGZt11HetOUI9r3
 fTTXQnR1jBPdBOUgmkZrw3K4/K923C0bX0mZ49Bd4nKpXtQZmjIrG1Q351iRXWVQyPvkYIdkiZ0
 Vz4n9advxpAvoS9aL55EtOA5nWJx5AWxvhaiMBymA8XFRx94vqttRIyy1rdrBUfumqUnpUY7oyD
 Ho7Xn/0tYRBFRQugqz0E4OxOkPGZwM4BW1fFstDj3siDtla1pO2CZDJSKdZtYfLX4MxHWZlG7gY
 kUYYL2PL+N2mM2FyhvKqfqNRKBv49s0lE880KiZpFyZcI42ezdmLUFVYXMgm3KjA21UMtRW0aSd
 CaziN/uQJH2ctrR8lcxbXlVVP9+9rRBsaz2Dt0wyophHXOp5e/kinnaI++vSuw9iiNLulQCPEz2
 LApGHv2rYUWEWJB2aQ6G9HWCKKinY2EE6Az6peJSgQnXP/6fRdrLp/W9FEhJTyiaBqF0c/J0HGV
 k5DvNAfaNW66IZl194a2gxDECbWS99FD1LfeuOjSKdyye/pLu9Z7VRvH1F1sJi4+NDHZgPUeIjT
 SRbnnNqfzwgw3YteJ/Yv6FD9V8HyBjcdJXbDncHDvuaiV+5CgQNqaU+atPEdM8/0yYHqb2KbDXd
 mfK7OUguNTsQGBQ==
X-Developer-Key: i=krzysztof.kozlowski@oss.qualcomm.com; a=openpgp;
 fpr=9BD07E0E0C51F8D59677B7541B93437D3B41629B
X-Authority-Analysis: v=2.4 cv=c5OmgB9l c=1 sm=1 tr=0 ts=699c6a2f cx=c_pps
 a=HLyN3IcIa5EE8TELMZ618Q==:117 a=6nO30s3o7FuWeffXwhKHTA==:17
 a=IkcTkHD0fZMA:10 a=HzLeVaNsDn8A:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=yx91gb_oNiZeI1HMLzn7:22
 a=EUspDBNiAAAA:8 a=_9iiUgdG0rMA4LjK8P8A:9 a=QEXdDO2ut3YA:10
 a=bTQJ7kPSJx9SKPbeHEYW:22
X-Proofpoint-GUID: Ip9j-Vb3OVI4ff8e9gmaqqQ9OWfNgoRj
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMjIzMDEyNyBTYWx0ZWRfXzm+iU0CFHRm0
 FRjn7Tju8yjjOMzzsIYGBCjvpGpJ2c1iqyfDmotGvQZSPSLnar3tAU0Bu6pmB5vWNOTmS28VMKE
 WSc6gPlcrWPMX1diynxUMEeK2ezlUpYnnc+AHCqN9OEAblj2kQ2ctuKBBZz1UJddZAceCPGVIm1
 fze+OhXyRTKyczF0kjG50QhCgQRTQmMw4A/48+HHkiOHNGTR1n+J9vtObUsrlUNti+jT4dJ7zHL
 n9s1lGn/wQvU+FpvBm97u/DGLlK70R2Aqxf/M2ROoo+5OTo5azENU2lyhbbc8idDCu7i0gEvbCy
 +ZQzPBiEeXGSCUaYzdVgfoCmq8AvkiWjQ37I5gLLZC5luC6D0R88PHgmciTCoW3azZD8GBlDY1N
 pL6Ft7YbAGPT0DzpMzhtvAg8Hw+HCKWP/lerYRI0+lKOkxUXneoUAiGgl3lJuEPURWh9rvUn65u
 6djEhUqXdUNptZ3VgYA==
X-Proofpoint-ORIG-GUID: Ip9j-Vb3OVI4ff8e9gmaqqQ9OWfNgoRj
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-02-23_03,2026-02-23_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 phishscore=0 impostorscore=0 malwarescore=0 lowpriorityscore=0 adultscore=0
 clxscore=1015 bulkscore=0 spamscore=0 suspectscore=0 priorityscore=1501
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2602130000 definitions=main-2602230127
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-2.16 / 15.00];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[qualcomm.com,reject];
	R_DKIM_ALLOW(-0.20)[qualcomm.com:s=qcppdkim1,oss.qualcomm.com:s=google];
	R_SPF_ALLOW(-0.20)[+ip4:172.105.105.114:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	DKIM_TRACE(0.00)[qualcomm.com:+,oss.qualcomm.com:+];
	DBL_BLOCKED_OPENRESOLVER(0.00)[oss.qualcomm.com:mid,oss.qualcomm.com:dkim,qualcomm.com:email,qualcomm.com:dkim,tor.lore.kernel.org:helo,tor.lore.kernel.org:rdns];
	RCVD_TLS_LAST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_FROM(0.00)[bounces-267488-lists,devicetree=lfdr.de];
	MIME_TRACE(0.00)[0:+];
	ASN(0.00)[asn:63949, ipnet:172.105.96.0/20, country:SG];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	FROM_NEQ_ENVFROM(0.00)[krzysztof.kozlowski@oss.qualcomm.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	NEURAL_HAM(-0.00)[-0.999];
	RCPT_COUNT_SEVEN(0.00)[9];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Queue-Id: C7A101784AC
X-Rspamd-Action: no action

Drop completely redundant non-controllable chain of "regulator-fixed"
supplies, which serve no purpose except growing DTS and kernel boot
time.  They represent no added value and because of being completely
transparent for any users of DTS (except the bloat), they should not be
represented in DTS, just like we do not represent every transistor
there.

For the few regulators being actively used and supplied by removed
dummies, change the supply to match the actual final source without
these dummy intermediaries.

Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>
---
 arch/arm64/boot/dts/qcom/qrb5165-rb5.dts | 39 ++------------------------------
 1 file changed, 2 insertions(+), 37 deletions(-)

diff --git a/arch/arm64/boot/dts/qcom/qrb5165-rb5.dts b/arch/arm64/boot/dts/qcom/qrb5165-rb5.dts
index 71b42e76f03d..54da0d759a67 100644
--- a/arch/arm64/boot/dts/qcom/qrb5165-rb5.dts
+++ b/arch/arm64/boot/dts/qcom/qrb5165-rb5.dts
@@ -38,14 +38,6 @@ clk40m: can-clock {
 		clock-frequency = <40000000>;
 	};
 
-	dc12v: dc12v-regulator {
-		compatible = "regulator-fixed";
-		regulator-name = "DC12V";
-		regulator-min-microvolt = <12000000>;
-		regulator-max-microvolt = <12000000>;
-		regulator-always-on;
-	};
-
 	hdmi-out {
 		compatible = "hdmi-connector";
 		type = "a";
@@ -92,7 +84,7 @@ lt9611_1v2: lt9611-vdd12-regulator {
 		compatible = "regulator-fixed";
 		regulator-name = "LT9611_1V2";
 
-		vin-supply = <&vdc_3v3>;
+		vin-supply = <&vreg_l11c_3p3>;
 		regulator-min-microvolt = <1200000>;
 		regulator-max-microvolt = <1200000>;
 	};
@@ -101,7 +93,7 @@ lt9611_3v3: lt9611-3v3 {
 		compatible = "regulator-fixed";
 		regulator-name = "LT9611_3V3";
 
-		vin-supply = <&vdc_3v3>;
+		vin-supply = <&vreg_l11c_3p3>;
 		regulator-min-microvolt = <3300000>;
 		regulator-max-microvolt = <3300000>;
 		regulator-boot-on;
@@ -231,33 +223,6 @@ active-config0 {
 		};
 	};
 
-	vbat: vbat-regulator {
-		compatible = "regulator-fixed";
-		regulator-name = "VBAT";
-		vin-supply = <&vreg_l11c_3p3>;
-		regulator-min-microvolt = <4200000>;
-		regulator-max-microvolt = <4200000>;
-		regulator-always-on;
-	};
-
-	vbat_som: vbat-som-regulator {
-		compatible = "regulator-fixed";
-		regulator-name = "VBAT_SOM";
-		vin-supply = <&dc12v>;
-		regulator-min-microvolt = <4200000>;
-		regulator-max-microvolt = <4200000>;
-		regulator-always-on;
-	};
-
-	vdc_3v3: vdc-3v3-regulator {
-		compatible = "regulator-fixed";
-		regulator-name = "VDC_3V3";
-		vin-supply = <&vreg_l11c_3p3>;
-		regulator-min-microvolt = <3300000>;
-		regulator-max-microvolt = <3300000>;
-		regulator-always-on;
-	};
-
 	vdc_5v: vdc-5v-regulator {
 		compatible = "regulator-fixed";
 		regulator-name = "VDC_5V";

-- 
2.51.0


