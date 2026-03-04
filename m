Return-Path: <devicetree+bounces-270911-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id SAS7EQbsp2lDlwAAu9opvQ
	(envelope-from <devicetree+bounces-270911-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 04 Mar 2026 09:23:34 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [IPv6:2600:3c04:e001:36c::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id ADC511FC85F
	for <lists+devicetree@lfdr.de>; Wed, 04 Mar 2026 09:23:33 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 2B6C33091C8E
	for <lists+devicetree@lfdr.de>; Wed,  4 Mar 2026 08:22:23 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 026CA391836;
	Wed,  4 Mar 2026 08:22:06 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="mnK7TA4Y";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="HXny0S+C"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4C3843914ED
	for <devicetree@vger.kernel.org>; Wed,  4 Mar 2026 08:22:04 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772612525; cv=none; b=l5mXo2eldCJaQrloYIjsDB9cg7gr4T/x3mYUrAKHKFh5N30u54DMELweiNSQuWFYaQ7JhoibH2DHpMV5J00ZlR+ouoQqqjT7xCBJ7dX2KsWV/UfDukFfDwd7c49GeIIwUMgYaIoxAiSna2NVt1Xgwx8aOqkw53cr1Zg8BgmszgQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772612525; c=relaxed/simple;
	bh=pysVn0dtTrLL13JfTAmWaZskCFGo4Q8dXZlR8KxW+RQ=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=dnqclcvhZ9OAustS7dmKQGal3BWpi2OYltCZHyXxaERLi/jkligqVk46JzG1yzm+zWuSl7SjEXcKCNo+kZMeSn41IzSCgtgR/rGEj/zPgx8zdwG+qguEX09Mj9VHoXKtl9VvId9EmvGVMyhijCzXDEKykdrhsG61jj2z00T+xh0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=mnK7TA4Y; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=HXny0S+C; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279864.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 6245SOWu2306019
	for <devicetree@vger.kernel.org>; Wed, 4 Mar 2026 08:22:03 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	Fpe91AwzgJkPRVG0kPNXA33C1a2urKT4TBX2sBM0Lyw=; b=mnK7TA4Yk6R4y27Q
	bmrQuBeJNOyG8oMHPcD0hxc5bp5CDnLddLPmtQFWbb93H1eCtOfmUANg20WwL3ik
	R/+yFOaG7b9+FRuUrXE2PwiPPRpAF4eJuHD+10u9JfZMkoYaAupknncLO2Lm8q2+
	8sSARFhnIYcSAQ3rv8nUCV8mpgFNB5rOrcxNj4kwfV6eO1tNV8gqlb+lhfcvk8Qo
	zYm4qTZhj2zXVgxJMJPJknuB6tMYQdWlz56HrCU3A1BCU6TZY9465PenJW9WQpFT
	QgQFbN3uDd0nXSulkA3lSqyUsSjHAZpeAhEnCQPgc3LRdPEjkMosWtzlYaUDr4G7
	xYqUVg==
Received: from mail-oi1-f197.google.com (mail-oi1-f197.google.com [209.85.167.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4cpau8sa3j-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Wed, 04 Mar 2026 08:22:03 +0000 (GMT)
Received: by mail-oi1-f197.google.com with SMTP id 5614622812f47-464bbea2120so60282403b6e.3
        for <devicetree@vger.kernel.org>; Wed, 04 Mar 2026 00:22:03 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1772612523; x=1773217323; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=Fpe91AwzgJkPRVG0kPNXA33C1a2urKT4TBX2sBM0Lyw=;
        b=HXny0S+C5+60vkRZO5sXPiKgMAr4YxA4jtQZvGuplnupQ1v/KzHiY1aJDGlib9c6Qj
         3XILCjc6rdbgQuOlrTOGMh41Zx7Zof5tagQKuKllMlAxZKjcwmMg0/cj+DIj1ejt6apL
         I0cTut4SgTZz5t2xsz2KGJBrYCaoAVmZBKQfg0LUGaRgRJkImbYeWgMQu7XlUL80hx1I
         FUAHUGnmPTlyjQL5TKwI8Z5bCNG2ypKPiBH+ilHz/z/LBNUm0PdMkF3W2/lhf58OIQut
         Y0Y0si2hOoXY6vMChH6S7MNuJ7k9NNHnQlqMJ2fzUiyYVmdVrDJEj7iFvHyudAL9jx64
         UGGw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1772612523; x=1773217323;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-gg:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=Fpe91AwzgJkPRVG0kPNXA33C1a2urKT4TBX2sBM0Lyw=;
        b=b1/B2nTmTIrCZ70P+K0BK2ZrbcOyul/6QaUkt8l6BpZK0C0sfd1HGdTn1gS1o/rTfu
         xA/eV/pD6kShxDxZuv3WiM+cT5pxfdTMqzXGTwgDEdMX4k13qMDCj5F+uPBf7t0p5XHV
         pdUjuCo2cb1fYZLI0pqQdOnHXAZUlUPHfEZ6qLDGDVSjdCjJtAeY5KX1agXST+fi6xCX
         DtVQ6y7ZNIxd8KBbVieGFCmpNSrUJ2GLIL2KEfYej7JL9XsbTshN5sJq4FtVZQld/W+i
         hdtD+0xyKbeHDsLEjmOz2H8rEXMTfwtLrULOp1G8+/7YKKCP0ErmrZhriA5NoW61Ewj1
         nkCw==
X-Forwarded-Encrypted: i=1; AJvYcCWjtPcv33vJ7TEjyT5DM4DroYMZBhJg9LCXva4FgpDIEhIUJwGsKE1XP90Z4qx2e4bjl7DNOS2mD/Wx@vger.kernel.org
X-Gm-Message-State: AOJu0Yx1jgxcYxqhZu5CQTBXaoDAwJb9EeUDcZq4JKYW5o8HRVMF/ZkC
	ZGJD5/w6/U3yUA3Eghu1F2ji1ZVLqZrLk0n1wA+WKrrfRbvKu1+Z6a+2FBRkCVrKA48HwvCVE80
	OIrid5zH8zW52UNDMQcLwhBV08LkrYZmXnqhZ/1cs+r+fQYR0vCXkFxtwnxGGmv5qxxAeWeqomj
	M=
X-Gm-Gg: ATEYQzwJ5Aq6GGxKPysPAm8JmN1etxYXm8PzSqpYWu3sL1TvzyRlGidrUbKO1GtC0hl
	AjdCnh8w9mnufFlhvVs1fC7hR2YBPnHhvx6VPmgbsXmRfMYhXj+bNKQtn1KmLpYIxJGnaXf5lRv
	8wJHTRYg73zezPMvQCgBHInTAmpKDNEbzqnk2RbuslrExiXXwPv22I7IOLBKkYs4rQeohJooEED
	wKnbSreEiwWJ3xKGufQPNgsikM0kvgIxvczGckKSLgyeiIFnzIMVY21rVu67w6NHy+8HyNjoXt3
	A8uyFXKUWM+IM8NFanLOuM9I8Y+NbLxzh9SRsB9uEFv27IljnThxV7ctlUp8Ek3pWK9tpmhLS/9
	iygegxdrmoQRQcE4f9BNlVTSOtO260j+VOVXqhTfS6cGNHxZ99v5jaohfegzddBpLPE46
X-Received: by 2002:a05:6808:2226:b0:45f:42d6:3006 with SMTP id 5614622812f47-4651abb49fdmr697290b6e.15.1772612522759;
        Wed, 04 Mar 2026 00:22:02 -0800 (PST)
X-Received: by 2002:a05:6808:2226:b0:45f:42d6:3006 with SMTP id 5614622812f47-4651abb49fdmr697272b6e.15.1772612522359;
        Wed, 04 Mar 2026 00:22:02 -0800 (PST)
Received: from hu-qianyu-lv.qualcomm.com (Global_NAT1.qualcomm.com. [129.46.96.20])
        by smtp.gmail.com with ESMTPSA id 586e51a60fabf-4160d26d9absm18006952fac.16.2026.03.04.00.22.01
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 04 Mar 2026 00:22:02 -0800 (PST)
From: Qiang Yu <qiang.yu@oss.qualcomm.com>
Date: Wed, 04 Mar 2026 00:21:58 -0800
Subject: [PATCH 4/5] phy: qcom: qmp-pcie: Add Gen5 8-lanes mode for Glymur
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260304-glymur_gen5x8_phy-v1-4-849e9a72e125@oss.qualcomm.com>
References: <20260304-glymur_gen5x8_phy-v1-0-849e9a72e125@oss.qualcomm.com>
In-Reply-To: <20260304-glymur_gen5x8_phy-v1-0-849e9a72e125@oss.qualcomm.com>
To: Vinod Koul <vkoul@kernel.org>, Neil Armstrong <neil.armstrong@linaro.org>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Philipp Zabel <p.zabel@pengutronix.de>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        Qiang Yu <qiang.yu@oss.qualcomm.com>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=ed25519-sha256; t=1772612517; l=2780;
 i=qiang.yu@oss.qualcomm.com; s=20250513; h=from:subject:message-id;
 bh=pysVn0dtTrLL13JfTAmWaZskCFGo4Q8dXZlR8KxW+RQ=;
 b=BrV+/QVloaGE61UM9FsVTPr1aD7EKrsxuuvTAL97xJSWFbb/nvTDE2ZYO448OIIlEvGWGJ83b
 SwWOHOvIf64Cmwl8OEAmycjsaK2g/zz/ahP2entS4lQoIo00OhmC+Ri
X-Developer-Key: i=qiang.yu@oss.qualcomm.com; a=ed25519;
 pk=Rr94t+fykoieF1ngg/bXxEfr5KoQxeXPtYxM8fBQTAI=
X-Authority-Analysis: v=2.4 cv=AJS1/0o2 c=1 sm=1 tr=0 ts=69a7ebab cx=c_pps
 a=WJcna6AvsNCxL/DJwPP1KA==:117 a=ouPCqIW2jiPt+lZRy3xVPw==:17
 a=IkcTkHD0fZMA:10 a=Yq5XynenixoA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=DJpcGTmdVt4CTyJn9g5Z:22
 a=EUspDBNiAAAA:8 a=OKc3O2-h_waFBcwqEmQA:9 a=QEXdDO2ut3YA:10
 a=_Y9Zt4tPzoBS9L09Snn2:22
X-Proofpoint-ORIG-GUID: T3iXuZsrnvlt1QVBZrtSATNK-HKG2IZa
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMzA0MDA2NCBTYWx0ZWRfX8ikh+VFAHHMZ
 soYsjmdXpoFaKrpaDtBFpGH9DU0xCLNroDRhyNuEvXG9h6cDAhFQcq8rGhp+BZao9uQcq1hZg+z
 qipEtqfW1V0JEQWNTfETB/rbybpPfDZ2in9BA+4KfQyumCoJOYoDcjlbMc9BjmY0TgV6HjqeYIM
 6VinGY8T7q2XyN42CG2yLRt07i1szR4cj/GGFdMfPUm0q/CG5Gdr0vIU/AxxtvlMnsPLOEU1FPw
 1TtzfX7OI3VJc+j6fDLIJp8hm7kaQt/ilIxsxM+HCkLgIDKi3vmnYU/9GrUfdQeilY1kKftA6+j
 tEBNYXnITPf7iR0Gkmp5nMAPfGlodr1Lup8lx+/ek/9bW0LTqXRXIDGFwp/fe+LAT15LvCBmsU1
 oVpB4fVC7vWdRSZKiYRNiWJKD6myZiY2EVAHF0w1NswjK+IwZ/9N4rfVRpTeIvCifIWZTP4Hh/g
 6HedQrInt4JX5UPKFEw==
X-Proofpoint-GUID: T3iXuZsrnvlt1QVBZrtSATNK-HKG2IZa
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1143,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-03-04_04,2026-03-03_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 impostorscore=0 lowpriorityscore=0 malwarescore=0 suspectscore=0 spamscore=0
 phishscore=0 adultscore=0 priorityscore=1501 clxscore=1015 bulkscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2602130000 definitions=main-2603040064
X-Rspamd-Queue-Id: ADC511FC85F
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[qualcomm.com,reject];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c04:e001:36c::/64:c];
	R_DKIM_ALLOW(-0.20)[qualcomm.com:s=qcppdkim1,oss.qualcomm.com:s=google];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	MIME_TRACE(0.00)[0:+];
	RCPT_COUNT_TWELVE(0.00)[13];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_FROM(0.00)[bounces-270911-lists,devicetree=lfdr.de];
	DKIM_TRACE(0.00)[qualcomm.com:+,oss.qualcomm.com:+];
	RCVD_TLS_LAST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[oss.qualcomm.com:dkim,oss.qualcomm.com:mid,tor.lore.kernel.org:rdns,tor.lore.kernel.org:helo,qualcomm.com:dkim,qualcomm.com:email];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[qiang.yu@oss.qualcomm.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c04::/32, country:SG];
	NEURAL_HAM(-0.00)[-1.000];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Action: no action

The third PCIe controller on Glymur SoC supports 8-lane operation via
bifurcation of two PHYs (each requires separate power domian, resets and
aux clk).

Add dedicated reset/no_csr reset list ("phy_b", "phy_b_nocsr") and
clock ("phy_b_aux") required for 8-lane operation. Introduce new
glymur_qmp_gen5x8_pciephy_cfg configuration to enable PCIe Gen5 x8 mode.

Signed-off-by: Qiang Yu <qiang.yu@oss.qualcomm.com>
---
 drivers/phy/qualcomm/phy-qcom-qmp-pcie.c | 30 +++++++++++++++++++++++++++++-
 1 file changed, 29 insertions(+), 1 deletion(-)

diff --git a/drivers/phy/qualcomm/phy-qcom-qmp-pcie.c b/drivers/phy/qualcomm/phy-qcom-qmp-pcie.c
index 6b6c10218229b74540e520c6fe9fd1f890480b68..29bc0fe5ce37ecd6307da97d4e091b3a52074d2b 100644
--- a/drivers/phy/qualcomm/phy-qcom-qmp-pcie.c
+++ b/drivers/phy/qualcomm/phy-qcom-qmp-pcie.c
@@ -3378,7 +3378,7 @@ static inline void qphy_clrbits(void __iomem *base, u32 offset, u32 val)
 
 /* list of clocks required by phy */
 static const char * const qmp_pciephy_clk_l[] = {
-	"aux", "cfg_ahb", "ref", "refgen", "rchng", "phy_aux",
+	"aux", "cfg_ahb", "ref", "refgen", "rchng", "phy_aux", "phy_b_aux",
 };
 
 /* list of regulators */
@@ -3403,6 +3403,14 @@ static const char * const sm8550_pciephy_nocsr_reset_l[] = {
 	"phy_nocsr",
 };
 
+static const char * const glymur_pciephy_reset_l[] = {
+	"phy", "phy_b"
+};
+
+static const char * const glymur_pciephy_nocsr_reset_l[] = {
+	"phy_nocsr", "phy_b_nocsr",
+};
+
 static const struct qmp_pcie_offsets qmp_pcie_offsets_qhp = {
 	.serdes		= 0,
 	.pcs		= 0x1800,
@@ -4707,6 +4715,23 @@ static const struct qmp_phy_cfg glymur_qmp_gen4x2_pciephy_cfg = {
 	.phy_status		= PHYSTATUS_4_20,
 };
 
+static const struct qmp_phy_cfg glymur_qmp_gen5x8_pciephy_cfg = {
+	.lanes = 8,
+
+	.offsets		= &qmp_pcie_offsets_v8_50,
+
+	.reset_list		= glymur_pciephy_reset_l,
+	.num_resets		= ARRAY_SIZE(glymur_pciephy_reset_l),
+	.nocsr_reset_list	= glymur_pciephy_nocsr_reset_l,
+	.num_nocsr_resets	= ARRAY_SIZE(glymur_pciephy_nocsr_reset_l),
+	.vreg_list		= qmp_phy_vreg_l,
+	.num_vregs		= ARRAY_SIZE(qmp_phy_vreg_l),
+
+	.regs			= pciephy_v8_50_regs_layout,
+
+	.phy_status		= PHYSTATUS_4_20,
+};
+
 static void qmp_pcie_init_port_b(struct qmp_pcie *qmp, const struct qmp_phy_cfg_tbls *tbls)
 {
 	const struct qmp_phy_cfg *cfg = qmp->cfg;
@@ -5484,6 +5509,9 @@ static const struct of_device_id qmp_pcie_of_match_table[] = {
 	}, {
 		.compatible = "qcom,glymur-qmp-gen5x4-pcie-phy",
 		.data = &glymur_qmp_gen5x4_pciephy_cfg,
+	}, {
+		.compatible = "qcom,glymur-qmp-gen5x8-pcie-phy",
+		.data = &glymur_qmp_gen5x8_pciephy_cfg,
 	}, {
 		.compatible = "qcom,ipq6018-qmp-pcie-phy",
 		.data = &ipq6018_pciephy_cfg,

-- 
2.34.1


