Return-Path: <devicetree+bounces-266285-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id kH8YHgDclGmkIQIAu9opvQ
	(envelope-from <devicetree+bounces-266285-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 17 Feb 2026 22:22:08 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 1797E150B59
	for <lists+devicetree@lfdr.de>; Tue, 17 Feb 2026 22:22:07 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id DBD16301F9A0
	for <lists+devicetree@lfdr.de>; Tue, 17 Feb 2026 21:21:12 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 9E5B82F12B3;
	Tue, 17 Feb 2026 21:21:12 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="iJso5ds4";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="GxgXe+Yi"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5E7EF271450
	for <devicetree@vger.kernel.org>; Tue, 17 Feb 2026 21:21:10 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771363272; cv=none; b=XH1DsWEn7EKSFCGTk/V7u6ynnGpfUDStgwND5SbTjeM67xDzyXjTcUhoNl+Jz7l+0dh7/1TFDpWoKSVBpkyzK43kLkLyp1CAX6CutM/iDDsC4nJwIq141untt1R7zY97TJbLED6uHT2KzE4AZj8h4INPVocP0MKEMrJcVzm0rI4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771363272; c=relaxed/simple;
	bh=8EOzvFckDpsbM/ttEHapCkFpM4U16jSMWZzGm83YlWk=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=Q2kGdFKxTOo0A44H35Tp6eMdnPM2swcO6TIwTCaleaPeyLYn/LmIIFshwqDZmJRqvIYPQvsO10LINZMGOOXG97JtLs7i8Sm7VBTwbfKZbcD0JL662BEAqIVlBdHB0ddgOcV+ME3Xn6IcTY4EamwsBaQSz16xpJ0YXwa1sUc1Fa8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=iJso5ds4; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=GxgXe+Yi; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279865.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 61HETMYA2111937
	for <devicetree@vger.kernel.org>; Tue, 17 Feb 2026 21:21:10 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	IKiwnJcyjljwD6As+ZOVHTeDRLNk3mbNvoBiz6O/sLs=; b=iJso5ds4XBlJ+u2b
	Mr31rA8ZKYhpwMrAH5eaVqU0w+X7jbtVvmmWGIUxeq6GUZLQJq2vNMk9yVSC50gt
	Ch245ME/vRvCTeXot26hZ2EUmtMftI0IAaIgIR5y37kphsFW7zPv7vqOSh5KFdZP
	CiihwYgZHpy+9mgKUo8DJuCiULjSDJsfgFvZYXoyprNxJDdINk/j8UFD1TDKW1vz
	6eaISNzL/syrO6ClWXBa1/A0twNH4TriFyzt9g29ZSTV0txlX/fdkkD8f4g8i6vU
	r5KqSosEgFh+gS1ysL/UK/16PBYOqR00M0rtNb5hp8p75vWrVu9gUUSesRmuY/dL
	ESFc6A==
Received: from mail-qk1-f197.google.com (mail-qk1-f197.google.com [209.85.222.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4cchv4jr8p-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Tue, 17 Feb 2026 21:21:09 +0000 (GMT)
Received: by mail-qk1-f197.google.com with SMTP id af79cd13be357-8cb403842b6so3178158785a.1
        for <devicetree@vger.kernel.org>; Tue, 17 Feb 2026 13:21:09 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1771363269; x=1771968069; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=IKiwnJcyjljwD6As+ZOVHTeDRLNk3mbNvoBiz6O/sLs=;
        b=GxgXe+YitzWYOTNcepI1YAh9rORT0dw7aqnoCajRWzcSPwOH1MHTm2WFzeFRQKVG7H
         4j+nmiyWWSpuMcw9gF6wesVKTeE8cGYE6n2TfdINfIZHm2KlugCeufFFrJGLwHFfgOXj
         vTNPgSoUqaDTX9k4RhHjp3UCvfOpIVYNYAKmKDbE9kGfjvt2mjUwXZktRmOLHnp8Pljj
         v8tnjiOMuwTqJXtZHRfLg1wfnE6FJUD6NYLpIKYjDgB1/NDZZatwonYp/oWPcFiJx9M+
         lCgMVb/bGbSZDTxxlqn40rcqyg1uNBuguXSafTmeWi1U9PAWypHpYZE4w8vQn40IIbhA
         A9SQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1771363269; x=1771968069;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-gg:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=IKiwnJcyjljwD6As+ZOVHTeDRLNk3mbNvoBiz6O/sLs=;
        b=cXLQ03eRUHX9Y/+14jJJDyFyskPzWibgbooFGDOSboT+FYRziVace1FK6mmFXRshVt
         cnfSwcpZYN27WP/sTCnQfna/bqehtwGQ1+M1n6qLqpSQiCTRbS78bppARiurMcnFCuOj
         Pdp3Q9fklVbcJcW2VRScDYadOol+WKvZG4jeUE/+97UVRPj8NjpDkFsHJVkUTJO/tqDK
         xMLUvbUxkePEDWsdJeN8JjuYkkAFI14vT2i84BzI7X+qzceAE7N682GM9y/f1IJGhOAB
         Hh+uGowT39TRXQI9JyGrXqCjvTL7jnrLpUEU2Q6EglFOL5jqHivnWyC0CHJ183j08cNg
         T0Dg==
X-Forwarded-Encrypted: i=1; AJvYcCXpwOMFnjTzb5GZ8y6llp4CAh1STlXPjpyae9b0c26euegnXZdaAFcpIBGLmjvLsD6FPfokQDChf9Ks@vger.kernel.org
X-Gm-Message-State: AOJu0YypffWnf63+cRNZUO1Psv29wIbvRBBtlWv2PuzEcVATRg1gAkF9
	hKqs5lD/rKGqn1j8P2uQLvPtE/YGNywHh2ifYCL62EjQsyLQzqB7xrNBxzFWwZzG4GhGeZZ55+F
	SokDF9aabDo3zX+dQusEvLUzRRl45SZyS2ulxR29OB8/Gt6tcU18VPm0Ze/ociiWR
X-Gm-Gg: AZuq6aJr35Qs72hc3bvFsba15x+s5m+qW58+jWGQBKC5XN5TUrzm3S63f/PDJ6Uk3In
	rHhBs7HO3M23/BdT+tmk99KugPzVQZj+Lp3VRoYRhrPWFvuUoOXPf88IfqVRBE+ZV9pmJbZzBvr
	AAFnLf+j/rfNw8CIFkWL/SwQVCs3jd4Shdmjlflf6VIcLKhVacIuChybHdxGf3YzFgRGHOhMLA0
	uqjqGOhAcHBkqfXfBcaLxg5mlw2eQI2FJeqQWyRjkv5BZAjJJg68+pFd7nWstCZ/3tOiUPdLD3a
	ULdTFHYaEp2rfmIWiZ+gLCjxrYZhka9ST6bs2Kh40rBmiIVt3BYwI/5+9PeODNmkGRSOYo9qLw5
	7nA0AYej8WsEAgvbxEsCbfJsa0NM0oRXg1xAhTnyt20bb+ein1XNO8Q2pXsxwkkmm3Pb1yQOUe2
	YHRT+VFt3u8KiQLgmarVtPHnRYHHiT3wn2ius=
X-Received: by 2002:a05:620a:3705:b0:8b2:7558:409c with SMTP id af79cd13be357-8cb422a6bc2mr1692159885a.36.1771363268810;
        Tue, 17 Feb 2026 13:21:08 -0800 (PST)
X-Received: by 2002:a05:620a:3705:b0:8b2:7558:409c with SMTP id af79cd13be357-8cb422a6bc2mr1692155685a.36.1771363268189;
        Tue, 17 Feb 2026 13:21:08 -0800 (PST)
Received: from umbar.lan (2001-14ba-a073-af00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a073:af00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 38308e7fff4ca-387068923c3sm39293311fa.5.2026.02.17.13.21.04
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 17 Feb 2026 13:21:06 -0800 (PST)
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
Date: Tue, 17 Feb 2026 23:20:43 +0200
Subject: [PATCH 2/4] dt-bindings: arm: qcom: add Qualcomm SDM845 HDK
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260217-sdm845-hdk-v1-2-866f1965fef7@oss.qualcomm.com>
References: <20260217-sdm845-hdk-v1-0-866f1965fef7@oss.qualcomm.com>
In-Reply-To: <20260217-sdm845-hdk-v1-0-866f1965fef7@oss.qualcomm.com>
To: Bjorn Andersson <andersson@kernel.org>,
        Michael Turquette <mturquette@baylibre.com>,
        Stephen Boyd <sboyd@kernel.org>, Ulf Hansson <ulf.hansson@linaro.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, linux-clk@vger.kernel.org,
        linux-kernel@vger.kernel.org, devicetree@vger.kernel.org
X-Mailer: b4 0.14.3
X-Developer-Signature: v=1; a=openpgp-sha256; l=771;
 i=dmitry.baryshkov@oss.qualcomm.com; h=from:subject:message-id;
 bh=8EOzvFckDpsbM/ttEHapCkFpM4U16jSMWZzGm83YlWk=;
 b=owEBbQGS/pANAwAKAYs8ij4CKSjVAcsmYgBplNu6wRTWV3Y5tQpAGHqTnKPAD5FWOG/yH8bnK
 bb1k3hj/x2JATMEAAEKAB0WIQRMcISVXLJjVvC4lX+LPIo+Aiko1QUCaZTbugAKCRCLPIo+Aiko
 1XXAB/9Zyu4pXCvjvMO5vv5LKugCBNa2m3Zu6/zpDYFDpyHX/emcdP8+wHkmFNq2CQXDhr1WxrP
 cZJNB4qCqpJlCfl2WhXp7mSANTmCd9vfEYF5IIMh8q3MLUQ/NzmmJstoWovXR/8WFZS2VO9jlCl
 NKhWIBRWIzFsFGLeNnWYGfC2HFj/QD6fHeWPq7ClyqlbINw6fvTZtUZ9e78jicTJsh0MMi5kA6N
 8qSnSRJrSvLC+V0yhiMZZo4R5FR0vMx/oGk+8Ng3Hm6F18txG5SrEAg3QUdMGhG1b1VWWfNUAPz
 p+78RWPjQFdFse3EuBkeWCBz6WyEXOHQrgXklNLVf0a9Fadq
X-Developer-Key: i=dmitry.baryshkov@oss.qualcomm.com; a=openpgp;
 fpr=8F88381DD5C873E4AE487DA5199BF1243632046A
X-Authority-Analysis: v=2.4 cv=eYAwvrEH c=1 sm=1 tr=0 ts=6994dbc5 cx=c_pps
 a=50t2pK5VMbmlHzFWWp8p/g==:117 a=xqWC_Br6kY4A:10 a=IkcTkHD0fZMA:10
 a=HzLeVaNsDn8A:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=Mpw57Om8IfrbqaoTuvik:22 a=GgsMoib0sEa3-_RKJdDe:22 a=EUspDBNiAAAA:8
 a=9nMZPvWkDyzw5AdY2PIA:9 a=QEXdDO2ut3YA:10 a=IoWCM6iH3mJn3m4BftBB:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMjE3MDE3NSBTYWx0ZWRfX5L0KkCmNGFxP
 8o9Zkg4uIJPLtdFU99jnm2Bn/05rO5xKtV7flswxocF0mzl+tphYb6/xXcEWEgK2U05vTzAlwFt
 hn9YqqICvNs1vCoGm29yr8yRoFM9nB0FqKuKFER2QjQGIdGsJxtsc//W6PfIEwGUfsllujoFhxt
 R3aPyX5Mdr8n9gTxu0+EbcGu4sE2PVcmjYsX8zyVxHoLotNb9a8cLiKVcXq8PMkvBrS4LbbZtu4
 gmEGTmdPwS15kmwqOcqLQe88D5jIIyigDKasFONKksAkDiJ2Po3iB8swLsqoWpuybVIg3R/GcGl
 weEA/RrIaChp+52xURzAv5JLluujQUTkX0PMbaNGhJ0/sBJodZEXdfjOy8vb40L0JNYR2sln58d
 KAyerggDdQkwbQ+oTrMLuu9f7fHUGUT0SJ0961ECe3uvrocskRhiHrPYpwXkJ9WyVdwAHOLGY9q
 FqgHAOo80RkMrN/pg2Q==
X-Proofpoint-GUID: f2JWbmo-nx0wE9vB9XgeRM4-3QX9DXnG
X-Proofpoint-ORIG-GUID: f2JWbmo-nx0wE9vB9XgeRM4-3QX9DXnG
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-02-17_03,2026-02-16_04,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 spamscore=0 bulkscore=0 suspectscore=0 priorityscore=1501 malwarescore=0
 phishscore=0 impostorscore=0 lowpriorityscore=0 adultscore=0 clxscore=1015
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2601150000 definitions=main-2602170175
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[qualcomm.com,reject];
	R_DKIM_ALLOW(-0.20)[qualcomm.com:s=qcppdkim1,oss.qualcomm.com:s=google];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-266285-lists,devicetree=lfdr.de];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,oss.qualcomm.com:mid,oss.qualcomm.com:dkim,qualcomm.com:email,qualcomm.com:dkim];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[12];
	MIME_TRACE(0.00)[0:+];
	DKIM_TRACE(0.00)[qualcomm.com:+,oss.qualcomm.com:+];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	TO_DN_SOME(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[dmitry.baryshkov@oss.qualcomm.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Queue-Id: 1797E150B59
X-Rspamd-Action: no action

Document the mobile HDK for the Qualcomm SDM845 platform.

Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
---
 Documentation/devicetree/bindings/arm/qcom.yaml | 1 +
 1 file changed, 1 insertion(+)

diff --git a/Documentation/devicetree/bindings/arm/qcom.yaml b/Documentation/devicetree/bindings/arm/qcom.yaml
index d48c625d3fc4..80491aa994ec 100644
--- a/Documentation/devicetree/bindings/arm/qcom.yaml
+++ b/Documentation/devicetree/bindings/arm/qcom.yaml
@@ -921,6 +921,7 @@ properties:
               - lg,judyp
               - oneplus,enchilada
               - oneplus,fajita
+              - qcom,sdm845-hdk
               - qcom,sdm845-mtp
               - shift,axolotl
               - samsung,starqltechn

-- 
2.47.3


