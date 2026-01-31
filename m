Return-Path: <devicetree+bounces-261429-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 4NbSAt0KfmktVAIAu9opvQ
	(envelope-from <devicetree+bounces-261429-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Sat, 31 Jan 2026 14:59:57 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [104.64.211.4])
	by mail.lfdr.de (Postfix) with ESMTPS id 418DBC221D
	for <lists+devicetree@lfdr.de>; Sat, 31 Jan 2026 14:59:56 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id 1F80030060BA
	for <lists+devicetree@lfdr.de>; Sat, 31 Jan 2026 13:59:18 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 7C837356A17;
	Sat, 31 Jan 2026 13:59:01 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="kSVUfJ0I";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="jN5jMVQf"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DF1B63559D6
	for <devicetree@vger.kernel.org>; Sat, 31 Jan 2026 13:58:59 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769867941; cv=none; b=LekjGbmgtl5FOvRDhRni3cvOEUHeUBh2WprV24fWU8DXQRbNJAIrQsZsgvZbgZVwc67bpgT+E5NsXodbtWqcsTtumX68WQnheZfbm0uzJYfzHd+ZfrpKUyzCB11QWWGpUrECqxe/YYdJXBqgKTeF3zUP6VwmQ8l3seyCqqV4DDA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769867941; c=relaxed/simple;
	bh=XMmEmNUu9RVdz+GiH0qUt2UhQyeVsFtCItZxcUhLc/o=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=FQbFJEQNiKi5Vlx/rBsI6rkyBrpaTuIRmkq8D9D+EP7hQ4GAYaPIoWbC+BFfABUczT7ALKTEpSAsHwQj/jMjSP2ouaJ8drCGLPgdwW6mPToGhSJH9VupVykA7n2AbPnlN2JFGu+8H+6Li4EptTfBSDpcusJYrX4jpbj0tJEfoIQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=kSVUfJ0I; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=jN5jMVQf; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279865.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 60VCG6DY1583138
	for <devicetree@vger.kernel.org>; Sat, 31 Jan 2026 13:58:59 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	6GgdwoB+Ukn6VRO1bHY69INTqGlbDpb72pFrBX8+YRI=; b=kSVUfJ0Im0AM7EA1
	/UMOG+UbCZjQlmc4UiH7Nicv/GCqolpBw8KGNd8cCw/grgLI1wDul5s6sSaM6QuM
	5iujMVIirCcJol2P7ChldI3XwJj97d5CcEl4DMOa8BKASauP5dF8JO6UtigKqLtp
	WE3umJApTqwC2kuM3n67dBUNa9qzp/fuTlmo5nkbpNhEWiuIjxndJ968nqrt6iPK
	nkkv6U3VojhK+TSn13cpBfMt1gnOD9EgEvBuLqkEHOiQgDcUsbUv96BFlVjdHnGu
	jpod/AWI2RzYwK3iiIqbyHF/q19Z/IrKHcX0jwbkllZtsFjt7eWKIzjypczdapro
	e0pclQ==
Received: from mail-vs1-f72.google.com (mail-vs1-f72.google.com [209.85.217.72])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4c1au2gurn-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Sat, 31 Jan 2026 13:58:59 +0000 (GMT)
Received: by mail-vs1-f72.google.com with SMTP id ada2fe7eead31-5f55092e3fdso8598652137.0
        for <devicetree@vger.kernel.org>; Sat, 31 Jan 2026 05:58:59 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1769867938; x=1770472738; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=6GgdwoB+Ukn6VRO1bHY69INTqGlbDpb72pFrBX8+YRI=;
        b=jN5jMVQf9TLEePy/hv7N84h1bGyQ1lXRy3jyWvxIgCHtzWJSErxhI5pkjSxxHw3Rrs
         isxmxWAk6Vi+klRvWyw29bbUPgE3/zSkDY97wu42whvZOn/vtOywz4+q1uRYtXi7jRs2
         AdAzDsQlw+Revb/9SHXOvQY4tTa67bFAItFw37izrGYtwCirRZI77l0GhX7gsxXK/imy
         GMT96CQNzY20nXUyfWyHm8EZEuk+puechAkc1lOgshmEdUjsUXMkl5MB1eBZbcRKJEt4
         aeyAFQWfbunXKtri+LK40UFiLHGUhfc1MXDIBUN42pnTHfdYA7AqIwKHJ8QqUiB5nEvx
         i63w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1769867938; x=1770472738;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-gg:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=6GgdwoB+Ukn6VRO1bHY69INTqGlbDpb72pFrBX8+YRI=;
        b=fbo/jaqDFfW8Dncu/iXvUGGsRTMsYeV/tYc+DtCnbEBuyyJmVgYv9TCogb6Bly0iZP
         HmMVt0Xv6kw8QZ1lHDpxdNzinGrmV0rx0IC3Vq3xc5PGWVsgyVZDWoS0iHHPL96EiyZh
         PNIBs71Mgj1wnM07D+IHLhyAV0Teh0Eom9SUJ2Rchwo7MpTDhM+FraZlEcCjCFRNiMsl
         LsqLPaXyPYOJl5fTW1BfK/udL/7S1Ea8ue/ajbB+Gv6TNtzYxr1cGnEzxGvdAHVkco4C
         XL+U03jWxw/gFeSC4frm2dMM/fsW8ARy/2ylDv9SviUkA0fGv5kK3ZMP9kI0wIPg8DA5
         nymw==
X-Forwarded-Encrypted: i=1; AJvYcCWTzVVpfRHlGEtRolbNR/PBZYTFTJ0pQUj80LgTN/zACdvLApoB58kU46T49E1M/jW6Ko4twwSiuvJg@vger.kernel.org
X-Gm-Message-State: AOJu0Yz6HGqDyrgs9Nm2g4me44lfn3OdZ+e7rlP8wihV5g/Cp/b5tjI6
	t0BV0bohZ6ao3jx3oQg2bmJFCj5+ekYnPWkE1Pcf1lMXs1qrSVIV0vev2kDfbryEHJ5je+J+DHP
	BGUY7JICcHQ9STPp0EjRg6UX+SgBHnLz6d5EHea7ApDWOiIytWdOjA+CI8zQ7wwha
X-Gm-Gg: AZuq6aK9Y9jyrZhhONrsgk317grLhx35zUg1WCLNg1RYruk0GD6HkDReHMIPmROoCaE
	co/vUPjjLqK37HF061Wl0xo/hMNYaUoglQoo40S6MOeGvrAjg0n7VRh1naWQ3BkJsMRzUxFzPvk
	MFlzUk0dh6C5rCXwsGqD3bnN921Kcd7cSgUr7Ia0X+Jlj2vYQEaE19CbHJolD4bwPQgoR19ttrq
	6fR5QlVxkB7lT1WisuKQKoFflVmeOClaTm4RbnAoaDQtg8Hr2P+apwO+XMqLtME5zSCViuWHNSS
	AigPSUN7G2hk3CKDYwh7h8vHK8pM6foTSkwsmJc5j5doXEhvb3PKSvtKS4eFZu+YiQoVwd1AQ5K
	mzd8F4UeSjz4Wgo37hwI8zxdotez8cbkt+VkVpVzL5f3j64NcgK0h+jvf6jVpx0wYkWFQhJ/ZBV
	VCwAi6qlIb0O6nDyT9MZJBtt8=
X-Received: by 2002:a05:6102:440b:b0:5ef:a416:be63 with SMTP id ada2fe7eead31-5f8cdc8e1famr3463244137.22.1769867938104;
        Sat, 31 Jan 2026 05:58:58 -0800 (PST)
X-Received: by 2002:a05:6102:440b:b0:5ef:a416:be63 with SMTP id ada2fe7eead31-5f8cdc8e1famr3463230137.22.1769867937708;
        Sat, 31 Jan 2026 05:58:57 -0800 (PST)
Received: from umbar.lan (2001-14ba-a073-af00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a073:af00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-59e074b2dddsm2373021e87.61.2026.01.31.05.58.56
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 31 Jan 2026 05:58:57 -0800 (PST)
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
Date: Sat, 31 Jan 2026 15:58:53 +0200
Subject: [PATCH v4 4/5] media: qcom: iris: increase H265D_MAX_SLICE to fix
 H.265 decoding on SC7280
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260131-venus-iris-flip-switch-v4-4-e10b886771e1@oss.qualcomm.com>
References: <20260131-venus-iris-flip-switch-v4-0-e10b886771e1@oss.qualcomm.com>
In-Reply-To: <20260131-venus-iris-flip-switch-v4-0-e10b886771e1@oss.qualcomm.com>
To: Vikash Garodia <vikash.garodia@oss.qualcomm.com>,
        Dikshita Agarwal <dikshita.agarwal@oss.qualcomm.com>,
        Abhinav Kumar <abhinav.kumar@linux.dev>,
        Bryan O'Donoghue <bod@kernel.org>,
        Mauro Carvalho Chehab <mchehab@kernel.org>,
        cros-qcom-dts-watchers@chromium.org,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Stanimir Varbanov <stanimir.varbanov@linaro.org>
Cc: linux-media@vger.kernel.org, linux-arm-msm@vger.kernel.org,
        linux-kernel@vger.kernel.org, devicetree@vger.kernel.org
X-Mailer: b4 0.14.3
X-Developer-Signature: v=1; a=openpgp-sha256; l=1097;
 i=dmitry.baryshkov@oss.qualcomm.com; h=from:subject:message-id;
 bh=XMmEmNUu9RVdz+GiH0qUt2UhQyeVsFtCItZxcUhLc/o=;
 b=owEBbQGS/pANAwAKAYs8ij4CKSjVAcsmYgBpfgqcNqieakmJvNMC+ts6e9KzXlb8PBNWW8b33
 BXKF40pzkuJATMEAAEKAB0WIQRMcISVXLJjVvC4lX+LPIo+Aiko1QUCaX4KnAAKCRCLPIo+Aiko
 1b/ZB/oCXNBLxnfq7A2nG2a5eVAzm5zJNon4wFNJSrJhTWuL7hIgST6h73z4PoFbuQwMf+bqrxy
 JUi7uHx1g09oNYksdmNUHXYWYP3TWHtEMOawLqhT0sCV8bGZdJzAL1/HbNI3mBchUiHhbtVUV2a
 pOjPjM/SYN6a2QpvizfOTpl4dezMQIqVFzTRdwTq/8i7luvsJ34MgcgsaFimS2fhGHUSEhbkVW6
 xkQBLny2Db32rvs/LVk1S1Bx13uW3apyJ/hdg+kot5+gYo+1hZU4QTZRLKs2T+6I0P8oLHw+kvO
 KhpdldvcPtzMKKVi7uG+GiDjyvVPDEHV9X1t8vu0Z4cfb3RP
X-Developer-Key: i=dmitry.baryshkov@oss.qualcomm.com; a=openpgp;
 fpr=8F88381DD5C873E4AE487DA5199BF1243632046A
X-Proofpoint-ORIG-GUID: Wy0j9ETZR_Zmo82M_TvKUUI7Td8Fjltl
X-Authority-Analysis: v=2.4 cv=TtfrRTXh c=1 sm=1 tr=0 ts=697e0aa3 cx=c_pps
 a=DUEm7b3gzWu7BqY5nP7+9g==:117 a=xqWC_Br6kY4A:10 a=IkcTkHD0fZMA:10
 a=vUbySO9Y5rIA:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=EUspDBNiAAAA:8 a=2ewHlduzuzxMNEBOIYQA:9 a=QEXdDO2ut3YA:10
 a=-aSRE8QhW-JAV6biHavz:22
X-Proofpoint-GUID: Wy0j9ETZR_Zmo82M_TvKUUI7Td8Fjltl
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMTMxMDExNyBTYWx0ZWRfX9Vk/W0Ku7PGu
 tXJxViKtBrnqXEgGe+9SoS/H1DUjQra1U9++m2+l6Xfu57Bz2QiNhsr1rHk6tWFFWO8uyjqxKmu
 UI91sDkBSu869TtzkoSjW/FFMJOYeqnIgNS3qziTt/QXifzcsh/v59yyxQTNGY3xqJpJQASwGM8
 YyCh2Xi42ELL/gHjJaNzM8B3F9I5xQAMtUkMTngYpwdLPRJeqomziuSYg1b9Ji8DA1YLqk38Lsd
 S+0E3+K4B5IO3CvjMCxzXBmEqnVz1/FXLmcUqLqDdzjGUIQL0NxzXb51eeYF94QVgVrt+DyYUyW
 anlGCa60VaNCX+gW1D0s3QJEUgEaMZrkRuEKD56gomeFrVx+3fktC73IS/jrMB83UycLawea/EM
 PvxU/NqcppgI0auQZWRsXacT4iv7WwyAXCH2MVLRreYO1uCeX9eQFcQ1tXdfoMFrAGf+MpEu4FR
 7eUcbWdtdBWNOqntWeA==
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-01-31_02,2026-01-30_04,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 impostorscore=0 spamscore=0 phishscore=0 clxscore=1015 bulkscore=0
 lowpriorityscore=0 malwarescore=0 priorityscore=1501 adultscore=0
 suspectscore=0 classifier=typeunknown authscore=0 authtc= authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.22.0-2601150000
 definitions=main-2601310117
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[qualcomm.com,reject];
	R_SPF_ALLOW(-0.20)[+ip4:104.64.211.4:c];
	R_DKIM_ALLOW(-0.20)[qualcomm.com:s=qcppdkim1,oss.qualcomm.com:s=google];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	MIME_TRACE(0.00)[0:+];
	RCPT_COUNT_TWELVE(0.00)[16];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_FROM(0.00)[bounces-261429-lists,devicetree=lfdr.de];
	DKIM_TRACE(0.00)[qualcomm.com:+,oss.qualcomm.com:+];
	RCVD_TLS_LAST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[qualcomm.com:email,qualcomm.com:dkim,sin.lore.kernel.org:helo,sin.lore.kernel.org:rdns,oss.qualcomm.com:mid,oss.qualcomm.com:dkim];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[dmitry.baryshkov@oss.qualcomm.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	ASN(0.00)[asn:63949, ipnet:104.64.192.0/19, country:SG];
	NEURAL_HAM(-0.00)[-1.000];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Queue-Id: 418DBC221D
X-Rspamd-Action: no action

Follow the commit bfe1326573ff ("venus: Fix for H265 decoding failure.")
and increase H265D_MAX_SLICE following firmware requirements on that
platform. Otherwise decoding of the H.265 streams fails withthe
"insufficient scratch_1 buffer size" from the firmware.

Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
---
 drivers/media/platform/qcom/iris/iris_vpu_buffer.h | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/media/platform/qcom/iris/iris_vpu_buffer.h b/drivers/media/platform/qcom/iris/iris_vpu_buffer.h
index 12640eb5ed8c..8c0d6b7b5de8 100644
--- a/drivers/media/platform/qcom/iris/iris_vpu_buffer.h
+++ b/drivers/media/platform/qcom/iris/iris_vpu_buffer.h
@@ -67,7 +67,7 @@ struct iris_inst;
 #define SIZE_DOLBY_RPU_METADATA (41 * 1024)
 #define H264_CABAC_HDR_RATIO_HD_TOT	1
 #define H264_CABAC_RES_RATIO_HD_TOT	3
-#define H265D_MAX_SLICE	1200
+#define H265D_MAX_SLICE	3600
 #define SIZE_H265D_HW_PIC_T SIZE_H264D_HW_PIC_T
 #define H265_CABAC_HDR_RATIO_HD_TOT 2
 #define H265_CABAC_RES_RATIO_HD_TOT 2

-- 
2.47.3


