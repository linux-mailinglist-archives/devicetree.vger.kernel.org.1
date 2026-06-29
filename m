Return-Path: <devicetree+bounces-317035-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id BFdGBjBqQmqq6gkAu9opvQ
	(envelope-from <devicetree+bounces-317035-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Mon, 29 Jun 2026 14:50:56 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [IPv6:2600:3c09:e001:a7::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id AE6126DA8B6
	for <lists+devicetree@lfdr.de>; Mon, 29 Jun 2026 14:50:55 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=baylibre.com header.s=google header.b=oxMca8I7;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-317035-lists+devicetree=lfdr.de@vger.kernel.org" designates 2600:3c09:e001:a7::12fc:5321 as permitted sender) smtp.mailfrom="devicetree+bounces-317035-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=none;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id B9C6F3038826
	for <lists+devicetree@lfdr.de>; Mon, 29 Jun 2026 12:45:05 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E103540800B;
	Mon, 29 Jun 2026 12:42:39 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f42.google.com (mail-wr1-f42.google.com [209.85.221.42])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3784E407CDE
	for <devicetree@vger.kernel.org>; Mon, 29 Jun 2026 12:42:38 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782736959; cv=none; b=e8WrMxw63cLw5r3OMWiAkHnDTxpHv/+v7JEXXc3gn7xnLTB/jDkxHPKluS/TRVxdcP2yk6Ka/zNjWNrK8sVdHDOC/dGDyiygZEV0lMWdjXHXpTv9xOGCmMFbRdOMkCRSu7AkKq1MgkalNaMGemympBkg4dSSXmUr8EeEgM3UAi0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782736959; c=relaxed/simple;
	bh=FoMUBVpR32MtJZer6V8lgBnEQWSbZvsirk0xN6alb7w=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=Go7bQQL9BeUKVkxAaTc1kNAGiYG2NnpNl+T1l/S6waBiXVM3DAYT+cjGSn8fTKSV0W50LLc4sj8FxP/EwTQjamYcu6CepooHOq8aBPA51lwqSCsLsrK8OC2mwsBtPe6bL7Dj5PNlK/iXrREplt2c1aPQM7vlFi97km9WG0aSxVE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com; spf=pass smtp.mailfrom=baylibre.com; dkim=pass (2048-bit key) header.d=baylibre.com header.i=@baylibre.com header.b=oxMca8I7; arc=none smtp.client-ip=209.85.221.42
Received: by mail-wr1-f42.google.com with SMTP id ffacd0b85a97d-474303f3c72so470473f8f.0
        for <devicetree@vger.kernel.org>; Mon, 29 Jun 2026 05:42:37 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre.com; s=google; t=1782736957; x=1783341757; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=pw83rsiBFZIUZWx5sliCML1fBJ0c8WhT+nfZEUBGdLM=;
        b=oxMca8I7GdgmO4i914/lyl/hFCkTFtoMBubny5FlnhvelebvEQ3tX4Xx6AQ0Dd95HK
         D4wlOl5uNmHpl1o+gd6u45F+Hzd1fRHBEtu7ZYw6lLIXNCbvu0UoQPEdALmAc/84iXrp
         Eh/T8ncbfyFVwBT4t29ZmEbjQf+6S9AYYA6xHsaXAINByrPsjm1MsUhSu3gJr5CEWUvF
         OCyqpaNMMYUlQoeRXZkoSXgUob6HxJAPFwXMbZhGrn32fNxppaJ8HBPxz8vzYFbcRIaQ
         dyJR5kb5XjQWrXZOrOqXPCOYTQEutzGfNN4zPemi8DcztEbWXghOLoJr9rXxoU1ZpLkr
         GOHg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1782736957; x=1783341757;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-gg:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=pw83rsiBFZIUZWx5sliCML1fBJ0c8WhT+nfZEUBGdLM=;
        b=qWFloxAXZaGwDysn1RbYDGQoV+pCO9K39xG3idaC9zp5lLkM0i2BFw679QHvA5OzGb
         YLpr4iUX2Q+tkg3JS2OaTJEAVSLzNpY9tbCL6kMTrsH7AuYB1UO2mwUVUV/knzNDno+o
         1w2mjqoYvwjEFCjBKdRixXk+SfWH9IA9SRlgeTZEhJFdEpd1aYZKsrLCpx6HXpEhquMS
         dN3O3AsdVCT5+/x/igvtGCmvIGdFKyVLZBc1mAyM4UZ/cjGv74XLBJXAez3orPr2JlaL
         tpmtTPO0ciKIOg2/ZMvHafW233tsKuDknI2ug7m5MlZnm/TOkrRWvIz8T3n8jZaCRfY1
         IMXw==
X-Forwarded-Encrypted: i=1; AHgh+RqI+LJ9VemKdEYn0988PuVGos7t47p5oxim8YuD0dw5BC/TkBDMrRg6O+hQkiLVs38eE1FkzvmwXp6L@vger.kernel.org
X-Gm-Message-State: AOJu0YzOPD4SDoVnMQkNRHSDT9T+teXtq2fdA5Dajpk6pCFodcH5pyvk
	7ev0R/+uaquw8RYoqsJ1p2LKMynHjyczbwb9pAT0wciXChthAm0Ooud1KBN62mFnRMI=
X-Gm-Gg: AfdE7cloGoaFJMHWQItiazFvY/rKv+ClvtTLVxkvHRx/MzOiAkMQqiigNkMDzqmcYC9
	q6kOqVXyq998f7gVRGnVAYTOy0OBKwwXpj4a4rF8JwHhQC8T97lpDdEIY+FOX7WROZIwMF8fkQz
	3BTIgOTdaIfHyNuBUdsN+3tRLnwhkcMB759zqVACg+UDJfIs8E2dG9tj4cQrf68muHi1hohhdQs
	yz5CYiPo3jaluCT0+ENnc6oADT+nMHjdcTYzvU/m8+ijVqKzpnHgvxGzy7Tb9WyyGVStcW+dPwK
	uG5AGPCEy4vdTV/z8qtAVn07xuoVfm/DPjsuftEtPkYsqqvWaIeOANWNAz4El8xErfty83frhi9
	AlBLc+9lEkByj5eD0fKJcbPMvm5Kr7NGzG3HKWJAwCLnBr3QLKH0GYQTorRQYZA/2uH/3WRWFf0
	gPCjQqf8tVG2Y=
X-Received: by 2002:a05:6000:2c0b:b0:466:6ed8:1e1b with SMTP id ffacd0b85a97d-46dc263a79fmr26849485f8f.21.1782736956641;
        Mon, 29 Jun 2026 05:42:36 -0700 (PDT)
Received: from localhost ([2a01:e0a:3c5:5fb1:1d21:f5d5:2d3c:23a7])
        by smtp.gmail.com with UTF8SMTPSA id ffacd0b85a97d-46f9db29b15sm21643420f8f.18.2026.06.29.05.42.36
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 29 Jun 2026 05:42:36 -0700 (PDT)
From: Jerome Brunet <jbrunet@baylibre.com>
Date: Mon, 29 Jun 2026 14:42:08 +0200
Subject: [PATCH v2 4/6] clk: sunxi-ng: div: add read-only operation support
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260629-a733-rtc-v2-4-7b72112784f8@baylibre.com>
References: <20260629-a733-rtc-v2-0-7b72112784f8@baylibre.com>
In-Reply-To: <20260629-a733-rtc-v2-0-7b72112784f8@baylibre.com>
To: Junhui Liu <junhui.liu@pigmoral.tech>, 
 Alexandre Belloni <alexandre.belloni@bootlin.com>, 
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Chen-Yu Tsai <wens@kernel.org>, 
 Jernej Skrabec <jernej.skrabec@gmail.com>, 
 Samuel Holland <samuel@sholland.org>, 
 Michael Turquette <mturquette@baylibre.com>, 
 Stephen Boyd <sboyd@kernel.org>, Maxime Ripard <mripard@kernel.org>
Cc: linux-rtc@vger.kernel.org, devicetree@vger.kernel.org, 
 linux-arm-kernel@lists.infradead.org, linux-sunxi@lists.linux.dev, 
 linux-kernel@vger.kernel.org, linux-clk@vger.kernel.org, 
 Jerome Brunet <jbrunet@baylibre.com>
X-Mailer: b4 0.15.2
X-Developer-Signature: v=1; a=openpgp-sha256; l=1337; i=jbrunet@baylibre.com;
 h=from:subject:message-id; bh=FoMUBVpR32MtJZer6V8lgBnEQWSbZvsirk0xN6alb7w=;
 b=owEBbQKS/ZANAwAKAeb8Dxw38tqFAcsmYgBqQmgvEGszTwRXVQ3roYF7XUovP55Mn6aarufxX
 8kePw4A99SJAjMEAAEKAB0WIQT04VmuGPP1bV8btxvm/A8cN/LahQUCakJoLwAKCRDm/A8cN/La
 hTF3D/wL66zdurLSHBXauyOo/Zxl5eIu+ExlDjOXHuoU9nsyPbxB/Fvr5arOgZKgvkzeEFBeNyD
 rAJUqyTmc6DVlZirO2UJrSavRMrcf+PRwdB+UnjMkSCdqVrVRG57FRA69nk1XXGZooC99EBbYdG
 bhssIXwrI+pW1uDUGU5nLIn5+FoTUHgyM1DL9Wldf6WnJjpfYxvSmQLtGGwBK6Jp80BbtvgBVka
 FTJVT0SjaBvXOqJOYhqJaAHPveNEpUEhV1DgPiydlgT0i88N6GkXizHXfgPNom3dpTjQ1vPrRum
 QCL5QHaaIPndE7AZcGSyZAQ4OaxI/yEOEIbKFlAggihe0wBUWdf9tH9wiUVdvDZWrpErGfeD92F
 c9w3gkhEKwy47mVjQJcH9gGIF+CTmr3ND2kG3EzotXk+61Ok3LmVZcKWPSDrddLk2rY4x6LNqh9
 dJyxjsiE4Ee3WyWGcaDN1ajaqAavcA25KwmSg3BooXCtZPsk9rMDvcvylni/8+CoIqKYOwNwh7c
 xdUuJ66mrS6VvpM8TLvIHuoyK2t9uhapPTa7a64zx7i4RW6FP+20MIBepUl4nU8BvisqT3l+iKy
 AfZQswZZ7g+C8UCJH2Xb000LCLKJRgS/Ym4EDI5eEbwLYMTbotAmQnFlaOzSmJoxoU3bav2VMNW
 v1fkXBQp4GKAnTQ==
X-Developer-Key: i=jbrunet@baylibre.com; a=openpgp;
 fpr=F29F26CF27BAE1A9719AE6BDC3C92AAF3E60AED9
X-Rspamd-Action: no action
X-Spamd-Result: default: False [-0.16 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	R_DKIM_ALLOW(-0.20)[baylibre.com:s=google];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c09:e001:a7::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FROM_HAS_DN(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:junhui.liu@pigmoral.tech,m:alexandre.belloni@bootlin.com,m:robh@kernel.org,m:krzk+dt@kernel.org,m:conor+dt@kernel.org,m:wens@kernel.org,m:jernej.skrabec@gmail.com,m:samuel@sholland.org,m:mturquette@baylibre.com,m:sboyd@kernel.org,m:mripard@kernel.org,m:linux-rtc@vger.kernel.org,m:devicetree@vger.kernel.org,m:linux-arm-kernel@lists.infradead.org,m:linux-sunxi@lists.linux.dev,m:linux-kernel@vger.kernel.org,m:linux-clk@vger.kernel.org,m:jbrunet@baylibre.com,m:krzk@kernel.org,m:conor@kernel.org,m:jernejskrabec@gmail.com,s:lists@lfdr.de];
	FREEMAIL_TO(0.00)[pigmoral.tech,bootlin.com,kernel.org,gmail.com,sholland.org,baylibre.com];
	FORGED_SENDER(0.00)[jbrunet@baylibre.com,devicetree@vger.kernel.org];
	RCPT_COUNT_TWELVE(0.00)[18];
	DMARC_NA(0.00)[baylibre.com];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORWARDED(0.00)[lists@lfdr.de];
	TAGGED_FROM(0.00)[bounces-317035-lists,devicetree=lfdr.de];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[jbrunet@baylibre.com,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[baylibre.com:+];
	ALIAS_RESOLVED(0.00)[];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c09::/32, country:SG];
	TAGGED_RCPT(0.00)[devicetree,dt];
	DBL_BLOCKED_OPENRESOLVER(0.00)[baylibre.com:dkim,baylibre.com:email,baylibre.com:mid,baylibre.com:from_mime,sto.lore.kernel.org:rdns,sto.lore.kernel.org:helo,vger.kernel.org:from_smtp]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: AE6126DA8B6

Add support for sunxi-ng read-only dividers. This will be
useful to the a733 oscillator detection logic.

Signed-off-by: Jerome Brunet <jbrunet@baylibre.com>
---
 drivers/clk/sunxi-ng/ccu_div.c | 11 +++++++++++
 drivers/clk/sunxi-ng/ccu_div.h |  1 +
 2 files changed, 12 insertions(+)

diff --git a/drivers/clk/sunxi-ng/ccu_div.c b/drivers/clk/sunxi-ng/ccu_div.c
index 62d680ccb524..0e3d9e6e30fb 100644
--- a/drivers/clk/sunxi-ng/ccu_div.c
+++ b/drivers/clk/sunxi-ng/ccu_div.c
@@ -143,3 +143,14 @@ const struct clk_ops ccu_div_ops = {
 	.set_rate	= ccu_div_set_rate,
 };
 EXPORT_SYMBOL_NS_GPL(ccu_div_ops, "SUNXI_CCU");
+
+const struct clk_ops ccu_rodiv_ops = {
+	.disable	= ccu_div_disable,
+	.enable		= ccu_div_enable,
+	.is_enabled	= ccu_div_is_enabled,
+
+	.get_parent	= ccu_div_get_parent,
+
+	.recalc_rate	= ccu_div_recalc_rate,
+};
+EXPORT_SYMBOL_NS_GPL(ccu_rodiv_ops, "SUNXI_CCU");
diff --git a/drivers/clk/sunxi-ng/ccu_div.h b/drivers/clk/sunxi-ng/ccu_div.h
index be00b3277e97..a30a92780a05 100644
--- a/drivers/clk/sunxi-ng/ccu_div.h
+++ b/drivers/clk/sunxi-ng/ccu_div.h
@@ -300,5 +300,6 @@ static inline struct ccu_div *hw_to_ccu_div(struct clk_hw *hw)
 }
 
 extern const struct clk_ops ccu_div_ops;
+extern const struct clk_ops ccu_rodiv_ops;
 
 #endif /* _CCU_DIV_H_ */

-- 
2.47.3


