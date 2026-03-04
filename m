Return-Path: <devicetree+bounces-270849-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id mHyZOJaqp2lejAAAu9opvQ
	(envelope-from <devicetree+bounces-270849-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 04 Mar 2026 04:44:22 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [IPv6:2600:3c15:e001:75::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id EE1741FA7C0
	for <lists+devicetree@lfdr.de>; Wed, 04 Mar 2026 04:44:21 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id AD611301BF88
	for <lists+devicetree@lfdr.de>; Wed,  4 Mar 2026 03:44:15 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 8BB78377559;
	Wed,  4 Mar 2026 03:44:13 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="UbmR68Fk"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-qt1-f174.google.com (mail-qt1-f174.google.com [209.85.160.174])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 293DB376BD6
	for <devicetree@vger.kernel.org>; Wed,  4 Mar 2026 03:44:12 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.160.174
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772595853; cv=none; b=LhvNq/9ye+rhldGuLGqgUgJkEc2lcR7SjWmOp0eGQm1dX96vJrzneQWlPJ//CVLIDz6xkQa5L+PH+UcVnx/CxLRbd2vL1XBvkf/mptwiN0KQ2Nvb93vCNWYDYlYlaKVUIfhqMSR548/MhcuEtutaBCwLp4Sx151Di5AYfnMqHiE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772595853; c=relaxed/simple;
	bh=V3nE+XT6gJM1djPOVmmoXLkSIGNlRHxcehnXAsYeJSw=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=cfVBAp+bvslhlURpIHAqNCo7noD/o0ReURLeY/WoVOj3Z4Qjb7cTKegLYypBuNRl/2Cn/37aeZs6rN4U6/fvReKUcjfgY8gvC6vqRdWDSO4q47KrTo3HyqTsr8Xee1pi2XFAD5qd/T6neCk5WNYFgi/6tSu8MTG1p6wBNNSr68U=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=UbmR68Fk; arc=none smtp.client-ip=209.85.160.174
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-qt1-f174.google.com with SMTP id d75a77b69052e-506c02ec1b3so73532981cf.0
        for <devicetree@vger.kernel.org>; Tue, 03 Mar 2026 19:44:12 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1772595851; x=1773200651; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=ZmZUdiZZg0fCj/2i+g2j9xmvk9n9CjWeVFiVPCHQNYY=;
        b=UbmR68FkK7IIj+x9hLIlgrrZ26cZFQyULJysCgnfFl7nzbmOrpNa7nEAiH4y+lmQwa
         Cs1TKw5xXy/xEoSVWt83LWndJBOZoK1FVw2i8AXWRh8h6jxtGKBl5U2ieSgqyvPjUsmS
         tGKtGzN/TGhCXLfuvV9kX9a0j25u7HSCnMiwavyHG1Vy/6TkETTrrNq5vSc7kB2cYm2q
         gtR6c2vbgM+KxK1KNfR/sI2emqIl4v6i+RvLeZwEwFBv6TTQPuY198t2bgV3QDnXPevK
         gCe67X4z1OAIy+jWyPCqaemd6ZmEWXHgEicSU6RHLKRPmvGPsLi/HauC2oVe6yzqwCKn
         rM7A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1772595851; x=1773200651;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-gg:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=ZmZUdiZZg0fCj/2i+g2j9xmvk9n9CjWeVFiVPCHQNYY=;
        b=SIcK9WwbNAbpEqlDUlgqI9jg1J7tiEwtbw/xlBos+hbXupXsEJXLzMsA+Pc4sBZJcr
         HqULCCkPfeBXb7Iuy3rWb+mTS70i5Yh/htL/3HqDbFHkwOk7uW+OVu1VzIy6x9zRDFfs
         w1gak/TgvHWtMTPkkq8VozWMCaYIoeCB0EPweI+Rr9lg1umWBwGc3UxasysrBYVKPedy
         uqUPAENKObdliywitOjfXSjTA5hhcg8y22M4tASJhAzuCD8zQ/1TTo+jlodzPQmhgI2/
         2M8ywsKqE1Rojnle3WCAkWSnrREEUXTWhnqqmFbVntsYrUH06dR/pIxsQqD3JtVO/vcX
         yyzA==
X-Gm-Message-State: AOJu0YwN1Sx1DTw/aHPeIVC+FuHrbnRRMAorhg4p0y0G5PHYEUYMd1cb
	vGWPxHtBkUoYJOF7QFfMMdwx621f1YhwmhreDVFvGY3IGx1z7jLMBqSE
X-Gm-Gg: ATEYQzzanb1GJfSiDcCN1ZSudsnf/f24AXLoUrJR8We1P+nbsQ8g+R3fAS5EBOcIOLq
	jCIwcQeHkbEoMOrol6r28qVz/Zyzaxb9DtbDxEMv70Jk1kFDF9I3ZH01N/FdMC9GwUZr4WFjgum
	7++Dmi0CHB11C2x18rP0kgKNPdmkCRiLVlBw39YnEhkToeKJgb7pkTkwYkLmEOCIn28szKjGaq/
	Nl/EPYbox59MozwdaK8+dTZuc+8kixk3NzfumwpD96z0K/0ZhSaIlbXUP41YBub8lO7qvIaeonA
	CZrZcLOqvN9on+MUSlJfz95+OP1CV29lLRJ0PpZVtQDpPJIJT1LkCQEtJHAmL5pLfHA0YmOqWpD
	nB4m94kWQZAJGhn9CWW9lnaTmW1kRu+QXLxlsQgjYcGI5vYqOxgWmUisr91N9/N7b9AvwbSp0Cr
	MwWP/hHKGToX08MoTuywzJvgrY2pU=
X-Received: by 2002:a05:622a:1490:b0:501:4b9d:ad19 with SMTP id d75a77b69052e-508cea9b44fmr52007601cf.22.1772595851140;
        Tue, 03 Mar 2026 19:44:11 -0800 (PST)
Received: from [172.17.0.2] ([134.128.219.200])
        by smtp.gmail.com with ESMTPSA id 6a1803df08f44-899e608cfc6sm88603286d6.14.2026.03.03.19.44.10
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 03 Mar 2026 19:44:10 -0800 (PST)
From: Yuanshen Cao <alex.caoys@gmail.com>
Date: Wed, 04 Mar 2026 03:43:45 +0000
Subject: [PATCH 2/2] pmdomain: sunxi: Add support for A733 to Allwinner
 PCK600 driver
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260304-b4-pck600-a733-v1-2-2f54efdb8cc2@gmail.com>
References: <20260304-b4-pck600-a733-v1-0-2f54efdb8cc2@gmail.com>
In-Reply-To: <20260304-b4-pck600-a733-v1-0-2f54efdb8cc2@gmail.com>
To: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Chen-Yu Tsai <wens@kernel.org>, 
 Jernej Skrabec <jernej.skrabec@gmail.com>, 
 Samuel Holland <samuel@sholland.org>, Ulf Hansson <ulf.hansson@linaro.org>
Cc: devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
 linux-sunxi@lists.linux.dev, linux-kernel@vger.kernel.org, 
 linux-pm@vger.kernel.org, Yuanshen Cao <alex.caoys@gmail.com>
X-Mailer: b4 0.14.3
X-Rspamd-Queue-Id: EE1741FA7C0
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c15:e001:75::/64:c];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20230601];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-270849-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	FREEMAIL_TO(0.00)[kernel.org,gmail.com,sholland.org,linaro.org];
	FORGED_SENDER_MAILLIST(0.00)[];
	FREEMAIL_FROM(0.00)[gmail.com];
	FREEMAIL_CC(0.00)[vger.kernel.org,lists.infradead.org,lists.linux.dev,gmail.com];
	RCPT_COUNT_TWELVE(0.00)[13];
	MIME_TRACE(0.00)[0:+];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[alexcaoys@gmail.com,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[gmail.com:+];
	NEURAL_HAM(-0.00)[-0.999];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MID_RHS_MATCH_FROM(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c15::/32, country:SG];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sin.lore.kernel.org:rdns,sin.lore.kernel.org:helo]
X-Rspamd-Action: no action

The Allwinner A733 PCK600, similar to A523 PCK600, is likely a
customized version of ARM PCK-600 power controller. It shares
the same BSP driver with A523. According to the BSP provided
by Radxa, unlike A523, it doesn't require reset.

Make reset optional in the sunxi pck600 driver and add support
for A733.

Signed-off-by: Yuanshen Cao <alex.caoys@gmail.com>
---
 drivers/pmdomain/sunxi/sun55i-pck600.c | 53 ++++++++++++++++++++++++++++++----
 1 file changed, 48 insertions(+), 5 deletions(-)

diff --git a/drivers/pmdomain/sunxi/sun55i-pck600.c b/drivers/pmdomain/sunxi/sun55i-pck600.c
index c7ab51514531..8f9fdc3915bd 100644
--- a/drivers/pmdomain/sunxi/sun55i-pck600.c
+++ b/drivers/pmdomain/sunxi/sun55i-pck600.c
@@ -52,6 +52,7 @@ struct sunxi_pck600_desc {
 	u32 logic_power_switch0_delay;
 	u32 logic_power_switch1_delay;
 	u32 off2on_delay;
+	bool has_rst_clk;
 };
 
 struct sunxi_pck600_pd {
@@ -151,9 +152,11 @@ static int sunxi_pck600_probe(struct platform_device *pdev)
 	if (IS_ERR(base))
 		return PTR_ERR(base);
 
-	rst = devm_reset_control_get_exclusive_released(dev, NULL);
-	if (IS_ERR(rst))
-		return dev_err_probe(dev, PTR_ERR(rst), "failed to get reset control\n");
+	if (desc->has_rst_clk) {
+		rst = devm_reset_control_get_exclusive_released(dev, NULL);
+		if (IS_ERR(rst))
+			return dev_err_probe(dev, PTR_ERR(rst), "failed to get reset control\n");
+	}
 
 	clk = devm_clk_get_enabled(dev, NULL);
 	if (IS_ERR(clk))
@@ -193,7 +196,14 @@ static int sunxi_pck600_probe(struct platform_device *pdev)
 }
 
 static const char * const sun55i_a523_pck600_pd_names[] = {
-	"VE", "GPU", "VI", "VO0", "VO1", "DE", "NAND", "PCIE"
+	"VE",
+	"GPU",
+	"VI",
+	"VO0",
+	"VO1",
+	"DE",
+	"NAND",
+	"PCIE",
 };
 
 static const struct sunxi_pck600_desc sun55i_a523_pck600_desc = {
@@ -206,7 +216,36 @@ static const struct sunxi_pck600_desc sun55i_a523_pck600_desc = {
 	.device_ctrl1_delay = 0xffff,
 	.logic_power_switch0_delay = 0x8080808,
 	.logic_power_switch1_delay = 0x808,
-	.off2on_delay = 0x8
+	.off2on_delay = 0x8,
+	.has_rst_clk = true,
+};
+
+static const char * const sun60i_a733_pck600_pd_names[] = {
+	"VI",
+	"DE_SYS",
+	"VE_DEC",
+	"VE_ENC",
+	"NPU",
+	"GPU_TOP",
+	"GPU_CORE",
+	"PCIE",
+	"USB2",
+	"VO",
+	"VO1",
+};
+
+static const struct sunxi_pck600_desc sun60i_a733_pck600_desc = {
+	.pd_names = sun60i_a733_pck600_pd_names,
+	.num_domains = ARRAY_SIZE(sun60i_a733_pck600_pd_names),
+	.logic_power_switch0_delay_offset = 0xc00,
+	.logic_power_switch1_delay_offset = 0xc04,
+	.off2on_delay_offset = 0xc10,
+	.device_ctrl0_delay = 0x1f1f1f,
+	.device_ctrl1_delay = 0x1f1f,
+	.logic_power_switch0_delay = 0x8080808,
+	.logic_power_switch1_delay = 0x808,
+	.off2on_delay = 0x8,
+	.has_rst_clk = false,
 };
 
 static const struct of_device_id sunxi_pck600_of_match[] = {
@@ -214,6 +253,10 @@ static const struct of_device_id sunxi_pck600_of_match[] = {
 		.compatible	= "allwinner,sun55i-a523-pck-600",
 		.data		= &sun55i_a523_pck600_desc,
 	},
+	{
+		.compatible	= "allwinner,sun60i-a733-pck-600",
+		.data		= &sun60i_a733_pck600_desc,
+	},
 	{}
 };
 MODULE_DEVICE_TABLE(of, sunxi_pck600_of_match);

-- 
2.53.0


