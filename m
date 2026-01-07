Return-Path: <devicetree+bounces-252492-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [172.105.105.114])
	by mail.lfdr.de (Postfix) with ESMTPS id 4559ACFFB35
	for <lists+devicetree@lfdr.de>; Wed, 07 Jan 2026 20:20:31 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 767DC3016912
	for <lists+devicetree@lfdr.de>; Wed,  7 Jan 2026 19:20:29 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 07794318BB7;
	Wed,  7 Jan 2026 19:20:27 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="oowc9nJb";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="Jw+oUvZZ"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6E9C1265CA8
	for <devicetree@vger.kernel.org>; Wed,  7 Jan 2026 19:20:25 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767813626; cv=none; b=V9P2EkgyhJTpKIJ/+Qfma89MprWba1stF4iQE+ogc+PBSU0ArSPtwuM+p2teSIJXRmqCokNcvv+0BvbVOSsbOasUyqTKMRcmyzgvlBGU1bH9Z50IPPdU+HQ/p6xKkG4Dj8KkL2UKs6PAmwZdWOu/olLLC+b5UJVyZT1s/X1UU+k=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767813626; c=relaxed/simple;
	bh=znFF51lG9Fr1m7CgHCrtTF8fOom1lHPV2oUFjMGzTRg=;
	h=From:To:Cc:Subject:Date:Message-Id:MIME-Version; b=DR1H6+OeK12OsKAaj/s3vQYASDZmIBZ4L3wGULuIa7EpaSuvFYNexjEpPlk5UgNHpC1rgIW76mxiqooCSPKiaO1qVfOJM3z7yIlpGDP5/ugdFJ+1WmawdfVmFvhpcSkDNy5cBjXXeXahGNBA74TgAadEcVhuQsLotHJGTaMsdyk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=oowc9nJb; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=Jw+oUvZZ; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279873.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 607CsRY72239351
	for <devicetree@vger.kernel.org>; Wed, 7 Jan 2026 19:20:24 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:date:from:message-id:mime-version
	:subject:to; s=qcppdkim1; bh=j5vgp+4EtJJpI+bJYrlUdNbHlLrat1ZzfEa
	oB50hUeA=; b=oowc9nJbask6qOaFVIvQwjInAQvFJZMitQwkDvdFCAHAhTbX0mM
	35eKeNvC3BX7NyJtZT4w5D8Mn7+BqM4PfKA2dS8tkr+XywbycFttCifmi4hGFhcW
	VUo05uyEksyd97nCR0zJiYiaxXLJQhEn5MbCnBR5WkzedGLW7LWotyfCIHMCtzxQ
	u8bMwZ7DtJt+jjw6uUTpgMzeBL44PjtqcoKE4elh9DZQU5rCf0ppDY2MN+h8Jw8D
	p1+HyjwdTXlbcXpfvebOVLl3plRE6dwkDbBtIZ8HJVfVhzmArAzCJ1Ikqcz/ShUS
	Wdr0JGqUc7r2RVTHJ13nNKqqvuI7EVzwQFw==
Received: from mail-pl1-f199.google.com (mail-pl1-f199.google.com [209.85.214.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4bhqwg19ey-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Wed, 07 Jan 2026 19:20:24 +0000 (GMT)
Received: by mail-pl1-f199.google.com with SMTP id d9443c01a7336-2a08cbeb87eso28395575ad.3
        for <devicetree@vger.kernel.org>; Wed, 07 Jan 2026 11:20:23 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1767813622; x=1768418422; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=j5vgp+4EtJJpI+bJYrlUdNbHlLrat1ZzfEaoB50hUeA=;
        b=Jw+oUvZZMxx+mQTLkgEnDszGLU+HgcQtUjuN07NED5fiRmbaSRrbhamrXCzI9edCeR
         7L/Z6gqn5jNR9cspDfSRNAY77SBSevtC0X8DVxkM9JY4WFDz3fjjA+gfLWzzKbtU7cuQ
         ANOgihKoDI2ZP4BLWhnxPpTw/5M3uZ9KVVtNkwclwTmcOA355U0nvlPQyTpb7eov3Rze
         Ht8hneuwFCSrYryuZH0IF4S0CbMgkP5Gg29sQVNRLzWWM6AoK/Kwkt5d0pwkV84YACSR
         t3V/xYqWi6Xqb3dQpVpxSprBgv0co78VUJ/XF8AvOPDoZAL4/EewdfNUju0ajuCze1U+
         cpYw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1767813622; x=1768418422;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=j5vgp+4EtJJpI+bJYrlUdNbHlLrat1ZzfEaoB50hUeA=;
        b=m0OTrpBA9MUtOgaRMX8XFZg6H/GtdcoIiP1hcP8HTI4fV9X2Lf/y8n3wXeGsB50gHB
         lD+jSCYZ45IMXPitbYdeGKAeKxglX5gPcp8svRS/tHeUPQT282XqOKp5fOwXHGhdesS8
         nWlrEoJIzUTH+hr3gR+NHXQlxQKUyhLSMrW8rEX3pW0IyYb7kVbOGIgMAcMcvDwmfGNJ
         Mrmwt8HXiMWU4gGQ0izokYF7ieGTw4m0SGCPFNIBU/rZAqUf/F4l3A5GAmt2i9v62AYk
         asnaZ4G15RXOrSVvy/smMUIcRlH6m8aHftNVAqL4MCD30HfGoBQLOOG0aBT4IoyB40w6
         EjDA==
X-Forwarded-Encrypted: i=1; AJvYcCUGpo9KistHd2qdMSLY15p7S47tyk6pd48Qi4i5MjkBZPArrrqui70zHfVkKus0vExyL3pkamUWLjxe@vger.kernel.org
X-Gm-Message-State: AOJu0YyZVRXnJYmmacJkZzNaUaACG+iyryBXcOskzWpTf/Ob5BftqKPu
	eAzCo2P8fzcQETCSKAHX00kXQA7mlAK32t81evmVfxvcoJw6BzNTTkHiGZlYlGlx3NB6CR/uHUX
	OoMTrfb0qD1xErOn0wne1tpaDUXuufqrTYNtB528pKcYLcJw6/X/u9oK6pWaxy+VZ
X-Gm-Gg: AY/fxX4y8AOEYXjusS1Gp+3mSAcQ/40BGuKFuPnMRmNQneorXHr4BdCq/5651JbnQ0N
	Xg4fw4Z7nKREaxBXslYEh/hSRey5G73RE0jI2pnuGJ3n+NeSSZAOYe6qWVpUpONWhlYi/uWYQHQ
	C5e0gktodTE8FnWPRqXybeqRhRzmAyv3xUl/er5Ec1lDl0bUfiFPfgYTlrJiUdWElRRRkPPtbv/
	lf8L41s2ZbT/7q94YQqwLvVdVk45XGLAlKfFH1U1fKd7gWyIQ2vaDiuQzF2UTskEvPlRlu7zfr4
	1M8WL8qyCsDETBH+xwBG6CgfRo2mkUrdxrqFZP9453iqJbEI9OsD8ACOtNhEX+717AeyLb0n6dX
	JvfinJyP05OTz59mRQOv2Bp2XzWqgd9iDKtEXJI1PiVb6Yw==
X-Received: by 2002:a17:90b:4ecd:b0:336:b60f:3936 with SMTP id 98e67ed59e1d1-34f68c4ff5bmr3575563a91.12.1767813622070;
        Wed, 07 Jan 2026 11:20:22 -0800 (PST)
X-Google-Smtp-Source: AGHT+IHzjww7nsn3I9Bw7LLLNAxkdlK1gXIoP7XnWvOwhflCW00/WqrnyLFxKqjEnsv8MdGjQ7iBdg==
X-Received: by 2002:a17:90b:4ecd:b0:336:b60f:3936 with SMTP id 98e67ed59e1d1-34f68c4ff5bmr3575545a91.12.1767813621569;
        Wed, 07 Jan 2026 11:20:21 -0800 (PST)
Received: from hu-mohs-hyd.qualcomm.com ([202.46.23.25])
        by smtp.gmail.com with ESMTPSA id 98e67ed59e1d1-34f5f7c4141sm5756375a91.6.2026.01.07.11.20.18
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 07 Jan 2026 11:20:20 -0800 (PST)
From: Mohammad Rafi Shaik <mohammad.rafi.shaik@oss.qualcomm.com>
To: Bjorn Andersson <andersson@kernel.org>, Linus Walleij <linusw@kernel.org>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Srinivas Kandagatla <srinivas.kandagatla@oss.qualcomm.com>
Cc: linux-arm-msm@vger.kernel.org, linux-gpio@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Subject: [PATCH v2 0/2] pinctrl: qcom: Add SA8775P lpass-lpi
Date: Thu,  8 Jan 2026 00:50:05 +0530
Message-Id: <20260107192007.500995-1-mohammad.rafi.shaik@oss.qualcomm.com>
X-Mailer: git-send-email 2.34.1
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Proofpoint-GUID: 3fFcEukDDwtMUuPBIaLfX9kKnuiKxA0J
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMTA3MDE1MiBTYWx0ZWRfX1Jm5cRglws6a
 OotViYq6ot5bJnxoBx7bvZn1H9QAkvDxzaTwdKYV3yc2zcFRb2HpQffb3/3/t3GGWn2/Ffh5TeT
 FaU6QjCVwwXz15Oufa4oT7Lm+pMW+pREeUPrIcOIKsgkmfdeHVhZG0al1MLu5O++euCCT4NTYmk
 /SopNeTRIKQ/yznYrJIZaab2yJeCVy0yL1yprWIAXOJJpNqWNVzw5xdiccmbe3Bf2oIGy0w7A5q
 /z+P0n2BZ9eulEMvzLAb9QNJLejWlodeyAW9DrxkXvpkx1n1YqnWhS211DHGLW1z23YfNFmOa58
 d0yW9Xy4Ue9Ce19smt7bLPmQX859Jxgbvgka0u5IY/9ix0SaEy6aZY857ZZyuCN9cZp940vCdAY
 rgMz1Tpw2QiQqKJoETffnOiQU1uP5BVopwUNaQWnkHBbwnRn0GhZHrQpuUoB1jvuv59SVN981qy
 lseVHj4u33R1ankKoDA==
X-Authority-Analysis: v=2.4 cv=Pa7yRyhd c=1 sm=1 tr=0 ts=695eb1f8 cx=c_pps
 a=JL+w9abYAAE89/QcEU+0QA==:117 a=ZePRamnt/+rB5gQjfz0u9A==:17
 a=vUbySO9Y5rIA:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=VwQbUJbxAAAA:8 a=EUspDBNiAAAA:8 a=5uaU0eOrlHY_0w-MWb8A:9
 a=324X-CrmTo6CU4MGRt3R:22
X-Proofpoint-ORIG-GUID: 3fFcEukDDwtMUuPBIaLfX9kKnuiKxA0J
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2026-01-07_03,2026-01-07_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 adultscore=0 phishscore=0 lowpriorityscore=0 priorityscore=1501 bulkscore=0
 impostorscore=0 spamscore=0 malwarescore=0 clxscore=1015 suspectscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2512120000 definitions=main-2601070152

Add pin control support for Low Power Audio SubSystem (LPASS)
of Qualcomm SA8775P SoC.

changes in [v2]:
	- Fixed dt-binding errors reported by Krzysztof and Rob.
	- Added proper slew rate value for wsa2_swr_data GPIO, as suggested by Konrad.
	- Documented Monaco compatible as suggested by Konrad.
	- Link to V1: https://lore.kernel.org/all/20251116171656.3105461-1-mohammad.rafi.shaik@oss.qualcomm.com/

Mohammad Rafi Shaik (2):
  dt-bindings: pinctrl: qcom,sa8775p-lpass-lpi-pinctrl: Add SA8775P
    LPASS pinctrl
  pinctrl: qcom: sa8775p-lpass-lpi: Add SA8775P LPASS pinctrl

 .../qcom,sa8775p-lpass-lpi-pinctrl.yaml       | 112 +++++++++
 drivers/pinctrl/qcom/Kconfig                  |  10 +
 drivers/pinctrl/qcom/Makefile                 |   1 +
 .../pinctrl/qcom/pinctrl-sa8775p-lpass-lpi.c  | 216 ++++++++++++++++++
 4 files changed, 339 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/pinctrl/qcom,sa8775p-lpass-lpi-pinctrl.yaml
 create mode 100644 drivers/pinctrl/qcom/pinctrl-sa8775p-lpass-lpi.c


base-commit: f96074c6d01d8a5e9e2fccd0bba5f2ed654c1f2d
-- 
2.34.1


