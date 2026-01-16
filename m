Return-Path: <devicetree+bounces-256276-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 9DE78D388C0
	for <lists+devicetree@lfdr.de>; Fri, 16 Jan 2026 22:44:06 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 2A5CD300BBA6
	for <lists+devicetree@lfdr.de>; Fri, 16 Jan 2026 21:44:05 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id F41443043C8;
	Fri, 16 Jan 2026 21:44:03 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="aNoEiUGK";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="iSJGTsTR"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A12562D594B
	for <devicetree@vger.kernel.org>; Fri, 16 Jan 2026 21:44:02 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768599843; cv=none; b=T4GXoNFhKU+CxNB6+Th/4VcbDfcdEnNU3ZA4XsWpKpLElINUnmkvzu8bKvuMq67Lx7TIqLFQgFHBIe2MuUz05cak7dOIwkg8qZENrWOHXjBCGg1jzvHhruHoLxoSerIZ9QUgeA5+QH8feeo8tcqq3yLmusKcq5HAeZhgo9tnfvc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768599843; c=relaxed/simple;
	bh=HDjGJMT34IohiRCOOuNgq6gxCU8IB2yHdxCtwJ57gck=;
	h=From:To:Cc:Subject:Date:Message-Id:MIME-Version; b=sBF07uM5woAiKc13nwzCJvc3kDeLbYZo9oPz4LMZgkK9wc2EFMw0o7oX9S72YIAvoxtfZeGONGQU8DNWsTFKiAmWXi5Ryfm+ng0AyxyQra3mnele9iHgsDcpPGhhrlv2WhbHR3LjtzHAtuTeGki3UaO9zlAe3Mfh2ROYQy4P+FI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=aNoEiUGK; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=iSJGTsTR; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279870.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 60GKbfJf2641743
	for <devicetree@vger.kernel.org>; Fri, 16 Jan 2026 21:44:01 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:date:from:message-id:mime-version
	:subject:to; s=qcppdkim1; bh=VNoqiC//E85gHZtN2/oFbwvGsCoNOSLzjOl
	BzIhcmU4=; b=aNoEiUGK5sYMoy69uDFzGY4xwBr7FktKF5vnssjRVUUxawZAi0G
	IU6YE1stjPXWRizlbo6KF+3zXutrlxkODRYl38/8cEVThb4YDMFHCoOUmJklGt7S
	HcCv9AvY/AFcU7QcihOHqkWbrxHk/fvxDfZ9zDXu+ovO1T1alGAB3ZjsPALvlUzb
	i0ok7wVgPIXkduQmsQKIGkyTg9RT6fe9+eZ/D31zo99EJiTAIQ1HOzk29e7dH1am
	aHAtLDfhluoZgOb+8qpXVZqaGAPqx2c2tumqeKzdpUTrXd5B1UENks0K+5PxbpiT
	E4gq4HYAcUCn955SGHJGFzGwK1N1IFBbI0A==
Received: from mail-qk1-f200.google.com (mail-qk1-f200.google.com [209.85.222.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4bqvhh84fa-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Fri, 16 Jan 2026 21:44:01 +0000 (GMT)
Received: by mail-qk1-f200.google.com with SMTP id af79cd13be357-8c6a241b5cdso323377785a.1
        for <devicetree@vger.kernel.org>; Fri, 16 Jan 2026 13:44:01 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1768599841; x=1769204641; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=VNoqiC//E85gHZtN2/oFbwvGsCoNOSLzjOlBzIhcmU4=;
        b=iSJGTsTRu0IdZZVe32WZfYZ1kgYesZHdmWYVs2yufbejMNUgT4F+hqu+PDbDy5yctI
         o93mauWqyS4L/ZEg1Sza/XxCRmLkYU4JGUdUbEb2NpEal2rdstZ+LQG/R22Tmki2bpWn
         3Zjg6rrMyEv1Zq33/mutahnet8dVMGi/jtnyU+bLRQL0ahqfQJFEXwYvPIBOBnRFpytl
         zQGgsSVpjl/rX+NpfaTrU2cueIZN+lyFHGHMT9D6U5pVT3ebvhxN7GQ57+s8HDY3CJuI
         GRCef8uSjaclHNVZZqWwLzSL2R5H4I6ZSbE9LOuxXlOUZHuFDNNgdvh47Ne2yM8a+bML
         rYlQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1768599841; x=1769204641;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=VNoqiC//E85gHZtN2/oFbwvGsCoNOSLzjOlBzIhcmU4=;
        b=U5t9EcSys/mT0vF9z0N7j7ejt+tPrR/dK5YCMv5i4Lc9FAK1Vl+S+W9HE9quho+CVz
         8cCUcGnBziH+BeQryozjLrUVOLnFEpJZxPy4B6zg0M9PoTQwcMxoJ0cEnRyi867gc7wv
         PsGYxSOJhEoFaKTIl9/LK+VNvN/1ZG+9yt21W+iMlGTVFFRKpMq2/HkFuTyYkCc0q8O7
         QbCeoo+VkU/lhm07IMUegdnQas2iA6z7yqhsfGP/UUB++yZjwL1LxsJQVg0QtLnWfFQr
         MeifvjvUKxNnr4meXclmUi7OmQhPqr49+R8j92NWLAcsbkOmsRhtJsxMn3si3Q2q5H+P
         yCIQ==
X-Forwarded-Encrypted: i=1; AJvYcCU1T/PbQU57dPTj0EeGAzgCK1P1IFYR+80ABLJTB5wmcKHQVf3+jj2gVdYzqYwMfBGGdSbk6e7XNnZw@vger.kernel.org
X-Gm-Message-State: AOJu0YwzkSN/QIDf6iPGYh6ltJmDCsPyHbzzFv44lPtMGn0G6f00rpwm
	tFGPb8ftZLwriu5bhDKALNj2KB9pq1MNzyCLBVX5DCdQx0UkHVz3HPIMY5G3fdLgeRdZw3WZAWJ
	fK/aCi/rf0HBglztzKnqlFIq/FJKczOqpWhIzqL6GcfGvYVyqr9uIi6EghEZC9PxmcdAVhqlTdq
	g=
X-Gm-Gg: AY/fxX536wzo5HXEln7cfPqyp4TFr5zx6d2VgSZ0zP41rdyejH80oBNlnk84cTU1dDv
	sKJ5VreBS3Cw8mAfLolszv+kpComzEPhmBhZSSCixVqSt7F24k3r7Tt1zNUT4WI3sG9P0S3+2oq
	QZHrpwasep+11m6DanjvBL246XK7jCzWoWSStij4mj/KwI/xbRxo3FgQcWO0gOX18IqNygQUopL
	vZ25Hpfm3TFvwVrE2BNKUmRFGJUOwwSwE3ZzV00itXAkJhNgxbYpLdnvGH1bH/EyYXm6UPQKdXo
	9aMm4LTsrRvjwVIkgDDcorYP456n4ZtIGS9l16ivndGSUTBCCILFDpFxYmNvFoCvbetOzySwcE7
	YHIH7B5n4H3/SFyY7kxkH1ARewp+GVUJKwA7x/zI2hvBsMuE7Y7h36PTC5FC29QCAGRLe4GdFqa
	VZ
X-Received: by 2002:a05:620a:3942:b0:8b2:f9ac:a88b with SMTP id af79cd13be357-8c6a66e453amr599875485a.21.1768599840799;
        Fri, 16 Jan 2026 13:44:00 -0800 (PST)
X-Received: by 2002:a05:620a:3942:b0:8b2:f9ac:a88b with SMTP id af79cd13be357-8c6a66e453amr599874185a.21.1768599840422;
        Fri, 16 Jan 2026 13:44:00 -0800 (PST)
Received: from QCOM-eG0v1AUPpu.qualcomm.com ([2a01:e0a:82c:5f0:910f:b77e:d7fd:93ac])
        by smtp.gmail.com with ESMTPSA id 4fb4d7f45d1cf-65452bce433sm3479743a12.3.2026.01.16.13.43.58
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 16 Jan 2026 13:43:59 -0800 (PST)
From: Loic Poulain <loic.poulain@oss.qualcomm.com>
To: andersson@kernel.org, konradybcio@kernel.org
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        dmitry.baryshkov@oss.qualcomm.com,
        srinivas.kandagatla@oss.qualcomm.com,
        Loic Poulain <loic.poulain@oss.qualcomm.com>
Subject: [PATCH 0/2] arm64: dts: qcom: monaco-evk: Enable onboard eMMC
Date: Fri, 16 Jan 2026 22:43:52 +0100
Message-Id: <20260116214354.256878-1-loic.poulain@oss.qualcomm.com>
X-Mailer: git-send-email 2.34.1
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Proofpoint-GUID: 2PEtXl0V8_7o5_u8-twFz46jw9PYec8-
X-Proofpoint-ORIG-GUID: 2PEtXl0V8_7o5_u8-twFz46jw9PYec8-
X-Authority-Analysis: v=2.4 cv=foDRpV4f c=1 sm=1 tr=0 ts=696ab121 cx=c_pps
 a=hnmNkyzTK/kJ09Xio7VxxA==:117 a=xqWC_Br6kY4A:10 a=vUbySO9Y5rIA:10
 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22 a=ib6eIcfWTTzlqJScnlkA:9
 a=PEH46H7Ffwr30OY-TuGO:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMTE2MDE2MiBTYWx0ZWRfXxtPXLyDTvBo8
 2Ge7lScomIGpZtFjM73PNb7R1TW7ctRMaLYXj3vgptDn29pM7FqgEbM1+OWcNd8q1fqsNg7fONi
 l1dF/+42Ps2AEz12Epxo0pQhhcjbFdDQC9q+SxpPMoctc/AIWvZWwkkCSPtuuKrQkiBQjlOABeC
 t7MYfU6v4HsdHW5nLxlysyqVucadwCGllVWpNw3OfCYc6dyaK751o5oBRbnHr708+zTyBoKfDcY
 8bGGBamLVvQEtLYjZP8WccpaH069LaTy/CHNSlavXi10UzYPybi8duuJzdcsQ6q2KFVjQNWQDka
 ncWeN/enrw/NXQj+HwC3HqJo7mlpFWk1Dlg+lPgKLJwJPOcpaaW2AeKQuubRrGSev18OxD1q8No
 ju3bjokxtNoBZg3RM3jdFDgt/zNT5g4p2Yu0X3VWGWswj0vvtWf+DZdK/k/62Gh8x8whh+3jxZ7
 DQIjMxP3pLL6Urctd8A==
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2026-01-16_08,2026-01-15_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 malwarescore=0 suspectscore=0 spamscore=0 phishscore=0 lowpriorityscore=0
 impostorscore=0 priorityscore=1501 adultscore=0 bulkscore=0 clxscore=1015
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2601150000 definitions=main-2601160162

Complete the SDHC1 definition for the Qualcomm to support HS200,
HS400 and 8-bit mode.

Enables the SDHC1 node on the Monaco EVK, wiring up the regulators
and marking the device as non-removable eMMC, which is the default
EVK configuration (alternate config is SDCARD).

Loic Poulain (2):
  arm64: dts: qcom: monaco: Complete SDHC definition
  arm64: dts: qcom: monaco-evk: Enable SDHC1 for eMMC

 arch/arm64/boot/dts/qcom/monaco-evk.dts | 20 ++++++++++++++++++++
 arch/arm64/boot/dts/qcom/monaco.dtsi    | 10 ++++++++++
 2 files changed, 30 insertions(+)

-- 
2.34.1


