Return-Path: <devicetree+bounces-234323-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 56BBFC2B4EE
	for <lists+devicetree@lfdr.de>; Mon, 03 Nov 2025 12:24:57 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 3F86A1894FEB
	for <lists+devicetree@lfdr.de>; Mon,  3 Nov 2025 11:24:52 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 1113D303CAF;
	Mon,  3 Nov 2025 11:23:49 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="aDxucTr2";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="ZnmSPK33"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8D0B1303CA1
	for <devicetree@vger.kernel.org>; Mon,  3 Nov 2025 11:23:47 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762169028; cv=none; b=dnZrl2FNVNM109gr7guMrndsp8UqwkkD/ffEKWg/1guOAHfWxJHY1fLJwwlMZBfiDcMwqHG3/9wrYK+Ho/1fNhz6uCeLGrfFmwAhcI/ZLOUP49xYn+zrTjSoN1Ex/OisF+DOpNGeobyRM7xY8rEfgdx+VBTrZPCnSpZhTMObwPs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762169028; c=relaxed/simple;
	bh=DRvka4WME8E68wyim4V4jVXhqhIqoleD68BrLy0DOic=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=m6ymX+kRNmQeeMs1GFpNaXDXTxUi4RTkm0OVf4dBCwUL+NytMVftgJo3CYm6IlrUo3uzhZ4DxE4oVFBLkOR7vq9kzPPuJHPD+lM1SGEZVY7lubVB6EG2Q92M5j/EBByxERuVhLJNNOWIY12f9p6v+zeQZDtJTlvLmZgnWpElF+8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=aDxucTr2; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=ZnmSPK33; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279867.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 5A3B5un12906517
	for <devicetree@vger.kernel.org>; Mon, 3 Nov 2025 11:23:47 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	WQBAmd3x4xg7RSgJRtPCwjlsBjPgBVVzNTmm7gL/Ybg=; b=aDxucTr2M7vILcaf
	5/FaEYr7UY5g9RtAlVkrl4scF/oq3D5aD2vvUbCDSNymojlnvaedo7TxSbxKVnqs
	zVTI5iaPu4sBOUvML0QvCIGnJhSnBFgwZv9nH/4Ij9/Uj4dH92tn77rg8Pz/pQvx
	ZxNX+Bdiny9vBq2VKc/M/QPQVFMsnkPdn7Hi3ISDjQERNjuo5u5GyVy+kakthmyx
	Z9f9xxifceaxIwobGUUpnOx2MnMwiqI+24qwHQYYmeFWAb4YS+GVTD+YbJw+NaHT
	XaBIHI1bI+wmsb9wm0OGNOIAuqDrrc5JgilFAcqHVsXh2A0lHvnodg3uw8F5kd8w
	7ywrZw==
Received: from mail-pj1-f69.google.com (mail-pj1-f69.google.com [209.85.216.69])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4a6u7kr1aa-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Mon, 03 Nov 2025 11:23:46 +0000 (GMT)
Received: by mail-pj1-f69.google.com with SMTP id 98e67ed59e1d1-3408d2c733cso3532637a91.2
        for <devicetree@vger.kernel.org>; Mon, 03 Nov 2025 03:23:46 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1762169026; x=1762773826; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=WQBAmd3x4xg7RSgJRtPCwjlsBjPgBVVzNTmm7gL/Ybg=;
        b=ZnmSPK33X3PaIbzxN6HXzNy9UgrXUAMWYSM6S2hZg7hUzYhC54iGyZAnc4Op01oC4o
         o6ubqBYysX+5zW+FBU/nGxpKz/mVqJa+q2kR/uDk2l8ogjwVWAHaDoAsUBvgjEutSNPJ
         kHNs+afuEYyIDW7CviwsoZV3jloRxbRyytmXf3O3ECrBhJ33Z412sGp5Ir4g/7pnqje9
         UjWHjAmYom60wmzE8u8UCwtQsbiu4DxHRs1HKuXDAb80HMgXsDkyqMY1YAJD92DKCXR9
         A+36d+74cl0dqeXo+lYhmEp0VDpR2RM9GQAEUqanlFSsiKWEXdmK5G0ZCpphA4n4ggGn
         1+GA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1762169026; x=1762773826;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=WQBAmd3x4xg7RSgJRtPCwjlsBjPgBVVzNTmm7gL/Ybg=;
        b=kv3fKBbAgyiKR+hw6RcEvqkf5xJWmbId1xy63BzZamfF6gCCiRd1kL4iiIWi4NJavv
         GLyyGOe7lyyovl1TNL7hBIGwQWDERf0k9K+wlEqjhnR/0Hf3QRYUhiYvwdj6aouZ+yyC
         6cnHVXRPMbFaaH0WBclpuUZcF/aCZHlqzjys2vwJUqpkvXR9dULaj+rmNIV1wKOwyM8R
         dtRMgJt098fmmlARCwf+ullubrpxv9gANNf4AI9mO3syXtywhaOEmoILvfrkjpfR2xAy
         oaySKPNZFkn3ZjCd06PZbZ5U2p6YTopER2WpIhNc1oBYWqCZqrH6kACfjTsqlfEmy0mx
         2olQ==
X-Forwarded-Encrypted: i=1; AJvYcCVi1nB7K2m8azt9zM6CD9BA8P5LsizsE/k7AHCPHtjcNtOf2+nwTlVjV6xELyoY9rFOnwthKG3KxIra@vger.kernel.org
X-Gm-Message-State: AOJu0YzZuw8xrME4IhrtKS1KEwg22K0lfkmc1RoPFDsy7DpgOe/BX4fo
	wFuJeBXBH2tY3O8X8AgrNMpEzzsOIwz6MyhXpmGm/Dllv1DdjSgu0vgly6p/oWfRcKIxDqrDdaQ
	1puBGuehFUyqip9jlVcVwVWM8aJR2H9Qcz04dXjMgXKiCC6pqbXbagaOEa86Pz0XC
X-Gm-Gg: ASbGncuI+oz+yEtfK8Ux7UauDcVq91DptMcrYgVzpE979pTWXnLMrXQDNO6+qAycN9l
	ZyYNQcMT9k9l11Grq1Z8eIq+XCJOfxnEF0pcFe3i3AEmI5pYMApcwAH3Qk4f8hI7CnPtsW8xPYb
	3V73aagJtw5SKEfENXBKwLWgKgg28ZnGNSoWjhGYgoYcB+zSQYPRECCdHnMioljLtyxJUqTJddF
	cFt6PDSstA3SoCs1MgMk5W5jMD25q6avYXAKnP0R17ufjtP75TFh1iD7dR5BbG2oQY4MLfE+AsW
	GtpX9UnM2jAfL8bYBcr8QyaMGsV4TMTgja/ryUC0mv0JRw0Rdg4gBZZDafNER8O3flv4BI3/dFB
	zMnxaWtPoQYdfNk2JNe+3Pb20gNA=
X-Received: by 2002:a17:90a:d44c:b0:32e:5646:d448 with SMTP id 98e67ed59e1d1-3408305889emr15090833a91.21.1762169026166;
        Mon, 03 Nov 2025 03:23:46 -0800 (PST)
X-Google-Smtp-Source: AGHT+IFjpJrb/hQEmZyHFAxf7uWiZ56d0Hgy5+Pi1tjMc8HAOXo7OWC89XrnFGr7HukikPexvpMlKQ==
X-Received: by 2002:a17:90a:d44c:b0:32e:5646:d448 with SMTP id 98e67ed59e1d1-3408305889emr15090812a91.21.1762169025667;
        Mon, 03 Nov 2025 03:23:45 -0800 (PST)
Received: from hu-kbajaj-hyd.qualcomm.com ([202.46.22.19])
        by smtp.gmail.com with ESMTPSA id 41be03b00d2f7-b93bf078924sm9838762a12.32.2025.11.03.03.23.42
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 03 Nov 2025 03:23:44 -0800 (PST)
From: Komal Bajaj <komal.bajaj@oss.qualcomm.com>
Date: Mon, 03 Nov 2025 16:53:11 +0530
Subject: [PATCH 2/2] soc: qcom: socinfo: Add SoC ID for QCS6490
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20251103-qcs6490_soc_id-v1-2-c139dd1e32c8@oss.qualcomm.com>
References: <20251103-qcs6490_soc_id-v1-0-c139dd1e32c8@oss.qualcomm.com>
In-Reply-To: <20251103-qcs6490_soc_id-v1-0-c139dd1e32c8@oss.qualcomm.com>
To: Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org,
        Komal Bajaj <komal.bajaj@oss.qualcomm.com>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=ed25519-sha256; t=1762169014; l=709;
 i=komal.bajaj@oss.qualcomm.com; s=20250710; h=from:subject:message-id;
 bh=DRvka4WME8E68wyim4V4jVXhqhIqoleD68BrLy0DOic=;
 b=Y3mzoataOxwf5Wt7eB/FrRaSFcjOei0kcMj7vsZJeqqlVGQZD6Zt/JFjYLxvpsy6l5iyMM7P2
 LB9FGbfnrzYCdN62KfCmALedTizi7SiB24lPPxjB5nA5EXiFQgTvDiy
X-Developer-Key: i=komal.bajaj@oss.qualcomm.com; a=ed25519;
 pk=wKh8mgDh+ePUZ4IIvpBhQOqf16/KvuQHvSvHK20LXNU=
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMTAzMDEwNCBTYWx0ZWRfXyWR9hYPYiT+t
 wi2ysT6gTgE6sPkG+gqAcAIHzh1i8ClF4myC/rhB1G7xg//MJQD1SfMlx7I00VZB+lsUJi0c8Nw
 ymh/NDTcXw+T+EbSjQ826xe1CHY3FtalGaIiD1rCB07Vh/M9yzGBgH8dJiSNddZasxwWmAspDFE
 1UQCgixaJ6ZEcI/DaoUV8SaeFtlFrEQWrJAzMjJX1AN4rr9d4hQ3AWrRf97iVrdFTuaSbUinqUO
 Rh3N6SemhstOuK3/v0eywGsG5TpIeO/ND9qTR0DshX3LfkJM5uzPPw0dcJ0sEBtf4hzF0V3GR0R
 HNcm+27vo7CcpO/B4UQqAoPtYR3nlsgIfBbgAFaDtlvB04WixYls/MBYnSY0UTWdu0tQeyTmWT3
 Wov2to06RVxIInweUWAzEhmX1R+Kag==
X-Proofpoint-ORIG-GUID: y0nh-gIdxTsUGIOlc0fsIeSrNimpolBI
X-Proofpoint-GUID: y0nh-gIdxTsUGIOlc0fsIeSrNimpolBI
X-Authority-Analysis: v=2.4 cv=Q9HfIo2a c=1 sm=1 tr=0 ts=690890c2 cx=c_pps
 a=vVfyC5vLCtgYJKYeQD43oA==:117 a=fChuTYTh2wq5r3m49p7fHw==:17
 a=IkcTkHD0fZMA:10 a=6UeiqGixMTsA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=EUspDBNiAAAA:8 a=mXiXWBdQQqRcHvtpiWwA:9
 a=QEXdDO2ut3YA:10 a=rl5im9kqc5Lf4LNbBjHf:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2025-11-03_01,2025-10-29_03,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 lowpriorityscore=0 impostorscore=0 phishscore=0 priorityscore=1501
 suspectscore=0 bulkscore=0 adultscore=0 clxscore=1015 malwarescore=0
 spamscore=0 classifier=typeunknown authscore=0 authtc= authcc= route=outbound
 adjust=0 reason=mlx scancount=1 engine=8.22.0-2510240001
 definitions=main-2511030104

Add SoC ID table entry for Qualcomm QCS6490.

Signed-off-by: Komal Bajaj <komal.bajaj@oss.qualcomm.com>
---
 drivers/soc/qcom/socinfo.c | 1 +
 1 file changed, 1 insertion(+)

diff --git a/drivers/soc/qcom/socinfo.c b/drivers/soc/qcom/socinfo.c
index 4fd09e2bfd021424b9489cd29eec29dc7c7a16d3..69642891ad579bde5c492ea8f9e0110202b97866 100644
--- a/drivers/soc/qcom/socinfo.c
+++ b/drivers/soc/qcom/socinfo.c
@@ -449,6 +449,7 @@ static const struct soc_id soc_id[] = {
 	{ qcom_board_id(SC7280) },
 	{ qcom_board_id(SC7180P) },
 	{ qcom_board_id(QCM6490) },
+	{ qcom_board_id(QCS6490) },
 	{ qcom_board_id(SM7325P) },
 	{ qcom_board_id(IPQ5000) },
 	{ qcom_board_id(IPQ0509) },

-- 
2.48.1


