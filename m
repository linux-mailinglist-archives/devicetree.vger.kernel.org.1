Return-Path: <devicetree+bounces-274656-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id cLzJDgfbsmmCQQAAu9opvQ
	(envelope-from <devicetree+bounces-274656-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Thu, 12 Mar 2026 16:25:59 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [IPv6:2600:3c04:e001:36c::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id DF26F274620
	for <lists+devicetree@lfdr.de>; Thu, 12 Mar 2026 16:25:58 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id E5EFC30B69D4
	for <lists+devicetree@lfdr.de>; Thu, 12 Mar 2026 15:15:37 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id EF27E3CAE88;
	Thu, 12 Mar 2026 15:14:38 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="KuNHMZsO";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="BxyFKixm"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 879743CA4A7
	for <devicetree@vger.kernel.org>; Thu, 12 Mar 2026 15:14:37 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773328478; cv=none; b=pocvzfMLDR9+c2JTzFcAb9ygiWCGbXhpz3kVyUD3Jjdt/DvY51B6pnMpQOyQJDyW0f8i20UldrQPCElIn9PMaizW+6dEMotgjhFJxbZtaFMpIkzenKMBITs8vQzE7ONPeET2SwxrrHwynibDSbbJsYYFF2Ga8XF0u2kfIjPmBUg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773328478; c=relaxed/simple;
	bh=eKAozrQ4xY3ezZ+7fjpNR39Vr/lnm61hf+9j71Jz9qI=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=eem9j+kZQG3h63lM4zrXBK9bQmsF5YyhonYAwD+2Xkv209JLXDZA9puBujKHB0alrrzAzLKdP4q1j1VEHYFVG36GLVyd4s2bQpjmP3A+fRoqejSlJx+dux05IOF01nfEl95fA9kXFqjfhq4/wD6cccXUhV+HwsHQd4NcUVT90QQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=KuNHMZsO; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=BxyFKixm; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279863.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 62CA0rtK4132496
	for <devicetree@vger.kernel.org>; Thu, 12 Mar 2026 15:14:36 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	xED7xEN4TjTNrU5iXSzFR8ZMiko58ch87aq5Y7kzU5s=; b=KuNHMZsOmzOINone
	ZFNqGNlh4Deg5591dDvy187UjtYYDeYqUjePW9nt47veIpGvsdiesj7vfat58nmL
	93Z3QE3j6ZiAw0kSy7NfTpFEeVvJukViB3n5xnIWrcyp+KLoC1lcgyemp5LVXkt4
	pur6Y8LydoQW68lpogZGpPP45O1V7wLSkB07PpG6ZRO+yWCrN5BvrFdQVdGxxor8
	Z2GoQPl4hN3XwKJeQa6G1JZjTur7BR+37sjUN7G4Kn2b4w/prKgn7RoE+styH6dP
	NBrMNpX92nxTFcCdInqZhh78Uif7JUuen+TX9uPlnnzps12G4NiVxQAi9uhd1/Ck
	u8qKJQ==
Received: from mail-qk1-f199.google.com (mail-qk1-f199.google.com [209.85.222.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4cuh4w2hh1-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Thu, 12 Mar 2026 15:14:36 +0000 (GMT)
Received: by mail-qk1-f199.google.com with SMTP id af79cd13be357-8cd7774be64so666311385a.0
        for <devicetree@vger.kernel.org>; Thu, 12 Mar 2026 08:14:36 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1773328476; x=1773933276; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=xED7xEN4TjTNrU5iXSzFR8ZMiko58ch87aq5Y7kzU5s=;
        b=BxyFKixmnOlBCozkCZ1DYZ2xZhH8ftPN6lmQ85Avrwo2bl9esietYP/5NKy3ohWU3V
         QgPaND6H9CJ1gNmOOemZ5tv9r2lkp+rbY++qlQMKpi6lx4sx2HZ0ihk3y3RqjSFYhKJF
         XLw4vgU2V/9r1KAzFv7cEO+fbSTYwAqt5Fd4mPXVIvnmtMqn+SNPqz7tCZ248eGoCK2e
         Vt0y48mchQNdogfYMHPyqmcnUosYnXbASoviJwE1osuBF6NNV/2Abq1jpsqQKMI6fLlU
         rsQJDcwQ0YCDuxcUSwa4VoyEAEp0tjklWAxjnBM4LNK7zSbFNyPjxW91BRNREWDokUme
         Zycw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1773328476; x=1773933276;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-gg:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=xED7xEN4TjTNrU5iXSzFR8ZMiko58ch87aq5Y7kzU5s=;
        b=HeGxIefPHlrZFLMKS0qTat2xMZckQUnF3V4BtStmL55E8KF4tbSunwU7zw/G0D66n7
         F0eLf6fz18R4kpIhxUKREruu2YPybvk7bGIk8IxFfAQSPsrHde/O3UEGCWGpIG6paQ0s
         /ECLGGcM59vNBtVJHm0lskl6t0SpCKDXE99YWejz/JjQuLUiB5QEZN3rebtb/BC2G7/n
         z18UAVLkDjiFPgqPdN767QFe5d10SI18Kj8V5B2t9aQpqTixUmVEf/2WFYfOB+k+5xcT
         e0w31lZ37QzDu1sEuh194tAsRBJL+uX3OFcN6C9fMcyKYEpiajChUxo4cAz/umwVGG1G
         f8Hg==
X-Forwarded-Encrypted: i=1; AJvYcCV/13IB9mknglcFRic7eICFlL1qwYyPQl3duEPdSV2oe/LxrmcnaVOZWBte56sB/lsstBxL0J1z/1g8@vger.kernel.org
X-Gm-Message-State: AOJu0YyREjreD3VWlIgpVq5jO9zo/UbIyWq1JKh9Z1EUCt4zSx64QJbn
	P+bK5o7qqMNtTvCsjVGa6ocpVeauDjrgWv2yGegh/nNOJMvMGmQdAiN/k9GNvumiLp++YGAxCYh
	J7L/wuwenZkVvC7OoOHaSnVGlNpFGwWE/Ubqpo7VS5AoieFMy1f/hsaXuaBKyH67e
X-Gm-Gg: ATEYQzyk1hPgMY/haBbxJGFfwD9XUcv/7qwvv/tl2vaRwn0JVjJ3dxikWOAvDnKdusV
	U+eB7Pwxgm/wiWhn7T1ApX8RlKv8AkbkN3S5dZuF4KNZbfA2s5tbIueRnKaRTMDOYzzDChJ9p/k
	CliNlYVbcLPbYpzGbjleYjjxqze5gB1lXeQKNTJlwW9vH0KWi2fTjiZWKwgZLrzuJw9j2277r8y
	6jc5k9+uMV8mb/80RO8ekp8ECoJ5GJSstWjnLaDzbpZKUnVy3Bsf4LRA6YJk3GNvS4QeqaXoOZK
	X4p2ll5gLAx6xwKY1KLn3FiLdhD5MdcqyhlMEAm9qdDEJEJ7rld4Jx6rD0sN0B83R/DwJWhUpp0
	uf2Wc0A7AhF8pXBw0tSEB0na522Je7rW/iXlgaPpekEHvoYyQdMcfo96PEQsgTk5TfbSQZMB6kB
	d+MU5ILCy05WIiDdkKTqzQnSEqWD8Ha1yyAeA=
X-Received: by 2002:a05:620a:2a0b:b0:8cd:85e1:e201 with SMTP id af79cd13be357-8cdb5a17fd9mr10918085a.11.1773328475582;
        Thu, 12 Mar 2026 08:14:35 -0700 (PDT)
X-Received: by 2002:a05:620a:2a0b:b0:8cd:85e1:e201 with SMTP id af79cd13be357-8cdb5a17fd9mr10912685a.11.1773328475110;
        Thu, 12 Mar 2026 08:14:35 -0700 (PDT)
Received: from umbar.lan (2001-14ba-a073-af00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a073:af00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-5a15635786bsm972822e87.61.2026.03.12.08.14.33
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 12 Mar 2026 08:14:33 -0700 (PDT)
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
Date: Thu, 12 Mar 2026 17:14:26 +0200
Subject: [PATCH v4 5/6] arm64: dts: qcom: sm8350: add Iris device
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260312-iris-sc8280xp-v4-5-a047ef1e3c7d@oss.qualcomm.com>
References: <20260312-iris-sc8280xp-v4-0-a047ef1e3c7d@oss.qualcomm.com>
In-Reply-To: <20260312-iris-sc8280xp-v4-0-a047ef1e3c7d@oss.qualcomm.com>
To: Vikash Garodia <vikash.garodia@oss.qualcomm.com>,
        Dikshita Agarwal <dikshita.agarwal@oss.qualcomm.com>,
        Bryan O'Donoghue <bod@kernel.org>,
        Mauro Carvalho Chehab <mchehab@kernel.org>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>,
        Abhinav Kumar <abhinav.kumar@linux.dev>,
        Bjorn Andersson <andersson@kernel.org>,
        David Heidelberg <david@ixit.cz>,
        Stanimir Varbanov <stanimir.varbanov@linaro.org>
Cc: linux-media@vger.kernel.org, linux-arm-msm@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>,
        Johan Hovold <johan+linaro@kernel.org>
X-Mailer: b4 0.14.3
X-Developer-Signature: v=1; a=openpgp-sha256; l=3647;
 i=dmitry.baryshkov@oss.qualcomm.com; h=from:subject:message-id;
 bh=eKAozrQ4xY3ezZ+7fjpNR39Vr/lnm61hf+9j71Jz9qI=;
 b=owEBbQGS/pANAwAKAYs8ij4CKSjVAcsmYgBpsthRIr7rtq1/pB9nZ34ZekIr3uo0Gp67FKHfs
 S0O31N+lm2JATMEAAEKAB0WIQRMcISVXLJjVvC4lX+LPIo+Aiko1QUCabLYUQAKCRCLPIo+Aiko
 1YXIB/9d8I3nIzLbz+CrGH34ZYe/jmWl5OkbWwNUq00+TCd9VpSBsl4WlrR2RkWQr9GdrbaKAKB
 2NM/htvljw2Aqt36Vw8sKLEyDDhEgt7vbpiW941Gx+onh0O2RTTPwFjhxQSlj2b49EwUyzAPzQY
 wP4CW3CknrAkmlRgiuspqR4Obde7stOsewr5/N1Gbj31DrW4iq9EXK63yC2pXXbE8ookYxAXSpd
 TVyM8QB+nRXaIw1Bxedn1AVty/13i/01rK3SJmdsNll4+/WEIMtAObeNNA0nhlAH81UzyWcUbh0
 2bOs8w+ccnX0j6j8zhlC6xG2JgAZk4RtTR1ncYIizwce3r/Q
X-Developer-Key: i=dmitry.baryshkov@oss.qualcomm.com; a=openpgp;
 fpr=8F88381DD5C873E4AE487DA5199BF1243632046A
X-Proofpoint-GUID: gRlFn-7ZDlASESJzNodjy44SkiO5zuHO
X-Authority-Analysis: v=2.4 cv=Cpays34D c=1 sm=1 tr=0 ts=69b2d85c cx=c_pps
 a=HLyN3IcIa5EE8TELMZ618Q==:117 a=xqWC_Br6kY4A:10 a=IkcTkHD0fZMA:10
 a=Yq5XynenixoA:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=u7WPNUs3qKkmUXheDGA7:22 a=yOCtJkima9RkubShWh1s:22 a=EUspDBNiAAAA:8
 a=zXEy-fkF16KV5FEPuqEA:9 a=WGqYyZY0-yHm69Mv:21 a=QEXdDO2ut3YA:10
 a=bTQJ7kPSJx9SKPbeHEYW:22
X-Proofpoint-ORIG-GUID: gRlFn-7ZDlASESJzNodjy44SkiO5zuHO
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMzEyMDEyMSBTYWx0ZWRfX/jCmCgofqK9B
 1+2Q+l5WQGq8/Bbdk5ocNvaL2Ot1KpSAwcClC9i9JsbwxVry+XsW2quS7MNLWDbHcvgRZIzLINV
 Mba0IwxDV/A8E8AweHvmcIT64L2rsZZiy4fIpryC302EdWB/mdNxHWbjlWzHXour16VBL3CJSQ1
 qfXwhLyNRmyRPGS+bcGjAAjcGBDCIX5diIgzst5LYhTtOZsW52lFDLgoqM4lZe+AoWTWpuE+zW/
 I7sjTKSJOBkra9YxzawgleRCoG+PtQJcXqlTvIPfVbOgtjzTl+qFiF3J3K/xZw5hcQegmaWwrfk
 QSuhklXvrretC6iOtHvNIY3srX0uuv/FwkAV+U6kM8FTApXjKacYLMIRcokk1RPImzG/fEkAoAg
 LRhCT38qgQYw0ggqxeMB1nIIGgXp7TaXXjwjT/9mCHlnzeuEdI7hKlaVKxXethfrRyXecPXGH3L
 OuTa6qSvbBkWYF88NgA==
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1143,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-03-12_01,2026-03-12_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 priorityscore=1501 phishscore=0 adultscore=0 clxscore=1015 lowpriorityscore=0
 malwarescore=0 suspectscore=0 spamscore=0 impostorscore=0 bulkscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2603050001 definitions=main-2603120121
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[qualcomm.com,reject];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c04:e001:36c::/64:c];
	R_DKIM_ALLOW(-0.20)[qualcomm.com:s=qcppdkim1,oss.qualcomm.com:s=google];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	MIME_TRACE(0.00)[0:+];
	RCPT_COUNT_TWELVE(0.00)[18];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_FROM(0.00)[bounces-274656-lists,devicetree=lfdr.de];
	DKIM_TRACE(0.00)[qualcomm.com:+,oss.qualcomm.com:+];
	RCVD_TLS_LAST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[abf0000:email,aa00000:email,oss.qualcomm.com:dkim,oss.qualcomm.com:mid,a800000:email,ae00000:email,qualcomm.com:dkim,qualcomm.com:email,tor.lore.kernel.org:helo,tor.lore.kernel.org:rdns];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[dmitry.baryshkov@oss.qualcomm.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c04::/32, country:SG];
	NEURAL_HAM(-0.00)[-1.000];
	TAGGED_RCPT(0.00)[devicetree,dt,linaro];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Queue-Id: DF26F274620
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

Add Iris and video clock controller devices, describing the Iris2 core
present on this platform.

Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
---
 arch/arm64/boot/dts/qcom/sm8350.dtsi | 81 ++++++++++++++++++++++++++++++++++++
 1 file changed, 81 insertions(+)

diff --git a/arch/arm64/boot/dts/qcom/sm8350.dtsi b/arch/arm64/boot/dts/qcom/sm8350.dtsi
index 5c8fe213f5e4..eedf677a7070 100644
--- a/arch/arm64/boot/dts/qcom/sm8350.dtsi
+++ b/arch/arm64/boot/dts/qcom/sm8350.dtsi
@@ -10,6 +10,7 @@
 #include <dt-bindings/clock/qcom,gcc-sm8350.h>
 #include <dt-bindings/clock/qcom,gpucc-sm8350.h>
 #include <dt-bindings/clock/qcom,rpmh.h>
+#include <dt-bindings/clock/qcom,sm8350-videocc.h>
 #include <dt-bindings/dma/qcom-gpi.h>
 #include <dt-bindings/firmware/qcom,scm.h>
 #include <dt-bindings/gpio/gpio.h>
@@ -19,6 +20,7 @@
 #include <dt-bindings/phy/phy-qcom-qmp.h>
 #include <dt-bindings/power/qcom-rpmpd.h>
 #include <dt-bindings/power/qcom,rpmhpd.h>
+#include <dt-bindings/reset/qcom,sm8350-videocc.h>
 #include <dt-bindings/soc/qcom,apr.h>
 #include <dt-bindings/soc/qcom,rpmh-rsc.h>
 #include <dt-bindings/sound/qcom,q6afe.h>
@@ -2745,6 +2747,85 @@ usb_2_dwc3: usb@a800000 {
 			};
 		};
 
+		iris: video-codec@aa00000 {
+			compatible = "qcom,sm8350-iris", "qcom,sm8250-venus";
+			reg = <0x0 0x0aa00000 0x0 0x100000>;
+			interrupts = <GIC_SPI 174 IRQ_TYPE_LEVEL_HIGH>;
+
+			clocks = <&gcc GCC_VIDEO_AXI0_CLK>,
+				 <&videocc VIDEO_CC_MVS0C_CLK>,
+				 <&videocc VIDEO_CC_MVS0_CLK>;
+			clock-names = "iface",
+				      "core",
+				      "vcodec0_core";
+			power-domains = <&videocc MVS0C_GDSC>,
+					<&videocc MVS0_GDSC>,
+					<&rpmhpd RPMHPD_MX>,
+					<&rpmhpd RPMHPD_MMCX>;
+			power-domain-names = "venus",
+					     "vcodec0",
+					     "mx",
+					     "mmcx";
+
+			resets = <&gcc GCC_VIDEO_AXI0_CLK_ARES>,
+				 <&videocc VIDEO_CC_MVS0C_CLK_ARES>;
+			reset-names = "bus", "core";
+
+			interconnects = <&gem_noc MASTER_APPSS_PROC QCOM_ICC_TAG_ACTIVE_ONLY
+					 &config_noc SLAVE_VENUS_CFG QCOM_ICC_TAG_ACTIVE_ONLY>,
+					<&mmss_noc MASTER_VIDEO_P0 QCOM_ICC_TAG_ALWAYS
+					 &mc_virt SLAVE_EBI1 QCOM_ICC_TAG_ALWAYS>;
+			interconnect-names = "cpu-cfg",
+					     "video-mem";
+
+			operating-points-v2 = <&iris_opp_table>;
+			iommus = <&apps_smmu 0x2100 0x400>;
+			memory-region = <&pil_video_mem>;
+
+			status = "disabled";
+
+			iris_opp_table: opp-table {
+				compatible = "operating-points-v2";
+
+				opp-240000000 {
+					opp-hz = /bits/ 64 <240000000>;
+					required-opps = <&rpmhpd_opp_svs>,
+							<&rpmhpd_opp_low_svs>;
+				};
+
+				opp-338000000 {
+					opp-hz = /bits/ 64 <338000000>;
+					required-opps = <&rpmhpd_opp_svs>,
+							<&rpmhpd_opp_svs>;
+				};
+
+				opp-366000000 {
+					opp-hz = /bits/ 64 <366000000>;
+					required-opps = <&rpmhpd_opp_svs_l1>,
+							<&rpmhpd_opp_svs_l1>;
+				};
+
+				opp-444000000 {
+					opp-hz = /bits/ 64 <444000000>;
+					required-opps = <&rpmhpd_opp_svs_l1>,
+							<&rpmhpd_opp_nom>;
+				};
+			};
+		};
+
+		videocc: clock-controller@abf0000 {
+			compatible = "qcom,sm8350-videocc";
+			reg = <0 0x0abf0000 0 0x10000>;
+			clocks = <&rpmhcc RPMH_CXO_CLK>,
+				 <&rpmhcc RPMH_CXO_CLK_A>,
+				 <&sleep_clk>;
+			power-domains = <&rpmhpd RPMHPD_MMCX>;
+			required-opps = <&rpmhpd_opp_low_svs>;
+			#clock-cells = <1>;
+			#reset-cells = <1>;
+			#power-domain-cells = <1>;
+		};
+
 		mdss: display-subsystem@ae00000 {
 			compatible = "qcom,sm8350-mdss";
 			reg = <0 0x0ae00000 0 0x1000>;

-- 
2.47.3


