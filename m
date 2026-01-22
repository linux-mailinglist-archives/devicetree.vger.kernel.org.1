Return-Path: <devicetree+bounces-258311-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id KGsdDjsFcmmvZwAAu9opvQ
	(envelope-from <devicetree+bounces-258311-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Thu, 22 Jan 2026 12:08:43 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from ams.mirrors.kernel.org (ams.mirrors.kernel.org [IPv6:2a01:60a::1994:3:14])
	by mail.lfdr.de (Postfix) with ESMTPS id D770065BCC
	for <lists+devicetree@lfdr.de>; Thu, 22 Jan 2026 12:08:42 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ams.mirrors.kernel.org (Postfix) with ESMTPS id C127A6C737F
	for <lists+devicetree@lfdr.de>; Thu, 22 Jan 2026 10:52:33 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 3B3D442B720;
	Thu, 22 Jan 2026 10:50:07 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="Zv2rITlz";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="b8e3ygF2"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C49E0429826
	for <devicetree@vger.kernel.org>; Thu, 22 Jan 2026 10:50:04 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769079007; cv=none; b=LWRkkvvMYwXO8VdDtPEGJrDN4qW/Kw+Yqm9lMoQJwdV/tTtREIj/0NzW1ESuPYkKea1PfddHUZ4oO9B8IDnwInh5J0wch5RWDfzdkdlXpcGZX8qJx1vMrDjEzbKked8R3EJdMvr5ZzYVSMOCtiKF1ZUgyvzR/HQj9ibhqt65PDs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769079007; c=relaxed/simple;
	bh=2WG5aoisKJwerkvnpytr8xGIA19LajXbCLZsav5MoQ0=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=dZIFvgh4vxCPax0tFJaMiiH5e/3pcFKrYySSji+Lja69C/PlRginQCmbSI+ZdSQDBjcRkYGWoBAhu89AcoBqQzjgXFaKN0kGHm9IXy3KrXOAA48qrvzBhQvodtpLGmCLpH7Twh06mWaxnT/ARgQZlGIB+5Hsee48h6V/TkZYd5c=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=Zv2rITlz; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=b8e3ygF2; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279864.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 60M840rR2282653
	for <devicetree@vger.kernel.org>; Thu, 22 Jan 2026 10:50:04 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	T/UfWtw5ZQfseqhZRXzgqUeaU3ggF8Gp/sL3W86n7mc=; b=Zv2rITlzggNvS3KE
	HJ6wXwDfRMydyGn8W0+KaJ75ZV1lf2lijfbO7WT8i+TcxiG+w5v4jOaLRSZ0M9PN
	+gV4dk2kX7hPQzc7cL9iU/+Cao7nQ8mMQ9fwgrvT6r6SCY+fz3Fz17hDCdemFgyN
	zB97T0tb4p8HYKMgfXJyAWKl/zcgV4Q8dp4JCfXpLyhSKYu+gJixBDsg/j9VyRWa
	VWT0iIwCMtkvPw8pGtfeyWNBJZg8NoLoqDTNibLq0v9hyO1Tn1QMc5r7/kNHICV4
	AGQTbW+pLaKAZIxKkKfjtVVXh1bGGg8TU8sUfdPVg8WUhIdQ4cq4CoMQPnHLZO7/
	Ymlz1Q==
Received: from mail-qt1-f199.google.com (mail-qt1-f199.google.com [209.85.160.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4bu7fat0sm-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Thu, 22 Jan 2026 10:50:03 +0000 (GMT)
Received: by mail-qt1-f199.google.com with SMTP id d75a77b69052e-5014e9d9114so21441041cf.1
        for <devicetree@vger.kernel.org>; Thu, 22 Jan 2026 02:50:03 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1769079001; x=1769683801; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=T/UfWtw5ZQfseqhZRXzgqUeaU3ggF8Gp/sL3W86n7mc=;
        b=b8e3ygF2eLWqNAUpS3qcU79uEOIdPZ3fbhgk9eGunLzmbZegwhQ6sVzUMYQwKwPCtv
         0kK4We/kfzyYZmEPrL/omr4HypMBmwHorxVRkFyoO2siH1dUhTKFgVfRMhFr83iHOGX3
         /IJ01g+jsGwDZJUH5IvGNHm24nwFtEY8M+Lz6CClSGpk/qtavAxowE2GVfI60nVgskyF
         Yb9h2+51Gx5usmFloEFlLEWI0IHC9Cq7iQM3COkoVyyM5y8AV28ivNK6AWancpAInFLP
         9wl179bOwJ0lN5ys6swWg6gnNwPJPjztnwL77Ck2hQZbjCwlPa8FQzA3VrI27nLeErwP
         fauA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1769079001; x=1769683801;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-gg:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=T/UfWtw5ZQfseqhZRXzgqUeaU3ggF8Gp/sL3W86n7mc=;
        b=Z6EXJNedVlcIA+w1bGadZ/9CgFNR1ertReoLM9+SkeXHs9G1bQgifacHzyBU9n5zJQ
         Z0JHZmYxQPQN6iHq0ENhg8bTqmCWFmTtz8TUU7UmDLvoT0IJsRL7VBPAi/Afi0E1k7un
         X1h+SrWH13MOfB+Xvw3pL2R8MNEffLCwCUZzrPxJnNHqV2JFb+AV2KxjKwn9GlEHrgBN
         //164/5t+l8RPS+aA0+gHkJta2AX4Zvos8cAtPMtaKNjd/Bk3jjg8kmpjtrWyyGf684e
         W4CmJIVgwNh5PtzU7pPqIWBXVu6Itw8zik/frn0vJf26CcuD4MpLtVyXYpTQj0aeIOw3
         4BNA==
X-Forwarded-Encrypted: i=1; AJvYcCXpof2Qr58wYtYQF7LdC9RnhJx4QlXswC5kNOd0/XKznbCYo3K7r4erEtGTcbgC6Nr3kpC/94ngCDoN@vger.kernel.org
X-Gm-Message-State: AOJu0Yy3tiMKynG6UCKOIRgUhsrfJY3oqV4xnsS2GH0II245heotXOCG
	86gNS4hrRZjOs/nbjvuqivgTj40jLE4fosY4+/rsk4Hgcl7+Jvce92mxt7r97V+AemPvOdCiJ69
	G15JrogEtWlq71zJT6GBObcXiz8z1RBtFRimibbnt5U23qwcgvikoVEhqqlXe8aLm
X-Gm-Gg: AZuq6aJ4PU8Up4j9UQ3dsXivjX3aP5y1qOC5MPXK0i5kG1Ekqj2pGcH9sYElkEyCSMA
	/e4elForUoWGEizK8cWDU2HejkkfDdIAWspAxNAui/J8BZF3NTXYdaIhuuHTVKWYYHqOkAC8TBz
	dbDAZuEKGFZocbPLkhHUpJLe4y3mjjv24aA5n0dnn+yCwE9HwY5XGT2W1b6YwGbOKUsxdBv7wL2
	p3j+2YcFzD5DkzlRza6xGWTZ/eMX0t3vpCLtBsgmu14bx6PGYGfVWZ0aC2SGnXgjCo/6Hg3bFRg
	GW22gRncdG80So80GwP9xMoyRErhxQW7LGnKv37aoUW/C41speTRv9XIsD/nBR8vutGYsUkAm0G
	qh0Jel7wegMdA9medMufge/zEYf7pI9Tzme4vQlZs8795zPssfE260ErT4eHV0iCk3i83YDWkWx
	1o
X-Received: by 2002:ac8:5a08:0:b0:4ee:1aab:fd6 with SMTP id d75a77b69052e-502a15e4660mr293697621cf.3.1769079000823;
        Thu, 22 Jan 2026 02:50:00 -0800 (PST)
X-Received: by 2002:ac8:5a08:0:b0:4ee:1aab:fd6 with SMTP id d75a77b69052e-502a15e4660mr293697361cf.3.1769079000440;
        Thu, 22 Jan 2026 02:50:00 -0800 (PST)
Received: from WENMLIU-LAB01.ap.qualcomm.com (Global_NAT1_IAD_FW.qualcomm.com. [129.46.232.65])
        by smtp.gmail.com with ESMTPSA id d75a77b69052e-502a1d9ee19sm121704901cf.14.2026.01.22.02.49.52
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 22 Jan 2026 02:49:59 -0800 (PST)
From: Wenmeng Liu <wenmeng.liu@oss.qualcomm.com>
Date: Thu, 22 Jan 2026 18:48:54 +0800
Subject: [PATCH v5 3/5] arm64: dts: qcom: talos: Add CCI definitions
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260122-sm6150_evk-v5-3-039b170450a3@oss.qualcomm.com>
References: <20260122-sm6150_evk-v5-0-039b170450a3@oss.qualcomm.com>
In-Reply-To: <20260122-sm6150_evk-v5-0-039b170450a3@oss.qualcomm.com>
To: Loic Poulain <loic.poulain@oss.qualcomm.com>,
        Andi Shyti <andi.shyti@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Robert Foss <rfoss@kernel.org>,
        Todor Tomov <todor.too@gmail.com>,
        Bryan O'Donoghue <bryan.odonoghue@linaro.org>,
        Vladimir Zapolskiy <vladimir.zapolskiy@linaro.org>,
        Shawn Guo <shawnguo@kernel.org>, Sascha Hauer <s.hauer@pengutronix.de>,
        Pengutronix Kernel Team <kernel@pengutronix.de>,
        Fabio Estevam <festevam@gmail.com>
Cc: linux-i2c@vger.kernel.org, linux-arm-msm@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        linux-media@vger.kernel.org, imx@lists.linux.dev,
        linux-arm-kernel@lists.infradead.org,
        Wenmeng Liu <wenmeng.liu@oss.qualcomm.com>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=ed25519-sha256; t=1769078967; l=2250;
 i=wenmeng.liu@oss.qualcomm.com; s=20250925; h=from:subject:message-id;
 bh=2WG5aoisKJwerkvnpytr8xGIA19LajXbCLZsav5MoQ0=;
 b=D4j93r8djlEVFvPHXUNxrEEMUPi8V2DnJbU02J3SwFN91DYAirb6S8cKc2/TO4Wi8hzF3ZLYt
 j71PwYeIltuBT7izRRMtbrZ8CkPgnc4JNgREU7urfXhndWGqqpfwO1U
X-Developer-Key: i=wenmeng.liu@oss.qualcomm.com; a=ed25519;
 pk=fQJjf9C3jGDjE1zj2kO3NQLTbQEaZObVcXAzx5WLPX0=
X-Authority-Analysis: v=2.4 cv=Hrx72kTS c=1 sm=1 tr=0 ts=697200db cx=c_pps
 a=WeENfcodrlLV9YRTxbY/uA==:117 a=C3Dk8TwHQYyIj7nOf9RCJw==:17
 a=IkcTkHD0fZMA:10 a=vUbySO9Y5rIA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=KKAkSRfTAAAA:8 a=EUspDBNiAAAA:8
 a=szutk0iRDVHniUSXDBIA:9 a=QEXdDO2ut3YA:10 a=kacYvNCVWA4VmyqE58fU:22
 a=cvBusfyB2V15izCimMoJ:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMTIyMDA3NyBTYWx0ZWRfXzP4UFf+26uc7
 VYCuwCu5O5U3dIQWGMsnnIX0CV5omjnGthJnK++9LYe4huizmnwu1UmnHhbgw4FneQZyCCsl+W1
 pBcOonN7F5NvSOd0bIhhYpqs1KPBdIDYiTDvhV/mt0l+MsIGfAJReDX61G13uCF3thCeJLSeEvf
 GWlOpoIMJxxebktw+qYv7Pir6Sa4++WUfBIaUGO+gYh+g8ulU0IvtVW3xjgekD+8TTMyw4EOVlZ
 cJLDCq5zav9rWKXf9AEiFFU3NqHqVLcpH5cOyMpXQOd+cJf6yZC+WhIz3B0QKnHVTdFa2Cfp2gH
 nCagdKKCI3pIxZsClKPiFF2HP1OCHu5vyulAaQxo1cvJ63qqG6JAQwbU/avPLMXGfAfKN0w/5Ax
 f+WbPT6VDMrT/XVq0kRvRomZVPsbJOA9Sx4LuDYln50usgQHdxE9ty4XBAUHW47IoaIGFfr0s9Y
 w8JBqeYZDXd6febsFRA==
X-Proofpoint-ORIG-GUID: E54_BjlHZZmqn616uBTzn06Zd4F6EfxJ
X-Proofpoint-GUID: E54_BjlHZZmqn616uBTzn06Zd4F6EfxJ
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.20,FMLib:17.12.100.49
 definitions=2026-01-22_01,2026-01-20_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 priorityscore=1501 spamscore=0 lowpriorityscore=0 clxscore=1015
 impostorscore=0 bulkscore=0 suspectscore=0 adultscore=0 phishscore=0
 malwarescore=0 classifier=typeunknown authscore=0 authtc= authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.22.0-2601150000
 definitions=main-2601220077
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.46 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW_WITH_FAILURES(-0.50)[];
	R_DKIM_ALLOW(-0.20)[qualcomm.com:s=qcppdkim1,oss.qualcomm.com:s=google];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	MIME_TRACE(0.00)[0:+];
	RCPT_COUNT_TWELVE(0.00)[23];
	TAGGED_FROM(0.00)[bounces-258311-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	FREEMAIL_TO(0.00)[oss.qualcomm.com,kernel.org,gmail.com,linaro.org,pengutronix.de];
	DMARC_POLICY_ALLOW(0.00)[qualcomm.com,reject];
	DKIM_TRACE(0.00)[qualcomm.com:+,oss.qualcomm.com:+];
	DBL_BLOCKED_OPENRESOLVER(0.00)[qualcomm.com:email,qualcomm.com:dkim,ac4a000:email,0.47.77.96:email,acb3000:email,0.0.0.0:email,oss.qualcomm.com:mid,oss.qualcomm.com:dkim,ams.mirrors.kernel.org:helo,ams.mirrors.kernel.org:rdns,0.0.0.1:email,ab00000:email,linaro.org:email];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[wenmeng.liu@oss.qualcomm.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	R_SPF_SOFTFAIL(0.00)[~all:c];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MID_RHS_MATCH_FROM(0.00)[];
	ASN(0.00)[asn:7979, ipnet:2a01:60a::/32, country:US];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Queue-Id: D770065BCC
X-Rspamd-Action: no action

Qualcomm Talos SoC contains single controller,
containing 2 I2C hosts.

Reviewed-by: Vladimir Zapolskiy <vladimir.zapolskiy@linaro.org>
Signed-off-by: Wenmeng Liu <wenmeng.liu@oss.qualcomm.com>
---
 arch/arm64/boot/dts/qcom/talos.dtsi | 51 +++++++++++++++++++++++++++++++++++++
 1 file changed, 51 insertions(+)

diff --git a/arch/arm64/boot/dts/qcom/talos.dtsi b/arch/arm64/boot/dts/qcom/talos.dtsi
index 3e1d85b6eacb90b48496ddfee2db27c586f3331e..6d28096e50546855bd762e479b66ed6214ec5d65 100644
--- a/arch/arm64/boot/dts/qcom/talos.dtsi
+++ b/arch/arm64/boot/dts/qcom/talos.dtsi
@@ -1553,6 +1553,22 @@ tlmm: pinctrl@3100000 {
 			#interrupt-cells = <2>;
 			wakeup-parent = <&pdc>;
 
+			cci_i2c0_default: cci-i2c0-default-state {
+				/* SDA, SCL */
+				pins = "gpio32", "gpio33";
+				function = "cci_i2c";
+				drive-strength = <2>;
+				bias-pull-up;
+			};
+
+			cci_i2c1_default: cci-i2c1-default-state {
+				/* SDA, SCL */
+				pins = "gpio34", "gpio35";
+				function = "cci_i2c";
+				drive-strength = <2>;
+				bias-pull-up;
+			};
+
 			qup_i2c1_data_clk: qup-i2c1-data-clk-state {
 				pins = "gpio4", "gpio5";
 				function = "qup0";
@@ -3789,6 +3805,41 @@ videocc: clock-controller@ab00000 {
 			#power-domain-cells = <1>;
 		};
 
+		cci: cci@ac4a000 {
+			compatible = "qcom,sm6150-cci", "qcom,msm8996-cci";
+
+			reg = <0x0 0x0ac4a000 0x0 0x4000>;
+			interrupts = <GIC_SPI 460 IRQ_TYPE_EDGE_RISING 0>;
+			power-domains = <&camcc TITAN_TOP_GDSC>;
+			clocks = <&camcc CAM_CC_SOC_AHB_CLK>,
+				 <&camcc CAM_CC_CPAS_AHB_CLK>,
+				 <&camcc CAM_CC_CCI_CLK>;
+			clock-names = "camnoc_axi",
+				      "cpas_ahb",
+				      "cci";
+			pinctrl-0 = <&cci_i2c0_default &cci_i2c1_default>;
+			pinctrl-names = "default";
+
+			#address-cells = <1>;
+			#size-cells = <0>;
+
+			status = "disabled";
+
+			cci_i2c0: i2c-bus@0 {
+				reg = <0>;
+				clock-frequency = <1000000>;
+				#address-cells = <1>;
+				#size-cells = <0>;
+			};
+
+			cci_i2c1: i2c-bus@1 {
+				reg = <1>;
+				clock-frequency = <1000000>;
+				#address-cells = <1>;
+				#size-cells = <0>;
+			};
+		};
+
 		camss: isp@acb3000 {
 			compatible = "qcom,sm6150-camss";
 

-- 
2.34.1


