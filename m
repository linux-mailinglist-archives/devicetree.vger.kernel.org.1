Return-Path: <devicetree+bounces-273800-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id kNIkMtjQsGmLnQIAu9opvQ
	(envelope-from <devicetree+bounces-273800-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 11 Mar 2026 03:18:00 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 3094025ADA3
	for <lists+devicetree@lfdr.de>; Wed, 11 Mar 2026 03:18:00 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 719423235660
	for <lists+devicetree@lfdr.de>; Wed, 11 Mar 2026 02:14:46 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E8AF43644DD;
	Wed, 11 Mar 2026 02:14:45 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=ibm.com header.i=@ibm.com header.b="COE+sd+Y"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-001b2d01.pphosted.com (mx0a-001b2d01.pphosted.com [148.163.156.1])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A350A36C5BB;
	Wed, 11 Mar 2026 02:14:44 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=148.163.156.1
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773195285; cv=none; b=buZzRmZDvjwUf6MOw+4fZb0RPlxiPiN4hWX5EhWFq/KdKA7Wf2NAGnAiiQS0066iCRsxUMqcLqnQi8jo+wKgUfEh/IkG7yK98zrfJQ0YfjTIQ1jq/ANM63z5DxfTpbPCpHRtixGAC4uIDnM9tpAQjnqgtleY4fwsbzHS4muD9BI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773195285; c=relaxed/simple;
	bh=WdAJ8Dg8AndEGBUZolTR09QFJeEhNyitP5rws9AoYFk=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version:Content-Type; b=IjZXnA9DjP0IhGVJwAplMB1wjzcaDiapNS6D9lY7Lr+dd4svkClNHKMFI/6vtDoNtrPmaKR7fqB3teEOfjJTro84ZYGWyt4cL41hhCllkpSb7uuoapQRwL4S2kJvsuTV/fIekt4iWRMuOX5GON+ZB94nPSpGxenxEtppSaxCfYY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linux.ibm.com; spf=pass smtp.mailfrom=linux.ibm.com; dkim=pass (2048-bit key) header.d=ibm.com header.i=@ibm.com header.b=COE+sd+Y; arc=none smtp.client-ip=148.163.156.1
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linux.ibm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linux.ibm.com
Received: from pps.filterd (m0356517.ppops.net [127.0.0.1])
	by mx0a-001b2d01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 62AHtVRa509351;
	Wed, 11 Mar 2026 02:14:23 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ibm.com; h=cc
	:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=pp1; bh=CH6lra
	cKvhmTt+RT18YGJq1Z4+02QzpUCkT41iO/P0k=; b=COE+sd+YTH5bC0fFD9bqmU
	HV6FXx8dI8RiDdjKbWZ0k4S3GYVjPFD0ZMMIAQbr8TWnWOPrqzY8xIhbk/xuwKcD
	zLWlXVRdUClsXs1bHRraroGhLDOxHmzrWd5MasIYXrRgCQCspXBV3VmE9R3T2XlY
	nDkGEw4bRgafZtRGrmVgwHYj2bNRTwFGrAv6dOEvO4I2wkakIiY+3lmaZh8NeSMJ
	wLNpTZe/yX9tsVQvvsaW0xQ8jlvAOnulYM6UZDtXmeB1pavubz0t/rnmLGTMz203
	DtIzTqytmH4PjYh2DodLm8Do0nc8nriRGdX5NCACiLdQyt8cWmHG3yNttrYhV51w
	==
Received: from ppma23.wdc07v.mail.ibm.com (5d.69.3da9.ip4.static.sl-reverse.com [169.61.105.93])
	by mx0a-001b2d01.pphosted.com (PPS) with ESMTPS id 4crcywdset-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Wed, 11 Mar 2026 02:14:23 +0000 (GMT)
Received: from pps.filterd (ppma23.wdc07v.mail.ibm.com [127.0.0.1])
	by ppma23.wdc07v.mail.ibm.com (8.18.1.2/8.18.1.2) with ESMTP id 62B0WLAU029360;
	Wed, 11 Mar 2026 02:14:21 GMT
Received: from smtprelay04.fra02v.mail.ibm.com ([9.218.2.228])
	by ppma23.wdc07v.mail.ibm.com (PPS) with ESMTPS id 4csp6ur8xj-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Wed, 11 Mar 2026 02:14:21 +0000
Received: from smtpav07.fra02v.mail.ibm.com (smtpav07.fra02v.mail.ibm.com [10.20.54.106])
	by smtprelay04.fra02v.mail.ibm.com (8.14.9/8.14.9/NCO v10.0) with ESMTP id 62B2EJpB14352658
	(version=TLSv1/SSLv3 cipher=DHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
	Wed, 11 Mar 2026 02:14:19 GMT
Received: from smtpav07.fra02v.mail.ibm.com (unknown [127.0.0.1])
	by IMSVA (Postfix) with ESMTP id CB12C2006A;
	Wed, 11 Mar 2026 02:14:19 +0000 (GMT)
Received: from smtpav07.fra02v.mail.ibm.com (unknown [127.0.0.1])
	by IMSVA (Postfix) with ESMTP id 55BAB20067;
	Wed, 11 Mar 2026 02:14:16 +0000 (GMT)
Received: from Linuxdev (unknown [9.43.124.195])
	by smtpav07.fra02v.mail.ibm.com (Postfix) with ESMTP;
	Wed, 11 Mar 2026 02:14:16 +0000 (GMT)
From: Madhavan Srinivasan <maddy@linux.ibm.com>
To: Scott Wood <oss@buserror.net>, Michael Ellerman <mpe@ellerman.id.au>,
        Nicholas Piggin <npiggin@gmail.com>, Naveen N Rao <naveen@kernel.org>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        "Christophe Leroy (CS GROUP)" <chleroy@kernel.org>,
        =?UTF-8?q?J=2E=20Neusch=C3=A4fer?= <j.ne@posteo.net>
Cc: linuxppc-dev@lists.ozlabs.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
Subject: Re: [PATCH RESEND v5] dt-bindings: powerpc: Add Freescale/NXP MPC83xx SoCs
Date: Wed, 11 Mar 2026 07:44:15 +0530
Message-ID: <177319508346.269267.3469218082268296638.b4-ty@linux.ibm.com>
X-Mailer: git-send-email 2.53.0
In-Reply-To: <20260303-ppcyaml-soc-v5-1-2982d5a857bc@posteo.net>
References: <20260303-ppcyaml-soc-v5-1-2982d5a857bc@posteo.net>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit
X-TM-AS-GCONF: 00
X-Proofpoint-Reinject: loops=2 maxloops=12
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMzExMDAxNiBTYWx0ZWRfX2+IBv5Iv9g1Z
 R1rsclMDRglSpdlDZ4JUvUMjZxgbFBo8zMPRFOsYkouyGArFFhMzyUJYlbTcYdXH9DPn5liITQD
 QQPhHQQVvjVobBsjWPgpuDUuqqwcG8OiYGBV3q+xxKcv4FcUFTKj4iEMECQMt+YgCPyja+E3ZTQ
 9fCn0atIV5wafIt4PY1St907a8zhFfmfyQ7lec+NyilgwCbzzy25R5wrGg7gYFBTifAOM4dQc9p
 5Sv8evQTPCZr7KKsVc4UdceCKBfpoEPzPr0ucEGKiOEeySD5Nj/w1qrG8FBuSj4j9NYI4jqAVPe
 EY5wfLLEo1yvaSUZMBYzZ9lpPYMZpiEXxbSewGa45SkR1Oa4qSVZZgdeoFAHF0VVKfryEr/85nP
 q1tFYTVgCbELo4rxSqXieBU90cOubBc5rPEZRvc+teMJWHXK+vX53u46biqt8LdLvUWW5bisbkm
 F5Ek6XAlvnunwG6g+Ig==
X-Authority-Analysis: v=2.4 cv=QaVrf8bv c=1 sm=1 tr=0 ts=69b0cfff cx=c_pps
 a=3Bg1Hr4SwmMryq2xdFQyZA==:117 a=3Bg1Hr4SwmMryq2xdFQyZA==:17
 a=IkcTkHD0fZMA:10 a=Yq5XynenixoA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=RnoormkPH1_aCDwRdu11:22 a=U7nrCbtTmkRpXpFmAIza:22 a=VwQbUJbxAAAA:8
 a=kHYQ0qvyJFGcrkIvl-kA:9 a=3ZKOabzyN94A:10 a=QEXdDO2ut3YA:10
X-Proofpoint-GUID: OKTa63j9SxiP9KF0erjZHAccUi-WN_zr
X-Proofpoint-ORIG-GUID: 0dcg_uyFAPGwH5lZ_cvOzpk1ErWCxK82
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1143,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-03-10_05,2026-03-09_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 malwarescore=0 spamscore=0 impostorscore=0 clxscore=1011 adultscore=0
 bulkscore=0 lowpriorityscore=0 priorityscore=1501 suspectscore=0 phishscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2602130000 definitions=main-2603110016
X-Rspamd-Queue-Id: 3094025ADA3
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[ibm.com,none];
	R_DKIM_ALLOW(-0.20)[ibm.com:s=pp1];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-273800-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	FREEMAIL_TO(0.00)[buserror.net,ellerman.id.au,gmail.com,kernel.org,posteo.net];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[12];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:rdns,sea.lore.kernel.org:helo,linux.ibm.com:mid];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[maddy@linux.ibm.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[ibm.com:+];
	NEURAL_HAM(-0.00)[-1.000];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MID_RHS_MATCH_FROM(0.00)[];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[11]
X-Rspamd-Action: no action

On Tue, 03 Mar 2026 17:04:08 +0100, J. Neuschäfer wrote:
> Add a new binding for MPC83xx platforms, describing the board compatible
> strings used in currently existing device trees.
> 
> Note that the SoC bus is called immr@... in many existing devicetrees,
> but this contradicts the simple-bus binding.
> 
> 
> [...]

Applied to powerpc/fixes.

[1/1] dt-bindings: powerpc: Add Freescale/NXP MPC83xx SoCs
      https://git.kernel.org/powerpc/c/202d23eeccd4b12047869538d6fb91d1e42c4ddd

cheers

