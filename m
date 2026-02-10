Return-Path: <devicetree+bounces-264461-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id uFflMsdUi2k1UAAAu9opvQ
	(envelope-from <devicetree+bounces-264461-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 10 Feb 2026 16:54:47 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [IPv6:2600:3c04:e001:36c::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 4C90911CCF5
	for <lists+devicetree@lfdr.de>; Tue, 10 Feb 2026 16:54:47 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 97118304D133
	for <lists+devicetree@lfdr.de>; Tue, 10 Feb 2026 15:53:45 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id AF75F3859EA;
	Tue, 10 Feb 2026 15:53:41 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="JWjdAXH3";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="GqQjDAWL"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E7B6E36655F
	for <devicetree@vger.kernel.org>; Tue, 10 Feb 2026 15:53:39 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770738821; cv=none; b=UkG8JqNYvKsOQvN4UMgbJN6bYoH3VpEcq2c17Ce6cAo6rqS2xMcesYnG29ZhFvczvPWuPaliCJ1MlMNblnrLo1N6QZqj2soG7wMI0F5uuiIeo4VqG3UjwS9LxM3p7gmE90NqSyzS9GGJpZ0OC0N3tGdSvKpPpxDnyITLq3QfQdU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770738821; c=relaxed/simple;
	bh=ES2yPylAWe7RjKwbD+FHSx3tnogvS1+CwfPlp2CVLUM=;
	h=From:To:Cc:Subject:Date:Message-Id:MIME-Version; b=apJx2CP9Suq9S7erk8M5WypEOdysQHpeH5inSQH9lasNVn4xZA/hpWQtDnNSnS7PNowie11uxowk/uQ4gbXUbVeFMYcxf+fU0asjSGTr6WZFUvMEgPtF/jTyUXqCIMYB0OYSqzVdHek7hoxGtSJYInXPKPuu1ZZKXt4hN4m3Hbs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=JWjdAXH3; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=GqQjDAWL; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279867.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 61AE76LC441443
	for <devicetree@vger.kernel.org>; Tue, 10 Feb 2026 15:53:39 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:date:from:message-id:mime-version
	:subject:to; s=qcppdkim1; bh=IrIVbc5cn5o//qq+G7UgCkF5BiMQoDHH3bG
	+Ne3gTYM=; b=JWjdAXH3eCIBJkiMOoELtENG4Ele/K4GcAU778D9FPfVnUYk4XO
	Flr352hUHgPLlUDOrLoccD0c8SxMUtTR7qAIM4IPAn9dZJsYDY6tXP6/mFUSd/Ar
	+FgPr+P2E+W3+2AEqYEcj4kjOWBT1Yh04ociEis3l+9Vxv/a4FCskYHCFH3/Yq0d
	HZ0SzqG1t/JmrUC3eHcbCmoC0z4/p25wun/sPM7ofZ1hrR7y6/CISBEmSYdkkTnx
	23+V4MthJvz/evoscHvL+bq9oM8cgzccq6BTJ0eL5b+h+xoGFD1mMPVsJV9dz+2L
	8WqEPCokWuMXq4xLmIe2eQjD1S26xYvvEdg==
Received: from mail-pl1-f199.google.com (mail-pl1-f199.google.com [209.85.214.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4c7qp9k723-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Tue, 10 Feb 2026 15:53:39 +0000 (GMT)
Received: by mail-pl1-f199.google.com with SMTP id d9443c01a7336-2a75ed2f89dso47356955ad.1
        for <devicetree@vger.kernel.org>; Tue, 10 Feb 2026 07:53:39 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1770738819; x=1771343619; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=IrIVbc5cn5o//qq+G7UgCkF5BiMQoDHH3bG+Ne3gTYM=;
        b=GqQjDAWLvHGsVwH5jq9Uly8J2h9mmV5r58ObwBCiQriNb2mhsLHZJIiLKRrJOjyMSW
         QI00uZigCOgkBnTIJFv6YqeKWQ2YX66ZSX4+8IQHZBfUBKDx0jZIW9qGnI9VYEwMKgYF
         1+5kvCq7Il5bixEKk05ALYcLejsLd3zEZ4GWQCzrH/bX3bRlX5bZhxFBZIpHfnwCI/2+
         CVhzVvSDbmKrNXunCW4xWzlOcZN1eT+OArOeHEvmUzsCt6g0lKTE6xPbzr3w3Mn2mT0c
         7gsNQ5z37kog/PwufeFKssHOafsD7VQ5O5XwudWGMdD/dtcJJQBCfhJ8mpyPlTmqHJLH
         iRgQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1770738819; x=1771343619;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=IrIVbc5cn5o//qq+G7UgCkF5BiMQoDHH3bG+Ne3gTYM=;
        b=sEY/7SixLQImCwnYkPl4afX7+LRvv4ezypcV7h3idHLO03JdIa/2YczPyyG0xRhCak
         jDIAjDKKFlZilS9AWz5SJuxxKa9jyL5/pNJeKEGKjGgJoESJeHbM17W6RGrjqQ3Siuhz
         CxlWQIEqL00UYDMj6epDvSJVXg3tAOwGF6mYZnc2PkUtYpSse6q0FiUQuTdvr7RTixsj
         wY2lkD5knysmBc5oaZI53zth3M1NytwEaFsmFWHA9N3ZjyKhXUHVSUJOusUk7bonyx4D
         oBiyIZTCh1ucTCpzTpvGYr0TMwWx+zZBs5539T9MmwNLPD7wuSLsg9KkFZy9FwVrYAzx
         gmNw==
X-Forwarded-Encrypted: i=1; AJvYcCU9EFXf2BhHxHMTQ2FKb345/pHw0MZ6LN3L0J7GUBrdUSkwKj0DTICbHYZzyGVQdI5WGi1V6wybcaIV@vger.kernel.org
X-Gm-Message-State: AOJu0YzleUrJC5W95f4RSUvzg4neP+F8d/z5RuzjwR4gVH58PRyQitRq
	UP7kHCXlreRYKrt/Ys6O2kOxTIosofJT9+DywmTcOCK8lHPYlSm9/kO4RNZUVWDu+cM7FbSY4N0
	Uw9HRO3kavBddqrLTHHpkT6QfEAGRhp3jwwotA/WLV5SNDAVigNzbcv3xFf8KOrD+upDs4NOd
X-Gm-Gg: AZuq6aLDDR64bvZpdnJjx18wARlZB4Hqs4wJdikpbdk+RYLIcYZBfbgKcCXFZKhWhoY
	1MS2Yf++mcbPj9Is19lDA0HqsXFVL6SXzMq/1iG+rhg58UEClbUU3Jh6exE+pBhjRNdabUmO3aH
	7LYeFemastgodJvgqv49gjYm8BJlIDWW3K93brm7KrD9aqHzEIyPNuY33K2IiZ/v/2dAIqazOp9
	bi22df3k8o8egABK9kxn4+YEhWP0hfpYPLVHrZQ+eUSoK8Xj160zCkQ5323xWgUy4ZZvu4PC/5F
	e+0TDjlZG2yFsZhOlMhQs82hnCw+SQMPy5Tw+/fhZ7zK0q0O9c2gyrm95MduNg3nEF3j1fwDyO7
	9yN54hRR1jJGFsN7dthijZN1ChynVpqG6aSLRHl69NAU1bkcbZpdX9vY=
X-Received: by 2002:a17:902:ce12:b0:2a9:649:6f5 with SMTP id d9443c01a7336-2a951633a7cmr157968655ad.12.1770738818490;
        Tue, 10 Feb 2026 07:53:38 -0800 (PST)
X-Received: by 2002:a17:902:ce12:b0:2a9:649:6f5 with SMTP id d9443c01a7336-2a951633a7cmr157968355ad.12.1770738817998;
        Tue, 10 Feb 2026 07:53:37 -0800 (PST)
Received: from hu-swatagar-hyd.qualcomm.com ([202.46.23.25])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-2a952221b4csm149305465ad.89.2026.02.10.07.53.34
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 10 Feb 2026 07:53:37 -0800 (PST)
From: Swati Agarwal <swati.agarwal@oss.qualcomm.com>
To: Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org,
        Swati Agarwal <swati.agarwal@oss.qualcomm.com>
Subject: [PATCH 0/2] Enable tertiary USB controller in OTG mode
Date: Tue, 10 Feb 2026 21:23:27 +0530
Message-Id: <20260210155329.3044455-1-swati.agarwal@oss.qualcomm.com>
X-Mailer: git-send-email 2.34.1
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Proofpoint-GUID: JG8o571yqOZUCxEwnvDPd-oy6kEb59iQ
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMjEwMDEzMiBTYWx0ZWRfXzn6Ab15T4EAN
 Uiw2Gfz2quhewubLFR+a3ep2rP7eAvh+OaW05ClSR1urZ+6+vD30gdavtk9b3qAn0AodpCk6fPe
 CcApLCh7M+Gpxk8St64fpN4gz5/cOwAWjtWMh1/nz3ZVeZIAIL7/HXHNrUr0ZbMfcQjPtt3YGtR
 iCQCOyL8MHwZIRX2PndcQuL2Rj/+INx6mA3zqqICPx0q2vXM/g+x3end4r9kELOwYQ4/NMHZNhS
 HmbfZZ5IPz+aZsmS8cazSsmEtCZSV1t8bELaPh9Uo8eX1qPqwmWsyNmM73gIaBPREXT/SiY94v5
 X+Pc5tXgdKSEp7YCQnzrNwG3LT2yKt2RtShTo6IC25EIHHqiOKpaANrPI44+vnta5IHbQnSqUV9
 jrVOl7fsoZlBkbAiRtzbAtsangWnF66IxA5QK8kwAkIunrz5y4M3xxAuGOEbrExEfLegym7FXhU
 ObwFDpp6ZTXH4ZXCPjQ==
X-Authority-Analysis: v=2.4 cv=dP2rWeZb c=1 sm=1 tr=0 ts=698b5483 cx=c_pps
 a=JL+w9abYAAE89/QcEU+0QA==:117 a=ZePRamnt/+rB5gQjfz0u9A==:17
 a=HzLeVaNsDn8A:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=Mpw57Om8IfrbqaoTuvik:22 a=GgsMoib0sEa3-_RKJdDe:22 a=1gpuMaJnbJF-dNvRveIA:9
 a=324X-CrmTo6CU4MGRt3R:22
X-Proofpoint-ORIG-GUID: JG8o571yqOZUCxEwnvDPd-oy6kEb59iQ
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-02-10_01,2026-02-10_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 suspectscore=0 clxscore=1015 impostorscore=0 phishscore=0 lowpriorityscore=0
 spamscore=0 priorityscore=1501 adultscore=0 bulkscore=0 malwarescore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2601150000 definitions=main-2602100132
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.66 / 15.00];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_CONTAINS_FROM(1.00)[];
	DMARC_POLICY_ALLOW(-0.50)[qualcomm.com,reject];
	R_MISSING_CHARSET(0.50)[];
	R_DKIM_ALLOW(-0.20)[qualcomm.com:s=qcppdkim1,oss.qualcomm.com:s=google];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c04:e001:36c::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-264461-lists,devicetree=lfdr.de];
	DBL_BLOCKED_OPENRESOLVER(0.00)[oss.qualcomm.com:mid,oss.qualcomm.com:dkim,qualcomm.com:dkim,tor.lore.kernel.org:helo,tor.lore.kernel.org:rdns];
	FORGED_SENDER_MAILLIST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FROM_HAS_DN(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[swati.agarwal@oss.qualcomm.com,devicetree@vger.kernel.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	RCPT_COUNT_SEVEN(0.00)[9];
	DKIM_TRACE(0.00)[qualcomm.com:+,oss.qualcomm.com:+];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c04::/32, country:SG];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Queue-Id: 4C90911CCF5
X-Rspamd-Action: no action

Enable tertiary USB controller in OTG mode on monaco EVK platform.

Swati Agarwal (2):
  arm64: dts: qcom: monaco-evk: Enable GPIO expander interrupt for
    Monaco EVK
  arm64: dts: qcom: monaco-evk: Enable the tertiary USB controller

 arch/arm64/boot/dts/qcom/monaco-evk.dts | 130 ++++++++++++++++++++++++
 arch/arm64/boot/dts/qcom/monaco.dtsi    |   7 ++
 2 files changed, 137 insertions(+)

-- 
2.34.1


