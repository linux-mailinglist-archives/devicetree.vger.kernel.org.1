Return-Path: <devicetree+bounces-270909-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id yKpzKNrrp2mWlwAAu9opvQ
	(envelope-from <devicetree+bounces-270909-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 04 Mar 2026 09:22:50 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [IPv6:2600:3c04:e001:36c::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 5B4971FC7E4
	for <lists+devicetree@lfdr.de>; Wed, 04 Mar 2026 09:22:50 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 44DBD3020855
	for <lists+devicetree@lfdr.de>; Wed,  4 Mar 2026 08:22:10 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 5E12238F64E;
	Wed,  4 Mar 2026 08:22:03 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="K6RxHpPy";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="duuAb1UQ"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C5543390224
	for <devicetree@vger.kernel.org>; Wed,  4 Mar 2026 08:22:01 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772612523; cv=none; b=LnDwc2hz/gyKSs0Da2CX2Y3JJMxn5rgHYo80GKHBs0gnVhm94jetn7qmK143Bek+MtepdKgiYouYivoRHHqIMM10pLYI9cS8HyaE+v76mvFPj+tWlVgM2U9rY3QYjgDhgibCv7/p4/j1gEdQCNw50YgWIhWt7XTSBHlAFGNEdmI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772612523; c=relaxed/simple;
	bh=J4iNJP7fooS2FBjy7epanSIk1L/eL4p/+6UyF/qZDag=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=rLtdpRLI24EXFXmSRxYtimUl9oEiF/lmN/V6TtjUSppnjv2Ob/7chHUHA20aFgF88I2fisVjYU5+UZq1HlyuDvjwqw2zwulmBk9mYAvOaKZkFura5zknaGzSfZCDhjyOkSDMWbZR8uno5xXNG2BgHARrlsI6vYH4czVgD6fVAIg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=K6RxHpPy; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=duuAb1UQ; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279864.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 6245SOfG2306022
	for <devicetree@vger.kernel.org>; Wed, 4 Mar 2026 08:22:01 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	uIlZLMHi3cNBVLJWqwerj0OJ6veqEBRgHl80VQQ/teU=; b=K6RxHpPyVlrE/x66
	Cxy3hR5OQqMFjWYo4DMEYlFSbJBdsuz4330BmVy3AtFKiBRoYzwWmBiicc1mnwDu
	rJsTdgZWW5qWCVbFnG4fmq3Fy/ewLcx/I/VEoefdrgPMQb/xUYHOGTmFLpO1kuy9
	9vNtxOBC65cpxTZrhNx9ViQl07GBP0c8UM/NfmMcYaiDwjUMw/yIco8/Dzd9dHR2
	HLco3woVAdlg748FrltbKEnSExVAvVql2NUfNhAFmhmPCQyzU8YKy65iuP+NKZjT
	4JHd32bGqGr1vi/A4KmaofjE/cCBnzcN54WHFIfwVLXFka7pA17eBenLposkrOlA
	JHL0Dw==
Received: from mail-oo1-f71.google.com (mail-oo1-f71.google.com [209.85.161.71])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4cpau8sa33-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Wed, 04 Mar 2026 08:22:01 +0000 (GMT)
Received: by mail-oo1-f71.google.com with SMTP id 006d021491bc7-6798921eff4so91415157eaf.1
        for <devicetree@vger.kernel.org>; Wed, 04 Mar 2026 00:22:01 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1772612520; x=1773217320; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=uIlZLMHi3cNBVLJWqwerj0OJ6veqEBRgHl80VQQ/teU=;
        b=duuAb1UQfmaY2c0kh5kSaZ+1+q53up7xooIPUTTeJVcitHOOJ6b0oFbwPKe1AUz4p2
         e2TTk0j7Va7Op87TZa1/kTnAYcK127dD+gGnea2SmKVjJZKJq4ppgCXgtGo3z5RXXQrm
         hyZj7D5I46mNDDAg2hhTAqsvVWEhzAZ80H/RiEimmZPN8e4JqJJd7VoGRGRw2kONS2NQ
         aKEL/o8nYoZ9/WqvnqVTXFbUw8nRO6eambtI5ywoyql62NLM3aGMveCIaIBmZ98Vj58M
         qykR1Eum4DfaR6NNIdvoAsqye55Ml85/vAsulUQ5aYaJ8A/U6A75vl/LG3K6oVWBppva
         3IEA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1772612520; x=1773217320;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-gg:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=uIlZLMHi3cNBVLJWqwerj0OJ6veqEBRgHl80VQQ/teU=;
        b=t2VE82966JV3i5oXY+tygPpRsUK4tzQfMdQEen7yzaq3ONjdifa4EIUwLeFYEmj3bQ
         86mACMINZcRPQzUp+iTbZy9V78/cPq59cObmCG6ba1Qwe/1cYpLAD4ykDgIKEtDT22kZ
         Cp/01AIUNv6wxGGeZfhA1V1ENUFTxNAH57pFrTcdCUOsBKzKiFHlwOHUhJk6P6nRMP7F
         ifgGbw5z8wnzD2FFXwZbJQK+ebZbSH9ta/3GaXwLanIrwZHSyzrFLOumfMZPzSzSITjy
         kjHQGhJYyGhNP1WJejLqerf2UAB9MhzIfYa4gc6pUivQCZo4zk0Hs9KqAo+ofTke6BMq
         6/pQ==
X-Forwarded-Encrypted: i=1; AJvYcCVmAZy6tEVyFlHduWTmVddQvQ4HmfG3mEBpNZ5FB9Rc+ju9iCn9i0lUunaTngxIV6pQUy+lc+qJNMiY@vger.kernel.org
X-Gm-Message-State: AOJu0Yx8WFzd9iDIBhmiDJwQq4baEOK+muxCsjd5I7iq+anSy9QFJDrz
	ZvZzCqB2uTEJnz/BiHe5F3YMcZDb3RH1VKBQe9/Q1zAysutT+qqqhiMS/wA8r07I67xaE3BxHaC
	Ug9TyUkApLj5W7idA2AMF2v3oXD+banPGrxoBq8q/m/w+DeSln3fwpE07xj6DKTNz
X-Gm-Gg: ATEYQzy7X95UyZrL3EfTML2IiEpNqLnDVkItHUaDIQ7wOB7PrVopUNdPT5BCsz+aHXM
	q5bwIyTOnfnfwYkGNfMFQNRCtK5VR/xaWMDlZisO+ozYGEHMw4brUtyD4+CRskmPBjO/3B4nMhC
	CdQGzf+IWKrKoYiIuK4Rledg/ZsnivuRWYebwYNKz0mYV3lkqaj/QmOPpVr2QJDPUjgKtTX8kjQ
	+GEr41he6UUF/FftbqBNVgzEUcXQ7ykMRH3HBtcJOpWIxMHpkuYtMwhXbsamOZcj2wrmzAREOXx
	/EQDFo9y5krL1rPRKGSrnkKCHCOe0k/3vFXvqOTUqn5w3IegteNsYy6UTy2EEDzu5l8EFah08ca
	mjpalzx5oaQ8TSYxjOixqPzoCnZJd49Qg9itHKo1UXD86aVDuknj6KZjlnV1G7zzRCCyY
X-Received: by 2002:a05:6820:228e:b0:663:364:674f with SMTP id 006d021491bc7-67b176e9755mr800761eaf.1.1772612520501;
        Wed, 04 Mar 2026 00:22:00 -0800 (PST)
X-Received: by 2002:a05:6820:228e:b0:663:364:674f with SMTP id 006d021491bc7-67b176e9755mr800749eaf.1.1772612520151;
        Wed, 04 Mar 2026 00:22:00 -0800 (PST)
Received: from hu-qianyu-lv.qualcomm.com (Global_NAT1.qualcomm.com. [129.46.96.20])
        by smtp.gmail.com with ESMTPSA id 586e51a60fabf-4160d26d9absm18006952fac.16.2026.03.04.00.21.59
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 04 Mar 2026 00:21:59 -0800 (PST)
From: Qiang Yu <qiang.yu@oss.qualcomm.com>
Date: Wed, 04 Mar 2026 00:21:56 -0800
Subject: [PATCH 2/5] phy: qcom: qmp-pcie: Add multiple power-domains
 support
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260304-glymur_gen5x8_phy-v1-2-849e9a72e125@oss.qualcomm.com>
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
X-Developer-Signature: v=1; a=ed25519-sha256; t=1772612517; l=2482;
 i=qiang.yu@oss.qualcomm.com; s=20250513; h=from:subject:message-id;
 bh=J4iNJP7fooS2FBjy7epanSIk1L/eL4p/+6UyF/qZDag=;
 b=hXW7/3qZDw8ZcuCNj5DNMwpqd5gvzLVpDYhDMMiUziMx8Ux6j2NnYe10xoZtSisok7Uy9UoMu
 RzCC64PxoX0D2heExusm2P62gAB7wKXzv/jEJ9PDGpPsyaZSX4jt47u
X-Developer-Key: i=qiang.yu@oss.qualcomm.com; a=ed25519;
 pk=Rr94t+fykoieF1ngg/bXxEfr5KoQxeXPtYxM8fBQTAI=
X-Authority-Analysis: v=2.4 cv=AJS1/0o2 c=1 sm=1 tr=0 ts=69a7eba9 cx=c_pps
 a=V4L7fE8DliODT/OoDI2WOg==:117 a=ouPCqIW2jiPt+lZRy3xVPw==:17
 a=IkcTkHD0fZMA:10 a=Yq5XynenixoA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=DJpcGTmdVt4CTyJn9g5Z:22
 a=EUspDBNiAAAA:8 a=eu5IZVYEi8O4nexjJlAA:9 a=QEXdDO2ut3YA:10
 a=WZGXeFmKUf7gPmL3hEjn:22
X-Proofpoint-ORIG-GUID: cq9xvdAh1mBfA94YPPX4SrYPgjQrvHWW
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMzA0MDA2NCBTYWx0ZWRfX3RaY5OtZjxGx
 Ljvc7ZE5Pafni2Cgem3hNdCGt7jZp+XKT0K99rvD/xR731jiRsmYn5sj4K1UZIY6QgczwnpAupr
 Qp0ghJXuU8X8nOT2kTV78APOTqm2rpTdxWYe52xz86Xp2aEDjay1lOsXxs6yZZOmoBBYFevCORE
 yEeiN+44yBny+xIrkxLxc5sLyvMDTMbxMkTdDJ54CZC8kCix8W4C589GHhrrjH6VZX6fFwf+bl3
 JkrAx61/J09C/EeRx0ZwHL0vH23DiKnqFZLeRknfcqWLKF+9d2p6l1oYdFN0b0pSDGmw9mKlbLK
 EZ17vWVangeHJ8/+ni33i5b4XwCgoexNXA2RP8iFPxKjhuzcshm4PQ6tm4lTH9jDGtf3nT9lFeB
 G3KCnEDoE2eHt5SYpM4tlTiuhpogl3hEa0SGCex6jxFePCjtlPapJ/v73vj2DJ600C8VyK8jJhm
 O9ZFXlXEetnCxt5bxCA==
X-Proofpoint-GUID: cq9xvdAh1mBfA94YPPX4SrYPgjQrvHWW
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1143,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-03-04_04,2026-03-03_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 impostorscore=0 lowpriorityscore=0 malwarescore=0 suspectscore=0 spamscore=0
 phishscore=0 adultscore=0 priorityscore=1501 clxscore=1015 bulkscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2602130000 definitions=main-2603040064
X-Rspamd-Queue-Id: 5B4971FC7E4
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
	TAGGED_FROM(0.00)[bounces-270909-lists,devicetree=lfdr.de];
	DKIM_TRACE(0.00)[qualcomm.com:+,oss.qualcomm.com:+];
	RCVD_TLS_LAST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[tor.lore.kernel.org:rdns,tor.lore.kernel.org:helo,oss.qualcomm.com:dkim,oss.qualcomm.com:mid,qualcomm.com:dkim,qualcomm.com:email];
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

The Glymur SoC's 3rd PCIe instance supports 8-lane mode using two PHYs in
a bifurcated configuration. Each PHY has its own power domain (phy_gdsc)
that must be powered on before initialization per hardware requirements.

Current PHY power management assumes a single power domain per PHY,
preventing proper setup for this dual-PHY scenario. Add support for
multiple power domains by using devm_pm_domain_attach_list() to attach
power domains manually, while maintaining compatibility with single
power domain PHYs.

Enable runtime PM to allow power domain control when the PCIe driver
calls phy_power_on/phy_power_off:

- Single power domain: QMP PHY platform device directly attaches to
  power domain and controls it during runtime resume/suspend
- Multiple power domains: devm_pm_domain_attach_list() creates virtual
  devices as power domain suppliers, linked to the QMP PHY platform
  device as consumer

This ensures power domains are properly attached and turned on/off
for both single and multiple power domain configurations.

Signed-off-by: Qiang Yu <qiang.yu@oss.qualcomm.com>
---
 drivers/phy/qualcomm/phy-qcom-qmp-pcie.c | 13 +++++++++++++
 1 file changed, 13 insertions(+)

diff --git a/drivers/phy/qualcomm/phy-qcom-qmp-pcie.c b/drivers/phy/qualcomm/phy-qcom-qmp-pcie.c
index fed2fc9bb31108d51f88d34f3379c7744681f485..7369c291be51aa1ad7a330459dcb857f5a1988f6 100644
--- a/drivers/phy/qualcomm/phy-qcom-qmp-pcie.c
+++ b/drivers/phy/qualcomm/phy-qcom-qmp-pcie.c
@@ -17,6 +17,7 @@
 #include <linux/phy/pcie.h>
 #include <linux/phy/phy.h>
 #include <linux/platform_device.h>
+#include <linux/pm_domain.h>
 #include <linux/regmap.h>
 #include <linux/regulator/consumer.h>
 #include <linux/reset.h>
@@ -3334,6 +3335,8 @@ struct qmp_pcie {
 
 	struct clk_fixed_rate pipe_clk_fixed;
 	struct clk_fixed_rate aux_clk_fixed;
+
+	struct dev_pm_domain_list *pd_list;
 };
 
 static bool qphy_checkbits(const void __iomem *base, u32 offset, u32 val)
@@ -5348,6 +5351,16 @@ static int qmp_pcie_probe(struct platform_device *pdev)
 	WARN_ON_ONCE(!qmp->cfg->pwrdn_ctrl);
 	WARN_ON_ONCE(!qmp->cfg->phy_status);
 
+	ret = devm_pm_domain_attach_list(dev, NULL, &qmp->pd_list);
+	if (ret < 0 && ret != -EEXIST) {
+		dev_err(dev, "Failed to attach power domain\n");
+		return ret;
+	}
+
+	ret = devm_pm_runtime_enable(dev);
+	if (ret)
+		return ret;
+
 	ret = qmp_pcie_clk_init(qmp);
 	if (ret)
 		return ret;

-- 
2.34.1


