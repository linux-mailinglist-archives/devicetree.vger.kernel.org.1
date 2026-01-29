Return-Path: <devicetree+bounces-260727-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id yHUII5D0emnDAAIAu9opvQ
	(envelope-from <devicetree+bounces-260727-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Thu, 29 Jan 2026 06:48:00 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [IPv6:2600:3c04:e001:36c::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 4EE47AC0C5
	for <lists+devicetree@lfdr.de>; Thu, 29 Jan 2026 06:48:00 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id ED4C7302158E
	for <lists+devicetree@lfdr.de>; Thu, 29 Jan 2026 05:47:55 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E193E306496;
	Thu, 29 Jan 2026 05:47:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="NVtFxeYF"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-qk1-f180.google.com (mail-qk1-f180.google.com [209.85.222.180])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C4E6D305E2E
	for <devicetree@vger.kernel.org>; Thu, 29 Jan 2026 05:47:52 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.222.180
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769665674; cv=none; b=ShAVtxrmoOwFpb+Mbop+eZP1GVm5+r5FCw51aZvuPJ1RT/+ouDAsXf7q7L9vzy/7ogOfu6815digF1kT1x3kFg/mkfFHppOFIvsWub9sr5c/m6z1Di2X8qbTo84QLd5tbeYmyKWr45s+wGiHgl0Pv+nk09ESDGYTuYr4iBJqPqo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769665674; c=relaxed/simple;
	bh=cihNYnflN3AVGRiDEm19DGgGttXrkIyvwuts3JIQy3Q=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=mT58kHzbWudrssNY5g7fbLJVqqvvHN48QpJhkZiHGDxGOFwEyXnAhaCtOVuUEO9kVGuZoTrpSDIEl3jYiHFlGsNuUzYosg88081wX0KDcWAl4t44szMjPrtNyhJwYkt9tJDKOEQL52DM39aXVP61Q4g9KkQgFST4yQLndsQIB7Y=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=NVtFxeYF; arc=none smtp.client-ip=209.85.222.180
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-qk1-f180.google.com with SMTP id af79cd13be357-8c710439535so51430285a.1
        for <devicetree@vger.kernel.org>; Wed, 28 Jan 2026 21:47:52 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1769665672; x=1770270472; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=1IVPvbiKHqb1wJCwFPWETEeAl2aF1oAt9knBh3vkK+g=;
        b=NVtFxeYFzX+6QeoDNPNE1nAHz1/2Af9CDfqCv/VF1+bzoWWzk73AePadtHoZkRf+9G
         UOCIzF7OjhiUkMh4TYa5n6oiqfpZvuxpj2xLpejy/zWjB48zaU6imX6KA1rX4vAOYp0y
         xngEViK/R42lkkCDqUT9erjWEHwzB954/WEWTfrMi+DP65JGhNH2SFon8sfi6uORaUID
         iYeau2H2DI9Pg4JYX5hhiXgkhIfsOYu2dKiVK2Qh62SvIzLLBJU/jId/uEyAdZdPT7kq
         EDoxqS9X13S5Y4XpW9LT3DLR1d0IUKBTmKQhGeC7WH2qr3f0z1JgwcFxO/BVRUBJjJt4
         Dmyg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1769665672; x=1770270472;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=1IVPvbiKHqb1wJCwFPWETEeAl2aF1oAt9knBh3vkK+g=;
        b=ruKfBaTyxX2U5+9q0lPhpX830eCGkK65AhnVVL1emQNICmp1YEw2/6Wikw95jSfbL7
         ko7bIMkXd4GGOfuDRftDAWRn1WmIRaoXdtwBAItDVwFXWksraiOcrA0oe6EyLF8EzxHl
         1flYtxv52wc8na+8Voo2D6iIX24sCnlOAxWDgz9tRdPsbMIqhSCuHDswXDnI0uIS1PzB
         bblWfV04UFL5ZbzU5nWfZJnBfra5/EN4/9amCCT0HpZc7EUO6vLa4uWVjkhI6VpSGHfp
         B+37X2ZSX/K7Y8cXYxos+55bGtXava52piCL2+4JfaDj8U+s9YKsHMfT4JSQ49vnmZtq
         ovzQ==
X-Gm-Message-State: AOJu0Yx3ZDi90L0rTDHheI5xsdtwMRoOMsDPFI58ddFdkUigCfc0RHPA
	UF6bq8W5/SuAfTKOCkRF4KocdBbiG7ZTXbV9Kd+e7bNc7BL3JX3mpMQB
X-Gm-Gg: AZuq6aLWStxDKTqRZBxTuAlsZF/07uYPOmvNqXHiFjdCCXQSTI6A6VRlTVUn7zdVbO5
	C/nZjSQIf72/N677xLLG0zxSWDtWigQe76Ymc+AwSIJBcTcSeT635H+y1OUm/eG6VtIHwds4RjZ
	MI3RJWjqYvZ7ct7RoaDqZa38uTb5qCFmszI0LqrWgX0TOv0Q33LN8o3AZ33BGr3puuU3UguVchm
	XJx6JlX3Ydaxy1SBb2z+Ql8U22rhKYb43qktsNzVgfq5HNkoMrkyFKwvQPP1f/HjcmJgRdtXNgi
	qrtzea5eWzTk5z+8QrgotowXGIUdOXzTXzndj4sWfC/oje3AedJzPXb43TukHkTKRxxEK1lm8UJ
	ES/ShKcVPIjF9vRpSPu3g5iMe7JAWjyFb0FEmwcheZ//8JKffl1k90OOhoW72gYffYv1h+T3Ukh
	nrJsxlMoWC+cuXh1lW+IOWxiwcjAXavG0rVBkzPnc99B+18GCqOR7Abpz8j1Oa9FrBBliB1o8=
X-Received: by 2002:a05:622a:3c8:b0:503:2d06:8e1f with SMTP id d75a77b69052e-5032f774707mr95808421cf.19.1769665671643;
        Wed, 28 Jan 2026 21:47:51 -0800 (PST)
Received: from mighty.stonybrook.edu (nat-130-245-192-1.resnet.stonybrook.edu. [130.245.192.1])
        by smtp.gmail.com with ESMTPSA id 6a1803df08f44-894d36dd1cfsm30903216d6.25.2026.01.28.21.47.50
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 28 Jan 2026 21:47:51 -0800 (PST)
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
Subject: [PATCH v5 4/8] dt-bindings: display: panel-lvds: Add compatibles for Samsung LTN070NL01 and LTN101AL03 panels
Date: Thu, 29 Jan 2026 00:47:05 -0500
Message-ID: <20260129054709.3878-5-bavishimithil@gmail.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20260129054709.3878-1-bavishimithil@gmail.com>
References: <20260129054709.3878-1-bavishimithil@gmail.com>
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
	TAGGED_FROM(0.00)[bounces-260727-lists,devicetree=lfdr.de];
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
	DBL_BLOCKED_OPENRESOLVER(0.00)[tor.lore.kernel.org:helo,tor.lore.kernel.org:rdns]
X-Rspamd-Queue-Id: 4EE47AC0C5
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


