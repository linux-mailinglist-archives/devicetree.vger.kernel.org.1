Return-Path: <devicetree+bounces-277445-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 0OJDDo/5umlwdwIAu9opvQ
	(envelope-from <devicetree+bounces-277445-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 18 Mar 2026 20:14:23 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [IPv6:2600:3c15:e001:75::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 341A42C1DED
	for <lists+devicetree@lfdr.de>; Wed, 18 Mar 2026 20:14:22 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id 33BA0302D489
	for <lists+devicetree@lfdr.de>; Wed, 18 Mar 2026 19:09:02 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 020D03F0747;
	Wed, 18 Mar 2026 19:08:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="FpkVhYT8";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="kNEIxuNQ"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B1F243EFD1E
	for <devicetree@vger.kernel.org>; Wed, 18 Mar 2026 19:08:52 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773860933; cv=none; b=ohRB9JFBhIK5RbrAhqEHS6Uu1F3XjAq0iosMdf3GXilUrfPtzhe6qap5cfXGNZuP4SZr1M5Jrx6DiGgoTh5op7+dhVyirwNbl1u002lYDcixkkkcF+eSVwE5asJwXt6DU+UXSh6c9x35tRH4RxCOJv+UDB1Ob2pYQk8ZzMqDe1E=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773860933; c=relaxed/simple;
	bh=3nCssUwIZ1MwkC5pqisQzM2wmOr64oLbk+2lMKbLk3Q=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=SXaYikprOt7Sx+Dd7UldTEXT8khIfqhlQPj2EkKrQbAxKU7q0CPszXteFndiL9UccDV/zyhl6bZuWC7piq+pq5WKiJ29lITFxOmGacTyzG++593tc4YtZd4eG1xu8l20s0e7KxJzFgCOCetlJnjs2XdF7NLX1LMWZlzkeWCfidw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=FpkVhYT8; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=kNEIxuNQ; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279862.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 62IFh5nd1789168
	for <devicetree@vger.kernel.org>; Wed, 18 Mar 2026 19:08:52 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	KLkGHEBN4+wcdDV1o4Xu+JIsdtA82nZIFipg2Z5upmc=; b=FpkVhYT8O12uw2S8
	iIUAH7lpShmylgNbSgrAtWyEcXwaiV1eBJSocJ2c47+KzKjHyGSO64yYyC2/UsoP
	GItuJtqItUJ1ki5+M2rpmMe8lDLprjHpEAErJlFIiOklDu49w9fmfhh4U/SC9f1e
	uMtyEBgvK5ugIcvkrc5jpjdtD39m1W2z3twJUmFR8pl/qZyZxKpgAdjK5VpqhxHa
	uiIqeEvperymY7JgkVMXKJKBefo6iso4cy2kcAdFcwFqrLcDlIBWn1ZlXqahjFXT
	/gs7dNfMZ/bxd2Ycqcdu/nN7+OZFs8dyQqHa3VHjw7fPS0sl4F5xAOIEdwp4uzuo
	uk4tfA==
Received: from mail-pl1-f199.google.com (mail-pl1-f199.google.com [209.85.214.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4cykqeurfa-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Wed, 18 Mar 2026 19:08:51 +0000 (GMT)
Received: by mail-pl1-f199.google.com with SMTP id d9443c01a7336-2b06bf67f79so1124105ad.0
        for <devicetree@vger.kernel.org>; Wed, 18 Mar 2026 12:08:51 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1773860931; x=1774465731; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=KLkGHEBN4+wcdDV1o4Xu+JIsdtA82nZIFipg2Z5upmc=;
        b=kNEIxuNQ74qxZsGgOzfgTONOYUzSnBfnEWfSJ4EkiDNH4GdY3C8pdKnO6vbikkIjzO
         4yUVNRAzHRZS7u5J76r5DgWyq7YeGMlagWmpIdhDd9M+HqRo0JzBC9KEmo5p4niHjCgp
         wg90d73MxUQXuSOd+xnMwv8tZXYXZJ4ITiDInxZ4biWTyMXlf8vIhWg6ngZAHlIw4F88
         BUQAtkcOGhn8HYPjjRtlFvjW34t9/c8p1A+Nlexp1GdVSbDbrwN/Xl57rvbDCt9sCqBW
         45lBbAxEHA/D8n7f/yIlwcYGAYvmvH1CSlFX5RV5vJRx3utUbF6KMvw8h7/Ygfqi6qpR
         QNnQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1773860931; x=1774465731;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-gg:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=KLkGHEBN4+wcdDV1o4Xu+JIsdtA82nZIFipg2Z5upmc=;
        b=YJXWvku27LCpBakxW0TLD48HU7751yQvGES3fn6yAx0cGx+Wi0balegO/z4YO2aA79
         yhHSJVdzitsD6njvfIF4Qgr+kJpk+xNS7UrKD1NB3J5yfmFoKF0Ix/AzeTfA7VBS7Lgb
         Nzx8FuevttkFpxcyb8hY+jCPr7ZUt4qBUjVcngoc1ReUxQz4ErqT3hKniJYPzub6fOw5
         yoh4Z1oTXsFdfl18ktYtbk5cFlZ5OJnETadz0gnBTjl8DtWmAmP6juVNCKh9uqKHsmwL
         Hs/mh/PX6xgg3yTjj+JkZhgbnGRQdFpOPHnVRQE3Z+TVB/Yc8oHnt7kvutGKlGb40gsj
         tfZw==
X-Forwarded-Encrypted: i=1; AJvYcCUTCg2WFB0U5Yn1WdI0q4lNNkwxYhBUDesDvvWIVHq9fldnmxV5q6sdj0zL4mnccod5cguVrqX27GtA@vger.kernel.org
X-Gm-Message-State: AOJu0YwYpu3APXEieGJCuBDldGFdM+Z5gzFVV6lccrh0D1eVUjjCxCej
	cgYD26WF89RX2flYXlFhKfWstoBuImZmbjbKw9VUrp+3B3I05Z0H82F7HxvWFD893wbiw2DbxqF
	FInJivhMXmB+QDN7RrJTUqVhtpLjZBFlYlKWlGQAtDp0jWZHSeIVRnYlz1frQ+XR/
X-Gm-Gg: ATEYQzwynJNAMidgWQJvXmX99DXfJdpJY9JOSz/q0Aqg7izmc21rrc89B00eIdVUKHZ
	ZKIV40DFM/qA0AZ7Ph/Vb4C9c2bRV8qKy0Vgqccnp628gMSmrH8aQK8wLb1ul5yxyV7sHyVSiZD
	3pqMqBSl4Pd58l65XGu+MapML8UCU0NgFe1zDAnRshqlJfbwDa+1EgGU5e6s/fzQd7PjQV0M1Mw
	cqAyzzi4hDJgx72P+WLsdKtgP6llDAlVgHba2OL6EcjR+YdOSbTVo1ALOSDqblDcPtH6k5GJEye
	U0QXRAKnLcW/iLqjWIBwFUfQVKR0sHJWdK/l+7Gd3gVAVnh5Z7vvr4QmPGocBB7PI6TkMTWd+FK
	o5XJ9iBq8Eh/h3MaIGtCcZx3zXr+5pvP6b6ZpeHtLAVGoiRsCTh1DNVmv6aOg8cpS4n8Udrg3pw
	QjAgWRkJER5FLRZ/kNKgtbgTzV6Fm+6OO+zWCsc6wT6g==
X-Received: by 2002:a17:903:1666:b0:2ae:cefd:18ce with SMTP id d9443c01a7336-2b06e3379b5mr30757635ad.2.1773860931200;
        Wed, 18 Mar 2026 12:08:51 -0700 (PDT)
X-Received: by 2002:a17:903:1666:b0:2ae:cefd:18ce with SMTP id d9443c01a7336-2b06e3379b5mr30757425ad.2.1773860930733;
        Wed, 18 Mar 2026 12:08:50 -0700 (PDT)
Received: from hu-vishsain-blr.qualcomm.com (blr-bdr-fw-01_GlobalNAT_AllZones-Outside.qualcomm.com. [103.229.18.19])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-2b06e5f1245sm42762805ad.46.2026.03.18.12.08.47
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 18 Mar 2026 12:08:50 -0700 (PDT)
From: Vishnu Saini <vishnu.saini@oss.qualcomm.com>
Date: Thu, 19 Mar 2026 00:38:19 +0530
Subject: [PATCH v4 1/2] arm64: dts: qcom: monaco-evk: add lt8713sx bridge
 with displayport
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260319-lt8713sx-bridge-linux-for-next-v4-1-da886ec78fe3@oss.qualcomm.com>
References: <20260319-lt8713sx-bridge-linux-for-next-v4-0-da886ec78fe3@oss.qualcomm.com>
In-Reply-To: <20260319-lt8713sx-bridge-linux-for-next-v4-0-da886ec78fe3@oss.qualcomm.com>
To: Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org,
        Vishnu Saini <vishnu.saini@oss.qualcomm.com>,
        prahlad.valluru@oss.qualcomm.com,
        Prahlad Valluru <vvalluru@qti.qualcomm.com>,
        Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
X-Mailer: b4 0.14.3
X-Developer-Signature: v=1; a=ed25519-sha256; t=1773860922; l=3881;
 i=vishnu.saini@oss.qualcomm.com; s=20251113; h=from:subject:message-id;
 bh=3nCssUwIZ1MwkC5pqisQzM2wmOr64oLbk+2lMKbLk3Q=;
 b=WidGI3cmGNhQpbpBCwFtfKTl7htFp8z8n0b+gGTl5Rzqr/bmc99bUvb0X5asTyuWOEViuZ/mF
 SN2g/YSLIQzAEcO4mi3BUNBLGA5PTtQ0CuG69n1PNM5gaXoYgvHoxcr
X-Developer-Key: i=vishnu.saini@oss.qualcomm.com; a=ed25519;
 pk=8hlXlF8j/3GeOaDK3w2LYhkv9FanCQru0c7kRH/It7k=
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMzE4MDE2NCBTYWx0ZWRfX8jommWXGhmS6
 n+O7l65ldKlt8O6nZuK2HFuzfpQpywTJmYiuDgtESy8lQ85xVa0ezu9fEDSdF3MdDcGEzOYKByS
 nslnsbDMHLcpSJ9ktV+O8oVQ6a6Ks2laJ5vMM2dgyAZRasX6JjAAfq/GsD7y08+wK3YNQZyHS84
 dtoZPLEHL7Ol+csAnPyr3IrioAHl0z9aOr31A6B0q1NEPC9vrs81x6ujGN/DH169EnbIL6U4PMC
 /OlTwNoq51gFsQuWA3Q0LFYmOaA/7kf3uKR+UU7fJ8MrOEJ2Fov14k4k5OeKexfQIq8bWoWr8+i
 CdokMQDdSdy4zJ80eBDAp2nMpakviQMG/HCaoZHAQBssPJfyaJxhAu3ZLrDdobmINUZOjTkHvJi
 6R7g2Yq+Nowa8+KC6yb2mipMYACMped40yzaKP8/wWLpv/X9e/UCocjD5FkymCWx4zVuNEziPTb
 gDgBRP5u05M4HUg85/Q==
X-Authority-Analysis: v=2.4 cv=Cd4FJbrl c=1 sm=1 tr=0 ts=69baf843 cx=c_pps
 a=JL+w9abYAAE89/QcEU+0QA==:117 a=Ou0eQOY4+eZoSc0qltEV5Q==:17
 a=IkcTkHD0fZMA:10 a=Yq5XynenixoA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=_K5XuSEh1TEqbUxoQ0s3:22
 a=EUspDBNiAAAA:8 a=Ov8SyQ6_pS9HVYgZQC4A:9 a=QEXdDO2ut3YA:10
 a=324X-CrmTo6CU4MGRt3R:22
X-Proofpoint-ORIG-GUID: 4CWkEuOkU-QpHzK9cB7Lk-9PB-z3LR9c
X-Proofpoint-GUID: 4CWkEuOkU-QpHzK9cB7Lk-9PB-z3LR9c
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1143,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-03-18_01,2026-03-17_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 clxscore=1015 phishscore=0 impostorscore=0 lowpriorityscore=0
 priorityscore=1501 spamscore=0 adultscore=0 bulkscore=0 suspectscore=0
 malwarescore=0 classifier=typeunknown authscore=0 authtc= authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.22.0-2603050001
 definitions=main-2603180164
X-Spamd-Result: default: False [-2.16 / 15.00];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[qualcomm.com,reject];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c15:e001:75::/64:c];
	R_DKIM_ALLOW(-0.20)[qualcomm.com:s=qcppdkim1,oss.qualcomm.com:s=google];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-277445-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	DKIM_TRACE(0.00)[qualcomm.com:+,oss.qualcomm.com:+];
	RCPT_COUNT_TWELVE(0.00)[12];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FROM_HAS_DN(0.00)[];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[vishnu.saini@oss.qualcomm.com,devicetree@vger.kernel.org];
	ASN(0.00)[asn:63949, ipnet:2600:3c15::/32, country:SG];
	NEURAL_HAM(-0.00)[-0.999];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Queue-Id: 341A42C1DED
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

Monaco-evk has LT8713sx which act as DP to 3 DP output
converter. Edp PHY from monaco soc is connected to lt8713sx
as input and output of lt8713sx is connected to 3 mini DP ports.

Two ports are available in mainboard and one port
is available on Mezz board.

lt8713sx is connected to soc over i2c0 and with reset gpio
connected to pin6 of ioexpander5.

Enable the edp nodes from monaco and enable lontium lt8713sx
bridge node.

Co-developed-by: Prahlad Valluru <vvalluru@qti.qualcomm.com>
Signed-off-by: Prahlad Valluru <vvalluru@qti.qualcomm.com>
Signed-off-by: Vishnu Saini <vishnu.saini@oss.qualcomm.com>
Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
---
 arch/arm64/boot/dts/qcom/monaco-evk.dts | 89 +++++++++++++++++++++++++++++++++
 arch/arm64/boot/dts/qcom/monaco.dtsi    |  6 +++
 2 files changed, 95 insertions(+)

diff --git a/arch/arm64/boot/dts/qcom/monaco-evk.dts b/arch/arm64/boot/dts/qcom/monaco-evk.dts
index 0b26cc334a69..0a91e421edbd 100644
--- a/arch/arm64/boot/dts/qcom/monaco-evk.dts
+++ b/arch/arm64/boot/dts/qcom/monaco-evk.dts
@@ -52,6 +52,30 @@ dmic: audio-codec-0 {
 		num-channels = <1>;
 	};
 
+	dp-connector-0 {
+		compatible = "dp-connector";
+		label = "DP0";
+		type = "mini";
+
+		port {
+			dp0_connector_in: endpoint {
+				remote-endpoint = <&lt8713sx_dp0_out>;
+			};
+		};
+	};
+
+	dp-connector-1 {
+		compatible = "dp-connector";
+		label = "DP1";
+		type = "mini";
+
+		port {
+			dp1_connector_in: endpoint {
+				remote-endpoint = <&lt8713sx_dp1_out>;
+			};
+		};
+	};
+
 	max98357a: audio-codec-1 {
 		compatible = "maxim,max98357a";
 		#sound-dai-cells = <0>;
@@ -355,6 +379,42 @@ &gpu_zap_shader {
 	firmware-name = "qcom/qcs8300/a623_zap.mbn";
 };
 
+&i2c0 {
+	status = "okay";
+
+	bridge@4f {
+		compatible = "lontium,lt8713sx";
+		reg = <0x4f>;
+		reset-gpios = <&expander5 6 GPIO_ACTIVE_LOW>;
+
+		ports {
+			#address-cells = <1>;
+			#size-cells = <0>;
+
+			port@0 {
+				reg = <0>;
+				lt8713sx_dp_in: endpoint {
+					remote-endpoint = <&mdss_dp0_out>;
+				};
+			};
+
+			port@1 {
+				reg = <1>;
+				lt8713sx_dp0_out: endpoint {
+					remote-endpoint = <&dp0_connector_in>;
+				};
+			};
+
+			port@2 {
+				reg = <2>;
+				lt8713sx_dp1_out: endpoint {
+					remote-endpoint = <&dp1_connector_in>;
+				};
+			};
+		};
+	};
+};
+
 &i2c1 {
 	pinctrl-0 = <&qup_i2c1_default>;
 	pinctrl-names = "default";
@@ -483,6 +543,30 @@ &iris {
 	status = "okay";
 };
 
+&mdss {
+	status = "okay";
+};
+
+&mdss_dp0 {
+	pinctrl-0 = <&dp_hot_plug_det>;
+	pinctrl-names = "default";
+
+	status = "okay";
+};
+
+&mdss_dp0_out {
+	data-lanes = <0 1 2 3>;
+	link-frequencies = /bits/ 64 <1620000000 2700000000 5400000000 8100000000>;
+	remote-endpoint = <&lt8713sx_dp_in>;
+};
+
+&mdss_dp0_phy {
+	vdda-phy-supply = <&vreg_l5a>;
+	vdda-pll-supply = <&vreg_l4a>;
+
+	status = "okay";
+};
+
 &pcie0 {
 	pinctrl-0 = <&pcie0_default_state>;
 	pinctrl-names = "default";
@@ -531,6 +615,11 @@ usb2_id: usb2-id-state {
 	};
 };
 
+&qup_i2c0_data_clk {
+	drive-strength = <2>;
+	bias-pull-up;
+};
+
 &qupv3_id_0 {
 	firmware-name = "qcom/qcs8300/qupv3fw.elf";
 	status = "okay";
diff --git a/arch/arm64/boot/dts/qcom/monaco.dtsi b/arch/arm64/boot/dts/qcom/monaco.dtsi
index f92fdb1cefa0..5741cdbde3f5 100644
--- a/arch/arm64/boot/dts/qcom/monaco.dtsi
+++ b/arch/arm64/boot/dts/qcom/monaco.dtsi
@@ -5893,6 +5893,12 @@ tlmm: pinctrl@f100000 {
 			#interrupt-cells = <2>;
 			wakeup-parent = <&pdc>;
 
+			dp_hot_plug_det: dp-hot-plug-det-state {
+				pins = "gpio94";
+				function = "edp0_hot";
+				bias-disable;
+			};
+
 			hs0_mi2s_active: hs0-mi2s-active-state {
 				pins = "gpio106", "gpio107", "gpio108", "gpio109";
 				function = "hs0_mi2s";

-- 
2.34.1


