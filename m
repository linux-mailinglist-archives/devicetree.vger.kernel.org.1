Return-Path: <devicetree+bounces-238765-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from dfw.mirrors.kernel.org (dfw.mirrors.kernel.org [IPv6:2605:f480:58:1:0:1994:3:14])
	by mail.lfdr.de (Postfix) with ESMTPS id 4DBE6C5DD5D
	for <lists+devicetree@lfdr.de>; Fri, 14 Nov 2025 16:24:59 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.mirrors.kernel.org (Postfix) with ESMTPS id 9EC83504574
	for <lists+devicetree@lfdr.de>; Fri, 14 Nov 2025 15:06:50 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 71A5332ED3F;
	Fri, 14 Nov 2025 14:57:15 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="OMwRLDMP";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="jxtmoL1Y"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 56DEF32ED4A
	for <devicetree@vger.kernel.org>; Fri, 14 Nov 2025 14:57:13 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763132235; cv=none; b=dgCbvG5smLp+jETiE+RavWzS7I+KplJwxZKkv1PwFERbvIe/xHgtXEie5aVnZBzMAwaDiVaIH2VGguI1Xdzr8DADU+1P49bg3FcZtA+8z9uDPycYG9s08EPxNTTbxE1cwOkXxWvyd4/QzpL7PBihe6ZRsutbH/2+G5e7q7y0bLc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763132235; c=relaxed/simple;
	bh=DK2KNKElJtgWNkv+V00lbBy+4mPkGdUnRSI9negzd8I=;
	h=From:To:Cc:Subject:Date:Message-Id:MIME-Version:Content-Type; b=bD8E/Yb0NojRpNYuYoQxFgdjOKW9I7dhSKIxGMUctVrUMupYOhgEScnnqlb6sIpsQPZQ/5BlT1Q4Kl3Bh/fihKjhzq2fjn+lQheqV6j2nlMrSfU+D0oduJFKzpOVSTSGx47Xg8GnJ2hrb8KCSgOaMODhodnUwjEG6mehWXGOCsQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=OMwRLDMP; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=jxtmoL1Y; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279869.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 5AEDu27i4123672
	for <devicetree@vger.kernel.org>; Fri, 14 Nov 2025 14:57:12 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:message-id
	:mime-version:subject:to; s=qcppdkim1; bh=jO9x66z+M6x/MShGW+Aslg
	4YLDu++rhFMX3yNdkQ5+Q=; b=OMwRLDMP3rrkhmETrB5os21Fxfpl9ykAbKmHTH
	kB8IZJVqTvlmc5pRPjohDmXST9yASilEWxT/mRJpNyFbCkkHhTQOAFvjvv831Z5f
	sKHT0u8KE34HuuLOOfQ8jej4ut/XmQPwzlqedZFpcLT0Gtu9U62vPq/Peyyp/hMa
	kyVRBfW3qvUI4B3ijbs4tJ3v0Gfa4eLvPNKOs51Wd3ypWbTOCHJZ9wOWWAHhnquE
	FQI/nHGFdGnVzGt0944Yyco2mGLd0qCMaHWZowZ3X57Alszg3iS5ra7x8xPOyeMf
	GAnqJf2a1hIj4GtYkYdrUJq673UVEurqgQNOpCoTj9lTYiqA==
Received: from mail-pl1-f197.google.com (mail-pl1-f197.google.com [209.85.214.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4ae5r7r5pn-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Fri, 14 Nov 2025 14:57:12 +0000 (GMT)
Received: by mail-pl1-f197.google.com with SMTP id d9443c01a7336-2982dec5ccbso49212405ad.3
        for <devicetree@vger.kernel.org>; Fri, 14 Nov 2025 06:57:11 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1763132231; x=1763737031; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=jO9x66z+M6x/MShGW+Aslg4YLDu++rhFMX3yNdkQ5+Q=;
        b=jxtmoL1Yhyo7Gq99TvVJQI/QvQluFcPtDDMYF7ytzNq2ty+3IRDTx1jCxf6bUZd9B6
         2NTJT4ePqgYADoR58lpRziSEQzgaQ86uAAzvk1OunSEOem88jnqp3StqRpVR4i2FABzZ
         i0g6W4R6iYyYl+V87P2TcgfnhJWsoXSX/BVGdmKamDLtNSFqBIbFaOr1xGALSLLpXkr8
         zcnjUTZnn2x755R9gsYukbNO0+L72tyb2ODqniqGdCY3FDBtz6/BqyrTbkVW3Eq331Ey
         0Ea7wpy66D8/I2ycIF9HWVDurS5Wk2DHrn+GzpNGarIzoRvarm7UxccYddEGm20vci/p
         vMaw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1763132231; x=1763737031;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=jO9x66z+M6x/MShGW+Aslg4YLDu++rhFMX3yNdkQ5+Q=;
        b=cMDlSi5jO5wvrSGduK36jMDeCfhV7jvjH9aETEOD86GqOiGIRiQYxTEJZpkNegjHit
         4gxLhwOfXdV7RzHgpAvaPwJ40+R4wJ6owo7wU85am3mENwaP2C3eCX62qVEKTiLgUcxb
         v/FWM4UJ+Gu9frb6ASqgYDel0egvVxWMx8S2QUkit7D9MUvD7CzDWR/W2HQ8Kqt1BIMD
         xlEp/aP8+LYjAIyyrUIu6kQJoA060A56FddC2Xa6YMeeJlkUf2DDI9VyWPFj2zmpcU4b
         itmoyKTxzYyoRY8PVyn7VRvt15Rg304UW78KebdUvyNk/XnMhFZsdiXJuVCFq4C/exBB
         F3qw==
X-Forwarded-Encrypted: i=1; AJvYcCVON/Mc4bOENBh182hXm7lfG9lLiAWNmL1AfPM5EYSL83UChkyanMugZlqKqe7YXfGrdGkaTNvoo9h9@vger.kernel.org
X-Gm-Message-State: AOJu0Yw7WD1fnb3Vg8ScQyajK3SfJSsGMA5Hgd8O25KP3j6kEnj63Bbq
	LQ++2+cexiEmqHRuErMU33grPt671Gc/kLi2PM0G+/ioxp27aDigr+gm9/ZbQMz7yJdsnR2JVWd
	nBclrfJZ96LTPtC7yyEGxesWpyg5sjq0u7JjbgJRxfcRAT0lvyVx6s96JPBWFPZaQ
X-Gm-Gg: ASbGncsQYQtjnToXi20sO6W68WCHQ3U9q7iNq93osMwinHz1yiipfwVf8XtLk+1fs8A
	JzRLVnY1kzFHSk7bfKjF4bo6IEJzIRFue9lPePTv+frJ5yH15iBpZFhBj/SfJZ6GauROeZWddVS
	rgC6vXfMda0ZYwjTkcSKKDLZwqCs4+LTJlMy32XG3n7LhMVDjJQunG9ZRSBoPcrZSrEXYNp4yII
	9JanG15pFezphD7V2iEYs9oiiDl528+OQNQSYxphI+1nQ6BKxq01z7ZdrNeVCI6M/x4cSIx/ZZ7
	zoyihUdUxIQ9qjVdHnWwkT7/3Q5oVJT2fHhXDQtYeTq/ub0l4iZPq9yY16ZTBcKB3Vfj0nd0+/j
	A9NUE7W3Ma+AjS6yQ9x5q/7wDrLQSvg==
X-Received: by 2002:a17:902:f70c:b0:295:62d:5004 with SMTP id d9443c01a7336-2986a6f0a62mr37095075ad.26.1763132231135;
        Fri, 14 Nov 2025 06:57:11 -0800 (PST)
X-Google-Smtp-Source: AGHT+IGnyAp/6Rs5PB2LjIfPs2DEcOnotLNDA0gaNjPanANFzVQbeTzrgB13YQ3OWtrz95qXQoFPoA==
X-Received: by 2002:a17:902:f70c:b0:295:62d:5004 with SMTP id d9443c01a7336-2986a6f0a62mr37094645ad.26.1763132230578;
        Fri, 14 Nov 2025 06:57:10 -0800 (PST)
Received: from hu-rdwivedi-hyd.qualcomm.com ([202.46.22.19])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-2985c244e13sm57548015ad.29.2025.11.14.06.57.06
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 14 Nov 2025 06:57:10 -0800 (PST)
From: Ram Kumar Dwivedi <ram.dwivedi@oss.qualcomm.com>
To: mani@kernel.org, alim.akhtar@samsung.com, avri.altman@wdc.com,
        bvanassche@acm.org, robh@kernel.org, krzk+dt@kernel.org,
        conor+dt@kernel.org, James.Bottomley@HansenPartnership.com,
        martin.petersen@oracle.com, ram.dwivedi@oss.qualcomm.com,
        quic_ahari@quicinc.com
Cc: linux-arm-msm@vger.kernel.org, linux-scsi@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Subject: [PATCH V1 0/3] ufs: ufs-qcom: Add support firmware managed platforms
Date: Fri, 14 Nov 2025 20:26:43 +0530
Message-Id: <20251114145646.2291324-1-ram.dwivedi@oss.qualcomm.com>
X-Mailer: git-send-email 2.34.1
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMTE0MDEyMCBTYWx0ZWRfX3dipLo3iVwhF
 ckH716CC0C1Js2cI29pbeKMLtNL4aPe4l05qcRQqGnYl0Ext6OFJgVVyAXPjW1UoOt07KoId3Gy
 irAw8lKL/j0zgLeMQPjs4tppkFBB/YcGYe6yIb1ERsgRHg7yXIsm9jCGURHmhuMuIpLpGwF3L5O
 svhZhlGQVfypywnb2HlH3gqQteKL8J2T4RdaIXun0TLTCGHVWJbojVh9BUKcs6Ck17YO3ddOk57
 fQYa+vBxieAov+wUktdGu0RbgIqNkx+uQ+ZZ1jS9QIgYuIegQEayhHbeqeiY7sTAjNdwyJIgqVg
 Cq/6a8AQJPqDWr33qz5ZEXpytf3QgEdULvLPVYuNrb9KQsv7k2qd/Ma6L8zFYLXAzbynWABGggX
 V3UfT6d7PDB4L/Z9ZYYkACHvRMF3Sw==
X-Proofpoint-ORIG-GUID: MuQEMlVjIPbeMuUsBhsaqZx54gxj2xk2
X-Authority-Analysis: v=2.4 cv=BJO+bVQG c=1 sm=1 tr=0 ts=69174348 cx=c_pps
 a=cmESyDAEBpBGqyK7t0alAg==:117 a=fChuTYTh2wq5r3m49p7fHw==:17
 a=IkcTkHD0fZMA:10 a=6UeiqGixMTsA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=COk6AnOGAAAA:8 a=fUx3pPj6L392ZWVjOsMA:9
 a=QEXdDO2ut3YA:10 a=1OuFwYUASf3TG4hYMiVC:22 a=TjNXssC_j7lpFel5tvFf:22
X-Proofpoint-GUID: MuQEMlVjIPbeMuUsBhsaqZx54gxj2xk2
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2025-11-14_04,2025-11-13_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 impostorscore=0 lowpriorityscore=0 clxscore=1011 suspectscore=0
 priorityscore=1501 adultscore=0 spamscore=0 malwarescore=0 bulkscore=0
 phishscore=0 classifier=typeunknown authscore=0 authtc= authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.22.0-2510240001
 definitions=main-2511140120

From: Ram Kumar Dwivedi <quic_rdwivedi@quicinc.com>

On Qualcomm automotive SoC SA8255P, platform resource like clocks,
interconnect, resets, regulators and PHY are configured remotely by
firmware.

Logical power domain is used to abstract these resources in firmware
and SCMI power protocol is used to request resource operations by using
runtime PM framework APIs such as pm_runtime_get/put_sync to invoke
power_on/_off calls from kernel respectively.

Ram Kumar Dwivedi (3):
  MAINTAINERS: broaden UFS Qualcomm binding file pattern
  dt-bindings: ufs: Document bindings for SA8255P UFS Host Controller
  ufs: ufs-qcom: Add support for firmware-managed resource abstraction

 .../bindings/ufs/qcom,sa8255p-ufshc.yaml      |  63 +++++++
 MAINTAINERS                                   |   2 +-
 drivers/ufs/host/ufs-qcom.c                   | 161 +++++++++++++++++-
 drivers/ufs/host/ufs-qcom.h                   |   1 +
 4 files changed, 225 insertions(+), 2 deletions(-)
 create mode 100644 Documentation/devicetree/bindings/ufs/qcom,sa8255p-ufshc.yaml

-- 
2.34.1


