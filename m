Return-Path: <devicetree+bounces-240980-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from dfw.mirrors.kernel.org (dfw.mirrors.kernel.org [142.0.200.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 0A1B8C78468
	for <lists+devicetree@lfdr.de>; Fri, 21 Nov 2025 11:00:43 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.mirrors.kernel.org (Postfix) with ESMTPS id 5FB414EC2BB
	for <lists+devicetree@lfdr.de>; Fri, 21 Nov 2025 09:58:28 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 948E634A3CD;
	Fri, 21 Nov 2025 09:54:32 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="DUZKAFJd";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="BtAqXxAX"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E15A2349AE1
	for <devicetree@vger.kernel.org>; Fri, 21 Nov 2025 09:54:30 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763718872; cv=none; b=FuGA7Re8w1KHgGgTsfk2ODJn6/uAaSxUxmIOyNgqNnW+WkcQr55wHeEgXmU1VujtvpSSnjhiGck42e2JH/oHIwp3G2cnfAapWLj5a/UFwXhopcASXq/psjOspn8W8bPuw4P8D3Jj7OX4Dw7LyC8iEScesEorDCPbISmnc2oJpRU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763718872; c=relaxed/simple;
	bh=lcIb10k63srOGjA52ST27WwTXABGn789XrBKsrY3Kqc=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=g0AGS/rlLlb5gYverJ+S8enG7ugL7HiRZ4xcQzq4TChB0+DpamWOw3/aWaDQPLS4+mKybvlrbl9yioF4qwDfxR0vei/xGlJIBNiflL+kK8QSjHE0ga9mbC2Yaoz1jNrQJ26gInRsvOaDTRPtMTjgVkiKIjLfZyVBmCccamy8q3U=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=DUZKAFJd; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=BtAqXxAX; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279871.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 5AL6ddYr1988099
	for <devicetree@vger.kernel.org>; Fri, 21 Nov 2025 09:54:29 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	/Syg7yKpdvMcxAxhOLjJIJLzE5TOYLMuFON4SNxoMdU=; b=DUZKAFJdbhxRXjZf
	xopDlvQAk8kJQ6puvoc7vdY9f/fem7uUXISWXIs4+7u0SElgNJ5DNNfljd+pgndt
	A7j2EERKuvGDh/VQD3R2+qyTvdEjN13Q9ihud6zzfif4sG0ou1hQmhboRasd2Ndr
	CF4T9irpD82WoiQG2WQh56GMl42uBaa9rkGr8oDMl8TTN5yqAggoZ46hLTOcmrqW
	mIkXpdpgwfo3A7VniUtVMeVzLOzebZPK9IZtcg9ErQ7NXTwMVoszSqAnt1DPZMYL
	ZI6Y+uF3Ts4jhaaE1k9c8eYiB6DOwWowaKFf0XRmDTAAB++vLoGgvEN3qMhu3yvO
	2ww22w==
Received: from mail-pg1-f198.google.com (mail-pg1-f198.google.com [209.85.215.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4aj1vabybv-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Fri, 21 Nov 2025 09:54:29 +0000 (GMT)
Received: by mail-pg1-f198.google.com with SMTP id 41be03b00d2f7-b969f3f5c13so1843696a12.0
        for <devicetree@vger.kernel.org>; Fri, 21 Nov 2025 01:54:29 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1763718869; x=1764323669; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=/Syg7yKpdvMcxAxhOLjJIJLzE5TOYLMuFON4SNxoMdU=;
        b=BtAqXxAXA8L9T1KoZKw5fR/2sBYjSGrQSydRAPv7x9CH0rEa5MlTGVxCURzYiocXR1
         PI7GMFnVIMb++yl2mfuQnMb0T9s17MBps3+AL3vD+as0KPkzImiFCMn7JQQZ7Mo0X61P
         gN9Xf3e6QDw7Q7JOZX31FK8tN50BF3eBbP2yf2OK/pMWuNkEaXGJxn/EQaf0VVFIUClH
         4/fpjEmvsV79H+oc74zUiBSdgKnia9vB2u4hpeoJzLsu4btt2XRl0iSmAu4CfM/xysdk
         kRMPR2VAcIAa/w0T9/cOBxdSvx5rgl2V31su2s1IEgCzsi9k8dk96hUuNUuFFVP+YgfQ
         iEIg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1763718869; x=1764323669;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-gg:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=/Syg7yKpdvMcxAxhOLjJIJLzE5TOYLMuFON4SNxoMdU=;
        b=UTmH+Jcq2FtfRR8HLG4xC+7J90jMjdEt7YFw9xCBKJsffhxhMys1tvE/WG+xVWkZt6
         Ln6hG3vXFgkquNecFFBRam3mPvTZbRh4pXeO7S9Uy6q5Jr35wsVFOMStxmymIYrC/dF5
         B6jYSTyM9WXIA9+iMSpDed4F+hHWnlGrklNyO0sxzm5xUojFfsX9Tusg4VJtIGCxvEgJ
         0yfVlVoolzexv0t+M7uUUeYegSXkzQCOBfVxH9Bj7/7v1Np/koYZE71D1D4ahdYttsIu
         6DQ5EPHit1KY6a7BsgTdMgTYbR1Y4LgOl/yfdeIpd0g89IExOdzXoik6pvdve1199wip
         8wrQ==
X-Forwarded-Encrypted: i=1; AJvYcCXuHWiPtnKAJHrYP77sNpvw2uFSC8MNSZrQ1E6HXSrmiTA0bWRTSrHOCkAebIj73SEgPeGzUezpy5up@vger.kernel.org
X-Gm-Message-State: AOJu0Yy2ytEwqQfgNj6QPwUhuCAvH1goZMgXw/5XI0SUKs/Heu65jn8w
	V0cXOsXdoGhJHq6Tt3E+gkp0WsxKRkReCeyRP3XUFXF+z1DDFo7GoWAlZCj8VHmlDtty5G2/Rz+
	JFkGLk6sXaMc87Cbf7PzhUDkuYXvZY/q3Co0ZFacDjCLKuMPNvdO80B9Hb9zRkEj8
X-Gm-Gg: ASbGncvMCxU7eqXSclIO2beKjhVLFugnh+H0oL720d/tZtF7Icm6f/VSHtYPbtPY4jJ
	+c5IhwDFh6T5zyHxR5odna5Qhqehc14NNWGeTZINKJP2LwPDAcNGFIaE7nJ1NJVxjMPDph23Oet
	kqN8EQGgThI+8vN9JOOLMOD5/MRB2zTBGMq0JtZx2sJrtOpQ3JSn8CYU5R2mzigr47mSaCuJ0o1
	zCcY7xHQ9WJ7XBDk5rfo71GQYnEf52y1+KfRQYrmmZw8z1Su1ymvP/U/VFtjmV/14Y3zotvn/wp
	xQAzFS4SMJj41rKb5vzMUj/js7ivEizEehv8qQ+5PNg74kqU6l//CMinMv1d87b/SBImoEd1ims
	Mt/ZSOs+LwtvEGQF49al6WC6C6hGYNZbaAwEbmMSCaOu5lx2zi5M2Ji6pcAcvXzMlBBPg4SEiJx
	j/IDA2OayCMKkHQcGXs9WRQja9brJvOQ==
X-Received: by 2002:a17:903:1988:b0:298:34b:492c with SMTP id d9443c01a7336-29b6bf82d52mr26417005ad.54.1763718868810;
        Fri, 21 Nov 2025 01:54:28 -0800 (PST)
X-Google-Smtp-Source: AGHT+IGmKs6406g427RTpsoL9NdDoy90nYQGvu7q3MM6I+F14YFZ4EmPyNWA30GMQBW2gpI2/+PPAw==
X-Received: by 2002:a17:903:1988:b0:298:34b:492c with SMTP id d9443c01a7336-29b6bf82d52mr26416595ad.54.1763718868255;
        Fri, 21 Nov 2025 01:54:28 -0800 (PST)
Received: from hu-pankpati-blr.qualcomm.com (blr-bdr-fw-01_GlobalNAT_AllZones-Outside.qualcomm.com. [103.229.18.19])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-29b5b13e720sm50557985ad.42.2025.11.21.01.54.25
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 21 Nov 2025 01:54:28 -0800 (PST)
From: Pankaj Patil <pankaj.patil@oss.qualcomm.com>
Date: Fri, 21 Nov 2025 15:23:53 +0530
Subject: [PATCH 2/4] soc: qcom: llcc: Enable additional usecase id for
 Glymur
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20251121-glymur_llcc_enablement-v1-2-336b851b8dcb@oss.qualcomm.com>
References: <20251121-glymur_llcc_enablement-v1-0-336b851b8dcb@oss.qualcomm.com>
In-Reply-To: <20251121-glymur_llcc_enablement-v1-0-336b851b8dcb@oss.qualcomm.com>
To: Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>,
        Conor Dooley <conor@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org,
        Pankaj Patil <pankaj.patil@oss.qualcomm.com>,
        sibi.sankar@oss.qualcomm.com, rajendra.nayak@oss.qualcomm.com
X-Mailer: b4 0.14.3
X-Developer-Signature: v=1; a=ed25519-sha256; t=1763718858; l=922;
 i=pankaj.patil@oss.qualcomm.com; s=20251121; h=from:subject:message-id;
 bh=lcIb10k63srOGjA52ST27WwTXABGn789XrBKsrY3Kqc=;
 b=gYJgvh9pvsAzXURX2PDWuMo71cqcHJm2hloHFRRX25KTnemIzSRQ3zjoz9KmKdwmOE4H4w1E2
 yhQGNG2LpbHCGvQVjM9WTmzLQvmSJsMTLY89LzgcyMqP9oaNHNiy0h1
X-Developer-Key: i=pankaj.patil@oss.qualcomm.com; a=ed25519;
 pk=pWpEq/tlX6TaKH1UQolvxjRD+Vdib/sEkb8bH8AL6gc=
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMTIxMDA3NCBTYWx0ZWRfX2LH+N1CKhV2S
 /POm62NtVa8gTdBo0xZhTYgmf3fgb5d13EWTAWo3wdteHfIoGNUh+wW79vD0PrSawV+2T609a9m
 Jubi4yXg0641Yzcqj/eRYWn7zO8aUPQ8caPhI+pLv8cu/zrpCN9ratP5iiBcykyCGC3p7anrSHu
 jiicqJ0GlJSkiYTS6Un2Gvc3VieDz9Ulvuly2GGsp1IqBJOtnFr3O57NRAGMZ/3Z2AVV5S1uOk5
 jFiPmfUhIM53BERFG5O2y97RQDDDQHRNQ+pJ6PgtPXuOYgwYyw+wBuB+k52SigxzonJXK+Zwj0m
 If3nPMdmpv7m2D6BcUMCDeiBbfHMGpQP7Vp5PaHxC6z3GRaKSSdk7Gp+9YjwG6Sp/felcH/AVwt
 oL/oWr8YPvtbDEVvstjNmX/cIWE6fA==
X-Authority-Analysis: v=2.4 cv=Vpwuwu2n c=1 sm=1 tr=0 ts=692036d5 cx=c_pps
 a=Qgeoaf8Lrialg5Z894R3/Q==:117 a=Ou0eQOY4+eZoSc0qltEV5Q==:17
 a=IkcTkHD0fZMA:10 a=6UeiqGixMTsA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=EUspDBNiAAAA:8 a=hEfLBhVOvc7m0yOUfkcA:9
 a=QEXdDO2ut3YA:10 a=x9snwWr2DeNwDh03kgHS:22
X-Proofpoint-ORIG-GUID: c-k4Gl0pFnwnDEGlRlwghkbC79_PgQzP
X-Proofpoint-GUID: c-k4Gl0pFnwnDEGlRlwghkbC79_PgQzP
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2025-11-21_03,2025-11-20_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 clxscore=1015 impostorscore=0 bulkscore=0 phishscore=0 priorityscore=1501
 malwarescore=0 spamscore=0 suspectscore=0 adultscore=0 lowpriorityscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2510240001 definitions=main-2511210074

Update the list of usecase id's to enable additional clients
for Glymur SoC

Signed-off-by: Pankaj Patil <pankaj.patil@oss.qualcomm.com>
---
 include/linux/soc/qcom/llcc-qcom.h | 4 ++++
 1 file changed, 4 insertions(+)

diff --git a/include/linux/soc/qcom/llcc-qcom.h b/include/linux/soc/qcom/llcc-qcom.h
index 0287f9182c4d..8243ab3a12a8 100644
--- a/include/linux/soc/qcom/llcc-qcom.h
+++ b/include/linux/soc/qcom/llcc-qcom.h
@@ -74,13 +74,17 @@
 #define LLCC_CAMSRTIP	 73
 #define LLCC_CAMRTRF	 74
 #define LLCC_CAMSRTRF	 75
+#define LLCC_OOBM_NS	 81
+#define LLCC_OOBM_S	 82
 #define LLCC_VIDEO_APV	 83
 #define LLCC_COMPUTE1	 87
 #define LLCC_CPUSS_OPP	 88
 #define LLCC_CPUSSMPAM	 89
+#define LLCC_VIDSC_VSP1	 91
 #define LLCC_CAM_IPE_STROV	 92
 #define LLCC_CAM_OFE_STROV	 93
 #define LLCC_CPUSS_HEU	 94
+#define LLCC_PCIE_TCU	 97
 #define LLCC_MDM_PNG_FIXED	 100
 
 /**

-- 
2.34.1


