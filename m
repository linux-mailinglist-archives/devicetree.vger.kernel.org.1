Return-Path: <devicetree+bounces-270467-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id wJ5LCtfWpmnHWgAAu9opvQ
	(envelope-from <devicetree+bounces-270467-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 03 Mar 2026 13:40:55 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id C3A341EF984
	for <lists+devicetree@lfdr.de>; Tue, 03 Mar 2026 13:40:54 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 1578A31141D0
	for <lists+devicetree@lfdr.de>; Tue,  3 Mar 2026 12:29:42 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 42A9E34164B;
	Tue,  3 Mar 2026 12:29:39 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="lK2W9hql";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="K1TaWJNC"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 015DC340D93
	for <devicetree@vger.kernel.org>; Tue,  3 Mar 2026 12:29:37 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772540979; cv=none; b=QxQfwlj/AduDlvfEHo5NwpsJWFmcQCcwTrJDw0gI3qsRxKJhk1IjKmWi+QGxm8XIAdcs9pBZZFjb20jB9RBCdnFNFOuf70VKZOArWv45YSIt985PtOlvNufwueImC2uRssnRciGzjjlIHwkCqQwFmcP6xZ67+qKRBOWwOh4GpQo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772540979; c=relaxed/simple;
	bh=ew9uwciLzf+70VcuN1RrFEQC2tUzp5KQFWMO6L9R5BA=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version:Content-Type; b=LoXAymiThebj2sPQ3g5SMQCeQWEoQ+CIpDrQFH9x0LgYYWdccJJBgdc2SjtFKZvFIPqNkIbAgZU8T/HBkUJrKi9HUoja2K35E1NDf+PktIz1ku80OXC9Bo31QaZUveVhhgy3gfW78PW2XfGwfKSFrEozczWIdk8Z8QWyhgKWxts=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=lK2W9hql; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=K1TaWJNC; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279873.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 6239mgXW2307433
	for <devicetree@vger.kernel.org>; Tue, 3 Mar 2026 12:29:37 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	+UFaVOOEMjvopJDZvAVmSn/0K5xprbHB0u9j+BhT9u8=; b=lK2W9hqlq9NQpHKO
	j6+PqyxsfrTcNUVrmSY/G7pZ0R0VxkHi16XgNJ8z7HVEOS0UEnUyMj79ruuw1Nyr
	jKzO4sUgKF1vdtUE3K1g++/V4rIYesG+LrMjj5UrVXD4oT25YAgoIpbkp/i+P1nK
	O4+hmxmVCikWkzFLRucws+OGH9ZfjLblKT0Mu3gQERlqtylqCeIj6nqUriHdb/AW
	TxiEgAZre8s6ebCYXm4/WMYipDkqy0OFnNnyG6X2iTapPvqaDyEFtoGsfd0YMltd
	C9GEwhY+6ZkGqtGvtxOuDo5F+4Xi3e1R0LsaJA7+s2J/zaVLF7D0tqf35DXf78hR
	cvi3Hg==
Received: from mail-qk1-f197.google.com (mail-qk1-f197.google.com [209.85.222.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4cnvtu8k5t-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Tue, 03 Mar 2026 12:29:36 +0000 (GMT)
Received: by mail-qk1-f197.google.com with SMTP id af79cd13be357-8cb390a0c4eso3670734285a.1
        for <devicetree@vger.kernel.org>; Tue, 03 Mar 2026 04:29:36 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1772540976; x=1773145776; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=+UFaVOOEMjvopJDZvAVmSn/0K5xprbHB0u9j+BhT9u8=;
        b=K1TaWJNCY/z6oHJ5Gpuuyw4Vsv1V5oYZMdr01tDkx0qRrzh3YVRluI0uH3noR5Alqu
         5vVzAqi+fsz6Z3I1nYrnrf2nyIizKMm/l3BAHZxD4g+2c/uUsofgT5NToq5IzyEHZJwn
         G84+EI5hWhL/bgi+KhPXnAxxHo11CBQ+e3vrHHIIFhgjUg0cG/SqdeHDrU2PY2uKgfuC
         vqIbBabCpxlQGxosYkXvERumuNtGiBhng2ZyVwhEK7k9VbwfT6r8LiTdCW2OszFnDFIJ
         v5a3JIhbfhBweh+q/aETdvg27prx86D9epEa/Bddn7T16v80gwaFXHDLdlcjSzIrWkVU
         l/hA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1772540976; x=1773145776;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=+UFaVOOEMjvopJDZvAVmSn/0K5xprbHB0u9j+BhT9u8=;
        b=plPB+KGjqQUbT5d9k7ynppu03DRCNq7m8BmGi1ZZ7dYamHgvGKkFEaKh7ORNF1nuku
         75HieqdEIZPXC8b15bvn7AWbZ+1+0BwjxyOWDdj1b1MTB8xoVctAg4b3DBUd5ZXSaljX
         Y71rBUP1dOKqSuPhcrSdJ03f/v97Rehkch0mXPkPojrwtezKRZbWB8A4GowljtClSDrH
         /mfkUBvEtQUmMvgfUG7KSqyfDNUrOpQNS4pCjMn1sUOVpbGmbNCB/tZaYrX+CdO5yr50
         SuM24Dwnql/AzN26Dg8+6EB0vzzAKUqJg1HdfnlFGsLUNmFMwLoZChrtwri/pVrrs9Pr
         uBOw==
X-Forwarded-Encrypted: i=1; AJvYcCUQTl9V92u9bEjbUuRCt3jgz/hx8N4plBgCV5gLzpbkuCBRkuUqev1UL1MmFb/rEM1jwEerYz2jy11v@vger.kernel.org
X-Gm-Message-State: AOJu0YzZX/bv4lUg1viGexVcRwZZ6JrMir2I6k9Pd18VZePM7LIL2HQ6
	rVCwDFuypKdi977k4xW2kaB+RSyLoTnVciQiggQm95x5NJ63lGV+VyAQT7DI+rGZX6tieMYDQzK
	s/ooXfBEej+ldY7VpHpy565ukCcpvgJEBhkShrpxyd08ohudpvaD+muyVP1N99kzj
X-Gm-Gg: ATEYQzyUADjF72PgnP3XpmtxOcwq+Tf+rlO5ep/426ogW593EbspxOCbj8CKsRRVV/f
	KaA1KmYQbJ+B+q/wVxdDQ+qaUSniCmsGc/EN77hdOQMkqSGty8P3Li2MWzGNf141My6KEOYwIo+
	yP1UXtKvC3LQ1XGrct2qhST6NM+ZhGoDev9ISs0wXqV+P4qXTqL8COsMb4LuCdtcyhKsrMuMEEs
	gg8nOQMm+E3mvXHc4pWvcZy6iEzKkat/aFSNsal7OR+rvu4r3L8dbgk03EFDKGQoinGaHCS18Nw
	kfif6vBbe77kLrNMFPGIbd/S5ycHz5K3SiTJOssc1nhrvZ0JkLaQVa/F4TaMmYpMFYFpzY5WTZm
	rYVQ7Ex+2FGODxYwfGz4Q2qgRPx+t6w==
X-Received: by 2002:a05:620a:444b:b0:8cb:4d9b:6b4d with SMTP id af79cd13be357-8cbc8d6f180mr1874330585a.10.1772540976305;
        Tue, 03 Mar 2026 04:29:36 -0800 (PST)
X-Received: by 2002:a05:620a:444b:b0:8cb:4d9b:6b4d with SMTP id af79cd13be357-8cbc8d6f180mr1874327885a.10.1772540975729;
        Tue, 03 Mar 2026 04:29:35 -0800 (PST)
Received: from hackbox.lan ([86.121.162.109])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-483bd750701sm498035965e9.11.2026.03.03.04.29.34
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 03 Mar 2026 04:29:35 -0800 (PST)
From: Abel Vesa <abel.vesa@oss.qualcomm.com>
To: Abel Vesa <abelvesa@kernel.org>, Peng Fan <peng.fan@nxp.com>,
        Michael Turquette <mturquette@baylibre.com>,
        Stephen Boyd <sboyd@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>, Shawn Guo <shawnguo@kernel.org>,
        Sascha Hauer <s.hauer@pengutronix.de>,
        Pengutronix Kernel Team <kernel@pengutronix.de>,
        Fabio Estevam <festevam@gmail.com>, Frank Li <Frank.Li@nxp.com>
Cc: linux-clk@vger.kernel.org, imx@lists.linux.dev, devicetree@vger.kernel.org,
        linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org,
        Conor Dooley <conor.dooley@microchip.com>
Subject: Re: (subset) [PATCH v3 0/3] ARM: dts: imx6: cleanup imx6/7 CCM related CHECK_DTBS warnings
Date: Tue,  3 Mar 2026 14:29:25 +0200
Message-ID: <177254093027.989057.8587839568838242001.b4-ty@oss.qualcomm.com>
X-Mailer: git-send-email 2.48.1
In-Reply-To: <20260121-ccm_dts-v3-0-820ce9b5fa38@nxp.com>
References: <20260121-ccm_dts-v3-0-820ce9b5fa38@nxp.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit
X-Proofpoint-GUID: MbYaVMUWtqYg0SmzUNF166KmQsOx27HB
X-Proofpoint-ORIG-GUID: MbYaVMUWtqYg0SmzUNF166KmQsOx27HB
X-Authority-Analysis: v=2.4 cv=A75h/qWG c=1 sm=1 tr=0 ts=69a6d430 cx=c_pps
 a=50t2pK5VMbmlHzFWWp8p/g==:117 a=oauzzCmhM186DRC0Y2yWPg==:17
 a=IkcTkHD0fZMA:10 a=Yq5XynenixoA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=rJkE3RaqiGZ5pbrm-msn:22
 a=EUspDBNiAAAA:8 a=HS7iJHYFZOvZgwlv4tsA:9 a=QEXdDO2ut3YA:10
 a=IoWCM6iH3mJn3m4BftBB:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMzAzMDA5OCBTYWx0ZWRfX2rqe0WTOQqzt
 5SKnYzvVqiLpYxjupGNTFknGaDkuH2K1T0rU7+PLE1jxGG0uC0icZsOroIWG+ArJI6n+rWA7HCO
 izfHh/kCU2647MRnAenMuThjHp0CfolyI4ivqBBD8cqch0udDvSoM3UegdaEC4PdWZiQDQ/+M0W
 2/gN37NRging5FqCNDPc2LhmpVbkFVlfsxGo02nkEK8FJz7TbV87gSxb4NiWigBZwcN/IXr67dv
 iiwqlZq+MLnUq6rRz3LtdywST08JfrgbVXZOtU4dR/+MrfOCmRHl0YyIjI8xGRegRcHoDUBMMQt
 plLmptuXgINADpBtZ5+9GgJyhctRE8d2kSnIsw8RJmI1UitDc8YlcFEAg53Hq2NBrVHmoCue0v0
 zKYYkVQNndiHLUswVJ8hMHYkjnQ9RP1Vuw9gy//A1LSqqh1KIsGs2wbS11bwpY5x1cu/CedOsyq
 HYtNeOOW1wcRCmZp28w==
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-03-02_05,2026-03-03_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 impostorscore=0 spamscore=0 lowpriorityscore=0 suspectscore=0 phishscore=0
 adultscore=0 clxscore=1015 bulkscore=0 malwarescore=0 priorityscore=1501
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2602130000 definitions=main-2603030098
X-Rspamd-Queue-Id: C3A341EF984
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[qualcomm.com,reject];
	R_DKIM_ALLOW(-0.20)[qualcomm.com:s=qcppdkim1,oss.qualcomm.com:s=google];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-270467-lists,devicetree=lfdr.de];
	DBL_BLOCKED_OPENRESOLVER(0.00)[qualcomm.com:dkim,qualcomm.com:email,oss.qualcomm.com:dkim,oss.qualcomm.com:mid,sea.lore.kernel.org:rdns,sea.lore.kernel.org:helo];
	FREEMAIL_TO(0.00)[kernel.org,nxp.com,baylibre.com,pengutronix.de,gmail.com];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[18];
	MIME_TRACE(0.00)[0:+];
	DKIM_TRACE(0.00)[qualcomm.com:+,oss.qualcomm.com:+];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[abel.vesa@oss.qualcomm.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Action: no action


On Wed, 21 Jan 2026 13:04:14 -0500, Frank Li wrote:
> cleanup imx6/7 CCM related CHECK_DTBS warnings
> 
> 

Applied, thanks!

[1/3] dt-bindings: clock: imx6q[ul]-clock: add optional clock enet[1]_ref_pad
      commit: 51ac0f4b6d5f4965153d8c39644ecfb228480396

Best regards,
-- 
Abel Vesa <abel.vesa@oss.qualcomm.com>

