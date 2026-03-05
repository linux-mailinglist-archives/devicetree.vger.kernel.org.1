Return-Path: <devicetree+bounces-271634-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 6Nd7MgysqWmtCAEAu9opvQ
	(envelope-from <devicetree+bounces-271634-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Thu, 05 Mar 2026 17:15:08 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 3DCAB21540F
	for <lists+devicetree@lfdr.de>; Thu, 05 Mar 2026 17:15:08 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 1A00731B16C1
	for <lists+devicetree@lfdr.de>; Thu,  5 Mar 2026 16:11:13 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id ECFB43CE4B7;
	Thu,  5 Mar 2026 16:11:07 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="aBe504Xs"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f52.google.com (mail-wr1-f52.google.com [209.85.221.52])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4D19E3CD8A2
	for <devicetree@vger.kernel.org>; Thu,  5 Mar 2026 16:11:05 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.52
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772727067; cv=none; b=JBH2j7c3ML7NyfBaSf4+bqvRwz8Kn9/yu1NKLq4C3bpSg+YrJgJE9yq6oPzYkpNvgmGrLwdFaTRpBM7l1bj/ONDT+SjC00sYJhZuntunPy1fY3BdeEuLPkpD4P+FZ4F/I2IpawlUvtqd+0LqM5NUWjICQGjq/m9fxtsWZQmU1a8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772727067; c=relaxed/simple;
	bh=OzG43Idqbxi1ORnEPr1z+IJWMjZLaY1zNTO9se1MEao=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=FqSSzmlUabF1Y9sTSVSMe13WNpkdSGOABoBHBCVJ8zwJwDhR1DNFxfHribkRc/JJAd0xH/gQmbQaWVe+nZ7i8ysNqpvsr+Lda6mu1n45a4cXKGQO0ii4U3afFIc2eDYf06y5Tyu5ZOfFFt/BfBqbGVnpN9+8MapZfewsCwGe/PU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=aBe504Xs; arc=none smtp.client-ip=209.85.221.52
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-wr1-f52.google.com with SMTP id ffacd0b85a97d-439b9b1900bso3382186f8f.1
        for <devicetree@vger.kernel.org>; Thu, 05 Mar 2026 08:11:05 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1772727064; x=1773331864; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=tJeeuaZ7qx7HAcADjaqwPatptaDaRzMU0Sji/6Pdru8=;
        b=aBe504Xsbu8iHnHNKNCs4eBEkc0kB2vrBnmihyKK/6J3qTybxFKNWvYT7gUI4dMuGh
         dk4Ng8amczAdZ06xvopXqugkzr//cdPOe77pOEAe7DzTi5zfLtMSnAVh4BUUwnYblSa7
         Q7oACL2AHL7MHNy55M7LZExPIPRGHNZpA+qrd4J2QA71sFHqYwyXakAEa3lTIsyOTWAd
         7lXuUjUKKaPtn8yhBKa2IvWY2zznPoUut/GIzguh95HWoj5ViLa/n+pnRq0ADXLCXjS6
         aSSRQPHwGxPANjF2o+/jBfUzvwC0xoczMH1jJLYPERrAPseoxsiGOBER64YfpZIlHK6W
         /Grg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1772727064; x=1773331864;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=tJeeuaZ7qx7HAcADjaqwPatptaDaRzMU0Sji/6Pdru8=;
        b=lskxw0ueDFVH7zphkVUu4PnREgokL4T6mqfXULl/IBkdyHYsqct4bWHir8JIn7Y5Y5
         H//S0fOAOt1a0ufT2GHO3DTjc2Arx2L0+qr9eUU/LOCoL6febao0dcUgn9AXPGGq42NM
         MuWgYCe4Vj3BjGcqAJ/EfErOenJ3MdWoTfZQ8ZhSktvq478eN/s9VDisB5mFeXj/kwlq
         80Rprogk7jfRr2Ki2XvkaMmzNZmoXscY+1rMsynRK08nc7mNxf1lAj3yqKiLkfk1KAjX
         brG4hocnqlqrz+ZjmOZYihuw01mEvX1BaZ55DIp8un2CfrPE+JrjdI9AyPP0bsVhN9e3
         2vSw==
X-Forwarded-Encrypted: i=1; AJvYcCW83+A1KFPupmpiWTWrORMFQ+33qw0SEptY9tMT2wVb/ZFoWzy8MxVhv6fx0x4ygHsfSC35F6M4fol6@vger.kernel.org
X-Gm-Message-State: AOJu0Yz1D7eFmuk09CCqOVYrlSQLBybX24PKNJvl7Zz6+vFwMVkmPd6u
	whTuR6D4MbQs7l0AUr9gdJMpFMXIJ6yd4ORzJsUZJgj0IBKxijdTAJCZ
X-Gm-Gg: ATEYQzwLJH7Uab1LCdwcdbj/kDGgh/cpfOpv9Cc4opf5/0o0fkw53nVj5zPzwUSs43O
	2V8SboteR8BOosqxikyPBHuXn801Ky9Z5pU/xBs1jNNU9YdGqbqO2qJMG4wtrs6PfIF432m9Qxx
	vLWPUOnvs/2vndXNeIDpFqsCo7RXyfpdqQApLIyoxOomlu36EWTIeWs7amD9rP5NAop4Y66M18j
	HKF1KpjMDJ5L7ZqONXhhEV6tOVkRLWJ5A6Sj/M+PEAoOM/pkP/DusIJ39+TO+q2Qbxqorv+bnKE
	3foQUXyXTJHRX9lL8/TSgX1kBSmZkuHWpIJqwqIzxS3mkkrfijvSM/daE3j5H9RTxjF2b/BXLRF
	TJ6GznViH/dBbVX8Jpe4QOnmH6MLBevLxdjGfYvjcOURbtIRjkv9MsTUXt9XVgvuIFNSPKoBpQA
	MfFysmWtXGvNr6
X-Received: by 2002:a5d:5848:0:b0:439:bc31:a05a with SMTP id ffacd0b85a97d-439c800f812mr12087240f8f.43.1772727063494;
        Thu, 05 Mar 2026 08:11:03 -0800 (PST)
Received: from xeon ([188.163.112.72])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-439b8807a4esm31426496f8f.4.2026.03.05.08.11.02
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 05 Mar 2026 08:11:03 -0800 (PST)
From: Svyatoslav Ryhel <clamor95@gmail.com>
To: Thierry Reding <thierry.reding@kernel.org>,
	Thierry Reding <treding@nvidia.com>,
	Mikko Perttunen <mperttunen@nvidia.com>,
	David Airlie <airlied@gmail.com>,
	Simona Vetter <simona@ffwll.ch>,
	Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
	Maxime Ripard <mripard@kernel.org>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Jonathan Hunter <jonathanh@nvidia.com>,
	Svyatoslav Ryhel <clamor95@gmail.com>
Cc: dri-devel@lists.freedesktop.org,
	devicetree@vger.kernel.org,
	linux-tegra@vger.kernel.org,
	linux-kernel@vger.kernel.org
Subject: [PATCH v1 2/2] [RFC] drm/tegra: dsi: remove tegra_output_probe use
Date: Thu,  5 Mar 2026 18:10:35 +0200
Message-ID: <20260305161035.64548-3-clamor95@gmail.com>
X-Mailer: git-send-email 2.51.0
In-Reply-To: <20260305161035.64548-1-clamor95@gmail.com>
References: <20260305161035.64548-1-clamor95@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Rspamd-Queue-Id: 3DCAB21540F
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [0.84 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_CONTAINS_FROM(1.00)[];
	R_MISSING_CHARSET(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20230601];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	FREEMAIL_FROM(0.00)[gmail.com];
	MIME_TRACE(0.00)[0:+];
	TAGGED_FROM(0.00)[bounces-271634-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[16];
	FREEMAIL_TO(0.00)[kernel.org,nvidia.com,gmail.com,ffwll.ch,linux.intel.com];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[clamor95@gmail.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[gmail.com:+];
	RCVD_COUNT_FIVE(0.00)[5];
	TAGGED_RCPT(0.00)[devicetree,dt];
	NEURAL_HAM(-0.00)[-0.999];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:rdns,sea.lore.kernel.org:helo]
X-Rspamd-Action: no action

The tegra_output_probe() function parses DC, DSI, HDMI, and SOR nodes for
panel phandles, OF graph endpoints, EDID, HPD GPIOs, and DDC buses.
However, this function is redundant for DSI controllers that define the
panel as a child node.

Furthermore, it creates conflicts with modern dual-mode panel bindings
that use OF graph links to both DSI controllers. The function incorrectly
treats these links as standard panel links and attempts to resolve a panel
that should not be handled there. For example, this causes the Mi Pad
panel to fail initialization.

Testing shows that bypassing this function allows the Mi Pad to work
correctly while maintaining compatibility with other Tegra20 and Tegra114
DSI devices.

Signed-off-by: Svyatoslav Ryhel <clamor95@gmail.com>
---
 drivers/gpu/drm/tegra/dsi.c | 4 ----
 1 file changed, 4 deletions(-)

diff --git a/drivers/gpu/drm/tegra/dsi.c b/drivers/gpu/drm/tegra/dsi.c
index 55259b68c933..5fbce17ea1fa 100644
--- a/drivers/gpu/drm/tegra/dsi.c
+++ b/drivers/gpu/drm/tegra/dsi.c
@@ -1594,10 +1594,6 @@ static int tegra_dsi_probe(struct platform_device *pdev)
 	if (err < 0)
 		return err;
 
-	err = tegra_output_probe(&dsi->output);
-	if (err < 0)
-		return err;
-
 	dsi->output.connector.polled = DRM_CONNECTOR_POLL_HPD;
 
 	/*
-- 
2.51.0


