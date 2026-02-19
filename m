Return-Path: <devicetree+bounces-266665-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id OHY+LKkYl2nKugIAu9opvQ
	(envelope-from <devicetree+bounces-266665-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Thu, 19 Feb 2026 15:05:29 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [172.105.105.114])
	by mail.lfdr.de (Postfix) with ESMTPS id 258DF15F4F0
	for <lists+devicetree@lfdr.de>; Thu, 19 Feb 2026 15:05:29 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 42BF5301C10D
	for <lists+devicetree@lfdr.de>; Thu, 19 Feb 2026 14:05:26 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 1195433893A;
	Thu, 19 Feb 2026 14:05:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="KSpYveHX";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="Flqja1v5"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A9B112848BB
	for <devicetree@vger.kernel.org>; Thu, 19 Feb 2026 14:05:20 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771509922; cv=none; b=Cr4ILQSDl7FeEVQXy4+374ey+lrbLClOXVqmHHD4Vji10+3FSl1a/NRucGzBH3AvR2Zm0txfaleAVMX8Gh8Bj1q2eEcJmy61uU/MCcL+vIlA4S+I+F0YB9EF47696dv/SoYKpPhOM7eoA6W61iBhWtaMMNCfu43rKBdpd+ZQiYc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771509922; c=relaxed/simple;
	bh=QNj9CkSL63p09bYQPcFcXGu9Fil4w8mAzmvxMZmMJiU=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:To:Cc; b=g2aq7psAkKXZHdK57SN3Wc4o/btqOdpR6VhWmAuHtYcHWqp54lu55/mOVYmGf+Q6ZOjs4/ihxrSYxBBJYetO4LrMoPNIJJkvlIjhjNrlaFRPgSpFi+Qz5qgl/7c16sfCUvzE8s9cWguTFZ9nKrLh9qQPGs4Oz3ePah4g7jv0TVU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=KSpYveHX; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=Flqja1v5; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279871.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 61JB0meh2004686
	for <devicetree@vger.kernel.org>; Thu, 19 Feb 2026 14:05:19 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:message-id
	:mime-version:subject:to; s=qcppdkim1; bh=I+e0vSt3X6F9zV8MU1NdhT
	DrcSYxiUtVR1c5S5Jw8Bk=; b=KSpYveHXUCpfFYVfJXypuGrfMyY1sVfTllD8DP
	AcXFB2xhALzsPKqLs0rwO933T6+vlJapB7RhcNIGLmZLZc/SB4MNMy8PGnlZBPND
	sKkKn4rxBi7f/0sJyD2a2zMhjcaQ/5dQiEYnh/3U0OM6O0pG8QS45Ao0YKxh0FVg
	WJhlOGuSZ4viqq0gBuU7+BRh1tqSK3n+vRNNrqYzo2ZnkEJeOXml+gwzUI/Vq/bk
	EnNGJ1mcBsMZw/K3F/RiCQecoGtXb2lIXJ3WoECnue76QwbprGtuODdzcafKaHxK
	pxjt9H7skFYUZRJFDrC4+7BGXJzm6XzaopxSgGzEXvfNqZJw==
Received: from mail-pg1-f198.google.com (mail-pg1-f198.google.com [209.85.215.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4cdn1qj5u1-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Thu, 19 Feb 2026 14:05:19 +0000 (GMT)
Received: by mail-pg1-f198.google.com with SMTP id 41be03b00d2f7-c6df833e1efso4074490a12.2
        for <devicetree@vger.kernel.org>; Thu, 19 Feb 2026 06:05:19 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1771509918; x=1772114718; darn=vger.kernel.org;
        h=cc:to:message-id:content-transfer-encoding:mime-version:subject
         :date:from:from:to:cc:subject:date:message-id:reply-to;
        bh=I+e0vSt3X6F9zV8MU1NdhTDrcSYxiUtVR1c5S5Jw8Bk=;
        b=Flqja1v5r4mqJdkHjS9I/Y3A7ChLcca/FLEEo5mDOo5jrYkNrFHXACb05qLOo54EvB
         ZIM603tgoPoC3BFDV58A8eygmdKRBWdMFGhRP8/MLkE+XUYDXHt9mCKh3o4l3oVbZV0i
         R7MWdC7l5adRLK8+Z0Pet/Wq4NhnzxzRBXHNhxNpXLrX5lMWfVHPrs85KAjgzQKJsyCp
         Z4YEaXYnV8txRggojTmO0ZO34Pk3tAwYOL+GjANYVxtimyMip2uNyZHSUZCPHMa8d/xw
         Rz+paK7VPOMtrB7CGyMVPX0yMM8Sh1/TvjLj0TSz+gNfywF898bDpk8m+tAfDGuewqGe
         9gsA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1771509918; x=1772114718;
        h=cc:to:message-id:content-transfer-encoding:mime-version:subject
         :date:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=I+e0vSt3X6F9zV8MU1NdhTDrcSYxiUtVR1c5S5Jw8Bk=;
        b=p+GMkLy0C/H7gbYSWZrTmAIXGAJc3G285VvXaHmUCjaIdqTbgc/EGayacFSND0ZJrk
         dD3lgmZRyF6/ZQbv8ULGFnaSjho3eEe17qmed5oo7xW/5WsOCPw6bB7cO75u/eO/h8oX
         Tt+gIPhN12mstheTG48l7iVIv7uAjdTcRCJnf7YOc3oIoZ6Ds0MPi/ClLhNEGpUH70fC
         V+5ihk/6ZSRGg8vXbgtPq9pMZxyhekPJXH6cZRLpAp+MwqBwJWvpGjy+rPySzmpf7WCy
         tpx0+r8mmf3PYElk8eVTe3xMSE1OW3M3sdt3d0ufqpyrsijDZB7QqCBWcFyYlOhcIyD5
         QQHw==
X-Forwarded-Encrypted: i=1; AJvYcCVcESDvi3gxFXU6q/4UXp6zVkPgJ5OO05ql5vBT3RYyX0aqDcFilhRfCcmjtt6iMXS/183VFUkId/C8@vger.kernel.org
X-Gm-Message-State: AOJu0YyRosJRUxhod1XZKswPIkc9diyIVcTLmCv5oUSNLCz0JM16aPmk
	dor+ZXmxHVpRsw1KlyifhKipyo2dxbE+I5/b0eo8LyugcinBtZRlPb1/AJLmQ8QM4wOxfNdeXoV
	XNnnhQzBOm4TmqiOrCs3eu6VVK1T/4QGOmnatUG3o+DqwW0kNo3FymUkE9/PciYkI
X-Gm-Gg: AZuq6aLV9JKM0MvLXNlEWpzFVqvjnwzqu634gOGoH0cWDYaV7ZLnXdHVWoJKfSh/X7n
	EosLWrooszXItdOL1aNdmz5+zUp4CwBOh9ZEbA9rQzECk03otNdmEpigp0KwOyt1MvZm6PNcNWa
	SA0zRPgWZETfARe10t87GCrYrTk51JXfGGcsxeddaYvSOOkUuh69vUkfzXGpq80IMpGHSLyUbeR
	0qPicRMxR0uIMQujOiHin4wYvQsfiZNc4Z4+a1bjx9Ir7Bewd2B2KBNT/cA6/wX9uXRI3cQOCjm
	XxY+r0PqKQs/IDiEmv82KPLibgwvGum7/pYwAmCgTk2oKB83RnlvtRBoumCCRbFHl3ZRHVJXkfl
	cpG0Lewx0+EERQaS5L3nsJmKoYr3k1j8RXOUVAHjxz86YoZjKDeWbngYtx+MSSg==
X-Received: by 2002:a05:6a21:a247:b0:366:14ac:e1ec with SMTP id adf61e73a8af0-3946733de5cmr20497922637.62.1771509918350;
        Thu, 19 Feb 2026 06:05:18 -0800 (PST)
X-Received: by 2002:a05:6a21:a247:b0:366:14ac:e1ec with SMTP id adf61e73a8af0-3946733de5cmr20497887637.62.1771509917850;
        Thu, 19 Feb 2026 06:05:17 -0800 (PST)
Received: from hu-botlagun-hyd.qualcomm.com ([202.46.23.25])
        by smtp.gmail.com with ESMTPSA id 41be03b00d2f7-c6e52ed96ebsm16536305a12.0.2026.02.19.06.05.13
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 19 Feb 2026 06:05:17 -0800 (PST)
From: Gopi Botlagunta <venkata.botlagunta@oss.qualcomm.com>
Date: Thu, 19 Feb 2026 19:35:12 +0530
Subject: [PATCH] arm64: dts: qcom: Enable lvds panel-DV215FHM-R01 for
 lemans-evk Mezzanine
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260219-enable-lvds-lemans-mezzanine-v1-1-9cb2075f7c18@oss.qualcomm.com>
X-B4-Tracking: v=1; b=H4sIAJcYl2kC/yWOQW6DMBBFr4K87iAzBttEUdVFb1FlMcbjYAlMg
 kNUJcrd65TNSO8v3punyLxGzuJQPcXK95jjkgo0H5UYRkpnhugLC5SoJTYWOJGbGKa7zzDxTCn
 DzI8HpZgYWtPZ1hvtqCNRFJeVQ/z91/+cdl75upXKbR/FN184FdWSDtVxj0jV9Mq2tm5QKWkAY
 SuZcz2MI3v6WnKurxtNwzLPdTmf75CjzPBe4q08T9Ji36Oh4ALrrh20QnbIxvSBFPpgsXNSi9P
 r9Qe9pL+eAQEAAA==
X-Change-ID: 20260218-enable-lvds-lemans-mezzanine-47584d76ba5a
To: Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, venkata.valluru@oss.qualcomm.com,
        jessica.zhang@oss.qualcomm.com,
        Gopi Botlagunta <venkata.botlagunta@oss.qualcomm.com>
X-Mailer: b4 0.14.3
X-Developer-Signature: v=1; a=ed25519-sha256; t=1771509913; l=3535;
 i=venkata.botlagunta@oss.qualcomm.com; s=20251110; h=from:subject:message-id;
 bh=QNj9CkSL63p09bYQPcFcXGu9Fil4w8mAzmvxMZmMJiU=;
 b=A+c6GYF8pF3nWNNW3/qsc0AZuAfU4JzUhux9EyoeZGFjDSrKaM1YKdrMHr/mO7GewhInf33uL
 0xCc2f43OKdD156OeBw/lzTd+BY41GuN+T6ozD9t3nRg7NUyZJ8Bzoh
X-Developer-Key: i=venkata.botlagunta@oss.qualcomm.com; a=ed25519;
 pk=/SnYBwlkTzDCLnHFgEY0qFwPgKIV+aQWRbc3naiLzrk=
X-Proofpoint-ORIG-GUID: aot9B9STf9HeU0HbIem71w_vbaGsk2EX
X-Proofpoint-GUID: aot9B9STf9HeU0HbIem71w_vbaGsk2EX
X-Authority-Analysis: v=2.4 cv=c7umgB9l c=1 sm=1 tr=0 ts=6997189f cx=c_pps
 a=Qgeoaf8Lrialg5Z894R3/Q==:117 a=ZePRamnt/+rB5gQjfz0u9A==:17
 a=IkcTkHD0fZMA:10 a=HzLeVaNsDn8A:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=Mpw57Om8IfrbqaoTuvik:22 a=GgsMoib0sEa3-_RKJdDe:22
 a=EUspDBNiAAAA:8 a=pbok0ahNxPM2TqRZ_awA:9 a=QEXdDO2ut3YA:10
 a=x9snwWr2DeNwDh03kgHS:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMjE5MDEyOCBTYWx0ZWRfXwyH5CUuwI+2b
 QrgJ9GaijChoVYQx7EaN8qJu9ORmZb8B/8hL0gj9SBCgp7vNNQbLj3iTA6y4k32JreyO3UtsIZk
 Mjy8lJiw2tWTY5kSv/R79qF2i2vbeYY1KYmDt/6+T/RH5aBoO+ofKss0DiBTY1Xf/tCXOUsvCLf
 fsAqnOKGE9tZTmiCshRzwNjLtwgPBPuQCe/TXptYpU/UkY52duPuiV1jlxduuS1Se9LqS4U9u6o
 qk2D70Qm0jInjh70KZ+99uvLXdRadGKyRenawiJY1V74DrX0Q7LdkO5UH8HAn+HWYevfm6UhNze
 4QO+MjbhxVCEEEKJho3pGPk4JxuQj6AMSD8cjw8UIlVAhPHXF0LaE0XaDggH0W4rhcNPeLfYTAP
 lTdOptg1gOYqvs8Ujc3JZ3GHTQZ1u3Y173W0MfzLnoG0OhN7IfVe9cd9GN8jwUaFVpuo3au9zUP
 F/2mMQ+jnBiM7mGvSTQ==
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-02-19_04,2026-02-18_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 impostorscore=0 lowpriorityscore=0 adultscore=0 malwarescore=0 suspectscore=0
 priorityscore=1501 spamscore=0 phishscore=0 clxscore=1015 bulkscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2601150000 definitions=main-2602190128
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-2.16 / 15.00];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[qualcomm.com,reject];
	R_DKIM_ALLOW(-0.20)[qualcomm.com:s=qcppdkim1,oss.qualcomm.com:s=google];
	R_SPF_ALLOW(-0.20)[+ip4:172.105.105.114:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.105.96.0/20, country:SG];
	DKIM_TRACE(0.00)[qualcomm.com:+,oss.qualcomm.com:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	TAGGED_FROM(0.00)[bounces-266665-lists,devicetree=lfdr.de];
	DBL_BLOCKED_OPENRESOLVER(0.00)[oss.qualcomm.com:mid,oss.qualcomm.com:dkim,0.0.0.1:email,qualcomm.com:email,qualcomm.com:dkim,0.0.0.0:email,tor.lore.kernel.org:helo,tor.lore.kernel.org:rdns];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[venkata.botlagunta@oss.qualcomm.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_PROHIBIT(0.00)[0.0.0.2:email,0.0.0.3:email];
	MID_RHS_MATCH_FROM(0.00)[];
	NEURAL_HAM(-0.00)[-0.999];
	TAGGED_RCPT(0.00)[devicetree,dt];
	RCPT_COUNT_SEVEN(0.00)[11];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Queue-Id: 258DF15F4F0
X-Rspamd-Action: no action

LT9211c bridge and lvds panel node.
LT9211c is powered by default with reset gpio connected to 37.

Signed-off-by: Gopi Botlagunta <venkata.botlagunta@oss.qualcomm.com>
---
 arch/arm64/boot/dts/qcom/lemans-evk-mezzanine.dtso | 125 +++++++++++++++++++++
 1 file changed, 125 insertions(+)

diff --git a/arch/arm64/boot/dts/qcom/lemans-evk-mezzanine.dtso b/arch/arm64/boot/dts/qcom/lemans-evk-mezzanine.dtso
index 4fab96ba873c..16f757952ff7 100644
--- a/arch/arm64/boot/dts/qcom/lemans-evk-mezzanine.dtso
+++ b/arch/arm64/boot/dts/qcom/lemans-evk-mezzanine.dtso
@@ -11,6 +11,62 @@
 &{/} {
 	model = "Qualcomm Technologies, Inc. Lemans-evk Mezzanine";
 
+	panel_lvds: panel-lvds@0 {
+		compatible = "panel-lvds";
+
+		data-mapping = "vesa-24";
+
+		width-mm = <476>;
+		height-mm = <268>;
+
+		status = "okay";
+
+		panel-timing {
+			clock-frequency = <148500000>;
+			hactive = <1920>;
+			vactive = <1080>;
+			hfront-porch = <88>;
+			hback-porch = <148>;
+			hsync-len = <44>;
+			vfront-porch = <4>;
+			vback-porch = <36>;
+			vsync-len = <5>;
+			de-active = <1>;
+		};
+
+		ports {
+			#address-cells = <1>;
+			#size-cells = <0>;
+
+			port@0 {
+				reg = <0>;
+
+				dual-lvds-odd-pixels;
+				panel_in_lvds_odd: endpoint {
+					remote-endpoint = <&lt9211c_out_odd>;
+				};
+			};
+
+			port@1 {
+				reg = <1>;
+
+				dual-lvds-even-pixels;
+				panel_in_lvds_even: endpoint {
+					remote-endpoint = <&lt9211c_out_even>;
+				};
+			};
+		};
+	};
+
+	lcd_disp_bias: regulator-lcd-disp-bias {
+		compatible = "regulator-fixed";
+		regulator-name = "lcd_disp_bias";
+		regulator-min-microvolt = <5500000>;
+		regulator-max-microvolt = <5500000>;
+		gpio = <&expander3 1 GPIO_ACTIVE_HIGH>;
+		enable-active-high;
+	};
+
 	vreg_0p9: regulator-vreg-0p9 {
 		compatible = "regulator-fixed";
 		regulator-name = "VREG_0P9";
@@ -158,6 +214,55 @@ queue3 {
 	};
 };
 
+&i2c1 {
+	qcom,load-firmware;
+	qcom,xfer-mode = <1>;
+	pinctrl-names = "default";
+	pinctrl-0 = <&qup_i2c1_default>;
+
+	status = "okay";
+
+	lt9211c_codec: lvds-bridge@2d {
+		compatible = "lontium,lt9211c";
+		reg = <0x2d>;
+		reset-gpios = <&tlmm 37 GPIO_ACTIVE_HIGH>;
+		vcc-supply = <&vreg_s4a>;
+
+		status = "okay";
+
+		ports {
+			#address-cells = <1>;
+			#size-cells = <0>;
+
+			port@0 {
+				reg = <0>;
+
+				lt9211c_in: endpoint {
+					data-lanes = <0 1 2 3>;
+					remote-endpoint = <&mdss0_dsi0_out>;
+				};
+			};
+
+			port@2 {
+				reg = <2>;
+
+				lt9211c_out_odd: endpoint {
+					remote-endpoint = <&panel_in_lvds_odd>;
+				};
+			};
+
+			port@3 {
+				reg = <3>;
+
+				lt9211c_out_even: endpoint {
+					remote-endpoint = <&panel_in_lvds_even>;
+				};
+			};
+		};
+	};
+
+};
+
 &i2c18 {
 	#address-cells = <1>;
 	#size-cells = <0>;
@@ -179,6 +284,26 @@ mac_addr1: mac-addr@0 {
 	};
 };
 
+&mdss0 {
+	status = "okay";
+};
+
+&mdss0_dsi0 {
+	vdda-supply = <&vreg_l1c>;
+	power-supply = <&lcd_disp_bias>;
+	status = "okay";
+};
+
+&mdss0_dsi0_out {
+	data-lanes = <0 1 2 3>;
+	remote-endpoint = <&lt9211c_in>;
+};
+
+&mdss0_dsi0_phy {
+	vdds-supply = <&vreg_l4a>;
+	status = "okay";
+};
+
 &pcie0 {
 	iommu-map = <0x0 &pcie_smmu 0x0 0x1>,
 		    <0x100 &pcie_smmu 0x1 0x1>,

---
base-commit: 1a0829927afbfe654c632eb2e779fa32df825b06
change-id: 20260218-enable-lvds-lemans-mezzanine-47584d76ba5a

Best regards,
-- 
Gopi Botlagunta <venkata.botlagunta@oss.qualcomm.com>


