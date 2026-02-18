Return-Path: <devicetree+bounces-266482-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id KCQ2Mg32lWkMXgIAu9opvQ
	(envelope-from <devicetree+bounces-266482-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 18 Feb 2026 18:25:33 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 2CE33158468
	for <lists+devicetree@lfdr.de>; Wed, 18 Feb 2026 18:25:33 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 3EAC330490D5
	for <lists+devicetree@lfdr.de>; Wed, 18 Feb 2026 17:24:41 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 9FCAE345CB0;
	Wed, 18 Feb 2026 17:24:39 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="HiTdfwIi";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="IWED1Re9"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 49255302176
	for <devicetree@vger.kernel.org>; Wed, 18 Feb 2026 17:24:37 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771435479; cv=none; b=dajoieXXPw6/ZxJPwNPHMHRElYVLAGo06md/f1ferhrTrjDuWsFJV3XASBN/BYCWvnR/Sc0VfvyEVIOAJ3VTZoYKAMOL763tZepmrS5CpJEbvWH48tQHjD6U2TE+w89NSdLUif444uAlurgIyANEyXpj0VG9cZ+rtsOLkOcjT8o=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771435479; c=relaxed/simple;
	bh=cZjo88y9rZFFukc55HAP1oXbKdtMRxEsUlLKDPC+97g=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=hfgU6GcIPuSf/uObB1vQsAea/H/6MqSWfOTBIyLjlFR06UuKsiLKPw9vCoAlCRtQwQ9q1gCqrKx3RNjeQXTt20YbBK35ZEpzsK+he0N8/nwidOklpZ5SRjHJy1K0mhR4C/hKywYC5TcdhETFceXtv+ia7KB7OM+9jPxLfYotR3k=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=HiTdfwIi; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=IWED1Re9; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279873.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 61IF9mMr4025127
	for <devicetree@vger.kernel.org>; Wed, 18 Feb 2026 17:24:37 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	R4Iga5zDyQz6tRoNUjnRM5byhjgwAuTAkhrEWmEWqGI=; b=HiTdfwIijAz7Jh4r
	UKCrk5y/MjnE70vqjGHF9SlbWhCzEQgvfPOgBDOyeJzHLrMMOQR0958CsUqm5LRF
	OeoQH//T7WaxKqy67vm06B/ycg/Ib9rpTnQ5U3sXE3FlLzXVt+czCtlnukj7Me1L
	L1cXfG1WaEwE5aiOGbz8geCE89N+05yfosxWuuyKD1RUc8+1mfrwIFAFyySMaPHo
	VFutVm1RX07C8gIeugpnWeyDBG4kvfLuy792SAIAc2J0RyszJ2ATk/caflutuPn4
	D/CdDzUAMuC4kJVd1pcWGzDBp8BQ0FRqKuzmHQxSJVar2ASotXDmNg2DkTkVuZYa
	mVZ1hQ==
Received: from mail-qk1-f200.google.com (mail-qk1-f200.google.com [209.85.222.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4cd78c1vy6-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Wed, 18 Feb 2026 17:24:37 +0000 (GMT)
Received: by mail-qk1-f200.google.com with SMTP id af79cd13be357-8c71655aa11so27290185a.3
        for <devicetree@vger.kernel.org>; Wed, 18 Feb 2026 09:24:37 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1771435476; x=1772040276; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=R4Iga5zDyQz6tRoNUjnRM5byhjgwAuTAkhrEWmEWqGI=;
        b=IWED1Re9eq49wU/UUsHuuhh2yWoKwPI6e7Lh6nYnfag0EIefKlQQyjuXNq5RNapx6S
         xf3Hc2EXTpQ1gjv4kMS+4SDFqQzussAhbSdYxLE8IfgfMIOXf5nLvuzQIzjBggM+ur4b
         7WGbUirlSCZRidtKdpV4nBUY95/KrixvmPSmJ1mWFiQQYQ4ADDsUkCVDFksTeqnePBjA
         TdlT03q7d/dyvcBq9nXdklQ3h8zNGcSN/4e34goiS286kRVBJ2H65ydl6x3Ih1KbksGt
         8xRDVt+9YX5y4L4+yD2X9t3TKTfh7iGhXoXvJ0mvoep1FQ+WdXMkVd3uBLEvBzsp16XQ
         SuSg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1771435476; x=1772040276;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-gg:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=R4Iga5zDyQz6tRoNUjnRM5byhjgwAuTAkhrEWmEWqGI=;
        b=Fq7nuQJkNrRGQjtbEcddtY4hJ4aWvE5YjZvC46cxrNa4YhMmU47iCCZ3oqk+o+B8j3
         GrOZ9te/f9FWo27I5haP4LqHnHIew/0QSc0Z8bwabUW8F8y3KVfOQ3Wti5YavU7Pv4dD
         nI4RvH3uwj1PpE7rSdKZyLyx+1DOilBPYRDToWyzVnuXQJvZuTtLLNM36HrQGaqNxcG7
         CVDhDwgIMi2E4yVxeg2vfhxLZ3b7TLWw2r0vVu7W35FxuN+2V6oL6JstLakOOYyct5AT
         OT9BoY2GpIuHzLFdhh5+2lFEcDsY+nAcTcdCUxkrUSGfO2KzmwP7Y5qayWJk7xsumdJG
         WGnw==
X-Forwarded-Encrypted: i=1; AJvYcCWgHpdJ/qkpRgQuG/NFew0xGaA5G3aR5DMsxDoLb/DDLJIjYP5VF199X7uwBEdUcrlLyy2g6KxCYkp/@vger.kernel.org
X-Gm-Message-State: AOJu0Yz/cFwOBynbOyRsSJqpbqbrhpVF0sjQAi8sKzFJXb1d8P73c/wP
	PwkbZpSpKXIZaxMcuUHdWtwrEQPJOnPOhVRa3wjjSz8kJQLlbbrCw14T6T3hxLdS+uTBTH+gm7c
	0BKwBgcmC/fucsjAlMKx7wyrr7rFlITI6rsFA5RjTvfOZz1gagQZjk6WCHxUdPp7O
X-Gm-Gg: AZuq6aIaT69rIVwC6rwTAFQDvh/c1T2y0B2+I4+UTHkbld4MwKpdNXZD2csFma2c31l
	IwMUNsVeOfPBTrs3A9cKt7TuFpde2tQUVp60Jnw6sAwcUkUYPVbj3dwG7fMs551caqLoO4BAxcC
	pwAoDXZ6KEB8TrLiYWDC4fo8dbGkvffEf10d1YFnJu+AWjzsAzf+PPFR375Vv/SQx1ZsDOqOZ/i
	8JbV2LuYWIxYrajF6Xazc9rSOVpXy2RudeyqMJSnUw7JOd5DVlrpKpnIrKMA0vrSvr1H/WrucxH
	RmdOZjf2C2gzpncnGotu71GPrm+InfD/H7T8CSWBMJ2CAn2BmFuZcrLcAouuv9Qjr8+R+4n7Ark
	QvNfR5NyrORa2Cj7VP1mb1jCV9y/wJ6JzHtHGmKbmlvtB3A==
X-Received: by 2002:a05:620a:4724:b0:8ca:450f:c389 with SMTP id af79cd13be357-8cb740dd323mr311754985a.62.1771435476510;
        Wed, 18 Feb 2026 09:24:36 -0800 (PST)
X-Received: by 2002:a05:620a:4724:b0:8ca:450f:c389 with SMTP id af79cd13be357-8cb740dd323mr311752185a.62.1771435476108;
        Wed, 18 Feb 2026 09:24:36 -0800 (PST)
Received: from [127.0.1.1] ([178.197.223.140])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-43796ac8d46sm44181368f8f.32.2026.02.18.09.24.34
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 18 Feb 2026 09:24:35 -0800 (PST)
From: Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>
Date: Wed, 18 Feb 2026 18:24:25 +0100
Subject: [PATCH 3/5] arm64: dts: qcom: sdm845-axolotl: Drop redundant VSYNC
 pin state
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260218-qcom-dts-redundant-pins-v1-3-2799b8a4184e@oss.qualcomm.com>
References: <20260218-qcom-dts-redundant-pins-v1-0-2799b8a4184e@oss.qualcomm.com>
In-Reply-To: <20260218-qcom-dts-redundant-pins-v1-0-2799b8a4184e@oss.qualcomm.com>
To: Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org,
        Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>
X-Mailer: b4 0.14.3
X-Developer-Signature: v=1; a=openpgp-sha256; l=1325;
 i=krzysztof.kozlowski@oss.qualcomm.com; h=from:subject:message-id;
 bh=cZjo88y9rZFFukc55HAP1oXbKdtMRxEsUlLKDPC+97g=;
 b=owEBbQKS/ZANAwAKAcE3ZuaGi4PXAcsmYgBplfXKmM4sH3bGsVk09jQCGOv2O3VZN0VO0+DvH
 gusrtSOvHSJAjMEAAEKAB0WIQTd0mIoPREbIztuuKjBN2bmhouD1wUCaZX1ygAKCRDBN2bmhouD
 186wEACPGrFbFrUU6juBFAYEqsohB5GRcSFH29bo1/YofuE+fcp7zsuEVtTpul4XZbUFv8KciZv
 Agwi4np3OjL8ZQg8EsZQJkGWgiAkcJ/omSqK5ujTcGag9rfkRRtDA7GYbmhJW2xH1QmH3YNGfTp
 AxE2A9WqZ6L7V7ALfBwlbNRvdCfe7nG+0Tgf/y188Jz8OrfdApFN6KvF72k1DOCfI38rYRGeBf3
 XJyKsIolwn4Qm2QnIcu8Z/q50D7KMOqKGg+2lFQb28ATp/LVD6UFgUeqyO4zKQJWad1aPBrLvXo
 Ba/n/cbMzDNzTCqZUqjvCuc2GH75Mz2Uhxi3QgJjppaY5+dLB+s7McF/igr7JA6+WstuYPJwfsA
 1YOqR1YJW4VKwjVHeQ1x7FfwsbscV4KfdvF45GSpDUiginm1rnxpgwrkOBy3fhBc1XtMtLv/kCY
 NEHNkX9McMfOyqODty60trITBOZyclI5oW2XmjjHn1fFWsafqWRE5VxyRZuI76BF7wd7UWNdez1
 3BhCH7l6ITVWAZ5QhSYhuIpVsr1XTAKHRUX6PiyXkc/qrajfpE2yB/KmvVO/BwUa8F96w4oXDnJ
 Z7g/By7LOtAy2mxGi661r3A8RFNIHs7ux4NAsuUXgUKf4YzSSF6u0N6D95RTIewYU02LdlPnlKM
 dAFbGq71j4n160g==
X-Developer-Key: i=krzysztof.kozlowski@oss.qualcomm.com; a=openpgp;
 fpr=9BD07E0E0C51F8D59677B7541B93437D3B41629B
X-Proofpoint-GUID: xvZYLp8qwIFy0fIH_pns0GY7krZIYRxZ
X-Proofpoint-ORIG-GUID: xvZYLp8qwIFy0fIH_pns0GY7krZIYRxZ
X-Authority-Analysis: v=2.4 cv=P5k3RyAu c=1 sm=1 tr=0 ts=6995f5d5 cx=c_pps
 a=hnmNkyzTK/kJ09Xio7VxxA==:117 a=6nO30s3o7FuWeffXwhKHTA==:17
 a=IkcTkHD0fZMA:10 a=HzLeVaNsDn8A:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=Mpw57Om8IfrbqaoTuvik:22 a=GgsMoib0sEa3-_RKJdDe:22
 a=EUspDBNiAAAA:8 a=kqCYd9rN2MbHXTwIacgA:9 a=QEXdDO2ut3YA:10
 a=PEH46H7Ffwr30OY-TuGO:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMjE4MDE0OCBTYWx0ZWRfXxEbI4D9SPs4O
 X1CbHV5GLTKcZ5kA4Fk4lx58N/O57W+DVUDqnfWd7NUDVXW0n0rVkyGdBqnw6MD+DEd6rOQkStA
 RHIsFg01Q0ovILeefU86kBWe/XGMQdt0WVA0G+ZSiu3fIJe2zQr46c49ibSoFonh2tE1YSxU1mb
 xjtnRQ5hdB4PcsCfzEZePWF1MowIWfIjgc7epOczzS57StQykp67gu1eWwtFHr2RWTnE3SgJyva
 mVrFn84gkXlvcxA0G1e1393xyP5DAFhcr341AQmfwP45L840XfEnxS0D87yEZIFfKlG9cwfRLG+
 T6VAFiQtpWV8RzEWq7KqnHlzMnedd74/jogkGfajeyhi3mTkaZOscl2Wj6aOuaXijEL4kJ31ger
 1CYvR45Hj9g2nVnegeFfNeO3t0KYyqA3SN24iLc8ETv3R9RRl65ARU4NdMAHLsCrxHRvWLrthCS
 OsZJEbcF7lwTUFmEWrA==
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-02-18_03,2026-02-18_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 adultscore=0 phishscore=0 lowpriorityscore=0 clxscore=1015 impostorscore=0
 bulkscore=0 spamscore=0 suspectscore=0 priorityscore=1501 malwarescore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2601150000 definitions=main-2602180148
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
	DBL_BLOCKED_OPENRESOLVER(0.00)[0.0.0.0:email,qualcomm.com:email,qualcomm.com:dkim,sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,oss.qualcomm.com:mid,oss.qualcomm.com:dkim];
	RCVD_TLS_LAST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_FROM(0.00)[bounces-266482-lists,devicetree=lfdr.de];
	MIME_TRACE(0.00)[0:+];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	FROM_NEQ_ENVFROM(0.00)[krzysztof.kozlowski@oss.qualcomm.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	NEURAL_HAM(-0.00)[-0.999];
	RCPT_COUNT_SEVEN(0.00)[9];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Queue-Id: 2CE33158468
X-Rspamd-Action: no action

The active and suspend pin state of VSYNC is exactly the same, so just
use one node for both states.

Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>
---
 arch/arm64/boot/dts/qcom/sdm845-shift-axolotl.dts | 13 +++----------
 1 file changed, 3 insertions(+), 10 deletions(-)

diff --git a/arch/arm64/boot/dts/qcom/sdm845-shift-axolotl.dts b/arch/arm64/boot/dts/qcom/sdm845-shift-axolotl.dts
index 51b041f91d3e..740eb2255072 100644
--- a/arch/arm64/boot/dts/qcom/sdm845-shift-axolotl.dts
+++ b/arch/arm64/boot/dts/qcom/sdm845-shift-axolotl.dts
@@ -483,8 +483,8 @@ panel@0 {
 		reset-gpios = <&tlmm 6 GPIO_ACTIVE_HIGH>;
 
 		pinctrl-names = "default", "sleep";
-		pinctrl-0 = <&sde_dsi_active &sde_te_active>;
-		pinctrl-1 = <&sde_dsi_suspend &sde_te_suspend>;
+		pinctrl-0 = <&sde_dsi_active &sde_te>;
+		pinctrl-1 = <&sde_dsi_suspend &sde_te>;
 
 		port {
 			panel_in_0: endpoint {
@@ -623,14 +623,7 @@ sde_dsi_suspend: sde-dsi-suspend-state {
 		bias-pull-down;
 	};
 
-	sde_te_active: sde-te-active-state {
-		pins = "gpio10";
-		function = "mdp_vsync";
-		drive-strength = <2>;
-		bias-pull-down;
-	};
-
-	sde_te_suspend: sde-te-suspend-state {
+	sde_te: sde-te-state {
 		pins = "gpio10";
 		function = "mdp_vsync";
 		drive-strength = <2>;

-- 
2.51.0


