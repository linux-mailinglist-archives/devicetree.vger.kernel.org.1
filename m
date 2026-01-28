Return-Path: <devicetree+bounces-260189-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id v++cIG6feWnbyAEAu9opvQ
	(envelope-from <devicetree+bounces-260189-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 28 Jan 2026 06:32:30 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id BBD629D337
	for <lists+devicetree@lfdr.de>; Wed, 28 Jan 2026 06:32:29 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 4A5C03009177
	for <lists+devicetree@lfdr.de>; Wed, 28 Jan 2026 05:32:28 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B80E921CC5A;
	Wed, 28 Jan 2026 05:32:27 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="IqHK3xXt";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="ahdcvIxU"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5975A13DDAE
	for <devicetree@vger.kernel.org>; Wed, 28 Jan 2026 05:32:26 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769578347; cv=none; b=OprrafyT+hRxBeSoix2vZK0RkMYEGtRTvGtQ/9EpI4t8KZ+TwdmoA4I8ccXq1/lKU6VFod8P725KZ2KscR0ximPMQxkpXhDW7HvWZv/AnfUsveno3kLE9n0WwjyXsml+4vtf7iybw9bo/f3Qh/yAMcRybSzm2tVfXvBVJ12lewo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769578347; c=relaxed/simple;
	bh=Rl2VjhzNHTs/VthlnhBCPaMqo9n0+hGSZr+TckRmPIw=;
	h=From:To:Cc:Subject:Date:Message-Id:MIME-Version; b=nid1OJVQKTNESNFXlqA44NBv0MYYdaqpfJwcH9dfLOj9cBcwQfYBZIFay6Hmg1mUE5/DbnLwZj+KnzSJFjVN6xNUPN4qsZxnUJWKFNFJPrFfSplcna4vIcHkbzRQ7DBKVwEdZEtK15YW3F4mkSB0gXnyhtjvL8Ch7MlEIu9DEMI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=IqHK3xXt; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=ahdcvIxU; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279863.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 60S3SIid1953284
	for <devicetree@vger.kernel.org>; Wed, 28 Jan 2026 05:32:25 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:date:from:message-id:mime-version
	:subject:to; s=qcppdkim1; bh=4Od/JiwGvZwOKY/KO8TC8PWC0YhRAWCA41u
	rKKr0w3o=; b=IqHK3xXtjM2GUXrc0rMzeg38AylaiRhKNo9sWEfeqm4QVl44vD1
	cj3NpLjuQMwA7hQty5TuNi38SYo63TQikH8RpFrzLt/KV3sfvSOaxdRfzuGelQBh
	fcP4Efyd36kvAeyAs0S7qhyNCx22pYbMqcUaMDsq5ML3vyHkqG/oChFY0EIR4YFV
	ZL4adfmhHuDU9WXp6r+izjG0whq0ldSvzvvc+X/FkPrXpixeDahKlShVPrEBbFSP
	0y3XiShnNZe/1xtUZQRSbdJNVGvJIso+RQ1yJSi6AuL6bAafcaeFsQN8bMgujSmA
	gu97eSS4KwqNNmdK4AVGpImSMpwuTLpG1QQ==
Received: from mail-pf1-f199.google.com (mail-pf1-f199.google.com [209.85.210.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4by2119y18-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Wed, 28 Jan 2026 05:32:25 +0000 (GMT)
Received: by mail-pf1-f199.google.com with SMTP id d2e1a72fcca58-81f3c36dd2cso4765759b3a.2
        for <devicetree@vger.kernel.org>; Tue, 27 Jan 2026 21:32:25 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1769578345; x=1770183145; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=4Od/JiwGvZwOKY/KO8TC8PWC0YhRAWCA41urKKr0w3o=;
        b=ahdcvIxUpMwAOO24NJIuI+dNCB2t3jgyQWkz65Z5xz4qhAvMgt6lMGjIFauvNGhybr
         lA/6tiDEePJU6xABTo6DtNrSI2H4cbgXrtR+bdz93IL3+4/xw9SY1UFxt7FU7gCUsRig
         bR/B0mg4I4OirLa+8mZics0hEYuqdbXLFMrg6oQjIAfCpb3h76vUtb5WOjuH5Q1oLnN+
         j2fFI33f+z6nn9Q9XkKujshNIEMVIACytBbwFa+HbH60x8aumkEvWiSlCxxOLyDimcuI
         BzAodjCz6U6r3U2dJBKX03/MgKOBYDGEZB+svi2P0hIxRx8Lm189OMt4/ezmJms5cxFz
         05JQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1769578345; x=1770183145;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=4Od/JiwGvZwOKY/KO8TC8PWC0YhRAWCA41urKKr0w3o=;
        b=OSxi987a9CQ/xH7QZdRyTtYyRhuepwGIMrNsH0fv4XlRDaz2CbYLCoOK6YDTv7UGsL
         REUdOjWzlHSVOKl67IhoYo3rkBugcCcinndMEZc1cyZAKpqkSibQdkLySfVwZ3sy6Ulx
         +rf9WwwvbYzv3v3PkVaTKCyKTzlYgA4/7G3a0xEC8BZp4PlIipXaY3Wg/NHUynsBALiK
         VhWajG3ZoYKomnPutG1rAxFOwXmh93nzG6xCf39eAy7C7UibB5ShNTh1X7s4DFVi+hen
         k+zzNCnAqg9hgKKx9liUl9UI6XOwBt69pUm5/K5m2N5NeWTlMMRfLsMQW1EDXx/6mG5r
         ct5Q==
X-Forwarded-Encrypted: i=1; AJvYcCVhftc0lxqnKLxyLGVivzYLTBCJs+de3rvmXVsUFFoxdAUDbUK25XzZyDXkxJwx3VjKlnhJPTVz/IHL@vger.kernel.org
X-Gm-Message-State: AOJu0Yw3BA9w4tCfVk6DJNbpx2bcVYtwZ9JdMbjlZG6gazfzIfRZhpde
	ISGzPxdA13Qt+RYqziDKR7otzxP1fAk8awKtIF5ImY4kCKCI9BTwkmj49roP+7+dt0OCOcZ2n2J
	eGQ5G4F1yfai/vs9/n4FC8mNymcW9vxAm+9pHQGamiAKgczXebEZ73VsrYsRKzeTv
X-Gm-Gg: AZuq6aLML4PEB7LaP6xLO8tSHe4JlC8byiZ9srAHBYREl2XTFEn8e2DBVdsmvDxqCKn
	szK1NyfALchd4SBE6AyhSRXCFTmWfXAU4PgXSdTPMxJ9N2Ub9sBkr/v/+n0UFv8KSl0Klv1aOxN
	vcul13DCmhLfqcvNfhhwGng0PFq4gd7bjfRcyED95pfzwd2wvVF2vBJEOXq+EPbe72zb1tXxsH/
	xj332Tes/col4ilV8/2AC+ZFPYzbriD/4QOQlVjUGOYCr4IjTHETWgH40kArw+KUxDLIXPfCFFB
	AIZ1gMfheJKIDa389wblwe7QyEOpXE7qFxl/Gu3JyDEyTgdPvpBMI37DpYG6WdhJIMQXpcRvKU5
	Q/d/w9EdViAZfqpDYrkZde4I1lX5mGFzowiGZV3M=
X-Received: by 2002:a05:6a00:4145:b0:81f:852b:a93a with SMTP id d2e1a72fcca58-8236916a53dmr3902827b3a.2.1769578344836;
        Tue, 27 Jan 2026 21:32:24 -0800 (PST)
X-Received: by 2002:a05:6a00:4145:b0:81f:852b:a93a with SMTP id d2e1a72fcca58-8236916a53dmr3902800b3a.2.1769578344342;
        Tue, 27 Jan 2026 21:32:24 -0800 (PST)
Received: from hu-gkohli-hyd.qualcomm.com ([202.46.23.25])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-82379c521cdsm1234271b3a.62.2026.01.27.21.32.21
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 27 Jan 2026 21:32:23 -0800 (PST)
From: Gaurav Kohli <gaurav.kohli@oss.qualcomm.com>
To: andersson@kernel.org, konradybcio@kernel.org, robh@kernel.org,
        krzk+dt@kernel.org, conor+dt@kernel.org
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org,
        Gaurav Kohli <gaurav.kohli@oss.qualcomm.com>
Subject: [[PATCH]] arm64: dts: qcom: hamoa: Enable cpufreq cooling devices
Date: Wed, 28 Jan 2026 11:02:08 +0530
Message-Id: <20260128053208.3240189-1-gaurav.kohli@oss.qualcomm.com>
X-Mailer: git-send-email 2.34.1
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMTI4MDA0MSBTYWx0ZWRfX3x4WIqf4Siiu
 uN/+zUYNlTaocQk4dp2YwmP1tD+RCcWc5FzXjWG143wbCTmF8mxknNUuU4nW20VODZBa86K41hM
 ivzC5cSiN4E3khhGSUTyoIrbjfcLsONibKWE9AktLid+P2YnLvfhcoGuMe9tRzg1y+JQdbbYD0K
 DlWFEAj5Vu2XTdWVyRldRaJtgSJUfdkayZGawG+d8gFSaHYT/wTbTVxHzaJkRwbBTZMgSny8Bo/
 U1sv4C2Vw3EWERt+JjPzmMUMgvNneGuCDkG7FnqtxcY+as8c5HTlL7TA06A46yb1p9YgaCr6QpH
 kNYj8ArSLeCxKXvPjStFwrxIm6stfpFgYq2l3gNjguEf1v29pG/1nOWV6O6aBLzrg9U8vOzfETA
 EBuMYhZ/EZBLcUmkp2CE8Fdy/NaYYz9REb1BZn/k6vMsQPTBSXt+yEGWEmkGjCV/OUmM4ixcg7j
 jGl+tAQ1eKtU+YrjPlA==
X-Authority-Analysis: v=2.4 cv=GuxPO01C c=1 sm=1 tr=0 ts=69799f69 cx=c_pps
 a=WW5sKcV1LcKqjgzy2JUPuA==:117 a=ZePRamnt/+rB5gQjfz0u9A==:17
 a=vUbySO9Y5rIA:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=EUspDBNiAAAA:8 a=t0jY72NJK1JnOMXx7JwA:9 a=OpyuDcXvxspvyRM73sMx:22
X-Proofpoint-GUID: _SxVa6dS_grxR37sZreiPQpbFk7BWkCf
X-Proofpoint-ORIG-GUID: _SxVa6dS_grxR37sZreiPQpbFk7BWkCf
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-01-27_05,2026-01-27_03,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 suspectscore=0 adultscore=0 malwarescore=0 lowpriorityscore=0 phishscore=0
 bulkscore=0 impostorscore=0 spamscore=0 clxscore=1015 priorityscore=1501
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2601150000 definitions=main-2601280041
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.66 / 15.00];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_CONTAINS_FROM(1.00)[];
	DMARC_POLICY_ALLOW(-0.50)[qualcomm.com,reject];
	R_MISSING_CHARSET(0.50)[];
	R_DKIM_ALLOW(-0.20)[qualcomm.com:s=qcppdkim1,oss.qualcomm.com:s=google];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	DBL_PROHIBIT(0.00)[0.0.78.132:email,0.0.78.232:email,0.0.0.100:email,0.0.39.216:email,0.0.40.60:email,0.0.1.44:email,0.0.78.32:email,0.0.79.76:email,0.0.0.200:email];
	TAGGED_FROM(0.00)[bounces-260189-lists,devicetree=lfdr.de];
	FROM_NEQ_ENVFROM(0.00)[gaurav.kohli@oss.qualcomm.com,devicetree@vger.kernel.org];
	RCVD_TLS_LAST(0.00)[];
	FROM_HAS_DN(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,qualcomm.com:email,qualcomm.com:dkim,0.0.0.0:email,0.0.39.116:email,0.0.39.16:email];
	RCPT_COUNT_SEVEN(0.00)[9];
	NEURAL_HAM(-0.00)[-1.000];
	DKIM_TRACE(0.00)[qualcomm.com:+,oss.qualcomm.com:+];
	TAGGED_RCPT(0.00)[devicetree,dt];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Queue-Id: BBD629D337
X-Rspamd-Action: no action

Add cooling-cells property to the CPU nodes to support cpufreq
cooling devices.

Signed-off-by: Gaurav Kohli <gaurav.kohli@oss.qualcomm.com>
---
 arch/arm64/boot/dts/qcom/hamoa.dtsi | 12 ++++++++++++
 1 file changed, 12 insertions(+)

diff --git a/arch/arm64/boot/dts/qcom/hamoa.dtsi b/arch/arm64/boot/dts/qcom/hamoa.dtsi
index db65c392e618..799e405a9f87 100644
--- a/arch/arm64/boot/dts/qcom/hamoa.dtsi
+++ b/arch/arm64/boot/dts/qcom/hamoa.dtsi
@@ -75,6 +75,7 @@ cpu0: cpu@0 {
 			next-level-cache = <&l2_0>;
 			power-domains = <&cpu_pd0>, <&scmi_dvfs 0>;
 			power-domain-names = "psci", "perf";
+			#cooling-cells = <2>;
 
 			l2_0: l2-cache {
 				compatible = "cache";
@@ -91,6 +92,7 @@ cpu1: cpu@100 {
 			next-level-cache = <&l2_0>;
 			power-domains = <&cpu_pd1>, <&scmi_dvfs 0>;
 			power-domain-names = "psci", "perf";
+			#cooling-cells = <2>;
 		};
 
 		cpu2: cpu@200 {
@@ -101,6 +103,7 @@ cpu2: cpu@200 {
 			next-level-cache = <&l2_0>;
 			power-domains = <&cpu_pd2>, <&scmi_dvfs 0>;
 			power-domain-names = "psci", "perf";
+			#cooling-cells = <2>;
 		};
 
 		cpu3: cpu@300 {
@@ -111,6 +114,7 @@ cpu3: cpu@300 {
 			next-level-cache = <&l2_0>;
 			power-domains = <&cpu_pd3>, <&scmi_dvfs 0>;
 			power-domain-names = "psci", "perf";
+			#cooling-cells = <2>;
 		};
 
 		cpu4: cpu@10000 {
@@ -121,6 +125,7 @@ cpu4: cpu@10000 {
 			next-level-cache = <&l2_1>;
 			power-domains = <&cpu_pd4>, <&scmi_dvfs 1>;
 			power-domain-names = "psci", "perf";
+			#cooling-cells = <2>;
 
 			l2_1: l2-cache {
 				compatible = "cache";
@@ -137,6 +142,7 @@ cpu5: cpu@10100 {
 			next-level-cache = <&l2_1>;
 			power-domains = <&cpu_pd5>, <&scmi_dvfs 1>;
 			power-domain-names = "psci", "perf";
+			#cooling-cells = <2>;
 		};
 
 		cpu6: cpu@10200 {
@@ -147,6 +153,7 @@ cpu6: cpu@10200 {
 			next-level-cache = <&l2_1>;
 			power-domains = <&cpu_pd6>, <&scmi_dvfs 1>;
 			power-domain-names = "psci", "perf";
+			#cooling-cells = <2>;
 		};
 
 		cpu7: cpu@10300 {
@@ -157,6 +164,7 @@ cpu7: cpu@10300 {
 			next-level-cache = <&l2_1>;
 			power-domains = <&cpu_pd7>, <&scmi_dvfs 1>;
 			power-domain-names = "psci", "perf";
+			#cooling-cells = <2>;
 		};
 
 		cpu8: cpu@20000 {
@@ -167,6 +175,7 @@ cpu8: cpu@20000 {
 			next-level-cache = <&l2_2>;
 			power-domains = <&cpu_pd8>, <&scmi_dvfs 2>;
 			power-domain-names = "psci", "perf";
+			#cooling-cells = <2>;
 
 			l2_2: l2-cache {
 				compatible = "cache";
@@ -183,6 +192,7 @@ cpu9: cpu@20100 {
 			next-level-cache = <&l2_2>;
 			power-domains = <&cpu_pd9>, <&scmi_dvfs 2>;
 			power-domain-names = "psci", "perf";
+			#cooling-cells = <2>;
 		};
 
 		cpu10: cpu@20200 {
@@ -193,6 +203,7 @@ cpu10: cpu@20200 {
 			next-level-cache = <&l2_2>;
 			power-domains = <&cpu_pd10>, <&scmi_dvfs 2>;
 			power-domain-names = "psci", "perf";
+			#cooling-cells = <2>;
 		};
 
 		cpu11: cpu@20300 {
@@ -203,6 +214,7 @@ cpu11: cpu@20300 {
 			next-level-cache = <&l2_2>;
 			power-domains = <&cpu_pd11>, <&scmi_dvfs 2>;
 			power-domain-names = "psci", "perf";
+			#cooling-cells = <2>;
 		};
 
 		cpu-map {
-- 
2.34.1


