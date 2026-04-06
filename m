Return-Path: <devicetree+bounces-284957-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id qIVLMcPF02mqlgcAu9opvQ
	(envelope-from <devicetree+bounces-284957-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Mon, 06 Apr 2026 16:40:03 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [172.232.135.74])
	by mail.lfdr.de (Postfix) with ESMTPS id 8D3913A43F9
	for <lists+devicetree@lfdr.de>; Mon, 06 Apr 2026 16:40:03 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id 36BDF300B593
	for <lists+devicetree@lfdr.de>; Mon,  6 Apr 2026 14:39:53 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id EC09538643C;
	Mon,  6 Apr 2026 14:39:40 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=hpe.com header.i=@hpe.com header.b="La0tRLku"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-002e3701.pphosted.com (mx0b-002e3701.pphosted.com [148.163.143.35])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7B97F3859DD;
	Mon,  6 Apr 2026 14:39:39 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=148.163.143.35
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1775486380; cv=none; b=hH1A9m/E/CZre0AjPXCiZVOuW/43mxOrYoe+9I1oYgF/cLvL9CdgkU5HlzJDBqZ2IkNNnS9t8HniMGrc89ijfzGLCHFXBiQOHyOBXoEqS9Lif3m+mYp7USH9bLRNJdnBYhYHV+CfFdGMswgcjgNuIcVC72uL58d9XNqVyIarRs4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1775486380; c=relaxed/simple;
	bh=xR1EnwtoZ9ekokqCZygUHqY+tj36m2Au19EV8HNZDzY=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=DTlS88eDi/lEG+pwTSlt1CyDnu81QxPoIA5/HXuqxMbnKFKwdgizCZQ5cSqOuOkGQNvBqBsIh73bsq+UGga8cLNmCiSxap4dX7ju4d1KhcggPViOboaNzaagm3a13t+rhnCpP68XydDFWiMNX/iivoYOUOJMysAI/9qIXlSZgj0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=hpe.com; spf=pass smtp.mailfrom=hpe.com; dkim=pass (2048-bit key) header.d=hpe.com header.i=@hpe.com header.b=La0tRLku; arc=none smtp.client-ip=148.163.143.35
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=hpe.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=hpe.com
Received: from pps.filterd (m0148664.ppops.net [127.0.0.1])
	by mx0b-002e3701.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 636CKjip1306974;
	Mon, 6 Apr 2026 14:39:25 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=hpe.com; h=cc
	:content-transfer-encoding:date:from:in-reply-to:message-id
	:mime-version:references:subject:to; s=pps0720; bh=ja2Zw7SQIo+uZ
	yNvquQPR3IByzGhbnlQCQbJj+JcdNQ=; b=La0tRLkupMrfA3u/w65lbX24YeYNx
	vjdcHvwAAZ1L3BQ3gf2BOet97rregrGa5a/hrXUFvSN/ih+8BoEt73rKXZq9rbVI
	wevbSLzCa/eOQtpq/EgBJ/0R4Qw9lppZboKEEwu+Ofbj6oK6zSQXtcemBZ3fWMmb
	V4iu/Uppu6pl9GVT848XkpnFT4P2akQvfG+XT6fEljJrxLNt9YqqrmS/T+3uRhbF
	yEqPQ4enShDwp3ZA1Lo2gWzHC3/ysSIMV43q6qIBHwN4NwGMWRweab93F81wnZkL
	CTylAnMAaImOVr9jAfO/rSIJ6gpPG7sCB8alWVl3jlwqs1BlxcmK/f51g==
Received: from p1lg14880.it.hpe.com (p1lg14880.it.hpe.com [16.230.97.201])
	by mx0b-002e3701.pphosted.com (PPS) with ESMTPS id 4dc8nc428b-1
	(version=TLSv1.3 cipher=TLS_AES_256_GCM_SHA384 bits=256 verify=NOT);
	Mon, 06 Apr 2026 14:39:24 +0000 (GMT)
Received: from p1lg14885.dc01.its.hpecorp.net (unknown [10.119.18.236])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by p1lg14880.it.hpe.com (Postfix) with ESMTPS id 3AB22801722;
	Mon,  6 Apr 2026 14:39:17 +0000 (UTC)
Received: from hpe.com (unknown [16.231.227.39])
	by p1lg14885.dc01.its.hpecorp.net (Postfix) with ESMTP id 3EFD8807BAD;
	Mon,  6 Apr 2026 14:39:17 +0000 (UTC)
From: nick.hawkins@hpe.com
To: catalin.marinas@arm.com, will@kernel.org, robh@kernel.org,
        krzk+dt@kernel.org, conor+dt@kernel.org
Cc: nick.hawkins@hpe.com, linux-arm-kernel@lists.infradead.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>
Subject: [PATCH v4 2/4] arm64: Kconfig: Add ARCH_HPE platform
Date: Mon,  6 Apr 2026 14:38:19 +0000
Message-ID: <20260406143821.1843621-3-nick.hawkins@hpe.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20260406143821.1843621-1-nick.hawkins@hpe.com>
References: <20260406143821.1843621-1-nick.hawkins@hpe.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Proofpoint-GUID: q9vpVQT4_a0RW9CIx06lR2ROrwb5wIIj
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwNDA2MDE0NCBTYWx0ZWRfX3z2ARCe+rBqZ
 PuVF7pswuHFyJaqOFK/LSrTBUi9RS6HjlcFDwMSqL2wY3m4a6/K66lSdcaPQF786x2jHdEJX0Km
 J/rUcvtWwFalaiLMmlEGq/ZyB/5dECJv3iTxtbZ8UgwTujXiGvPWVXIag7wVSaxTgTNkvxGBbsb
 DJuRTIEl3Iu4+2P0Vofh1lvMmTq8qs6xJCrg1XYfwNsdjM+A07YO2L5Mvq1+JBNBURSbN97hUOi
 FZwABuw42YZKOI1HfIkoQx+6PktaYVVhflLT0TVW+FjZKoO4kAo/VmAXJPLXDL6Ve6Yg9KIKUnZ
 HEXDf4HyFfSCjRB73kK+yCCNMkG4jq0TupsQl/58HbQozxMkKTp4nnJThwZAsF9meDlYGWPZWtg
 0i49PO/AUdnHyzln+DkMu0Jqs+jbFhaKiVx7r7E8gc2ZocCe0+vBQjxHsXNK9PBFEqZ71GkKxOY
 ZdNOO7or0Xtzq1S6EZA==
X-Proofpoint-ORIG-GUID: q9vpVQT4_a0RW9CIx06lR2ROrwb5wIIj
X-Authority-Analysis: v=2.4 cv=cPHtc1eN c=1 sm=1 tr=0 ts=69d3c59c cx=c_pps
 a=A+SOMQ4XYIH4HgQ50p3F5Q==:117 a=A+SOMQ4XYIH4HgQ50p3F5Q==:17
 a=A5OVakUREuEA:10 a=VkNPw1HP01LnGYTKEx00:22 a=gQcMVamqm3wCPoSYhaRC:22
 a=NCWKwCw8Xy9Og0ibBRsL:22 a=MvuuwTCpAAAA:8 a=EUspDBNiAAAA:8
 a=ExUFRefvzqp9aA4d7S4A:9
X-HPE-SCL: -1
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1143,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-04-06_03,2026-04-03_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 impostorscore=0 adultscore=0 lowpriorityscore=0 suspectscore=0 spamscore=0
 priorityscore=1501 phishscore=0 clxscore=1015 malwarescore=0 bulkscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2603050001 definitions=main-2604060144
X-Spamd-Result: default: False [0.84 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_CONTAINS_FROM(1.00)[];
	DMARC_POLICY_ALLOW(-0.50)[hpe.com,reject];
	R_MISSING_CHARSET(0.50)[];
	R_DKIM_ALLOW(-0.20)[hpe.com:s=pps0720];
	R_SPF_ALLOW(-0.20)[+ip4:172.232.135.74:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_FROM(0.00)[bounces-284957-lists,devicetree=lfdr.de];
	MIME_TRACE(0.00)[0:+];
	DKIM_TRACE(0.00)[hpe.com:+];
	ASN(0.00)[asn:63949, ipnet:172.232.128.0/19, country:SG];
	FROM_NO_DN(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[hpe.com:dkim,hpe.com:email,hpe.com:mid,qualcomm.com:email,sto.lore.kernel.org:helo,sto.lore.kernel.org:rdns];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[nick.hawkins@hpe.com,devicetree@vger.kernel.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	TAGGED_RCPT(0.00)[devicetree,dt];
	RCPT_COUNT_SEVEN(0.00)[10];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Queue-Id: 8D3913A43F9
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

From: Nick Hawkins <nick.hawkins@hpe.com>

From: Nick Hawkins <nick.hawkins@hpe.com>

Add the ARCH_HPE config for HPE ARM64 BMC SoCs to Kconfig.platforms.

Signed-off-by: Nick Hawkins <nick.hawkins@hpe.com>
Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>
---
 arch/arm64/Kconfig.platforms | 11 +++++++++++
 1 file changed, 11 insertions(+)

diff --git a/arch/arm64/Kconfig.platforms b/arch/arm64/Kconfig.platforms
index 54eb1d7fd419..b4217809c774 100644
--- a/arch/arm64/Kconfig.platforms
+++ b/arch/arm64/Kconfig.platforms
@@ -168,6 +168,17 @@ config ARCH_HISI
 	help
 	  This enables support for Hisilicon ARMv8 SoC family
 
+config ARCH_HPE
+	bool "HPE SoC Support"
+	select PINCTRL
+	select GENERIC_IRQ_CHIP
+	select CLKSRC_MMIO
+	help
+	  This enables support for HPE ARM-based SoC chips used
+	  on HPE servers. HPE SoCs serve as the Baseboard
+	  Management Controller (BMC) providing out-of-band server
+	  management.
+
 config ARCH_KEEMBAY
 	bool "Keem Bay SoC"
 	help
-- 
2.34.1

