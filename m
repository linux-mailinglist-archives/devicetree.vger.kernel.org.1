Return-Path: <devicetree+bounces-271338-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id OKqbIsD5qGnVzwAAu9opvQ
	(envelope-from <devicetree+bounces-271338-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Thu, 05 Mar 2026 04:34:24 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [172.105.105.114])
	by mail.lfdr.de (Postfix) with ESMTPS id 19A8D20A91B
	for <lists+devicetree@lfdr.de>; Thu, 05 Mar 2026 04:34:24 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 4366C3058E24
	for <lists+devicetree@lfdr.de>; Thu,  5 Mar 2026 03:34:17 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E6BFE279346;
	Thu,  5 Mar 2026 03:34:15 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="SidjP6Bj"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-qt1-f170.google.com (mail-qt1-f170.google.com [209.85.160.170])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5FAF426D4C7
	for <devicetree@vger.kernel.org>; Thu,  5 Mar 2026 03:34:14 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.160.170
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772681655; cv=none; b=q/g6AzDuRH7UqeIzgJQvIIOZAoZL0cjsOqjU2L6hDKjRE9I0dHN4UxtUP3oCELpuoxgIfp80+oxQmq1e5jcfSNQCjVe+uFmw4wICs2nOPUTuQ9d4itW3aPqn4VvIaGhhCChR748PEZjDssE/nTTaiv/LPUle0RHNv0NhFIQlJV8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772681655; c=relaxed/simple;
	bh=3cQd24z258zjc20dy6ohb0HVeZL+LfFrMaR3/kR1p5Y=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=Vx3Ku19dW+Tfn1WNrzpkMqKkwq1wbd+usIV2OS7MN6TUKm/RtEobdEBjCDxKfZCBXO70gPGEVxii9+V9m2mi5WoiPbrNCSzkRiBpzFTeGZIjmBYzLoSKzls+++AlWfGTr2CZQTbT+60zliedIhv3eGkqV7YBYseu88ODkDgwowg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=SidjP6Bj; arc=none smtp.client-ip=209.85.160.170
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-qt1-f170.google.com with SMTP id d75a77b69052e-506989e8516so65352851cf.0
        for <devicetree@vger.kernel.org>; Wed, 04 Mar 2026 19:34:14 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1772681653; x=1773286453; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=2d5yl02iJv/wkdm4hWnCdO+qs5aDrcJeSjvUW0fTJuE=;
        b=SidjP6Bj1PVb3X7Yjw+MI6l8teBl3jhBlDLyZuGxFtfUg7WFxijpnenVz19Qu1nQLX
         eBrVlTNn4oEpkPnaMyt5Lv8xmcZ3xmjgqNOiyyJovd/YcxxJZv3iNZnqKTi0+UJSXjzy
         ATKUsOyfK02qOUX7ZrBT3GsjrBVJ3wcy7JvZNGrCc6A/xIrmYdUA6ml/8eTKBRSGMfJ3
         onkEWzLMUAxnH8mll9PP69MFHxsQFfVbXgDfGpqWjG1RTqHaxy7OhqTEjLNSHcMashaf
         NkbQClKluWQ3zMw3+J2V1lA+57uk46CyZD/ZyORfWr6d/C3VyoC2lCBlyNRlqyh74lHC
         9rTg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1772681653; x=1773286453;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-gg:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=2d5yl02iJv/wkdm4hWnCdO+qs5aDrcJeSjvUW0fTJuE=;
        b=WelHuLdtc+3EOJj7NyTVkCSZ4mvLaCJvOj/plrxTWFm4mOh/4eNZDa/sEFdC3bg/W8
         Jg20YWjS1Og+ADr5E+K3C9UUigc/DWHfMP0lrIWn2hKNmUZ+JPm7/Rqb/hfu4wUEzZL9
         qT4LRShb9rejKmvhzKouCXTjMHVurhhk/hqLCWFDBR4SBW+dgvvcaQbGEy56ZUuuj7yN
         Elg8rI98TSYFx7unQ4+ivT0cfqnqojBEFueO+pMj5JhhXpXQaucYRb7xkrSX+BA49aP9
         O3WUQcbayfqpbV/OcFSvLjx/dsZ1SkbNq3186IcqYXtyLyZKDRVjELVqKaRg3wDmlfIa
         pH/A==
X-Gm-Message-State: AOJu0Yy+IZleVdROwS4ZRMUHDqqh+jA4PG4nkxpDoYk6Pe5PFV3KODA9
	FG5pWIfo21OL6hzdsudS+tQvxk1Qfzdv8CQXOpG93FoxjUy/8JF20yIh
X-Gm-Gg: ATEYQzyqokh6++Z5EEyLScYLaTPOqgYflHrdgUQTQIYP8S573Fp07pyhoOy1KgoPxb/
	K/rDGFXNr0L5ylka20BcLU0uim6r7TuaSePtFIKsc56slW0VqTH2bZHg1hD9jW6g887gA8uG2lu
	Yd5NhN2eJYY8y2GJ52LQhXmLpw9hQYBo9JtS80T8hopUvj796u8om5BxnK7AZJSr+XrLi+LfDP4
	uSEBrPLJ4RDrCbPElYmhLbVICrHHpy0YIX6a0P+GKRuRBSnmv6zJjVCb5upHaxI9D54eg+ijB6R
	Pt1i6KiEkLMpbQPcWWNoOHLBOFf6Rcenu1AGBumvb+AivqQAttj36nCe08sOYuk1fg7l724AHAg
	IpRUH5SfuEYbgxs/i0F7G9cs9K8+YsfNhHgT107wvchmqB+SV8E/c4WBn3+6S9be8VJWVWv605p
	46SdFtIMBoJhwoH5351JXs+FUXWVU=
X-Received: by 2002:ac8:5a0c:0:b0:501:4b10:aa9e with SMTP id d75a77b69052e-508db2a632bmr59254511cf.13.1772681653433;
        Wed, 04 Mar 2026 19:34:13 -0800 (PST)
Received: from [172.17.0.2] ([134.128.219.200])
        by smtp.gmail.com with ESMTPSA id d75a77b69052e-507449630b6sm190667601cf.7.2026.03.04.19.34.12
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 04 Mar 2026 19:34:13 -0800 (PST)
From: Yuanshen Cao <alex.caoys@gmail.com>
Date: Thu, 05 Mar 2026 03:34:08 +0000
Subject: [PATCH v2 2/2] pmdomain: sunxi: Add support for A733 to Allwinner
 PCK600 driver
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260305-b4-pck600-a733-v2-2-ba6bbed7d253@gmail.com>
References: <20260305-b4-pck600-a733-v2-0-ba6bbed7d253@gmail.com>
In-Reply-To: <20260305-b4-pck600-a733-v2-0-ba6bbed7d253@gmail.com>
To: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Chen-Yu Tsai <wens@kernel.org>, 
 Jernej Skrabec <jernej.skrabec@gmail.com>, 
 Samuel Holland <samuel@sholland.org>, Ulf Hansson <ulf.hansson@linaro.org>
Cc: devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
 linux-sunxi@lists.linux.dev, linux-kernel@vger.kernel.org, 
 linux-pm@vger.kernel.org, Yuanshen Cao <alex.caoys@gmail.com>
X-Mailer: b4 0.14.3
X-Rspamd-Queue-Id: 19A8D20A91B
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_SPF_ALLOW(-0.20)[+ip4:172.105.105.114:c];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20230601];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-271338-lists,devicetree=lfdr.de];
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
	ASN(0.00)[asn:63949, ipnet:172.105.96.0/20, country:SG];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[tor.lore.kernel.org:rdns,tor.lore.kernel.org:helo]
X-Rspamd-Action: no action

The Allwinner A733 PCK600, similar to A523 PCK600, is likely a
customized version of ARM PCK-600 power controller. It shares the same
BSP driver with A523. According to the BSP provided by Radxa, unlike
A523, it doesn't require reset, as well as a different pair of delay
values.

Make reset optional in the sunxi pck600 driver and add support
for A733.

Signed-off-by: Yuanshen Cao <alex.caoys@gmail.com>
---
 drivers/pmdomain/sunxi/sun55i-pck600.c | 35 ++++++++++++++++++++++++++++++----
 1 file changed, 31 insertions(+), 4 deletions(-)

diff --git a/drivers/pmdomain/sunxi/sun55i-pck600.c b/drivers/pmdomain/sunxi/sun55i-pck600.c
index c7ab51514531..1d47bbd35ced 100644
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
@@ -206,7 +209,27 @@ static const struct sunxi_pck600_desc sun55i_a523_pck600_desc = {
 	.device_ctrl1_delay = 0xffff,
 	.logic_power_switch0_delay = 0x8080808,
 	.logic_power_switch1_delay = 0x808,
-	.off2on_delay = 0x8
+	.off2on_delay = 0x8,
+	.has_rst_clk = true,
+};
+
+static const char * const sun60i_a733_pck600_pd_names[] = {
+	"VI", "DE_SYS", "VE_DEC", "VE_ENC", "NPU",
+	"GPU_TOP", "GPU_CORE", "PCIE", "USB2", "VO", "VO1"
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
@@ -214,6 +237,10 @@ static const struct of_device_id sunxi_pck600_of_match[] = {
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


