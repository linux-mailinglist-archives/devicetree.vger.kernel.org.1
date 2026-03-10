Return-Path: <devicetree+bounces-273492-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id YKW/K3EFsGlregIAu9opvQ
	(envelope-from <devicetree+bounces-273492-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 10 Mar 2026 12:50:09 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [172.105.105.114])
	by mail.lfdr.de (Postfix) with ESMTPS id 491E424B9F4
	for <lists+devicetree@lfdr.de>; Tue, 10 Mar 2026 12:50:09 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id DF90030B6F28
	for <lists+devicetree@lfdr.de>; Tue, 10 Mar 2026 11:36:06 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 19F6F37B413;
	Tue, 10 Mar 2026 11:36:06 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="Y/az3iSJ";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="Rts9tMqP"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C865A1C5D44
	for <devicetree@vger.kernel.org>; Tue, 10 Mar 2026 11:36:04 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773142566; cv=none; b=Olc4Elz/fRS5QVoDFIq2jqudLw0b9HimGynHfqHi3f3hCTdj2IkUC+u0G3MG1ymm1MKSI/X9dXcKsxy3q9xGuF/lsYTMg0hmcfq0WmOAEOYDI6hOqJHmQhOXaDtIThs/FTo00ocD39RNgJa7NN+YbWBsyNIotkIJgRBbZpj/TRg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773142566; c=relaxed/simple;
	bh=JSBViZLYLgM3V5sDHNcbG1/UOiRj/kvo5UJxPKT4kfQ=;
	h=From:To:Cc:Subject:Date:Message-Id:MIME-Version; b=da92KvHH/xsEFkszUdbnmL9/+GWM09Re+M35XHLfm4Qidk4ueOs1dV/GDF9NRs85VloMvFcF7M49QZU+gp9mDGW/TUK8nGow0Nn9e1ErcXeAiMVOb6TMi/G+hz3BUD8BhBivTluwxDbneTgkxeq90/FRQMDyZz6uGfsqr3pEfiI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=Y/az3iSJ; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=Rts9tMqP; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279870.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 62A8tmsf3754749
	for <devicetree@vger.kernel.org>; Tue, 10 Mar 2026 11:36:03 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:date:from:message-id:mime-version
	:subject:to; s=qcppdkim1; bh=nlioHbQ4rRxL0XauG/8nbvUDu4aBay9qTv3
	o08Jr0Tg=; b=Y/az3iSJ1qKacDc7qsgmpXYVEj+yFcipi6G2S9wj7jfjXzkhMp3
	/PnapBh90cxBCPiHyB2to+UMuWO2dUewjaMAty9HOpmUTdi3IExSCiMOi1cQDb2/
	9+04a/ANgabnMIONyerZWejIx0op/bLpS/hCJVSBsEtLG/B4jmQAynTms4uQ30Cx
	e1JK2vove8sE0zhRQhLYQLFalZf7m0J07fYdlIej/LoNSd4IM3FVx7loKJXBRyeM
	9zINrzhnmG8HcMbsZzyBo7iwJZtgkiC76iK32fYYfTpS3o2OogpeUsT4QpwNvJZM
	/oltTsRVpzM72/AU30hMUFPzL9R1qEst6og==
Received: from mail-pf1-f198.google.com (mail-pf1-f198.google.com [209.85.210.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4ct477jyq8-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Tue, 10 Mar 2026 11:36:03 +0000 (GMT)
Received: by mail-pf1-f198.google.com with SMTP id d2e1a72fcca58-829aa961449so1560797b3a.1
        for <devicetree@vger.kernel.org>; Tue, 10 Mar 2026 04:36:03 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1773142563; x=1773747363; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=nlioHbQ4rRxL0XauG/8nbvUDu4aBay9qTv3o08Jr0Tg=;
        b=Rts9tMqPd1zDXwRvripmJDVAKBo494FYUOMBSridPxeHITfTVviqSqksvDqHxI0nSk
         uYBsMkZ/Vgc1Xv0fDCQZj8svQKda6UognKj3Eto5r7exUcAsqBgsXDMyPzFLbZ0n1ysg
         hd6ASgpKcYkszURfLWImUnWXC+2oyqwn+NWlCxeso5PJpA7wnBneHWJLns0W+6HQNiZA
         vN+VGcYivhDI4ZKl9ODb3AUitUAiQnVNEwCBgPYTKAFgb9X/ABozgYawiCmbmFFCksw0
         yodCTn6tE+k51ahSHJ97eEwN6d1tSD9vsCoOrQdPg8LAbywSRbQdvs17TvL/bEARhVCw
         9A6w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1773142563; x=1773747363;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=nlioHbQ4rRxL0XauG/8nbvUDu4aBay9qTv3o08Jr0Tg=;
        b=dq0+PRhK4cKfvu5a5whFdfpdIeVmbI/xyEkHFsOWEnD/v4Ud7IsqesaQfetqcBOnX0
         1/uUqTmh6AwcCkOa7APJuwABbK7QdVIXzXIoV7YMiFX2FV4PRhhEb6q8qHMeOzz4x7Wb
         BYoFVD6IcXOIVIyKYY9380NeN6SEYQaeeY814OOBZ+h6K7PEPqiBdza8zbSsFx1pbBeV
         juP95rns5ZiM1HHv1XLXPk4xxznXICb69ZvDRwtnZ5Tuk8TWxIXbwD8Wh9p2K+S5yTbz
         zdcKYgeZMCZoM8+SAQe2Xhgxzz0KuR0ByW4KpeRwGRAg167oAvhjqol8emIMH10EzK/P
         BfAA==
X-Forwarded-Encrypted: i=1; AJvYcCWdQi7iTXvMQSgZlKhDkWDumDgcCaxogHw3YbbjXLFYqp8lQmIy/KhB0jF9Sh8JRP3OFvWUSWBfWGjS@vger.kernel.org
X-Gm-Message-State: AOJu0YyimmLz2x3us8NVhqXZ9iuga5OW4Xu291PH+FO08cajpNKuus9M
	zVK2PfSA+IR9X6iMPMMSaSnK5J+ICSo4hsGUnrFvipOSG9E+oxbUwwex/p6EgSPCWzIs6CLcwIT
	MYevPpYuKfmto0ovTV1eqAj47ZBie+HrPZ7dBtLgmfrsLnwb7rxRIgbYwBYz3G+w8
X-Gm-Gg: ATEYQzwaWs1QpkBRuPGNqO1kmZ1rZy/cj0qE4nWv2m/oVg4HSQwJlMUeOdxiCHndgZA
	PabswehjdGs29HlDanFmBAAyEAGo/p679QvsdhCbIIZtXNdDWa00F6uKn3nYY8yMI6jfQTv+hHA
	8fpuGCx+B7zJyttErbKIS51CtO7iNZiruZ8hDirKN42mcAYvFOv4ez19S641UL7CznIlwUT6M3g
	l1ef51712gNY6buuos3+uQRqrYwynw1gErwhsQPWrMn9eYOsK5MXkNA5DtQ+zSZILHkqIS/nMJW
	Z7jQ9XW6lVvr/L6kvTDlLnZBjYCQHLhCf5G7v2334d73QlgSyRQYV90Lc1CJQqu+fCFTSxIZ1Pq
	TPfYikliJCXEArXUVQM78SFQ2JKZ6g994ihMS3KYNzyhWIWUkjY6I
X-Received: by 2002:a05:6a00:3021:b0:824:a22c:c6d7 with SMTP id d2e1a72fcca58-829a2e13d0cmr13144122b3a.18.1773142562723;
        Tue, 10 Mar 2026 04:36:02 -0700 (PDT)
X-Received: by 2002:a05:6a00:3021:b0:824:a22c:c6d7 with SMTP id d2e1a72fcca58-829a2e13d0cmr13144099b3a.18.1773142562203;
        Tue, 10 Mar 2026 04:36:02 -0700 (PDT)
Received: from hu-neersoni-hyd.qualcomm.com ([202.46.22.19])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-829a4637bb1sm12364659b3a.10.2026.03.10.04.35.58
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 10 Mar 2026 04:36:01 -0700 (PDT)
From: Neeraj Soni <neeraj.soni@oss.qualcomm.com>
To: ulf.hansson@linaro.org, robh@kernel.org, krzk+dt@kernel.org,
        conor+dt@kernel.org, andersson@kernel.org, konradybcio@kernel.org
Cc: linux-mmc@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, neeraj.soni@oss.qualcomm.com
Subject: [PATCH v6 0/3] Enable Inline crypto engine for kodiak and monaco
Date: Tue, 10 Mar 2026 17:05:54 +0530
Message-Id: <20260310113557.348502-1-neeraj.soni@oss.qualcomm.com>
X-Mailer: git-send-email 2.34.1
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMzEwMDEwMCBTYWx0ZWRfX+UTa+Iq9Fq9o
 hRpPJkLu7jDkWLFSLcVjcasFos3cANDh605eLsKSqSa5YrM4V8GMngYBYoMFj+Jil11FNbr5UL9
 AeWeTryp8V+VuqTEKhF7E8s24QbsLA9rmmYydDbeCQWfdEgnbasbSN4v7wzIjOEtXRINNceAQKi
 rDP9xVb2fA2DemabO26ySUZxKiCUS7iOE4SD8o0i4QyetKn8tIGqqMj/5E1LM3FJw+zptUsPRNT
 TWkIohKjzdcnD7lOycFnqByp8ljk0aFg26XNa5LO6tnm1oMINuCkzCSkxm3KKny2WTna8jd8si7
 S4NrRdb3m9Yun/lEmTO1oNTF2/T9PWzJ4UJcILSd51CvaDaU3QkzK5DE5EwvE9nJF/DuLE5eyKL
 IoG0vXnCuv+N5EPAolRwFrWRPg9xcdveMtF0BaaFZQyYlwTlgQv2tjxB2Hu6G5Ay+U6juS8Gb4Q
 oTCltB20GJWDIeicjcA==
X-Proofpoint-GUID: 7sfjHtlOgPitOz8QrImEHvovJQdIeqAQ
X-Authority-Analysis: v=2.4 cv=KLxXzVFo c=1 sm=1 tr=0 ts=69b00223 cx=c_pps
 a=m5Vt/hrsBiPMCU0y4gIsQw==:117 a=fChuTYTh2wq5r3m49p7fHw==:17
 a=Yq5XynenixoA:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=u7WPNUs3qKkmUXheDGA7:22 a=gowsoOTTUOVcmtlkKump:22 a=OaewepulewRRD3_FMPAA:9
 a=IoOABgeZipijB_acs4fv:22
X-Proofpoint-ORIG-GUID: 7sfjHtlOgPitOz8QrImEHvovJQdIeqAQ
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1143,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-03-10_02,2026-03-09_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 suspectscore=0 malwarescore=0 bulkscore=0 impostorscore=0 spamscore=0
 phishscore=0 priorityscore=1501 lowpriorityscore=0 adultscore=0 clxscore=1015
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2602130000 definitions=main-2603100100
X-Rspamd-Queue-Id: 491E424B9F4
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [0.84 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	MID_CONTAINS_FROM(1.00)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[qualcomm.com,reject];
	R_MISSING_CHARSET(0.50)[];
	R_DKIM_ALLOW(-0.20)[qualcomm.com:s=qcppdkim1,oss.qualcomm.com:s=google];
	R_SPF_ALLOW(-0.20)[+ip4:172.105.105.114:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TAGGED_FROM(0.00)[bounces-273492-lists,devicetree=lfdr.de];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	DKIM_TRACE(0.00)[qualcomm.com:+,oss.qualcomm.com:+];
	ASN(0.00)[asn:63949, ipnet:172.105.96.0/20, country:SG];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[neeraj.soni@oss.qualcomm.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	MIME_TRACE(0.00)[0:+];
	TO_DN_NONE(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	DBL_BLOCKED_OPENRESOLVER(0.00)[qualcomm.com:dkim,tor.lore.kernel.org:rdns,tor.lore.kernel.org:helo,oss.qualcomm.com:dkim,oss.qualcomm.com:mid];
	RCPT_COUNT_SEVEN(0.00)[10];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Action: no action

Document Inline Crypto Engine (ICE) handle for SDHC and add its device-tree
node to enable it for kodiak and monaco.

How this patch was tested:
- export ARCH=arm64
- export CROSS_COMPILE=aarch64-linux-gnu-
- make menuconfig
- make defconifg
- make DT_SCHEMA_FILES=Documentation/devicetree/bindings/mmc/sdhci-msm.yaml dt_binding_check
- make ARCH=arm64 CROSS_COMPILE=aarch64-linux-gnu- CHECK_DTBS=y dtbs

---
Changes in v6:
- Wrapped commit message for patch (1/3) as per Linux coding guidelines.
- Signed off the patch (3/3).

Changes in v5:
- Updated the constraint for SDHCI 'v4' vs rest to reflect the 'qcom,ice'
  constraint.

Changes in v4:
- Added a new patch (3/3) for device tree changes for Monaco SoC.
- Updated commit subject of cover letter to reflect "monaco".
- Removed the text description of constraints from "description:" for "qcom,ice" and
  wrapped the code.
- Corrected the schema code to reflect the constraint of "qcom,ice" usage properly.

Changes in v3:
- Described the purpose for phandle in "description:" for "qcom,ice".
- Re-added the "if: required:" description for "qcom,ice" with proper
  encoding.
- Corrected the uppercase for base address and reg address space for ICE DT node.

Changes in v2:
- Removed the "if: required:" description for "qcom,ice" dt-binding
  as the ICE node is optional.
- Corrected the ICE dt node entry according to the dt-binding description.
- Added test details.

Changes in v1:
- Updated the dt-binding for ICE node.
- Added the dt node for ICE for kodiak.

Neeraj Soni (3):
  dt-bindings: mmc: sdhci-msm: Add ICE phandle
  arm64: dts: qcom: kodiak: enable the inline crypto engine for SDHC
  arm64: dts: qcom: monaco: enable the inline crypto engine for SDHC

 .../devicetree/bindings/mmc/sdhci-msm.yaml    | 95 +++++++++++++------
 arch/arm64/boot/dts/qcom/kodiak.dtsi          |  9 ++
 arch/arm64/boot/dts/qcom/monaco.dtsi          |  9 ++
 3 files changed, 85 insertions(+), 28 deletions(-)

--
2.34.1


