Return-Path: <devicetree+bounces-289789-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id GFc5L5KM6mmZ0gIAu9opvQ
	(envelope-from <devicetree+bounces-289789-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Thu, 23 Apr 2026 23:18:10 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 6987F457C0D
	for <lists+devicetree@lfdr.de>; Thu, 23 Apr 2026 23:18:10 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id C555E305E2F0
	for <lists+devicetree@lfdr.de>; Thu, 23 Apr 2026 21:15:31 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 788103563D4;
	Thu, 23 Apr 2026 21:15:30 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from mout-p-103.mailbox.org (mout-p-103.mailbox.org [80.241.56.161])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 734FA33DEF7;
	Thu, 23 Apr 2026 21:15:28 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=80.241.56.161
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1776978930; cv=none; b=RB8Vov2Bk9K/tjlWarm8vBY4ARFRe0WvXG5qxulY5aq5kXrdycKhB1YfWMQ9l/TPqYxBK7EAxso5KsHsA0K19eVEYrUv83Eeoxg4iwZTE0aJvb1Mt8n977CuddRPFOekdg1h3T+x7BKs5aRc/xk2tRpwANRHpN87fvHJ7B6veDI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1776978930; c=relaxed/simple;
	bh=6tA9k9HnpQ398IhKcsYtIjqCKpQWsheR/Y0glyW2kB4=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=hTrfVbHTG9ry2ac3Esg+E/EGOX7QoNUQnnYSP5+/XVwFWSmq9E5h71UDYfFtHRO588jGFSuLYQ5w8mAUbHPDY7WFayS7C3Zpyc6ZTCAcWvxDth6VYwnuQFTu1YXueiSTPjNhKKn9JhWSUFWfcGD1ovNagwxOlgMUa9bGScekx9M=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=timmermann.space; spf=pass smtp.mailfrom=timmermann.space; arc=none smtp.client-ip=80.241.56.161
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=timmermann.space
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=timmermann.space
Received: from smtp202.mailbox.org (smtp202.mailbox.org [IPv6:2001:67c:2050:b231:465::202])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	by mout-p-103.mailbox.org (Postfix) with ESMTPS id 4g1plY2qWhz9tPg;
	Thu, 23 Apr 2026 23:15:21 +0200 (CEST)
Authentication-Results: outgoing_mbo_mout;
	dkim=none;
	spf=pass (outgoing_mbo_mout: domain of linux@timmermann.space designates 2001:67c:2050:b231:465::202 as permitted sender) smtp.mailfrom=linux@timmermann.space
From: Lukas Timmermann <linux@timmermann.space>
Date: Thu, 23 Apr 2026 23:14:40 +0200
Subject: [PATCH 4/5] clk: samsung: exynos5250: Define more clocks
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260423-manta-display-v1-4-196f80c5673a@timmermann.space>
References: <20260423-manta-display-v1-0-196f80c5673a@timmermann.space>
In-Reply-To: <20260423-manta-display-v1-0-196f80c5673a@timmermann.space>
To: Neil Armstrong <neil.armstrong@linaro.org>, 
 Jessica Zhang <jesszhan0024@gmail.com>, 
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, 
 Maxime Ripard <mripard@kernel.org>, Thomas Zimmermann <tzimmermann@suse.de>, 
 David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>, 
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, 
 Thierry Reding <thierry.reding@gmail.com>, Sam Ravnborg <sam@ravnborg.org>, 
 Douglas Anderson <dianders@chromium.org>, 
 Krzysztof Kozlowski <krzk@kernel.org>, 
 Sylwester Nawrocki <s.nawrocki@samsung.com>, 
 Chanwoo Choi <cw00.choi@samsung.com>, Alim Akhtar <alim.akhtar@samsung.com>, 
 Michael Turquette <mturquette@baylibre.com>, 
 Stephen Boyd <sboyd@kernel.org>
Cc: dri-devel@lists.freedesktop.org, devicetree@vger.kernel.org, 
 linux-kernel@vger.kernel.org, linux-samsung-soc@vger.kernel.org, 
 linux-clk@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
 Lukas Timmermann <linux@timmermann.space>, 
 Alexandre Marquet <tb@a-marquet.fr>
X-Spamd-Result: default: False [0.04 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	DMARC_NA(0.00)[timmermann.space];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	FREEMAIL_TO(0.00)[linaro.org,gmail.com,linux.intel.com,kernel.org,suse.de,ffwll.ch,ravnborg.org,chromium.org,samsung.com,baylibre.com];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_FROM(0.00)[bounces-289789-lists,devicetree=lfdr.de];
	RCPT_COUNT_TWELVE(0.00)[27];
	MIME_TRACE(0.00)[0:+];
	FROM_HAS_DN(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	MISSING_XM_UA(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[linux@timmermann.space,devicetree@vger.kernel.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	R_DKIM_NA(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MID_RHS_MATCH_FROM(0.00)[];
	TO_DN_SOME(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[timmermann.space:mid,timmermann.space:email,sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,a-marquet.fr:email]
X-Rspamd-Queue-Id: 6987F457C0D
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

Add defines for mout_fimd1 and mout_vpll to enable display support for
exynos5250-manta boards.

Signed-off-by: Alexandre Marquet <tb@a-marquet.fr>
Signed-off-by: Lukas Timmermann <linux@timmermann.space>
---
 drivers/clk/samsung/clk-exynos5250.c | 6 +++---
 1 file changed, 3 insertions(+), 3 deletions(-)

diff --git a/drivers/clk/samsung/clk-exynos5250.c b/drivers/clk/samsung/clk-exynos5250.c
index e90d3a0848cb..a43d05d3014f 100644
--- a/drivers/clk/samsung/clk-exynos5250.c
+++ b/drivers/clk/samsung/clk-exynos5250.c
@@ -102,7 +102,7 @@
 #define PWR_CTRL2_CORE1_UP_RATIO		(1 << 0)
 
 /* NOTE: Must be equal to the last clock ID increased by one */
-#define CLKS_NR					(CLK_MOUT_VPLLSRC + 1)
+#define CLKS_NR					(CLK_MOUT_VPLL + 1)
 
 /* list of PLLs to be registered */
 enum exynos5250_plls {
@@ -283,7 +283,7 @@ static const struct samsung_mux_clock exynos5250_mux_clks[] __initconst = {
 
 	MUX(0, "mout_cpll", mout_cpll_p, SRC_TOP2, 8, 1),
 	MUX(0, "mout_epll", mout_epll_p, SRC_TOP2, 12, 1),
-	MUX(0, "mout_vpll", mout_vpll_p, SRC_TOP2, 16, 1),
+	MUX(CLK_MOUT_VPLL, "mout_vpll", mout_vpll_p, SRC_TOP2, 16, 1),
 	MUX(0, "mout_mpll_user", mout_mpll_user_p, SRC_TOP2, 20, 1),
 	MUX(0, "mout_bpll_user", mout_bpll_user_p, SRC_TOP2, 24, 1),
 	MUX(CLK_MOUT_GPLL, "mout_gpll", mout_gpll_p, SRC_TOP2, 28, 1),
@@ -304,7 +304,7 @@ static const struct samsung_mux_clock exynos5250_mux_clks[] __initconst = {
 	MUX(0, "mout_gscl_wa", mout_group1_p, SRC_GSCL, 24, 4),
 	MUX(0, "mout_gscl_wb", mout_group1_p, SRC_GSCL, 28, 4),
 
-	MUX(0, "mout_fimd1", mout_group1_p, SRC_DISP1_0, 0, 4),
+	MUX(CLK_MOUT_FIMD1, "mout_fimd1", mout_group1_p, SRC_DISP1_0, 0, 4),
 	MUX(0, "mout_mipi1", mout_group1_p, SRC_DISP1_0, 12, 4),
 	MUX(0, "mout_dp", mout_group1_p, SRC_DISP1_0, 16, 4),
 	MUX(CLK_MOUT_HDMI, "mout_hdmi", mout_hdmi_p, SRC_DISP1_0, 20, 1),

-- 
2.53.0


