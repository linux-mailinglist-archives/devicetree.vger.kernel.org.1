Return-Path: <devicetree+bounces-263800-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 6O5GFHBniWm68QQAu9opvQ
	(envelope-from <devicetree+bounces-263800-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Mon, 09 Feb 2026 05:49:52 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [IPv6:2600:3c15:e001:75::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 8BCC610B9C0
	for <lists+devicetree@lfdr.de>; Mon, 09 Feb 2026 05:49:51 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id D55683004050
	for <lists+devicetree@lfdr.de>; Mon,  9 Feb 2026 04:49:45 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B33662D1916;
	Mon,  9 Feb 2026 04:49:44 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="KStd375R";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="h+EBMR8g"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8092F1E4AF
	for <devicetree@vger.kernel.org>; Mon,  9 Feb 2026 04:49:44 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770612584; cv=none; b=JNvdQgxMlZQqXHgxn0faIq+KVHVw8r7QTvmFMirzyqVPEn5I8yOpRjhoy+jJMl/S+sf2HKH9gxANJNyXDeS9+RtQo6CWxG0Vf1l1jLBkg5Nx09tVgaK7ss4vG8TrLUDgFifDasQrEYPYji0unIASGuz2tEQdlGHqCqSCr/sP+/M=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770612584; c=relaxed/simple;
	bh=+Qdh1KTp4rpkKuZ6jiND1J5x3Q5cGxD4YjHz6yZWsi4=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=Zm4DbcY3DyabRc6z7H0FVCD441tmi8UfkORbn3bpY6nD3zAOMJ9FWH5+IEP46++wz2tKuVl/PRlschuK6SIlevWRSQ4dswek5bOGRFoV1ELBfFZDCvIxdpO716W4LNpGDi12NI5I1er4OwUoRkK+C9ACx2TOJWHrKsSqqjacEaY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=KStd375R; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=h+EBMR8g; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279862.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 618LVuQD2286278
	for <devicetree@vger.kernel.org>; Mon, 9 Feb 2026 04:49:44 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	Tn7+1ZTIunWgUjyvBreXP7ExecfRfTUx3mEzBmpa9tM=; b=KStd375RaI+/4WHN
	CUInmDLnK1X+o1+id4YeTw0Nfwruobif1e/QyoYE9BSbwRTkzKm7OwYBrJpJYZBG
	ixNUyQUBadw0DC+ejYDB8oOTV0RQnb17bLA/xc3l4Azg8uZxhkyChjrqe1kQFpu0
	go3qG575617IsLlDDzfKWgV9Xo4yifEefnX3D4glu+60cJSJsRCb2eqvgeBXZVcS
	GXm3pkiZLTqIt90yswjm1OcA3Hr5B2ICxnUpoFpryLs1J/fSIieK4SPy60L/EQSj
	GlhbxQnJohWn9N1+/ygXBykjPyDkSnI8nJRFGevBd/wWQrlQfulCSMRlr0GWiU+3
	k0JGOg==
Received: from mail-dy1-f197.google.com (mail-dy1-f197.google.com [74.125.82.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4c5xb53nrd-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Mon, 09 Feb 2026 04:49:43 +0000 (GMT)
Received: by mail-dy1-f197.google.com with SMTP id 5a478bee46e88-2b7ef896edcso10787688eec.0
        for <devicetree@vger.kernel.org>; Sun, 08 Feb 2026 20:49:43 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1770612583; x=1771217383; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=Tn7+1ZTIunWgUjyvBreXP7ExecfRfTUx3mEzBmpa9tM=;
        b=h+EBMR8glI3IgR1rv+UtT60Dw7JBhQeiveqDG+eSZKb4+YgY8eOx07MjoUHUi6zmSE
         JwO1mSgkuKKxmCFBSQxC1NWVB6xRj1DZiwCH2rOPW7+FULCwAjhgpErdr/sGSBqfHvwX
         aJah5CaFx8MKsOYnvFwUd5gcd8NvGUt5FtvV3aaM41TdiwbFJJVRkCNB5rDLpPAg9ANN
         8bAZHp1b54xzwjqc1s0iG66JDdX+i/Qi5HU6P+Jp0KP8O/KvTpo7fJsA7Xl6jTnlQsbr
         nOPbOdVmkbtYab0Nl/JQcoxNEsDWC/AlO+CKKHZmC14HRqpQheYyA2QAAnhffZoBNbLK
         V6sw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1770612583; x=1771217383;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-gg:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=Tn7+1ZTIunWgUjyvBreXP7ExecfRfTUx3mEzBmpa9tM=;
        b=mZu+tgMps1+0r2UhKnVZ+nPrPGq47nGkE0UnVG8BbZwv6FicI3aPYKegYp2jg2LhC/
         wFOswvOoH2geWQvuhtWktmp15A/0JLpUYrIEzqM+YKBulT3CrZNvOH3JjFVhiD7jYIKK
         +yAgj0YdgSSUkEcyOxgP/GK7D1ychJGgJjyX046YqB3JtxBPxsfvJA2N9j5X/MIVIVWM
         F0NTef869O3qsFhNqUq16E8MopvL2tiJFCh+L+NRupkz53bhR7YFA/fB8YEircGgpRbe
         XAYP7G/3JWnavQrwsiqAV5LcXqc0V22bbdiG3nY0zjxU8GG+RmKdLWOsmvjTUdNXmr9m
         dsPQ==
X-Forwarded-Encrypted: i=1; AJvYcCUC+1EJWEtRarCs2hEqlxMgW8+bvvURRfa1xgE+mOEm3xkaPs6juIjhogoIfSSyVPkm2zD630vs+vlF@vger.kernel.org
X-Gm-Message-State: AOJu0YzrCo+ArDMcF33ZuATXtf30H4ZwzIVL9k4mg0p5wg2/XVbZAIsf
	+s1fRLjggV/meLN1UMIT+ddE3Uy3CaoSVJZXpOWKft0tJM+SuaqRgDoJJZdDUU68cX+96w8WiHK
	J2M1WQ6htIsAMQ1RIcu0wQu/p1TNzMrOzSxkNc0enrv6L+K4dJzn62aPXEaEItM9P
X-Gm-Gg: AZuq6aLMuTmlXySVBlchsyXnytD/lx911rm2VciwyG5OIwCqrChRfuWKbPZOL0iwK7g
	OAPJWkk23CqvlbGLeVqONs0Aoi82DTV5xkUixpbgMKIHASQHzsC4cN3aYHRr0CrSJfZIrtgePoZ
	bJ0CvVtdI9HlaRvCierYknsEJQYSWitfZ1GJhuM4IXq10SgiDRy4gsYaV8kapQiCt1C9AL71L4U
	ZdZHprOqLQGDFGLjrUbTjpECP7vXOT6Kn6uHg+NwzANgazMbuC6AcR9FMSnA8+r3HLpPGinDAWT
	YfRUOXvi+l/qUJ6ukx1mq+E5JytN3o5AyVIpTwtkF61vpskwWZ5RVSznud0LqeRC/OxYa4r/tzt
	yb34+Ol6T5FDcNCIkwtRu/CWcIVNRgGXC/lqw11aliNSMbqqTs+skfgxK
X-Received: by 2002:a05:7300:c8d:b0:2b8:2910:dcae with SMTP id 5a478bee46e88-2b85640191bmr4599720eec.13.1770612583177;
        Sun, 08 Feb 2026 20:49:43 -0800 (PST)
X-Received: by 2002:a05:7300:c8d:b0:2b8:2910:dcae with SMTP id 5a478bee46e88-2b85640191bmr4599709eec.13.1770612582644;
        Sun, 08 Feb 2026 20:49:42 -0800 (PST)
Received: from hu-qianyu-lv.qualcomm.com (Global_NAT1.qualcomm.com. [129.46.96.20])
        by smtp.gmail.com with ESMTPSA id 5a478bee46e88-2b8647bd6casm5609940eec.7.2026.02.08.20.49.41
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 08 Feb 2026 20:49:42 -0800 (PST)
From: Qiang Yu <qiang.yu@oss.qualcomm.com>
Date: Sun, 08 Feb 2026 20:49:40 -0800
Subject: [PATCH 2/2] phy: qcom: qmp-pcie: Add vdda-refgen supplies for
 Glymur
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260208-refgen-v1-2-87ca84fd78b3@oss.qualcomm.com>
References: <20260208-refgen-v1-0-87ca84fd78b3@oss.qualcomm.com>
In-Reply-To: <20260208-refgen-v1-0-87ca84fd78b3@oss.qualcomm.com>
To: Vinod Koul <vkoul@kernel.org>, Neil Armstrong <neil.armstrong@linaro.org>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        Qiang Yu <qiang.yu@oss.qualcomm.com>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=ed25519-sha256; t=1770612579; l=1964;
 i=qiang.yu@oss.qualcomm.com; s=20250513; h=from:subject:message-id;
 bh=+Qdh1KTp4rpkKuZ6jiND1J5x3Q5cGxD4YjHz6yZWsi4=;
 b=wLn++a8eAKQQcLHtX5yoaE3oQLpP6Bv24NmK/5D4gIMlCKrlm4Ch/Y0tkMVNImA8JaosSSQLJ
 yAmAB170VIwB1Om86GFNO7hdvn2MKriep4NGuUSXJLDTPnWHJtpNPeY
X-Developer-Key: i=qiang.yu@oss.qualcomm.com; a=ed25519;
 pk=Rr94t+fykoieF1ngg/bXxEfr5KoQxeXPtYxM8fBQTAI=
X-Authority-Analysis: v=2.4 cv=QMBlhwLL c=1 sm=1 tr=0 ts=69896767 cx=c_pps
 a=Uww141gWH0fZj/3QKPojxA==:117 a=ouPCqIW2jiPt+lZRy3xVPw==:17
 a=IkcTkHD0fZMA:10 a=HzLeVaNsDn8A:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=Mpw57Om8IfrbqaoTuvik:22 a=GgsMoib0sEa3-_RKJdDe:22
 a=EUspDBNiAAAA:8 a=m2jQVEIWa0EwQwJFt7gA:9 a=QEXdDO2ut3YA:10
 a=PxkB5W3o20Ba91AHUih5:22
X-Proofpoint-GUID: 1A0jxZaONBrl_LQ89wHEoKp70G4mgnpU
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMjA5MDAzNyBTYWx0ZWRfX8UMijuj/yotp
 AXJepLIo+ucaFqxVPZAVTUC+jm7gI0qhuLMq1oTaJ+SqJ4YztzXDCA0BNXiNvj6MxT7EKPRPa68
 50qhrcqVt9hf9NkeHvdf09ZlLl29nT4pPTmY1N3zzf0HUxwUkp5c46FNdGWgtC066JB7NTpOZkE
 an57ms7ut+S2bko8Wl/gRJFrJsibrebLgZccRGYwLuENPezwJc6+VsNximw5mVZHWS9BA+i+05n
 8XElIFPrLXNQerkApS0x4pUBzWi2U7A9U4AkG8T9APfe474f0ozS8GBbHtJxQBgkPssJUTyVEeS
 JgR1U8THq1yNE9S3JVpZVGVM1nxwe+l5JOnbLRCdFOQv44iqT1Etrj7HeQMSojT6D/Q/uncVKoc
 95kH3V7FUehcQJjX42nM/9URMUnwN/Q9620f2o3Ib9iyFXv4AGOWvyRAqyUGZAPGKXFAAMaylN6
 EVBOPx9a6nvo2Ne/7AQ==
X-Proofpoint-ORIG-GUID: 1A0jxZaONBrl_LQ89wHEoKp70G4mgnpU
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-02-08_05,2026-02-05_03,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 clxscore=1015 malwarescore=0 suspectscore=0 spamscore=0 adultscore=0
 priorityscore=1501 impostorscore=0 bulkscore=0 lowpriorityscore=0
 phishscore=0 classifier=typeunknown authscore=0 authtc= authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.22.0-2601150000
 definitions=main-2602090037
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[qualcomm.com,reject];
	R_DKIM_ALLOW(-0.20)[qualcomm.com:s=qcppdkim1,oss.qualcomm.com:s=google];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c15:e001:75::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	DKIM_TRACE(0.00)[qualcomm.com:+,oss.qualcomm.com:+];
	DBL_BLOCKED_OPENRESOLVER(0.00)[oss.qualcomm.com:mid,oss.qualcomm.com:dkim,sin.lore.kernel.org:helo,sin.lore.kernel.org:rdns,qualcomm.com:email,qualcomm.com:dkim];
	RCVD_TLS_LAST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_FROM(0.00)[bounces-263800-lists,devicetree=lfdr.de];
	MIME_TRACE(0.00)[0:+];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[qiang.yu@oss.qualcomm.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c15::/32, country:SG];
	NEURAL_HAM(-0.00)[-0.988];
	RCPT_COUNT_SEVEN(0.00)[10];
	MID_RHS_MATCH_FROM(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Queue-Id: 8BCC610B9C0
X-Rspamd-Action: no action

The refgen providing reference voltage for PCIe QMP PHY on Glymur requires
two power supplies independent from the PHY's core and qref rails. Add
support for vdda-refgen0p9 and vdda-refgen1p2 supplies with a dedicated
glymur_qmp_phy_vreg_l list.

Update both Gen5x4 and Gen4x2 configurations to use the new supply list.

Signed-off-by: Qiang Yu <qiang.yu@oss.qualcomm.com>
---
 drivers/phy/qualcomm/phy-qcom-qmp-pcie.c | 12 ++++++++----
 1 file changed, 8 insertions(+), 4 deletions(-)

diff --git a/drivers/phy/qualcomm/phy-qcom-qmp-pcie.c b/drivers/phy/qualcomm/phy-qcom-qmp-pcie.c
index fed2fc9bb31108d51f88d34f3379c7744681f485..b24ed260f30a689b5668f38c1471c0ab2aced0cc 100644
--- a/drivers/phy/qualcomm/phy-qcom-qmp-pcie.c
+++ b/drivers/phy/qualcomm/phy-qcom-qmp-pcie.c
@@ -3382,6 +3382,10 @@ static const char * const sm8550_qmp_phy_vreg_l[] = {
 	"vdda-phy", "vdda-pll", "vdda-qref",
 };
 
+static const char * const glymur_qmp_phy_vreg_l[] = {
+	"vdda-phy", "vdda-pll", "vdda-refgen0p9", "vdda-refgen1p2",
+};
+
 /* list of resets */
 static const char * const ipq8074_pciephy_reset_l[] = {
 	"phy", "common",
@@ -4623,8 +4627,8 @@ static const struct qmp_phy_cfg glymur_qmp_gen5x4_pciephy_cfg = {
 
 	.reset_list		= sdm845_pciephy_reset_l,
 	.num_resets		= ARRAY_SIZE(sdm845_pciephy_reset_l),
-	.vreg_list		= qmp_phy_vreg_l,
-	.num_vregs		= ARRAY_SIZE(qmp_phy_vreg_l),
+	.vreg_list		= glymur_qmp_phy_vreg_l,
+	.num_vregs		= ARRAY_SIZE(glymur_qmp_phy_vreg_l),
 
 	.regs			= pciephy_v8_50_regs_layout,
 
@@ -4639,8 +4643,8 @@ static const struct qmp_phy_cfg glymur_qmp_gen4x2_pciephy_cfg = {
 
 	.reset_list		= sdm845_pciephy_reset_l,
 	.num_resets		= ARRAY_SIZE(sdm845_pciephy_reset_l),
-	.vreg_list		= qmp_phy_vreg_l,
-	.num_vregs		= ARRAY_SIZE(qmp_phy_vreg_l),
+	.vreg_list		= glymur_qmp_phy_vreg_l,
+	.num_vregs		= ARRAY_SIZE(glymur_qmp_phy_vreg_l),
 
 	.regs			= pciephy_v8_regs_layout,
 

-- 
2.34.1


