Return-Path: <devicetree+bounces-270906-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id WDidJ+Lrp2lDlwAAu9opvQ
	(envelope-from <devicetree+bounces-270906-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 04 Mar 2026 09:22:58 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 24D2B1FC7FB
	for <lists+devicetree@lfdr.de>; Wed, 04 Mar 2026 09:22:57 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 5CC6D30214F3
	for <lists+devicetree@lfdr.de>; Wed,  4 Mar 2026 08:18:46 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D6A6438239E;
	Wed,  4 Mar 2026 08:18:45 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="j/1A1RKA";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="bBrig4s8"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9B43136EAAB
	for <devicetree@vger.kernel.org>; Wed,  4 Mar 2026 08:18:44 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772612325; cv=none; b=pa/W+XX/GqZJx4hJz5gOqUvZE4PR/BcIinPLWqGmPG5dbo6MjiyEDYLVGrK1kVDgurtyiG87At4SY+igmu4U1pFrYHGE5O+hG3M6cAWEkj4wF5ppntt3eUWX8zJVSd7B3ryIL1jZJ8ILjtnaJ5f4o0y3eW9xOWsCGoAR1Z9uHWc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772612325; c=relaxed/simple;
	bh=DTOpMhTdBtjmtnY5OvfSZoT9teKKcXehYaAJt/T11fY=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version:Content-Type; b=h9LR6Rksy1GKYmxqDD6KLgLaCOmo8JJ+0Bd27/ll1F3i+Pttz6Vy3Tn7tSn8d7NPX3DFfMAEkbFao9z4YKXGKWx6PRpd/8NlbRZUvJY8vcgW4DhtleoI6jbaBNiRwDigsBX7o8fjDMhzs6b3HE2Lbf3bK0vwfliRAwkQUv2gESM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=j/1A1RKA; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=bBrig4s8; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279870.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 6245SP062275079
	for <devicetree@vger.kernel.org>; Wed, 4 Mar 2026 08:18:43 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	RBdjoSFNNf+h8LuOpa7JZC2hs680grH30jkxsaUOq8Y=; b=j/1A1RKAdQQaEOXP
	YOKs5DsVfFj07JcPgkewYywQBq2bY90OJ48/vHepe4m6mOtacYiNV8D5doxsEhzQ
	oXKeeibJMqNkhIaKODyBkUdagQuLpkFSUe4fXckU10pr6I6/Sx4HS8DW2vOAYoSw
	BqEzf0Jhovvt6Ctxyt2RvPYRTZDhrh15m6n0uwvQihiknSaOT/ph4OuaiYdzaHFm
	/yULgbjlmqaE0DyX9sRUPcoZels2b71SXtWc1k3BZTtxQgnBmwayrgbgwEYeSStM
	E2jhlux0EDlMwdp9TMfBUpuE9q50KEXXz0j+WuDZ0Cko70B2piviyLqZ41+geIjZ
	YWRveg==
Received: from mail-qk1-f198.google.com (mail-qk1-f198.google.com [209.85.222.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4cpc4ms0vp-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Wed, 04 Mar 2026 08:18:43 +0000 (GMT)
Received: by mail-qk1-f198.google.com with SMTP id af79cd13be357-8cb5359e9d3so4527701785a.2
        for <devicetree@vger.kernel.org>; Wed, 04 Mar 2026 00:18:43 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1772612323; x=1773217123; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=RBdjoSFNNf+h8LuOpa7JZC2hs680grH30jkxsaUOq8Y=;
        b=bBrig4s8o745SvM034J4ypKndsijG0Tt9f2HEICHxK0Odex4SrlF+MbDoGFGORupa6
         lTB5qXlwr1moUClyy+4KqDFcDU/gFK2jjFTQVIDQaB3tgLsITWvlSjwr74QfS8/vQw0L
         vJaZ3/qZnUAylEwKgLFhtJ/n+qsfFgK/nVaJbwKi6tzC2TaY9bCfR9qksWEkjGSo9fhV
         uaIdM6L3XlWlY6CrEa8ep6dyATGb7EACiao0PLHY67ZBBhc+luc0Lp6saMgGNuQq9FUK
         hAaRX2E77lQpCJG61yBsS7X8C+TIfz6XkF7UhhcsM7yfDaJ00npqcuUFi2Dv+El8CO43
         sqBg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1772612323; x=1773217123;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=RBdjoSFNNf+h8LuOpa7JZC2hs680grH30jkxsaUOq8Y=;
        b=hkRzQbyNh2G21WmVHn7RkFOSUFVEO7zcP+xnU6VA3z3A3BxFmn3xVcuV1Cd0PFsgTr
         F5k8zng40oLNRKpYj46uwvMFeuP+mmmZ12+/8h3Wk2d8AjyabfItXA2T8Gzetexi751l
         OaKeFRSAXPa27JMERLOpOjpW0mnPPmcgmv11VSQOfSLxcFKBJPFC/gSdykiWz8fUJfOZ
         wb969RMNZPlNLNa2CdeXeXtnxbQ+kVqnHBFGx8DsRz+WU4AJFNXO+qQbLY43BR0FFSsi
         Mug3IMlQoeDVVZIfQxTJeM+sJbfZHwiQaoJNDF6l0rA3A5yssrBFM9aYO0uUFFPhhZI1
         BWeQ==
X-Forwarded-Encrypted: i=1; AJvYcCWVFYZwB5Q/e6orfxwr/1Wo/2LZMPCByEWAbWU0NV6jg0XHOWJux4beu7vfplVjp8A6Mcd3n8Ker/E3@vger.kernel.org
X-Gm-Message-State: AOJu0Yxl/VcMdgxjH1TGf7g8VMKZirQx9TN6kYiYqD9vSFR7qWJCifFm
	2NRWrbch6EGOt12BFqRw8N0j/7dr2RXAG+SMSZ2zod8/wkcUdtDAeIZD6nSaa0c1SIZTDOlbaSa
	PP25LCOL2lfxUln6bcxjBybip6Pkze2t0kzgRhCTPIcrwR2x0NiisFaQuTZWGc2jD
X-Gm-Gg: ATEYQzxpODSr8VQvN4go/wgHUoc11tcX49eLcwX7ydlvrWHscmw9PuVaWBoAoCkYf3p
	kWUCPWyslRtX+Tx6wlsnkyQhyoGPkDFWOTCBcBFoxBwGfm4iW+cn21/HsXfP+QsLmD7ox2J/X72
	M9oqzE9/L4ECocgelJaCIVeht+oBtQ1zjS4AgQ7WdhzzS6SWeh3bqL7FLdIKvbP4bjimNpHvwJr
	Y5/1h740o2qyxzwo3T8rN1HrCycvXjyMLkFrO/qrkPps+7hiXBy83oY2PTdjEv4WLtMKfggD8SJ
	i5G9CaIEsvlt2bv5w/bsUfLyFv0oCiWxoEYhEFoXpru7pLlFVuKHiCAf+MqaupabmLdPgJx3Yzx
	ChTADCmka0290/wKTyYcjFUEtlkkntTvXeLV9TWNF4uwJ1Xeiqw0=
X-Received: by 2002:a05:620a:170f:b0:8cb:b062:c2e5 with SMTP id af79cd13be357-8cd5af19e93mr127343385a.27.1772612322924;
        Wed, 04 Mar 2026 00:18:42 -0800 (PST)
X-Received: by 2002:a05:620a:170f:b0:8cb:b062:c2e5 with SMTP id af79cd13be357-8cd5af19e93mr127341285a.27.1772612322512;
        Wed, 04 Mar 2026 00:18:42 -0800 (PST)
Received: from brgl-qcom.home ([2a01:cb1d:dc:7e00:edb0:af14:f4c7:c6ac])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-439ba2a5970sm17481247f8f.33.2026.03.04.00.18.41
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 04 Mar 2026 00:18:41 -0800 (PST)
From: Bartosz Golaszewski <bartosz.golaszewski@oss.qualcomm.com>
To: linux-gpio@vger.kernel.org, Conor Dooley <conor@kernel.org>
Cc: Bartosz Golaszewski <bartosz.golaszewski@oss.qualcomm.com>,
        Conor Dooley <conor.dooley@microchip.com>,
        Daire McNamara <daire.mcnamara@microchip.com>,
        Linus Walleij <linusw@kernel.org>,
        Bartosz Golaszewski <brgl@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        linux-riscv@lists.infradead.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
Subject: Re: [PATCH v1] dt-bindings: gpio: mpfs-gpio: permit resets
Date: Wed,  4 Mar 2026 09:18:39 +0100
Message-ID: <177261231189.4768.12127456284535100239.b4-ty@oss.qualcomm.com>
X-Mailer: git-send-email 2.47.3
In-Reply-To: <20260303-irate-hungry-b54cda817e42@spud>
References: <20260303-irate-hungry-b54cda817e42@spud>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit
X-Proofpoint-ORIG-GUID: f9ciMJp_D9BfYxMIIzfuLjIYmSjEgy5p
X-Proofpoint-GUID: f9ciMJp_D9BfYxMIIzfuLjIYmSjEgy5p
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMzA0MDA2MyBTYWx0ZWRfX/BJp0bj8JZlq
 unf3x5rOzpNFdkaP1qZtkq1XQjR0hcFIRLMDwoHfHWEpE6ggeIS8g+rEMIccStQVOqP/ToEgCT/
 HEqs1WYQ4RS0UtIvC9tSXul/m/8UCq9A8C/8P1UBrW7eUobBiErLrVgtRFDmqPNuygmCryxLwzK
 RyKrQSxlnruzVddjoGTLQqCrF5xP7l7l653QFIFrVHV0xBYnmTF5VW+UNgFGqzJJbrq7dAAFyX/
 lAM3zBKgTboi2ODwhEVQB+mPae8buSlyNwESFZXh6fVbN5nVy3D1E0igKIkoT7fW+i/DayqmAXl
 C8eA1zm1QVErb4BgDsDi8a+D3dJqf4BELrdVvmvgYHUVfGeYpe6cqJj0JVyxI1XuEZoUkrPj/+e
 xTIfSLHOUN3/KZ9/uSVP0wQW/JbqB8gvOnHXQ1f5vECL6u1gcO3ON2hJQVFG5eQ4JTDpOXEdS21
 zwunZWJJa+3/D1uEAXw==
X-Authority-Analysis: v=2.4 cv=C67kCAP+ c=1 sm=1 tr=0 ts=69a7eae3 cx=c_pps
 a=qKBjSQ1v91RyAK45QCPf5w==:117 a=xqWC_Br6kY4A:10 a=IkcTkHD0fZMA:10
 a=Yq5XynenixoA:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=u7WPNUs3qKkmUXheDGA7:22 a=gowsoOTTUOVcmtlkKump:22 a=VwQbUJbxAAAA:8
 a=EUspDBNiAAAA:8 a=ol5VpEufyhQU1HveAicA:9 a=QEXdDO2ut3YA:10
 a=NFOGd7dJGGMPyQGDc5-O:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1143,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-03-04_04,2026-03-03_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 adultscore=0 clxscore=1015 phishscore=0 malwarescore=0 bulkscore=0
 priorityscore=1501 spamscore=0 impostorscore=0 suspectscore=0
 lowpriorityscore=0 classifier=typeunknown authscore=0 authtc= authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.22.0-2602130000
 definitions=main-2603040063
X-Rspamd-Queue-Id: 24D2B1FC7FB
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[qualcomm.com,reject];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	R_DKIM_ALLOW(-0.20)[qualcomm.com:s=qcppdkim1,oss.qualcomm.com:s=google];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	MIME_TRACE(0.00)[0:+];
	RCPT_COUNT_TWELVE(0.00)[12];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_FROM(0.00)[bounces-270906-lists,devicetree=lfdr.de];
	DKIM_TRACE(0.00)[qualcomm.com:+,oss.qualcomm.com:+];
	RCVD_TLS_LAST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[oss.qualcomm.com:dkim,oss.qualcomm.com:mid,sea.lore.kernel.org:rdns,sea.lore.kernel.org:helo,qualcomm.com:dkim,qualcomm.com:email];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[bartosz.golaszewski@oss.qualcomm.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	NEURAL_HAM(-0.00)[-1.000];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Action: no action


On Tue, 03 Mar 2026 16:33:12 +0000, Conor Dooley wrote:
> Both CoreGPIO and the hardened versions of it on mpfs and pic64gx have a
> reset pin. For the former, usually this is wired to a common fabric
> reset not managed by software and for the latter two the platform
> firmware takes them out of reset on first-party boards (or those using
> modified versions of the vendor firmware), but not all boards may take
> this approach. Permit providing a reset in devicetree for Linux, or
> other devicetree-consuming software, to use.
> 
> [...]

Applied, thanks!

[1/1] dt-bindings: gpio: mpfs-gpio: permit resets
      https://git.kernel.org/brgl/c/b678676b7a0ab65ad5b4278505d6bcf706e53230

Best regards,
-- 
Bartosz Golaszewski <bartosz.golaszewski@oss.qualcomm.com>

