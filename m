Return-Path: <devicetree+bounces-270910-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id oB52IPHrp2lDlwAAu9opvQ
	(envelope-from <devicetree+bounces-270910-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 04 Mar 2026 09:23:13 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [172.105.105.114])
	by mail.lfdr.de (Postfix) with ESMTPS id 013451FC82D
	for <lists+devicetree@lfdr.de>; Wed, 04 Mar 2026 09:23:12 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id D2C6030813C0
	for <lists+devicetree@lfdr.de>; Wed,  4 Mar 2026 08:22:16 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E0E2C391504;
	Wed,  4 Mar 2026 08:22:04 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="ErdiykL4";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="GxxY2Hqz"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 40DC5390C89
	for <devicetree@vger.kernel.org>; Wed,  4 Mar 2026 08:22:03 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772612524; cv=none; b=tnuliJRuAUvjeK6lmPh8Zosxi2lCjdx+4tf2RFQ9TUiKh9Atscupn9QEXKe7/K6jg+xQ1QGL2sryT5WetBfcYUuVFeZaSvFXTt1Dcgqm0AVdvEGwRxScHviky7zTEY8fZ4xMoAZMWl0xzSSz8dZWl3Gg3qcraRSemTbeCsEPHnU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772612524; c=relaxed/simple;
	bh=TOJeoLyEULlLUcZyd/qHv13GrkbC4Opk/Xs63rbYStE=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=SrR+6vhQwuoFS3VEfjsLyXhijlNGx5f3Q/+EP4NvkN1QtbrbKavGBIqYuoKvjSKA5yl9mM3j39xBpbTu0JhQhf23mmnlpnMSq/9rGD0ggm+CCi5SrzYlm9uqoB7kl+Hlex1rzHEv0YB7GseLfXiZQoFd8esPQp08c/1vh6GPNuw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=ErdiykL4; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=GxxY2Hqz; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279865.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 6245Sejo1678073
	for <devicetree@vger.kernel.org>; Wed, 4 Mar 2026 08:22:02 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	ug0lLGxsC4j9zZT1+Qpz0yt1KnVliXZuBM8pMhTDanU=; b=ErdiykL4mU2NtiA+
	Iui2Yk11djdfLYj2hdi+ujZjfAYASQvTJlbknO9dr8v8mjtmv36FsbJBUSGgU+9Q
	rq0y+NSKwD8504L15QjezBau0tY//CxOISLoa0lpL1O/aew+pJjnf6Z6btdE4DYV
	4OYB0DVhqlOMFJRIgcoIpU28DsfqcQ3x9KFoOUH5XDRkYFTMiTmILFUdsbeGjR5Q
	JxAtxSRQ7Fs2w198hDq+m0rf5hTUh0nHec4kUH5y2yCYGalZIDVR8gDPUbmYAkLy
	svhSEoHGlgj8GmyoUFbYU4Wiw/D4sCyCFY3qk9v2oco5hA+0ve5HYofUNPQc/ZSn
	ntPImA==
Received: from mail-ot1-f70.google.com (mail-ot1-f70.google.com [209.85.210.70])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4cp73ha0ch-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Wed, 04 Mar 2026 08:22:02 +0000 (GMT)
Received: by mail-ot1-f70.google.com with SMTP id 46e09a7af769-7d4cb5810a0so45641998a34.1
        for <devicetree@vger.kernel.org>; Wed, 04 Mar 2026 00:22:02 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1772612522; x=1773217322; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=ug0lLGxsC4j9zZT1+Qpz0yt1KnVliXZuBM8pMhTDanU=;
        b=GxxY2HqzNVSVHX0DAwkMln2sVqG5DwnAZwKQR0ribN9UTbxNVRjQKNQyLXZmcZQ/jO
         DwAprd/MqwnLlnSaJZi+yAW7imD43w76jok8DAnN9AFx+eDEL1OQxeqDoqW1wCUONe+s
         GXZbmDH8brleF8w6b2C7+vhpllC4zgujXnKQXmPpfqRENfeCUb9ii08hO6fdVCxw+ZCa
         qg/hFck8eaP6JHg67rldIKLhKyuwgKPfaUnxwrBM92z2O0zibdf6oYo3uZf2cO9wvX6A
         Ez7+QkMd5Nj4FgqN3i6/zkvLwONOiVcUr81SzrfD2VC4jO/n36cTfAf7FojxZ0Ldv95Z
         iang==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1772612522; x=1773217322;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-gg:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=ug0lLGxsC4j9zZT1+Qpz0yt1KnVliXZuBM8pMhTDanU=;
        b=RQ2Z6QikCK8qFl17xQ2045+QkbEuAWYKgsSkFW/4xYFEitRUcvByYwxsbWTZ0k7BKm
         0qb/i3q4NF9bm75KlFXMNjcT1Gco5gCaOI2mdgbA1qjAM4QSVtS839Wbn2VKHFq8QUlJ
         Pr8YFP+ssMwtzjvUnT4Tqmgt2RJn02Tz3zKEtR4f4DFrtelEcx4iVp8cEzRID/8M9zKh
         wcNO5g+EMACBkCjxsAE4ROnivBDh+mqT/01DF9ATiLeZvesP/qnCZGc+8wlTubNBNhtT
         tlAlHySM87jft4Oqs5YAoQ40rOD91Jyb04hfu6GRaTH/WyAUeJAydXXrutmhO8FqHsgI
         xbYg==
X-Forwarded-Encrypted: i=1; AJvYcCW7KfPqWIqzSBXtMFVYw7Xpfhm7gY50/SVSqYJXysLxCBd77HPqWOkLaHVXUUMESyIK2cd4GsvdRkZi@vger.kernel.org
X-Gm-Message-State: AOJu0YznJPBl8NpA4t9dMRVXKD4xeI9dDPBo22YUtvU/R3/jNDMs6Ma7
	w5HR7DGIvL6LVHjzZznkbzqOZ1fMBf1PEsRLlbgD3zClNhTtZ9Wi3I0DALK+oNZIkAQhytraiFy
	A1bwspxDcuSSJqd/fRPqbxV42z8LI/S67ma2XAWzcAwFpwcBZL0L9RBr76IWfHhEZ
X-Gm-Gg: ATEYQzxieSgQBNd5g2OsR0B5m56eNqwuzL5Grm/7LiyVZ3v2LJvI3rrxbbNRZrlSoEA
	xcxSYCfb8VmYs3BVI9X/7w2X8KDApZKMu9062/mS0/ZhFofUWl6yYorOf2hTXGYDzTcSE+nnFXk
	toIzQbvKOjvOuaHkOa2yp2Hp8fmCxTGvBqiuHR59yEkj12CXCPA0vrobHA5HILaH2H7B1QrjxuK
	uyUolGUW9JdmbKWERjhj+oyu2TAhxx+yDsl1IqgfwX4ixnSyfFW+kQ1gQe0Cl2Ah08sYB541y8n
	BDuE8jLyRexs5kr419sZ/2fWD+dKtFLaUFURXMxyYJAjWfqH7abOD4Ku/MDjcGPiCZ505SVf7BY
	AUw6QZcznaP5cZ69ZiEvAJQVXgfgG5/H4SIZym9l8T9PYN4pgrgFFoe1Gl3hprrBcw/bl
X-Received: by 2002:a05:6830:6ad4:b0:7cf:da7d:608d with SMTP id 46e09a7af769-7d6c7f625e9mr783547a34.8.1772612521637;
        Wed, 04 Mar 2026 00:22:01 -0800 (PST)
X-Received: by 2002:a05:6830:6ad4:b0:7cf:da7d:608d with SMTP id 46e09a7af769-7d6c7f625e9mr783529a34.8.1772612521276;
        Wed, 04 Mar 2026 00:22:01 -0800 (PST)
Received: from hu-qianyu-lv.qualcomm.com (Global_NAT1.qualcomm.com. [129.46.96.20])
        by smtp.gmail.com with ESMTPSA id 586e51a60fabf-4160d26d9absm18006952fac.16.2026.03.04.00.22.00
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 04 Mar 2026 00:22:00 -0800 (PST)
From: Qiang Yu <qiang.yu@oss.qualcomm.com>
Date: Wed, 04 Mar 2026 00:21:57 -0800
Subject: [PATCH 3/5] phy: qcom: qmp-pcie: Support multiple nocsr resets
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260304-glymur_gen5x8_phy-v1-3-849e9a72e125@oss.qualcomm.com>
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
X-Developer-Signature: v=1; a=ed25519-sha256; t=1772612517; l=10138;
 i=qiang.yu@oss.qualcomm.com; s=20250513; h=from:subject:message-id;
 bh=TOJeoLyEULlLUcZyd/qHv13GrkbC4Opk/Xs63rbYStE=;
 b=7AnUEgbdH2HytltYugCWpXo08VNIVAONHAhXkdXgEbcT/wXxxp6r5Y0e+iF2alNDKocLUFK+/
 tLU7yNrjzN8BYadB4xwVFCp9ZlvEIKC7S7TGAS1ZXPp7YFBfetZ+yAd
X-Developer-Key: i=qiang.yu@oss.qualcomm.com; a=ed25519;
 pk=Rr94t+fykoieF1ngg/bXxEfr5KoQxeXPtYxM8fBQTAI=
X-Proofpoint-GUID: 6852O3Zkw9JelCHA3gN1uJIudk3oyIaB
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMzA0MDA2NCBTYWx0ZWRfX+8WnWZfgdoge
 hBFi0LVrDt/m6Vnm9DNUDIFzrL9QLJ1FOKLpau7BqmWZySmLHwqS6bBkgF7LPZ6C3bBDaV42TGT
 ARmLIWLxt2tIG00/IftqetCNY9J/pywT50JTUJEpg6zeb6I01WTyNkm+s21ElVREDWJCpwI3VBc
 5uSJ8p38XpWXHjkk9Ow3zt570z0s5F+XXLk8bdfDb1nUR+aalysmT62e2uZ+FlJGhLDeNtwoQ37
 MXHIn4oqGa+9dsH9+KRrZsPANnzpB8flwMyyzRbrseDcohuxQ4x5k7i8B2IBj3/Mw9uTUJWusx2
 KI2PO58wgSS5M+8kiLpLyF8T/gjjoQddvs2HokUUt+nO5JKufZK4Xvyf4GivXrrTlqAMKuU5220
 xyGFaObz4DYf7t3eLgqLNJ1FfMdlEIGZkhCBgvJrc1L2S13jet5UM5iwWIFSOBPRg/USoT09fZn
 IH/khScUCFJWRfxK3Gw==
X-Proofpoint-ORIG-GUID: 6852O3Zkw9JelCHA3gN1uJIudk3oyIaB
X-Authority-Analysis: v=2.4 cv=BpWQAIX5 c=1 sm=1 tr=0 ts=69a7ebaa cx=c_pps
 a=7uPEO8VhqeOX8vTJ3z8K6Q==:117 a=ouPCqIW2jiPt+lZRy3xVPw==:17
 a=IkcTkHD0fZMA:10 a=Yq5XynenixoA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=Um2Pa8k9VHT-vaBCBUpS:22
 a=EUspDBNiAAAA:8 a=wBkCwaD4edhj46uzH8YA:9 a=QEXdDO2ut3YA:10
 a=EXS-LbY8YePsIyqnH6vw:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1143,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-03-04_04,2026-03-03_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 clxscore=1015 suspectscore=0 bulkscore=0 adultscore=0 malwarescore=0
 lowpriorityscore=0 impostorscore=0 priorityscore=1501 phishscore=0
 spamscore=0 classifier=typeunknown authscore=0 authtc= authcc= route=outbound
 adjust=0 reason=mlx scancount=1 engine=8.22.0-2602130000
 definitions=main-2603040064
X-Rspamd-Queue-Id: 013451FC82D
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[qualcomm.com,reject];
	R_SPF_ALLOW(-0.20)[+ip4:172.105.105.114:c];
	R_DKIM_ALLOW(-0.20)[qualcomm.com:s=qcppdkim1,oss.qualcomm.com:s=google];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	MIME_TRACE(0.00)[0:+];
	RCPT_COUNT_TWELVE(0.00)[13];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_FROM(0.00)[bounces-270910-lists,devicetree=lfdr.de];
	DKIM_TRACE(0.00)[qualcomm.com:+,oss.qualcomm.com:+];
	RCVD_TLS_LAST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[oss.qualcomm.com:dkim,oss.qualcomm.com:mid,tor.lore.kernel.org:rdns,tor.lore.kernel.org:helo,qualcomm.com:dkim,qualcomm.com:email];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[qiang.yu@oss.qualcomm.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.105.96.0/20, country:SG];
	NEURAL_HAM(-0.00)[-1.000];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Action: no action

Refactor nocsr reset handling to support multiple nocsr resets required
for PHY configurations with bifurcated operation modes.

The Glymur SoC's 3rd PCIe instance supports 8-lane mode using two PHYs
in bifurcation, where each PHY requires its own nocsr reset to be
controlled simultaneously. The current implementation only supports a
single nocsr reset per PHY configuration.

Add num_nocsr and nocsr_list fields to struct qmp_phy_cfg to represent the
number and names of a group of nocsr reset names. Initialize these fields
for all PHYs that have nocsr resets, allowing the driver to correctly
acquire multiple nocsr resets during probe and control them as an array
by using reset_control_bulk APIs.

The refactoring maintains backward compatibility for existing single
nocsr reset configurations while enabling support for multi-PHY
scenarios like Glymur's 8-lane bifurcation mode.

Additionally, introduces x1e80100_qmp_gen3x2_pciephy_cfg as a separate
configuration from sm8550_qmp_gen3x2_pciephy_cfg since the x1e80100 Gen3x2
PHY requires nocsr reset support while the sm8550 Gen3x2 PHY does not.

Signed-off-by: Qiang Yu <qiang.yu@oss.qualcomm.com>
---
 drivers/phy/qualcomm/phy-qcom-qmp-pcie.c | 87 ++++++++++++++++++++++++++++----
 1 file changed, 77 insertions(+), 10 deletions(-)

diff --git a/drivers/phy/qualcomm/phy-qcom-qmp-pcie.c b/drivers/phy/qualcomm/phy-qcom-qmp-pcie.c
index 7369c291be51aa1ad7a330459dcb857f5a1988f6..6b6c10218229b74540e520c6fe9fd1f890480b68 100644
--- a/drivers/phy/qualcomm/phy-qcom-qmp-pcie.c
+++ b/drivers/phy/qualcomm/phy-qcom-qmp-pcie.c
@@ -3281,6 +3281,11 @@ struct qmp_phy_cfg {
 	/* resets to be requested */
 	const char * const *reset_list;
 	int num_resets;
+
+	/* nocsr resets to be requested */
+	const char * const *nocsr_reset_list;
+	int num_nocsr_resets;
+
 	/* regulators to be requested */
 	const char * const *vreg_list;
 	int num_vregs;
@@ -3327,7 +3332,7 @@ struct qmp_pcie {
 	int num_pipe_clks;
 
 	struct reset_control_bulk_data *resets;
-	struct reset_control *nocsr_reset;
+	struct reset_control_bulk_data *nocsr_reset;
 	struct regulator_bulk_data *vregs;
 
 	struct phy *phy;
@@ -3394,6 +3399,10 @@ static const char * const sdm845_pciephy_reset_l[] = {
 	"phy",
 };
 
+static const char * const sm8550_pciephy_nocsr_reset_l[] = {
+	"phy_nocsr",
+};
+
 static const struct qmp_pcie_offsets qmp_pcie_offsets_qhp = {
 	.serdes		= 0,
 	.pcs		= 0x1800,
@@ -4350,6 +4359,8 @@ static const struct qmp_phy_cfg sm8550_qmp_gen4x2_pciephy_cfg = {
 	},
 	.reset_list		= sdm845_pciephy_reset_l,
 	.num_resets		= ARRAY_SIZE(sdm845_pciephy_reset_l),
+	.nocsr_reset_list	= sm8550_pciephy_nocsr_reset_l,
+	.num_nocsr_resets	= ARRAY_SIZE(sm8550_pciephy_nocsr_reset_l),
 	.vreg_list		= sm8550_qmp_phy_vreg_l,
 	.num_vregs		= ARRAY_SIZE(sm8550_qmp_phy_vreg_l),
 	.regs			= pciephy_v6_regs_layout,
@@ -4382,6 +4393,8 @@ static const struct qmp_phy_cfg sm8650_qmp_gen4x2_pciephy_cfg = {
 	},
 	.reset_list		= sdm845_pciephy_reset_l,
 	.num_resets		= ARRAY_SIZE(sdm845_pciephy_reset_l),
+	.nocsr_reset_list	= sm8550_pciephy_nocsr_reset_l,
+	.num_nocsr_resets	= ARRAY_SIZE(sm8550_pciephy_nocsr_reset_l),
 	.vreg_list		= sm8550_qmp_phy_vreg_l,
 	.num_vregs		= ARRAY_SIZE(sm8550_qmp_phy_vreg_l),
 	.regs			= pciephy_v6_regs_layout,
@@ -4482,6 +4495,35 @@ static const struct qmp_phy_cfg sa8775p_qmp_gen4x4_pciephy_cfg = {
 	.phy_status		= PHYSTATUS_4_20,
 };
 
+static const struct qmp_phy_cfg x1e80100_qmp_gen3x2_pciephy_cfg = {
+	.lanes = 2,
+
+	.offsets		= &qmp_pcie_offsets_v5,
+
+	.tbls = {
+		.serdes		= sm8550_qmp_gen3x2_pcie_serdes_tbl,
+		.serdes_num	= ARRAY_SIZE(sm8550_qmp_gen3x2_pcie_serdes_tbl),
+		.tx		= sm8550_qmp_gen3x2_pcie_tx_tbl,
+		.tx_num		= ARRAY_SIZE(sm8550_qmp_gen3x2_pcie_tx_tbl),
+		.rx		= sm8550_qmp_gen3x2_pcie_rx_tbl,
+		.rx_num		= ARRAY_SIZE(sm8550_qmp_gen3x2_pcie_rx_tbl),
+		.pcs		= sm8550_qmp_gen3x2_pcie_pcs_tbl,
+		.pcs_num	= ARRAY_SIZE(sm8550_qmp_gen3x2_pcie_pcs_tbl),
+		.pcs_misc	= sm8550_qmp_gen3x2_pcie_pcs_misc_tbl,
+		.pcs_misc_num	= ARRAY_SIZE(sm8550_qmp_gen3x2_pcie_pcs_misc_tbl),
+	},
+	.reset_list		= sdm845_pciephy_reset_l,
+	.num_resets		= ARRAY_SIZE(sdm845_pciephy_reset_l),
+	.nocsr_reset_list	= sm8550_pciephy_nocsr_reset_l,
+	.num_nocsr_resets	= ARRAY_SIZE(sm8550_pciephy_nocsr_reset_l),
+	.vreg_list		= qmp_phy_vreg_l,
+	.num_vregs		= ARRAY_SIZE(qmp_phy_vreg_l),
+	.regs			= pciephy_v5_regs_layout,
+
+	.pwrdn_ctrl		= SW_PWRDN | REFCLK_DRV_DSBL,
+	.phy_status		= PHYSTATUS,
+};
+
 static const struct qmp_phy_cfg x1e80100_qmp_gen4x2_pciephy_cfg = {
 	.lanes = 2,
 
@@ -4504,6 +4546,8 @@ static const struct qmp_phy_cfg x1e80100_qmp_gen4x2_pciephy_cfg = {
 
 	.reset_list		= sdm845_pciephy_reset_l,
 	.num_resets		= ARRAY_SIZE(sdm845_pciephy_reset_l),
+	.nocsr_reset_list	= sm8550_pciephy_nocsr_reset_l,
+	.num_nocsr_resets	= ARRAY_SIZE(sm8550_pciephy_nocsr_reset_l),
 	.vreg_list		= qmp_phy_vreg_l,
 	.num_vregs		= ARRAY_SIZE(qmp_phy_vreg_l),
 	.regs			= pciephy_v6_regs_layout,
@@ -4537,6 +4581,8 @@ static const struct qmp_phy_cfg x1e80100_qmp_gen4x4_pciephy_cfg = {
 
 	.reset_list		= sdm845_pciephy_reset_l,
 	.num_resets		= ARRAY_SIZE(sdm845_pciephy_reset_l),
+	.nocsr_reset_list	= sm8550_pciephy_nocsr_reset_l,
+	.num_nocsr_resets	= ARRAY_SIZE(sm8550_pciephy_nocsr_reset_l),
 	.vreg_list		= qmp_phy_vreg_l,
 	.num_vregs		= ARRAY_SIZE(qmp_phy_vreg_l),
 	.regs			= pciephy_v6_regs_layout,
@@ -4568,6 +4614,8 @@ static const struct qmp_phy_cfg x1e80100_qmp_gen4x8_pciephy_cfg = {
 
 	.reset_list		= sdm845_pciephy_reset_l,
 	.num_resets		= ARRAY_SIZE(sdm845_pciephy_reset_l),
+	.nocsr_reset_list	= sm8550_pciephy_nocsr_reset_l,
+	.num_nocsr_resets	= ARRAY_SIZE(sm8550_pciephy_nocsr_reset_l),
 	.vreg_list		= qmp_phy_vreg_l,
 	.num_vregs		= ARRAY_SIZE(qmp_phy_vreg_l),
 	.regs			= pciephy_v6_regs_layout,
@@ -4583,6 +4631,8 @@ static const struct qmp_phy_cfg qmp_v6_gen4x4_pciephy_cfg = {
 
 	.reset_list             = sdm845_pciephy_reset_l,
 	.num_resets             = ARRAY_SIZE(sdm845_pciephy_reset_l),
+	.nocsr_reset_list	= sm8550_pciephy_nocsr_reset_l,
+	.num_nocsr_resets	= ARRAY_SIZE(sm8550_pciephy_nocsr_reset_l),
 	.vreg_list              = qmp_phy_vreg_l,
 	.num_vregs              = ARRAY_SIZE(qmp_phy_vreg_l),
 	.regs                   = pciephy_v6_regs_layout,
@@ -4611,6 +4661,8 @@ static const struct qmp_phy_cfg qmp_v8_gen3x2_pciephy_cfg = {
 
 	.reset_list		= sdm845_pciephy_reset_l,
 	.num_resets		= ARRAY_SIZE(sdm845_pciephy_reset_l),
+	.nocsr_reset_list	= sm8550_pciephy_nocsr_reset_l,
+	.num_nocsr_resets	= ARRAY_SIZE(sm8550_pciephy_nocsr_reset_l),
 	.vreg_list		= qmp_phy_vreg_l,
 	.num_vregs		= ARRAY_SIZE(qmp_phy_vreg_l),
 	.regs			= pciephy_v8_regs_layout,
@@ -4626,6 +4678,8 @@ static const struct qmp_phy_cfg glymur_qmp_gen5x4_pciephy_cfg = {
 
 	.reset_list		= sdm845_pciephy_reset_l,
 	.num_resets		= ARRAY_SIZE(sdm845_pciephy_reset_l),
+	.nocsr_reset_list	= sm8550_pciephy_nocsr_reset_l,
+	.num_nocsr_resets	= ARRAY_SIZE(sm8550_pciephy_nocsr_reset_l),
 	.vreg_list		= qmp_phy_vreg_l,
 	.num_vregs		= ARRAY_SIZE(qmp_phy_vreg_l),
 
@@ -4642,6 +4696,8 @@ static const struct qmp_phy_cfg glymur_qmp_gen4x2_pciephy_cfg = {
 
 	.reset_list		= sdm845_pciephy_reset_l,
 	.num_resets		= ARRAY_SIZE(sdm845_pciephy_reset_l),
+	.nocsr_reset_list	= sm8550_pciephy_nocsr_reset_l,
+	.num_nocsr_resets	= ARRAY_SIZE(sm8550_pciephy_nocsr_reset_l),
 	.vreg_list		= qmp_phy_vreg_l,
 	.num_vregs		= ARRAY_SIZE(qmp_phy_vreg_l),
 
@@ -4770,7 +4826,7 @@ static int qmp_pcie_init(struct phy *phy)
 		}
 	}
 
-	ret = reset_control_assert(qmp->nocsr_reset);
+	ret = reset_control_bulk_assert(cfg->num_nocsr_resets, qmp->nocsr_reset);
 	if (ret) {
 		dev_err(qmp->dev, "no-csr reset assert failed\n");
 		goto err_assert_reset;
@@ -4807,7 +4863,7 @@ static int qmp_pcie_exit(struct phy *phy)
 	const struct qmp_phy_cfg *cfg = qmp->cfg;
 
 	if (qmp->nocsr_reset)
-		reset_control_assert(qmp->nocsr_reset);
+		reset_control_bulk_assert(cfg->num_nocsr_resets, qmp->nocsr_reset);
 	else
 		reset_control_bulk_assert(cfg->num_resets, qmp->resets);
 
@@ -4851,7 +4907,7 @@ static int qmp_pcie_power_on(struct phy *phy)
 	if (ret)
 		return ret;
 
-	ret = reset_control_deassert(qmp->nocsr_reset);
+	ret = reset_control_bulk_deassert(cfg->num_nocsr_resets, qmp->nocsr_reset);
 	if (ret) {
 		dev_err(qmp->dev, "no-csr reset deassert failed\n");
 		goto err_disable_pipe_clk;
@@ -5000,14 +5056,25 @@ static int qmp_pcie_reset_init(struct qmp_pcie *qmp)
 	for (i = 0; i < cfg->num_resets; i++)
 		qmp->resets[i].id = cfg->reset_list[i];
 
-	ret = devm_reset_control_bulk_get_exclusive(dev, cfg->num_resets, qmp->resets);
+	ret = devm_reset_control_bulk_get_exclusive(dev, cfg->num_resets,
+						    qmp->resets);
 	if (ret)
 		return dev_err_probe(dev, ret, "failed to get resets\n");
 
-	qmp->nocsr_reset = devm_reset_control_get_optional_exclusive(dev, "phy_nocsr");
-	if (IS_ERR(qmp->nocsr_reset))
-		return dev_err_probe(dev, PTR_ERR(qmp->nocsr_reset),
-							"failed to get no-csr reset\n");
+	if (!cfg->num_nocsr_resets)
+		return 0;
+	qmp->nocsr_reset = devm_kcalloc(dev, cfg->num_nocsr_resets,
+				   sizeof(*qmp->nocsr_reset), GFP_KERNEL);
+	if (!qmp->nocsr_reset)
+		return -ENOMEM;
+
+	for (i = 0; i < cfg->num_nocsr_resets; i++)
+		qmp->nocsr_reset[i].id = cfg->nocsr_reset_list[i];
+
+	ret = devm_reset_control_bulk_get_exclusive(dev, cfg->num_nocsr_resets,
+						    qmp->nocsr_reset);
+	if (ret)
+		return dev_err_probe(dev, ret, "failed to get no-csr reset\n");
 
 	return 0;
 }
@@ -5521,7 +5588,7 @@ static const struct of_device_id qmp_pcie_of_match_table[] = {
 		.data = &sm8750_qmp_gen3x2_pciephy_cfg,
 	}, {
 		.compatible = "qcom,x1e80100-qmp-gen3x2-pcie-phy",
-		.data = &sm8550_qmp_gen3x2_pciephy_cfg,
+		.data = &x1e80100_qmp_gen3x2_pciephy_cfg,
 	}, {
 		.compatible = "qcom,x1e80100-qmp-gen4x2-pcie-phy",
 		.data = &x1e80100_qmp_gen4x2_pciephy_cfg,

-- 
2.34.1


