Return-Path: <devicetree+bounces-267440-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id OE6lFV1bnGmzEgQAu9opvQ
	(envelope-from <devicetree+bounces-267440-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Mon, 23 Feb 2026 14:51:25 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [IPv6:2600:3c04:e001:36c::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id C4763177570
	for <lists+devicetree@lfdr.de>; Mon, 23 Feb 2026 14:51:24 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id E2FF2305B59E
	for <lists+devicetree@lfdr.de>; Mon, 23 Feb 2026 13:49:54 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 92D2E259C84;
	Mon, 23 Feb 2026 13:49:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="dm6S59qU"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-qv1-f44.google.com (mail-qv1-f44.google.com [209.85.219.44])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2193925F96B
	for <devicetree@vger.kernel.org>; Mon, 23 Feb 2026 13:49:52 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.219.44
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771854594; cv=none; b=dhDZfydTF3RXV+rc8YOTwseS3FRtvmS441TiwKJJ5u/DpmdnTU7ii5pHeQ7w7LGWWOnUk6T0JyWxB+BqY6d61UZLA8hPy2LHFNfsdoCY7ibvFeT3vqFJFwpKQaBEB5XP0Hs9YedpYyZAB1sP6GYrI9fB1o7NLXhzlID0TPls3wo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771854594; c=relaxed/simple;
	bh=cihNYnflN3AVGRiDEm19DGgGttXrkIyvwuts3JIQy3Q=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=iIilt2FmFXxaMZDvRTrXgW/VxMIXzGyE7lEulmdgsi080PfzVPAp05M9l+wOnmnQhoyxOIX0ptV36fBlkxyAKxwO0UJmo25It6NC2ls06f4ZWdPxTelZbv9/zEN7KB8k+DmRWpkH2Y1/W1l0a0KzKlu/qQzZbZ9mmrHxT+F6oB4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=dm6S59qU; arc=none smtp.client-ip=209.85.219.44
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-qv1-f44.google.com with SMTP id 6a1803df08f44-8954c181830so51068746d6.1
        for <devicetree@vger.kernel.org>; Mon, 23 Feb 2026 05:49:52 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1771854592; x=1772459392; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=1IVPvbiKHqb1wJCwFPWETEeAl2aF1oAt9knBh3vkK+g=;
        b=dm6S59qUDq4hMCkWKJzB9IOHtInL7S2z7mWuX+vK781iw63HFsqSlAy9vCU/wz9Jqw
         3dgAs2oWOkyZkt3yfpNmrs8lZKeHF7aT33WmzXBui+UbwE6HTm55XVVjEhDrX8bDD6QG
         DzzjzKpfAO6UeYMhC+WyKMmrmjVQAyAk76cX95qIXPAmydhfwpyTai9/wEwoY8nsQ9Jo
         +bAVRCtj7ad/dky5eBDmLNKGenBg+31wyFVSJmtZ20tvLUzcF8xbCybSIUywUjJ52xCc
         xlNQqFicunbRFvUOukqBtT+FRvsMQfUcLacUgptPJmmkVdjOKZRdqFzLZx5vGZMjMeD5
         cljw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1771854592; x=1772459392;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=1IVPvbiKHqb1wJCwFPWETEeAl2aF1oAt9knBh3vkK+g=;
        b=BMUCvlwCaiLZSUwzkg2vOgbX3EgHGxrzhyPHHCh/7plNPnt61alYHH77wUhKm8Jxim
         JOYVsPl4cUrSJWr/IJz9e/qYMOxy8xlwgjvRghnazXYXELI3cEUh5QGOriDO0quqMDH7
         UFPxiA3wkmRdR6j3s/dNfyCH3AY4BKkcbHT/QxGsVy6L4SA+sgqLOCNBJM2EZ+eGtI5G
         Bx8UgHI3PSrOJjv9zrmBpsmPH9tgtAFGPd/8P89O2Cq7UOk6BwwJm6OhnxY7RTCs/1qT
         rRW1e5Qf3WJ+3kBvyNQpyKH4yGZikt19dkua7az8R46EE6WHVIBEBt5JfVA4mdRrKULq
         hN4w==
X-Gm-Message-State: AOJu0YxW9eGT5gKCY+oapzmY+eJ5IoybRcTeobMi+umTXCus1rAb1hXL
	2JxI1h2DB0PT0kdOzESbSJ3mOjTkup7L0kp5blIESWfiygwzmB73DFjE
X-Gm-Gg: ATEYQzx76Ttc1Tv1LLWibE3c9slJSxlAZWuDmgbDfX7xILBk3n6+EgPcxyaN+eUFe9v
	nqEA9xVMuhx6i93/dpuJCY56NcX81F5YF8QP+FqkvvPQikyLI4wROxgXL+RDB67kCbCTuiswpLq
	jIYzSfVGBTMbQgKcYkiSweLbccz5vm/JghdEZvCTFSkHn06tI/wo82uITFpyQwt1WK5/k59lWo1
	9Z51T3+ZhpiP7e2FnnxIRuYPKsWNWAwDoHbIzMq5NxJph7kgqNekatzYKaMdWTlS4qUaB0qSvGM
	nF7AWA9w41Vp60C9JzoDv59DQmAjaPtr+Z12p5+7B51NFNPiV8L6xD+f+qLpzGpwDpCfU9I8y0D
	b6E8gusesZ9+e0kdf1i4JvcMvB7dwiH2IqQOWa6AtmLlQNULI7mB5vMpVMhRmOAcG+CD4ZEvDOs
	b2m/4bsjDkbB157CYcvnOnjxW9X5TeMJIGoyPphm0JoNslrsH+qKtRAvfNXvDKfKjSnjpwMiSYu
	hXCeTJvoCo=
X-Received: by 2002:a05:6214:2482:b0:895:4852:ef49 with SMTP id 6a1803df08f44-89979d4cc07mr143956556d6.34.1771854591950;
        Mon, 23 Feb 2026 05:49:51 -0800 (PST)
Received: from mighty.stonybrook.edu (nat-130-245-192-1.resnet.stonybrook.edu. [130.245.192.1])
        by smtp.gmail.com with ESMTPSA id 6a1803df08f44-8997e62f453sm67954716d6.36.2026.02.23.05.49.50
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 23 Feb 2026 05:49:51 -0800 (PST)
From: Mithil Bavishi <bavishimithil@gmail.com>
To: aaro.koskinen@iki.fi,
	airlied@gmail.com,
	andreas@kemnade.info,
	conor+dt@kernel.org,
	jernej.skrabec@gmail.com,
	jonas@kwiboo.se,
	khilman@baylibre.com,
	krzk+dt@kernel.org,
	laurent.pinchart@ideasonboard.com,
	maarten.lankhorst@linux.intel.com,
	mripard@kernel.org,
	neil.armstrong@linaro.org,
	prabhakar.mahadev-lad.rj@bp.renesas.com,
	jesszhan0024@gmail.com,
	rfoss@kernel.org,
	robh@kernel.org,
	rogerq@kernel.org,
	simona@ffwll.ch,
	thierry.reding@gmail.com,
	tony@atomide.com,
	tzimmermann@suse.de,
	andrzej.hajda@intel.com,
	bavishimithil@gmail.com
Cc: devicetree@vger.kernel.org,
	dri-devel@lists.freedesktop.org,
	linux-kernel@vger.kernel.org,
	linux-omap@vger.kernel.org,
	Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Subject: [PATCH v8 4/8] dt-bindings: display: panel-lvds: Add compatibles for Samsung LTN070NL01 and LTN101AL03 panels
Date: Mon, 23 Feb 2026 08:49:36 -0500
Message-ID: <20260223134941.427-5-bavishimithil@gmail.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20260223134941.427-1-bavishimithil@gmail.com>
References: <20260223134941.427-1-bavishimithil@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [0.84 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_CONTAINS_FROM(1.00)[];
	R_MISSING_CHARSET(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c04:e001:36c::/64:c];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20230601];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	FREEMAIL_FROM(0.00)[gmail.com];
	MIME_TRACE(0.00)[0:+];
	TAGGED_FROM(0.00)[bounces-267440-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[28];
	FREEMAIL_TO(0.00)[iki.fi,gmail.com,kemnade.info,kernel.org,kwiboo.se,baylibre.com,ideasonboard.com,linux.intel.com,linaro.org,bp.renesas.com,ffwll.ch,atomide.com,suse.de,intel.com];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[bavishimithil@gmail.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[gmail.com:+];
	RCVD_COUNT_FIVE(0.00)[5];
	TAGGED_RCPT(0.00)[devicetree,dt];
	NEURAL_HAM(-0.00)[-1.000];
	ASN(0.00)[asn:63949, ipnet:2600:3c04::/32, country:SG];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[linaro.org:email,tor.lore.kernel.org:helo,tor.lore.kernel.org:rdns]
X-Rspamd-Queue-Id: C4763177570
X-Rspamd-Action: no action

The LTN070NL01 is a 7.0 inch 1024x600, 24 bit, VESA Compatible, TFT
display panel
The LTN101AL03 is a 10.1 inch 800x1280, 24 bit, VESA Compatible, TFT
display panel

Signed-off-by: Mithil Bavishi <bavishimithil@gmail.com>
Acked-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
---
 .../devicetree/bindings/display/panel/panel-lvds.yaml         | 4 ++++
 1 file changed, 4 insertions(+)

diff --git a/Documentation/devicetree/bindings/display/panel/panel-lvds.yaml b/Documentation/devicetree/bindings/display/panel/panel-lvds.yaml
index dbc01e640..b31c67bab 100644
--- a/Documentation/devicetree/bindings/display/panel/panel-lvds.yaml
+++ b/Documentation/devicetree/bindings/display/panel/panel-lvds.yaml
@@ -58,6 +58,10 @@ properties:
           - hydis,hv070wx2-1e0
           # Jenson Display BL-JT60050-01A 7" WSVGA (1024x600) color TFT LCD LVDS panel
           - jenson,bl-jt60050-01a
+          # Samsung LTN070NL01 7.0" WSVGA (1024x600) TFT LCD LVDS panel
+          - samsung,ltn070nl01
+          # Samsung LTN101AL03 10.1" WXGA (800x1280) TFT LCD LVDS panel
+          - samsung,ltn101al03
           - tbs,a711-panel
           # Winstar WF70A8SYJHLNGA 7" WSVGA (1024x600) color TFT LCD LVDS panel
           - winstar,wf70a8syjhlnga
-- 
2.43.0


