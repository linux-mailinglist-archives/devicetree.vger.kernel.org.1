Return-Path: <devicetree+bounces-324946-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id Te3VMAT5UmpQVwMAu9opvQ
	(envelope-from <devicetree+bounces-324946-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Sun, 12 Jul 2026 04:16:36 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 5F47674387F
	for <lists+devicetree@lfdr.de>; Sun, 12 Jul 2026 04:16:36 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=gmail.com header.s=20251104 header.b=alll0lai;
	dmarc=pass (policy=none) header.from=gmail.com;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-324946-lists+devicetree=lfdr.de@vger.kernel.org" designates 2600:3c0a:e001:db::12fc:5321 as permitted sender) smtp.mailfrom="devicetree+bounces-324946-lists+devicetree=lfdr.de@vger.kernel.org";
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 017353055819
	for <lists+devicetree@lfdr.de>; Sun, 12 Jul 2026 02:13:21 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A0C73367291;
	Sun, 12 Jul 2026 02:13:20 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pj1-f49.google.com (mail-pj1-f49.google.com [209.85.216.49])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4E3653672A0
	for <devicetree@vger.kernel.org>; Sun, 12 Jul 2026 02:13:16 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783822400; cv=none; b=bWkFl4jnbwLn3/iwVwsVgvM5wYMwP4sFEG/A9x4yehMN5dblBYZZS5Cz/X7G4w5WyGbK+HmqgWHX+fcPS+SW7y4gtHDSCnBa9USugXSHZ3LFcSSdrsKkWSg7tGC0u+5EHwKPP7RSEc4Y3yTgrpcQ3CkGoqg/9JAHWuPZcMLeILM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783822400; c=relaxed/simple;
	bh=N5rky33EdvhViGwsioGmj36G2N6vGTwasrTYZZH/8o4=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=QF/8NrmFEqO1PImDMxVsXcKU3Zb1whE5WZCYVaqnDTu69f29JGCRsAwPuM9AZuNYHOQta3S2DVVzwDTvUgyEtT8pQ6xnTpf+TbgaqzGeusvqZGDMyOm11Sizogolw1C1ClT0xc8T7AFVk3Nm5j3zJX6ppYjoE0zJ1mDEPE/3EAc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=alll0lai; arc=none smtp.client-ip=209.85.216.49
Received: by mail-pj1-f49.google.com with SMTP id 98e67ed59e1d1-38a0c7e841fso2470915a91.2
        for <devicetree@vger.kernel.org>; Sat, 11 Jul 2026 19:13:16 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1783822395; x=1784427195; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :content-type:mime-version:subject:date:from:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=IeKrQCOQwCtSB3eQzRia+4BzTdZbJgllKrvOfao2+VE=;
        b=alll0laitPrNKGPiujKduM5WO6O6cOcbDYHlocGjKgyqoC9vcxhRqnywxj15jtQLuk
         gWJOcfOuTxUyqJmYpe69Qtv01GmUjh0d6RGNTXVLU5BOTFVtdC4AoOIhAfT4KIVGyH31
         e/auX9J53Nqay9VZW6dzwam5pVa5Ht91FEywDRHEBHONh7aRkf1+5AGEFEQjkgLKDl6p
         bsfoF8JODmeZVMrepKi8QazubhJ+Dudu3Lk83dI8arrseZ7h/N1c63QleTNYqy/2Ah75
         HspG/dCSWIURYIuJb60S0MuP9yqTfJ/h1QLbzNT5YRHLMHV7dgKSlEJaPB5l739ZNsRy
         vu6w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1783822395; x=1784427195;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :content-type:mime-version:subject:date:from:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=IeKrQCOQwCtSB3eQzRia+4BzTdZbJgllKrvOfao2+VE=;
        b=io4ycFwDrbfn8RD2sgmz/y5HTY1QUM4LI/vndzDHSuzD8VzowXEmp8tuKLfALfIZzI
         ZyRu0ThIWn9sTEsErUSqRLqXSHy1jlibD5FIs9+DRaufD6y0o6G2YKpRJUmQy4GBWFq4
         19mhd5fMlL4/A8WBfMtBgCxtW/Ac+5xDJSXzv5P5mOR4O5KDniXqbA8oLjgQwnVAA4uG
         jrFIL+LMEQHVvI1dxnVUjM6Dl2SSAUTirK5LrbkNJXKz/pkUL2Zw8PNVosJO30g07lxR
         GdMGBBx/9n/cp601soz/VBtOiG+yD/GhU4cp3OeWakWdxd0Ca7jmlcZbD4Je6EMF+W7a
         Ch5Q==
X-Forwarded-Encrypted: i=1; AHgh+Roqo9S7i+AGmZOYHApdA/h9bD2nFGTofS6LdoB3A9owAFGwW1psWayeadY1VIRJ4byhjrT+iK8k6osH@vger.kernel.org
X-Gm-Message-State: AOJu0YzOVOF8olLpx+SoRbaxAxtt5S5GbNxSl8hTj4YlzMjVRUCojij/
	rabZcdmTu0Rnb9Boy28tbmIuxLGwK5V7VSJlHxpBojNxARv9iKWSdwWu
X-Gm-Gg: AfdE7cl24HYc4MFIeryYxosDirv+CzfT68WE7JWtArCg7rcT7HFMD6+P7SyLIRdCTBQ
	0Wq5whZG+toydw5KJLYZKMEeO/LIoK+UiSdMB2lbP5urvFkwunhoMbAFl9ZCZs/0D50oRazgN19
	9r4S+AKJgFlhAPyfhZz6fLjTgqFRDbLalaSQ8yhy196K/R6iq3pMNihuMNfSVbREdnw8RRudSsH
	Qf0ZjizJm351sZxSuhT7+Uv8TA/icyw1/imEWPkMOdt4HX908x21EnPhLvHOxU6oOaj4S0dcAha
	G0kUtwzOkQm65T4z0KQB/rSbAXC9P7dd6PothjF6GzEuTGHc3rINTCypNQL0s0v6bXIRRr34/98
	GGmMaonXuqdfUNYbSA0DHpim5aHvVRJ8gMQXF0dio7M9BkFePZIY1NLqx1NAn29g3WvclUjXZsN
	dkxDCWDG3xRzONxLYW1MAA6vFII3WxUTl6oMuv+Vp4S5l1+Ois8a/YQhMoNoRlilCkCK+Zaa77D
	T4=
X-Received: by 2002:a17:90b:3c4d:b0:37f:d70a:9605 with SMTP id 98e67ed59e1d1-38dc73bccedmr4361831a91.9.1783822395623;
        Sat, 11 Jul 2026 19:13:15 -0700 (PDT)
Received: from dtor-ws.sjc.corp.google.com ([2a00:79e0:2ebe:8:c63e:9756:a95c:c75])
        by smtp.gmail.com with ESMTPSA id 5a478bee46e88-3117d847e17sm54796692eec.18.2026.07.11.19.13.13
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 11 Jul 2026 19:13:14 -0700 (PDT)
From: Dmitry Torokhov <dmitry.torokhov@gmail.com>
Date: Sat, 11 Jul 2026 19:12:49 -0700
Subject: [PATCH v3 08/10] ARM: s3c: crag6410: convert PMIC DVS GPIO to
 software properties
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260711-samsung-kp-v3-8-b2fcaba77aff@gmail.com>
References: <20260711-samsung-kp-v3-0-b2fcaba77aff@gmail.com>
In-Reply-To: <20260711-samsung-kp-v3-0-b2fcaba77aff@gmail.com>
To: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, 
 Peter Griffin <peter.griffin@linaro.org>, 
 Alim Akhtar <alim.akhtar@samsung.com>, Russell King <linux@armlinux.org.uk>, 
 Mark Brown <broonie@kernel.org>, Linus Walleij <linusw@kernel.org>, 
 Charles Keepax <ckeepax@opensource.cirrus.com>, 
 Sam Protsenko <semen.protsenko@linaro.org>, Arnd Bergmann <arnd@arndb.de>, 
 Bartosz Golaszewski <brgl@bgdev.pl>
Cc: Krzysztof Kozlowski <krzk@kernel.org>, linux-input@vger.kernel.org, 
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
 linux-arm-kernel@lists.infradead.org, linux-samsung-soc@vger.kernel.org, 
 patches@opensource.cirrus.com
X-Mailer: b4 0.16-dev-b242f
X-Rspamd-Action: no action
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20251104];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCPT_COUNT_TWELVE(0.00)[19];
	TAGGED_FROM(0.00)[bounces-324946-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	FREEMAIL_FROM(0.00)[gmail.com];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER(0.00)[dmitrytorokhov@gmail.com,devicetree@vger.kernel.org];
	FORGED_RECIPIENTS(0.00)[m:robh@kernel.org,m:krzk+dt@kernel.org,m:conor+dt@kernel.org,m:peter.griffin@linaro.org,m:alim.akhtar@samsung.com,m:linux@armlinux.org.uk,m:broonie@kernel.org,m:linusw@kernel.org,m:ckeepax@opensource.cirrus.com,m:semen.protsenko@linaro.org,m:arnd@arndb.de,m:brgl@bgdev.pl,m:krzk@kernel.org,m:linux-input@vger.kernel.org,m:devicetree@vger.kernel.org,m:linux-kernel@vger.kernel.org,m:linux-arm-kernel@lists.infradead.org,m:linux-samsung-soc@vger.kernel.org,m:patches@opensource.cirrus.com,m:conor@kernel.org,s:lists@lfdr.de];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORWARDED(0.00)[lists@lfdr.de];
	FROM_HAS_DN(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[dmitrytorokhov@gmail.com,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[gmail.com:+];
	ALIAS_RESOLVED(0.00)[];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	TO_DN_SOME(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,vger.kernel.org:from_smtp]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 5F47674387F

Convert the PMIC DVS GPIO configuration from a legacy lookup table to
software properties. We use the new 'dcdc_swnodes' field in 'struct
wm831x_pdata' to pass the software node to the regulator driver.
We keep the DVS configuration parameters (control source, startup
state) in the platform data.

Assisted-by: Antigravity:gemini-3.5-flash
Signed-off-by: Dmitry Torokhov <dmitry.torokhov@gmail.com>
---
 arch/arm/mach-s3c/mach-crag6410.c | 34 +++++++++++++++-------------------
 1 file changed, 15 insertions(+), 19 deletions(-)

diff --git a/arch/arm/mach-s3c/mach-crag6410.c b/arch/arm/mach-s3c/mach-crag6410.c
index 757c0f383ff1..1abf08fdb543 100644
--- a/arch/arm/mach-s3c/mach-crag6410.c
+++ b/arch/arm/mach-s3c/mach-crag6410.c
@@ -456,6 +456,17 @@ static struct pca953x_platform_data crag6410_pca_data = {
 	.irq_base	= -1,
 };
 
+static const struct property_entry crag_dcdc1_properties[] = {
+	PROPERTY_ENTRY_GPIO("dvs-gpios",
+			    SAMSUNG_GPIO_NODE('K'), 0, GPIO_ACTIVE_HIGH),
+	{ }
+};
+
+static const struct software_node crag_dcdc1_swnode = {
+	.name = "wm831x-buckv-dcdc1",
+	.properties = crag_dcdc1_properties,
+};
+
 /* VDDARM is controlled by DVS1 connected to GPK(0) */
 static struct wm831x_buckv_pdata vddarm_pdata = {
 	.dvs_control_src = 1,
@@ -633,6 +644,9 @@ static struct wm831x_pdata crag_pmic_pdata = {
 		&vddint,  /* DCDC2 */
 		&vddmem,  /* DCDC3 */
 	},
+	.dcdc_swnodes = {
+		&crag_dcdc1_swnode,
+	},
 
 	.ldo = {
 		&vddsys,   /* LDO1 */
@@ -656,24 +670,6 @@ static struct wm831x_pdata crag_pmic_pdata = {
 	.touch = &touch_pdata,
 };
 
-/*
- * VDDARM is eventually ending up as a regulator hanging on the MFD cell device
- * "wm831x-buckv.1" spawn from drivers/mfd/wm831x-core.c.
- *
- * From the note on the platform data we can see that this is clearly DVS1
- * and assigned as dcdc1 resource to the MFD core which sets .id of the cell
- * spawning the DVS1 platform device to 1, then the cell platform device
- * name is calculated from 10*instance + id resulting in the device name
- * "wm831x-buckv.11"
- */
-static struct gpiod_lookup_table crag_pmic_gpiod_table = {
-	.dev_id = "wm831x-buckv.11",
-	.table = {
-		GPIO_LOOKUP("GPIOK", 0, "dvs", GPIO_ACTIVE_HIGH),
-		{ },
-	},
-};
-
 static struct i2c_board_info i2c_devs0[] = {
 	{ I2C_BOARD_INFO("24c08", 0x50), },
 	{ I2C_BOARD_INFO("tca6408", 0x20),
@@ -931,7 +927,7 @@ static void __init crag6410_machine_init(void)
 	s3c_fb_set_platdata(&crag6410_lcd_pdata);
 	dwc2_hsotg_set_platdata(&crag6410_hsotg_pdata);
 
-	gpiod_add_lookup_table(&crag_pmic_gpiod_table);
+	software_node_register(&crag_dcdc1_swnode);
 	i2c_register_board_info(0, i2c_devs0, ARRAY_SIZE(i2c_devs0));
 	gpiod_add_lookup_table(&crag_wm1250_ev1_gpiod_table);
 	i2c_register_board_info(1, i2c_devs1, ARRAY_SIZE(i2c_devs1));

-- 
2.55.0.795.g602f6c329a-goog


