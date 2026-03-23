Return-Path: <devicetree+bounces-279354-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id eIX7Bt+cwWmFUAQAu9opvQ
	(envelope-from <devicetree+bounces-279354-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Mon, 23 Mar 2026 21:04:47 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 714042FCD88
	for <lists+devicetree@lfdr.de>; Mon, 23 Mar 2026 21:04:46 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 704F93078C27
	for <lists+devicetree@lfdr.de>; Mon, 23 Mar 2026 19:42:47 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 12EC93C9EF6;
	Mon, 23 Mar 2026 19:42:47 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=hpe.com header.i=@hpe.com header.b="iSipXJrv"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-002e3701.pphosted.com (mx0a-002e3701.pphosted.com [148.163.147.86])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6909B34250E;
	Mon, 23 Mar 2026 19:42:45 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=148.163.147.86
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1774294967; cv=none; b=U32m5E1dywjVKXMAwnqcoREp/KRZRzm32MS6vNYpMs8dofETaxxAu9hd+GoaLZN2Nv08N8HJcJZuoOlrWZCni8Li8yKD/zlSJr6Fi0KThT7Z1cBqXi2uHIJZGpKsbMpnQPSLRWIAh89n7wrnNpFacD0Wz5uPPE2nexZ2pCi7HUE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1774294967; c=relaxed/simple;
	bh=BG52wroW/WHwvLgEB03z3snYbgpG+x0oFAzbJ362xBY=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
	 MIME-Version; b=VDA2WFUHJG1bIGVLdU5WVUVzs32P+smF2skSJ4j88hVxcSBba9sRlPEV48EELoWqBtyd5jj3Dmu8NA0fXhsjbwkh5TB5fIyy/UmgHx6CvHCqNClIMeT3+dhtf6hJIRtcO4n8VgRyHzXnqIKO+VSCgNRAxP6/QgmM0+oJXykS5PM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=hpe.com; spf=pass smtp.mailfrom=hpe.com; dkim=pass (2048-bit key) header.d=hpe.com header.i=@hpe.com header.b=iSipXJrv; arc=none smtp.client-ip=148.163.147.86
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=hpe.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=hpe.com
Received: from pps.filterd (m0150241.ppops.net [127.0.0.1])
	by mx0a-002e3701.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 62NHBbS63538076;
	Mon, 23 Mar 2026 19:42:30 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=hpe.com; h=cc
	:content-transfer-encoding:date:from:in-reply-to:message-id
	:mime-version:references:subject:to; s=pps0720; bh=7NbmZ1QKrXEl2
	r+K4tiwcyEFIcHYN37QKlPIMtIbx0A=; b=iSipXJrvTf/UWBn8mzKCzxGYdllmz
	GXSGDF2OYlSXtrD1R7T/wDc3WCijB/XIgypkM7Y8/LrVefSW7vZDE17XFtAK9InV
	ZS//9lw/rCK3IeG6Oef6IHgqJ/bQ/uLBhO7OKgsMfZMnp3V8sywK60E+THdPg2zj
	/UL/gT/q6TPY6gmKR4LDLHvla6BCKGGz/+x0e8UnuZK2TkxsoYazeHoCSsHBxDHG
	x+YcdtJFxWDf8p4eIvtGBbEuPPoESEoiYa5bczeGNC+b+UtXE5dFyQ8hDqJMQ+4j
	BOGe+9TCd/OsJdSC7xKMXGgrNsmGiSmTZOTv7xJIebBztr/6FuxRWsJ+Q==
Received: from p1lg14881.it.hpe.com (p1lg14881.it.hpe.com [16.230.97.202])
	by mx0a-002e3701.pphosted.com (PPS) with ESMTPS id 4d32faykv3-1
	(version=TLSv1.3 cipher=TLS_AES_256_GCM_SHA384 bits=256 verify=NOT);
	Mon, 23 Mar 2026 19:42:30 +0000 (GMT)
Received: from p1lg14886.dc01.its.hpecorp.net (unknown [10.119.18.237])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by p1lg14881.it.hpe.com (Postfix) with ESMTPS id 1FA13802BB3;
	Mon, 23 Mar 2026 19:42:30 +0000 (UTC)
Received: from hpe.com (unknown [16.231.227.39])
	by p1lg14886.dc01.its.hpecorp.net (Postfix) with ESMTP id A27EE810AF6;
	Mon, 23 Mar 2026 19:42:29 +0000 (UTC)
From: nick.hawkins@hpe.com
To: Catalin Marinas <catalin.marinas@arm.com>, Will Deacon <will@kernel.org>
Cc: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>, Jean-Marie Verdun <verdun@hpe.com>,
        devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
        linux-kernel@vger.kernel.org, Nick Hawkins <nick.hawkins@hpe.com>
Subject: [PATCH v2 2/3] arm64: Kconfig: Add ARCH_HPE_GSC platform
Date: Mon, 23 Mar 2026 14:42:22 -0500
Message-Id: <20260323194223.683487-3-nick.hawkins@hpe.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20260323194223.683487-1-nick.hawkins@hpe.com>
References: <20260323194223.683487-1-nick.hawkins@hpe.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Proofpoint-ORIG-GUID: SztAbvx7loym9CNYxY-pARWcbR_1LesO
X-Proofpoint-GUID: SztAbvx7loym9CNYxY-pARWcbR_1LesO
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMzIzMDE0NSBTYWx0ZWRfX8dZGn8JhO4pI
 r7AJbyMcv0jDfC9vXFZyOjSGr7t8Ukr2jcgcb9SKNhjGLspuqsPcDRzZJdKT7RngsTOAqnl6SDC
 bG+aG3nrtAvzbYcODd/pScoWAJEiY3Ri2Dse7VDlZlPytPP+2Im1zgE5hPUz2nyEAmveIgu244R
 dl3pF39iHzB7697pUSsDHE7doKLjQ6xvr2/OIe3jP2ngq5DQBuFo7J/0LEIltrTPinRo/faihgW
 nUurqOisTZG4DN6dDke7dzCMuQmxDsl+nH9vMMqijkjXmDapy86hbAPvutAlDD7gjqPQ8QqqQlB
 uaCi62+e/+hzocKf3b6aRnz9uVccVSjH7mYpnubioZ/OJaW30D0PkvC5c6T8l4BXeCWlFU7D2Mm
 hkJJkXvVD93HudavIt/uCck+Z9Je+eurHkm2LAiVAyEpAcGdMHaZrYK8zliPe0Jx1+GIwn4xW6r
 d4cUiLuI2EoPdUgTx1Q==
X-Authority-Analysis: v=2.4 cv=ZdEQ98VA c=1 sm=1 tr=0 ts=69c197a6 cx=c_pps
 a=FAnPgvRYq/vnBSvlTDCQOQ==:117 a=FAnPgvRYq/vnBSvlTDCQOQ==:17
 a=Yq5XynenixoA:10 a=VkNPw1HP01LnGYTKEx00:22 a=gQcMVamqm3wCPoSYhaRC:22
 a=_ZmgHqWwjZUDpi_pur5s:22 a=MvuuwTCpAAAA:8 a=N7h5HMGqC5NSTC7Z1HcA:9
X-HPE-SCL: -1
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1143,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-03-23_04,2026-03-23_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 phishscore=0 clxscore=1011 suspectscore=0 malwarescore=0 spamscore=0
 lowpriorityscore=0 priorityscore=1501 bulkscore=0 impostorscore=0
 adultscore=0 classifier=typeunknown authscore=0 authtc= authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.22.0-2603050001
 definitions=main-2603230145
X-Spamd-Result: default: False [0.84 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_CONTAINS_FROM(1.00)[];
	DMARC_POLICY_ALLOW(-0.50)[hpe.com,reject];
	R_MISSING_CHARSET(0.50)[];
	R_DKIM_ALLOW(-0.20)[hpe.com:s=pps0720];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_FROM(0.00)[bounces-279354-lists,devicetree=lfdr.de];
	MIME_TRACE(0.00)[0:+];
	DKIM_TRACE(0.00)[hpe.com:+];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	FROM_NO_DN(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[hpe.com:dkim,hpe.com:email,hpe.com:mid,sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[nick.hawkins@hpe.com,devicetree@vger.kernel.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	TAGGED_RCPT(0.00)[devicetree,dt];
	RCPT_COUNT_SEVEN(0.00)[10];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Queue-Id: 714042FCD88
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

From: Nick Hawkins <nick.hawkins@hpe.com>

Add the ARCH_HPE menuconfig group and ARCH_HPE_GSC config for the
HPE GSC ARM64 BMC SoC.

Signed-off-by: Nick Hawkins <nick.hawkins@hpe.com>
---
 arch/arm64/Kconfig.platforms | 23 +++++++++++++++++++++++
 1 file changed, 23 insertions(+)

diff --git a/arch/arm64/Kconfig.platforms b/arch/arm64/Kconfig.platforms
index 54eb1d7fd419..4bbc27bb9b7b 100644
--- a/arch/arm64/Kconfig.platforms
+++ b/arch/arm64/Kconfig.platforms
@@ -168,6 +168,29 @@ config ARCH_HISI
 	help
 	  This enables support for Hisilicon ARMv8 SoC family
 
+
+menuconfig ARCH_HPE
+	bool "HPE SoC Support"
+	help
+	  This enables support for HPE ARM-based SoC chips used
+	  on HPE servers.  HPE SoCs serve as the Baseboard
+	  Management Controller (BMC) providing out-of-band server
+	  management.
+
+if ARCH_HPE
+
+config ARCH_HPE_GSC
+	bool "HPE GSC SoC"
+	select PINCTRL
+	select GENERIC_IRQ_CHIP
+	select CLKSRC_MMIO
+	help
+	  Support for the HPE GSC ARM64 BMC SoC used on HPE servers.
+	  The GSC provides hardware management, power control, remote
+	  access, and server health monitoring capabilities for HPE
+	  Gen12 and later server platforms.
+
+endif
 config ARCH_KEEMBAY
 	bool "Keem Bay SoC"
 	help
-- 
2.34.1


