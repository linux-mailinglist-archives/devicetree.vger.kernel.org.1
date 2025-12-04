Return-Path: <devicetree+bounces-244232-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 4EDFACA2998
	for <lists+devicetree@lfdr.de>; Thu, 04 Dec 2025 08:11:18 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id D45AD301FC32
	for <lists+devicetree@lfdr.de>; Thu,  4 Dec 2025 07:11:16 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 1F054217F27;
	Thu,  4 Dec 2025 07:11:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="KyfQzwWJ";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="Y9XlXtPD"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 69ACD28373
	for <devicetree@vger.kernel.org>; Thu,  4 Dec 2025 07:11:14 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764832276; cv=none; b=KHx3CzkXe7dJLpDsZVTWzmOCAN97LWYykbn100lMGl8xnuPLKpX9QSwPRrhn9FJf6Yt8XYX8HRFBtxbNaDrHIvIs435og3sQz97gxHdfiqQdH97qzq6aHj+4/8+FgAtA98J5Yef/QmCzsMWxWzjA/OTsvoRn/Ty5o+jHfGfuu6k=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764832276; c=relaxed/simple;
	bh=9AtL34vmVVXfglZXMU+/c1p+y/ew1mv/Jhiha+E4LDo=;
	h=From:To:Cc:Subject:Date:Message-Id:MIME-Version; b=UkBBw5BNElQBKkOm23wMJvQ+v56u7rA67xVQqF3cCzdaS6RAVB8SxakPLC+OwgecCVgkaoGil7/WlPfTWJROU9udaCZSwBydayxdaiv+Z6Dt1aJLqnbQkyHO8wygNm6Ua1U0bC15YIwHHPibBjIrBVlNQZxs20QMSC9xUgJj8sE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=KyfQzwWJ; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=Y9XlXtPD; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279868.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 5B476YWl516631
	for <devicetree@vger.kernel.org>; Thu, 4 Dec 2025 07:11:13 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:date:from:message-id:mime-version
	:subject:to; s=qcppdkim1; bh=tAWzwoNFynjs6ZIdeP4ZGqOd+Qw3eBHDumm
	p8mDvPSM=; b=KyfQzwWJBLmJJgao2qY7plPo+h2ycK7OnV155g2PnTkApuXDX4x
	Rv0UMShGizTMtOUvassqX/s/6XPOrUw1l3I2wB0KgxLqS+0MAIO6JAFrtAnZet87
	wyHM64om+ji12MWLo0q0iY++GVvtt6nYBzO97CUMgKwkvcKwQMW+nurG+HDF/Uyb
	ik0TR83o1bnMih4kYKT0y+6DD6FgB8SUJNw/64V8ssjsoJkk7PK0zZpBywc5QefO
	gir1AqZFVM+maYeeZ+h07ECVI+V+DR3ShUfsN0jz8rJw7TOkzIDEIz3yO7QDMW7t
	T2nkZs8baVJBJJ/HvyorVKDSXDAzKCH2fAw==
Received: from mail-pg1-f197.google.com (mail-pg1-f197.google.com [209.85.215.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4au5m300d8-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Thu, 04 Dec 2025 07:11:13 +0000 (GMT)
Received: by mail-pg1-f197.google.com with SMTP id 41be03b00d2f7-bc240cdb249so646808a12.3
        for <devicetree@vger.kernel.org>; Wed, 03 Dec 2025 23:11:13 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1764832272; x=1765437072; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=tAWzwoNFynjs6ZIdeP4ZGqOd+Qw3eBHDummp8mDvPSM=;
        b=Y9XlXtPDq+MlDZ+TLGJ7yahP55TOAmMQkiWJXnhdbyVmTaBvHTGq2nIXtj2RmyV9dc
         AtGgntM7hnz57qMAq+CWEK9g4YvOQQ0cW3sp3x1YcttdM8YXaRiC1O++/m6WnNDkA1Bq
         OrOopL5ylJopLHSsk+NsDt1Sv9U0Dlk8j2uP8X1a40BiIdzJGhlHXkucJEyj8U5FDsuo
         G6SIaL9rLGo1tRvuYLnwJgEcJZQQXao6/mdUhFWpFx5RdSwh0A7F6Bs5WahgLpizHawv
         y4gqzAZgLjcKhB5sssaE899/uhE2nWph5d78D+L99SqBU+0y/kt6zMgtBxFLaJqMHioh
         I3rA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1764832272; x=1765437072;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=tAWzwoNFynjs6ZIdeP4ZGqOd+Qw3eBHDummp8mDvPSM=;
        b=sxCT5w9RJTldyjKzPBz6mbtKFRfwlP1kL5CaTehCugFf0Jyc+XkUWRBJfxKth8EUKr
         BUZzfmwq6niKvGEFGBd4U1L27wYVKRD2qj0eKCcpJmkdhnYpvgCfWqRD+6hkhYh0ECaa
         B9fy4RurHB1Je8wZ1YWGskYz8GEr53Z4tFhOQfIqyOVBeVbJmd7Hr8DUYaZnbDAdSFSj
         hc8grpcM3sl5GG2vq3GlR8ULGbmoXLamWVFtX5bpQtmA1OSV8sqKhgDr/+xBDGZeziKi
         w99OpWVKMgwEW6/Fcce4Eu178El0AyphPqNBySBcFYhYRD24JzltCkOG5oPTh1gsgU4N
         R3HA==
X-Forwarded-Encrypted: i=1; AJvYcCWbzWIa68CoQqtA/dNFvuN0jSvCXoRkTcS57HE7UXuvqa6hTvkvwTkXCD8aKm4d7oB3pskpujF+sJ+b@vger.kernel.org
X-Gm-Message-State: AOJu0Yzs+RECXDFGgUwojQxH8gxCBBtdcqf4/tAp6/YJAYaWIbwBzWpK
	NfKSlw3N15vICyktlFCRYMki0i9AbrGQhKazx/EVYlWeeRzx/DCMmL79ngGDY/3frKZ6e4NJFiA
	JOEYm2Vhj5v995FMIcR1Q2dY5qX+dqI7/pJgHoEvV9goSCgJKFrsw+LiIGkFtIrcn
X-Gm-Gg: ASbGncvxWrz/2QzUggFOlKhuyl5n0g3STJQFoCmEQLxKw9OHmpmg5c5RvBgM6l/Kacx
	SW8/t9jrmgl5uK3OjtgZH9a0iFXjaoPGdcG/M+/YZ+cYQQOy4yYT0lRJSrdA+WsEd5yv8bwwRvE
	uJ83pPocEzMdZmRL/UTaHgQ0rkQcoOXJTfESmnRHWTrWeFc2bm8GNdVpJW2KDNoMUVoj6uB2M9J
	lpnIOBXPTQ5OiL2HUS7Bns+xLr1dOG7pj+w2qtscpaWo0pxvMpXBcQOGRLStJJNiP7s3WlBQozS
	39fJuAJgx3zhPtChB6p9xgG7Il3LjUClZqrKhkDyzeS7EkmZv0IUbPTOscJQkcEQw5RYahR9u1j
	xuYyt1RBl5XipzdWue+7mhAzjuwgJARERQGMcF+BmRCO/U392IIt007GQAw5YEL5ZEo4r
X-Received: by 2002:a05:6a20:7fa4:b0:352:3695:fa64 with SMTP id adf61e73a8af0-36403850666mr2689735637.37.1764832272310;
        Wed, 03 Dec 2025 23:11:12 -0800 (PST)
X-Google-Smtp-Source: AGHT+IFcoa4Jtg3mddnN5jfDiKJ9CJcD4fXyOQnrRyi7YanaIakW991CCSZnTycONaT4fOv7BPJumA==
X-Received: by 2002:a05:6a20:7fa4:b0:352:3695:fa64 with SMTP id adf61e73a8af0-36403850666mr2689696637.37.1764832271748;
        Wed, 03 Dec 2025 23:11:11 -0800 (PST)
Received: from Z2-SFF-G9-MQ.ap.qualcomm.com (i-global052.qualcomm.com. [199.106.103.52])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-7e29f2ed331sm1117470b3a.4.2025.12.03.23.11.08
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 03 Dec 2025 23:11:11 -0800 (PST)
From: Miaoqing Pan <miaoqing.pan@oss.qualcomm.com>
To: jjohnson@kernel.org, johannes@sipsolutions.net, robh@kernel.org,
        krzk+dt@kernel.org, conor+dt@kernel.org
Cc: ath11k@lists.infradead.org, linux-wireless@vger.kernel.org,
        linux-kernel@vger.kernel.org, devicetree@vger.kernel.org,
        Miaoqing Pan <miaoqing.pan@oss.qualcomm.com>
Subject: [PATCH ath-current 0/2] wifi: ath11k: add usecase firmware handling based on device compatible
Date: Thu,  4 Dec 2025 15:10:58 +0800
Message-Id: <20251204071100.970518-1-miaoqing.pan@oss.qualcomm.com>
X-Mailer: git-send-email 2.34.1
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Proofpoint-GUID: W96ujAZH81r5TU26rX38MEtTCj-DsodH
X-Proofpoint-ORIG-GUID: W96ujAZH81r5TU26rX38MEtTCj-DsodH
X-Authority-Analysis: v=2.4 cv=esHSD4pX c=1 sm=1 tr=0 ts=69313411 cx=c_pps
 a=rz3CxIlbcmazkYymdCej/Q==:117 a=b9+bayejhc3NMeqCNyeLQQ==:17
 a=wP3pNCr1ah4A:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=P9V9TY2Fav2aVMZ0As8A:9 a=bFCP_H2QrGi7Okbo017w:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMjA0MDA1NyBTYWx0ZWRfX4aOfiskvWa0i
 a5IuWdS+hlWN2EIUVHzyIRpO1sODGSMzDsYkTvutQ+DagQ+Umumfm5m2/60qWaJHkkRLOF34+t7
 rd2+a8aQ94M/uVR551GcBttZR1YR5KGjjxuKTRnhEaUUjINuNI9XoYTGI/iHqu3ZGGhF/kpO0Ow
 HreQRJ3Jfi/ok2bClce57P7jRlxffvwXTUkquWytDKIeH+O2Y/9xBCcKxs/QvmbPYEouvBQD9eA
 c5cN8UfUDmbyyUK7yADQDv7PLarONJgCeBwxDLGqsY/NK5mCds1EFlATaGSj5k9lwfuY5+UNx1y
 1tjF+cK0hs4bktsmguuWDR+BfEVlO2UBxma/z8soreskgbO2+3S1P2hJrh4sn04z+S/XHMUKo6T
 yrZx0cZhB8kRrrN8ylYav+JZw8EP4Q==
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2025-12-04_02,2025-12-03_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 bulkscore=0 clxscore=1011 adultscore=0 malwarescore=0 suspectscore=0
 phishscore=0 lowpriorityscore=0 priorityscore=1501 impostorscore=0
 spamscore=0 classifier=typeunknown authscore=0 authtc= authcc= route=outbound
 adjust=0 reason=mlx scancount=1 engine=8.22.0-2510240001
 definitions=main-2512040057

The 'firmware-name' property was introduced to allow end-users and
integrators to select use-case-specific firmware for the WCN6855.
But for M.2 WLAN chips, there is no suitable DTS node to specify
the 'firmware-name' property. In addition, assigning firmware for
the M.2 PCIe interface causes chips that do not use use-case-specific
firmware to fail. Therefore, abandoning the approach of specifying
firmware in DTS. As an alternative, propose a static lookup table
mapping device compatible to firmware names.

Miaoqing Pan (2):
  wifi: ath11k: add usecase firmware handling based on device compatible
  dt-bindings: net: wireless: ath11k-pci: deprecate 'firmware-name'
    property

 .../net/wireless/qcom,ath11k-pci.yaml         |  1 +
 drivers/net/wireless/ath/ath11k/core.c        | 37 ++++++++++++++++++-
 drivers/net/wireless/ath/ath11k/core.h        |  7 ++--
 3 files changed, 40 insertions(+), 5 deletions(-)


base-commit: d0309c054362a235077327b46f727bc48878a3bc
-- 
2.34.1


