Return-Path: <devicetree+bounces-271906-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id PxpHAiGUqmkkUAEAu9opvQ
	(envelope-from <devicetree+bounces-271906-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Fri, 06 Mar 2026 09:45:21 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [IPv6:2600:3c04:e001:36c::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 6AE2221D478
	for <lists+devicetree@lfdr.de>; Fri, 06 Mar 2026 09:45:20 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id D1ACC303A3DB
	for <lists+devicetree@lfdr.de>; Fri,  6 Mar 2026 08:44:52 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A120837A485;
	Fri,  6 Mar 2026 08:44:51 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="gOW631vU";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="VaiMbg7L"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0BE05372672
	for <devicetree@vger.kernel.org>; Fri,  6 Mar 2026 08:44:49 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772786691; cv=none; b=U0l/4ALvF38V9Mb3cTu4wlf/YJ7nGhzMhzLQBGj7ZlbHDBd6adaVmSAfq7va8MnxN2bApmKWc36yeKCy6tuBzo7V21a/0uwKlNdl5i3arJGreAttkrBqJpRxWFslaURX6JZkY8Oj4M/5ze27kdpmqHU7OF4lmAfkQViiTUjTZFA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772786691; c=relaxed/simple;
	bh=Zg9lmcifY79a8Un6AZk/xfMz8WdGCWi9sZcIyDdPApw=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=PjK/1ytEcASTqGD01Mrb4zv9CjTMnKXWuZ3Z1sBUOUZaj2LHuazuhsDNp7PuosJVzhP7KYPI1XHFUdN74TlI6p1beAJ+98oicUUnsddjzsREoZJRAUP65emPQ/gYqosi49SXKWJSYzCmbQRSxb/kCtNSZY0D45RpUQiKd/S4aPM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=gOW631vU; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=VaiMbg7L; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279868.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 6264aJQQ2802406
	for <devicetree@vger.kernel.org>; Fri, 6 Mar 2026 08:44:49 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	EO53ulTur0o31/KzMiAB1NJVdCgiA+KDt8dS3rNnu2A=; b=gOW631vU2tJ1433B
	F9WOYLc7th/1eP+Me70Px5OTtSkqVWoA6mSYasF8pvqtDYuouLzzn8Z04gdxv+Uw
	DfHaNK4qkFX2oBBmsNxuoNBmEFGzbGl1hIOFqh8lqBgEg3XRsl3W8xg2rQPcxQJ0
	Xi/zi/zyVCUVdtrb5JEhNro81Sql846noRonNp7IajnceTFCaoUeNTJ3wgYe5ztx
	NqmgYkS+qykru+jJT0mLrhgAGVngeiaXqxRvlhM2EdYgBLMVLtyLKcjEJ7b2Af6/
	Upno8c8J3lWPAkTHuNuYWOBbXS2mK0GVgCqVyrBkoQY/LERJiZ0RO5jx+QlEIFcN
	Lx7qPA==
Received: from mail-pg1-f198.google.com (mail-pg1-f198.google.com [209.85.215.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4cqgp421y0-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Fri, 06 Mar 2026 08:44:48 +0000 (GMT)
Received: by mail-pg1-f198.google.com with SMTP id 41be03b00d2f7-c709551ec08so31924954a12.3
        for <devicetree@vger.kernel.org>; Fri, 06 Mar 2026 00:44:48 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1772786688; x=1773391488; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=EO53ulTur0o31/KzMiAB1NJVdCgiA+KDt8dS3rNnu2A=;
        b=VaiMbg7L+rHykaVa2IfYlcg3dn+myoVbBlhhwb4c16WPXwKFOrBCM8KHCSR6b1lFkT
         tRVpJYllZKMEHpPak0DWE95B7ecZCIPkbU9z2t/wCfyEgFa0WcXb2DA8UpXDdP8CQQ2A
         siMY1BS2VzclrK5JiZso101oxcffpWYaC8YCKcBAYRXKtdwOjYy97/taJGnhAsIem5G2
         LHWzkHEX9LMvcF+J56nrwsDbU5wi3IvBSER5fdaHQyLquHcQDsjLJekEemZeK5jxhMzy
         CxT7Nq25YAWiKqe2eDLPEl1B+Y7tts0rIWcz52STbmiXq2mVEpR1t8mvISzkCu3EHFQ/
         No7w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1772786688; x=1773391488;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-gg:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=EO53ulTur0o31/KzMiAB1NJVdCgiA+KDt8dS3rNnu2A=;
        b=PFNH6cZgoE0w0ZxfrfYNecPkAxwff1scLkKCLG//spdAhcbBOmJqfiY1LV1Jh8K9mi
         cHPeQ2x9JHX3yhqQR4xzaiWN8tPSz2rIFEeuSfJQJvbYjXcXU9SHgYUdJKy8FoOwhbLX
         3U16H5qaW420TvC8br63k2bqT+cRTfp0lq6OMFmHN+vOe5FRfSs1yc1UcBWemqa2I7aK
         tfpKF7iWHBAyiFVWoNA4ig4pBY+TxZKK89L5lYe0KpZrIgDM3W1+H8PlIlV8J+r6gn5K
         7p7+juvvENoXrPHFlC96LMhO+aG4Xlme/y/WnUY4hBVDmydlePD98XlfjAqx+s0klZM0
         Px1Q==
X-Forwarded-Encrypted: i=1; AJvYcCW7wd2uRySnOqJ+WlBgJ3lz9knlCXMBAxBTY/d6scqZu6Zw1YB/vQWui7K2tV6T+p4WOjsEmy3oat/I@vger.kernel.org
X-Gm-Message-State: AOJu0YyE3HHf5bOrJUwsl2p0EAZuif55A0IgbupueV0kifVpelzZAHrp
	1ok0QmBtbP4pp7G0F1qHtl7aWWqxRBGis5PVz9OnE+6fWJ917at5c+UbrVedPsB1nnis/NckXbK
	0dPKn9Kr8mn04Vg2tn+B1GTbwsf07Xr5DNOpQsWsssN7rBjyTEqzSXxTzaqoupY6j
X-Gm-Gg: ATEYQzwHkVsCWMxMK/c53Mky4gJPEO50xyOj0u37kQlQHyEqANESM9VATFQFaDKYktc
	/Xnts1aBdUjiU4ibcjXfeUGdCjJ/r+qMrrWpapIXdA+bQ7sxvCI0Vz0/jnJxCvK99vFNSuKSOUc
	50LhkZym4mFbxmI5BOUnRsq558+uyuIg2vh8/qq8Gk6PxTp5lBCEOMmS7EpEawjhWwU9oIglbbu
	IZNqlDlmFdjfvh0CUJQ/yPr/32CPUO13sYoaveRzxf21wz0YjfdQIXMpikfD06m3j0CVVgJDFUs
	BfxptWLQNQw7/7qqAFBgmmPRdIwvSoDIhAwI60xVKy9WPKfVtfw2SQjlDPPK59jX/vPOipYNUo2
	sMRc/FkYIZ6YJxWPHq3+QTc1SUTn8XawmN1tpr1EspHeB6DMY5HuKrgZNqlZpkOazfDfUVW0KZy
	IEpPjt+U+ivybdWUibS+JB
X-Received: by 2002:a05:6a00:7483:b0:829:710d:a46b with SMTP id d2e1a72fcca58-829a2f7b48emr1186699b3a.41.1772786687867;
        Fri, 06 Mar 2026 00:44:47 -0800 (PST)
X-Received: by 2002:a05:6a00:7483:b0:829:710d:a46b with SMTP id d2e1a72fcca58-829a2f7b48emr1186659b3a.41.1772786687249;
        Fri, 06 Mar 2026 00:44:47 -0800 (PST)
Received: from WANGAOW-LAB01.ap.qualcomm.com (tpe-colo-wan-fw-bordernet.qualcomm.com. [103.229.16.4])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-829a4636c74sm1393573b3a.12.2026.03.06.00.44.43
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 06 Mar 2026 00:44:46 -0800 (PST)
From: Wangao Wang <wangao.wang@oss.qualcomm.com>
Date: Fri, 06 Mar 2026 16:44:30 +0800
Subject: [PATCH v2 2/5] arm64: dts: qcom: purwa: Override Iris clocks and
 operating points
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260306-enable_iris_on_purwa-v2-2-75fa80a0a9e3@oss.qualcomm.com>
References: <20260306-enable_iris_on_purwa-v2-0-75fa80a0a9e3@oss.qualcomm.com>
In-Reply-To: <20260306-enable_iris_on_purwa-v2-0-75fa80a0a9e3@oss.qualcomm.com>
To: Bryan O'Donoghue <bod@kernel.org>,
        Vikash Garodia <vikash.garodia@oss.qualcomm.com>,
        Dikshita Agarwal <dikshita.agarwal@oss.qualcomm.com>,
        Abhinav Kumar <abhinav.kumar@linux.dev>,
        Mauro Carvalho Chehab <mchehab@kernel.org>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>
Cc: linux-media@vger.kernel.org, linux-arm-msm@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        Wangao Wang <wangao.wang@oss.qualcomm.com>,
        Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=ed25519-sha256; t=1772786674; l=2376;
 i=wangao.wang@oss.qualcomm.com; s=20251021; h=from:subject:message-id;
 bh=Zg9lmcifY79a8Un6AZk/xfMz8WdGCWi9sZcIyDdPApw=;
 b=0zQDnxv6QtoP/rZIQFUZlKVUWWFDx1aFsHudgAEKJfPqZVakmGjs1phqgj4EiYRgBhp3LNdqO
 gbfGH2rX8J2AjTSQLrUqBCEPmPM5KqHv2PkQ4W0pysedsynZJS/U+4q
X-Developer-Key: i=wangao.wang@oss.qualcomm.com; a=ed25519;
 pk=bUPgYblBUAsoPyGfssbNR7ZXUSGF8v1VF4FJzSO6/aA=
X-Proofpoint-ORIG-GUID: 9czeWn_P-oqZNktD82qjZmCgP1pIReOD
X-Authority-Analysis: v=2.4 cv=LegxKzfi c=1 sm=1 tr=0 ts=69aa9400 cx=c_pps
 a=Qgeoaf8Lrialg5Z894R3/Q==:117 a=nuhDOHQX5FNHPW3J6Bj6AA==:17
 a=IkcTkHD0fZMA:10 a=Yq5XynenixoA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=ZpdpYltYx_vBUK5n70dp:22
 a=EUspDBNiAAAA:8 a=4TMTxM8xbnWuMOlFmbIA:9 a=QEXdDO2ut3YA:10
 a=x9snwWr2DeNwDh03kgHS:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMzA2MDA4MCBTYWx0ZWRfX8igJ3Pr6bNka
 1vcnQNwbQHapfCcAoyDl7JPA6HrTOEJxqU5aP8fvtr7EorVDhYSryQ5/6S3A+Uxc6flhhT8Cmwr
 RI/Js13TKGFCUEom+0lvgB40FV/b1wwU2jUGB7bNCJBRPM+Vx4jkK6cIX4N1APe6NTMqkeny98G
 FjBRQC9fREJmg7q61T9UpTQFjJZOXo0BymudfCUAHDA8vaqUARqDmqJTR/g9sn1+ND8NZSBGIpp
 SMqbadfVjvzz3420hzKdBGfTuxGl7fpTbR0m5qJt8aaSUf1mUqxaOcxAGQtTVl1HZBvJ7aR2FvT
 x0r4R6GyZpF2sebd1CC6LilKcdWa3gM3W3WJaezihwSWQ8AsO7HJBiSYjBUw+5dWW0njNkCQ5xv
 xaY17gne+rIxAR31V6+dbzDmIBj49ItxMojVeKjy4ltT90sgO9qSIp31/nsi3Xps//IscrPq4xm
 rW8UxU56t9WTwxvy9WA==
X-Proofpoint-GUID: 9czeWn_P-oqZNktD82qjZmCgP1pIReOD
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1143,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-03-06_03,2026-03-04_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 clxscore=1015 impostorscore=0 malwarescore=0 adultscore=0 lowpriorityscore=0
 priorityscore=1501 phishscore=0 bulkscore=0 spamscore=0 suspectscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2602130000 definitions=main-2603060080
X-Rspamd-Queue-Id: 6AE2221D478
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-2.16 / 15.00];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[qualcomm.com,reject];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c04:e001:36c::/64:c];
	R_DKIM_ALLOW(-0.20)[qualcomm.com:s=qcppdkim1,oss.qualcomm.com:s=google];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	MIME_TRACE(0.00)[0:+];
	RCPT_COUNT_TWELVE(0.00)[16];
	TAGGED_FROM(0.00)[bounces-271906-lists,devicetree=lfdr.de];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	DKIM_TRACE(0.00)[qualcomm.com:+,oss.qualcomm.com:+];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[qualcomm.com:dkim,qualcomm.com:email,oss.qualcomm.com:dkim,oss.qualcomm.com:mid,tor.lore.kernel.org:rdns,tor.lore.kernel.org:helo];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[wangao.wang@oss.qualcomm.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c04::/32, country:SG];
	NEURAL_HAM(-0.00)[-1.000];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Action: no action

The Iris block on X1P differs from SM8550/X1E in its clock configuration
and requires a dedicated OPP table. The node inherited from the X1E cannot
be reused directly, and the fallback compatible "qcom,sm8550-iris" cannot
be applied.

Override the inherited clocks, clock-names, and operating points, and
replaces them with the X1P42100-specific definitions. A new OPP table
is provided to support the correct performance levels on this platform.

Reviewed-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
Signed-off-by: Wangao Wang <wangao.wang@oss.qualcomm.com>
---
 arch/arm64/boot/dts/qcom/purwa.dtsi | 53 +++++++++++++++++++++++++++++++++++++
 1 file changed, 53 insertions(+)

diff --git a/arch/arm64/boot/dts/qcom/purwa.dtsi b/arch/arm64/boot/dts/qcom/purwa.dtsi
index 46ffe5353f3d2fe20e70fa8373c2591863708c61..9db77fc734021ae2986ec6a231b1f6f5461e6688 100644
--- a/arch/arm64/boot/dts/qcom/purwa.dtsi
+++ b/arch/arm64/boot/dts/qcom/purwa.dtsi
@@ -153,6 +153,59 @@ &gpucc {
 	compatible = "qcom,x1p42100-gpucc";
 };
 
+&iris {
+	/delete-node/ opp-table;
+};
+
+&iris {
+	compatible = "qcom,x1p42100-iris";
+
+	clocks = <&gcc GCC_VIDEO_AXI0_CLK>,
+		 <&videocc VIDEO_CC_MVS0C_CLK>,
+		 <&videocc VIDEO_CC_MVS0_CLK>,
+		 <&videocc VIDEO_CC_MVS0_BSE_CLK>;
+	clock-names = "iface",
+		      "core",
+		      "vcodec0_core",
+		      "vcodec0_bse";
+
+	operating-points-v2 = <&iris_opp_table_x1p42100>;
+
+	iris_opp_table_x1p42100: opp-table {
+		compatible = "operating-points-v2";
+
+		opp-210000000 {
+			opp-hz = /bits/ 64 <210000000 105000000>;
+			required-opps = <&rpmhpd_opp_low_svs>,
+					<&rpmhpd_opp_low_svs>;
+		};
+
+		opp-300000000 {
+			opp-hz = /bits/ 64 <300000000 150000000>;
+			required-opps = <&rpmhpd_opp_svs>,
+					<&rpmhpd_opp_svs>;
+		};
+
+		opp-335000000 {
+			opp-hz = /bits/ 64 <335000000 167500000>;
+			required-opps = <&rpmhpd_opp_svs_l1>,
+					<&rpmhpd_opp_svs_l1>;
+		};
+
+		opp-424000000 {
+			opp-hz = /bits/ 64 <424000000 212000000>;
+			required-opps = <&rpmhpd_opp_nom>,
+					<&rpmhpd_opp_nom>;
+		};
+
+		opp-500000000 {
+			opp-hz = /bits/ 64 <500000000 250000000>;
+			required-opps = <&rpmhpd_opp_turbo>,
+					<&rpmhpd_opp_turbo>;
+		};
+	};
+};
+
 /* PCIe3 has half the lanes compared to X1E80100 */
 &pcie3 {
 	num-lanes = <4>;

-- 
2.43.0


