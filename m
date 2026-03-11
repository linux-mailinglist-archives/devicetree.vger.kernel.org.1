Return-Path: <devicetree+bounces-273798-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id IDp/HILQsGmLnQIAu9opvQ
	(envelope-from <devicetree+bounces-273798-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 11 Mar 2026 03:16:34 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id CD9A325AD57
	for <lists+devicetree@lfdr.de>; Wed, 11 Mar 2026 03:16:33 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 97C0B313A965
	for <lists+devicetree@lfdr.de>; Wed, 11 Mar 2026 02:14:40 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id DF95B342530;
	Wed, 11 Mar 2026 02:14:39 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=ibm.com header.i=@ibm.com header.b="TFCaENz2"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-001b2d01.pphosted.com (mx0b-001b2d01.pphosted.com [148.163.158.5])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 832B833E368;
	Wed, 11 Mar 2026 02:14:38 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=148.163.158.5
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773195279; cv=none; b=VovpA3eB83WPHeSk3mv+SKxz05dN3nx0uiVzlvwEMLEBJPurcUzCqs/o7z2tCMr3+JSHDR14IzybfkR9PsTld+CGRMHQjuq6diudBFs/HX7deepspk2kgSGpQwe1R8hUx8+0ZjEJYKLvvT6AplyKZIMzalmjuVhooTQM0sdyIr8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773195279; c=relaxed/simple;
	bh=oRjg86Xv+Pafa/NU4b7cKYbTjN8N1Pxz89gO0kTof+k=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version:Content-Type; b=nuMo8fa312Aah2V6C3G83wjOCfb+ocqmIZWFOk0nOTVTNCh0+GgnNuSfXAKqxHTSSImP4y9R082CrSNQy/kXKJjbcilUW8yQm8/mDCusRB/bwfekEJBEOXlFgSX39LyvOSiFcVbOy9kxZMUAmojvOjWFv42teBfX0CXrFPpOpB8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linux.ibm.com; spf=pass smtp.mailfrom=linux.ibm.com; dkim=pass (2048-bit key) header.d=ibm.com header.i=@ibm.com header.b=TFCaENz2; arc=none smtp.client-ip=148.163.158.5
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linux.ibm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linux.ibm.com
Received: from pps.filterd (m0356516.ppops.net [127.0.0.1])
	by mx0a-001b2d01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 62B18wOn1913204;
	Wed, 11 Mar 2026 02:14:18 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ibm.com; h=cc
	:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=pp1; bh=QxlgsB
	LoTOXgjMgElrk0FX+FYMCUr7/CYKx2P3Gdfgc=; b=TFCaENz2rcw4pvbBU98IiR
	e18PFsA9k3Oz+fI9r515TTd+j8Q0LcEeICZPS+umj1jVwSHjAVWPQh/kJIezD3bN
	JN0ikMyE7WT9XPMKB4EgJ9upgnNUbdRnTVWIQRP1PJvdcSvC2BcbFBFgZF5B6pmh
	XazA7m9T4CaqOHcdZ33InuBFJBIQ4Z6h0qbB5GFg0XCG+37KaJgsYuieeTpTemjp
	C5WVZE2LZbkbiu/LzWtx8Mc0LVuD5Fs5mDGPOv5qaPiVw5kemTUd/RcfdygF//30
	PpnZOBpyL35k4SqDFEIYRZW619QIwwHjjUiu80DOlym6EuRoNYJ/Dh/jvrT7batg
	==
Received: from ppma21.wdc07v.mail.ibm.com (5b.69.3da9.ip4.static.sl-reverse.com [169.61.105.91])
	by mx0a-001b2d01.pphosted.com (PPS) with ESMTPS id 4crcundbpr-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Wed, 11 Mar 2026 02:14:17 +0000 (GMT)
Received: from pps.filterd (ppma21.wdc07v.mail.ibm.com [127.0.0.1])
	by ppma21.wdc07v.mail.ibm.com (8.18.1.2/8.18.1.2) with ESMTP id 62B1U5fi015652;
	Wed, 11 Mar 2026 02:14:17 GMT
Received: from smtprelay02.fra02v.mail.ibm.com ([9.218.2.226])
	by ppma21.wdc07v.mail.ibm.com (PPS) with ESMTPS id 4crybnbnsw-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Wed, 11 Mar 2026 02:14:16 +0000
Received: from smtpav06.fra02v.mail.ibm.com (smtpav06.fra02v.mail.ibm.com [10.20.54.105])
	by smtprelay02.fra02v.mail.ibm.com (8.14.9/8.14.9/NCO v10.0) with ESMTP id 62B2EFXE47907184
	(version=TLSv1/SSLv3 cipher=DHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
	Wed, 11 Mar 2026 02:14:15 GMT
Received: from smtpav06.fra02v.mail.ibm.com (unknown [127.0.0.1])
	by IMSVA (Postfix) with ESMTP id E92D92006C;
	Wed, 11 Mar 2026 02:14:14 +0000 (GMT)
Received: from smtpav06.fra02v.mail.ibm.com (unknown [127.0.0.1])
	by IMSVA (Postfix) with ESMTP id E14E42006A;
	Wed, 11 Mar 2026 02:14:11 +0000 (GMT)
Received: from Linuxdev (unknown [9.43.124.195])
	by smtpav06.fra02v.mail.ibm.com (Postfix) with ESMTP;
	Wed, 11 Mar 2026 02:14:11 +0000 (GMT)
From: Madhavan Srinivasan <maddy@linux.ibm.com>
To: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Michael Ellerman <mpe@ellerman.id.au>,
        Nicholas Piggin <npiggin@gmail.com>,
        "Christophe Leroy (CS GROUP)" <chleroy@kernel.org>,
        =?UTF-8?q?J=2E=20Neusch=C3=A4fer?= <j.ne@posteo.net>
Cc: devicetree@vger.kernel.org, linuxppc-dev@lists.ozlabs.org,
        linux-kernel@vger.kernel.org
Subject: Re: [PATCH RESEND v2 0/5] PowerPC: A few cleanups in MPC83xx devicetrees
Date: Wed, 11 Mar 2026 07:44:10 +0530
Message-ID: <177319508348.269267.12330802792769782760.b4-ty@linux.ibm.com>
X-Mailer: git-send-email 2.53.0
In-Reply-To: <20260303-mpc83xx-cleanup-v2-0-187d3a13effa@posteo.net>
References: <20260303-mpc83xx-cleanup-v2-0-187d3a13effa@posteo.net>
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
X-Proofpoint-GUID: PDLZ7PoE4Jt8kmoe2LsDOJBuwINp8bog
X-Authority-Analysis: v=2.4 cv=Hp172kTS c=1 sm=1 tr=0 ts=69b0cffa cx=c_pps
 a=GFwsV6G8L6GxiO2Y/PsHdQ==:117 a=GFwsV6G8L6GxiO2Y/PsHdQ==:17
 a=IkcTkHD0fZMA:10 a=Yq5XynenixoA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=RnoormkPH1_aCDwRdu11:22 a=Y2IxJ9c9Rs8Kov3niI8_:22 a=VwQbUJbxAAAA:8
 a=vWnL5tEXQ0y9T7uwRXoA:9 a=3ZKOabzyN94A:10 a=QEXdDO2ut3YA:10
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMzExMDAxNiBTYWx0ZWRfX9GXSwvCB9pvB
 0A0TStl07WHfGtKT2U1KCU7rV7IM7lH7MFMnuL4JUgfAO8U8jF2rvBm+3bdk95fXXWfeVTHQap+
 3rTzXYEauqRhbtysRdvQQIaWk+7g1qo8wddfDU39RjSbM+dFML/7azlyu37Pco/2QLqQ7vQot2i
 7jBg3ZSylsMSn1+14r5KstNrsV2thBBf1Ezyick/c1mYPBB5BVt0sHQpGPlrd93n2wj8cTvdVSc
 OifU7Qy2J/Kw/YUEwVIP0HvSaSafPvpATNBEVW8fdHSwNZnOl4+VumG+pu2emU657Y0+CGJfRS3
 GGJxfvPJMcymnRR5kNqihWLRXkC5GvOOeoRu8X0iOigA9hqPqBf5Ntfl9VtVN5izG8b/g4hrErc
 tyXlGph7IWQQ7n6lIB0Va3hzpLNtHLsvIdgFP7J3piTF30EgWLiY9VD+WmSI8aIarWVuYz2LH3w
 eaRw+ga2hqwglZKPc3g==
X-Proofpoint-ORIG-GUID: 1u0CU42RUsnQI6-7sfA6GGzoNS5Awuc-
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1143,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-03-10_05,2026-03-09_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 bulkscore=0 adultscore=0 malwarescore=0 impostorscore=0 suspectscore=0
 spamscore=0 phishscore=0 clxscore=1011 priorityscore=1501 lowpriorityscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2602130000 definitions=main-2603110016
X-Rspamd-Queue-Id: CD9A325AD57
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[ibm.com,none];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	R_DKIM_ALLOW(-0.20)[ibm.com:s=pp1];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FREEMAIL_TO(0.00)[kernel.org,ellerman.id.au,gmail.com,posteo.net];
	TAGGED_FROM(0.00)[bounces-273798-lists,devicetree=lfdr.de];
	DKIM_TRACE(0.00)[ibm.com:+];
	RCVD_TLS_LAST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:rdns,sea.lore.kernel.org:helo,linux.ibm.com:mid];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[maddy@linux.ibm.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	NEURAL_HAM(-0.00)[-1.000];
	RCPT_COUNT_SEVEN(0.00)[10];
	MID_RHS_MATCH_FROM(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	RCVD_COUNT_SEVEN(0.00)[11]
X-Rspamd-Action: no action

On Tue, 03 Mar 2026 16:50:50 +0100, J. Neuschäfer wrote:
> This series contains a few cleanups for mpc8315erdb.dts and other
> PowerPC devicetrees, which are hopefully uncontroversial.
> 
> Some of the patches were previously part of another, larger series,
> titled "powerpc: MPC83xx cleanup and LANCOM NWAPP2 board", but that
> series became too unwieldy to carry on. For this reason, this series
> starts at version 2.
> 
> [...]

Applied to powerpc/fixes.

[1/5] powerpc: dts: mpc8313erdb: Use IRQ_TYPE_* macros
      https://git.kernel.org/powerpc/c/38ce944d47b717cac6b5f2bae9dd247f87f21ac7
[2/5] powerpc: dts: mpc8315erdb: Use IRQ_TYPE_* macros
      https://git.kernel.org/powerpc/c/4f439747811977d05a87da65c1ae11246d4f4dee
[3/5] powerpc: dts: mpc8315erdb: Rename LED nodes to comply with schema
      https://git.kernel.org/powerpc/c/31618e0e21c4633c365b26e6d45cae2084f4245b
[4/5] powerpc: dts: mpc8315erdb: Add missing #cells properties to SPI bus
      https://git.kernel.org/powerpc/c/fde54f1a4dc7bfd83908380c0b4b6a830a0f9e01
[5/5] powerpc: dts: mpc83xx: Add unit addresses to /memory
      https://git.kernel.org/powerpc/c/6373a2b5c878e920341d7bda84ac1126f72e6a68

cheers

