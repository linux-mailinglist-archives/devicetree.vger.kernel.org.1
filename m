Return-Path: <devicetree+bounces-268135-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id yEa1BHeWnmnXWQQAu9opvQ
	(envelope-from <devicetree+bounces-268135-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 25 Feb 2026 07:28:07 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 7BD5F19259F
	for <lists+devicetree@lfdr.de>; Wed, 25 Feb 2026 07:28:06 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 2AF5430D4623
	for <lists+devicetree@lfdr.de>; Wed, 25 Feb 2026 06:25:48 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 3BF962FFF88;
	Wed, 25 Feb 2026 06:25:44 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="eKt1rfUO"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CEB642F5311;
	Wed, 25 Feb 2026 06:25:42 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772000744; cv=none; b=C51EFEA921JEbGRUKkVAIIWiU9hZ5USlRKhw0RCy2XnCNLaEyL9+2mSYTp6CxiqMWTP9pm2mLEF+ZF8rcSL84I1eGcjCTOkF7pNz4ymVdRIGrnZJ2DTyM+ro7ko6f27UqnilNny6ocMpjX+N3zLzmaU0jLOVtiWNeGAYPGaNve8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772000744; c=relaxed/simple;
	bh=Gtykh5ZSwDaNrlTzRYx6f1x15R7gRqdDOB2CASdDpcQ=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=W7WpW3/NI/p6eDMb6UpCYTYrh1ZuHGNfdEeOFsgkL68lCbE+zwkrZxVw1ou69PPaz+RYVZYFY4xZ8VplNdodoUOW3vfKlfrq7gTMBsPblFsJZ7DXw4srT0mT4ehMN3aKAYRey94fB854AvnmfMZH6wM5cbribtXr6+pQ1oer6Ak=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=eKt1rfUO; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=qualcomm.com
Received: from pps.filterd (m0279869.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 61P2oGob583301;
	Wed, 25 Feb 2026 06:24:59 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:date:from:in-reply-to:message-id
	:mime-version:references:subject:to; s=qcppdkim1; bh=XefO2ouM5MH
	XWJr7FxS1gZopdg+zoq0NBIC65oXtUyw=; b=eKt1rfUOot9wmpXrtfz4ET7G2j5
	B/GwvF21PVceUmHKZVBa5DRnJPJoFa0fqzNLkFk5/DpsezKy59nX/x9Xs05mFOjC
	3urzmOMv18ZJGg3eBM2MucyMPiXx9FhY8CBRdOsujPV3ANrtboS405jkdgRhCtfd
	+9H+rf64WEgoZ82a1YfojPC9yLqVTZbvpfXTqPJTX+jH+ejW21Xi//cZubnyptkx
	ZYlWc5m5TnO+52ky1NtkJI2A1q7rpeIG1KsSvZyhkHAh9yTH5QmwJjyxhRRXdP8O
	GkbvPAM4aUxW5tRDXm8VABJtQlUGoeZ49Dii30nlzSE8CkaN6U/XC0TmZZg==
Received: from apblrppmta01.qualcomm.com (blr-bdr-fw-01_GlobalNAT_AllZones-Outside.qualcomm.com [103.229.18.19])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4chg2gt5b6-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Wed, 25 Feb 2026 06:24:59 +0000 (GMT)
Received: from pps.filterd (APBLRPPMTA01.qualcomm.com [127.0.0.1])
	by APBLRPPMTA01.qualcomm.com (8.18.1.2/8.18.1.2) with ESMTP id 61P6OtfV001345;
	Wed, 25 Feb 2026 06:24:56 GMT
Received: from pps.reinject (localhost [127.0.0.1])
	by APBLRPPMTA01.qualcomm.com (PPS) with ESMTPS id 4cf5sm83ep-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Wed, 25 Feb 2026 06:24:56 +0000
Received: from APBLRPPMTA01.qualcomm.com (APBLRPPMTA01.qualcomm.com [127.0.0.1])
	by pps.reinject (8.17.1.5/8.17.1.5) with ESMTP id 61P6OsBn001264;
	Wed, 25 Feb 2026 06:24:55 GMT
Received: from hu-devc-blr-u24-a.qualcomm.com (hu-anuppate-blr.qualcomm.com [10.131.36.165])
	by APBLRPPMTA01.qualcomm.com (PPS) with ESMTPS id 61P6OtEv001306
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Wed, 25 Feb 2026 06:24:55 +0000
Received: by hu-devc-blr-u24-a.qualcomm.com (Postfix, from userid 486687)
	id E4D2B2574F; Wed, 25 Feb 2026 11:54:53 +0530 (+0530)
From: Anup Patel <anup.patel@oss.qualcomm.com>
To: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Palmer Dabbelt <palmer@dabbelt.com>, Paul Walmsley <pjw@kernel.org>,
        Greg KH <gregkh@linuxfoundation.org>,
        Alexander Shishkin <alexander.shishkin@linux.intel.com>,
        Ian Rogers <irogers@google.com>
Cc: Alexandre Ghiti <alex@ghiti.fr>, Peter Zijlstra <peterz@infradead.org>,
        Ingo Molnar <mingo@redhat.com>, Namhyung Kim <namhyung@kernel.org>,
        Mark Rutland <mark.rutland@arm.com>, Jiri Olsa <jolsa@kernel.org>,
        Adrian Hunter <adrian.hunter@intel.com>,
        Liang Kan <kan.liang@linux.intel.com>,
        Mayuresh Chitale <mchitale@gmail.com>,
        Anup Patel <anup@brainfault.org>, Atish Patra <atish.patra@linux.dev>,
        Andrew Jones <andrew.jones@oss.qualcomm.com>,
        Sunil V L <sunilvl@oss.qualcomm.com>, linux-riscv@lists.infradead.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        Anup Patel <anup.patel@oss.qualcomm.com>
Subject: [PATCH v3 12/12] MAINTAINERS: Add entry for RISC-V trace framework
Date: Wed, 25 Feb 2026 11:54:48 +0530
Message-ID: <20260225062448.4027948-13-anup.patel@oss.qualcomm.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20260225062448.4027948-1-anup.patel@oss.qualcomm.com>
References: <20260225062448.4027948-1-anup.patel@oss.qualcomm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-QCInternal: smtphost
X-QCInternal: smtphost
X-Proofpoint-Virus-Version: vendor=nai engine=6200 definitions=5800 signatures=585085
X-Proofpoint-Virus-Version: vendor=nai engine=6200 definitions=5800 signatures=585085
X-Proofpoint-ORIG-GUID: XPFDJYLRDY1f8pKHjlFVN2kgDclj8hPp
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMjI1MDA2MSBTYWx0ZWRfX84QiWPGe3pWY
 eZT2pROAcvycfucYgPzT+qCPUD9ZmSbTkVLoRzkuA5+Aw+tid//QFLUM3ArugIe1ReJqnC9eRrq
 Ao08BRNZZ6QMCZCxZKkfX+T5kT28FjWVDVPBk9IuNVR3w/AHcVutVqZkznG1tWL0CN7LdzCORrA
 GrCaUWe48VBnWmPl3j61ir11+oRG9JHBZvVOQ4qngq42lJzn2xbFRLMXTCxR9cyG+cOhJUGtcGm
 E/pKxjWle6bFAqlhn1mwgfw7ekL6/jX8WKvsctSEsh8qkq0vruhtoTFr06mDpl/qwJbdcObLVZQ
 EwoCGWItXbYPI6rvxUy7oHygW/0FgodvMOhpdT20jTZurA3w0Vbt0xTinhtSDyTrObty77B35tD
 iMCxSlavzs32Cuf9oJBRlWN17m+n6oWmkomuurNpXnUV7+0ZASPjV+CdwAUGS74q8V1bt6XE/MJ
 5Z427cWJ8Qzlnk/4FSA==
X-Authority-Analysis: v=2.4 cv=ftHRpV4f c=1 sm=1 tr=0 ts=699e95bb cx=c_pps
 a=Ou0eQOY4+eZoSc0qltEV5Q==:117 a=Ou0eQOY4+eZoSc0qltEV5Q==:17
 a=HzLeVaNsDn8A:10 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22
 a=_glEPmIy2e8OvE2BGh3C:22 a=EUspDBNiAAAA:8 a=pGLkceISAAAA:8 a=W-_n0kkjAAAA:8
 a=JfrnYn6hAAAA:8 a=UgJECxHJAAAA:8 a=cfWhVP6ADMLbqTyXlKgA:9
 a=qeNa2pbTr82C0GpJEZFS:22 a=1CNFftbPRP8L7MoqJWF3:22 a=-El7cUbtino8hM1DCn8D:22
X-Proofpoint-GUID: XPFDJYLRDY1f8pKHjlFVN2kgDclj8hPp
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-02-24_03,2026-02-23_03,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 priorityscore=1501 malwarescore=0 suspectscore=0 clxscore=1015 spamscore=0
 impostorscore=0 lowpriorityscore=0 phishscore=0 bulkscore=0 adultscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2602130000 definitions=main-2602250061
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [0.84 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_CONTAINS_FROM(1.00)[];
	R_MISSING_CHARSET(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[qualcomm.com,reject];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	R_DKIM_ALLOW(-0.20)[qualcomm.com:s=qcppdkim1];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FREEMAIL_CC(0.00)[ghiti.fr,infradead.org,redhat.com,kernel.org,arm.com,intel.com,linux.intel.com,gmail.com,brainfault.org,linux.dev,oss.qualcomm.com,lists.infradead.org,vger.kernel.org];
	RCPT_COUNT_TWELVE(0.00)[25];
	MIME_TRACE(0.00)[0:+];
	TAGGED_FROM(0.00)[bounces-268135-lists,devicetree=lfdr.de];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[anup.patel@oss.qualcomm.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[qualcomm.com:+];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,oss.qualcomm.com:mid,ionos.com:email,brainfault.org:email,qualcomm.com:email,qualcomm.com:dkim,infradead.org:email];
	TAGGED_RCPT(0.00)[devicetree,dt];
	NEURAL_HAM(-0.00)[-0.992];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	RCVD_COUNT_SEVEN(0.00)[10]
X-Rspamd-Queue-Id: 7BD5F19259F
X-Rspamd-Action: no action

Add Mayuresh and myself as maintainers for RISC-V trace framework
and drivers.

Signed-off-by: Anup Patel <anup.patel@oss.qualcomm.com>
---
 MAINTAINERS | 11 +++++++++++
 1 file changed, 11 insertions(+)

diff --git a/MAINTAINERS b/MAINTAINERS
index ac63782a75d5..01fa7144552e 100644
--- a/MAINTAINERS
+++ b/MAINTAINERS
@@ -22858,6 +22858,17 @@ F:	include/dt-bindings/power/thead,th1520-power.h
 F:	include/dt-bindings/reset/thead,th1520-reset.h
 F:	include/linux/firmware/thead/thead,th1520-aon.h
 
+RISC-V TRACE FRAMEWORK AND DRIVERS
+M:	Mayuresh Chitale <mchitale@gmail.com>
+M:	Anup Patel <anup@brainfault.org>
+L:	linux-riscv@lists.infradead.org
+S:	Maintained
+F:	Documentation/devicetree/bindings/riscv/riscv,trace-component.yaml
+F:	drivers/hwtracing/rvtrace/*
+F:	include/linux/rvtrace*
+F:	tools/perf/arch/riscv/util/auxtrace.c
+F:	tools/perf/util/rvtrace*
+
 RNBD BLOCK DRIVERS
 M:	Md. Haris Iqbal <haris.iqbal@ionos.com>
 M:	Jack Wang <jinpu.wang@ionos.com>
-- 
2.43.0


