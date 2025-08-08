Return-Path: <devicetree+bounces-202565-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 73434B1E1AF
	for <lists+devicetree@lfdr.de>; Fri,  8 Aug 2025 07:30:31 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 473957A5A82
	for <lists+devicetree@lfdr.de>; Fri,  8 Aug 2025 05:28:59 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 8ACD6204C0C;
	Fri,  8 Aug 2025 05:30:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="loOboYIY"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 053B520010A
	for <devicetree@vger.kernel.org>; Fri,  8 Aug 2025 05:30:21 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1754631023; cv=none; b=GxdBL4w55iKF9g3EmtCsQhUscZy0PAY5RncQmc2LefcFuQ0GU5VJlxvbl/yIrseg5QwfjPGZNkfM2ziH1vidlJ3EBHH1eA/AW0jZSwjwu0a+onMmWoYbzid222+/OV3WrACJXk12BLra2j3U6FDHUHvPOh5ZIDK5uWB/PSkMi7M=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1754631023; c=relaxed/simple;
	bh=Jd76TxLJDO6ktnTVki7hB04b124OqwCvlvXm+sVtsuE=;
	h=From:To:Cc:Subject:Date:Message-Id:MIME-Version; b=Gcj/pu7VW35iGVPDJaKWrNZwyuQ6NaWgw7E3gCHggJi68U0aObhicKvmneKhZNI3aJ1cR0Qwy8SQ50vF/n5D30Y12cTIOC/Ns2cOOWlbHSGEf2u05qnz4pYAxMbAVmSQ4xfumxNqw7BuaL1a34i1+MNVU51C1KEU7RZy/2Q9lZ0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=loOboYIY; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279870.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 57813GHP030191
	for <devicetree@vger.kernel.org>; Fri, 8 Aug 2025 05:30:20 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:date:from:message-id:mime-version
	:subject:to; s=qcppdkim1; bh=8Car4PvODcLhqhbydD+z1uxMFD8WOqlwfDy
	1GI1vIzo=; b=loOboYIYcNiY4EYj1NpU+mpoGcaaQntaHilmAFXH2NpeyP9lDbs
	wqcnd6ZdF14ktVtV7b6kzD/A7KgpwAuCTTVjg07fIKtUF1Mctmq73bF98HG+MIvH
	3bafSzfLQw7cpH06rzhk/minn4W9fNr5jcCXJVaNcotYNn9TPMSUsFOoa8sgjh4u
	Kr6Oh3Fx3c7Pw6IUklGU+DNXTkFHoi9e6L4SrkO2sCpPH/yWkzClgKktyUuvUgYm
	ZVf++isdZEa+VruZaMtMrlh8RJqlm4SaB1UoY5a1HrySCja/YB0cTPg+CL7/t4Eg
	nBH7/4zOXomkd90rTR793lXZdPi1ePYteWA==
Received: from mail-pf1-f197.google.com (mail-pf1-f197.google.com [209.85.210.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 48bpw00w8b-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Fri, 08 Aug 2025 05:30:20 +0000 (GMT)
Received: by mail-pf1-f197.google.com with SMTP id d2e1a72fcca58-75ab147e0f7so1719291b3a.2
        for <devicetree@vger.kernel.org>; Thu, 07 Aug 2025 22:30:20 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1754631019; x=1755235819;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=8Car4PvODcLhqhbydD+z1uxMFD8WOqlwfDy1GI1vIzo=;
        b=DcxFddqLzdyDab8AmkJUKXW4SGn01ZQrjABfcP9zGdUmm053XYXk+BtJQjfsTRLB01
         ucXq+ITEiK7TzPNLTXccxJwdlTy1WHwuWWXffA26TGz6IJKc2o6RGGS0o06ppjQKN5YQ
         Fpvnbv2ZzioUvOUUkCikto5Z56oIZM+GsTHj8sJr/uPLJ9DHS18Bc3WLaW0voicuHDy3
         V24lobHni2pE8xBRNvZCuFOF21ayRwm3bw8pyb+It/MgZ7zSuj+ZQ19cXs87E9shrSxk
         AV5ve4rRuOxJ6+CX066L9O7XkaqzCLaeNhBSm0nt0AUox5zrqjcSg/mElMNu4fR5uycP
         Ddfg==
X-Forwarded-Encrypted: i=1; AJvYcCW+fOFHc9mf5MIvHABKSdBix4OMG6KtCKx9smGwqwd/hz9HXwYEhdNoz4QreilKosioaSYuCa36s6Jp@vger.kernel.org
X-Gm-Message-State: AOJu0Yza7LVeLwXnLT5+5m4PTe/shNKRLTaWt77V7GenNv8xefxePpFs
	ytQnAEePAQnoBIdUa24w1yvDVIM6gH/8x0hrFkmPkTAj8Z7zgEWK09s7Jw9Y7ftGBw+CNr4Ng61
	01z7Cw+67xQszch7BWMaHhMtOEJNaQXMhTmn+YZYK+v727CUVZHGPAyAFzwQXu6JF
X-Gm-Gg: ASbGnctMUdwXJ7Bb0dfV3aHYsMcrDvlNPo3z0CWsqDT6E3o/MjWkL+h32u4FHN4XuT4
	yEd/6/NVKihlxt4kU/gmx4RuwITixP6cUHb9FfFBv154DgwJFwy+j2fLXhPb2Xo/eFSrleB56eD
	uPEW3UeRh0TWcTroI5cGnF4BL/Q/9zbbHvsizTGkGh634Eocsx5oJGtmkqe0MVEQOU70R9tGTTP
	JitOYII+3FibfXOqvlv/hHtyywLgG13rP+eJtxgE2YE8OhR9e5vikaiQ/eUByse6NMrGFJEU84U
	PjLVW9rMD51cGdVDKYo9cJLUFamIxlSi3Okx91aLkAVlnJLkKTkHN+jdmN19Bb5EYygXUAJd9F6
	0
X-Received: by 2002:a05:6a20:7d9f:b0:23f:fc18:77af with SMTP id adf61e73a8af0-2405526b3d4mr2604480637.44.1754631019258;
        Thu, 07 Aug 2025 22:30:19 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IF2AX1odTQ7pYbDdG+vscDveuCfUt/q/c3s8e8DDzLhI/9qs3snSGEcgCMTUUe5hjWo6pSeVg==
X-Received: by 2002:a05:6a20:7d9f:b0:23f:fc18:77af with SMTP id adf61e73a8af0-2405526b3d4mr2604436637.44.1754631018849;
        Thu, 07 Aug 2025 22:30:18 -0700 (PDT)
Received: from hu-mohs-hyd.qualcomm.com ([202.46.23.25])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-76bcce8f483sm19278662b3a.31.2025.08.07.22.30.15
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 07 Aug 2025 22:30:18 -0700 (PDT)
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
Subject: [PATCH v1 0/2] Add sound card support for lemans-evk and monaco-evk
Date: Fri,  8 Aug 2025 10:59:37 +0530
Message-Id: <20250808052939.1130505-1-mohammad.rafi.shaik@oss.qualcomm.com>
X-Mailer: git-send-email 2.34.1
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Proofpoint-GUID: lQ8FetkmASyJrDHnzKvqBzDElERbKWpu
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwODA2MDAwOSBTYWx0ZWRfXxT9YzKfmCpyb
 AgaHKcB3HHuVt3rrpM1XmJH5HSMP1IBXkz3GJ210PezlIiOw9uNEFpl8QJo2iC72KunNx879ghk
 Hv3TAvev5+h7ii25T+IAshc0o7Z2dKeYnhv3QacrB8vBVV7AFco3n3ljLvrsMhd2X3txErbPcqM
 OZnjFEPzBkCSBNwKJZj5QheIgxqWzOFKLTLYeLe6866+y/5ca7wLPWIMdu9oVdDQyf4oIeUAqXM
 p1nrubdVQZbOoWcVU4pwrYAI+D4GYm7z2X3FliEWVRTp0BFja0aTf/0tGZFbGFTraieeyXnZGa/
 b3Ax/7AAulC9RHfFyH9CLcwB2Cl6D2FjKc5AQYRIeKm16iBnL6q5Q4GbuDJQp6ai498KFxCyVde
 gbtCJ/8o
X-Proofpoint-ORIG-GUID: lQ8FetkmASyJrDHnzKvqBzDElERbKWpu
X-Authority-Analysis: v=2.4 cv=NsLRc9dJ c=1 sm=1 tr=0 ts=68958b6c cx=c_pps
 a=rEQLjTOiSrHUhVqRoksmgQ==:117 a=ZePRamnt/+rB5gQjfz0u9A==:17
 a=2OwXVqhp2XgA:10 a=XcHJyV3jQw5NWJaZqmMA:9 a=zgiPjhLxNE0A:10
 a=2VI0MkxyNR6bbpdq8BZq:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-08-08_01,2025-08-06_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 clxscore=1015 priorityscore=1501 impostorscore=0 bulkscore=0 phishscore=0
 adultscore=0 malwarescore=0 spamscore=0 suspectscore=0 classifier=typeunknown
 authscore=0 authtc= authcc= route=outbound adjust=0 reason=mlx scancount=1
 engine=8.19.0-2507300000 definitions=main-2508060009

This patchset adds support for sound card on Qualcomm LEMANS-EVK and
MONACO-EVK boards.

Mohammad Rafi Shaik (2):
  ASoC: dt-bindings: qcom,sm8250: Add lemans-evk and monaco-evk sound
    card
  ASoC: qcom: sc8280xp: Add sound card support for lemans-evk and
    monaco-evk

 Documentation/devicetree/bindings/sound/qcom,sm8250.yaml | 2 ++
 sound/soc/qcom/sc8280xp.c                                | 2 ++
 2 files changed, 4 insertions(+)


base-commit: b7d4e259682caccb51a25283655f2c8f02e32d23
-- 
2.34.1


