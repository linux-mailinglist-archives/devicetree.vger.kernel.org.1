Return-Path: <devicetree+bounces-284956-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id UA0GC9PF02mqlgcAu9opvQ
	(envelope-from <devicetree+bounces-284956-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Mon, 06 Apr 2026 16:40:19 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [IPv6:2600:3c04:e001:36c::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 9AD283A440F
	for <lists+devicetree@lfdr.de>; Mon, 06 Apr 2026 16:40:18 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 9E7A73017055
	for <lists+devicetree@lfdr.de>; Mon,  6 Apr 2026 14:39:49 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 00A0C37E2EA;
	Mon,  6 Apr 2026 14:39:40 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=hpe.com header.i=@hpe.com header.b="P19K56e0"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-002e3701.pphosted.com (mx0b-002e3701.pphosted.com [148.163.143.35])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9C4E2385535;
	Mon,  6 Apr 2026 14:39:38 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=148.163.143.35
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1775486379; cv=none; b=QEVoXbqg+Qf7frOiv//VtIPxoe6NSXEepBszY6ReYwwxitCoqZEfsbzYVgs0pGcu94MxbbiXxeeNwMV11vvaQmRwajZZ1ONE21PegvzTyAZBumS/PFDNt0JW/o1oh05lvqqy0xSrUCLF0ROTE78l2kw7kfLO9zcLzBs8J+CRslU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1775486379; c=relaxed/simple;
	bh=rPrRRZOyGWTd+S0qGJJO6VQT1dxHV7fMFE/bPc5QYhQ=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=mwq00FYJf5lMIxL1sJWEwKJ2zjWCiK7ZRW2ULIqonwAyKJ0VGdwrNtG6rSiq44EGZzT4s2OUDH++Qj1D5NNNR4WKC60M0A9BuUXkxiAS7XR2wgz2bP1D9K59/WmfD42hxD5yQrLnwW0RxkEX8rkwGtaka+bXdngvr0KqQbvpNkQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=hpe.com; spf=pass smtp.mailfrom=hpe.com; dkim=pass (2048-bit key) header.d=hpe.com header.i=@hpe.com header.b=P19K56e0; arc=none smtp.client-ip=148.163.143.35
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=hpe.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=hpe.com
Received: from pps.filterd (m0134424.ppops.net [127.0.0.1])
	by mx0b-002e3701.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 636CLwjH1575795;
	Mon, 6 Apr 2026 14:39:26 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=hpe.com; h=cc
	:content-transfer-encoding:date:from:in-reply-to:message-id
	:mime-version:references:subject:to; s=pps0720; bh=dSdyM7hl7sg1/
	Z6iB5/mSRIZy42Bhi9AwwpXXv3x3hM=; b=P19K56e0LF88gmGcxjEoTXRl4tqni
	OoxgEc5zLxlyolI98YZ5GnX0eI5uXFZ3iQcNZSVhlzOCSwoSiTP/0FIWiCO+Esue
	71zHWNEkX3tpK3QuASA37FFA4gfT3Otgo9TzjmLxdtlremqb7ZUlxqjUi3weZei3
	crCa9rxf2RkY0KSgcae5WFQDGmPGCTwn+rgz0iSbsU0UXd17t6mKr20Qt7GcNJ7f
	u+JHqkS0dVxiP8ax4r+dg1CZN79tAjrk+iKJsppPn0f+HvWJKqbb3z04pQ6ISXFE
	yWUZz8sZ/uTThWG0EzYnqhQqfP5bVZ+uoo5Zr6+avuM0iRqIeV8f9HmZw==
Received: from p1lg14879.it.hpe.com (p1lg14879.it.hpe.com [16.230.97.200])
	by mx0b-002e3701.pphosted.com (PPS) with ESMTPS id 4dcb03tjer-1
	(version=TLSv1.3 cipher=TLS_AES_256_GCM_SHA384 bits=256 verify=NOT);
	Mon, 06 Apr 2026 14:39:26 +0000 (GMT)
Received: from p1lg14885.dc01.its.hpecorp.net (unknown [10.119.18.236])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by p1lg14879.it.hpe.com (Postfix) with ESMTPS id E599BD1D6;
	Mon,  6 Apr 2026 14:39:25 +0000 (UTC)
Received: from hpe.com (unknown [16.231.227.39])
	by p1lg14885.dc01.its.hpecorp.net (Postfix) with ESMTP id 8232F806B59;
	Mon,  6 Apr 2026 14:39:25 +0000 (UTC)
From: nick.hawkins@hpe.com
To: catalin.marinas@arm.com, will@kernel.org, robh@kernel.org,
        krzk+dt@kernel.org, conor+dt@kernel.org
Cc: nick.hawkins@hpe.com, linux-arm-kernel@lists.infradead.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Subject: [PATCH v4 4/4] arm64: defconfig: Enable ARCH_HPE
Date: Mon,  6 Apr 2026 14:38:21 +0000
Message-ID: <20260406143821.1843621-5-nick.hawkins@hpe.com>
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
X-Proofpoint-ORIG-GUID: R5EMfhhS6me78FPnL-nNkY7DwEcODuGR
X-Proofpoint-GUID: R5EMfhhS6me78FPnL-nNkY7DwEcODuGR
X-Authority-Analysis: v=2.4 cv=KOhXzVFo c=1 sm=1 tr=0 ts=69d3c59e cx=c_pps
 a=5jkVtQsCUlC8zk5UhkBgHg==:117 a=5jkVtQsCUlC8zk5UhkBgHg==:17
 a=A5OVakUREuEA:10 a=VkNPw1HP01LnGYTKEx00:22 a=gQcMVamqm3wCPoSYhaRC:22
 a=3haJ9R1Aw3gUfsUHDaCR:22 a=MvuuwTCpAAAA:8 a=wZsj7YBYw0PqTYP2OA8A:9
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwNDA2MDE0NCBTYWx0ZWRfX4uTIzwC5NDs7
 tuGSEI+Ua8Tu93AhvGyfVWOJWZInMT91HwYxXFOrx9TF5XNkLEOsC6pb2iBVbegurzH6bkQAo5B
 RCc8epJycZhFibpVm1J1sfKlkWCcgD9kiaNj2cE7i0p2EsVyI9AamPalAoq9ES0MJhD+6po0cQe
 8xbdRR0ZRGElnUfSnu0bTI4IiwjVlq1miuUQPeOoeQX/Tv8lZ5wF+nDilNtmushC/X8S8h2wEnK
 dymNoaHy76mnDwmJZuXIAMlBb6loBILs6XG5TWxCWuBDuyFMi9/Phv09fIY90kHtX8F+LfXhFea
 W/SZZxslwYW60UkPRJB5SaapNeQJWW6Jpg6zsWy8fkATlBav2J7603nYkG7MjETYtBOlemgtrRU
 z3iY6u4kTulo7OjeVxKNkrDxzuyQC/+1o85Pz9/m/oR5Oc+iSokZ3Ww8LJYJb9WNZc05F4QbJ+S
 QSVNPcdnuynOX+sN+pw==
X-HPE-SCL: -1
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1143,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-04-06_03,2026-04-03_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 adultscore=0 phishscore=0 malwarescore=0 spamscore=0 priorityscore=1501
 clxscore=1015 bulkscore=0 impostorscore=0 lowpriorityscore=0 suspectscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2603050001 definitions=main-2604060144
X-Spamd-Result: default: False [0.84 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	MID_CONTAINS_FROM(1.00)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	R_MISSING_CHARSET(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[hpe.com,reject];
	R_DKIM_ALLOW(-0.20)[hpe.com:s=pps0720];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c04:e001:36c::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-284956-lists,devicetree=lfdr.de];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	DKIM_TRACE(0.00)[hpe.com:+];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[hpe.com:dkim,hpe.com:email,hpe.com:mid,tor.lore.kernel.org:helo,tor.lore.kernel.org:rdns];
	ASN(0.00)[asn:63949, ipnet:2600:3c04::/32, country:SG];
	TO_DN_NONE(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[nick.hawkins@hpe.com,devicetree@vger.kernel.org];
	FROM_NO_DN(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	TAGGED_RCPT(0.00)[devicetree,dt];
	RCPT_COUNT_SEVEN(0.00)[9];
	MIME_TRACE(0.00)[0:+];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Queue-Id: 9AD283A440F
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

From: Nick Hawkins <nick.hawkins@hpe.com>

From: Nick Hawkins <nick.hawkins@hpe.com>

Enable ARCH_HPE in the arm64 defconfig to include HPE GSC BMC SoC
support in the default build.

Signed-off-by: Nick Hawkins <nick.hawkins@hpe.com>
---
 arch/arm64/configs/defconfig | 1 +
 1 file changed, 1 insertion(+)

diff --git a/arch/arm64/configs/defconfig b/arch/arm64/configs/defconfig
index xxxxxxxxxxxxxxx..xxxxxxxxxxxxxxx 100644
--- a/arch/arm64/configs/defconfig
+++ b/arch/arm64/configs/defconfig
@@ -xx,6 +xx,7 @@
 CONFIG_ARCH_HISI=y
+CONFIG_ARCH_HPE=y
 CONFIG_ARCH_KEEMBAY=y
-- 
2.34.1

