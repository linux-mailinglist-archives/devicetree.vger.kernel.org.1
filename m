Return-Path: <devicetree+bounces-187273-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 7AE77ADF50F
	for <lists+devicetree@lfdr.de>; Wed, 18 Jun 2025 19:55:59 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 307C6404568
	for <lists+devicetree@lfdr.de>; Wed, 18 Jun 2025 17:53:31 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 255572F94A6;
	Wed, 18 Jun 2025 17:49:59 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="M5LjZ62h"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9AE1C2F546B
	for <devicetree@vger.kernel.org>; Wed, 18 Jun 2025 17:49:56 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750268999; cv=none; b=TWTC8HQRkwniMiC/+t+ZB6BdBkm2QgPjFTn4RCt/2WQ+g7sLt8wEeJIMnpOimJup3EZeeLHZoilmiN2bas+2XELt1RrvY0qHdGGl2Wsx1L/9XG0zxTApK/hXpCIur2CjvR++M9eop2OgNmiu376buBm9Mv9pZ8+vnGx2VQzCT/I=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750268999; c=relaxed/simple;
	bh=9QXEDoI19mWFxCahL1UdCvEjFuKYp7fQOj2r6nsOxEg=;
	h=From:Subject:Date:Message-Id:MIME-Version:Content-Type:To:Cc; b=P3T9AlLFRmsoD0Bff35HnHc2+opVPGmDZ2vfnsanUkm8WPHEh5YHhugnNMgVd9w2JJt/3/EGdNgT69NQGZTKeKLcwR8FJ8zXDnQGDxE4bPWO32mZRbgGgJHi3ot3+RBJX2PZ4kba0EEGBcBIMFyC+VTp0EgpHk9PviVzJ8oIRzI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=M5LjZ62h; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279863.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 55IHNMlJ003266
	for <devicetree@vger.kernel.org>; Wed, 18 Jun 2025 17:49:56 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:message-id
	:mime-version:subject:to; s=qcppdkim1; bh=6KcFqDLk13hgOnopRV7cxf
	ycwpTo2vObGPCFt9jCm+k=; b=M5LjZ62hOrvH3AGLMj+grgRbIuMyMFdvCFQAy8
	ezw78V8b4sUBlJ2kWZ1l4mIB406pxpWsKKSTpDVryZr4OUU/aXC6mVa3mCa0mMXi
	vmm7wouJsLxhQV04IByXH49tEQzgat/LecLj+hnZ4LIhckMKaqRhzgKUrxHHupT3
	kp/TwohqnGcb/S/P/2RCj04K4BpiF8xRX7B42BAFMwVUYo/w7aqPvFyXNs3jCGem
	S++a1JJU7bCT5wiv1weWSeXo8O88jMWmIYxQ9Gx2QOE4tGeeeUEUXjiOy1U5ShDf
	NxcSEhZsFnigxFlX48dr+jmRYuzUoHlJu4u/7BciDX/gcYPg==
Received: from mail-qk1-f198.google.com (mail-qk1-f198.google.com [209.85.222.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 479qp5uscq-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Wed, 18 Jun 2025 17:49:55 +0000 (GMT)
Received: by mail-qk1-f198.google.com with SMTP id af79cd13be357-7d3901ff832so1454389085a.3
        for <devicetree@vger.kernel.org>; Wed, 18 Jun 2025 10:49:55 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1750268994; x=1750873794;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=6KcFqDLk13hgOnopRV7cxfycwpTo2vObGPCFt9jCm+k=;
        b=NbR6FT75GiivXj69cQbE8sM9NaGr5ZSdu4B/qNnwADTeiPdbEcc8o1i1/xzEkyGxzf
         XQovayPGxc2BO3zBnztnWB3MOSA/zHvskBdzvCoBoAsqGOux8GrCeil51/PBTHCrAwAg
         415eg6Dt2EuSJHqndE3hjqzzAvvcHVTcui10nzGM3CLZnYEBicerGOznlwfmtIwH74sh
         fu+NydJOc3DGN68FuC/3wF82Sxzt7SWKuF6pqkH4YsOL2JdVCJSeryUVEcIPXrc+E7qF
         SZ6PvfNfXMzrkiKc1MbP40aCkaeBu8+8QvJepFMrvmD8iRw2rLv6uwMuMnHhqU8RaP+b
         vkzQ==
X-Forwarded-Encrypted: i=1; AJvYcCUINXBNPxqRkyLCz+Yf8t8Cm53ccJd1wdosPKq7+EmJMhWugFvEKE7icuochldTK2T7M69oGMYBwwUW@vger.kernel.org
X-Gm-Message-State: AOJu0Yx34YnwMpAkTzTDnIGqO8zTaH5waw/IYtoSfOXXC8YaJ01GyOFr
	pZvQ0NReSUfyNI269nG73BDv1jq8ovZmbnSeJL5hZp2+/Zpiel/hRHP4Yb7pmsGraNK9OkjE+9a
	pyY/9zwv68gHI/JTHmjC+ZO1JmZ7z9B8c7nharyWwkqok7pvUq3wi/q6NOCxGqRN6
X-Gm-Gg: ASbGncvtSPUbWmQJuDv8qrW3eE58lxmdkRqj3D23R/ujHZQmfWrpjWayTqSxz0waHKL
	lPbcND7r9ncXEo9bzsvJhZ8ZJLBDsNLLRwBt69Gmg8E0QD8R0gksvcDfrOwvqsQigRb2RJ6mmO0
	sfq0J331cjyMC/HdyLIx9ukIHdL2/ZZg9Q5n6C1MKEx1OWLgB3kN9wadD0K7E2ul1lz2ipsCeJe
	3qvyTLDsfKdM0YacBiAN3dYxSx+20lh1iV064LcxVLTs/MgzoW1elRH2/Tpv4aKvUNp2tigIeGX
	2E5hU4L7xJ8xI9p7LzfN7Mtbna4q49mwZNMwV87XYqOb4LadmZ0L0YLFR6NOrFmSJZoofTxIeCq
	k37WtXVhHUoxa4Rx5l24C9CVzNu/c4uWOtwU=
X-Received: by 2002:a05:620a:f10:b0:7c0:c046:7c6b with SMTP id af79cd13be357-7d3c6d03284mr2687714385a.53.1750268994448;
        Wed, 18 Jun 2025 10:49:54 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IF60X/jqz7yMGtPiVnJDZu6KGocoOhdfxhEdsn4Ftu0Gh//3WaeGd+GFWfujYMkVHyzNfeH4g==
X-Received: by 2002:a05:620a:f10:b0:7c0:c046:7c6b with SMTP id af79cd13be357-7d3c6d03284mr2687711185a.53.1750268993986;
        Wed, 18 Jun 2025 10:49:53 -0700 (PDT)
Received: from umbar.lan (2001-14ba-a0c3-3a00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a0c3:3a00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 38308e7fff4ca-32b7b43a98esm2911131fa.65.2025.06.18.10.49.52
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 18 Jun 2025 10:49:53 -0700 (PDT)
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
Subject: [PATCH 0/3] arm64: dts: qcom: sar2130p: correct display controller
 device
Date: Wed, 18 Jun 2025 20:49:50 +0300
Message-Id: <20250618-sar2130p-fix-mdss-v1-0-78c2fb9e9fba@oss.qualcomm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-B4-Tracking: v=1; b=H4sIAD78UmgC/x2MSQqAMAwAv1JyNtDFDb8iHqpGzUEtDYgg/t3gc
 RhmHhDKTAKdeSDTxcLnoeAKA9MWj5WQZ2Xw1le2di1KzN4Fm3DhG/dZBKMrx7JZbF1RAO1SJnX
 /sx/e9wPG9sdDYwAAAA==
X-Change-ID: 20250618-sar2130p-fix-mdss-a14b47f065e3
To: Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Dmitry Baryshkov <lumag@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org,
        Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=openpgp-sha256; l=757;
 i=dmitry.baryshkov@oss.qualcomm.com; h=from:subject:message-id;
 bh=9QXEDoI19mWFxCahL1UdCvEjFuKYp7fQOj2r6nsOxEg=;
 b=owEBbQGS/pANAwAKAYs8ij4CKSjVAcsmYgBoUvxAAgHHcqI9vhl70FRO/ughoHUAI/1rwy0OW
 iHqdb2wGIqJATMEAAEKAB0WIQRMcISVXLJjVvC4lX+LPIo+Aiko1QUCaFL8QAAKCRCLPIo+Aiko
 1W2SCACmp9viLbwYyYfaNMpbIJPaDcO+att9+XDvgEFTXnFnXAWl9aPY58yrojqqv4NonwMI8AI
 EBeYewKedPxKkHKw07i37NNwK58TKV1gv8VWYSpE2EOAAE1Qw307LlHF8Vyux6WTz3mVqHpoSQf
 UzfHBnZtqhSWw6XM4EWJx26B+zTIwf198tcLSfPJa2FG+lkQezk5GGfLQV/tcK5PAKtV9Odlawq
 Bf4rT8rY9oJkE0+C3sdz+dCNsRyOoChsHoL/pAlH+TFD6zUGFppMAe9jXGi1bOdwZW1Ph/fde4T
 65mKmvzJjuRc3embXCQd0Gd5T54lT4WrM9DUkJmJEThHRwEV
X-Developer-Key: i=dmitry.baryshkov@oss.qualcomm.com; a=openpgp;
 fpr=8F88381DD5C873E4AE487DA5199BF1243632046A
X-Proofpoint-GUID: pmhBuob9oZ_bKVt07b9Wk1ic9cfKoyOF
X-Proofpoint-ORIG-GUID: pmhBuob9oZ_bKVt07b9Wk1ic9cfKoyOF
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwNjE4MDE1MSBTYWx0ZWRfX3jaT67GHEo3x
 1OYD3gg8K4zYMv8izDUO3S/nQYCqJpST7ZnTwnxSxHKz2KWGAWNUU8RqT76u42JwxtuJhZtZ6F/
 1C1stu1s9QfeUJ8JjSw1q7GqjmkpoKe68FrFqrCea2k2CZHBuH5qhOhJKYztgennvwLxK4NS8UY
 UC0H+5mmuWFdsOL3YtK4ndEZ1pI/fRmsxC8O3uCNGlPhrty72XoUnLGnKbQiQPQWmRfQhwJWdX9
 VBqmOvyRaA0tx/kk0spK/i9kFHEYXtgBkKq+31/imjSXdeMR6ALjIlXwztiue0S4y7GresuvrkJ
 ZzkyznshMPbAzmZfwVT2wm9t8btFuLbkPfJWMiNOo8zzN6s+474+XItcW0J/BMTrB5ThSrNJoBG
 7fqllOP1wIcR3L+CpHg0mrllbeJEZ855UHL4UVL0um6FARTK6HjZtlyflZ7M0I0nmjTF0pJ2
X-Authority-Analysis: v=2.4 cv=fMc53Yae c=1 sm=1 tr=0 ts=6852fc43 cx=c_pps
 a=qKBjSQ1v91RyAK45QCPf5w==:117 a=xqWC_Br6kY4A:10 a=IkcTkHD0fZMA:10
 a=6IFa9wvqVegA:10 a=EUspDBNiAAAA:8 a=A6ng92C9FvdBp_T1eIAA:9 a=QEXdDO2ut3YA:10
 a=NFOGd7dJGGMPyQGDc5-O:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.0.736,FMLib:17.12.80.40
 definitions=2025-06-18_05,2025-06-18_03,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 phishscore=0 adultscore=0 bulkscore=0 clxscore=1015 malwarescore=0
 mlxlogscore=863 spamscore=0 lowpriorityscore=0 impostorscore=0 mlxscore=0
 priorityscore=1501 suspectscore=0 classifier=spam authscore=0 authtc=n/a
 authcc= route=outbound adjust=0 reason=mlx scancount=1
 engine=8.19.0-2505280000 definitions=main-2506180151

I didn't notice that Bjorn has picked up v1 of the SAR2130P display
patchset instead of v5. Correct several mistakes that were fixed between
those two versions.

Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
---
Dmitry Baryshkov (3):
      arm64: dts: qcom: sar2130p: use TAG_ALWAYS for MDSS's mdp0-mem path
      arm64: dts: qcom: sar2130p: correct VBIF region size for MDSS
      arm64: dts: qcom: sar2130p: use defines for DSI PHY clocks

 arch/arm64/boot/dts/qcom/sar2130p.dtsi | 23 ++++++++++++-----------
 1 file changed, 12 insertions(+), 11 deletions(-)
---
base-commit: 6e5ab6fee68df8c40b338baeae6e269fa25a7e25
change-id: 20250618-sar2130p-fix-mdss-a14b47f065e3

Best regards,
-- 
With best wishes
Dmitry


