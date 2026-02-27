Return-Path: <devicetree+bounces-269163-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id sO/1FNZwoWm6swQAu9opvQ
	(envelope-from <devicetree+bounces-269163-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Fri, 27 Feb 2026 11:24:22 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [172.105.105.114])
	by mail.lfdr.de (Postfix) with ESMTPS id C4D681B5F62
	for <lists+devicetree@lfdr.de>; Fri, 27 Feb 2026 11:24:21 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 9D83B301588B
	for <lists+devicetree@lfdr.de>; Fri, 27 Feb 2026 10:24:20 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 267B6393DD4;
	Fri, 27 Feb 2026 10:24:18 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="pUFKB7p8";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="hDdA8QoL"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F337928A72F
	for <devicetree@vger.kernel.org>; Fri, 27 Feb 2026 10:24:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772187858; cv=none; b=DV2V2d3JWeixrlX/jKcQFMuTdSz3MVujSbK5nkUhDs4xznQOCCGNJoSR+Bbv7L/SHyfXYEdE6ZuueP2ACOq3D3ltPYoq5VOaCbat2AIeRGNqF1ThBfLFQYHGMEJw8nRyNbnsVJHpRP2k4xwdHf4ughdDxWd32gB+DF0c9GsaHio=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772187858; c=relaxed/simple;
	bh=UQk6T/e+M8fBl5GMK7VHLBD6ptf7rBCi43/Bq11Knjc=;
	h=From:To:Cc:Subject:Date:Message-Id:MIME-Version; b=eY75anrUczY8AP69y6SyZWX/HcEzhFzDhMBXyrSj9/6eyJryS1OF9XXhjFsMMoctKXKddTTlxMmBk8GuH6x6xX5utJn5t/A1ObtXcuerSQLWC89z4CzmQDSBBgoQBLXpC/SUnNaPaMnmKCLNkKM7RKEgK2cSQ+DLVTvbaqYQ4gU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=pUFKB7p8; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=hDdA8QoL; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279864.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 61RACEM43762550
	for <devicetree@vger.kernel.org>; Fri, 27 Feb 2026 10:24:16 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:date:from:message-id:mime-version
	:subject:to; s=qcppdkim1; bh=fa/mxCJ0sSQqgRriAvb2m9yZUEtnUivnYGU
	Unx2Zovg=; b=pUFKB7p89uBB31igIbD4+wm6loHS6xtb6/744L2TI4VrEeHWYHI
	YHNlcUVliZyJLxsJWWCg6jblNNh/4cbCcCPm1Gr7BYEdbe484sfxgwtqT3nqcUCt
	q4afxyZkKQ7kaU/QzuyMzpf6bSBgaJgzaQvgSAk2t2fGIpJ8XcmZWGActNsC0+Lm
	+cI8OrkwpeB0mcaFP5CbgW1oZfmsnwn3FIAAJVEQDv8OwZ3Nvv/Hz6Vq+V/osCcc
	RIOBAqv86o4QO0+yW1gCH0eyE4Phyu7i7hcSdGsIHtEDEEylX9vJB10bKd7dol3L
	kMyoc/xdOTTwgfOm4CBpcTc8+TSXCNG9KJg==
Received: from mail-pf1-f198.google.com (mail-pf1-f198.google.com [209.85.210.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4cjt7yb5st-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Fri, 27 Feb 2026 10:24:16 +0000 (GMT)
Received: by mail-pf1-f198.google.com with SMTP id d2e1a72fcca58-824a2df507eso5964791b3a.2
        for <devicetree@vger.kernel.org>; Fri, 27 Feb 2026 02:24:16 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1772187856; x=1772792656; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=fa/mxCJ0sSQqgRriAvb2m9yZUEtnUivnYGUUnx2Zovg=;
        b=hDdA8QoLfrolcSCJmzGluNPy+htqUNyLAYvRhw1nVklE9SgSfxHEO5Bi2ZAgaK+mB2
         GsKsQSTG17+2sNelghg8ZmPUI+PoeF3zIzikUoPwxEDQ6e0KGfvlaYp3CtgHfdJXvekQ
         pPD7QbgdpcyUAGrnm/Irp1ZKWdS8hNRqb+yr6tCoMGUr7vhngYuEwqpRUmCJec+LiBHJ
         jH/sDdWzLcT+gFFnApRetOj/qC4tlwJ3P2iRAZseNB1rP02vm7dhPcZLFGtcWejtpVAF
         A33m5URk6jrjTBNL2I34FNfKNBqDAF4G7fshhmFdh47iw5CY9BETv7YlftRI3bMU0+zg
         Zx4g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1772187856; x=1772792656;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=fa/mxCJ0sSQqgRriAvb2m9yZUEtnUivnYGUUnx2Zovg=;
        b=ftm14lKmSwU9QG13ToQt5vLVpEj8PbI/mekOiYU6sa/tVZpZUWe3mhrfKI8OBY/QJx
         9aNncT+pDwYeQQOOppF9cQlZacteAbJiC6vueHHNft19BQvqwLvFs1NisXBmIG7owvsl
         Sco7APL6lIbuGpkeAwaSUpnOeLLaR2QgyJo3ax8gufGBlRy5S38pxqR8qRCbBEC0a2Xd
         CbKWZDr3v5BwiZdIV8gu5Y3x3ncWyhKoJGyAVvduxXNuyPN6gCCRSPVkYIaPgGkTD5lO
         Trd6LwGDmLFCTC7gWYTI4fvwp7O49bS79jGagSdue0X/tc+NVblVwMLivnelw4AdIcKn
         R9/A==
X-Forwarded-Encrypted: i=1; AJvYcCU7o4SCd27Ptp7vJwn2a0nO7kFOwaCjAisnnE8CW3CHW7AKBwXhaKLCLBi/iv9Ggan7ryMk4GH56oNR@vger.kernel.org
X-Gm-Message-State: AOJu0YwosQdgKsccVx12CrrJW3+BCoCa//w3mHX1S1sfQgbjDewSlpsh
	ZKZkjEdfT8DAvzbR8xE2UyS+rJJlL57d5DJzvoVNRS1NZS5SxkvMvoVNp/osFFgnu3/RbVKyBma
	ofAU3sBNs35JjVz9UQjkzyKj4l1J6rO39eFcLIBSyN2zNoHz+D6kLSEa17t4LK7rs
X-Gm-Gg: ATEYQzxAZXanjdndC1b7gKbhvPqdGhopsLvqhEtaBThuBB7C0Tc5FEiS9zlfBV0SApj
	HgKoOYZUtRyKR1z6xwqrCIkzlbZBUsUtKbuz4jEU/PRxcOuKfc0w2PhF4nS+xZMl8HjMLP52Bh6
	V/8nwD2B6bnVDYB8KExO7d1XY9ZdQj1vM355QN8yPnMoz75115X6Lu4UDKcx6XT0BsWQiGoGbmy
	8ofU1l53Lrmq1PMKbzF1oUqc3zH7W3VlRC1Cd9l3Iu+hTU6Kyh18caYM1u2Jh3rYLWNJk07OJN4
	KuUtNbYERq4rEMpvgPYoyfEVSWef0YIOQ4gc+jd3TkRcEpxNUatMQOxpKizYxMmaAG8Q6nXlygI
	z9XrvtoewnvftILhVGp225iV0PhdAxVUSYlVy5nuR4Yg7u3y/iBm5Ytpl
X-Received: by 2002:a05:6a00:4c84:b0:81f:4963:4967 with SMTP id d2e1a72fcca58-8274da13386mr2428522b3a.57.1772187855542;
        Fri, 27 Feb 2026 02:24:15 -0800 (PST)
X-Received: by 2002:a05:6a00:4c84:b0:81f:4963:4967 with SMTP id d2e1a72fcca58-8274da13386mr2428488b3a.57.1772187854951;
        Fri, 27 Feb 2026 02:24:14 -0800 (PST)
Received: from hu-mchunara-hyd.qualcomm.com ([202.46.22.19])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-8273a0299d9sm5350234b3a.51.2026.02.27.02.24.10
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 27 Feb 2026 02:24:14 -0800 (PST)
From: Monish Chunara <monish.chunara@oss.qualcomm.com>
To: andersson@kernel.org, konradybcio@kernel.org, robh@kernel.org,
        krzk+dt@kernel.org, conor+dt@kernel.org,
        dmitry.baryshkov@oss.qualcomm.com, mani@kernel.org
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, sarthak.garg@oss.qualcomm.com,
        pradeep.pragallapati@oss.qualcomm.com, nitin.rawat@oss.qualcomm.com,
        Monish Chunara <monish.chunara@oss.qualcomm.com>
Subject: [PATCH V1 0/2] arm64: dts: qcom: lemans-evk: Update SDHC storage support via overlays
Date: Fri, 27 Feb 2026 15:54:03 +0530
Message-Id: <20260227102405.2339544-1-monish.chunara@oss.qualcomm.com>
X-Mailer: git-send-email 2.34.1
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Proofpoint-ORIG-GUID: DyFmqrwlk42KZnQww5UIsYqfNp3hnA8u
X-Authority-Analysis: v=2.4 cv=N7Mk1m9B c=1 sm=1 tr=0 ts=69a170d0 cx=c_pps
 a=m5Vt/hrsBiPMCU0y4gIsQw==:117 a=fChuTYTh2wq5r3m49p7fHw==:17
 a=HzLeVaNsDn8A:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=u7WPNUs3qKkmUXheDGA7:22 a=DJpcGTmdVt4CTyJn9g5Z:22 a=A2BV8qJQPfFdF5fhguwA:9
 a=IoOABgeZipijB_acs4fv:22
X-Proofpoint-GUID: DyFmqrwlk42KZnQww5UIsYqfNp3hnA8u
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMjI3MDA5MCBTYWx0ZWRfXyc2cctvU/wo/
 tGiD30GhGeUc/unw/CIAM5HMwSnivAyx4zDCFOeRzL7XBh2DwhKBMcSPbtcOKsGmjQyeYeTHkLo
 NosXomYMDB3ocLVRl2a8d2fLnn8cAzgMloPaPOG2/Mvyltne0W0JFVNR49j0L//2WFXEmnt9y7f
 xLaKO2gWDtPNLXSQt2wm7aCydxOaJLw2JEoApPGUmXCwaKUnZA8rCkRsFxm9Yii3/o6y2X3uu0Q
 Wu0yLrqbVdPrnlzYEzRHDm+0bTsk6AFJ/uGq27riAM7BbuNxbw7JBFSVhlTXlRVNduSp7yZrlJs
 0iFdqZAxxKGdwSGWA6F3vAmQQ7/Wr2EuKP+SD8Da7HbJwhane6FJssUJK/G42AR3TnYoEZmifLq
 BzdmP0tEmBOznOai7fBMi5e2BYQMB8VrVT+Y0Xw06w5l5lXmGUgym9OBX8d8L4hzwSg/nGwwbOs
 oq9I6Txp+5ehaWWqu1w==
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-02-27_01,2026-02-26_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 malwarescore=0 priorityscore=1501 clxscore=1011 suspectscore=0 spamscore=0
 adultscore=0 bulkscore=0 phishscore=0 impostorscore=0 lowpriorityscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2602130000 definitions=main-2602270090
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.66 / 15.00];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_CONTAINS_FROM(1.00)[];
	DMARC_POLICY_ALLOW(-0.50)[qualcomm.com,reject];
	R_MISSING_CHARSET(0.50)[];
	R_SPF_ALLOW(-0.20)[+ip4:172.105.105.114:c];
	R_DKIM_ALLOW(-0.20)[qualcomm.com:s=qcppdkim1,oss.qualcomm.com:s=google];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-269163-lists,devicetree=lfdr.de];
	FORGED_SENDER_MAILLIST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[tor.lore.kernel.org:helo,tor.lore.kernel.org:rdns,qualcomm.com:dkim,oss.qualcomm.com:mid,oss.qualcomm.com:dkim];
	MIME_TRACE(0.00)[0:+];
	FROM_HAS_DN(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[14];
	FROM_NEQ_ENVFROM(0.00)[monish.chunara@oss.qualcomm.com,devicetree@vger.kernel.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	NEURAL_HAM(-0.00)[-1.000];
	DKIM_TRACE(0.00)[qualcomm.com:+,oss.qualcomm.com:+];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.105.96.0/20, country:SG];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Queue-Id: C4D681B5F62
X-Rspamd-Action: no action

This series updates the device tree configuration for the LeMans EVK
board to support dynamic selection between SD card and eMMC storage.

The LeMans EVK hardware supports either an SD card or eMMC, but the
interfaces are mutually exclusive as they share the same controller and
resources. Previously, SD card support was hardcoded in the main device
tree, preventing easy switching to eMMC.

This series refactors the SDHC configuration by:

1. Moving the existing SD card configuration into a dedicated overlay.
2. Adding a new overlay to support eMMC.
3. Updating the common SDHC node in the SoC dtsi to include necessary
resources (clocks, register ranges) required by the eMMC configuration.

This allows the bootloader to apply the appropriate overlay based on the
desired storage medium.

Monish Chunara (2):
  arm64: dts: qcom: lemans-evk: Move SD card support to overlay
  arm64: dts: qcom: lemans-evk: Add SDHCI support for eMMC via overlay

 arch/arm64/boot/dts/qcom/Makefile             |  6 ++
 arch/arm64/boot/dts/qcom/lemans-evk-emmc.dtso | 64 +++++++++++++++++++
 .../boot/dts/qcom/lemans-evk-sd-card.dtso     | 25 ++++++++
 arch/arm64/boot/dts/qcom/lemans-evk.dts       | 16 -----
 arch/arm64/boot/dts/qcom/lemans.dtsi          | 10 ++-
 5 files changed, 102 insertions(+), 19 deletions(-)
 create mode 100644 arch/arm64/boot/dts/qcom/lemans-evk-emmc.dtso
 create mode 100644 arch/arm64/boot/dts/qcom/lemans-evk-sd-card.dtso

-- 
2.34.1


