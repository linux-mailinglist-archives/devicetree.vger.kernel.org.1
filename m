Return-Path: <devicetree+bounces-219556-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from dfw.mirrors.kernel.org (dfw.mirrors.kernel.org [142.0.200.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 6882EB8C84D
	for <lists+devicetree@lfdr.de>; Sat, 20 Sep 2025 14:37:01 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.mirrors.kernel.org (Postfix) with ESMTPS id 4E1164E10E2
	for <lists+devicetree@lfdr.de>; Sat, 20 Sep 2025 12:37:00 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 05AC52EB87F;
	Sat, 20 Sep 2025 12:36:55 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="VJuF/4PD"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 66F2F2ECD19
	for <devicetree@vger.kernel.org>; Sat, 20 Sep 2025 12:36:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758371814; cv=none; b=Y16L4xpzPA2u19/A1m4vyuyQ6QfG03Gos1sHm5cZfuJTcljCcLzzz9XFgzO/qhAetE+c3n3FOaQNaKZ6p9+j8f80XCEndixKTxfd343m9S5Q9wXwyZEkGpg2pC7bldX/YTYQY8MLu5bmkSbYY6BjB4lab9SmHOW08nQCSnuMzqQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758371814; c=relaxed/simple;
	bh=NlAyY6gwj3GgebzwwaWrY6Q6kn6D5Bsn1jK4HrmHOC0=;
	h=From:To:Cc:Subject:Date:Message-Id:MIME-Version; b=bDkrVGuoMZZQ/zhtCtB5fTfTZESwubtLTolNY75rAXi7sVH9Hj0M4asS3BoLS330m+CL/WVzcAhupuzdTncCyikLkeHXndy4xtjflP/0HRpaip0VwgtfCjaWHbas2EbffIlg19NaVIGEoLy1DvVAPfRHgHpOc8x5nx/n9eA1uGs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=VJuF/4PD; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279868.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 58K3FWnQ006140
	for <devicetree@vger.kernel.org>; Sat, 20 Sep 2025 12:36:52 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:date:from:message-id:mime-version
	:subject:to; s=qcppdkim1; bh=kQEsxxv9s/GhWRr7hiHaTvJE9W1ROnl+URj
	6ByZUdys=; b=VJuF/4PD18F/7WIjaN88QgYYik45597UonMuLRqhx29D+ZdW5Xv
	9u2rMCS0bi/iJYIrBQftBA+DGrMYviAN/PgsASh6O041JQ7OlWDo00Z3QjjSjHqy
	dAL6xl4C6SHiMWDFdqeazvSEUkB/G8QqQ3CrCeKmxKA32Wn4MN9RWBLI3KjjyTmY
	jlrMHgkhiStxPwpguJbQ9oX65mi7noXHNt/6vskAbwMaSpAEnVAQ1NDw5OtUqfPK
	+njqbmzuEIS1caUVDDLhI0r+SjwxO5nv8oLPpTHHJ0mFJWr5hmR1fSf1T4u1Epc/
	s6OP1tvt/ksly1O6O7tgeAkqUKeU+nm76qg==
Received: from mail-pf1-f200.google.com (mail-pf1-f200.google.com [209.85.210.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 499kkhgrtf-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Sat, 20 Sep 2025 12:36:51 +0000 (GMT)
Received: by mail-pf1-f200.google.com with SMTP id d2e1a72fcca58-77df695490dso1881388b3a.2
        for <devicetree@vger.kernel.org>; Sat, 20 Sep 2025 05:36:51 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1758371810; x=1758976610;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=kQEsxxv9s/GhWRr7hiHaTvJE9W1ROnl+URj6ByZUdys=;
        b=TAfyihn6EglURHy3e3tw4UVqL2ObXBw2SMUHI8sEEIG5Q700E/mNbEi3JTfWMioJQP
         rlZZvSrsGkyi8/dRg9V7xuaYNPj/YjyeHB8UZZ552oKNnGSzjq6UAOekeqtyrlkCsbk1
         JtCN+c7HuYejXa1ah9l+rkVxTmTg1WIxk8JcdPAduernhHNv74lcbH6FSpGx0qJXVkz2
         tBL3iGKBy4sFHO5MLs0PFMQ9h3x7R2ANghKYXK9ZMkqPhHYwgZuDHsUi1pNQhk6EU2nB
         DloUbLwcP9lQAsZ0OLXODC9C6f0+tYN2msrDNqa2md9xe0okKfgR+7mc1riR85VFFyFU
         QUbQ==
X-Forwarded-Encrypted: i=1; AJvYcCWdohK5hTijZItXIsno/+zf7Cn3czSfkQ3VmKQL7qoRSPMcoopnLTzx/0z6bVEbzZ61lg7yP8ddQaFn@vger.kernel.org
X-Gm-Message-State: AOJu0YwhNVCZ9V/JMHX+6mbKP2gCh/clVJF+TUSKG1E753HbjHo2bmsm
	kP5JK+UIF+wOwyTYKdXcdySvjosaYiWhhcKVRwIrx4xxu+RqHuyj80n0flx+jtKnYWn7ZqyIQt9
	cihY7R9fLXCGZAKw2kokuSRHWr1cocRkxGjF0cnZhTQqsbjH2EaZsq9sKQkCcAFmSutEhaYD0
X-Gm-Gg: ASbGnctLa6fcMIRc5bIqleB2akuVduzGdZEPuYDb45n7+eShkQfBOC1f9SVBMu472sz
	Lin9vupUcGJTLKFosvanaLeKOnH9DXZlH5S/WhPiD+gDBOHJ2+5X7ekKPEn4ldqG8aYMy0XyKkl
	/SzByiVbkhbsnUpOJa4U9PNCl5taC8QKnTvLJnyej0GoLJlFjqJ/CHyLWAVchqs7p3XLSWPl2Jq
	FovQw02VwFgBtrdgNfMfHCYYstq51UP8fQR4Q/RTJV9Zp2gpaCpTaJfa6FXfiN3vZHm09DTcucQ
	/xIomtNE4nsGtS0L3suYJT5YwVIGVZsMPmXg/BkZznJBQOo2IsY1MdC6DQ4WfhyAiG9QXgY3flm
	pkg5lQNCdCNeketRf+rm8hXj6D5I4g7pTtDFSoxDDYtYmvq4Ruwapns41xql7
X-Received: by 2002:a05:6a00:1889:b0:77e:325b:f614 with SMTP id d2e1a72fcca58-77e4d21fd65mr8295117b3a.12.1758371810339;
        Sat, 20 Sep 2025 05:36:50 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IGgWzB5nkqqfDCZX9CuCLhkrbY8TKa9vwIXS5YrzuVH3x6awEHxf0i/Xsr/JFw/xJ+CoTCA+A==
X-Received: by 2002:a05:6a00:1889:b0:77e:325b:f614 with SMTP id d2e1a72fcca58-77e4d21fd65mr8295094b3a.12.1758371809932;
        Sat, 20 Sep 2025 05:36:49 -0700 (PDT)
Received: from hu-pankpati-blr.qualcomm.com (blr-bdr-fw-01_GlobalNAT_AllZones-Outside.qualcomm.com. [103.229.18.19])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-77f1550f70asm2911274b3a.13.2025.09.20.05.36.46
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 20 Sep 2025 05:36:49 -0700 (PDT)
From: Pankaj Patil <pankaj.patil@oss.qualcomm.com>
To: amitk@kernel.org, thara.gopinath@gmail.com, rafael@kernel.org,
        daniel.lezcano@linaro.org, rui.zhang@intel.com, lukasz.luba@arm.com,
        robh@kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org
Cc: linux-pm@vger.kernel.org, linux-arm-msm@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Subject: [PATCH v2] dt-bindings: thermal: qcom-tsens: Document the Glymur temperature Sensor
Date: Sat, 20 Sep 2025 18:06:31 +0530
Message-Id: <20250920123631.281153-1-pankaj.patil@oss.qualcomm.com>
X-Mailer: git-send-email 2.34.1
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Proofpoint-ORIG-GUID: sbilQUIZrNyZVsm-oXU8cwVd1b7pFG6_
X-Proofpoint-GUID: sbilQUIZrNyZVsm-oXU8cwVd1b7pFG6_
X-Authority-Analysis: v=2.4 cv=JMo7s9Kb c=1 sm=1 tr=0 ts=68ce9fe3 cx=c_pps
 a=mDZGXZTwRPZaeRUbqKGCBw==:117 a=Ou0eQOY4+eZoSc0qltEV5Q==:17
 a=yJojWOMRYYMA:10 a=COk6AnOGAAAA:8 a=EUspDBNiAAAA:8 a=8GdNKlHnjaA04NifdkAA:9
 a=zc0IvFSfCIW2DFIPzwfm:22 a=TjNXssC_j7lpFel5tvFf:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwOTIwMDAyMiBTYWx0ZWRfX/UQAZEEiQcXK
 4c4oUQLt9uidR0gNLqHutS5eRCr3RCrM5cAOs89korOV96Q5Y4dHjKec4IWdeIgnmOPo9BInyPJ
 tS2WE6uMv8p4gVZOB2otSXpGflvcCGLiSBEYAaxM+fo4SZaCIKkZYvWzudxD6uONyLZooBlH7cF
 x2ZzQr9cf3/UzpGU+kR+aDVF3tNpTlIskLXNn2iM/wiqvSYYSTmUUtfMLpPV7iAIv26s7OD2ZvN
 NBSvqBBtFxH+oR7MmguMT6Ei4cxiFc7T9GISERmPJEgH/kZWp1EonU+bDW2A3RBXByXiVrJSqEG
 e1RtRNQaeDqbFrSN2JuqHyl4ti6Pa28CFvlLr8Wui2DWqLfKftolwORZEebe4pgCDcHLMUnbg5u
 lUazGZmu
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1117,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-09-20_04,2025-09-19_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 impostorscore=0 suspectscore=0 bulkscore=0 priorityscore=1501 phishscore=0
 clxscore=1015 adultscore=0 spamscore=0 malwarescore=0 classifier=typeunknown
 authscore=0 authtc= authcc= route=outbound adjust=0 reason=mlx scancount=1
 engine=8.19.0-2507300000 definitions=main-2509200022

From: Manaf Meethalavalappu Pallikunhi <quic_manafm@quicinc.com>

Document the Temperature Sensor (TSENS) on Glymur Platform.

Signed-off-by: Manaf Meethalavalappu Pallikunhi <quic_manafm@quicinc.com>
Signed-off-by: Pankaj Patil <pankaj.patil@oss.qualcomm.com>
---
Changes in v2:
Fixed to sort entry in alphabetical order.

 Documentation/devicetree/bindings/thermal/qcom-tsens.yaml | 1 +
 1 file changed, 1 insertion(+)

diff --git a/Documentation/devicetree/bindings/thermal/qcom-tsens.yaml b/Documentation/devicetree/bindings/thermal/qcom-tsens.yaml
index f65dc829574c..78e2f6573b96 100644
--- a/Documentation/devicetree/bindings/thermal/qcom-tsens.yaml
+++ b/Documentation/devicetree/bindings/thermal/qcom-tsens.yaml
@@ -49,6 +49,7 @@ properties:
       - description: v2 of TSENS
         items:
           - enum:
+              - qcom,glymur-tsens
               - qcom,milos-tsens
               - qcom,msm8953-tsens
               - qcom,msm8996-tsens
-- 
2.34.1


