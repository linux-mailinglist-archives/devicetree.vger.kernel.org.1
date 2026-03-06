Return-Path: <devicetree+bounces-271921-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id AIzhI+maqmmbUQEAu9opvQ
	(envelope-from <devicetree+bounces-271921-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Fri, 06 Mar 2026 10:14:17 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [172.232.135.74])
	by mail.lfdr.de (Postfix) with ESMTPS id 2D81B21DB26
	for <lists+devicetree@lfdr.de>; Fri, 06 Mar 2026 10:14:17 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id 1111E303388D
	for <lists+devicetree@lfdr.de>; Fri,  6 Mar 2026 09:14:15 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 591A833A9F5;
	Fri,  6 Mar 2026 09:14:12 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="SO2YDjVH";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="T21v/xvT"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 08CCA1FC7C5
	for <devicetree@vger.kernel.org>; Fri,  6 Mar 2026 09:14:10 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772788452; cv=none; b=uTuxCsgPwjcrbtlmi9WdHBNWbF9Yu3B9ccyGbAxLXavHAM+1wujkowHjOA4oSqJ3fd2r6gGgbRWqcUnkLnvUow1G8pq+lt7fe0/FFl6hkq0QIPhbORZUbKqlCj3nzuCMWSyvzKCI9zomQv3qxEVmGdp08p3TQpFXRYwu71vYuHY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772788452; c=relaxed/simple;
	bh=uWu9jIBwX829aGDTef07/6Q/TFFzpbhM2ciDeQWkElA=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
	 MIME-Version; b=H0mMD6c3ihoPXGvkixG7tr2kvHHSzTEbJB6ceYmI/Zy5GQNtCGre+YrMKfWwbexuhsybO+dHfmOhWB/yxjCdeWXLVbGaRShgGSaKxpTtlXbyLuyEoZc2Bi13etcIGw7lDs7oZDAREhWHKh9TEEh2tQF4emUCXUiB+3QN+JV94TM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=SO2YDjVH; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=T21v/xvT; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279868.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 6264aKlf2802416
	for <devicetree@vger.kernel.org>; Fri, 6 Mar 2026 09:14:10 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:date:from:in-reply-to:message-id
	:mime-version:references:subject:to; s=qcppdkim1; bh=hjowCjXGIsH
	C4zVtpmF9MuQz/xIMztOUoGVJOyajdTM=; b=SO2YDjVHohrEwp7jRjU30WVxuCX
	Fxa4qrky9g67J6C3EbH/rKbUufytnuaYrA4SIuIdKa0Xzk92Aj9x5cwwYOUOZh57
	A6YqB37RhtQ4xKeWw+YpCTPP6vCYgYvakJGoIDbyNUg2AXO6Z0uGbC/+Nh0j9H+n
	L6aWYFa2iemTBCcT8CDtIRCB5nq8xxDilnq7JABwGVUUuqqIv3ozYBdsE5bgbwJB
	jt68L9SqgtMDxjliTifdq5NLU0rsesu7Hme15mAGhzgAMdRedVdfBndr01fljnI9
	E42BqwbBM+SGNmmkDrHBb9N6zoasJn243Ala68HAI15uixsQVTidRtg/aXg==
Received: from mail-pl1-f200.google.com (mail-pl1-f200.google.com [209.85.214.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4cqgp425kc-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Fri, 06 Mar 2026 09:14:10 +0000 (GMT)
Received: by mail-pl1-f200.google.com with SMTP id d9443c01a7336-2ae66ee7354so33193435ad.0
        for <devicetree@vger.kernel.org>; Fri, 06 Mar 2026 01:14:09 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1772788449; x=1773393249; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=hjowCjXGIsHC4zVtpmF9MuQz/xIMztOUoGVJOyajdTM=;
        b=T21v/xvTXR/SRhVtqXOQXRHVRshqr8NrylLmMUpV/nY7hv6SkWdRFgH6xkHKA3/rTR
         Q5uARKJWwQ2disPLTZUGqFeK1k5bOJLPyNct1QSuoYV/PH+rcXOlrch7LfI7J8kn7qDa
         fqFqQb7/h+8cmnkHQEdXdHTu6EiISU7ebdalpkPvuE2RwnF6MUI+T9M01lSN7qxIOyFy
         TX2dx4lamurGDdq+s5LoIGCvpn70o87UtLx4vOPZLBdPmpJ07QKH2N7jygivPq3I6RDc
         LzWve+FtP1zbpGx0s5MAoJEmyX5AhBgUYrzuEA2DetjarcwrV1RJ3LmTSj/I1LXfx2Qx
         ZC8A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1772788449; x=1773393249;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=hjowCjXGIsHC4zVtpmF9MuQz/xIMztOUoGVJOyajdTM=;
        b=sTNGW3HEb9jvm/lufhyZ2JwLSI1/OoGa6xlQvhlQ2UpHUVjKQG4nl6FZT9yA3gV+ed
         r101dBpTL6TUv7C4DDrG77mCV1X7k/+gxd3f/EWwMT+RjhhYkOY2EBDpx0s0k0pt40gD
         4vBjhSC3bH3xyiQ/RNGU+cn55ZMpusvSJDrEPnoGeLAlFOA2PMYyxXrr5FozjYNX355f
         D+adfmFrB1ZGu3HKXkF8pkX1vRepQl4lN4dxBIgKYJVa+Go0Rr5WG0MaAVEymroExcfs
         hkoactx/Z+vKknONgs2MdW6RCJ2fM1TtjBWaHcrQueaIJIbKqoPLGLrEGkPq+PcbgLJS
         DLkQ==
X-Forwarded-Encrypted: i=1; AJvYcCU0/+xKMFAdmA93siziapqaly0Syyaa4KsoWFrqRCEnJ0HsQrxuk/ktHqvUl8sRMWq52P5+865Cm/cS@vger.kernel.org
X-Gm-Message-State: AOJu0Yw4iGatuwxF0rjXJiwJ03Y8n+M4xvr0KxQ4EIvirdBvNaH04x9W
	0azpNRawGGf03jrRiCF3ybsWVF1bTivujANs1ULqFu3qDIPG0JQXMZm6dj6vLetCbvyM2s3LSSF
	e2LO33VauVVOz8oJJxxbgWK0PZ3O5EzN0Q3ZM7aXaTxNHfnZhd94UmAIrGNTTMBCp
X-Gm-Gg: ATEYQzzuq6ZRgw3KdMNwpiYLt5l5Z+133UFTDMJQo6dqd0RHpzvDXtWtX4Ahipv+IZv
	bx5KnYkilYYRyZzPGltU8y3LilS6fJu2gOWJIa7BDO9/5z8OBXwCDIWygDTY8GR0CYdRzm/qlkU
	svXKBgOOCCK5fCleKd3jAQeZMxPTSKzNV8SSDpdPYWkEkbQ8vaVs/FiuSy4kyAiGLlrmXc0KIi5
	ZLVv3AQSm7rSJUA8eP08xzwx8fvTLfbCLxjxhiKvHavAs/4HD2Xt9PhD9E7v+aIOVtsX6SpU24V
	d4nvp01BbkOn/60OBAk/kXVCzQwnWBnp6bdU1wkon0ya9Qxw13LewjrLbQS9hPRlROkDspsZH29
	JZRxX2z6Re3qH/VZklPdJVquP4wGQprpno8CHiOq8KwDpNOaI3zJmANk=
X-Received: by 2002:a05:6a21:4603:b0:395:ce56:4448 with SMTP id adf61e73a8af0-39858fdb472mr1792743637.25.1772788448848;
        Fri, 06 Mar 2026 01:14:08 -0800 (PST)
X-Received: by 2002:a05:6a21:4603:b0:395:ce56:4448 with SMTP id adf61e73a8af0-39858fdb472mr1792708637.25.1772788448355;
        Fri, 06 Mar 2026 01:14:08 -0800 (PST)
Received: from hu-swatagar-hyd.qualcomm.com ([202.46.23.25])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-829a48647e8sm1169360b3a.33.2026.03.06.01.14.04
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 06 Mar 2026 01:14:07 -0800 (PST)
From: Swati Agarwal <swati.agarwal@oss.qualcomm.com>
To: Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org,
        Swati Agarwal <swati.agarwal@oss.qualcomm.com>,
        Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>,
        Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
Subject: [PATCH v6 1/4] arm64: dts: qcom: lemans-evk: Enable GPIO expander interrupt for Lemans EVK
Date: Fri,  6 Mar 2026 14:43:52 +0530
Message-Id: <20260306091355.1178333-2-swati.agarwal@oss.qualcomm.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20260306091355.1178333-1-swati.agarwal@oss.qualcomm.com>
References: <20260306091355.1178333-1-swati.agarwal@oss.qualcomm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Proofpoint-ORIG-GUID: q86kHyQrnHaldkJlVNzyt8E5q8QWXGAs
X-Authority-Analysis: v=2.4 cv=LegxKzfi c=1 sm=1 tr=0 ts=69aa9ae2 cx=c_pps
 a=IZJwPbhc+fLeJZngyXXI0A==:117 a=ZePRamnt/+rB5gQjfz0u9A==:17
 a=Yq5XynenixoA:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=u7WPNUs3qKkmUXheDGA7:22 a=ZpdpYltYx_vBUK5n70dp:22 a=EUspDBNiAAAA:8
 a=bqNqw6pGn9JH-5OicrIA:9 a=uG9DUKGECoFWVXl0Dc02:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMzA2MDA4NiBTYWx0ZWRfX6xCOzuAGV2sy
 W9yD8bTjf1OQXf2svnpgIg8k1dFnzy44xgAP2gMonSNbsu6V/on2kGdm+s0OLz76vqvpRdALz6m
 3XceQ60dGvcwIedtxV+4kjFVYr/8ZuY/0RdooAvejrvYK09RkQPVvywmWfvNFrVUzkD9w2AWWwL
 N4L3ZF3qbOtKqDpDvl5dh6YcSPRmw/mUTj1KpP18vmOZjDYwcFcT9gFYh5PGRCnYpAPZrJXgD6j
 w20EAtyfncmGBzSktjPQunztfXtwb/URGA2DqmvsrWM9W1AWk0E3ja6+SsMaCISi1PqnPAnTXL8
 KOL4zAMtApBhM49V+if2OBdm2HVks/zIDc6ZbDY+P0wuuAllXBUiRVZPmv0l6RdVzzhNvirEv+I
 dZkgbOIve1WN29KBEadx/Iv17r02WZal9B/tLfe8HP2XEN3jSUa+SP3BLwdM+JUVKqZzHlPbYa/
 9UkXSqrer2frP3zknzQ==
X-Proofpoint-GUID: q86kHyQrnHaldkJlVNzyt8E5q8QWXGAs
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1143,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-03-06_03,2026-03-04_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 clxscore=1015 impostorscore=0 malwarescore=0 adultscore=0 lowpriorityscore=0
 priorityscore=1501 phishscore=0 bulkscore=0 spamscore=0 suspectscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2602130000 definitions=main-2603060086
X-Rspamd-Queue-Id: 2D81B21DB26
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
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TAGGED_FROM(0.00)[bounces-271921-lists,devicetree=lfdr.de];
	DKIM_TRACE(0.00)[qualcomm.com:+,oss.qualcomm.com:+];
	RCVD_TLS_LAST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.232.128.0/19, country:SG];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[swati.agarwal@oss.qualcomm.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	TO_DN_SOME(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[oss.qualcomm.com:dkim,oss.qualcomm.com:mid,0.0.0.38:email,sto.lore.kernel.org:rdns,sto.lore.kernel.org:helo,qualcomm.com:dkim,qualcomm.com:email,0.0.0.39:email];
	NEURAL_HAM(-0.00)[-1.000];
	DBL_PROHIBIT(0.00)[0.0.0.50:email];
	RCPT_COUNT_SEVEN(0.00)[11];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Action: no action

Enable PCA9538 expander as interrupt controller on Lemans EVK and configure
the corresponding TLMM pins via pinctrl to operate as GPIO inputs with
internal pull-ups.

Reviewed-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
Signed-off-by: Swati Agarwal <swati.agarwal@oss.qualcomm.com>
---
 arch/arm64/boot/dts/qcom/lemans-evk.dts | 44 +++++++++++++++++++++++++
 1 file changed, 44 insertions(+)

diff --git a/arch/arm64/boot/dts/qcom/lemans-evk.dts b/arch/arm64/boot/dts/qcom/lemans-evk.dts
index 90fce947ca7e..397052394930 100644
--- a/arch/arm64/boot/dts/qcom/lemans-evk.dts
+++ b/arch/arm64/boot/dts/qcom/lemans-evk.dts
@@ -546,6 +546,11 @@ expander0: gpio@38 {
 		reg = <0x38>;
 		#gpio-cells = <2>;
 		gpio-controller;
+		#interrupt-cells = <2>;
+		interrupt-controller;
+		interrupts-extended = <&tlmm 138 IRQ_TYPE_LEVEL_LOW>;
+		pinctrl-0 = <&expander0_int>;
+		pinctrl-names = "default";
 	};
 
 	expander1: gpio@39 {
@@ -553,6 +558,11 @@ expander1: gpio@39 {
 		reg = <0x39>;
 		#gpio-cells = <2>;
 		gpio-controller;
+		#interrupt-cells = <2>;
+		interrupt-controller;
+		interrupts-extended = <&tlmm 19 IRQ_TYPE_LEVEL_LOW>;
+		pinctrl-0 = <&expander1_int>;
+		pinctrl-names = "default";
 	};
 
 	expander2: gpio@3a {
@@ -560,6 +570,11 @@ expander2: gpio@3a {
 		reg = <0x3a>;
 		#gpio-cells = <2>;
 		gpio-controller;
+		#interrupt-cells = <2>;
+		interrupt-controller;
+		interrupts-extended = <&tlmm 139 IRQ_TYPE_LEVEL_LOW>;
+		pinctrl-0 = <&expander2_int>;
+		pinctrl-names = "default";
 	};
 
 	expander3: gpio@3b {
@@ -567,6 +582,11 @@ expander3: gpio@3b {
 		reg = <0x3b>;
 		#gpio-cells = <2>;
 		gpio-controller;
+		#interrupt-cells = <2>;
+		interrupt-controller;
+		interrupts-extended = <&tlmm 39 IRQ_TYPE_LEVEL_LOW>;
+		pinctrl-0 = <&expander3_int>;
+		pinctrl-names = "default";
 	};
 
 	eeprom@50 {
@@ -804,6 +824,30 @@ ethernet0_mdio: ethernet0-mdio-pins {
 		};
 	};
 
+	expander0_int: expander0-int-state {
+		pins = "gpio138";
+		function = "gpio";
+		bias-pull-up;
+	};
+
+	expander1_int: expander1-int-state {
+		pins = "gpio19";
+		function = "gpio";
+		bias-pull-up;
+	};
+
+	expander2_int: expander2-int-state {
+		pins = "gpio139";
+		function = "gpio";
+		bias-pull-up;
+	};
+
+	expander3_int: expander3-int-state {
+		pins = "gpio39";
+		function = "gpio";
+		bias-pull-up;
+	};
+
 	pcie0_default_state: pcie0-default-state {
 		clkreq-pins {
 			pins = "gpio1";
-- 
2.34.1


