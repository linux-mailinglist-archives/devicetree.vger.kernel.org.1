Return-Path: <devicetree+bounces-264002-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id IIs+L7rgiWnGCwAAu9opvQ
	(envelope-from <devicetree+bounces-264002-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Mon, 09 Feb 2026 14:27:22 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 67F1810FACD
	for <lists+devicetree@lfdr.de>; Mon, 09 Feb 2026 14:27:22 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 02148304BCFF
	for <lists+devicetree@lfdr.de>; Mon,  9 Feb 2026 13:23:57 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 313DC378D72;
	Mon,  9 Feb 2026 13:23:55 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="N4oGc/+Y";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="JatYJ3lD"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F25EF37882B
	for <devicetree@vger.kernel.org>; Mon,  9 Feb 2026 13:23:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770643435; cv=none; b=rWTY/uzwA41SqpCLGiTpNN9DJ8FCkdis2KDn2UTQdmJ733t/QBrNFSB6a2Dp6nujNVEidvsNtGUvYXBiQUr4fFYq/mSkl4hEj+Hv6rR4jHR3lxoxj0uXTsvkHwiRPB2P59ID68qYCpgShqk89cHf7UT/HfL90/5UqDJptaEw+80=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770643435; c=relaxed/simple;
	bh=+/Gu/bOzREMsyojxtBLS2rrsVxBEz/1x89UZ/kvwe+U=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=EWFJQcxW+LATug72qrT5F2JcFgbb50zt4osuNj2k4AQ2aXOVWkeApHeEjBGoec8VSIyv/qy1ihczLbLZVfCVR3Zma/Mb3Hh+xlz4Z7dwoY54bVB2T7iA4bxlli0PafCN8lgKuzwsMyKxJUnxA2VD4WXyChKwZ5fdj0J0dzHLyDw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=N4oGc/+Y; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=JatYJ3lD; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279863.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 619CGxaj3436819
	for <devicetree@vger.kernel.org>; Mon, 9 Feb 2026 13:23:54 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	kINSpanPXinEKIu6zisValx81lzCgphYv7gFKnGPwhI=; b=N4oGc/+YVA9tE7mW
	TeXnadCkGD4wa9mhFhhvmFtHrXOVXala6+5F9h83IuikT0bUVnSW2Wm6i+BwUz0P
	LaZXPtrPmFmzi9NikJAhWVp65g3ssUp0bzwJ7CZYdtecvAh7aIzVbkh1ZQwl6J+l
	noBjNQU1YvwbhtA3Cj2xIq7ZDWw7WjLSUuVK8Svhi1+h/mNnT1H6URbYpfKYpspE
	3Y34qmDshzC4BIQnNgWKVmqKqhRrwkGZi3Cyj58jL1yBgBkLerb0Jcf4omQvVITn
	0ZERfB9JTy8qIqpLQlM1b33DllqbljCDGrWF/L4kb0JWCF/u/Fz5XKrcJ0SyNkAZ
	UtZUDw==
Received: from mail-pl1-f199.google.com (mail-pl1-f199.google.com [209.85.214.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4c7fev8652-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Mon, 09 Feb 2026 13:23:54 +0000 (GMT)
Received: by mail-pl1-f199.google.com with SMTP id d9443c01a7336-2aad60525deso45088055ad.1
        for <devicetree@vger.kernel.org>; Mon, 09 Feb 2026 05:23:54 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1770643434; x=1771248234; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=kINSpanPXinEKIu6zisValx81lzCgphYv7gFKnGPwhI=;
        b=JatYJ3lDaIlGiAhcfvqKJGieKU0p4GzlHTdbvXuJrsdoJzCEJ62SAtjtkgz2WbFP4G
         8HPWAOjPkMgsyJdwgf1gKKl+EvVI1aTauBGrG7DmXt1IsGDTDAXTLdL//b+j28D9YO+T
         lhYAbI9yIJU9viz8VTmpYQcufAaCo5mSbm2hGKpysfBgqQQHu0zAkfImmbe0bbBz0wRo
         tJozymGrdYnPgQfSjX9l7Sg/fpG5fMMA2D+eCoj8VXhXMu/I0FkfwP5CypT/uydQDd34
         TI/AnTtZFhHIOPKyonZ9TBKLqgSX2a1bCO7tfX9NpuKcrySm+2wgOmOalZhDUvKhYr2d
         EYhw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1770643434; x=1771248234;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-gg:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=kINSpanPXinEKIu6zisValx81lzCgphYv7gFKnGPwhI=;
        b=OIZWtpvjmlfLhVEa5qdFv/6/6T9PFuyzXBWo0NW/hKZw+63FCnI1w58xD4ulxXOAun
         FDGKZ5Dd8zeFq6iE+K6MYrOBwy+dIytt+FY8Cxjzd/9HC4Guu2UvwFyZs6KocZb4wq5D
         b8gx2Bvd0EyBEEdSK9tcI44NOYs+hy48HXXXEIu99S22mF7kstBIAQR03kx2TduoRX5C
         Jl4/5qGFBbixEKKxjb4hM8QOoEgG/UCE2rst3v/nYjqlgYFezDe3ML85zdLguXAZFMSk
         FGjqkAN722n0U/Kx3r/JXDa3uh3Wsv0JLFLpgHrY8PUqeg663gpRaiJI/k1O+Ml3A3Y+
         pT4w==
X-Forwarded-Encrypted: i=1; AJvYcCUr8IrOB5++/MOWA7C2+pzvd5MHhKu6wN/XfDje1sW//E0vVnAdWK/bDv0OF6gMxjiaC2fk6um0VYdR@vger.kernel.org
X-Gm-Message-State: AOJu0YwshePVorxTLuf4DTbvaJtx2qs2vNIsav73JiaFQcbT+BCPdCHm
	32QKKNAFHGNAgdVhuWEVrgR0YTB6I3TNpC/ql0kH74upd7h9rafn5wCXcJAgvapSj8YzlrX0YxR
	gp0w7kDscdN2zSqXHBECLK3ciGxyrJWkHkZ8e7cyTZ2axdpftttA5nWNVImaqL4s=
X-Gm-Gg: AZuq6aJarJ728zqFJ6dVvAvAORApo4lAVRQ9xn+diDG/Of/7NnKkGvAYZRKZVPeZ94X
	d6LP6JH0bIxUUphg4+lMKKHPTmXN7S9PIOFzRc/+XXd+hAYol4ADeh7rzDETl2kPrDcO71t08b6
	WwJS3UCvfRpUbGBzFvVcVbnTrh+6uJCxwp+HK6CEVq8ZJ7X05/NHqFi8oQAEU0bZF94ASjPUug0
	7xLFosMI7fr/TR9A8RBH7A2VuWe4PIOedZ6qGGOsGNBCpVtAT0iCcFS+lqUBjvABdIVE4Mm4gQ3
	kDAtw0HTbqjNGlahoD3H6rNkUrGKFq5k+J3gkZpJu5ZWVf83vMkvdLVr94/jWMBbAugJzJfaRwK
	AshQbxbB+PhpOAft8uLlqzdIOZlMe42kUI90DGis=
X-Received: by 2002:a17:903:1b04:b0:2a9:4507:3e86 with SMTP id d9443c01a7336-2a951627cf0mr111516855ad.19.1770643433343;
        Mon, 09 Feb 2026 05:23:53 -0800 (PST)
X-Received: by 2002:a17:903:1b04:b0:2a9:4507:3e86 with SMTP id d9443c01a7336-2a951627cf0mr111516475ad.19.1770643432877;
        Mon, 09 Feb 2026 05:23:52 -0800 (PST)
Received: from hu-kotarake-hyd.qualcomm.com ([202.46.23.25])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-2a9521ba245sm107895765ad.47.2026.02.09.05.23.48
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 09 Feb 2026 05:23:52 -0800 (PST)
From: Rakesh Kota <rakesh.kota@oss.qualcomm.com>
Date: Mon, 09 Feb 2026 18:53:37 +0530
Subject: [PATCH v2 2/3] dt-bindings: input: qcom,pm8941-pwrkey: Document
 PMM8654AU
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260209-add_pwrkey_and_resin-v2-2-f944d87b9a93@oss.qualcomm.com>
References: <20260209-add_pwrkey_and_resin-v2-0-f944d87b9a93@oss.qualcomm.com>
In-Reply-To: <20260209-add_pwrkey_and_resin-v2-0-f944d87b9a93@oss.qualcomm.com>
To: Sebastian Reichel <sre@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>, Vinod Koul <vkoul@kernel.org>,
        Dmitry Torokhov <dmitry.torokhov@gmail.com>,
        Courtney Cavin <courtney.cavin@sonymobile.com>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>
Cc: linux-pm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, linux-arm-msm@vger.kernel.org,
        linux-input@vger.kernel.org,
        Rakesh Kota <rakesh.kota@oss.qualcomm.com>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=ed25519-sha256; t=1770643418; l=1331;
 i=rakesh.kota@oss.qualcomm.com; s=20250919; h=from:subject:message-id;
 bh=+/Gu/bOzREMsyojxtBLS2rrsVxBEz/1x89UZ/kvwe+U=;
 b=ijX3YIvOnRyfVlnlkeN9NfEiJ4B1RPQghZcI/UnOiX8PNUgwUqTz+cxU6/56oV6kerN695nLL
 e8T9xaVApd7BPznSzph85uZilNnxZZpl7jbOvuPdoGLKhRzPZLaj9fB
X-Developer-Key: i=rakesh.kota@oss.qualcomm.com; a=ed25519;
 pk=dFhv9yPC8egZglsSLDMls08cOvZKZkG6QQn1a/ofwNU=
X-Proofpoint-ORIG-GUID: GoRoKa2JxQK5AJ73KZH3_xOQh9-Mglia
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMjA5MDExMiBTYWx0ZWRfX+pv1eQcpdvzV
 vJJ11vbvyAxK0B71miH3T2firCSwYG1XF4tRiv6WDxNbw/Mym1Pi4DjSpHLjPh7mW/2Tz1JXpJb
 PUv+D2TTjH2x3SCLIUhO64Hco4RXwwu/bIdhnVrlcWrGNhJKaDWFpet9V4LzEg7WLTK/2djW1YF
 a4fAEJ5k9Zs6VrEFpL9beXKupG6dGF7PXKRvVuq2rtHw7ckDQrfAtixMOLTlLfoZwtT7Dj7XUNp
 8BIFhDYbq1FEf2rfgd2cG71cx8fXP5yj3SVaQ/BDdh6UFjCDpEBe8VgrhhDjjWP+zV/44ROxLRc
 4DeE/55dLg/zqsK69tbESRzZNZFWnz8mLHKLTQjiLBYfG8kNIivyOC8kZ/tXov70pa6fPJwGMkm
 dFvPLVtKyNiYJXzBdFrKg0YTUz/KG0fx74K7Tw6l1mxNQWCtzoiOkylXUv2+rkePYXNE2FRv3LM
 Cww2oA5ILkswptuG0rA==
X-Authority-Analysis: v=2.4 cv=F6Rat6hN c=1 sm=1 tr=0 ts=6989dfea cx=c_pps
 a=JL+w9abYAAE89/QcEU+0QA==:117 a=ZePRamnt/+rB5gQjfz0u9A==:17
 a=IkcTkHD0fZMA:10 a=HzLeVaNsDn8A:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=Mpw57Om8IfrbqaoTuvik:22 a=GgsMoib0sEa3-_RKJdDe:22
 a=EUspDBNiAAAA:8 a=Jjn6TvgLJkZUgEtuktkA:9 a=QEXdDO2ut3YA:10
 a=324X-CrmTo6CU4MGRt3R:22
X-Proofpoint-GUID: GoRoKa2JxQK5AJ73KZH3_xOQh9-Mglia
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-02-08_05,2026-02-09_03,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 adultscore=0 spamscore=0 clxscore=1015 lowpriorityscore=0 priorityscore=1501
 phishscore=0 suspectscore=0 malwarescore=0 bulkscore=0 impostorscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2601150000 definitions=main-2602090112
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
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-264002-lists,devicetree=lfdr.de];
	FREEMAIL_TO(0.00)[kernel.org,gmail.com,sonymobile.com];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[15];
	DBL_BLOCKED_OPENRESOLVER(0.00)[oss.qualcomm.com:mid,oss.qualcomm.com:dkim,qualcomm.com:email,qualcomm.com:dkim,sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[rakesh.kota@oss.qualcomm.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[qualcomm.com:+,oss.qualcomm.com:+];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Queue-Id: 67F1810FACD
X-Rspamd-Action: no action

Add compatible strings for PMM8654AU power key and resin support.
These blocks are compatible with PMK8350, so use that as the
fallback.

Signed-off-by: Rakesh Kota <rakesh.kota@oss.qualcomm.com>
---
 .../devicetree/bindings/input/qcom,pm8941-pwrkey.yaml   | 17 ++++++++++++-----
 1 file changed, 12 insertions(+), 5 deletions(-)

diff --git a/Documentation/devicetree/bindings/input/qcom,pm8941-pwrkey.yaml b/Documentation/devicetree/bindings/input/qcom,pm8941-pwrkey.yaml
index f978cf965a4d497cb7a4c670cea368c3ac70b67e..f2543d6faefdc42c36c4b9851e0f9532e73dd02a 100644
--- a/Documentation/devicetree/bindings/input/qcom,pm8941-pwrkey.yaml
+++ b/Documentation/devicetree/bindings/input/qcom,pm8941-pwrkey.yaml
@@ -12,11 +12,18 @@ maintainers:
 
 properties:
   compatible:
-    enum:
-      - qcom,pm8941-pwrkey
-      - qcom,pm8941-resin
-      - qcom,pmk8350-pwrkey
-      - qcom,pmk8350-resin
+    oneOf:
+      - enum:
+          - qcom,pm8941-pwrkey
+          - qcom,pm8941-resin
+          - qcom,pmk8350-pwrkey
+          - qcom,pmk8350-resin
+      - items:
+          - const: qcom,pmm8654au-pwrkey
+          - const: qcom,pmk8350-pwrkey
+      - items:
+          - const: qcom,pmm8654au-resin
+          - const: qcom,pmk8350-resin
 
   interrupts:
     maxItems: 1

-- 
2.34.1


