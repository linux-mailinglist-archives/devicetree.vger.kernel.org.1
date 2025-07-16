Return-Path: <devicetree+bounces-196942-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id EA18AB079E6
	for <lists+devicetree@lfdr.de>; Wed, 16 Jul 2025 17:31:48 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id C31DF1C42DE5
	for <lists+devicetree@lfdr.de>; Wed, 16 Jul 2025 15:28:46 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B5E61287245;
	Wed, 16 Jul 2025 15:28:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="pMKWZ2Dg"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4AA0F26D4D8
	for <devicetree@vger.kernel.org>; Wed, 16 Jul 2025 15:28:14 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752679696; cv=none; b=Qjl0MAg8q7ZBsVQhaMA7/FrUKMzeF0mVJif6pQvier5cAwuyZnhAkzdIpiX8Ykp6SGjQvMrtccQpUwF6EeEeWnhO4TF459z7y3bbMtOdjhvpLJWbEPbfUQ6O0+NRgwiSkGQUgRITgegmGgAewfP0hLepqDla/uCwEaSUrqNwMns=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752679696; c=relaxed/simple;
	bh=HwJpo57RFu4YKFi1G/WbvBeaj5ntOXvHLOhM/OG4UqY=;
	h=From:To:Cc:Subject:Date:Message-Id:MIME-Version; b=BcwMATkWGflpwGwg+Md8anh14XPseSXCDiZKMuAWmLN40zWv8ViAqf5biYvirdD1XyCtUpl+J+tylMMuFFFfE0osz+y31ahDKMt93qanbVokRQpBPlJjXvUZ7SzyCF+MDsiM/oBsMX4JJN+xJN+v2LDSPF7uw77L5Vuu/57si0s=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=pMKWZ2Dg; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279869.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 56GDb2e5026001
	for <devicetree@vger.kernel.org>; Wed, 16 Jul 2025 15:28:13 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:date:from:message-id:mime-version
	:subject:to; s=qcppdkim1; bh=VZKMCsHazxjdkqYHSetpbR5/PKn4CY0xIoo
	KMOHaHjA=; b=pMKWZ2DgSADpm8HEqZuibDX0UBDDw9AST1FpgKSwjj2Jy+95/dP
	2NOQQMe0iNEtHHSEbSh81azFQUpxNV6zwu8hZMJTusGiygCOwVl0i5J/mjiRewY4
	CNmQWEXPHz2aPXV8xTEsqFPFJSKQLaTKixIU1HkEZoaeDpuxhAJfkhPlBOW4pvEG
	QzOj3qfpixBxJsbJw7jiS2C6iOFadoSo6s2XQIV46Hv0RF5kQcAaXVfSVAR0QAGY
	Mhn/X2XhSI+9HY/QaF4vYMGlaJO412Wt+fLw77k+u2Y74tJMDlQe1cUhCqU+am2W
	oMX6vhRWGgSdB2okQax3i0rgrN95bYZKWHQ==
Received: from mail-pj1-f71.google.com (mail-pj1-f71.google.com [209.85.216.71])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 47wfca5qe7-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Wed, 16 Jul 2025 15:28:13 +0000 (GMT)
Received: by mail-pj1-f71.google.com with SMTP id 98e67ed59e1d1-3138e64b3f1so44375a91.3
        for <devicetree@vger.kernel.org>; Wed, 16 Jul 2025 08:28:12 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1752679692; x=1753284492;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=VZKMCsHazxjdkqYHSetpbR5/PKn4CY0xIooKMOHaHjA=;
        b=EnKQaMU3YdI3J7vyy5aKytcGgZPnvKW+7ypmveGrHcQ+xVoVDqKuBywzhr6iwcmGjo
         vCy+oz7ZRCmaXgKCipwyKl48dnDAxnkIlqV91oJ8WU2RT/uoJ+AP3onYRAhUZpL0KEWf
         n2skr7vkE6A9Ty9zdwBgFOfY+otAWn+n64zuprnwbsehN9Itk4mjaZv0ggbp7eErLi9L
         3synyr60rz3DEgWt3Zrsku3ZcdqzAtzw7XHkk88InX/M1zspHbVWNMjoUXdQQydXm/b0
         TNfpu4YTZfl0+XEmlTXM3aYzjMfqGO6YozgcpQYuRg2nGVcihHzSbnY+IT6nsa4eix16
         BVCQ==
X-Forwarded-Encrypted: i=1; AJvYcCVCr/MNxKbIgxxPasfLXd/ODfA1+PlbshZaiwDQ+kTzRmElrZD7SjAbhiblUSOJ+4kYh785Na4WUs3x@vger.kernel.org
X-Gm-Message-State: AOJu0YxSHKYkYMFs9NWqMxunX4C5P6VmQPaZqbWpWUwpQClZyUe54tGe
	CPBPWSKfq+3g0hMxv+LHu6NKZJqRuxn6F+6LuPGcvSiz92kRyhy3RdJ/dIkt5kyvww7WfjG4XJA
	c8hnDtvQanwYWZi8aHS28k/S0gCs8tzgNkNDj6Ykql356LfTwLdL27tMODvlvgrkI
X-Gm-Gg: ASbGncuwPndZpneeo+Z0hqy275rW+iWBgaJ/xvzJZ1HJ3E63Yn0eQkDBuAlDnVsEyUx
	wJEmS0N9sehmS3h+5LYBibAofCOhqXws6kJomrKQ7g0btLlo8c18Ycn/z82qzpXIskAoyFg2Ddr
	27SWNuImhSwVBC6diXmmM3YU4cCsn1kQVN+uYd/nw4xrA2FcCAwth7puqHGYb8xehX2X+dNXNhk
	uE/nc3N7RVQc8QoAM3hyrOSk6FrJbs/SyVmgg1cwVTwKcy7cNaECoEZ40nQQAZM2dxg4D/rwOPf
	hQzbbr+Ku4jKR5Sdh1oRBH/5+dCH/U66HXIx9YydWEjtVUQWiH7oe1DbjBxQiAd8YgOVBdz/5w6
	fpffkyPitc/d2ifvPRP0bmbeJRSwv+laJ8yca5nTi6IQyoCRmGtiHSiWeA+08
X-Received: by 2002:a17:90b:2ec7:b0:312:eaea:afa1 with SMTP id 98e67ed59e1d1-31c9f4389ddmr4109796a91.29.1752679691815;
        Wed, 16 Jul 2025 08:28:11 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IGK4dc/pwGVIwFcWXELIY47gNpp4QXWUC2QB+vNktvv5F/caCsYlOFCAErMO4+m+GGA3ZhrXQ==
X-Received: by 2002:a17:90b:2ec7:b0:312:eaea:afa1 with SMTP id 98e67ed59e1d1-31c9f4389ddmr4109750a91.29.1752679691396;
        Wed, 16 Jul 2025 08:28:11 -0700 (PDT)
Received: from hu-pankpati-blr.qualcomm.com (blr-bdr-fw-01_GlobalNAT_AllZones-Outside.qualcomm.com. [103.229.18.19])
        by smtp.gmail.com with ESMTPSA id 98e67ed59e1d1-31c9f20e87bsm1688563a91.35.2025.07.16.08.28.07
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 16 Jul 2025 08:28:11 -0700 (PDT)
From: Pankaj Patil <pankaj.patil@oss.qualcomm.com>
To: robh@kernel.org, lumag@kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org,
        ulf.hansson@linaro.org, konrad.dybcio@oss.qualcomm.com,
        quic_tingguoc@quicinc.com, quic_rjendra@quicinc.com,
        kamal.wadhwa@oss.qualcomm.com
Cc: linux-pm@vger.kernel.org, linux-arm-msm@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Subject: [PATCH 0/2] Add support for RPMHPD on Glymur SoC
Date: Wed, 16 Jul 2025 20:57:56 +0530
Message-Id: <20250716152758.4079467-1-pankaj.patil@oss.qualcomm.com>
X-Mailer: git-send-email 2.34.1
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwNzE2MDEzOSBTYWx0ZWRfXydsO8KHA9Mk5
 ihijvZflL6CPwMWbdJ9ZyPp4CwIfW0+DMgN25VRq2umTkQBPkRe2yjEqKuV8lfnQV7xi6fgWAIs
 XYIkd6OtzeRlnQi5EK6amlEg3xxu7T5dPOrO28kK2SfiPFqgFZ9mLOYw5DA8u70UtAiBhP5a3ZZ
 4CYbVh0DkCbtHF/AKRKlSzIk08TmutNzdiZeyr60Sjqji35TQKWeMFMLk2yjOeRm5E+1uHunN9W
 bK19TbinP0dQ9UjQNDLtymsJxbX7+ElY5THWIMl0/0/9VQhxgOqGPgmIg7+smgTOzSERILuYYOs
 mLQ6ePG/AORtyrHZHdd220cR+JVnhORCOZT3Q1/g3XPQ/NuE85wT+nYAWGGq4rmMxOeh6QfMxXd
 m5jnE+2byYWxc33nV4+rG3CNGhbzKBE37U+hE576xEqGwICOYAB52ndr1SsnZny4iAJPSC4U
X-Proofpoint-GUID: t-eM2BhpoD865coEi6XN0Qc666N7oGos
X-Authority-Analysis: v=2.4 cv=SeX3duRu c=1 sm=1 tr=0 ts=6877c50d cx=c_pps
 a=UNFcQwm+pnOIJct1K4W+Mw==:117 a=Ou0eQOY4+eZoSc0qltEV5Q==:17
 a=Wb1JkmetP80A:10 a=76G38qL4IpClrheZAL0A:9 a=uKXjsCUrEbL0IQVhDsJ9:22
X-Proofpoint-ORIG-GUID: t-eM2BhpoD865coEi6XN0Qc666N7oGos
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-07-16_02,2025-07-16_02,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 spamscore=0 mlxscore=0 priorityscore=1501 bulkscore=0 phishscore=0
 lowpriorityscore=0 mlxlogscore=865 impostorscore=0 clxscore=1015 adultscore=0
 suspectscore=0 malwarescore=0 classifier=spam authscore=0 authtc=n/a authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.19.0-2505280000
 definitions=main-2507160139

Add support for RPMHPD bindings and driver for the Qualcomm Glymur SoC

Kamal Wadhwa (2):
  dt-bindings: power: rpmpd: Add Glymur power domains
  pmdomain: qcom: rpmhpd: Add Glymur RPMh Power Domains

 .../devicetree/bindings/power/qcom,rpmpd.yaml |  1 +
 drivers/pmdomain/qcom/rpmhpd.c                | 26 +++++++++++++++++++
 2 files changed, 27 insertions(+)

-- 
2.34.1


