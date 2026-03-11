Return-Path: <devicetree+bounces-273884-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id iE7VCAMUsWkZqgIAu9opvQ
	(envelope-from <devicetree+bounces-273884-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 11 Mar 2026 08:04:35 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 78B0D25D2A5
	for <lists+devicetree@lfdr.de>; Wed, 11 Mar 2026 08:04:34 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 54B883151600
	for <lists+devicetree@lfdr.de>; Wed, 11 Mar 2026 07:04:23 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 0119037701B;
	Wed, 11 Mar 2026 07:04:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="LI9PUK7D";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="GqM7oFJP"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4CFFF377556
	for <devicetree@vger.kernel.org>; Wed, 11 Mar 2026 07:04:15 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773212662; cv=none; b=N3SRnCGwOO6N9vNEEzoAbw71iE2jbREGZaGYDpIOy6Gm4ULujrAt196Hlz+DWM/BbScuYIO8+jIHVblzlu/WeotJk6iBdjtQzvcqla/woK3HSnSIH5YDVx0uFtu/dNEUky+aQnzKt4mV2IJEakM5OL3Jp4VPNMtE16DRP4Zniqk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773212662; c=relaxed/simple;
	bh=VWqKurBxYJdAW/CPRT4gVM3scZ1DFdjkS32zw5TTzhE=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
	 MIME-Version; b=iCPzD2qR6ZlEfWx8bKZ0yInloivwT8fxFv355RiNeFcQWgf7lnPXWH6arbYz1k94QJchxrfZnqK3XB9+psY70wlITKuk+zYJh2whn8pNGeJeHIWbtPXcZBnUyYIKO5glswfR5JwBT0x18ZFEiKiZZ7gY5fM5SDEgkpel2lxKCyY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=LI9PUK7D; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=GqM7oFJP; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279862.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 62B5ZUBA1863186
	for <devicetree@vger.kernel.org>; Wed, 11 Mar 2026 07:04:14 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:date:from:in-reply-to:message-id
	:mime-version:references:subject:to; s=qcppdkim1; bh=u1dHLzLMJ0s
	Lo1VKU6WC1FPnWsCc2m9dyLLFAlosA9k=; b=LI9PUK7Dlci1A+uJj1jfIzaeNiF
	GYGq8hknGEX0EFmmfzHpokCP56uLVMUy6W463eUR6YLM4ppLPJLw3Oww4CBtjjRQ
	K9fCR+uwpTVVuyEG/m8qXjrKwh4w12O/e7qf1Pm1vhJM9tD7hMdX9n0qbnNS3cwE
	PT0vI3bWvmWpP0qIfMZICmTR+UyhzPU1MkSiM95IKVHNwhPHCHoy1NWaY3KfWZvv
	Q9WtHriEkf2RyUTW135BMY8g7sc+HO59/96INWPkjUYGOAyHdueVMJc6T1lQsUJG
	r9WAM8R3MdCRPzhI/ZyrhgkVMWAmTwEADXajcOjcO2rjYhuEVyk1Vgae4dQ==
Received: from mail-pl1-f197.google.com (mail-pl1-f197.google.com [209.85.214.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4ctmw837ke-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Wed, 11 Mar 2026 07:04:14 +0000 (GMT)
Received: by mail-pl1-f197.google.com with SMTP id d9443c01a7336-2ae49120e74so95828665ad.3
        for <devicetree@vger.kernel.org>; Wed, 11 Mar 2026 00:04:14 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1773212654; x=1773817454; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=u1dHLzLMJ0sLo1VKU6WC1FPnWsCc2m9dyLLFAlosA9k=;
        b=GqM7oFJPlFwm5jeD6Qp6mYqk/m6INvRQISJN5b3/9MW7vP1vuzjhdxan2tQe0JT6aE
         FpA+t2owXVnP7hVp8bc2K1sBtFYIqSS6DsIcneshHl5r2/UZ0fuWJwFKpaYWgUVLMmJZ
         lUHj2w40P7zCtzeu6tM8cvXbj/0t5fuArmWqInRrXdCCE5ZZa8lUnSf4h/78IGylUo1S
         00M9ayl1ANBGIaNb2mY85zDHAav3WI539+H4i3OU9UdBqWj25mhmQFyNnQmuYZ5l/XTz
         /PkgRiZRLC2g9ZTYdFAF2WHvYNUsep+ApWaf4sShGscovUc8XLV9SZg8g2VSi3C4278h
         TEfg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1773212654; x=1773817454;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=u1dHLzLMJ0sLo1VKU6WC1FPnWsCc2m9dyLLFAlosA9k=;
        b=dTkH7OJYmYkN9dpk+0mtB0zIAfH8m0WVZfoSODnkWPmUaB8OYVb7C0VFI5Hnqm8FWb
         z6loAUsLgkEx5+ZfvqANVx9QgeZI2T8v2iLp5jLpeXBdxVPOBN/aloMNG86xoeCGQtGP
         J98kZoSkTe0v/xd8n3z/cjidvkNiHolYR9M4HZ+tXYt1w4jZY6xfR+7o+SzSuJSaDpjl
         s6s02iRHV3hKxbOQUPMbvbFGJhUnRifgwJAH5e7fKD7+GtmIv4vzrCzuM93bUSJci+lM
         C1uw9HApAKn3pgK+d3VK2FLSQ07Sv18Mgg8FS6xcrEIwB+6pW0GhynYcRjdABx1WHQeP
         rN4Q==
X-Forwarded-Encrypted: i=1; AJvYcCUcMUdNBDeHC89Vy7UREO6P28bt1bZBIKSrEsnjJQnDyfu1lGXAUwLiJ3EUvgqciazby3F4Bs8VdU0A@vger.kernel.org
X-Gm-Message-State: AOJu0Yx6G+Rj7Cn26UgVX+sL9Rq+/xzlUZZ8g4o7eAoaug3CNeVxoI73
	rivh8hdRb7l7UxlMZMG5BO42NisM5iU1OM5tUpieMVIpmzBcdNJxnhuLx8fTSmj/EZuMOx6wAxS
	IkgEOHlfi3Jfq9zAwA74f73Tjq30rOTTRXi/M/DZrJOaoqUrN8KN+zqZfiOKHt0ns
X-Gm-Gg: ATEYQzyjI8/6TEdzAKbF3HeccJoecqdNeXd+aEXMGOHTR/tMx9YLRpuZiwDNzr8SHZB
	BMFjobcIRS/AdNFFdIQzvKrjRSdi+Vsyxsi6KBY5+0C7gIUT585PTjPQyMNKX6+qPqkF/DJ667J
	wTqxuK3uPI7kPiR88NArS0E2A9e6W5U5y6w6nAyuvrUe5Fki7W/bj9AWjt/yKFVGgoW4+GYns8D
	2Y/RUqoWZT51T6H0wdSB4lwZFJRJuQv721az2ztp8s70IkNDT/WiaqO5pWKCcV5ko2U7kRoxs6u
	ANyDifrBYwh8H/ct9EBIjNbi3X8MNlfYNrSXBGqHMKNGs3VQOLU1F/KmJbbdi/D6vSBsCyPBtin
	zLkFt4q0zKjAzO/zpGsLfNeElmU3MDBDQWZiywcgezNf4/SLr99pDXY0G5Q==
X-Received: by 2002:a17:902:d2cb:b0:2ae:a70a:2af2 with SMTP id d9443c01a7336-2aeae882456mr15324545ad.29.1773212653612;
        Wed, 11 Mar 2026 00:04:13 -0700 (PDT)
X-Received: by 2002:a17:902:d2cb:b0:2ae:a70a:2af2 with SMTP id d9443c01a7336-2aeae882456mr15324325ad.29.1773212653087;
        Wed, 11 Mar 2026 00:04:13 -0700 (PDT)
Received: from hangtian-z2-2004.ap.qualcomm.com ([114.94.8.21])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-2aeae34d925sm13355755ad.50.2026.03.11.00.04.10
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 11 Mar 2026 00:04:12 -0700 (PDT)
From: Hangtian Zhu <hangtian.zhu@oss.qualcomm.com>
To: andersson@kernel.org, konradybcio@kernel.org, robh@kernel.org,
        krzk+dt@kernel.org, conor+dt@kernel.org
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
Subject: [PATCH v3] arm64: dts: qcom: qcs6490-rb3gen2-industrial-mezzanine: disable WCN6750 and WPSS
Date: Wed, 11 Mar 2026 15:04:08 +0800
Message-Id: <20260311070408.2287889-1-hangtian.zhu@oss.qualcomm.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20260311031145.2285056-1-hangtian.zhu@oss.qualcomm.com>
References: <20260311031145.2285056-1-hangtian.zhu@oss.qualcomm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Proofpoint-ORIG-GUID: BgwWtLgZaFLBkjYmNQ5zHdDJ1QHtMQ-a
X-Proofpoint-GUID: BgwWtLgZaFLBkjYmNQ5zHdDJ1QHtMQ-a
X-Authority-Analysis: v=2.4 cv=PJECOPqC c=1 sm=1 tr=0 ts=69b113ee cx=c_pps
 a=cmESyDAEBpBGqyK7t0alAg==:117 a=Uz3yg00KUFJ2y2WijEJ4bw==:17
 a=Yq5XynenixoA:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=u7WPNUs3qKkmUXheDGA7:22 a=_K5XuSEh1TEqbUxoQ0s3:22 a=VwQbUJbxAAAA:8
 a=EUspDBNiAAAA:8 a=H9-LGvTQc6I73mOXZpQA:9 a=1OuFwYUASf3TG4hYMiVC:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMzExMDA1OCBTYWx0ZWRfXyGHGZEqMGtY+
 AX6poqi4zSqIyuEkhcHTPaZ2ZvRBgiX61w4DVZEvypyyoph8jZ55AGJGAUx4AysqoWnIiUC3aE/
 4dr4Bn4Axx+uqqfCYgK614OyX8mhOe5LxM6R4xbTl+dqF8Q5srkAYACzUM8IKC3FXxztF0WOcA4
 m67mvS03pMINBlnTvoujHS8krPjdr3JgFnSITLAGsw/jD4fffH/R/UjWdt/hyPlyxUOGkDgz0dP
 bfDXLpf2Pzr0rDeBqurQQFobC1BrO2RQlxT3frclq7T1r1XDXSxOZHb6uudFNdLjH0EsT34k+l3
 2EdE6Hbu60gYldiiGpd33oXJMoylxeuZ6vKHEQ+QwWyGbDzLOumMwapTqLWGlq9NpstC04Y6u9O
 ljxbLHmIMc1cL2gJM/++CHWQfldkt7wfLNemvoHK7PnYazIZLwuPpTfppNL/PGILH/XapNDrRcq
 yWRXMkWhp8neL0mqNTA==
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1143,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-03-10_05,2026-03-09_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 suspectscore=0 impostorscore=0 malwarescore=0 spamscore=0 phishscore=0
 lowpriorityscore=0 clxscore=1015 priorityscore=1501 adultscore=0 bulkscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2602130000 definitions=main-2603110058
X-Rspamd-Queue-Id: 78B0D25D2A5
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.66 / 15.00];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_CONTAINS_FROM(1.00)[];
	DMARC_POLICY_ALLOW(-0.50)[qualcomm.com,reject];
	R_MISSING_CHARSET(0.50)[];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	R_DKIM_ALLOW(-0.20)[qualcomm.com:s=qcppdkim1,oss.qualcomm.com:s=google];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	DKIM_TRACE(0.00)[qualcomm.com:+,oss.qualcomm.com:+];
	TAGGED_FROM(0.00)[bounces-273884-lists,devicetree=lfdr.de];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[qualcomm.com:dkim,qualcomm.com:email,oss.qualcomm.com:dkim,oss.qualcomm.com:mid,sea.lore.kernel.org:rdns,sea.lore.kernel.org:helo];
	MIME_TRACE(0.00)[0:+];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[hangtian.zhu@oss.qualcomm.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TO_DN_NONE(0.00)[];
	RCPT_COUNT_SEVEN(0.00)[8];
	NEURAL_HAM(-0.00)[-1.000];
	TAGGED_RCPT(0.00)[devicetree,dt];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Action: no action

From: Hangtian Zhu <hangtian@oss.qualcomm.com>

Disable WCN6750 and WPSS on industrial mezzanine. On RB3 Gen2 industrial
mezzanine platform, PCIe0 lines are moved from WCN6750 to TC9563 pcie
bridge. Hence disable WPSS and WCN6750 nodes for industrial mezzanine
platform.

Signed-off-by: Hangtian Zhu <hangtian@oss.qualcomm.com>
---
This patch depends on:
[PATCH v4 2/2] arm64: dts: qcom: qcs6490-rb3gen2-industrial-mezzanine: Add second TC9563 PCIe switch node for PCIe1
https://lore.kernel.org/all/20260305-industrial-mezzanine-pcie-v4-2-1f2c9d1344d7@oss.qualcomm.com/

Changes in v3:
- Commit message changes, move Depends-on from commit message to
cover-letter.
- Introduce the PCIe architecture of RB3 Gen2 iindustrial mezzanine in
the cover letter.
- Link to v2: https://lore.kernel.org/all/20260311031145.2285056-1-hangtian.zhu@oss.qualcomm.com/

Changes in v2:
- Commit message changes, change rb3gen2 to RB3 Gen2; wcn6750 to
WCN6750; wpss to WPSS etc.
- Link to v1: https://lore.kernel.org/all/20260311023219.2284643-1-hangtian.zhu@oss.qualcomm.com/
---
 .../dts/qcom/qcs6490-rb3gen2-industrial-mezzanine.dtso    | 8 ++++++++
 1 file changed, 8 insertions(+)

diff --git a/arch/arm64/boot/dts/qcom/qcs6490-rb3gen2-industrial-mezzanine.dtso b/arch/arm64/boot/dts/qcom/qcs6490-rb3gen2-industrial-mezzanine.dtso
index 2a2b7c2f9210..6594c7e1ea93 100644
--- a/arch/arm64/boot/dts/qcom/qcs6490-rb3gen2-industrial-mezzanine.dtso
+++ b/arch/arm64/boot/dts/qcom/qcs6490-rb3gen2-industrial-mezzanine.dtso
@@ -32,6 +32,10 @@ vreg_1p8: regulator-vreg-1p8 {
 	};
 };
 
+&remoteproc_wpss {
+       status = "disabled";
+};
+
 &spi11 {
 	#address-cells = <1>;
 	#size-cells = <0>;
@@ -280,3 +284,7 @@ pcie1_tc9563_resx_n: pcie1-tc9563-resx-state {
 	};
 
 };
+
+&wifi {
+       status = "disabled";
+};
-- 
2.25.1


