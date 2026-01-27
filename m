Return-Path: <devicetree+bounces-259851-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id eGMBAJ+leGnVrgEAu9opvQ
	(envelope-from <devicetree+bounces-259851-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 27 Jan 2026 12:46:39 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 4A5F693D6C
	for <lists+devicetree@lfdr.de>; Tue, 27 Jan 2026 12:46:38 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 45C98307713B
	for <lists+devicetree@lfdr.de>; Tue, 27 Jan 2026 11:44:27 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 6BC713314D7;
	Tue, 27 Jan 2026 11:44:26 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="PrYdzZvy";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="dUXhctuS"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3639D349B0F
	for <devicetree@vger.kernel.org>; Tue, 27 Jan 2026 11:44:21 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769514266; cv=none; b=NkLG1hqbpnUp66kqta8zul0+R7FxZotUjXap6YV7PyRgK5cfmhVyaG1tCrwCmjJuRZKoSA+4XZu6s26miLf2dUqTUJ07EhWJm62A1vmX/8BMwBN4fdASundzrl93LUdlAAi1jPM2EvYL3luj+XeA1/rj6dLnFyKf308zk0l1arI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769514266; c=relaxed/simple;
	bh=XkUs3VCJc/AIYlQWOSpOh8PZtE2e2JnJgF1qE2Kr83o=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=vFiT2UjQikduX9xtCpvAE8i2vsHTev3512WHDySJWSYcIr2vte5ngu1AL/V22NgQJWm24pd4RZruosSrvid1qSpzZTnNQIBMFeqpW2TGzRTW+292xrBIcPk9QBOxN0maARlJD/vFwXmy/uzyggrQ6YaAp5ysczmtOXLR0tuPfqA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=PrYdzZvy; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=dUXhctuS; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279868.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 60RA0fm8184791
	for <devicetree@vger.kernel.org>; Tue, 27 Jan 2026 11:44:20 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	1ajW8VlXL9PXUYNm6dzgjc6Ekk9sKYJyt4aIPS8Ay4c=; b=PrYdzZvytKQKnjua
	jXeN01J4TCs8GUu+wh4nUyHZuooxkH77O/LWOfWFOGyoYbpBpJWF6w6qYpJuw2ex
	/FH04H2rbtRuldADO2+IKqHmhR0U9zZDadwyqnnv8EjKJMkWXt4kxqxmq3TgeGQO
	uZixg87ONSCO904/K+wYRIBYqzaSPHq6f3PaAxQziOThCm7Mlxjl8IZVhnjPafeB
	Z96TM7y8KTsoXo08moCYLtspGGWAHkA+D7JaYvlBqdnc3+cuJu8x0oJkfOxH47gi
	zLTnAH93q+lBoBaBLKZvuVOPZJWwY+kojh5jx6T4d9wWqyvI7+Pu5rhTRcf4voLU
	xmG7XA==
Received: from mail-pj1-f72.google.com (mail-pj1-f72.google.com [209.85.216.72])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4bxdv9jw9m-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Tue, 27 Jan 2026 11:44:20 +0000 (GMT)
Received: by mail-pj1-f72.google.com with SMTP id 98e67ed59e1d1-34ea5074935so4737104a91.0
        for <devicetree@vger.kernel.org>; Tue, 27 Jan 2026 03:44:20 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1769514259; x=1770119059; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=1ajW8VlXL9PXUYNm6dzgjc6Ekk9sKYJyt4aIPS8Ay4c=;
        b=dUXhctuS3Oht81M3+ZaOsTGSwLp4yP8o3scwaFk+lPHG+awcBTHLxxntSvm3YIeONW
         asCiRHa+SImFcfKyChafFmwdLr/2/JoJUq2vFppsnYfdNRnRQ4j12i5D2sj/H0YlnZCI
         Yd6TfJgfH4m8pKKIjJ2jSLnhGD9M/44PEhm31oe3DLMcFvvWHWVRvY87VkyBfb9ZNp29
         +Q7gd9apG9mu+vdjRDPYs0YY4wQLMY3EEVYfN9cIqI/A9SHZ9tUbFb0lnRPy6+GBtvEV
         hnSAMvNg07CaBnAdgIzFKYjvU3knWiEs597A+C1RhF3SvxDIQ0pMMHVJh/CPaaOruQn7
         0TdA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1769514259; x=1770119059;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-gg:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=1ajW8VlXL9PXUYNm6dzgjc6Ekk9sKYJyt4aIPS8Ay4c=;
        b=B4ghl7BdzsBsM/UxeQRCTeRYGeoVFeNwoPekU9Io69JMV2xRRWSvh2y/6LU4qUXhnL
         RY8plaR7RrTmqFa+QhJXS2PAHNh81k4MN4XNsumRZpaM7Zrns0TvaBPCndnXDypyYdG9
         S+N3MVEkhT/be1Ksu+qlEM8sYvkvbJz2qJWrVsEBQK7QKVLm8cAwwi99ZJV4s+Y/DRcp
         mul785yzjF6SgWGcnlcYxUvpYoIRKHQVq3tLgS6NZ35KaofYbNccrIPT9XT3GOKZsNa6
         ygpuGmD5wVmiY2/7p+lgkmJ00P8vrbCSV9wOkmMl5J9hng2f+EeuEwqK2vQj2McddT2R
         32jQ==
X-Forwarded-Encrypted: i=1; AJvYcCXOe5Hl9JxqdL2Y2puT3/B9lZycSSYUPTxdAhc9Jd9qfMc792EsEqNQsgy642m9nNg4aos/iPeRWKsU@vger.kernel.org
X-Gm-Message-State: AOJu0YyjsL3U5kXjP8PWq3BbYZhgdlG4qGwkJxlqIe2GHJ616Dgh7EBe
	R3VeQtP/mc+RyvOuLFZqzP2wBBql/T7UAz2KGfkXSj8WJYwrk9n4RvkDmP3rydedI2s1Ezy52Ty
	eXhTg3X5NDzO/xNWcPLnD6z4p44hEkhzObluAUTAoYVDiE4oU8esmQhr1pkfLnu8h2w2HkF4x
X-Gm-Gg: AZuq6aIILH+dKNDUD42bf2EHUnsTAwmIl5+N9OGDrhNAefx7GZitJDxxvhNt41UVKQt
	pTKMM1ImE8U5LJbBfEDHYilIIakeJh3oIdNR/XTSAY0MYDza3B2yJZ7ip4C4Pdytq2dEiRwuYVR
	jh66aO2O3JhjX5qCXUwUDvNed4jZpQ0vg5NW4aAWb400NMFV1YpApfx/0Q7BMlRLBj38nPKaVLl
	DCb84MUBKJnWKyFUKp+U61cVF0EVJ3/24J5QiXHgEN9mR3zZCBCZfeYgpzY3QAqLihSteOYBYYC
	tf4JAc/t5ZlWR+eayJLQocr26DOPR67dVXuTb+mY06ZFjsPIAOO3oHhr7q+M9TbPZMxapb+K0H0
	gaH1VSgMzWINziWfMfb+PR5xfbheE4CjFK1a/
X-Received: by 2002:a17:90b:2d83:b0:34c:6124:3616 with SMTP id 98e67ed59e1d1-353fed87b05mr1393103a91.27.1769514258917;
        Tue, 27 Jan 2026 03:44:18 -0800 (PST)
X-Received: by 2002:a17:90b:2d83:b0:34c:6124:3616 with SMTP id 98e67ed59e1d1-353fed87b05mr1393088a91.27.1769514258332;
        Tue, 27 Jan 2026 03:44:18 -0800 (PST)
Received: from hu-mojha-hyd.qualcomm.com ([202.46.23.25])
        by smtp.gmail.com with ESMTPSA id 98e67ed59e1d1-353f6230d5dsm2392301a91.17.2026.01.27.03.44.15
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 27 Jan 2026 03:44:18 -0800 (PST)
From: Mukesh Ojha <mukesh.ojha@oss.qualcomm.com>
Date: Tue, 27 Jan 2026 17:13:48 +0530
Subject: [PATCH v2 1/3] arm64: dts: qcom: lemans: disable zap-shader for
 EL2 configuration
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260127-talos-el2-overlay-v2-1-b6a2266532c4@oss.qualcomm.com>
References: <20260127-talos-el2-overlay-v2-0-b6a2266532c4@oss.qualcomm.com>
In-Reply-To: <20260127-talos-el2-overlay-v2-0-b6a2266532c4@oss.qualcomm.com>
To: Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org,
        Mukesh Ojha <mukesh.ojha@oss.qualcomm.com>
X-Mailer: b4 0.14-dev-f7c49
X-Developer-Signature: v=1; a=ed25519-sha256; t=1769514252; l=675;
 i=mukesh.ojha@oss.qualcomm.com; s=20250708; h=from:subject:message-id;
 bh=XkUs3VCJc/AIYlQWOSpOh8PZtE2e2JnJgF1qE2Kr83o=;
 b=dM8mjHZtb7ynVdO4q6faIsNvSqstK9das048iELFvDSViMOJDPldUkWOpuMwHt46ZTMCx5cEr
 /p/dfjUnS0FBsqjYJqY+i0FDDfhKcz8QnLexUbE4G3bMTKMluNW4s8O
X-Developer-Key: i=mukesh.ojha@oss.qualcomm.com; a=ed25519;
 pk=eX8dr/7d4HJz/HEXZIpe3c+Ukopa/wZmxH+5YV3gdNc=
X-Authority-Analysis: v=2.4 cv=OYOVzxTY c=1 sm=1 tr=0 ts=6978a514 cx=c_pps
 a=RP+M6JBNLl+fLTcSJhASfg==:117 a=ZePRamnt/+rB5gQjfz0u9A==:17
 a=IkcTkHD0fZMA:10 a=vUbySO9Y5rIA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=EUspDBNiAAAA:8 a=OJ7jxCfjRLf0q5geLBoA:9
 a=QEXdDO2ut3YA:10 a=iS9zxrgQBfv6-_F4QbHw:22
X-Proofpoint-GUID: uHYh9mwOYfTnXUzZtOyG0F66UrF2-J3p
X-Proofpoint-ORIG-GUID: uHYh9mwOYfTnXUzZtOyG0F66UrF2-J3p
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMTI3MDA5NiBTYWx0ZWRfX1ZTA45r84YOC
 XQQkcApsqZ3blog/yNpWehJxgXMwgYj5WZkpqCBvhCvKjS1dHBnyYNLLEl7MePGQEL7oEnUfh4H
 shmI+Wey5suyfctYCagfFA3BWymIHrQmH9ckiI4p5OzFPmEE/NIlCXuK1wO+DxlErKCuxazzObV
 XBpfcOM6bkJ7OlsPEyc6W3snurZC+uoZmfJ7gIuodSanSs5bieFDbK1TRo2npN+sJLWAE32MgPl
 0OfpRLtaXoRffW0ildC2xmG9WtpckPMzwlXfYimBCgSddTsq0LNo9CrpqrdHBKtwDk55Z2fh97c
 STMm44X5XSPk7SoemWGBwDDQe+eUy+7O8ButJVMFznvh3iR0zGPdT93mTRL2UhtFPp2R5a/aMix
 joBK9BGi/FD6/Trh7MSeD3zKNpzs8SaWfZ0o3vqZxqavZJUWsfE4HcqbhC8x1GR/hY3EvZZgi9/
 p4oB8/ATt5PChmK9/6Q==
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.20,FMLib:17.12.100.49
 definitions=2026-01-27_02,2026-01-26_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 clxscore=1015 priorityscore=1501 adultscore=0 spamscore=0 impostorscore=0
 suspectscore=0 lowpriorityscore=0 malwarescore=0 phishscore=0 bulkscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2601150000 definitions=main-2601270096
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-2.16 / 15.00];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[qualcomm.com,reject];
	R_DKIM_ALLOW(-0.20)[qualcomm.com:s=qcppdkim1,oss.qualcomm.com:s=google];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	DKIM_TRACE(0.00)[qualcomm.com:+,oss.qualcomm.com:+];
	DBL_BLOCKED_OPENRESOLVER(0.00)[qualcomm.com:email,qualcomm.com:dkim,sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,oss.qualcomm.com:mid,oss.qualcomm.com:dkim];
	RCVD_TLS_LAST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_FROM(0.00)[bounces-259851-lists,devicetree=lfdr.de];
	MIME_TRACE(0.00)[0:+];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	FROM_NEQ_ENVFROM(0.00)[mukesh.ojha@oss.qualcomm.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	RCPT_COUNT_SEVEN(0.00)[9];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Queue-Id: 4A5F693D6C
X-Rspamd-Action: no action

We don't need to use zap shader in EL2 as Linux can zap the gpu on
it's own. Lets disable zap-shader for Lemans EL2 configuration.

Signed-off-by: Mukesh Ojha <mukesh.ojha@oss.qualcomm.com>
---
 arch/arm64/boot/dts/qcom/lemans-el2.dtso | 4 ++++
 1 file changed, 4 insertions(+)

diff --git a/arch/arm64/boot/dts/qcom/lemans-el2.dtso b/arch/arm64/boot/dts/qcom/lemans-el2.dtso
index ed615dce6c78..621ad930cf54 100644
--- a/arch/arm64/boot/dts/qcom/lemans-el2.dtso
+++ b/arch/arm64/boot/dts/qcom/lemans-el2.dtso
@@ -10,6 +10,10 @@
 /dts-v1/;
 /plugin/;
 
+&gpu_zap_shader {
+	status = "disabled";
+};
+
 &iris {
 	status = "disabled";
 };

-- 
2.50.1


