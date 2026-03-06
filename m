Return-Path: <devicetree+bounces-271922-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id uPRpKgabqmmbUQEAu9opvQ
	(envelope-from <devicetree+bounces-271922-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Fri, 06 Mar 2026 10:14:46 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [IPv6:2600:3c15:e001:75::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id A74BD21DB43
	for <lists+devicetree@lfdr.de>; Fri, 06 Mar 2026 10:14:45 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id 94A2B302144F
	for <lists+devicetree@lfdr.de>; Fri,  6 Mar 2026 09:14:21 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B9F0033ADA4;
	Fri,  6 Mar 2026 09:14:17 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="UQGyM54z";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="iO651oA/"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DFC3933D509
	for <devicetree@vger.kernel.org>; Fri,  6 Mar 2026 09:14:15 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772788457; cv=none; b=FdQdYdC0gtSLXuyJErscVLjLqmI9SMWH7c4cCEyIRBeuc4X3rklIO432h8xaw2OUcAMsyqq3XWk4s9RlZr6c3NQssLUqJPajg+ApfiZV2oquQJYwNZSbTSeKVeLQwe5X9LlqOKxRWCT9XXZsTZy7Cq6jEOA4iRWVRAQfV5h7Jes=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772788457; c=relaxed/simple;
	bh=j9kAVWEcq4kJ2U6go5+vijxNxwm9aMxldtxRHQOJjNo=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
	 MIME-Version; b=IHZywY+PypSEiMCQxyixx7dz9+aNXUzqMzHiBj7/twA6fTohvGcH0jLh4yQfy+W1LpuM/1p3Ta79yW7j9W3GmaTqT4nEHV9E1xDWdLxBspm/MgbmDVwjS7ZIhhouz+ci4VDVb/5LbwjIGq9V/Ri9z1FIbkdv065RI7Y5yMxKwK8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=UQGyM54z; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=iO651oA/; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279865.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 6264aq4b3887016
	for <devicetree@vger.kernel.org>; Fri, 6 Mar 2026 09:14:15 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:date:from:in-reply-to:message-id
	:mime-version:references:subject:to; s=qcppdkim1; bh=4KJdcPYS2T/
	tDwl8v/ClnTGiIeSMvSg4PoOWVnBABxI=; b=UQGyM54zSV4jf04heiQuJ3X7wim
	mIUvcoBUQFcXlm93puG2d/PmXdv+JSWg1X6jrtXR0kABVqwhMmZQccOQa02hWHIX
	UNPDz8XWVPYqJt7QplEUFsGVCoyzjujTB6yYMzowh4Wq0CHWV6T/jQ2xWZofaOf+
	S6d1RhGnzDK4xM6uFUAWfS/V1lePx0WOkAVsYCfzNf8YsooPt9n32DX9JcTIi+4h
	q6hKIsGW5B2ngBXP9nuTPV2tFNfBUNxpyUBwKlP3+IvuZNBUZDKteZh8aSPsxjR7
	N3ppwOyjwKWWPYjcV7iq5mY4hoYfeLMs/fY/vSf/uKqq4X2nAsWQheFg/jw==
Received: from mail-pf1-f198.google.com (mail-pf1-f198.google.com [209.85.210.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4cqj4sa0ym-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Fri, 06 Mar 2026 09:14:15 +0000 (GMT)
Received: by mail-pf1-f198.google.com with SMTP id d2e1a72fcca58-8273937bfa8so3628059b3a.2
        for <devicetree@vger.kernel.org>; Fri, 06 Mar 2026 01:14:15 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1772788454; x=1773393254; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=4KJdcPYS2T/tDwl8v/ClnTGiIeSMvSg4PoOWVnBABxI=;
        b=iO651oA/vTk4B0R1LBuISo0c5U+uMdGLjJ1UyOXTp8ebbuMgdm8XBfeb0DfLEBoZdU
         ThV0B93A1NkvyD4WeTjumhWCrUshvnZAu/6IBT3HiAOU9zE8NgELqrfVSyrQ3X3o85TL
         SJ3OQDMf1QPXNkNlQb+SN4By/QVv56ORAEc4Iq4+ak7F2AW6rvHHIkMDi1GdGN5hH8GN
         OnUmzfKLOyEHyaPQ03jHu8ikP+E618d3C1lAxidYfPTwXZtlp0Hr8yfnm7MiyBvf3byH
         cqaMufBbWcqN5UAk1BDasY/Y+6r0OP7owcl0wItL/g5HEJL8aEhvlVfb1wBHjwZawGcs
         TpCA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1772788454; x=1773393254;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=4KJdcPYS2T/tDwl8v/ClnTGiIeSMvSg4PoOWVnBABxI=;
        b=O3wtRNDx7YSB9h/RN8/UhiLGIvZaSPcyoz/6f63qYZtt3T4sa8dgEcK51SwA6UDYMl
         DG4yx0ZGru1FjAKMds4TBrIHUwbdAF+U5OQsXk6buuEeDKuvt55IdOi+xLOqR8KD5Jpj
         VN510PyWoz2wPB3BeFWWFX2j1eQfLDV8Skn0mLKG0LFraCxbI3NtbGEb2rk/lcZoSIw2
         C7cN4Ot0Glt//fldLM/8fb/1AdNh4p9jr4yKMFya6SFkM2PfwA3qwDSfC/Mza8G/9kX7
         SAfUsybTZ8NKcE7g1BFNuqLkbkDnVk68Nl0Oa7knP65RD7GPgZv9LdtVJnKmAmqEPivK
         bSIA==
X-Forwarded-Encrypted: i=1; AJvYcCV9Di882OtbwOBJ+DR9O2F01LJnQly+/TQAh30XNhFDL4ho317nf/52N7uNf3oBajIxNJnxYPdwBw+Y@vger.kernel.org
X-Gm-Message-State: AOJu0YyMJ7n6AthkZ0CyWUezN1HD1BAnbHSxRlDtpbTHgDA2I0FGl72e
	7TsWeGg+tVN5N2UPSHaPFWGnduz2jI9OdDTn/jaMTgJUEQ+YuNAgvVRcLq2LGai3EKn3t69pQoW
	MB52p6JtALr2G71pINyzM7oOe3GJoS+Gw+ej0l45V5m63bq91AP174D0jPxVnVP1k
X-Gm-Gg: ATEYQzzOKuj/AmmPQm1N+JFrm0D1ztMF4Ow2OQ1tg2078JW7Y5pJBg60NqhHknNPko5
	8KYEWgUhdPHmetjUM6GAnCrw/Do6tKzMAURTb84xhdCJtt3Za+KFlGbC/zsEJXnp4MWcrs+iHcD
	BB3txcXU8lx6XoedwYBOFOckHT7euag1D2kARFEAjYvk9WYAk59a1N5BgvCp7elXKS3LrBjPdyi
	adhYjz4soJjdvmGy4NT3o/TfCKTmMMoWmScU9meaYkoZElbsVTlm8JF/Blb0vZBJdwkKOehn3T1
	6kGlrWhjNWYbgcm87feUXijhr1DJmSii1ydcjpJDMsNUhOyXXPSSF+ELBp9jiLgpJMAPigUkQXr
	2uwt8xb+iBPKwQUu/XfrGvitR/vqb5dt38ZPuj4dZY+zXSJdZdcoFPe8=
X-Received: by 2002:a05:6a00:4b49:b0:824:374a:1425 with SMTP id d2e1a72fcca58-829a30b1239mr1417589b3a.53.1772788454350;
        Fri, 06 Mar 2026 01:14:14 -0800 (PST)
X-Received: by 2002:a05:6a00:4b49:b0:824:374a:1425 with SMTP id d2e1a72fcca58-829a30b1239mr1417566b3a.53.1772788453833;
        Fri, 06 Mar 2026 01:14:13 -0800 (PST)
Received: from hu-swatagar-hyd.qualcomm.com ([202.46.23.25])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-829a48647e8sm1169360b3a.33.2026.03.06.01.14.10
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 06 Mar 2026 01:14:13 -0800 (PST)
From: Swati Agarwal <swati.agarwal@oss.qualcomm.com>
To: Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org,
        Swati Agarwal <swati.agarwal@oss.qualcomm.com>,
        Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
Subject: [PATCH v6 2/4] arm64: dts: qcom: lemans-evk: Rename vbus regulator for Primary USB controller
Date: Fri,  6 Mar 2026 14:43:53 +0530
Message-Id: <20260306091355.1178333-3-swati.agarwal@oss.qualcomm.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20260306091355.1178333-1-swati.agarwal@oss.qualcomm.com>
References: <20260306091355.1178333-1-swati.agarwal@oss.qualcomm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMzA2MDA4NiBTYWx0ZWRfX5hZyuP45ScI4
 TYPkvcZqyV10IG2eb2XoM1gAgDPmjx7O9/kFZqCH0jZiWzf9BsiOvdzYudx3suyd2L2uoqOXT9o
 IrHJfLmzQpXS0KOPdI100u2if6dnT1IyJp14UpGVz61gf7OZ5qp+vebjGNtVrBDB9Jh6ihMHOpZ
 qfA7tDYqHxKg9HORKTJd3SdElMGYGxc6tcocBbfCjCbwKK2/tcZ4yFPKvD7om0XbiPnEx3v1xQ+
 1gsSjedJT4iaRfOlihcMnX+6orgl8X4QRJl7lNt+8+mjmuZmHuKsCbDKrs4QSZ0YlzQ3leG3E8D
 xh+OfSwWaNFfptHgKgITOOYFqoYHXGXvUr0Sg4dpZiF9ji/CcelYeeEe4/XfLKiCtah55BnDAAe
 1DNPmcU+hDW8gxVr8+IMdwIQnpQvorR8LBWEQesDaIfysFfuYSOiPULPz7bPmZNkqWgpz1LDXvB
 IkI2VQ72x/7baPa092w==
X-Proofpoint-ORIG-GUID: Cjg-l_i4PoLY8baaAe74WS0o13wAgrce
X-Proofpoint-GUID: Cjg-l_i4PoLY8baaAe74WS0o13wAgrce
X-Authority-Analysis: v=2.4 cv=T8uBjvKQ c=1 sm=1 tr=0 ts=69aa9ae7 cx=c_pps
 a=m5Vt/hrsBiPMCU0y4gIsQw==:117 a=ZePRamnt/+rB5gQjfz0u9A==:17
 a=Yq5XynenixoA:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=u7WPNUs3qKkmUXheDGA7:22 a=Um2Pa8k9VHT-vaBCBUpS:22 a=EUspDBNiAAAA:8
 a=917_i3xC6rPZgS4eXuUA:9 a=IoOABgeZipijB_acs4fv:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1143,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-03-06_03,2026-03-04_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 clxscore=1015 phishscore=0 lowpriorityscore=0 adultscore=0 spamscore=0
 impostorscore=0 priorityscore=1501 malwarescore=0 suspectscore=0 bulkscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2602130000 definitions=main-2603060086
X-Rspamd-Queue-Id: A74BD21DB43
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.66 / 15.00];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_CONTAINS_FROM(1.00)[];
	DMARC_POLICY_ALLOW(-0.50)[qualcomm.com,reject];
	R_MISSING_CHARSET(0.50)[];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c15:e001:75::/64:c];
	R_DKIM_ALLOW(-0.20)[qualcomm.com:s=qcppdkim1,oss.qualcomm.com:s=google];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	MIME_TRACE(0.00)[0:+];
	DKIM_TRACE(0.00)[qualcomm.com:+,oss.qualcomm.com:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_FROM(0.00)[bounces-271922-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[swati.agarwal@oss.qualcomm.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c15::/32, country:SG];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sin.lore.kernel.org:rdns,sin.lore.kernel.org:helo,oss.qualcomm.com:dkim,oss.qualcomm.com:mid,qualcomm.com:dkim,qualcomm.com:email];
	RCPT_COUNT_SEVEN(0.00)[10];
	NEURAL_HAM(-0.00)[-1.000];
	TAGGED_RCPT(0.00)[devicetree,dt];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Action: no action

Rename vbus regulator for Primary USB controller as per Lemans EVK
schematics.

Reviewed-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
Signed-off-by: Swati Agarwal <swati.agarwal@oss.qualcomm.com>
---
 arch/arm64/boot/dts/qcom/lemans-evk.dts | 6 +++---
 1 file changed, 3 insertions(+), 3 deletions(-)

diff --git a/arch/arm64/boot/dts/qcom/lemans-evk.dts b/arch/arm64/boot/dts/qcom/lemans-evk.dts
index 397052394930..687cafe3d15c 100644
--- a/arch/arm64/boot/dts/qcom/lemans-evk.dts
+++ b/arch/arm64/boot/dts/qcom/lemans-evk.dts
@@ -44,7 +44,7 @@ connector-0 {
 		data-role = "dual";
 		power-role = "dual";
 
-		vbus-supply = <&vbus_supply_regulator_0>;
+		vbus-supply = <&usb0_vbus>;
 
 		ports {
 			#address-cells = <1>;
@@ -132,9 +132,9 @@ platform {
 		};
 	};
 
-	vbus_supply_regulator_0: regulator-vbus-supply-0 {
+	usb0_vbus: regulator-usb0-vbus {
 		compatible = "regulator-fixed";
-		regulator-name = "vbus_supply_0";
+		regulator-name = "usb0_vbus";
 		gpio = <&expander1 2 GPIO_ACTIVE_HIGH>;
 		regulator-min-microvolt = <5000000>;
 		regulator-max-microvolt = <5000000>;
-- 
2.34.1


