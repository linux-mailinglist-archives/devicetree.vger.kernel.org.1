Return-Path: <devicetree+bounces-258305-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id OKzAAAIDcmmvZwAAu9opvQ
	(envelope-from <devicetree+bounces-258305-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Thu, 22 Jan 2026 11:59:14 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from dfw.mirrors.kernel.org (dfw.mirrors.kernel.org [142.0.200.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 70BD0659E6
	for <lists+devicetree@lfdr.de>; Thu, 22 Jan 2026 11:59:13 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.mirrors.kernel.org (Postfix) with ESMTPS id EB161885D13
	for <lists+devicetree@lfdr.de>; Thu, 22 Jan 2026 10:44:42 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 2E3B242980B;
	Thu, 22 Jan 2026 10:41:42 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="jX01lWX3";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="KSlQgOKB"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 97FDA4279EE
	for <devicetree@vger.kernel.org>; Thu, 22 Jan 2026 10:41:39 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769078502; cv=none; b=EcumdkYvZlTVALS4FoVct16gF/CyH2uPYnFwTAHQQ+/XRR9WMptkaxkQcXvO3+COX4TLk7t5nhf0NhkhYNWY2/Xkojdnqk0e6fYZ86bXCuJ7HFk4impQCBIDcJz0AgkOQvEEry1KpSluoRH4vVScuEZmbe13UOYJKB4H19MqiUs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769078502; c=relaxed/simple;
	bh=urisQog5JZfbdirBxu5tGAO+ASUUaW9dPoY/c9Nj33A=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=ON0xZAa/Xw7kWkMwXBKXv6588ScPVimGn6rpI5JBNobVyqfpanMnr1J9v720tQZ/k38zuTBR1hGtgndm5UKrSTVI9V/hv23g74Lq/5+pLKuNkVOS2wy2bYacAnR/v+9VzKXY243llAO60zdADbyPIBE2XIU7Zdz9CFCRFMGi7Y8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=jX01lWX3; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=KSlQgOKB; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279873.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 60M83dRq4060158
	for <devicetree@vger.kernel.org>; Thu, 22 Jan 2026 10:41:37 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	oYe3a+X8RQV757haNblqDrC0UCkSImr/La6BxbOeCBI=; b=jX01lWX3yFK3QBsd
	L11wmoR0sLo16up3YONxLEHLJk2fQa8+O3fwOBkgB+dmzXIWC4E1F/EnEjOf6Pyk
	OwOSeGz3EvSWgknLzrr+rG9KJo4HIvZloVqTT6wDcqTQHGbUDTsgHJopNddxjtzU
	faOtMzyWbz5okd4Ra+b/IFTL2RXtUPduPNsANfSOHjVAoZf3bKDHODF1haHbpmuG
	6Rm3fMF3SGo9IIUJUCb7QDejdTHI3KBUfZzwNIehxvs4hLLHji9AcKfCM9WyFus/
	Ac7IWRkCfS4o45LxpNfVFPA3oEDdHuK2XrLeiwzsasYQMhtxZOEt/pNGNGg89CmY
	Bi61pw==
Received: from mail-qk1-f198.google.com (mail-qk1-f198.google.com [209.85.222.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4bu7nbsxp5-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Thu, 22 Jan 2026 10:41:37 +0000 (GMT)
Received: by mail-qk1-f198.google.com with SMTP id af79cd13be357-8c6a0ec2496so202768785a.1
        for <devicetree@vger.kernel.org>; Thu, 22 Jan 2026 02:41:37 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1769078496; x=1769683296; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=oYe3a+X8RQV757haNblqDrC0UCkSImr/La6BxbOeCBI=;
        b=KSlQgOKB1ReCIV6JrVt56GVhm4w5KqkhhN9wAC0VuuXSz3Jwz1ir7xmJfvCKRLKCKC
         n54owv/sUR9lwvTGZeclWHhus7JugkSSx3IaFazMW8kXIgZwgintOLx6a7L+d+vHQZx6
         WBQxKa1LlIKF56LAx0hB3lO1V5zK7f+YfMX8ocnc2QkAOxqLEvhMpccPj7+810E2iftP
         kHTPtiqgb7a3VSv+9evaOM2+TbDWr13q2W9QHoGsXplTwoVFoqhugEk5kvJyyk7g+Afs
         /D/2feS2xpICl1CG+OAufy/Ss3oRR/1fLXf9DCb5GTClmgw3kHGdFHDtcet6/6sHfZ/F
         Q87w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1769078496; x=1769683296;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-gg:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=oYe3a+X8RQV757haNblqDrC0UCkSImr/La6BxbOeCBI=;
        b=rRmUKhgtuXy0dqmYrXh3CcZkX2SXf7jLeDA9cWmw2mUCN8bLj0/AyV6p7OX9mBD+PI
         R8Uq53RsPn27viehRTR8+oDko17xn9MlRhanuHNYer9FsWhPrpJOkWMxgpaVbBGP56Hb
         kjwxe8LdMcMlDZuJP7LS6RAn3m/vS0LB0LX9cD2tCPc4C17ChDoP0DA32KPQkWbTZziC
         i9/V7uttHTLIYheFGRUqRyF4039GUlOSkgMxOWi95qxD7sORghjjzwGL6Lb/Ebw3CGLi
         qCnynvqlPb5AtmJU/nx3TD96sVElk1sUUBFih5mXpnp4ySsOPpUMzOH7Irc+LoULHian
         nICg==
X-Forwarded-Encrypted: i=1; AJvYcCXH/TsZ6ohusAiZoZnj/9tYHUjMk5MnrulgsM/D1Rqvh4f/eFrGSk6w8ncebaLQsOu1a/k8SjToYgst@vger.kernel.org
X-Gm-Message-State: AOJu0Yx1sGxvhZ5tIf5Idyw6gcvySJdBDhS2vNJr29ar4IDKwGvP1Lxv
	s2dq1bkcd5q2Byg1CismGhgbcvX8GCsSRMfMvoNh637wrLURv45Tdq0e4yTV7L1BPcGpip+DunP
	y7i2hEPoMMzWJQV/cR2FaSOKgot1dhp7nx5KRZNuvuphX7QbyWZmk9+j0BEsC9YW9
X-Gm-Gg: AZuq6aIoWg+kk29bPOZQhRVD8UpIy7CcNE90PdyP8Fdtn/YTB/0tZcQsY+DBmVCMvgA
	yHFXWpC1D4xrAFRPx4Ore0x57mwprVtOU8NCvmc2V+7iXeCRKoyhz1E4C125UPyIcyLpKhhNVt1
	lRYpW2UqxOHUIq6e6W8ZM+UXy9+iHPVcAJwq9nSqPwHzdYOz4gaq0aHNPm8mL3IuEvo+seDNnmF
	xosn0CCVmuGU04RiVd32HQsdPkyGXKZ1p5rQCyY5YA31MUYmT+35GjNmOEKek3p/iFxzzb2Gohl
	F+r0/x4iTVa92IqtKxeED53i19bb9CEFVM4j8xJnJUSq+SpHp76x2suzFOKOOolRM7b8wcmGkUh
	KfU5Y6ldawX379TYsVGZZpGhK2dZc1lUU5vWJBXQPpqBD+txS2uj5vFZGNO+nLAIklOtyvhB+8u
	mg
X-Received: by 2002:a05:620a:288b:b0:8b5:1b5:cafc with SMTP id af79cd13be357-8c6a6709b67mr3080296785a.36.1769078495755;
        Thu, 22 Jan 2026 02:41:35 -0800 (PST)
X-Received: by 2002:a05:620a:288b:b0:8b5:1b5:cafc with SMTP id af79cd13be357-8c6a6709b67mr3080294885a.36.1769078495346;
        Thu, 22 Jan 2026 02:41:35 -0800 (PST)
Received: from WENMLIU-LAB01.ap.qualcomm.com (Global_NAT1_IAD_FW.qualcomm.com. [129.46.232.65])
        by smtp.gmail.com with ESMTPSA id af79cd13be357-8c6a7260229sm1387868685a.42.2026.01.22.02.41.27
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 22 Jan 2026 02:41:34 -0800 (PST)
From: Wenmeng Liu <wenmeng.liu@oss.qualcomm.com>
Date: Thu, 22 Jan 2026 18:40:49 +0800
Subject: [PATCH v4 4/5] arm64: dts: qcom: talos: Add camera MCLK pinctrl
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260122-sm6150_evk-v4-4-a908d49892e7@oss.qualcomm.com>
References: <20260122-sm6150_evk-v4-0-a908d49892e7@oss.qualcomm.com>
In-Reply-To: <20260122-sm6150_evk-v4-0-a908d49892e7@oss.qualcomm.com>
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
        Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>,
        Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>,
        Wenmeng Liu <wenmeng.liu@oss.qualcomm.com>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=ed25519-sha256; t=1769078453; l=1538;
 i=wenmeng.liu@oss.qualcomm.com; s=20250925; h=from:subject:message-id;
 bh=urisQog5JZfbdirBxu5tGAO+ASUUaW9dPoY/c9Nj33A=;
 b=I7z9k27YrP0G4lQE7jSsHQaqMCmfAdS0JW5oaDyYtJTvk5+UcdXrfI7CMFvOcIoB4Bt41Vodq
 tUrvYBEyWVUDgr/FFrVxfAuANQayW2RNkejOcM6nSJ3Mw1e+f1Ux8fA
X-Developer-Key: i=wenmeng.liu@oss.qualcomm.com; a=ed25519;
 pk=fQJjf9C3jGDjE1zj2kO3NQLTbQEaZObVcXAzx5WLPX0=
X-Proofpoint-GUID: G4rrq2HKGSXupa1vjFosOw8YBSgM6pNV
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMTIyMDA3NiBTYWx0ZWRfXwvyrnXHOQJq4
 w1A4G+asM5TG7qdANgWeJGxxOaZPE6MsSviFfm8SAHLd4WQnF9fDBslEaCO8XKYTbhUeVejsOsc
 Ro/aPkgOec8rT5m437nVP9u406DeoByJH/razDQrYwvwmwi8WQSFvaMHqscGx3sBdyk5p6CXuwZ
 UBM2nmnV5DYTi9kfRt0clsQr3szFbd8Oc+CbPfuRoKWOYQbkCkNnYwpHTIR9zGWwG526s/YEGea
 +92HDzdoYGs1Ckkawzb+hsYVytV+YcZxAGnhr52LY2kM5TMf+e8nF1mpsyqtoj+RXktK6v7PFsa
 b8hiIf5O6HLxMY13d7VI0mg3vN/JAtJfEl/jRjiRIr3fBGJDvh1BkJxuwZiATwXqtOCE/LL7Y4q
 Tx6OZBLrrz22s1EoZnaTJJNtEmD6uXzfJdUxigpWVzTvhsGu4nyr6b9WZw0MAxUzPjpUSwjiw+D
 c1v5BtCMZiq0Bdfw7Fg==
X-Authority-Analysis: v=2.4 cv=dZGNHHXe c=1 sm=1 tr=0 ts=6971fee1 cx=c_pps
 a=qKBjSQ1v91RyAK45QCPf5w==:117 a=C3Dk8TwHQYyIj7nOf9RCJw==:17
 a=IkcTkHD0fZMA:10 a=vUbySO9Y5rIA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=EUspDBNiAAAA:8 a=KKAkSRfTAAAA:8
 a=butnsgrUGOw-u3YEFNkA:9 a=QEXdDO2ut3YA:10 a=NFOGd7dJGGMPyQGDc5-O:22
 a=cvBusfyB2V15izCimMoJ:22
X-Proofpoint-ORIG-GUID: G4rrq2HKGSXupa1vjFosOw8YBSgM6pNV
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.20,FMLib:17.12.100.49
 definitions=2026-01-22_01,2026-01-20_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 suspectscore=0 spamscore=0 phishscore=0 lowpriorityscore=0 malwarescore=0
 bulkscore=0 clxscore=1015 priorityscore=1501 adultscore=0 impostorscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2601150000 definitions=main-2601220076
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
	RCPT_COUNT_TWELVE(0.00)[25];
	TAGGED_FROM(0.00)[bounces-258305-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	FREEMAIL_TO(0.00)[oss.qualcomm.com,kernel.org,gmail.com,linaro.org,pengutronix.de];
	DMARC_POLICY_ALLOW(0.00)[qualcomm.com,reject];
	DKIM_TRACE(0.00)[qualcomm.com:+,oss.qualcomm.com:+];
	DBL_BLOCKED_OPENRESOLVER(0.00)[qualcomm.com:email,qualcomm.com:dkim,linaro.org:email,oss.qualcomm.com:mid,oss.qualcomm.com:dkim,dfw.mirrors.kernel.org:helo,dfw.mirrors.kernel.org:rdns,0.47.77.96:email];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[wenmeng.liu@oss.qualcomm.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	R_SPF_SOFTFAIL(0.00)[~all:c];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MID_RHS_MATCH_FROM(0.00)[];
	ASN(0.00)[asn:7979, ipnet:142.0.200.0/24, country:US];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Queue-Id: 70BD0659E6
X-Rspamd-Action: no action

Define pinctrl definitions to enable camera master clocks on Talos.

Reviewed-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
Reviewed-by: Vladimir Zapolskiy <vladimir.zapolskiy@linaro.org>
Signed-off-by: Wenmeng Liu <wenmeng.liu@oss.qualcomm.com>
---
 arch/arm64/boot/dts/qcom/talos.dtsi | 28 ++++++++++++++++++++++++++++
 1 file changed, 28 insertions(+)

diff --git a/arch/arm64/boot/dts/qcom/talos.dtsi b/arch/arm64/boot/dts/qcom/talos.dtsi
index 6d28096e50546855bd762e479b66ed6214ec5d65..33897994d0ca8a193acfbc94a932551a09c712ce 100644
--- a/arch/arm64/boot/dts/qcom/talos.dtsi
+++ b/arch/arm64/boot/dts/qcom/talos.dtsi
@@ -1553,6 +1553,34 @@ tlmm: pinctrl@3100000 {
 			#interrupt-cells = <2>;
 			wakeup-parent = <&pdc>;
 
+			cam0_default: cam0-default-state {
+				pins = "gpio28";
+				function = "cam_mclk";
+				drive-strength = <2>;
+				bias-disable;
+			};
+
+			cam1_default: cam1-default-state {
+				pins = "gpio29";
+				function = "cam_mclk";
+				drive-strength = <2>;
+				bias-disable;
+			};
+
+			cam2_default: cam2-default-state {
+				pins = "gpio30";
+				function = "cam_mclk";
+				drive-strength = <2>;
+				bias-disable;
+			};
+
+			cam3_default: cam3-default-state {
+				pins = "gpio31";
+				function = "cam_mclk";
+				drive-strength = <2>;
+				bias-disable;
+			};
+
 			cci_i2c0_default: cci-i2c0-default-state {
 				/* SDA, SCL */
 				pins = "gpio32", "gpio33";

-- 
2.34.1


