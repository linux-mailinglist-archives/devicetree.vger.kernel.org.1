Return-Path: <devicetree+bounces-196792-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 06115B0714A
	for <lists+devicetree@lfdr.de>; Wed, 16 Jul 2025 11:11:49 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id AF60458220D
	for <lists+devicetree@lfdr.de>; Wed, 16 Jul 2025 09:11:18 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E00712F2C57;
	Wed, 16 Jul 2025 09:09:32 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="IfIhBuBP"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3F3002F2718
	for <devicetree@vger.kernel.org>; Wed, 16 Jul 2025 09:09:31 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752656972; cv=none; b=lWQc8ibUjAt0jeHRbX+TBCDHCzPoaVZn/aeRGz8fiLdZrT5R5TgC4q92D08feDCHvF3FAZxEQHLaAW0t56CNaGt1Do5BZByBZi9Gu/wZRYbeLmGeF+GWnkUNPmh9w85fPOYpJufPQkuRVgf7URenKJLQ+HbUqhdKekbe60pOpOk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752656972; c=relaxed/simple;
	bh=meDbdQ8jfv6MzJ5QqjKeDn98P5b+BWThT05OUsC+Mpo=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=rkbA9XfRRoAN6P+DLqHyp/B553WUSGIkkgNWtuK8DsqLfVChuxKzjEWNMdO4wCKyzXwhA9/filQ2CMjLhD4eWlM1ccd+w8eDTsroJG8vtH5ufS8QanFGa3fVVjEOsh09gSf7bzkvVL6D3xmqbztJn8BhaAr1Sc1KIFmvZHcpukc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=IfIhBuBP; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279865.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 56G5sPTA003402
	for <devicetree@vger.kernel.org>; Wed, 16 Jul 2025 09:09:25 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	F9sBDUWVBLweXSo5nrw26qvUJlKDueBdo3VuMvvD44M=; b=IfIhBuBPHQ4n+KsV
	gePm3ASakyphVJwcncRLHtz3OgUsaaBmv5uZO6Yqt2ovcfEMl98efwGA4amBnTPC
	xnZJbm6CaJUnLxuXOiCY8aEGa1jb+ouXZXRFikbVlQiZ/Gb0T5L6iiyCBxUvsoTl
	DN9g1m/q7DsDv0r+YKAOEIwtRxm4XaGR2VcqijrOU+qnL/gPJ3Cgk3aNPifzYiDh
	SzCDHr1b15RhsmPZSwP0+U4AIX7GqIx4aKHXSTb6qUI/OqO75LyPj4mrmj9VZ5jh
	7Z5IvSMieyr5wG40OF0HQVPL6cn6UdTwWoLnAQnUu9UM6EaIFEnMRHrEzc+prAQ6
	b8/b9Q==
Received: from mail-pg1-f200.google.com (mail-pg1-f200.google.com [209.85.215.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 47w5drp6ev-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Wed, 16 Jul 2025 09:09:25 +0000 (GMT)
Received: by mail-pg1-f200.google.com with SMTP id 41be03b00d2f7-b350d850677so4536159a12.2
        for <devicetree@vger.kernel.org>; Wed, 16 Jul 2025 02:09:25 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1752656964; x=1753261764;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=F9sBDUWVBLweXSo5nrw26qvUJlKDueBdo3VuMvvD44M=;
        b=JyllZH+uNwksflmN/BjsuKWwGKG+m/T8E5mSOFOsYCGDJVMVritd4oLMTeI5ROlxuY
         rmLAIDG4UXick+zjivvH0e60MrOQQ85/MR7H/sSsW5kGjuXMGCk/YW+KrFcOuzTsBNyE
         totBAVMr09QLdk3cYQL0Vn9a63armBCw8Nz4l3bkoKTykdqCRfYdTq1FrGE1SNqUdjHE
         SBxoWtXOUKU/jTjA71KEWcfDIpA5KgN6B0+OdMOvH1lQHjFL1ebjRICgt6cNMJzqi0az
         Mx80yX6kxFdy0GcmZ17pZ4K5CVSurEtXwFXtS3x3zfqfLJ/Ap/bXKtpgL4ff2tpnw4Pn
         1cXQ==
X-Forwarded-Encrypted: i=1; AJvYcCVsQIfbHEN+r4pHalcurs7IkvgU9z0XECGtJuMuS/DKBC7fWnseIOZrEB4eGFxLkI1j0E/+4DdOoaPa@vger.kernel.org
X-Gm-Message-State: AOJu0YwG1zaSrH78I2Q+RCvC74fK2cV7hNdwobgjcXfmP8piC0IJ4jMl
	aHmNvRxDxwpo1mrxDaIAVszvlSVkjJ+bn9fc/rJvBiMSeAMQtrwyfeycv5fm5aJI9W9D5EC8xsd
	10xZjxkGjvAu9trSPk8LVD4cvM+BoYTgcF6XRX4hgI1plqSGmYHVhs5DBb6X/JdVu
X-Gm-Gg: ASbGnct2BFYJPlB+AaO0+yW09dSef5U984hXAgcv8Po8nSBL89jokKsSV/bwd+blv1r
	EVZaMoxQM2syfqWHHXAqLTKRf6S809lL6oEx+I1HpvyX5KEF4/+TNzM8w1ctgXFfirsYuuKTzcZ
	8AscJLJER5MMSb5KvQ7816mFQMiPjlAQFq9xJWxiXbQwTR1Zh/XqFgLuwnKys6qSftoPpkDGLhj
	/mfPkh+ya4jut/R1ZRwupZgvyJg1MhVjX51I9xB3t/WTZ5g1k+UTfpTc/ddhW/cH1Eds8J/cBKF
	zPPo9mobxlOXK2BTe1bo7yKIk8qhgIKRjLIa0/EMwpet5aU0m2j2+pXdwIg0/L0TWu0Mo2/tH7O
	gjG+jNqPR0SJ0WR0YdcpcxBW6dyR71f3FvA==
X-Received: by 2002:a05:6a21:3299:b0:222:c8c4:efae with SMTP id adf61e73a8af0-237d702180amr4519942637.27.1752656964306;
        Wed, 16 Jul 2025 02:09:24 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IF7t6+L98+hLfQDY+8IWtibwBKpLYwiTzbTLrDEk0AhFbJAbikqrvlc+LNPuZ89eLrBW2tn0A==
X-Received: by 2002:a05:6a21:3299:b0:222:c8c4:efae with SMTP id adf61e73a8af0-237d702180amr4519906637.27.1752656963914;
        Wed, 16 Jul 2025 02:09:23 -0700 (PDT)
Received: from yijiyang-gv.ap.qualcomm.com (tpe-colo-wan-fw-bordernet.qualcomm.com. [103.229.16.4])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-74eb9dd6022sm13926375b3a.8.2025.07.16.02.09.21
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 16 Jul 2025 02:09:23 -0700 (PDT)
From: Yijie Yang <yijie.yang@oss.qualcomm.com>
Date: Wed, 16 Jul 2025 17:08:40 +0800
Subject: [PATCH 2/4] firmware: qcom: scm: Allow QSEECOM on HAMOA-IOT-EVK
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20250716-hamoa_initial-v1-2-f6f5d0f9a163@oss.qualcomm.com>
References: <20250716-hamoa_initial-v1-0-f6f5d0f9a163@oss.qualcomm.com>
In-Reply-To: <20250716-hamoa_initial-v1-0-f6f5d0f9a163@oss.qualcomm.com>
To: Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>
Cc: Yijie Yang <yijie.yang@oss.qualcomm.com>, linux-arm-msm@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=ed25519-sha256; t=1752656953; l=902;
 i=yijie.yang@oss.qualcomm.com; s=20240408; h=from:subject:message-id;
 bh=meDbdQ8jfv6MzJ5QqjKeDn98P5b+BWThT05OUsC+Mpo=;
 b=mmItxzJfygAR0embjO+9OO2+VLpXVON1rV/DlAQgefJHWCDXgXIQNH5sEzYDVTkN674lVm2mD
 3GDRARPv0NoAdfsS1/zT8Bc/Ef0asCSdcRTgMorpfRlqAoxwaFKCOQv
X-Developer-Key: i=yijie.yang@oss.qualcomm.com; a=ed25519;
 pk=XvMv0rxjrXLYFdBXoFjTdOdAwDT5SPbQ5uAKGESDihk=
X-Proofpoint-ORIG-GUID: I21QUFZKE8-_QO5nTgQpPTlS-LBQPiLx
X-Authority-Analysis: v=2.4 cv=D4xHKuRj c=1 sm=1 tr=0 ts=68776c45 cx=c_pps
 a=oF/VQ+ItUULfLr/lQ2/icg==:117 a=nuhDOHQX5FNHPW3J6Bj6AA==:17
 a=IkcTkHD0fZMA:10 a=Wb1JkmetP80A:10 a=EUspDBNiAAAA:8 a=h7II6S6JRGbW-U2bcKQA:9
 a=QEXdDO2ut3YA:10 a=zZCYzV9kfG8A:10 a=3WC7DwWrALyhR5TkjVHa:22
X-Proofpoint-GUID: I21QUFZKE8-_QO5nTgQpPTlS-LBQPiLx
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwNzE2MDA4MSBTYWx0ZWRfX7/roXEFoAhku
 +xOR9rpiiX/TT4ldAxj6ewIHlS3wmSiW4MR+qL5B+RwajaBna/2ZldSZn+fOdMj51mJH43FWr/k
 IeXALI2cVAHmX5H0JLaUS+UL5RXCkPElXcmPF+zBfQGsQpOaSAZqECiVeeFor/SwINEnFqeoVcc
 +GRbCQbEX640oo/zmJiUuXNmeFMJQgRTdXmzkC7drHMpsNru5sP/ppzspviz+9BsofEsrBivNrO
 jNbyrrLGCSbokUok3nAyOZfOX6K3n+Bk4fdgZgPvTHldApudVRheCRrz6vjsiftZbHgL3cEPdSl
 4JSjBp8BUp5YVUmfSVAJVmD8zsmKs7jfucZcRltMaUnGvJ4UuleaMSMTXUV6KZzKnNfRLL6unAY
 gnGn+bE/TWdjNdbm2aI5DnsueduqkB0dSW53PuUI4vPpAdaiE4R1fgHL/T5sKgjjzBbTHE+y
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-07-16_01,2025-07-15_02,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 adultscore=0 mlxlogscore=999 impostorscore=0 spamscore=0 clxscore=1015
 lowpriorityscore=0 malwarescore=0 suspectscore=0 bulkscore=0 mlxscore=0
 priorityscore=1501 phishscore=0 classifier=spam authscore=0 authtc=n/a
 authcc= route=outbound adjust=0 reason=mlx scancount=1
 engine=8.19.0-2505280000 definitions=main-2507160081

Add the Hamoa-IoT-EVK board to the list to enable access to EFI variables.

Signed-off-by: Yijie Yang <yijie.yang@oss.qualcomm.com>
---
 drivers/firmware/qcom/qcom_scm.c | 1 +
 1 file changed, 1 insertion(+)

diff --git a/drivers/firmware/qcom/qcom_scm.c b/drivers/firmware/qcom/qcom_scm.c
index f63b716be5b027550ae3a987e784f0814ea6d678..0473f563700db72333495dabeec59cc482b717f6 100644
--- a/drivers/firmware/qcom/qcom_scm.c
+++ b/drivers/firmware/qcom/qcom_scm.c
@@ -2000,6 +2000,7 @@ static const struct of_device_id qcom_scm_qseecom_allowlist[] __maybe_unused = {
 	{ .compatible = "microsoft,blackrock" },
 	{ .compatible = "microsoft,romulus13", },
 	{ .compatible = "microsoft,romulus15", },
+	{ .compatible = "qcom,hamoa-iot-evk" },
 	{ .compatible = "qcom,sc8180x-primus" },
 	{ .compatible = "qcom,x1e001de-devkit" },
 	{ .compatible = "qcom,x1e80100-crd" },

-- 
2.34.1


