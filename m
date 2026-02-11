Return-Path: <devicetree+bounces-264679-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id QO3uH1hMjGmukgAAu9opvQ
	(envelope-from <devicetree+bounces-264679-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 11 Feb 2026 10:31:04 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [IPv6:2600:3c15:e001:75::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id A1047122C0A
	for <lists+devicetree@lfdr.de>; Wed, 11 Feb 2026 10:31:03 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id 2370E30080AB
	for <lists+devicetree@lfdr.de>; Wed, 11 Feb 2026 09:31:01 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C65B231B812;
	Wed, 11 Feb 2026 09:30:57 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="p3HYxxOT";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="cCtXhe6b"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7F6762EAB61
	for <devicetree@vger.kernel.org>; Wed, 11 Feb 2026 09:30:56 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770802257; cv=none; b=kOyuXdIlyA/jKpjhKnlYqbhrtLLybKR/X0AZ5aA66qtvzQcox8jMK+uFtcf6knhxFPjvtUTwFZ/MjFXkkc3W+yhALPazV2KH8wKi8lw7mCgWLnkUpJtiZz/1GzXt6Y5oxiVfnFJkqGFFRiMUkxrX/n+tWmsB4X0K2iCJMGAbpvw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770802257; c=relaxed/simple;
	bh=KRWDALdKPtw4aHXDzmzT+mM1hatS1OZ7HaTispnCZjU=;
	h=From:To:Cc:Subject:Date:Message-Id:MIME-Version; b=SzDVrEcIZoXbaXCSsBwTi6QkHRQZu20RbSk3/Jp6ICCexMTtk8JC/WIG1/VmaIEqp3EE0Za3Go4IgM6loOUxdvsU5lvQ0usIbvrm4yYTuh7JmIGen/Mb2nrWUCFNyntd+uUvSbtiiy4fvOHaCfb4tpK9/MDonun+pHfUy6otQcw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=p3HYxxOT; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=cCtXhe6b; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279869.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 61B8PAM63921195
	for <devicetree@vger.kernel.org>; Wed, 11 Feb 2026 09:30:55 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:date:from:message-id:mime-version
	:subject:to; s=qcppdkim1; bh=3B/G6YIWco8juD+yFfp35zucDDDlBC8XbJK
	p5h5QfRY=; b=p3HYxxOTgFAE8eVs/ANhth9TKNYI6idFB0kfOGH9kBUOMUZD6nj
	ZvM6Q2c2ArTwoqE1Dba11agwMStdIrVo7YUjfxoNby454NKv+TzoSmNtdqL1xAAT
	fHZb4KBIK+vIo5y74CfO31xWC19zwDeeDPLclL8KOutE71V22ObKSpaq7fyaNJqk
	zfkl7artngLUqDI8pDrWiGMOaStbbEdd1HIKjnqU/4JBcy6subHPycsocB/cVe09
	wsN1gIVjf4PUJhPMt+nZ2Jw0vi54iUng/MmiY6eeUtvUVncr8VgU6zoxm5Fci3ws
	zDL8L14gHTj7GjHeg/Pb1FpJTPO1FWzU9Ew==
Received: from mail-pg1-f197.google.com (mail-pg1-f197.google.com [209.85.215.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4c86akkbeh-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Wed, 11 Feb 2026 09:30:55 +0000 (GMT)
Received: by mail-pg1-f197.google.com with SMTP id 41be03b00d2f7-c6132853933so1516010a12.0
        for <devicetree@vger.kernel.org>; Wed, 11 Feb 2026 01:30:55 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1770802254; x=1771407054; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=3B/G6YIWco8juD+yFfp35zucDDDlBC8XbJKp5h5QfRY=;
        b=cCtXhe6bfJEG+HZphxDu8eScgqse/ZsX/Nq/i3OZ42nXtOd1i2zamCdCv6mXL1WO9R
         iPm5DFfYX7H2+B3brukT3Sq1I0OWGqx6IuhNHepqbQZgDatc08RUH+l2itcHtr1bQMKH
         rKTEvKPigwYi1mg4bRe4B5gwxhfKYzqXEeqN08hqHCc5Q0pujLYbf5ka5xqzN2O9S0Tn
         0rfyxY8yfqAKTAzVYBJ+/wDALXbpdRcjsa/fckFg2IlVOzFTCDrYsbCYgP/AzRcGmyMB
         3pSAJFZmg+V8YlaQyuxZ2hNIve/kcSfdqnQ5HwE5bX1jhO2X1343lznRxAk8de/6K7dF
         eWMA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1770802254; x=1771407054;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=3B/G6YIWco8juD+yFfp35zucDDDlBC8XbJKp5h5QfRY=;
        b=vii3NnZKIdTERqQ91fCoO3MO5G6mqJ9LpTaBNsyVVpcNgFlW4ZQpgCoNm7qefgp92x
         tvafsv8RCThlTNC0+p5u7Z6OTewthW2J0LjR1VoqJZT7WFJITyQZ57W2oEarx5xE0jRr
         V1+RLAmhp/ReA2jcbPvjlG+Qx/PS/fD026BrxQKgpfZ+9lhHsLO0Ego+0G5prHBthSJB
         8IeJDZ3dPxVmsd4a/eDyi94+m4WFBeNe7YxJpjmV9nVf8u7pmYr+2lc2Gg+QYZ7j6SOI
         KLGBcjLH3+Ftpo6U0eDRQiJYddBJJDfAD121lbngNII7zUUCZcbbOdNvR8+04GKL2FeZ
         4Vag==
X-Forwarded-Encrypted: i=1; AJvYcCVet4TAf76hFtQNdUv4NnfaLV1x34+E5R7gEH7FM+P3Ui5qUJAswS/cgakVCsNChBHsp2TzXjFrWh0g@vger.kernel.org
X-Gm-Message-State: AOJu0YzY1qU2j4ptmweoiL/pWQNCdWYV6UCGtaHvws4pfyaFmA/CWkDy
	R4R8E4gXIcnnK7ztqLTqku9gLtp0E6TQQv06hfQr3Ykv5SbUddR2Aghu10/xT9RIo8J+Ixph5Mj
	hlo0er5AJYaQ8RApt+Qh5daRvxlInhb1ipopYid1QxTf3TjJFUFiGcjB7n+wKwn8=
X-Gm-Gg: AZuq6aKl2xAsICiFMqdlPN8UC9lCvjreCBrD0zyJ6nOcHSmHEhiNXW5hx+ThviyCNTX
	JWH2PRSl7E+6uqcfN8wxPaokMHUiREk/UfMybHxVNysGgw0wiHLyFy5P5BWuKg/N9LoVy15QjHY
	xRCPPI7B1ZXKi+tm7YH1mxbJRvandicxmcU3zKr7xAJmAM5I8GK74/E5926+cO/23S24PTFxhVO
	jFsUgsTh1c9ZoN49xOYsKogq7+z0vcIClmfsQ6AltZ2mCPk4b149YVBCXd84veHcRAJ2+mXw9Li
	jXkrNfHbiTEoPq1nYcgr5UbLp4NL8Fg0N1wIJc5DYa/b+KVQg8joYAHqnlWZCciIGkUfPJ0vK/K
	K0L5JT9975NOgWbb6VpY7WBvF9Gh18TfjU5T/x8gmNVDVgXzkU7Ru
X-Received: by 2002:a05:6a00:99d:b0:81f:3940:3aff with SMTP id d2e1a72fcca58-8249fa84808mr1102217b3a.0.1770802254526;
        Wed, 11 Feb 2026 01:30:54 -0800 (PST)
X-Received: by 2002:a05:6a00:99d:b0:81f:3940:3aff with SMTP id d2e1a72fcca58-8249fa84808mr1102180b3a.0.1770802254064;
        Wed, 11 Feb 2026 01:30:54 -0800 (PST)
Received: from hu-sartgarg-hyd.qualcomm.com ([202.46.22.19])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-8249e3bcdfdsm1600046b3a.21.2026.02.11.01.30.49
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 11 Feb 2026 01:30:53 -0800 (PST)
From: Sarthak Garg <sarthak.garg@oss.qualcomm.com>
To: Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, quic_nguyenb@quicinc.com,
        quic_rampraka@quicinc.com, quic_pragalla@quicinc.com,
        quic_sayalil@quicinc.com, quic_nitirawa@quicinc.com,
        quic_bhaskarv@quicinc.com, kernel@oss.qualcomm.com,
        Sarthak Garg <sarthak.garg@oss.qualcomm.com>
Subject: [PATCH V1] arm64: dts: qcom: hamoa-iot-evk: Add SDC2 node for hamoa iot evk board
Date: Wed, 11 Feb 2026 15:00:45 +0530
Message-Id: <20260211093045.2595126-1-sarthak.garg@oss.qualcomm.com>
X-Mailer: git-send-email 2.34.1
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Authority-Analysis: v=2.4 cv=HI7O14tv c=1 sm=1 tr=0 ts=698c4c4f cx=c_pps
 a=rz3CxIlbcmazkYymdCej/Q==:117 a=fChuTYTh2wq5r3m49p7fHw==:17
 a=HzLeVaNsDn8A:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=Mpw57Om8IfrbqaoTuvik:22 a=GgsMoib0sEa3-_RKJdDe:22 a=EUspDBNiAAAA:8
 a=ZtXvRwAlPpC7nlbJvkEA:9 a=bFCP_H2QrGi7Okbo017w:22
X-Proofpoint-GUID: YRfyEjYkqLoNh4QviUBT5wTU_Z2J5dy0
X-Proofpoint-ORIG-GUID: YRfyEjYkqLoNh4QviUBT5wTU_Z2J5dy0
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMjExMDA3NyBTYWx0ZWRfXwSNPm7bC4lgP
 KIQ+AhTzEhuU2DzaXr5YFnSqsNOidZ7Gmy5JAuOmtgeKIzBK60ZNUa8qxPFeih/sJ+6v6zOjkl5
 7FQI3q7nRhR3DIsrGb6ykTFaqcB0xmhC4w15aAFyiQ9J2sp4+T4EXSNGo35WlEFM+VcxZy+SiAx
 0P9baaPWWH7rSwQdXPF38JEpiLm75c0I/Po8yZPzxcGRzhCZOcz7V6Yh4RQkl1GYxjcPWzsB7Mf
 1gpKIjj4mYav/th8XrKxAntz4v8UIAg+wdUBCxipeRxrgb475ZxRxVHbr0JZJke4wCNQaLCsU5W
 jxVpTQ0EJHNxsNYME6a8EJRihl1nee3s59md2zK53Gor/bPupSfBIC9eWc3MtmC/IncU7jlcxEd
 pw0CL/X04aauD6N81Rtpq6qgMCJngPlR7AoAp9cPfRIdJ45JTrknLenKuhiDBTc2anO8zfA41r7
 gB5cRIBqvrGk1OWCHkA==
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-02-10_03,2026-02-10_03,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 spamscore=0 priorityscore=1501 lowpriorityscore=0 adultscore=0 suspectscore=0
 bulkscore=0 clxscore=1011 impostorscore=0 malwarescore=0 phishscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2601150000 definitions=main-2602110077
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [0.84 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_CONTAINS_FROM(1.00)[];
	R_MISSING_CHARSET(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[qualcomm.com,reject];
	R_DKIM_ALLOW(-0.20)[qualcomm.com:s=qcppdkim1,oss.qualcomm.com:s=google];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c15:e001:75::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCPT_COUNT_TWELVE(0.00)[16];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_FROM(0.00)[bounces-264679-lists,devicetree=lfdr.de];
	MIME_TRACE(0.00)[0:+];
	RCVD_TLS_LAST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[sarthak.garg@oss.qualcomm.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[qualcomm.com:+,oss.qualcomm.com:+];
	PRECEDENCE_BULK(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	ASN(0.00)[asn:63949, ipnet:2600:3c15::/32, country:SG];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Queue-Id: A1047122C0A
X-Rspamd-Action: no action

Enable SD Card host controller for hamoa iot evk board.

Signed-off-by: Sarthak Garg <sarthak.garg@oss.qualcomm.com>
---
 arch/arm64/boot/dts/qcom/hamoa-iot-evk.dts | 23 ++++++++++++++++++++++
 1 file changed, 23 insertions(+)

diff --git a/arch/arm64/boot/dts/qcom/hamoa-iot-evk.dts b/arch/arm64/boot/dts/qcom/hamoa-iot-evk.dts
index 2390648a248f..56171e832e8e 100644
--- a/arch/arm64/boot/dts/qcom/hamoa-iot-evk.dts
+++ b/arch/arm64/boot/dts/qcom/hamoa-iot-evk.dts
@@ -1144,6 +1144,22 @@ &pmk8550_pwm {
 	status = "okay";
 };
 
+&sdhc_2 {
+	cd-gpios = <&tlmm 71 GPIO_ACTIVE_LOW>;
+
+	vmmc-supply = <&vreg_l9b_2p9>;
+	vqmmc-supply = <&vreg_l6b_1p8>;
+
+	no-sdio;
+	no-mmc;
+
+	pinctrl-0 = <&sdc2_default &sdc2_card_det_n>;
+	pinctrl-1 = <&sdc2_sleep &sdc2_card_det_n>;
+	pinctrl-names = "default", "sleep";
+
+	status = "okay";
+};
+
 &smb2360_0 {
 	status = "okay";
 };
@@ -1326,6 +1342,13 @@ rtmr2_default: rtmr2-reset-n-active-state {
 		bias-disable;
 	};
 
+	sdc2_card_det_n: sd-card-det-n-state {
+		pins = "gpio71";
+		function = "gpio";
+		drive-strength = <2>;
+		bias-pull-up;
+	};
+
 	usb1_pwr_1p15_reg_en: usb1-pwr-1p15-reg-en-state {
 		pins = "gpio188";
 		function = "gpio";
-- 
2.34.1


