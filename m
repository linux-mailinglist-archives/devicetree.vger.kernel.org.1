Return-Path: <devicetree+bounces-270361-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id ONNRB5ObpmnfRgAAu9opvQ
	(envelope-from <devicetree+bounces-270361-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 03 Mar 2026 09:28:03 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 780551EAC5E
	for <lists+devicetree@lfdr.de>; Tue, 03 Mar 2026 09:28:02 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 795D23131DAB
	for <lists+devicetree@lfdr.de>; Tue,  3 Mar 2026 08:22:37 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E55C738655B;
	Tue,  3 Mar 2026 08:22:11 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="dus6kN1C";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="Va0pyPLE"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 666C0383C9E
	for <devicetree@vger.kernel.org>; Tue,  3 Mar 2026 08:22:07 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772526131; cv=none; b=PfC1mfh6uzUFzRozdrE7pkPtejoowUIkcZaHO5Y1mj54BTvrUqhpsSbj6BLKdU0yvepAu9Yn9TFxQK9FtHtIpVLeD7XMU6kFcOOO6iVQ1x8xuAIXdHNt+pgeTSGzUiHJHgPEtRWlumWqyuvlwNpu3rxG7OtzXldetJsSezcKwdc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772526131; c=relaxed/simple;
	bh=5MkZoh9idZENL26/28+Pn/HPSrFTn/xu7abpBPsP8zY=;
	h=From:To:Cc:Subject:Date:Message-Id:MIME-Version; b=aYmMy0Z3kv49c7lnq+8t6YGou2/YvpMAjx77L7qPIKzIjdw4lKlCK+HJmbopnCSwfUC922p2Uu3CKgMzMXhgKer1Pig7Ndx+I/ccSac/IBOyVLfrcv86BmXmZH7g15nqYnysdthNR3FLno5GFi/eAWKiuwDbiYKLGDk37HKpLn8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=dus6kN1C; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=Va0pyPLE; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279873.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 6233tUKk3561443
	for <devicetree@vger.kernel.org>; Tue, 3 Mar 2026 08:22:06 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:date:from:message-id:mime-version
	:subject:to; s=qcppdkim1; bh=nIvKr7vT5akEbC8p+WY+aXK+vgooWO6+4BB
	YhjPYrZs=; b=dus6kN1CihYouvHJxRRoNZ3O4wfRQa9dw0iag8vIH20gukPsckm
	pEouSDhMh/Jq7ZzshlKVtt8iC4kCF7zyPcxSNROnxuvwcngGEnIAZEfRbS3ykegO
	YMBFUjExkGa7jH/LHzkluVBjKXKME7hDtpBuhVRMQCFVfqsigiMExyNdgy/jO4Tz
	OQavTEQfQwrUgvB1sk/cVZFVYFQGAE4K1DXKWwMeYFsSJA+Lg5Zr169IQHqJD77e
	NjiwYBlWVyXrHhxOMHu2KmuO3Qvg3QdqOF8QQ+17NfqjOGK9kn2Kwnl9tVEpzIYI
	iiAeRhF9NBlUa6x6pzxfUBlFypB6DJFLSvg==
Received: from mail-pj1-f71.google.com (mail-pj1-f71.google.com [209.85.216.71])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4cn9bvbwwp-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Tue, 03 Mar 2026 08:22:06 +0000 (GMT)
Received: by mail-pj1-f71.google.com with SMTP id 98e67ed59e1d1-35978cbc54aso1985770a91.0
        for <devicetree@vger.kernel.org>; Tue, 03 Mar 2026 00:22:06 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1772526125; x=1773130925; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=nIvKr7vT5akEbC8p+WY+aXK+vgooWO6+4BBYhjPYrZs=;
        b=Va0pyPLEUA50+ROW++Vo75h5juiG/p22tvcwYFd3d8ZqPPgJFdeHEZUbHmMSJm0L93
         4UKiRvn1/JYq05sWEE99j3fJbtBfArl46Mzp2sS6+fX6d8vjD08VqrJhWxpsUcEJ71Nf
         iOI+dbXAW1BGWv1+o21STghUElq3Rm1yQh1myXkk2SPeyoYZVPaJ/XuQqHZoeMlHqxCq
         2Qxd+VwIGe8G0Sqnbr2EpIx46ok+LIZLbrHg4Dm/O9dINpXrROI++WyA8dYm00t8RhXp
         n3TNNz3x+lCtPuhTtwGPzQ9LF3QmuDHY5FF0rfEwknez2EUqJNIBWVUFy2cSImprHr2d
         qpIg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1772526125; x=1773130925;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=nIvKr7vT5akEbC8p+WY+aXK+vgooWO6+4BBYhjPYrZs=;
        b=Y+WiGcH0AQDwxTlWdHwML3aC+Ho7IvyDbY50rsXyStPdt4+F3HPAW4h7+yGcYZta+b
         4d34vlLOPOwbE7jE9NWSoy8AR4eoxQCa8pFBn3NXhbYTD+VAZ4bGa22iasQQAz+PEbAR
         VRGSmIDknJfayPppmFEtrbpJLkbNln9lKlUAHfGIyB4eneS1plNreMaPBCR0+rEJmSUk
         Hp6pQmD0PZCsEkiFgWhaGuTKVj5KRuKUuR9T6qLcnUwx54OSPv6d2LPZCDl5jU/0mTqF
         6nQK44SZtlfDVD6lnY0fLXtgbyq46KePp9UuEBRQgsdOWV2aI5WDWiplMGuU/zBcZciH
         jaUg==
X-Forwarded-Encrypted: i=1; AJvYcCXcYEOAP+QFxR/crzRmvzpgUX1cBjXFfNxC+SSUeJrpRHC1aVGbHGRb+6i2VUP3D6plATRQOdr0ZuEV@vger.kernel.org
X-Gm-Message-State: AOJu0Ywf8pxHt69bJO8Zwaao94vf9E/X/859kJeU/aFW07wSACKRKWWM
	lmlbjcsbyVzgS26fDGfdju8RM4oXbV7WNrFZ09lJGM2kWZSEoAZ8l46SUCEE2kzOnGlDR7wWMZP
	U9cDvUvivGHTTz11RdaOHkPPqog3r8T6jvn5qAx1iOFeJETRtDckEcx7VnWu2k0QF
X-Gm-Gg: ATEYQzzXlCnRZpHPqR3rbWrhvH8GrJ5IncsKcNKBy0p4xWfxHInDR0D+pgCKO0PHTpn
	DVTzBOXGN0EqEnZHytftruZNjANkPgaLUNQf8VR5L7yO8GeN1oFuULFOjeMkLHSh2mGk5+35Ngn
	fCk8sunbLdYKpE3Sc4qshCor9hrIB0pQ2ofZL95lkHRx8p1zx73TO+y8ubv/oDnbbDoF/93UVAs
	LIeAtbTmw2lpNZJqE/0M/NZAV9PlmDeaQTE5uSTbjBDOo8GkEI3VUeI9RWkZNxDYKwIG7/VCFyP
	X1eGSvoD2f2+GPEXOGO57qMDOuMKX5kgX5s/x52+ymuViJfv93RHtk0KZDUkNuF8lhXDEQIWhcB
	tfBmVLQIxDkcxLIDWxbkX1abkcYMe8rpdx6h44tBrFM2jLA+NdPNhVNA=
X-Received: by 2002:a17:90b:5587:b0:359:8ca0:308d with SMTP id 98e67ed59e1d1-3599ce83a2emr1255260a91.14.1772526125169;
        Tue, 03 Mar 2026 00:22:05 -0800 (PST)
X-Received: by 2002:a17:90b:5587:b0:359:8ca0:308d with SMTP id 98e67ed59e1d1-3599ce83a2emr1255218a91.14.1772526124629;
        Tue, 03 Mar 2026 00:22:04 -0800 (PST)
Received: from hu-swatagar-hyd.qualcomm.com ([202.46.23.25])
        by smtp.gmail.com with ESMTPSA id 98e67ed59e1d1-3599c4e2f85sm1797214a91.17.2026.03.03.00.22.01
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 03 Mar 2026 00:22:04 -0800 (PST)
From: Swati Agarwal <swati.agarwal@oss.qualcomm.com>
To: Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org,
        Swati Agarwal <swati.agarwal@oss.qualcomm.com>
Subject: [PATCH v2 0/3] Enable secondary USB controller in OTG mode
Date: Tue,  3 Mar 2026 13:51:54 +0530
Message-Id: <20260303082157.523847-1-swati.agarwal@oss.qualcomm.com>
X-Mailer: git-send-email 2.34.1
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Proofpoint-GUID: NaQzVcuihQz1JiIbHrCyOWIvhnvWyyE0
X-Authority-Analysis: v=2.4 cv=S83UAYsP c=1 sm=1 tr=0 ts=69a69a2e cx=c_pps
 a=UNFcQwm+pnOIJct1K4W+Mw==:117 a=ZePRamnt/+rB5gQjfz0u9A==:17
 a=Yq5XynenixoA:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=u7WPNUs3qKkmUXheDGA7:22 a=rJkE3RaqiGZ5pbrm-msn:22 a=VwQbUJbxAAAA:8
 a=EUspDBNiAAAA:8 a=xLDwsqNg2EmkyYomXIwA:9 a=uKXjsCUrEbL0IQVhDsJ9:22
X-Proofpoint-ORIG-GUID: NaQzVcuihQz1JiIbHrCyOWIvhnvWyyE0
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMzAzMDA2MCBTYWx0ZWRfX3tvDDNcf/mwF
 WeUkh+po1SE1S6zLqkVh8p7yYoJVyEk1plPSCNkiSrdO0OspPMy6XKRf1Wbxy/7jxtmTnzybJvM
 mjPSVy+7eYXnn7X5cWIk0siSuYlwhMi23JsRyyl3eO2ORjwLUfqF7bWxPQSHRl4+EBWf0nCq8IG
 wDvfEAl685ibmxMiaP5nQtlOTiIfjV3PiJUWPDWYU0v184jJGkQK7ZqwUMeusXpMp/z79tgjbez
 8SrOfDruDg2yJNWydSOqrYDOqGfpr3NatOTC9qc17qUfM3Bt6Isv8LFvDT8+q1HI38iGLMpBVQT
 UU8e2tIEmLmuGO9JUQlfIsQZtuyhLMDMCeax8e0Fcla9FCltvnXfEOQdOxODpf7HjtyqKMtsmZk
 9v4W8svu3LmXf9SCu+/wii+44ByFMQ2NloAjtQg8WDqgGo1YVJmgHY+91vBJyufxaNeVQcdBCCt
 UBkzxZrZF6I3o19nPwQ==
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-03-02_05,2026-03-03_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 suspectscore=0 clxscore=1015 malwarescore=0 lowpriorityscore=0 adultscore=0
 phishscore=0 spamscore=0 bulkscore=0 impostorscore=0 priorityscore=1501
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2602130000 definitions=main-2603030060
X-Rspamd-Queue-Id: 780551EAC5E
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.66 / 15.00];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_CONTAINS_FROM(1.00)[];
	DMARC_POLICY_ALLOW(-0.50)[qualcomm.com,reject];
	R_MISSING_CHARSET(0.50)[];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	R_DKIM_ALLOW(-0.20)[qualcomm.com:s=qcppdkim1,oss.qualcomm.com:s=google];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	MIME_TRACE(0.00)[0:+];
	DKIM_TRACE(0.00)[qualcomm.com:+,oss.qualcomm.com:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_FROM(0.00)[bounces-270361-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[swati.agarwal@oss.qualcomm.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	DBL_BLOCKED_OPENRESOLVER(0.00)[oss.qualcomm.com:dkim,oss.qualcomm.com:mid,qualcomm.com:dkim,sea.lore.kernel.org:rdns,sea.lore.kernel.org:helo];
	RCPT_COUNT_SEVEN(0.00)[9];
	NEURAL_HAM(-0.00)[-1.000];
	TAGGED_RCPT(0.00)[devicetree,dt];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Action: no action

Enable secondary USB controller in OTG mode on monaco EVK platform.

Changes in v2:
Separate patches for Monaco and Monaco-evk.
Minor formatting changes.

Link to v1:
https://lore.kernel.org/all/20260210155329.3044455-1-swati.agarwal@oss.qualcomm.com/

Swati Agarwal (3):
  arm64: dts: qcom: monaco-evk: Enable GPIO expander interrupt for
    Monaco EVK
  arm64: dts: qcom: monaco: Add role-switch support and HS endpoint for
    secondary USB controller
  arm64: dts: qcom: monaco-evk: Enable the secondary USB controller

 arch/arm64/boot/dts/qcom/monaco-evk.dts | 131 ++++++++++++++++++++++++
 arch/arm64/boot/dts/qcom/monaco.dtsi    |   7 ++
 2 files changed, 138 insertions(+)

-- 
2.34.1


