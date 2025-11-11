Return-Path: <devicetree+bounces-237259-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from dfw.mirrors.kernel.org (dfw.mirrors.kernel.org [142.0.200.124])
	by mail.lfdr.de (Postfix) with ESMTPS id D2B41C4EEA8
	for <lists+devicetree@lfdr.de>; Tue, 11 Nov 2025 17:03:08 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.mirrors.kernel.org (Postfix) with ESMTPS id 332404E1D25
	for <lists+devicetree@lfdr.de>; Tue, 11 Nov 2025 16:03:03 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 53C2A36A03F;
	Tue, 11 Nov 2025 16:02:58 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="BOVk0AgF";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="TGswAheL"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D3F627082A
	for <devicetree@vger.kernel.org>; Tue, 11 Nov 2025 16:02:56 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762876978; cv=none; b=uu9q0AQm+uUXVSwUhN+h5ZJntFvhLBbiP4kINq39bd5Yd0q0daiprKGAeHX99bo/fPNz28DRiekWBULF2471xq8hBf5IHqh96to1BBsmeMUVsRG6F1o23iUb9p3rSSlLK0xEC+ig25pqXHkdO95MVQdYA4u+WKFYGV8gFbIBYWo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762876978; c=relaxed/simple;
	bh=Szl2H3XbsTdN5Hp3bW7dxEgQFIDzEkvs6uk8oNOn680=;
	h=From:Subject:Date:Message-Id:MIME-Version:Content-Type:To:Cc; b=UHqGwKz9tzmiNh8t1jKGB5fU+2rUly5h+UCH+Q/xz5HZQSjY7yLVERcqjrxnyX3rObeKiucGYd/6HGqfYj3tmv6Vq9i7GFLy2zwggZyvQ2a+YRaBosT7FoxqBC1x1P8Umx3ccajzalox9YULBVqRUAUYewh+LK857A9e5D0KENQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=BOVk0AgF; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=TGswAheL; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279865.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 5ABBGBx62165217
	for <devicetree@vger.kernel.org>; Tue, 11 Nov 2025 16:02:56 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:message-id
	:mime-version:subject:to; s=qcppdkim1; bh=gEfAh6rp9MQrdIl36CEViA
	ex1/8JADzaa0H1cCy8km0=; b=BOVk0AgFFoLyOKRL4VZ+PQrlRjq6nAAnI3yv/8
	IC5lriuqI076jj+oMmU6AEiDDePtgCcO9XAL6PpeGuzzpMsUraBhVODh/5R8+VP1
	WUx7hAZUIC7svqS0yBzXQcX0EPiXK7wsTeL0u7WM1Ol6CnR4sLM8+zXerKvHp7+W
	BN/nUSum+Pa7adnPguFgbAnA1oPThI2zR5WQrlb+QyrApP5U3DbOrAWfpxhy+tCH
	sjoG5QOUzfHkQjNFPieQSPXidvH/7JEfhGrLEl5IKngcVGXAwlAXYp2udepVZtrH
	R9xymnzcC4gYTC1a2JIOYKd7S4JqHl4QtzMzE55lUzXMjnuA==
Received: from mail-il1-f199.google.com (mail-il1-f199.google.com [209.85.166.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4abxhhhuyw-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Tue, 11 Nov 2025 16:02:56 +0000 (GMT)
Received: by mail-il1-f199.google.com with SMTP id e9e14a558f8ab-433795a26c5so33716995ab.3
        for <devicetree@vger.kernel.org>; Tue, 11 Nov 2025 08:02:56 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1762876975; x=1763481775; darn=vger.kernel.org;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:from:to:cc:subject:date:message-id:reply-to;
        bh=gEfAh6rp9MQrdIl36CEViAex1/8JADzaa0H1cCy8km0=;
        b=TGswAheLulhJSA7MqkZa90AgFtD9Plu+5sIDEclJxn1vzLPNvHmJ3LNeBDhcsaxN50
         oIlTq7CEPFb7hcGiaONSce7cvkEvDiXsT6avP1ChBVcpis0WZjQauJjTHWkj3GWS3Ozt
         Oklv/GpRhIx4GN3MnziS15y7EZ/jiy5zCKBdFcL47rCM2g+yp64acFnj4S8wDxYiki5G
         HYEooAsRtvgfVHSUt3TawSHW1gCK1mUP0/oA2R4ecvEyTf2p3iSwKg5FMF2rxZL9FO6y
         eq9CG9+Tc7OkNtPhIKg87WQ4BAAlxW2wAQ8OfxHTINE2GZDhHTw+Y4PaSRg5L5FxxANV
         BNqw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1762876975; x=1763481775;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=gEfAh6rp9MQrdIl36CEViAex1/8JADzaa0H1cCy8km0=;
        b=FSOrQ+AswMJoHrASV86zjcXZSm7+pbBc9O1T0MckzwE60+Fwvur7Lv35zKah9ck+OG
         nv3kAiIf0NAuyzjZ3JvoEhcrbLLyyylvr0CEXfDk+KeT2Ca5YpLqp/L6/6UjJbjj93Ck
         yiPbmDLUDOM46h0ZkAFZdOhUH4qAfF/V3EaKQ9GnJvKaOLecSd+4ziP/dfrp3OnjM1Lm
         fmqI10/djNXuaOa9Du5pBz+Ig2KMOwNz6un+fi9xcMo6CVwqJUCP7JR3XcA0BvNYXH7Y
         gzTf/uAiZu243tzutCbE2NWYuCEbttET2JzBsAytJbjkrR50acczCnICRXsNRSnMqcoQ
         XmWg==
X-Forwarded-Encrypted: i=1; AJvYcCVubtMp/7UbSQfZMlGEAAysgYJLDnsp552xHEV8O+ex+bH/9BGqvJIRdXKQQMQ49oMpuNNn80QqJead@vger.kernel.org
X-Gm-Message-State: AOJu0YxRs2t7h2kt3FTD2ui7KS+gjfK3J9rEyiXfOuFanOFuX9zadCdB
	qDL3CPPKNJkNf8ouOAkBMYGJdQ1XB/As0a6wooBgTvvvSt0khgV1gWUs64nV1xSbPqfcJelA3uO
	lCUm2MxUoWxwObpUb/MnWEyH2qpfPV9FQmuPwPsOSKEJaQZaeThbF4ZGO8XeWI1i9nFC2b5GH
X-Gm-Gg: ASbGncuqpXYvRATTk2nrtTMJO4FnN6Px8MTAdS087KGUgJLwH16AaSVKaeGJavYXcge
	mpGUOaz6xocJ6f+pk6gENPEr2FIuYs3QrQSKivHFV0UdZrMs4o9kmy5phFJrcnmDswOvA3iFY2g
	Xg5px9HXjMiA8FiPuTLuJ7eAYXxkj10UWk+Odovvkwmzf/JErAI3ZtXg+UcTO6wgqpfnZjVsirP
	GeHmIOFh/qq7r+H42p6XDO2D/YBy+AMVvS+bTap8zpnJrmBda/4YF/W6sQBqbFPOWTfE1j+V5Rl
	FBvD/XNEEegVLKzJfN0CHj/lf1rDTWQx28GPeIlQ7kgandQB/F++gzqg6AZYZT3EyJ7Ts9JfAeU
	W0BIvQNgGxgjKaJTdQ14PsrfnPRpFGn9xyc//CMS9DPcMTEgSUicle2N1VHRMBJ+YbmRMGQ/1eB
	C2jmvGQiBuSPBT
X-Received: by 2002:a05:6e02:741:b0:433:2341:bc13 with SMTP id e9e14a558f8ab-43367dde525mr202694975ab.11.1762876974720;
        Tue, 11 Nov 2025 08:02:54 -0800 (PST)
X-Google-Smtp-Source: AGHT+IEMeGuxuvNqNErBimtBnxbPGOE63puNynCAr2CwRbSYpmZTYmk56G2PXxE/3b2KkI1j7a5EoQ==
X-Received: by 2002:a05:6e02:741:b0:433:2341:bc13 with SMTP id e9e14a558f8ab-43367dde525mr202694035ab.11.1762876973884;
        Tue, 11 Nov 2025 08:02:53 -0800 (PST)
Received: from umbar.lan (2001-14ba-a0c3-3a00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a0c3:3a00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-5944a1b231fsm5149139e87.74.2025.11.11.08.02.52
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 11 Nov 2025 08:02:53 -0800 (PST)
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
Subject: [PATCH 0/2] arm64: dts: qcom: add AP8096SG variant of DB820c
Date: Tue, 11 Nov 2025 18:02:50 +0200
Message-Id: <20251111-db820c-pro-v1-0-6eece16c5c23@oss.qualcomm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-B4-Tracking: v=1; b=H4sIACpeE2kC/x2MQQqAIBAAvyJ7bkEXBOkr0cF0q72oKEQg/j1pb
 nOY6dC4CjdYVYfKjzTJaYpZFITbp4tR4nQgTdZMMB6OdMBSMzoOkTw5S5phBqXyKe8/2/YxPnk
 xIJ1cAAAA
X-Change-ID: 20251111-db820c-pro-8ecd2a28520e
To: Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=openpgp-sha256; l=1029;
 i=dmitry.baryshkov@oss.qualcomm.com; h=from:subject:message-id;
 bh=Szl2H3XbsTdN5Hp3bW7dxEgQFIDzEkvs6uk8oNOn680=;
 b=owEBbQGS/pANAwAKAYs8ij4CKSjVAcsmYgBpE14sngE6ezmNymcaCodRsu7ZVFgpxesv7SzLC
 yz18p4mGuOJATMEAAEKAB0WIQRMcISVXLJjVvC4lX+LPIo+Aiko1QUCaRNeLAAKCRCLPIo+Aiko
 1cGuB/9oW3olB+FSLNMWpFbbJTIz9oIMflBJ+LnyvqHVon4BgeSy5JA5lXCeXrhN6A/DdE21g2G
 nR8C8d9euGSc7EdoW68MhyHIIYKlzDMjKCWP3Z2yn53OhG6LjShTQoZQ4rL3gecifl+7ueAXvN/
 BRQRzPEZBRmF+rfw2204hLhPDDyie3lQrFA4j6y9Nn8Beur1yq6cxUq5eW5tBTflQZPMtJNjY3y
 M2kL2glrSd/Vtb/tForC5N5WOwJeukMsaPI5DdT3Rd/dFJSg4tJU+g2Ydc9ObGZdmpKDjgdx0+6
 3zAgp4QHoutwYK8bQnV5iiTt10Y/xvKRICo76vVpWWH9MCnx
X-Developer-Key: i=dmitry.baryshkov@oss.qualcomm.com; a=openpgp;
 fpr=8F88381DD5C873E4AE487DA5199BF1243632046A
X-Authority-Analysis: v=2.4 cv=Pc3yRyhd c=1 sm=1 tr=0 ts=69135e30 cx=c_pps
 a=vy3nvQW9C2dqy/lMnN3IYg==:117 a=xqWC_Br6kY4A:10 a=IkcTkHD0fZMA:10
 a=6UeiqGixMTsA:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=EUspDBNiAAAA:8 a=Hd9naEU_5ldSTe-YsNsA:9 a=QEXdDO2ut3YA:10
 a=mHQ74H5e8mo-RpSg_uaF:22
X-Proofpoint-ORIG-GUID: ycVgHEaowYQkTx1rWMWlwonvRhLA384E
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMTExMDEzMCBTYWx0ZWRfX1eZBwBWZ4TNr
 mM5Zdj8B5XY4Vh1fwK4BGFGoDG1dPenZD470kGbTP0U8s3aY60On7Mn/zp/F1GqapxGpG67SGjk
 nxD9fa5Ptb0Y2uGqlUMz7RZ4zoAWwbWfoNocFhmCIbq+5BrJXWmYi1zXj1Q5WChC6CByr06r53H
 /OExT/lluEfkP32jZPwF5dalKPmf68IEPfzWjSJQTOU2ExOUCsiWHry/3Mx3rU4g7kPuV6pNYVp
 L/U8xN1aVGRqbPAaHwEsWyeB15601DYT/UfGnDbWQafrHiQofhSHXxkYjOd8iqBsZJAG5+Qumra
 aZUd+kSpAa7w5x9CtoezM9l5KZXqYHzAJybPtMi/DIEBXSZlpVQgdIYFXCHY33q3Xp5MsxY0Fe9
 pN56lNLXVI5cqJtXBl3Xgg/D921o2A==
X-Proofpoint-GUID: ycVgHEaowYQkTx1rWMWlwonvRhLA384E
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2025-11-11_02,2025-11-11_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 phishscore=0 lowpriorityscore=0 malwarescore=0 spamscore=0 clxscore=1015
 suspectscore=0 priorityscore=1501 bulkscore=0 adultscore=0 impostorscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2510240001 definitions=main-2511110130

While debugging a crash in the DRM CI setup I noticed that the kernel
warns about the unsupported hardware in CPU OPP tables. After a small
research I found that board indeed uses APQ8096SG rather than APQ8096.
Add DT file for these boards.

Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
---
Dmitry Baryshkov (2):
      dt-bindings: arm: qcom: add Dragonboard 820c using APQ8096SG SoC
      arm64: dts: qcom: add apq8096sg-db820c, AP8096SG variant of DB820c

 Documentation/devicetree/bindings/arm/qcom.yaml    |    7 +
 arch/arm64/boot/dts/qcom/Makefile                  |    1 +
 arch/arm64/boot/dts/qcom/apq8096-db820c.dts        | 1126 +-------------------
 .../{apq8096-db820c.dts => apq8096-db820c.dtsi}    |    5 -
 arch/arm64/boot/dts/qcom/apq8096sg-db820c.dts      |   15 +
 5 files changed, 24 insertions(+), 1130 deletions(-)
---
base-commit: ab40c92c74c6b0c611c89516794502b3a3173966
change-id: 20251111-db820c-pro-8ecd2a28520e

Best regards,
-- 
With best wishes
Dmitry


