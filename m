Return-Path: <devicetree+bounces-270352-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id kGA/B6iXpmltRgAAu9opvQ
	(envelope-from <devicetree+bounces-270352-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 03 Mar 2026 09:11:20 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [172.232.135.74])
	by mail.lfdr.de (Postfix) with ESMTPS id B0A8D1EA9BD
	for <lists+devicetree@lfdr.de>; Tue, 03 Mar 2026 09:11:19 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id 6DDA03057490
	for <lists+devicetree@lfdr.de>; Tue,  3 Mar 2026 08:08:30 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 7C0AC38836A;
	Tue,  3 Mar 2026 08:07:56 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="BdBke983";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="cqu5Id3M"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 30B69386C32
	for <devicetree@vger.kernel.org>; Tue,  3 Mar 2026 08:07:55 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772525276; cv=none; b=EcizP+Taioj2FtQKBn3937mYtUl8Gq/oMhSxwbpvg6Jxqztg/NkOtXh8GjzoZ3W8BqLPd7FpOlEnnESnjbb+lyC7ElrN5VQV89kGMuvq0gTgJG/+hNolTjvTnQ4PeX26sxwx4AoviKHHlKQCGJYazRofC9hACbvtPMiS/ps4/+E=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772525276; c=relaxed/simple;
	bh=YDQkfoBdQXcdfPkMAJWKhAgKaXB83PauTBPIGJadt8U=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
	 MIME-Version; b=h6abUAOhS8d2MeYKm5eUMQaJhb9h3rRjw9eZNQLduDYMDvjkTSEzXsK7KirDVCdsLnUyVCM/bZ/OhrWiwyOlG9EkZgOZTN9Qk7akbI11rqUBGvEYzKFZXtb1RFQoNQMppcF1vBAuk9phw5ONIPuiJOx3gM//tqcqBuacK78Tc0E=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=BdBke983; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=cqu5Id3M; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279870.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 6237FfNX3614658
	for <devicetree@vger.kernel.org>; Tue, 3 Mar 2026 08:07:54 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:date:from:in-reply-to:message-id
	:mime-version:references:subject:to; s=qcppdkim1; bh=NeVTHLilPj7
	hzd9X8Q2+B8OhjSmUomXAGL0biT0VrmE=; b=BdBke983cOr1rqKV3XfvG9jZxHZ
	BQx4F4Yc8jVTXh/GTIlSjbWz2YtgEKiNxfysuIYMzxX1wom1fIQVotWfGxZGfoHk
	PDtfTCXw2QmMNyJczSTDj/9ob+duopb7ri4jDJtQ9TXNjqyodm6XkVLK5jzpotyH
	CRSCY4YlXGYFq6+DEgzTh1fyslMAk1Ggme3UdCwMS/xxbtuBVvFbe+9EwUbyGyYO
	wZCnwdUH8uq+ItvdMc/YWvB/y3HrrlNCT3Mf2po5JaNlKMu14twbOmo+ObnjgyGA
	HXaQ+oQZEQzLj8YWrrQ2zxmOlVLJIIbPfduLOJ3goBAVUbGK2i3MYRDZrww==
Received: from mail-pj1-f70.google.com (mail-pj1-f70.google.com [209.85.216.70])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4cnu3n8531-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Tue, 03 Mar 2026 08:07:54 +0000 (GMT)
Received: by mail-pj1-f70.google.com with SMTP id 98e67ed59e1d1-35984b91ffeso2136680a91.1
        for <devicetree@vger.kernel.org>; Tue, 03 Mar 2026 00:07:54 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1772525273; x=1773130073; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=NeVTHLilPj7hzd9X8Q2+B8OhjSmUomXAGL0biT0VrmE=;
        b=cqu5Id3MvI2jnNGLR2vARTahfJAyxLnCMlnxWlTmAfunc0IccVrXZjfnf0pIg8enQk
         4OaOxhJ1D7Pgvk2mf2VRA5Rjmu1cxnMq2ZIREFpZ0meYdoNgWoVSe1TXfYhL3HdH0P+v
         4OJyoN6e/WQF3axgVW9KVCDW14SIKN2s0bABcjMIj7piQ+lgdnNs1x9ZfWW3RMjqBleU
         NMdB0bYBToFQXqCv2OeYg3zJ6SF4VF4ONi7jPMouEf0tWt63bG5IEImgCGcoksCc+01q
         p59PJt2dcUQ1HdM79dfULWXXkz69eIEQY0U1vnVMfOO6bVfxPnU8HWQO+sFt8epJiKok
         FZIg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1772525273; x=1773130073;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=NeVTHLilPj7hzd9X8Q2+B8OhjSmUomXAGL0biT0VrmE=;
        b=PbhMWTgMRY8/wRPmAouLPx9KYolLqHDpLxDxlVYuDRAbCDYyGlvUPz3B1VaPsD5lXz
         1Gi8MeBEhPoGGiW3D+Ld6oVVjTkJPUTgx1wOJto4Cnk5iOcPXIptcJ/CWIiehmfP+a+e
         Tz0ilv5tB1QUASpwJYmdsqmt+iMHzk0aSVeQmGK+QzdmekfvxPycPDlU6SXH7VbFTKz8
         BPUZZfd80hozdmPaNOFycWUeQRWc098SCl25uoDGJY2kuLOW9RtGwpU1BaXLSF5+4PSq
         hJkys0gi1V/qIVHDapNJ9n0i9OF1/1lOcjGiP0FcZ5KbnCkpXGggvlJKMb5mhzZd72bH
         u2UA==
X-Forwarded-Encrypted: i=1; AJvYcCXh3YtNkgqk0aiIeg9SLeIjFui1MoIYww1wsJC0LjeB4y0slW6Vha7RO16xe/ecQyQtWhx2d/Gyu46M@vger.kernel.org
X-Gm-Message-State: AOJu0YxahDJtvOky3G5HQlAQZpK4g1OZTNITl5Yq94ou6aaFhGJ7ByzN
	VnBiZob+96PDz1CVCy3VXDG0gW5R+gv3Fh2VHHu9zdy8G0SfY+xJbRIkUxwtHr3ZMH2MrhaY7Gy
	4DMk+PzBE0ke/rC+Afcos+nnn5uohlfdAwmmp9JD66i1QVhAGlzHVJ9SzwML1nf77
X-Gm-Gg: ATEYQzxt5rMrKAaED7AtCEOHRw7oo7kEHEs0Sj9a07P7nd4Fye9XhEMO1T6oDx3RUs8
	R7kPCrJyzY/hACM7pPPLcaIp22IT6a0k7FLd91uAp5JvLmXUFZ/+LH7bWbNCFqkB68gg+3JN5Et
	LXFNNX0q/MTM9QuNwD6wf0aM4YkUxvOF8RPWv5v0jcxUXYPwn4W8HtPdV7Wf7k9jeqGmKIdxxZ9
	7cq94k1ghW+cGMJMlFEaUK7mf2FtR5Afsm8jdLzxvtYwNKXGdhsF9Zm+G0HEjR2uelW0lt+Al4I
	8ippHletmwbuBEoypZpNjn8qYdjYn6DXeRg1xgQt9Qh3xJ+AMyySWVGN2bh2Su8wpv8l49oOk9X
	nXSaugUq5eLcWnole9S3c8CrzZrD7FIchYNfPpRoVrbitk2XCq+I9/8s=
X-Received: by 2002:a17:90b:3ec2:b0:352:ece8:1f6c with SMTP id 98e67ed59e1d1-3599ce32f97mr1227846a91.8.1772525273114;
        Tue, 03 Mar 2026 00:07:53 -0800 (PST)
X-Received: by 2002:a17:90b:3ec2:b0:352:ece8:1f6c with SMTP id 98e67ed59e1d1-3599ce32f97mr1227819a91.8.1772525272629;
        Tue, 03 Mar 2026 00:07:52 -0800 (PST)
Received: from hu-swatagar-hyd.qualcomm.com ([202.46.23.25])
        by smtp.gmail.com with ESMTPSA id 98e67ed59e1d1-3599c3acea3sm1445883a91.16.2026.03.03.00.07.49
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 03 Mar 2026 00:07:52 -0800 (PST)
From: Swati Agarwal <swati.agarwal@oss.qualcomm.com>
To: Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org,
        Swati Agarwal <swati.agarwal@oss.qualcomm.com>,
        Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
Subject: [PATCH v5 3/4] arm64: dts: qcom: lemans-evk: Enable the tertiary USB controller
Date: Tue,  3 Mar 2026 13:37:27 +0530
Message-Id: <20260303080728.479557-4-swati.agarwal@oss.qualcomm.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20260303080728.479557-1-swati.agarwal@oss.qualcomm.com>
References: <20260303080728.479557-1-swati.agarwal@oss.qualcomm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Authority-Analysis: v=2.4 cv=JaexbEKV c=1 sm=1 tr=0 ts=69a696da cx=c_pps
 a=0uOsjrqzRL749jD1oC5vDA==:117 a=ZePRamnt/+rB5gQjfz0u9A==:17
 a=Yq5XynenixoA:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=u7WPNUs3qKkmUXheDGA7:22 a=gowsoOTTUOVcmtlkKump:22 a=EUspDBNiAAAA:8
 a=WNaE9oMJOCZktHJ47CMA:9 a=mQ_c8vxmzFEMiUWkPHU9:22
X-Proofpoint-ORIG-GUID: th2n0ka9HoX_FT6fD3fdrwGj_i1JMqVi
X-Proofpoint-GUID: th2n0ka9HoX_FT6fD3fdrwGj_i1JMqVi
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMzAzMDA1OCBTYWx0ZWRfX3oDzzzTHLtQ6
 fYgS+jw7TgEeg7sdvWKmIpuLMkevebwCNvYeXDx4nblKfO21xCkLwycheGvLWHY9GzLX/cwNOdh
 6fFdRqvo85fO8JJ8/CtylswYO8THKa1LDr/bU9T16ljYRqflyn5VYz1j69y8dNeyq1TXIn+hraI
 QaNFgPbk9rGkf4HYjg9ZbhoFyqEarSHwZu5XPrOECJvlBa2n4qkcXhfoMU9Vk2i8LQEWnvv/WAE
 PRvxc5yfji/o98HVo9bR5f7QBZcK46SHdVGNdJFWxvVg764BxVicNHhi7s4kkJTbHmh0eFrrjgW
 iWa896+rVzAxXq3Z/KHF/UcOFzurKQ3QJHafmZ39btFJnUXtai810j6glIikVF4eyHnASP8R3fy
 9FXJpmyKU0lqyjVkHM6PSxnfQsJluwbgLwJgiL7nqKBdMnR9HI8lSdWEAsQoZEqUfdm2rCk66mH
 dodwymDwQ32FFAtgYoA==
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-03-02_05,2026-03-03_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 clxscore=1015 suspectscore=0 impostorscore=0 malwarescore=0
 lowpriorityscore=0 adultscore=0 bulkscore=0 priorityscore=1501 phishscore=0
 spamscore=0 classifier=typeunknown authscore=0 authtc= authcc= route=outbound
 adjust=0 reason=mlx scancount=1 engine=8.22.0-2602130000
 definitions=main-2603030058
X-Rspamd-Queue-Id: B0A8D1EA9BD
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.66 / 15.00];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_CONTAINS_FROM(1.00)[];
	DMARC_POLICY_ALLOW(-0.50)[qualcomm.com,reject];
	R_MISSING_CHARSET(0.50)[];
	R_SPF_ALLOW(-0.20)[+ip4:172.232.135.74:c];
	R_DKIM_ALLOW(-0.20)[qualcomm.com:s=qcppdkim1,oss.qualcomm.com:s=google];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	MIME_TRACE(0.00)[0:+];
	DKIM_TRACE(0.00)[qualcomm.com:+,oss.qualcomm.com:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_FROM(0.00)[bounces-270352-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[swati.agarwal@oss.qualcomm.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.232.128.0/19, country:SG];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sto.lore.kernel.org:rdns,sto.lore.kernel.org:helo,oss.qualcomm.com:dkim,oss.qualcomm.com:mid,qualcomm.com:dkim,qualcomm.com:email];
	RCPT_COUNT_SEVEN(0.00)[10];
	NEURAL_HAM(-0.00)[-1.000];
	TAGGED_RCPT(0.00)[devicetree,dt];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Action: no action

Enable the tertiary usb controller connected to micro usb port in OTG mode
on Lemans EVK platform.

Reviewed-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
Signed-off-by: Swati Agarwal <swati.agarwal@oss.qualcomm.com>
---
 arch/arm64/boot/dts/qcom/lemans-evk.dts | 52 +++++++++++++++++++++++++
 1 file changed, 52 insertions(+)

diff --git a/arch/arm64/boot/dts/qcom/lemans-evk.dts b/arch/arm64/boot/dts/qcom/lemans-evk.dts
index 397052394930..2203967c7d51 100644
--- a/arch/arm64/boot/dts/qcom/lemans-evk.dts
+++ b/arch/arm64/boot/dts/qcom/lemans-evk.dts
@@ -68,6 +68,25 @@ usb0_con_ss_ep: endpoint {
 		};
 	};
 
+	connector-2 {
+		compatible = "gpio-usb-b-connector", "usb-b-connector";
+		label = "micro-USB";
+		type = "micro";
+
+		id-gpios = <&pmm8654au_2_gpios 11 GPIO_ACTIVE_HIGH>;
+		vbus-gpios = <&expander3 3 GPIO_ACTIVE_HIGH>;
+		vbus-supply = <&usb2_vbus>;
+
+		pinctrl-0 = <&usb2_id>;
+		pinctrl-names = "default";
+
+		port {
+			usb2_con_hs_ep: endpoint {
+				remote-endpoint = <&usb_2_dwc3_hs>;
+			};
+		};
+	};
+
 	edp0-connector {
 		compatible = "dp-connector";
 		label = "EDP0";
@@ -132,6 +151,15 @@ platform {
 		};
 	};
 
+	usb2_vbus: regulator-usb2-vbus {
+		compatible = "regulator-fixed";
+		regulator-name = "usb2_vbus";
+		gpio = <&pmm8654au_1_gpios 9 GPIO_ACTIVE_HIGH>;
+		regulator-min-microvolt = <5000000>;
+		regulator-max-microvolt = <5000000>;
+		enable-active-high;
+	};
+
 	vbus_supply_regulator_0: regulator-vbus-supply-0 {
 		compatible = "regulator-fixed";
 		regulator-name = "vbus_supply_0";
@@ -719,6 +747,14 @@ usb0_intr_state: usb0-intr-state {
 		bias-pull-up;
 		power-source = <0>;
 	};
+
+	usb2_id: usb2-id-state {
+		pins = "gpio11";
+		function = "normal";
+		input-enable;
+		bias-pull-up;
+		power-source = <0>;
+	};
 };
 
 &qup_i2c19_default {
@@ -966,6 +1002,22 @@ &usb_0_qmpphy {
 	status = "okay";
 };
 
+&usb_2 {
+	status = "okay";
+};
+
+&usb_2_dwc3_hs {
+	remote-endpoint = <&usb2_con_hs_ep>;
+};
+
+&usb_2_hsphy {
+	vdda-pll-supply = <&vreg_l7a>;
+	vdda18-supply = <&vreg_l6c>;
+	vdda33-supply = <&vreg_l9a>;
+
+	status = "okay";
+};
+
 &xo_board_clk {
 	clock-frequency = <38400000>;
 };
-- 
2.34.1


