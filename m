Return-Path: <devicetree+bounces-202566-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 140D4B1E1B3
	for <lists+devicetree@lfdr.de>; Fri,  8 Aug 2025 07:30:52 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 977507A998A
	for <lists+devicetree@lfdr.de>; Fri,  8 Aug 2025 05:29:17 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id ABD8720C494;
	Fri,  8 Aug 2025 05:30:27 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="WBn9bP5P"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 11A1C20FAB2
	for <devicetree@vger.kernel.org>; Fri,  8 Aug 2025 05:30:25 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1754631027; cv=none; b=YOxWCEWu2abyOC6Tavq7IkbUBZ2NORsMjkpETzdVpW5ahzrrk8ndXJqaP5jwlGxuSJr/gK1fhq2oVgbLsBt9OhtdKkKl3LhvXdGe1jBV6NEpOULw7fK5clBEYV0uQyhnP749BCcJWlvFSudChhEXS/zIY+zGnAoZBm0LWefip0Q=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1754631027; c=relaxed/simple;
	bh=vudh6ChWfb+QAp63DxN/31q2MEqtFSevu7JbiruqA44=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
	 MIME-Version; b=YmttMTNN1c4q/am0OUTmmSRfIviX2hJhRv7Q84kZ+LEgUzCnF2zkKoqJCWUhRuIK/3Z1WWO9IMpJVRg4ValGRKjKgWuIVOezt8wfKFbVnftupUCBL3EgfMH+7tB7kjnujWmD8DPsm6lfUaRNQfspaNqyzd4rdpyxtypKEvykbBg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=WBn9bP5P; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279869.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 5781Ui2K028297
	for <devicetree@vger.kernel.org>; Fri, 8 Aug 2025 05:30:25 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:date:from:in-reply-to:message-id
	:mime-version:references:subject:to; s=qcppdkim1; bh=j0/NbC6Dz3I
	Sr1wnPGqDAmCICjCJoiyEDtY+fN1XBu8=; b=WBn9bP5Pv6wjkiTgkiMnxIDcsTK
	iJFDyvg4NcR5yVnOo7RRjGMl6z5Nlo7nnL7uiLP+6cFhl4QUKqiKYbx1fDSHWZS8
	dsp6IxyaHZ54eCAHrmAAkyChQIg+vQxPN+LA6HbFwFFs/17OoERFqu9pYer8oDql
	E/vF0hUYxFYK3VIGDc0ydL4ERlu7X1avjGfy05oOYcVySm2UbFs44/7SNS3f4+7u
	kV6smLhpOo5kZ0s8RraDxmDs06K3RBfuhXotcV96U6/X28BFc55byHE/2fjzL/4S
	JEhwPfET5tX8BjkQtZ7sacigyVVkee6aJJgv44A0VKxFoVOru2dqi383W4w==
Received: from mail-pf1-f198.google.com (mail-pf1-f198.google.com [209.85.210.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 48bpw38ndu-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Fri, 08 Aug 2025 05:30:24 +0000 (GMT)
Received: by mail-pf1-f198.google.com with SMTP id d2e1a72fcca58-76be0be9ee1so1952286b3a.2
        for <devicetree@vger.kernel.org>; Thu, 07 Aug 2025 22:30:24 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1754631023; x=1755235823;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=j0/NbC6Dz3ISr1wnPGqDAmCICjCJoiyEDtY+fN1XBu8=;
        b=C08SPgLckkR4GJaG+RQfgOTbpH2pAGEeD0BImijFy8c9Yqtk7FV2yFC0VsjhhxvKxQ
         JStSaU38LQeL6uhYcy350h7oLnVDe7iDLn7sE35Qa9Z+Eil7pUNg2TZ1vc6j8PDvCu0/
         9nVKWqoW9grPlaEgTyXOkFIwb+wRk0kaTkhaA3rnm0/w8gmOXvDsZlPPbVWsNWgAMpwj
         peGm6fhkf9UxynbJSZWWBbD4mnZbccDPxUjSJsFg90M7Ck0/99HLw9DPY7iV6BGuv9us
         04d57M75meWCR25h7UidDN50rgtx7e7j3z5MM1zosqtWwYA/gHkAxLbypCMF8wJbEPyO
         1gVQ==
X-Forwarded-Encrypted: i=1; AJvYcCUi+ak8k13t5E7RknRDS41hwRweh3BjK2+gPoY5XJ8g5/aHGe9T1LYucjskmdYjSeMKt/jJAiEsKPLx@vger.kernel.org
X-Gm-Message-State: AOJu0YxGRbHL508vVhIW7tBMI0HPmP8Xp+qQDj3ExHgs/iUwkshAogxt
	NS2t2LotLRJs+ZY026htHYSemDsekSt9NBtJkbx0ZCpxwqy7usyd8RQZAT6X7YERMxFwUmQalP0
	FAq4KSSqMzeVrdKjhU2HO5SNkkbgQpkOAJkWlR7taQmN41ZjnyT6kiL1LVvhj6+KY
X-Gm-Gg: ASbGnctp4BUrXKiZdjTuC9+DuhJtIdVBfVBHjrSnz21P4Ye0JcGtY3ayKx1CBQWCTCh
	Gtkwz0+D/79BRyJIFVe15rVV5BUhLPuvW5bVubiAESvzZrzCkgRnfBq1iRsq1ioz3+9kAq01dP1
	Z1f6XrF0dCHMVRsGs8AQ4T7QV1ewwHhfXUP35O6MmfOrojOjfM08BBoctSn/9799JeypHoEizg6
	qRfu9SfL2KFXaq7rHWHWExijLgNI8OPmzTIrWqJC/lEhyujs1y5aFUbIcF6BuP2hdq5wJ/QHg1X
	Uhk8ERqFBXnj7Mnv9jMn56EItKNUv6C4umKG4c2QlDFt6sPignTR8q2RCoPzMi4H9KwbbE9/SKV
	v
X-Received: by 2002:a05:6a00:3d4b:b0:76b:f260:8614 with SMTP id d2e1a72fcca58-76c460ded44mr2946487b3a.3.1754631023391;
        Thu, 07 Aug 2025 22:30:23 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IE322Xtuer1nSvLoooPflfHEOze81sggfs2Qy/lSDwJaYopil6xUbkHvvn+WnhQgau0g52mJQ==
X-Received: by 2002:a05:6a00:3d4b:b0:76b:f260:8614 with SMTP id d2e1a72fcca58-76c460ded44mr2946439b3a.3.1754631022958;
        Thu, 07 Aug 2025 22:30:22 -0700 (PDT)
Received: from hu-mohs-hyd.qualcomm.com ([202.46.23.25])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-76bcce8f483sm19278662b3a.31.2025.08.07.22.30.19
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 07 Aug 2025 22:30:22 -0700 (PDT)
From: Mohammad Rafi Shaik <mohammad.rafi.shaik@oss.qualcomm.com>
To: Srinivas Kandagatla <srini@kernel.org>,
        Liam Girdwood <lgirdwood@gmail.com>, Mark Brown <broonie@kernel.org>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>, Jaroslav Kysela <perex@perex.cz>,
        Takashi Iwai <tiwai@suse.com>
Cc: linux-sound@vger.kernel.org, linux-arm-msm@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        kernel@oss.qualcomm.com
Subject: [PATCH v1 1/2] ASoC: dt-bindings: qcom,sm8250: Add lemans-evk and monaco-evk sound card
Date: Fri,  8 Aug 2025 10:59:38 +0530
Message-Id: <20250808052939.1130505-2-mohammad.rafi.shaik@oss.qualcomm.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20250808052939.1130505-1-mohammad.rafi.shaik@oss.qualcomm.com>
References: <20250808052939.1130505-1-mohammad.rafi.shaik@oss.qualcomm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwODA2MDAwOCBTYWx0ZWRfX7X41KuL0/8l6
 /2TFM1SxmSGO7rDyvhkUDduOYwLwKtPhOSPhv2KNDooQOrPNdSLS2dMZzqjElYln7hYaLCGvl4h
 XcQCsp6x67cbl+TJImXaDln3do2+ZNw7blJlYFvo+BG/2bGV+i4AyX9rlF4uZXdXfpBPFpXwNJK
 vjmVC9CX/7FZxaPvNrVb7UHwtlh6sIaf6GamY07gOuN2FTaC7SYr+yJrA37nxR9PR7n3lEIo0r6
 fLg2LDXrvntjEzDl/9naMkNBLNEjBNhP2OSdR2eEBHqjVq7E5dxzvcir4YeHKzVcUrzCAnK1Tul
 rIXiKGV2nMcG3BlancMjwa8Mwln2M6zRRFiJ2rC/KEWhqllSFM/JeBCotw7hp/odgj+NuGSb3YX
 0fz/g0nQ
X-Authority-Analysis: v=2.4 cv=J8Cq7BnS c=1 sm=1 tr=0 ts=68958b70 cx=c_pps
 a=m5Vt/hrsBiPMCU0y4gIsQw==:117 a=ZePRamnt/+rB5gQjfz0u9A==:17
 a=2OwXVqhp2XgA:10 a=EUspDBNiAAAA:8 a=kbphIXzXdx9KadpZM_wA:9
 a=IoOABgeZipijB_acs4fv:22
X-Proofpoint-GUID: wsmRP-f1XmQORf0v25JAzbAoVAd88qKJ
X-Proofpoint-ORIG-GUID: wsmRP-f1XmQORf0v25JAzbAoVAd88qKJ
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-08-08_01,2025-08-06_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 spamscore=0 bulkscore=0 priorityscore=1501 adultscore=0 malwarescore=0
 clxscore=1015 impostorscore=0 suspectscore=0 phishscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.19.0-2507300000 definitions=main-2508060008

Document the bindings for the Qualcomm LEMANS-EVK and MONACO-EVK
board specific sound card.

The bindings are the same as for other newer Qualcomm ADSP sound cards,
thus keep them in existing qcom,sm8250.yaml file, even though Linux driver
is separate.

Signed-off-by: Mohammad Rafi Shaik <mohammad.rafi.shaik@oss.qualcomm.com>
---
 Documentation/devicetree/bindings/sound/qcom,sm8250.yaml | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/Documentation/devicetree/bindings/sound/qcom,sm8250.yaml b/Documentation/devicetree/bindings/sound/qcom,sm8250.yaml
index 5d3dbb6cb1ae..c63bfe031b57 100644
--- a/Documentation/devicetree/bindings/sound/qcom,sm8250.yaml
+++ b/Documentation/devicetree/bindings/sound/qcom,sm8250.yaml
@@ -31,6 +31,8 @@ properties:
           - fairphone,fp4-sndcard
           - fairphone,fp5-sndcard
           - qcom,apq8096-sndcard
+          - qcom,lemans-evk-sndcard
+          - qcom,monaco-evk-sndcard
           - qcom,qcm6490-idp-sndcard
           - qcom,qcs6490-rb3gen2-sndcard
           - qcom,qcs8275-sndcard
-- 
2.34.1


