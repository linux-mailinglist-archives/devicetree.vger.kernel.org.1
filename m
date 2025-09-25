Return-Path: <devicetree+bounces-221003-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id D476FB9CC3B
	for <lists+devicetree@lfdr.de>; Thu, 25 Sep 2025 02:01:49 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 4B4B14A0C3F
	for <lists+devicetree@lfdr.de>; Thu, 25 Sep 2025 00:01:47 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 3EC801D7E26;
	Thu, 25 Sep 2025 00:01:31 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="J3JG/jjX"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A72EA128816
	for <devicetree@vger.kernel.org>; Thu, 25 Sep 2025 00:01:29 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758758491; cv=none; b=qWY9RoT3S/Gw0vPoqQqh9vpfImDpFFuzb7/3IB2gSIfk6JbxkaQwauWJxWj+mAYllX+Y/cIF0f56GvxtYRLiCve+cc4nf5WSCSx4UKupd3cVksabWB+EAy7mfVkvq6jsQ20sRr5/SU+P62IV2IcxAW4l+P0dZlQYbnKUMTW6eLw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758758491; c=relaxed/simple;
	bh=2S7wvWXh52vu+wnRGR4BJ3o9wnSisMc90P+h+1e08P0=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=Cw7R4BPkMpT09QwLRkV550Eh5qYywT4q+UsQLJpk9L38f3xPyFTBnxQfzlwu14YO+J0ZeCJO3qtQitROPII6cYHiIKfTsqOQlO3TTWA0b8CXabclkmTWzeYktzaozFEFz3hQCSFb/b/F09G34mkvOcPI2nqcUdnDnn7U8rZyODw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=J3JG/jjX; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279865.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 58OCqTQN003961
	for <devicetree@vger.kernel.org>; Thu, 25 Sep 2025 00:01:28 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	n0OEBm1RnS26Z+eRtG67meW0s1XrkCDmtmh5F61o6fY=; b=J3JG/jjXnjU9J6kh
	HRWik2cqrz3L5uXVC0Xarh43HNyE2gxAxt66SDMNXO2wN2KwSzTkjscx7RDH2ypT
	OQzUA/mD3Qi/jXrydDFlXgSYMcBB7FPQBwIfm+4fdqSd+Fr0XhJHje2a1BIWzDWY
	S3onsTiYMY80V0396B7iT0tmYN89vIaK96ccpG4p64YMZKV4B+N25+mdVCQVwo6J
	GQWzVrTgDwSoGUHSn/ZSBoQ06BdxhZCcXYN+ZLe4pg8yxqQiXZqHm7tEiwXow3DY
	Drrs6snLHqfcYa4tUxvWTMdtd9iqFq7i+8QAkadvETPF8WPMzd3zOghPuWFfrtDQ
	dJ841g==
Received: from mail-pf1-f197.google.com (mail-pf1-f197.google.com [209.85.210.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 49bajf0nky-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Thu, 25 Sep 2025 00:01:28 +0000 (GMT)
Received: by mail-pf1-f197.google.com with SMTP id d2e1a72fcca58-77f2466eeb5so256986b3a.2
        for <devicetree@vger.kernel.org>; Wed, 24 Sep 2025 17:01:28 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1758758488; x=1759363288;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=n0OEBm1RnS26Z+eRtG67meW0s1XrkCDmtmh5F61o6fY=;
        b=Z7lNtZ1ApWa695rlLkEB7aco5RfCfdYMBnOYSdiPsK40CNHpmpsIsL15g9MMSuGanQ
         bCoXHh/8hIl1DcKtgkWqIY9ZkcNPU053Jct807h/zvQOIS+81O2e61u7A+KPj5zaffgv
         xQBZEy5kjqu0EYVBoQ141luFLykezLiFkwKlMSukVZGSsl5sbe/6cwscBGu3f6E7t3sA
         xjmGV88e/7alOxvPd8Vn7n42SAuEHzwNdo1wOR9IT97r+6gwwFDpzIDNlq3gK4+4JnBf
         E5PlImgt0va5E+WK8PH03DyKEo2Pv2gRKoF2YcnP2Advg/AT3pmp/qw6Osi5oF456O2P
         ClfQ==
X-Forwarded-Encrypted: i=1; AJvYcCUQHW90gowgpEMnv24DNnlrBF38CDVAyZIpUvRS4aIF1U3R/RO8EvvCM6K8I5LHsdhnMk+NB1ZzZCxf@vger.kernel.org
X-Gm-Message-State: AOJu0YxDE5f7URjvLMVi5Ixu6hTupmqNHnsmFZClLSP+TQfmFYRkWH24
	30LiwNYFLTVZDr82LqoCFST72tGg9KkaFw8vhhFLCljxMeMEk23VkCuBXj+kVt4egLiEHmkxqft
	xm0IYSDKgufEs3i1eYqTq5CFxKQeQAOdT3PELYqEG3R9smHEG+zYy2InvQDlkUSVe
X-Gm-Gg: ASbGncsKOutMoCJtMh7n8C2suM0sgrlL1rMpdf59uvsYTr2e8OChxCGXhioXT+8vkS1
	OaufrC70sAgTCumnS8NhiYf+CFhb33NPcF+/E8J7gQgQwODF48fHjbVtc1H+ml4NhlqPSZh2iMn
	Ql+6y1BhXIDXdiMzIU9Ymm5H7hNJO0iBewaQAagmGKl6QiMXYo0VU9lEss5B5FPknc5R0LcTf4n
	TXqlJS70LpEkRvx4nbmfyLqrNoNqYfpaLGosOP5NZlfr5v9bMyTSy/amQ2+GHLxqWpFb8sbLghA
	Vx4//rF5pWAbcppiZvqq8E0kfPadiMgBhCaE6WjDxg/NDSV8su2LC+a2+P2Iah65trGNoYCeY8M
	iopa4RkCyp410Qkk=
X-Received: by 2002:a05:6a20:6a26:b0:251:a106:d96c with SMTP id adf61e73a8af0-2e7bf478c02mr1819133637.10.1758758487666;
        Wed, 24 Sep 2025 17:01:27 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IGzNuh3Av7R4gC2b8bh95S8AHR2YvjRgTYw7k8EaoMUcQxNqLDTZ5+Kh+DD6EFGVU/5rSBkGA==
X-Received: by 2002:a05:6a20:6a26:b0:251:a106:d96c with SMTP id adf61e73a8af0-2e7bf478c02mr1819075637.10.1758758486852;
        Wed, 24 Sep 2025 17:01:26 -0700 (PDT)
Received: from hu-jingyw-lv.qualcomm.com (Global_NAT1.qualcomm.com. [129.46.96.20])
        by smtp.gmail.com with ESMTPSA id 41be03b00d2f7-b57c55a1bafsm423152a12.43.2025.09.24.17.01.25
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 24 Sep 2025 17:01:26 -0700 (PDT)
From: Jingyi Wang <jingyi.wang@oss.qualcomm.com>
Date: Wed, 24 Sep 2025 17:01:16 -0700
Subject: [PATCH 2/5] ASoC: dt-bindings: qcom,sm8250: Add kaanapali sound
 card
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20250924-knp-audio-v1-2-5afa926b567c@oss.qualcomm.com>
References: <20250924-knp-audio-v1-0-5afa926b567c@oss.qualcomm.com>
In-Reply-To: <20250924-knp-audio-v1-0-5afa926b567c@oss.qualcomm.com>
To: Srinivas Kandagatla <srini@kernel.org>,
        Liam Girdwood <lgirdwood@gmail.com>, Mark Brown <broonie@kernel.org>,
        Jaroslav Kysela <perex@perex.cz>, Takashi Iwai <tiwai@suse.com>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Rao Mandadapu <quic_srivasam@quicinc.com>
Cc: aiqun.yu@oss.qualcomm.com, tingwei.zhang@oss.qualcomm.com,
        trilok.soni@oss.qualcomm.com, yijie.yang@oss.qualcomm.com,
        linux-sound@vger.kernel.org, linux-arm-msm@vger.kernel.org,
        linux-kernel@vger.kernel.org, devicetree@vger.kernel.org,
        Jingyi Wang <jingyi.wang@oss.qualcomm.com>,
        Prasad Kumpatla <prasad.kumpatla@oss.qualcomm.com>
X-Mailer: b4 0.15-dev-99b12
X-Developer-Signature: v=1; a=ed25519-sha256; t=1758758482; l=903;
 i=jingyi.wang@oss.qualcomm.com; s=20250911; h=from:subject:message-id;
 bh=/I5Gh2eYLKEy7ErQmMVLe2xAiiZ0xMLF0xKldvwzBHo=;
 b=bPIPTCEb/BeOXHS2eoDQIMQ8sca42xqvYdM4rkqZt569KYm880F8rolGAlZZ8emwzp8bsy4jQ
 qob/B10CMOlDWm5qg2BPkSn3LkOJjHLFK5byvJmjZi4uZX37sIRdAEB
X-Developer-Key: i=jingyi.wang@oss.qualcomm.com; a=ed25519;
 pk=PSoHZ6KbUss3IW8FPRVMHMK0Jkkr/jV347mBYJO3iLo=
X-Proofpoint-GUID: 1gXAu8MTlIvJE4-m1a99Gs-Yd2FZN-KS
X-Authority-Analysis: v=2.4 cv=fY2ty1QF c=1 sm=1 tr=0 ts=68d48658 cx=c_pps
 a=rEQLjTOiSrHUhVqRoksmgQ==:117 a=ouPCqIW2jiPt+lZRy3xVPw==:17
 a=IkcTkHD0fZMA:10 a=yJojWOMRYYMA:10 a=EUspDBNiAAAA:8 a=MCV5zX6qGx6s6p2FbZwA:9
 a=QEXdDO2ut3YA:10 a=zgiPjhLxNE0A:10 a=2VI0MkxyNR6bbpdq8BZq:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwOTIyMDE2OCBTYWx0ZWRfX8y/cb6Pdv93J
 7Pxvf6s7OIt+t8DWtdPg9X2nc4PGhU0rA8l5nKNqusEBjnnCfdMuYuo1ewOJdGyGP/NvzX7dr4V
 +ZbjwoNCR3CUTLW9VNRLiCCiVrSMhzBgs0gkGwHwjgE/oPlvoEZy5NGV5eB1jEd29ePtxiqPxoo
 lyKiB2IINwt9dIynL9ocNSaTtXEScVeYhN0+dXEOIQbqxUFHiYyLvAC0ei36OqDIm6xDFjtURit
 rxrH82yFWa0t+IvVtmpBD3xsaKfjbl4qArgRWEO2rVUs7p9KZODq3fEekrby96o/9/y/l1IV50I
 wssrzi7Bt4kynRPdvAdgrZKSULAHMRsvw2RyjzyUt1LH/PbR3/iyf9gGhaV/vP/pVeTMobjDqxZ
 0kab16vv
X-Proofpoint-ORIG-GUID: 1gXAu8MTlIvJE4-m1a99Gs-Yd2FZN-KS
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1117,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-09-24_07,2025-09-24_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 suspectscore=0 malwarescore=0 spamscore=0 adultscore=0 impostorscore=0
 phishscore=0 bulkscore=0 priorityscore=1501 clxscore=1015
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.19.0-2507300000 definitions=main-2509220168

From: Prasad Kumpatla <prasad.kumpatla@oss.qualcomm.com>

Add bindings for Kaanapali sound card, which looks fully
compatible with existing SM8450.

Signed-off-by: Prasad Kumpatla <prasad.kumpatla@oss.qualcomm.com>
Signed-off-by: Jingyi Wang <jingyi.wang@oss.qualcomm.com>
---
 Documentation/devicetree/bindings/sound/qcom,sm8250.yaml | 1 +
 1 file changed, 1 insertion(+)

diff --git a/Documentation/devicetree/bindings/sound/qcom,sm8250.yaml b/Documentation/devicetree/bindings/sound/qcom,sm8250.yaml
index 8ac91625dce5..708bae805403 100644
--- a/Documentation/devicetree/bindings/sound/qcom,sm8250.yaml
+++ b/Documentation/devicetree/bindings/sound/qcom,sm8250.yaml
@@ -23,6 +23,7 @@ properties:
           - const: qcom,sdm845-sndcard
       - items:
           - enum:
+              - qcom,kaanapali-sndcard
               - qcom,sm8550-sndcard
               - qcom,sm8650-sndcard
               - qcom,sm8750-sndcard

-- 
2.25.1


