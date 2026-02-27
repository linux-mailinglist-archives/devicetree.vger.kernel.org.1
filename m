Return-Path: <devicetree+bounces-269043-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id RjWpGk4XoWk0qQQAu9opvQ
	(envelope-from <devicetree+bounces-269043-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Fri, 27 Feb 2026 05:02:22 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [IPv6:2600:3c09:e001:a7::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id D72171B275D
	for <lists+devicetree@lfdr.de>; Fri, 27 Feb 2026 05:02:21 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id 249B23041CB3
	for <lists+devicetree@lfdr.de>; Fri, 27 Feb 2026 04:02:21 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D60CB33F37D;
	Fri, 27 Feb 2026 04:02:18 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="gKuM4nI1";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="DO8tA6xk"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5254233F38C
	for <devicetree@vger.kernel.org>; Fri, 27 Feb 2026 04:02:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772164938; cv=none; b=p/hvZpRNVN4vJibusGJ6ypqG2cf9SEnSuTG8FHy2tp+gfR++DEWtR4HsH4Kz1Roxc4mBfxt6ZsuQqcB5P6SODMEsgSRtzjwuod60iCgDxH3GPwHWHwUEHREoc3Tptz6x95Xsnm7iOQpImt2FFGF5TqZ42wHkNLIfmY0gjl04sJs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772164938; c=relaxed/simple;
	bh=q3o2BJzqzs0/ahB44SoiYg9kTUXohZo8iM/MD7ixmx4=;
	h=From:To:Cc:Subject:Date:Message-Id:MIME-Version; b=HM6WpjTXKtvnMrZb7a8XfgxSmjqruV4IpE0N00j3U+tou7SxTZR99D++s6ZWwGSmN1++TkTw5eYbMZW2DswfE42tz4kqer/n3NWJVAMpTuSjQVmbGMucHM8YmSWZ/V7vcAsFiKowF5jdpVld+Nn/kTBrXW0JUdfSSLUJ3+UaYwc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=gKuM4nI1; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=DO8tA6xk; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279862.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 61R2K3Kg236183
	for <devicetree@vger.kernel.org>; Fri, 27 Feb 2026 04:02:15 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:date:from:message-id:mime-version
	:subject:to; s=qcppdkim1; bh=723Z8bnd8+6yPMWWqAQMSPdPbcjG1N6LvwE
	95AOgiuA=; b=gKuM4nI1f3LLKjicGgoKRJeuHvqojtrVEEfc84YUf3NtEwODTNB
	bRVi3St/tgc3Ll6VHlgh3cEAsleRJlSfQlUMvZLhN5wfoz7kaRb/J2ZCyFvctKoW
	Cl4aNUiRP42t4XVSpNnZH/ISH1X3uqDzT6nMWQwnWan/K8o8pstDFzr2QwSeHTFD
	R5QsYvDDZLeiHj0WNjk2wwJj+sIAiIbQUFUCuyo0kNNVFv+ZMPaFBxuLbSjD4YtR
	/DMVgHH7dyCcbc74z3A4oZz1Xjo7EsZxZBaXaJ9/BMRDxJaHxSBhCBunPf4r/aXh
	4oqYCKK66SPraavSU6GFkWnQ0EIgExtVEIw==
Received: from mail-pl1-f199.google.com (mail-pl1-f199.google.com [209.85.214.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4cjx1xrx24-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Fri, 27 Feb 2026 04:02:15 +0000 (GMT)
Received: by mail-pl1-f199.google.com with SMTP id d9443c01a7336-2aad67a3ca9so5901395ad.2
        for <devicetree@vger.kernel.org>; Thu, 26 Feb 2026 20:02:15 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1772164935; x=1772769735; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=723Z8bnd8+6yPMWWqAQMSPdPbcjG1N6LvwE95AOgiuA=;
        b=DO8tA6xkM+8MNOr5ujNS/HK0xQJOQ0LvLyfXDDYhRTz0+ktiCmCJwnZ5YIMzCWjg1f
         89/ks0rYxwsL5vTxv62kUYMhVc1c6/zr+yQW2+I4nrsMSEMnfuyKarko23u3fRQH8wcM
         wxyQvmfL8J0lcd+YBFN9PeF4iWCB+6UjlH8EZS6TFt6lZvCoD3/BklCdd+XS15RbuzBF
         aT3DUyMohnR0XubB3ds7N8vO7un4Al7ZjU4hsOfPv0KpGbpibZietkXWMw253zNuU+eh
         a0/oFsTkITglys68nGejW5R/xPJG2wc6f3br49h8656+AXzWGUO24hwMf17YylQ95H1B
         jVWg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1772164935; x=1772769735;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=723Z8bnd8+6yPMWWqAQMSPdPbcjG1N6LvwE95AOgiuA=;
        b=vSPxVogmnlHTL0mep8nt1XEAc6A22g5rBoMRx/udDp9K7J+nw1jl9anzGeRnlCoYJ/
         bjkj7ROurQPzmJIDfjINV1dz1nWoZIp8KKzNHd3FtinQQW3wr8iFnR6PXKQPhkNI9tgf
         adpESs2C4yA8rR1Xd3/PUNVf9Mv2sZ3RmtDAgZm9sUYeJnmggG5sWoX9P9FU1F1H41nz
         rRkbGzUfXWDyVgIYAYT0ftas0lf6rqQR0CEXp6syvkkXvITpk9en9JvPVE+DZpMA9Awe
         4VUIaB3dY8ExP1+vtutDve98jTOnug/whrANZarH3ibp0mFB0a2gcYEvWQPH+L653cU/
         dsKA==
X-Forwarded-Encrypted: i=1; AJvYcCVqAklS5ljPhXQj1//5HcGWncMyvP7iuw6PZ6Exw+Fx1kWjR/YdyyAHVQW+4vvFfEQFWIsre5FKEs7V@vger.kernel.org
X-Gm-Message-State: AOJu0Yx/sE7ateWxLlz6Tok6C6iB1nkdZU+SFEKueQtP+hAw4cnUSbYM
	zPWw/mjTbauYp3oa+EG0vGnsK8ZDnQJ5amwFbNi7uxrHv66pyvuBnhqPHMbvG0bWDRwkfQWXgHl
	BflEBTPMRbtP1xE+D2/MZldKh0OpwYYXHuLNSlNadKsDttPDr6BDoccWcxL70g2Q=
X-Gm-Gg: ATEYQzy/k5RP4nwjIBevyivzusIO/6pX7MItEZQ4wTzSn7XMuDh6JYvjt+GfSli7c4N
	8R1r6cddUnLNhjvrtDoSQKCN+agLBA3Zaozg+MPLDkSkPqQ//PMh+4whJPl2fPsAjiGGKIonIcA
	RHx+ijNW0HDBlyUmhK/qiKZwq3eCqJMR/lpSIauioFtIaIJyNYmIyIm84ajHKO3Zk6+/QPSyUZj
	hPO41XGr6yJEuVqMbJci5ETBY/8YI219MCPx1Bhjo7SA6zShCrdekdMVAOg8uhw5kz0aOjumkRe
	uzclDIHB6Z2JFbeRwB+aFrMxDz266XbaTBG5QYKvfOt6bk513wOpl2nM6jNYS5EtOL5IymDlHFv
	PgtVvzCpcXQYBLyUzc2ZfH632wdSiVsd7/n1C2T+Yt+eeRNHT7Ydz
X-Received: by 2002:a17:902:d488:b0:2aa:fb6b:f985 with SMTP id d9443c01a7336-2ae2e4e849fmr10006735ad.8.1772164934784;
        Thu, 26 Feb 2026 20:02:14 -0800 (PST)
X-Received: by 2002:a17:902:d488:b0:2aa:fb6b:f985 with SMTP id d9443c01a7336-2ae2e4e849fmr10006435ad.8.1772164934325;
        Thu, 26 Feb 2026 20:02:14 -0800 (PST)
Received: from hu-sartgarg-hyd.qualcomm.com ([202.46.22.19])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-2adfb6a0409sm59843775ad.44.2026.02.26.20.02.09
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 26 Feb 2026 20:02:13 -0800 (PST)
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
        Sarthak Garg <sarthak.garg@oss.qualcomm.com>,
        Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>,
        Abel Vesa <abel.vesa@oss.qualcomm.com>
Subject: [PATCH] arm64: dts: qcom: hamoa-iot-evk: Add SDC2 node for hamoa iot evk board
Date: Fri, 27 Feb 2026 09:32:01 +0530
Message-Id: <20260227040201.3700324-1-sarthak.garg@oss.qualcomm.com>
X-Mailer: git-send-email 2.34.1
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Proofpoint-ORIG-GUID: bYPfmmOQO9GJnKiOqeoLOJ6Ahb4V07xp
X-Authority-Analysis: v=2.4 cv=Vtouwu2n c=1 sm=1 tr=0 ts=69a11747 cx=c_pps
 a=JL+w9abYAAE89/QcEU+0QA==:117 a=fChuTYTh2wq5r3m49p7fHw==:17
 a=HzLeVaNsDn8A:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=u7WPNUs3qKkmUXheDGA7:22 a=_K5XuSEh1TEqbUxoQ0s3:22 a=EUspDBNiAAAA:8
 a=zd1v0PDNnpibcOQwGqsA:9 a=324X-CrmTo6CU4MGRt3R:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMjI3MDAyNyBTYWx0ZWRfX83qlcufcnaoc
 5nWyKV5C/7udMqIowlPYJ7sbiJKFAnFadOU1QYMF9o7iVLGbKLAMbOUi9FUG2R5deOPjzjEnAga
 PNCUvI6St8cOrWWayZAhCPGfwfwsoSX/lGrZcklTR0WekfkI2lq3jBjJt4sz6eUFhVtnfJqI/ZJ
 EkhLXcr9LpBrkVTy49mpTPlJjQo/YhlwClNDTgR3BZ6f/4OMMYKqwd0KmJ7h36KMjYnHEI24Zfa
 Ahmk14+7EsYH/sGvhekJBUuqBgERVOerMg1jivC253tS0faVp9xk24pPj25P7g4oFtI7b46y1oH
 qpSKdtJHe0nLMZJNpxafgciTImO2L/A3J7YQvMXtweriPLUV/c2/bDK++dq2q+HKIgNJLTTWb6x
 3FcRjWP4Ej54NF7AKvN/WCmhpeL90lz14jdueGE8nTQB/cVj/psqlCezwC//FCP49db5Yov+UUK
 Gx2kG/tgTns4Cu3DjYQ==
X-Proofpoint-GUID: bYPfmmOQO9GJnKiOqeoLOJ6Ahb4V07xp
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-02-26_04,2026-02-26_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 lowpriorityscore=0 clxscore=1015 phishscore=0 bulkscore=0 spamscore=0
 impostorscore=0 suspectscore=0 adultscore=0 malwarescore=0 priorityscore=1501
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2602130000 definitions=main-2602270027
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [0.84 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	MID_CONTAINS_FROM(1.00)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	R_MISSING_CHARSET(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[qualcomm.com,reject];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c09:e001:a7::/64:c];
	R_DKIM_ALLOW(-0.20)[qualcomm.com:s=qcppdkim1,oss.qualcomm.com:s=google];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[18];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_FROM(0.00)[bounces-269043-lists,devicetree=lfdr.de];
	DKIM_TRACE(0.00)[qualcomm.com:+,oss.qualcomm.com:+];
	ASN(0.00)[asn:63949, ipnet:2600:3c09::/32, country:SG];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[sarthak.garg@oss.qualcomm.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sto.lore.kernel.org:helo,sto.lore.kernel.org:rdns,qualcomm.com:email,qualcomm.com:dkim,oss.qualcomm.com:mid,oss.qualcomm.com:dkim];
	TAGGED_RCPT(0.00)[devicetree,dt];
	NEURAL_HAM(-0.00)[-0.997];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Queue-Id: D72171B275D
X-Rspamd-Action: no action

Enable SD Card host controller for hamoa iot evk board.

Signed-off-by: Sarthak Garg <sarthak.garg@oss.qualcomm.com>
Reviewed-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
Reviewed-by: Abel Vesa <abel.vesa@oss.qualcomm.com>
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


