Return-Path: <devicetree+bounces-224610-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from dfw.mirrors.kernel.org (dfw.mirrors.kernel.org [IPv6:2605:f480:58:1:0:1994:3:14])
	by mail.lfdr.de (Postfix) with ESMTPS id A7B6BBC6386
	for <lists+devicetree@lfdr.de>; Wed, 08 Oct 2025 19:58:12 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.mirrors.kernel.org (Postfix) with ESMTPS id 8519F4E84E7
	for <lists+devicetree@lfdr.de>; Wed,  8 Oct 2025 17:58:11 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 22F232BEC2B;
	Wed,  8 Oct 2025 17:58:09 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="eNGipyua"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 85ACD47F77
	for <devicetree@vger.kernel.org>; Wed,  8 Oct 2025 17:58:07 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759946289; cv=none; b=hbqf4ddBV0GkGdK9t/Wd8ZwZTcSk9TlplfgeXZSAtzVQY/q44/jm5rXJjb4UpUhcJD7a4P15EOMyQacNNmDWdNCT1+aYeW6nV+rC2PZXbZKPcjjDAwpaV8XlZEnLluz1U6gsVBG5ga4lAuKBbgHbaS01BsTWSyczfszBTfLypcU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759946289; c=relaxed/simple;
	bh=GNUvo6ahqMDDQmc6VatbjGcaUHeIlPCtEx1Od3v5Zoc=;
	h=From:To:Cc:Subject:Date:Message-Id:MIME-Version; b=uy46Q46zsrWQOSGPeX7wnNODceLqHcBL4qswZsxNg7WaESHQA4o/gLqDpxlIbPfx8YoOBF8/W3t05RZnX/KC+OIevqmQECOEHpjzI/kitITf0U/SNqhzqWLLU20hvSnqg6d9SSb9RrdkMTHJubJct5xEM8hps5IpLArCmYCrqh0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=eNGipyua; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279865.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 598HApAJ015118
	for <devicetree@vger.kernel.org>; Wed, 8 Oct 2025 17:58:06 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:date:from:message-id:mime-version
	:subject:to; s=qcppdkim1; bh=5Lnlm0zjjWiQ7ki6NUOp7Ssyybk7floF+zN
	XKL9UuRo=; b=eNGipyuavhbm2x+sRx8cMbG2Ca9vzdFVHmRjSZ7Hw2o2F6chXjv
	aA5Z1xDVa5KQ+2rFc4d4d4i4U5pTkbtCsJOJ2m9ixiGxTSUQdPzmN5YC3KmV1u//
	jZgVRhZEYZurUI0XcDCYcgqNpUA9Zc0Fm7eP0hVOfDSomKwdJLMX4TmN4NwwixUe
	l4jU8DMGmdLdR/CFHaWCDEJEIuLNOW9zVJlGh+DQ3joTrtvG8pzA65tl+uk6nI2m
	r76wak9lv1dOCxAAIS84/31fqnMxIAFFAvytOglG7ozbmBMT7tMcOJoiZf+EnuUO
	htazily+3FXBekPB6+cj1+x91XW7JxNW+XQ==
Received: from mail-pj1-f70.google.com (mail-pj1-f70.google.com [209.85.216.70])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 49nv4kr55e-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Wed, 08 Oct 2025 17:58:06 +0000 (GMT)
Received: by mail-pj1-f70.google.com with SMTP id 98e67ed59e1d1-32ec69d22b2so352722a91.1
        for <devicetree@vger.kernel.org>; Wed, 08 Oct 2025 10:58:06 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1759946285; x=1760551085;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=5Lnlm0zjjWiQ7ki6NUOp7Ssyybk7floF+zNXKL9UuRo=;
        b=a4bv/upfAfYrvunxHhEAN5LFoabRWy7niYj9VbiaI9yDHrka1xyifZVkpsgI7nfCc7
         OSJfKqzzfdLg6XgSkZxJ4qUAUcSl5NnrSjhMB2IVT38B3AHciqNuNeStrgyig1OYjySr
         xLWFTuS6ZV9ryCCxPVvFkcQBzwzv/ezMbJ5KLyV6fi0ugdH/uCdd1r18qXsx/ySpWEM+
         knyXAklgm+0vfiRIE/wUxdcbqrdjSnFxnFck127fJFGlbtztyyVwOHwGK8IfMU/GR18G
         1mOKdrpWTZa4Q1DKwIYsgN0T9jElyHrrXOeQ/N4Oh0/k4rRmUcUs/d9nK8O2N2+gy3vY
         6viw==
X-Forwarded-Encrypted: i=1; AJvYcCWDNSR2vtKtwhI6FoP6hOA83fkCSolKVMtXkfIgs3JET73YxPCY0aZKxawbOgnAMTILih4uPeghQa5U@vger.kernel.org
X-Gm-Message-State: AOJu0YytxOd7PpPftxGycmFcJEIwc1F+sOCHIZv3WNSqLnawItBSwWxI
	TnVbCCOqA0pi7g8L5rZbT5faqzjJjDud1+L2+YPYav8Sl7sY2S2f79mQcO4C4ufgFObdYKAEo0q
	TGH63AeBPEFqIkGSnj5WdAc2fU0u+e32we7a7S4E3W21/uOYL57KV/JgnItuN8kINBXovvYVu
X-Gm-Gg: ASbGnct8938UstIgEuO4tufgrZOQd4vP5Lq+IPQkA1aB0SAejfII+nLIGsMIFc2U0cf
	C/aK4amwX8OkgokOE/PDfLatIUCxB5DO6b6M0W3n3eJ+DKyyuK4G7Xm+kGGqq+MO7UUPNlY+g5+
	ricQbSEykuZyz7dQOQaYt8+8WZMMC/G/wfDWFG5knXzk22/FU2ARgKwQTvDHsRzyauB2YbXSAFA
	PfhWrgqidE0j5roKQbkiqABro4/bFrBigl4fD9g/iN9U8Kn/UCmJfz1aEyf4HgXYpfiAUsYe+rN
	behy+chUv/ci8YM1q1OxGTtrkcgKew1nIz+1FNQbj/LlLOo/xj0G2msQl1as26MTXGSNQQAlC20
	4E/kNn1Q=
X-Received: by 2002:a17:90b:1b41:b0:32e:8c14:5cd2 with SMTP id 98e67ed59e1d1-33b513d0b37mr5027253a91.28.1759946285388;
        Wed, 08 Oct 2025 10:58:05 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IGVKULYrHHKoUCwdURosQLoIlR8wgg927L9HtEPvDdQ5p0v4OJcirdLLPyK7xjfNTlVbUm18Q==
X-Received: by 2002:a17:90b:1b41:b0:32e:8c14:5cd2 with SMTP id 98e67ed59e1d1-33b513d0b37mr5027210a91.28.1759946284796;
        Wed, 08 Oct 2025 10:58:04 -0700 (PDT)
Received: from hu-kriskura-hyd.qualcomm.com ([202.46.22.19])
        by smtp.gmail.com with ESMTPSA id 98e67ed59e1d1-33b529f51b5sm1275726a91.7.2025.10.08.10.58.00
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 08 Oct 2025 10:58:04 -0700 (PDT)
From: Krishna Kurapati <krishna.kurapati@oss.qualcomm.com>
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Heikki Krogerus <heikki.krogerus@linux.intel.com>,
        Liam Girdwood <lgirdwood@gmail.com>, Mark Brown <broonie@kernel.org>,
        Biju Das <biju.das.jz@bp.renesas.com>
Cc: linux-usb@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org,
        Krishna Kurapati <krishna.kurapati@oss.qualcomm.com>
Subject: [PATCH v2 0/2] Implement vbus support for HD3SS3220 port controller
Date: Wed,  8 Oct 2025 23:27:48 +0530
Message-Id: <20251008175750.1770454-1-krishna.kurapati@oss.qualcomm.com>
X-Mailer: git-send-email 2.34.1
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMDA4MDEyMSBTYWx0ZWRfXy1FrtnSLA036
 j3fbesHA98nRN/Yq9+VbMw6sSKTnvvcVy0Zg9QjawlmID4CTDUksP5kVTrQDTyHLkfO8NhUTlFn
 u+IlBVFBeW07foslwl9UJXmY9kOtzEWvgCYJXf8/lXzVLTwSFncWGsxnfJqu/FxWT+QVYtDZzJZ
 2JzkGGG8XfrDkkdQpiiLVsdRUeJwGDefRukOcMRYX9+nOXDZMrFAnRPiEy/VbL+01KXAAfGkfBz
 qYGaXozZZj4I++tPMgQgrbJAMz5998kbcEaOLtoC6t0zFsMNbKSjSmjjSTMoMVDc/6l52DMokNf
 WXcnoqz77utbRxOUBYwv5BM+zwVAo9c5PoPWuXx97DHFeSmQLF77Vv7krwnLrepO6YL3xVR+H3G
 plezZdD/EQhOPpUtSoECR5dbFFJFbA==
X-Authority-Analysis: v=2.4 cv=CbcFJbrl c=1 sm=1 tr=0 ts=68e6a62e cx=c_pps
 a=0uOsjrqzRL749jD1oC5vDA==:117 a=fChuTYTh2wq5r3m49p7fHw==:17
 a=x6icFKpwvdMA:10 a=VwQbUJbxAAAA:8 a=EUspDBNiAAAA:8 a=0ZYI1qUNTW_HKTauMVIA:9
 a=mQ_c8vxmzFEMiUWkPHU9:22
X-Proofpoint-GUID: fmg2VcCFcxa9ZhYpVphH_FaoDZkK67b6
X-Proofpoint-ORIG-GUID: fmg2VcCFcxa9ZhYpVphH_FaoDZkK67b6
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1117,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-10-08_05,2025-10-06_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 adultscore=0 priorityscore=1501 malwarescore=0 spamscore=0 impostorscore=0
 lowpriorityscore=0 bulkscore=0 clxscore=1015 phishscore=0 suspectscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.19.0-2510020000 definitions=main-2510080121

As per the data sheet of HD3SS3220:

"Upon detecting a UFP device, HD3SS3220 will keep ID pin high if VBUS is
not at VSafe0V. Once VBUS is at VSafe0V, the HD3SS3220 will assert ID pin
low. This is done to enforce Type-C requirement that VBUS must be at
VSafe0V before re-enabling VBUS"

This series implements support to read ID pin state and accordingly enable
VBUS.

Changes in v2:
Fixed inclusion of header files appropriately.
Modified commit text for driver patch.

Link to v1:
https://lore.kernel.org/all/20251002172539.586538-1-krishna.kurapati@oss.qualcomm.com/

Krishna Kurapati (2):
  dt-bindings: usb: ti,hd3ss3220: Add support for VBUS based on ID state
  usb: typec: hd3ss3220: Enable VBUS based on ID pin state

 .../devicetree/bindings/usb/ti,hd3ss3220.yaml | 13 ++++
 drivers/usb/typec/hd3ss3220.c                 | 60 +++++++++++++++++++
 2 files changed, 73 insertions(+)

-- 
2.34.1


