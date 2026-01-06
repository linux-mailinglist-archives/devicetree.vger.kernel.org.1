Return-Path: <devicetree+bounces-251974-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id E03BFCF9364
	for <lists+devicetree@lfdr.de>; Tue, 06 Jan 2026 16:59:32 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 01A3430C5226
	for <lists+devicetree@lfdr.de>; Tue,  6 Jan 2026 15:52:07 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A514E33858A;
	Tue,  6 Jan 2026 15:42:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="MLDfCaes";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="iNITIDP9"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0DF18328B4E
	for <devicetree@vger.kernel.org>; Tue,  6 Jan 2026 15:42:27 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767714152; cv=none; b=pMR4LY5vw9BuHHwe5+uEG8D7x12914igidG3PLu6BL2ti5O66Z2fBbFpU+wO/vcdjn+yil/Ofh/8PHMj6o3GOPeXX+du4m+cY0/vmvQxxrC5ah0kU0Ey4knmgGt6OwzB4MHutVyL9U+7nfvO1PeoiKBjmZphktwkDlerxb7UChw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767714152; c=relaxed/simple;
	bh=ZPJGICzg/PAxZH8bSEPQLz2TYwfgDekPYOvxH6T3IeU=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
	 MIME-Version; b=MKolimIpI5gT0txVmSE41+GJv0s7DNmYYqsVL08nwwBTlzzmQd1ysXvVlmwOGv/ErCnserusvUP66hmnlfYXvMDmJhyCCWYOfdEujZm/zLP+hGqq5OiXA3JtWYN14hxJltL6vI0pSP0TUKdGg3mNB3V4jxmY4lrXR09DVjJ1+H8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=MLDfCaes; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=iNITIDP9; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279871.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 606AtJ703214304
	for <devicetree@vger.kernel.org>; Tue, 6 Jan 2026 15:42:25 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:date:from:in-reply-to:message-id
	:mime-version:references:subject:to; s=qcppdkim1; bh=YESivx2vId7
	pgvI677Lj8GeC8AWBep4KbqgfD3sAVdE=; b=MLDfCaesEqrocpF/1zem1nSU+w3
	I84gJq2GbTFDOdCuerlVlxGrQulwQdQraGxMayP0VRYqTursSIOIOoDDzzdAr37i
	p/mDj+xklYiS97QjLXO29ColTScvsTLkHwoVxmV4EAQGkW0qGICFQwFDL7BXdnrQ
	sFRZr6vzo20INwVASPLwSFHAQOSgrWix7AMiEYJplz/4Gq+g65YbcdnNuZCkBe1M
	LB652m+nM4MGVHeoD26HOjpn4FBEU7YWB4VCEhUUyOWBGN7obInDEauEcsJLnHdb
	24RVmIit6jvlzxjHAzaOabz4LEnAU79a9VIHh6rrwrj4YQ48GQdVAZ2McRw==
Received: from mail-pl1-f199.google.com (mail-pl1-f199.google.com [209.85.214.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4bgpndak1g-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Tue, 06 Jan 2026 15:42:25 +0000 (GMT)
Received: by mail-pl1-f199.google.com with SMTP id d9443c01a7336-2a0bae9acd4so9738505ad.3
        for <devicetree@vger.kernel.org>; Tue, 06 Jan 2026 07:42:24 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1767714144; x=1768318944; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=YESivx2vId7pgvI677Lj8GeC8AWBep4KbqgfD3sAVdE=;
        b=iNITIDP900XeZxhBx1MDnAkUIB4CWc7hO6qTpunR3FBNIEx1ko9zblOBycKQ9qtU8G
         fnZSWXDl1clS7syycsu4rjzrRntE5mDsVrRzMe0cGhiNDQudqZ1MNHEC4z7+i3Z/6x2l
         0dFkaOph2cc1YTkEh64WCB88tScFMt/BU0nVqodwXtGjrrZjDjEB7wGWeMbNcY+j1Cd2
         MbKwhLl+BctOWVHdhyiWx6SeYrIiY5sggr65FjZeoU1I8RMVNBra3Tfvhekiq76AiqH6
         yEnuJXrErso36m4j7f7CFSg4L4P1war1O0vfmuDG2QbYa+L2R/asYaPTSlpiJMUU+HgT
         birg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1767714144; x=1768318944;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=YESivx2vId7pgvI677Lj8GeC8AWBep4KbqgfD3sAVdE=;
        b=FHHcTY1hJLf5znA8Fy/pV+gmRnYvCP/lWNo9pjTI5/N56xtlA6L8fDesZKeKwz8nZ/
         gW7AW+YPZt9re5bLImX0uthRGmPbZjNSVVXWRiqDoDy1P5P0jpZTeh3GfUH/+HVnl6z/
         CmJS3PnhBAAt0HV9icmWpDSYDYVaD/yprn/IvCkmLP5uvqoVwSMi4WwdUYq9iKEYNVDH
         nlX8iee9fxJ5rxwIsjJiuYZuG/jVX3WabC2+GFSGn7mngJ/O3jdCyzD5dqmPl2tF8BhO
         1YpByQ5bHCwHFwxz6zZmEtI+aSG8RLTzZO90dlmFtxX3WXnz2FllM11wqtZFdoWv1rEb
         UGWA==
X-Forwarded-Encrypted: i=1; AJvYcCXw1PekkiXLboIGGMdyOQ9kwlMt8/Egksc/8deYETjrykNCAksX7qpFgwlZathd9KUhCTtaHYnrp7s7@vger.kernel.org
X-Gm-Message-State: AOJu0Yx2Kt8pMII7fNpKhiw4YJepKbECGF8SeSjJzYaVeamd9E356iH5
	vKUdMxBgy1Wrn1QT1FuRpcBLTdBvbJQnzonwBgDsprLO2sTipz1RgD1RRXagk7NoNOqIQ0fNKsr
	hzs9A4yp6BkpGfHbmyv4oYGWtuQud7c8saysiq8eVi6+foY7/Zd8I8z1Gl3w2Ashz
X-Gm-Gg: AY/fxX5Jp4KmbJUOijyM1IBb5ZGtLUdA1W7Om3xOgMRO2Bmq4r7XiuVZz3qeBzkFFc0
	r7HLjRohc7pwvt88MwSyMM6BlV09hLMjQnLymgUOOb6oefYIiMkWr/iFCiSA6FLRPEU9whd4bDb
	9vqJAfCr900sdGwpedA+9VWBUMGhq8JR3nnopa7xDtCRpxjV1xDww208OnRYwDy0umEI4jPXUFW
	ShhGDZyGksSIea0NQbUoZtg/XMAXzK7cW8q96h4wnCczmNja+mTbo8bT20vmMKipmZNoRPtr8JF
	uHB786y3cDc0SzDjU2n3/jrxEQwKUw44PqYr+22ewC2HafLiMfY/eHEKGaQLKEpNZtBvjLtkYOV
	6QzXNB6BzqEL2NbIJFP8t2MaPKJ71FLh27w581OmnQHEfF2wrpbT1
X-Received: by 2002:a17:902:db07:b0:2a3:1b33:ae30 with SMTP id d9443c01a7336-2a3e2d2f36emr21943465ad.51.1767714143926;
        Tue, 06 Jan 2026 07:42:23 -0800 (PST)
X-Google-Smtp-Source: AGHT+IGay4nVOi1x4DbIYZyz8vZ1XzEs0+0iXhI5PWvt/W510lDGQiyOk1gcoRq7cSfvhWP9CNq/Dw==
X-Received: by 2002:a17:902:db07:b0:2a3:1b33:ae30 with SMTP id d9443c01a7336-2a3e2d2f36emr21943305ad.51.1767714143388;
        Tue, 06 Jan 2026 07:42:23 -0800 (PST)
Received: from hu-pragalla-hyd.qualcomm.com ([202.46.23.25])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-2a3e3cd492esm26606395ad.98.2026.01.06.07.42.18
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 06 Jan 2026 07:42:23 -0800 (PST)
From: Pradeep P V K <pradeep.pragallapati@oss.qualcomm.com>
To: vkoul@kernel.org, neil.armstrong@linaro.org, robh@kernel.org,
        krzk+dt@kernel.org, conor+dt@kernel.org, martin.petersen@oracle.com,
        andersson@kernel.org, konradybcio@kernel.org,
        taniya.das@oss.qualcomm.com, dmitry.baryshkov@oss.qualcomm.com,
        manivannan.sadhasivam@oss.qualcomm.com
Cc: linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        linux-scsi@vger.kernel.org, nitin.rawat@oss.qualcomm.com,
        Pradeep P V K <pradeep.pragallapati@oss.qualcomm.com>,
        Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>
Subject: [PATCH V4 1/4] dt-bindings: phy: qcom,sc8280xp-qmp-ufs-phy: Add QMP UFS PHY compatible
Date: Tue,  6 Jan 2026 21:12:04 +0530
Message-Id: <20260106154207.1871487-2-pradeep.pragallapati@oss.qualcomm.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20260106154207.1871487-1-pradeep.pragallapati@oss.qualcomm.com>
References: <20260106154207.1871487-1-pradeep.pragallapati@oss.qualcomm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Proofpoint-ORIG-GUID: sqOMK0MiSJd_cMVWl0vbXapu1AfmdTJJ
X-Proofpoint-GUID: sqOMK0MiSJd_cMVWl0vbXapu1AfmdTJJ
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMTA2MDEzNiBTYWx0ZWRfX1ltwjmus9XZM
 7wseIP+zQxloEmRJjMrYPkRNu7f0lITxJV4GcXQ63AYAGYMqoUS8wdw1DTXjrywZF0dS47ZMedp
 rATidbbDoBNbUES1KOYo9WV78il4Nt4qCZewL1txV2Jh9wMKrxZA8V4pGOzLyZGS6194t7kPQgM
 Ptw/pHsSske75lZCF89tVgi15SRGMINL5LczZzehycaepjlEh8nBDkfyse8ZxWIn8mXIgypWqpI
 q5wAXxc3j7fEsXgsGW6VN2J8YiX8u5m8GFAhyVPzujR9TVQgn/gHbgrTATNMlhYo7KKZy28L89O
 S7tunnCa+5a79kV383n4jdv7e3vSeStS2/ElnlLhnrfiDAOyr8LcV42/tFYMYLnxzk3mWQfiEGn
 6DAH/PzUi5yodhOMWZOWsfFiYi92TwMGlYVAPaH/NknWr0MV4aQ5CTKXQJ5EYw+rUxpO16AE3P5
 BYb4761GRhRqtTwiN2w==
X-Authority-Analysis: v=2.4 cv=Jpz8bc4C c=1 sm=1 tr=0 ts=695d2d61 cx=c_pps
 a=JL+w9abYAAE89/QcEU+0QA==:117 a=ZePRamnt/+rB5gQjfz0u9A==:17
 a=vUbySO9Y5rIA:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=EUspDBNiAAAA:8 a=Csm91wPUG_1LpuPihvAA:9 a=324X-CrmTo6CU4MGRt3R:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2026-01-06_01,2026-01-06_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 lowpriorityscore=0 malwarescore=0 bulkscore=0 clxscore=1015 adultscore=0
 phishscore=0 suspectscore=0 impostorscore=0 spamscore=0 priorityscore=1501
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2512120000 definitions=main-2601060136

Document QMP UFS PHY compatible for x1e80100 SoC. Use SM8550 as a
fallback since x1e80100 is fully compatible with it.

Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>
Signed-off-by: Pradeep P V K <pradeep.pragallapati@oss.qualcomm.com>
---
 .../devicetree/bindings/phy/qcom,sc8280xp-qmp-ufs-phy.yaml    | 4 ++++
 1 file changed, 4 insertions(+)

diff --git a/Documentation/devicetree/bindings/phy/qcom,sc8280xp-qmp-ufs-phy.yaml b/Documentation/devicetree/bindings/phy/qcom,sc8280xp-qmp-ufs-phy.yaml
index fba7b2549dde..166e3787db58 100644
--- a/Documentation/devicetree/bindings/phy/qcom,sc8280xp-qmp-ufs-phy.yaml
+++ b/Documentation/devicetree/bindings/phy/qcom,sc8280xp-qmp-ufs-phy.yaml
@@ -20,6 +20,10 @@ properties:
           - enum:
               - qcom,qcs615-qmp-ufs-phy
           - const: qcom,sm6115-qmp-ufs-phy
+      - items:
+          - enum:
+              - qcom,x1e80100-qmp-ufs-phy
+          - const: qcom,sm8550-qmp-ufs-phy
       - items:
           - enum:
               - qcom,qcs8300-qmp-ufs-phy
-- 
2.34.1


