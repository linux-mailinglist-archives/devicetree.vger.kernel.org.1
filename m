Return-Path: <devicetree+bounces-264247-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id mAwpMkvYimnrOAAAu9opvQ
	(envelope-from <devicetree+bounces-264247-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 10 Feb 2026 08:03:39 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [172.232.135.74])
	by mail.lfdr.de (Postfix) with ESMTPS id 6CDEC1179E8
	for <lists+devicetree@lfdr.de>; Tue, 10 Feb 2026 08:03:39 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id CEB9130066B3
	for <lists+devicetree@lfdr.de>; Tue, 10 Feb 2026 07:03:38 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B9C592D7DED;
	Tue, 10 Feb 2026 07:03:37 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="DLyrW2AD";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="K57jEasO"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 79D021D6193
	for <devicetree@vger.kernel.org>; Tue, 10 Feb 2026 07:03:36 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770707017; cv=none; b=Rv7Yi1CArICwxHbTA/OYEzvBzhBO2/xT2rTyOOk8psxR1p0YzgRMfXwaiqZ5N0Ku3CY9IjVV7yHYQGMvXNOD3G+Nzgxt48MjNBvrqSzIbvME19paj8OzzdV0F/dMPBnewXinr0vvNejHnpJyoTC1c2hZTD+TDWHtd7gM85vARdQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770707017; c=relaxed/simple;
	bh=XwP5uTxkLWQ5tkjW1ofQ72i3pe6+4ajraSJONQFthJM=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=PJQPUwE/c+AIEmRVZSk8RBLny/eRr9hceArmNssk2POhbBDr0xERKwsmg5eanybmHsetHlOPyrG8kdSfSYQUUBZGCerz1RAqSbJj1aHtR8q8027TIrl6kqmsOQ78k4Y7PyspgsgP5eb3CRbBk7kF8N5P8uEFN2yLE79z94SEB+I=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=DLyrW2AD; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=K57jEasO; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279870.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 619MmKHu1419228
	for <devicetree@vger.kernel.org>; Tue, 10 Feb 2026 07:03:35 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:date:from:message-id:mime-version
	:subject:to; s=qcppdkim1; bh=y2QWcgpLtdLC6e5rpAeqlld+b2NVOZIT7h1
	ngQSO8ok=; b=DLyrW2ADuz5Me6bSmzFNUpLyPt3/CHOQeB3tqmS6ncNmm2YbnBl
	4DwJ7F95bgI6xU2kjODbsei9U6ZNE47Gf1AqFCSOeobJhzPxucv5TQ1GkmL+uVr+
	RGQvL5fSrmwaAqKLPql0gikrXkFSVjhW0wpT+m9YfcC/vh3ws9HUQXxCWA+Bl5NI
	W0OGqvqiXuH3X5MvnbHCKlqoCRLU8zn/bEi7iyiDEtBPUN9k6e5NAtn/Xbh44BbH
	kkGpditkzZP0k9Y75qCEEHXeiXYLtBx2RNppWar2xWz1SFOSnJI6OtarQB32mP7s
	fhwagt1yRMfI+aMKulEoXNcUueVyd/wq9vA==
Received: from mail-pg1-f198.google.com (mail-pg1-f198.google.com [209.85.215.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4c7rpvsbys-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Tue, 10 Feb 2026 07:03:35 +0000 (GMT)
Received: by mail-pg1-f198.google.com with SMTP id 41be03b00d2f7-c65d08b623aso4056792a12.0
        for <devicetree@vger.kernel.org>; Mon, 09 Feb 2026 23:03:35 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1770707014; x=1771311814; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=y2QWcgpLtdLC6e5rpAeqlld+b2NVOZIT7h1ngQSO8ok=;
        b=K57jEasOtGFqv7LhH2AtBeVXmZeV6CPqXxvEOfRaCTMSQNcHGu0nKCoJLCuOyP9ulV
         BMHWo4MvoQgO13h9y4Q+6pTPaYPZDKRdgH9WScUqQtxie0KdI1gOFGEme9E3KZH2fFgy
         O6kk70J2ZP+JHgYB+DXWQA9jR73hJBJ4Sfr4KbApdCj6co8T+1rHKhLxzcPVG87xDJKt
         fQZ1uxeDfiN4nY+IECOdVN9wRqoWXl1IQEh2AgkJ2OTTSFBYxgWlKtBM/PfMSJ2gjl/B
         syyCGRqcNFVO0VX/xDG+ALnS65uUt/BNVc4qIGrrIe19iKFx/V8FNY+86aWrZL9t439k
         uXgQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1770707014; x=1771311814;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=y2QWcgpLtdLC6e5rpAeqlld+b2NVOZIT7h1ngQSO8ok=;
        b=ud7+FMAi6YCW+GSKwh5ISeUP3Mvb7Gi0Ml7aMZ/7Xq7JRQ4gZENwdEs2CFlpgaHebK
         +3C1Tg/XNCCmKy2NYwhGMPE/SF9MXMRB5meTNdtAJUfhENQVpNyPTVCC3nuVf/WKOMYA
         U41FGzgutVQRrx97Gll2taoUi4DZM5z9QTUzu8kGlUPqtWNvXpsQHVksFCtoHVSSgQ+r
         bK6aF5oIjKDEhfEAvjT4/N/iM/zQa7u2WrFS1/8efKSxXhl+2anSFVtMtZBu/MOpg5zu
         a0/zAjPRB7XAHKzVcyA7u9YUJlV0kTSNsJO0nV0kcercNSyM+X2Bl5jjs5uO1CNu+zEG
         6zfQ==
X-Forwarded-Encrypted: i=1; AJvYcCWJQGW95ZWP8UfdowAj9Z5tw6eT5eM8xcqBtsMiazWNrH4GAt1XbVss0lIfHRGZloBIcJVTRR2YeV/6@vger.kernel.org
X-Gm-Message-State: AOJu0Yye1JLY6CFEYagFtFTKAy1bwmFIQxqtJDNBmp6fWAHaD+MSY8wz
	+JZJyML2nXjZ7pPoqjoGbWsgWqYEYw+JxIH7K9ewjxBG/I3R5aOKXli199ofWc74pMiRQKunH8H
	WC6V/PQemYaJS178Y3u5hJyez8wvpMyJsW3HJfQjn7geZuXfAdC512BrHYH/vMg7X
X-Gm-Gg: AZuq6aLioMrtzEzq6/rd1Dgn4mvn2IadBMRxAfVqQutEG8V6tX4pY/8eWL46WZBcSO+
	uKNcvJsXc2kBK0WtrmExjokMlYFNz4FjlePRfGX2eUAYt8IKIlNQVkYxoE64fJp5UW9VtSku45C
	G63PPqdBrcBxvdkNXANOcgGYncQFEcXQWnM6oVouCXUV+FUWme0kNY9iyMKxnURrsheiAdwvY+R
	BZCINNukKaiG/RjkCNNPEc+ma1JFlcJZOZFJE03AJiYFnPmkzOzfR9pBT20R4hEUy8QGpxxIG5u
	UTfo7xVr3+0Zof2woHX77tUhfc9VhhUAOkKNljyhy+T/Eci9aZNRom1ViQo9O138eLNSmma5cNe
	JzGTKEc/dH77XwO/orYo7jQmPmsHKdXdJwY4zIg==
X-Received: by 2002:a05:6300:800a:b0:371:b0c2:4acf with SMTP id adf61e73a8af0-39415b45664mr1135889637.7.1770707014074;
        Mon, 09 Feb 2026 23:03:34 -0800 (PST)
X-Received: by 2002:a05:6300:800a:b0:371:b0c2:4acf with SMTP id adf61e73a8af0-39415b45664mr1135870637.7.1770707013520;
        Mon, 09 Feb 2026 23:03:33 -0800 (PST)
Received: from work ([120.60.129.220])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-82441695f7dsm12859924b3a.23.2026.02.09.23.03.29
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 09 Feb 2026 23:03:33 -0800 (PST)
From: Manivannan Sadhasivam <manivannan.sadhasivam@oss.qualcomm.com>
To: andersson@kernel.org, konradybcio@kernel.org, robh@kernel.org,
        krzk+dt@kernel.org, conor+dt@kernel.org
Cc: mani@kernel.org, linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, gaurav.kohli@oss.qualcomm.com,
        Manivannan Sadhasivam <manivannan.sadhasivam@oss.qualcomm.com>
Subject: [PATCH v2] arm64: dts: qcom: x1e80100: Add '#cooling-cells' for CPU nodes
Date: Tue, 10 Feb 2026 12:33:21 +0530
Message-ID: <20260210070321.17033-1-manivannan.sadhasivam@oss.qualcomm.com>
X-Mailer: git-send-email 2.51.0
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMjEwMDA1NyBTYWx0ZWRfX74QBFucYM82/
 Pl00RaMq2HyrJjwuUkOIvgQN2iFcY6a18Wf5XykuQPdQc5kWljhu4664Np8rxouAZN5+6fvQaaV
 X4KslRDLKYbEL9zb4FjuBGUNYAwIJrjjUjlh9dDc8tov6wrrn73h7YWh5FiUggWKXhy2ITo2FAp
 XuosMkhOekUPFnPj1TAfjQZe3jwGPlugp0bE+QBC9ArIeOEgbR4xWW/AwuGPOclb73DhN8oYZmg
 jm04jbweK9x6z3Q+BuDDxpN1n1sac5dsRvb4o6tF72ehY6exYFumiOCoetOP7277hbsIgdC8Rio
 yk1JP3FQ8vhRE74/6nWCJgxpix8n7gfj58jQ2b+GM49+xQ1b8yBgUgl0oSMxWMvuTGIH5dM6o3d
 j11pguC0twdmsw5Em2TTwNWwvpVseh0diUiuYbAwwPfTxJnaJTMCpkq82DxmscQ2WyA70R/LKqu
 YIhoIoiJF9a/bY9U40Q==
X-Authority-Analysis: v=2.4 cv=KKZXzVFo c=1 sm=1 tr=0 ts=698ad847 cx=c_pps
 a=Qgeoaf8Lrialg5Z894R3/Q==:117 a=wzz8CQ20vw4U8Sx33GCDJA==:17
 a=HzLeVaNsDn8A:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=Mpw57Om8IfrbqaoTuvik:22 a=GgsMoib0sEa3-_RKJdDe:22 a=EUspDBNiAAAA:8
 a=DIVSntv8tsQZXXiWbfoA:9 a=x9snwWr2DeNwDh03kgHS:22
X-Proofpoint-ORIG-GUID: Z-drrV8-uDKSeuV2Y4HCr-AeDaq_Pi0n
X-Proofpoint-GUID: Z-drrV8-uDKSeuV2Y4HCr-AeDaq_Pi0n
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-02-09_01,2026-02-09_04,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 bulkscore=0 lowpriorityscore=0 suspectscore=0 impostorscore=0 spamscore=0
 adultscore=0 malwarescore=0 priorityscore=1501 phishscore=0 clxscore=1015
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2601150000 definitions=main-2602100057
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.66 / 15.00];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_CONTAINS_FROM(1.00)[];
	DMARC_POLICY_ALLOW(-0.50)[qualcomm.com,reject];
	R_MISSING_CHARSET(0.50)[];
	R_DKIM_ALLOW(-0.20)[qualcomm.com:s=qcppdkim1,oss.qualcomm.com:s=google];
	R_SPF_ALLOW(-0.20)[+ip4:172.232.135.74:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-264247-lists,devicetree=lfdr.de];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sto.lore.kernel.org:helo,sto.lore.kernel.org:rdns];
	FORGED_SENDER_MAILLIST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FROM_HAS_DN(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[manivannan.sadhasivam@oss.qualcomm.com,devicetree@vger.kernel.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	RCPT_COUNT_SEVEN(0.00)[11];
	DKIM_TRACE(0.00)[qualcomm.com:+,oss.qualcomm.com:+];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.232.128.0/19, country:SG];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Queue-Id: 6CDEC1179E8
X-Rspamd-Action: no action

Enable passive cooling for CPUs in the X1E80100 SoC by adding the
'#cooling-cells' property. This will allow the OS to mitigate the CPU
power dissipation with the help of SCMI DVFS.

Signed-off-by: Manivannan Sadhasivam <manivannan.sadhasivam@oss.qualcomm.com>
---

Changes in v2:

* Rebased on top of v6.19-rc1

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
2.51.0


