Return-Path: <devicetree+bounces-291017-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id QF5POgOH8GnuUQEAu9opvQ
	(envelope-from <devicetree+bounces-291017-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 28 Apr 2026 12:08:03 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [172.105.105.114])
	by mail.lfdr.de (Postfix) with ESMTPS id 848A64823DD
	for <lists+devicetree@lfdr.de>; Tue, 28 Apr 2026 12:08:03 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 2A8C23042E89
	for <lists+devicetree@lfdr.de>; Tue, 28 Apr 2026 10:04:09 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 4FC783E1D16;
	Tue, 28 Apr 2026 10:04:08 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="KVWS5IAt"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f44.google.com (mail-wm1-f44.google.com [209.85.128.44])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D19B83624C1
	for <devicetree@vger.kernel.org>; Tue, 28 Apr 2026 10:04:06 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.44
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1777370648; cv=none; b=gnfLWtAidmJwktV/2Wuh2fsmHDZag9NCC7LXjPQEV5HoW3WEhZmS+3Tixf6yoSchZSrYEiK6yfkO6LX4knmRtc20PTLled96swxV8O0gQcfWg4M0EQboIxrhj5N+Gris0WmVi9QAvg1EZkq5yHMoAquoGylGewo71K4HWYDDt3Y=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1777370648; c=relaxed/simple;
	bh=KAs7GpO6pRk7YM65weAKFN4jQHungiqMV/ndnHGTNBQ=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=lv0uxg3eLO5LSGiI4UGdi+6FHI5eJs+iNcEQKipsjCAqsmFisSe6W/kNAj5r+AGl5zo0955903zePxCl4k6dhASRdHOmhnuZMBJ0lIQhlAQZsAieWX4DSRbNFM+u6TxxfpQKlaO31As+BaHzV7J9xSWqal0r21YgrEpXn+nZCEs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=KVWS5IAt; arc=none smtp.client-ip=209.85.128.44
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-wm1-f44.google.com with SMTP id 5b1f17b1804b1-4891f625344so101447245e9.0
        for <devicetree@vger.kernel.org>; Tue, 28 Apr 2026 03:04:06 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1777370645; x=1777975445; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=EaJ4+olCt0ESjMkUsLHtcaVD2PslzC6qCqa9YfkQU9A=;
        b=KVWS5IAtsCUmk6beQQ9YnAnGiWaE7HLD/TJcb1ahRRJv7356SzQsgIBz4aYjLn89R7
         RiZdSmiiBxCr3mcGKDOA991HtDk02KuCtb5s02BjefcJQYEW8bIlv1SQ68Vu4Kd1Ifww
         Wl3fytSdZv9IDkAgpZdktrcS+asQHHJDg/oJNVt0tiiO1Fk+54y7rbIsMMTeLYICS6zK
         rNcnq7/ffFVrG+0T+qfdus0o33KkGtPtXbRXr7XgYUT0CEPr7sFVPUm+Hpx9oHhKT4cn
         i0mJUoSthPYBOPfK0Qb6LZk4DuJ0VySyEwulH1IgGVWELTvPXf7JwYQt9N+DLO9U80cP
         bAWw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1777370645; x=1777975445;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=EaJ4+olCt0ESjMkUsLHtcaVD2PslzC6qCqa9YfkQU9A=;
        b=FV1bMfDyZ1Dpo0EOZVkPq6o2diBJv5WLoBO5UV+XbFe725nEG9zp+3HSyMGnODJdMa
         rm4k1R1ClvUl5YtSzIJRVYHoX0YC5vj5Z1JU7Pt6aJe50pr4cmBW8liAGwk1itYxQzOt
         7MuA1tidisOVGVO9eZfuANft5A8LeTpdnnI16E1CUPpqerUcXwssaljWii8v9fYxrJ40
         poTfjfxqYu/uDJjaSOZUOpn1Z642pzsdeMUPOGu8TX7iPHqx4FxkrMvwmaKZ943Xa2/k
         voDgm1sdg5BkZ1irtuxzRu/WFUINYOcF61U/+O7Go923CknY4H+QlxR0f6T9bNGHGOrW
         XxUA==
X-Forwarded-Encrypted: i=1; AFNElJ9iLYjOc6+2/9a7DW0u1RYdufBUfPl4LctiBh45ikmCUxW0f0AS4nojilo0yQ8SxbDBJFvpyMnk1X7s@vger.kernel.org
X-Gm-Message-State: AOJu0YytozmZ+VveE9tgyS8BWEtnjVaPYQn6cjIxv5kHLavECbkAq1Hc
	skE7yWwbSAiMCT7LpvMhaBe73p6tPdcSn7vHvAbboqOYCj9QmvGs5+qp
X-Gm-Gg: AeBDievZCpALuMXRxZuX+VUSjA6G0GbhQikFcoj+C9ZrL7eddoLehoaKqAZPCRVO5bX
	99LVj8XUyX/ZSDIuJbZ4CVg0HgOXAbQh+CppKLKd0t1q0LyXlJHa5OmWMNhwX1I7BigzLvXwU71
	7Pk2kvF3f8TnKZO1O3LkQ93e0fY0YReCLNY6rWP4IlcIRwLMN+iIw8uzVvvcGB+CrdfP3AYsIrq
	YaPJEJ1/lCDs3L+wTmowMYU4OPlLLVdyRBp2PHuDUPQa1tR0e8Opf9RMPiJJi22n8fiUr8mrWuE
	iwng3LbR9tjvCVMmsYREYJyKhmu8qnCjFI+DVaM4IAKQAgzhX8/GdhhSSijuL0SSljkPXFFPc9L
	31ZBvpEWmFI7L8Ag9+zLMUcyetmY2bQgXTSfbADldDKOJmoB/H1BaQUAE2hExl71PqOT7Zkvi0I
	HxcAa0djrt/cfYid336mBg/spCE4m34pORE0JzjQbPq79PQ1dnBoVIhwIsRlm2EkPOTVThGZjle
	UbpgbwSC/6W1epC2XOA5UPDlBHc0vqLtpfSVY/3P3UGEVz/
X-Received: by 2002:a05:600c:a403:b0:486:f893:56c6 with SMTP id 5b1f17b1804b1-48a78a391b9mr21393605e9.10.1777370645029;
        Tue, 28 Apr 2026 03:04:05 -0700 (PDT)
Received: from iku.Home ([2a06:5906:61b:2d00:8851:8e5e:9c47:30d1])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-48a775e126csm23640705e9.5.2026.04.28.03.04.04
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 28 Apr 2026 03:04:04 -0700 (PDT)
From: Prabhakar <prabhakar.csengg@gmail.com>
X-Google-Original-From: Prabhakar <prabhakar.mahadev-lad.rj@bp.renesas.com>
To: Rob Clark <robin.clark@oss.qualcomm.com>,
	Dmitry Baryshkov <lumag@kernel.org>,
	Abhinav Kumar <abhinav.kumar@linux.dev>,
	Jessica Zhang <jesszhan0024@gmail.com>,
	Sean Paul <sean@poorly.run>,
	Marijn Suijten <marijn.suijten@somainline.org>,
	David Airlie <airlied@gmail.com>,
	Simona Vetter <simona@ffwll.ch>,
	Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
	Maxime Ripard <mripard@kernel.org>,
	Thomas Zimmermann <tzimmermann@suse.de>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Kuogee Hsieh <quic_khsieh@quicinc.com>
Cc: linux-arm-msm@vger.kernel.org,
	dri-devel@lists.freedesktop.org,
	freedreno@lists.freedesktop.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	Prabhakar <prabhakar.csengg@gmail.com>,
	Lad Prabhakar <prabhakar.mahadev-lad.rj@bp.renesas.com>
Subject: [PATCH v2] dt-bindings: display/msm: Fix typo in clock-names property
Date: Tue, 28 Apr 2026 11:03:38 +0100
Message-ID: <20260428100338.3179722-1-prabhakar.mahadev-lad.rj@bp.renesas.com>
X-Mailer: git-send-email 2.54.0
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Rspamd-Queue-Id: 848A64823DD
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.16 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	R_MISSING_CHARSET(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_SPF_ALLOW(-0.20)[+ip4:172.105.105.114:c];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20251104];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-291017-lists,devicetree=lfdr.de];
	FREEMAIL_FROM(0.00)[gmail.com];
	RCPT_COUNT_TWELVE(0.00)[22];
	FORGED_SENDER_MAILLIST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	RCVD_TLS_LAST(0.00)[];
	FREEMAIL_CC(0.00)[vger.kernel.org,lists.freedesktop.org,gmail.com,bp.renesas.com];
	FREEMAIL_TO(0.00)[oss.qualcomm.com,kernel.org,linux.dev,gmail.com,poorly.run,somainline.org,ffwll.ch,linux.intel.com,suse.de,quicinc.com];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[prabhakarcsengg@gmail.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[gmail.com:+];
	RCVD_COUNT_FIVE(0.00)[5];
	TAGGED_RCPT(0.00)[devicetree,dt];
	NEURAL_HAM(-0.00)[-0.985];
	ASN(0.00)[asn:63949, ipnet:172.105.96.0/20, country:SG];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[renesas.com:email,tor.lore.kernel.org:helo,tor.lore.kernel.org:rdns,bp.renesas.com:mid]

From: Lad Prabhakar <prabhakar.mahadev-lad.rj@bp.renesas.com>

Fix the typo "clocks-names" to "clock-names" in the allOf/if conditional
blocks.

Fixes: 9be5c47908e66 ("dt-bindings: display/msm: expand to support MST")
Fixes: 7403e87c13847 ("dt-bindings: display: msm: Fix reg ranges and clocks on Glymur")
Signed-off-by: Lad Prabhakar <prabhakar.mahadev-lad.rj@bp.renesas.com>
---
v1->v2:
- Added "Fixes" tags.
---
 .../devicetree/bindings/display/msm/dp-controller.yaml | 10 +++++-----
 1 file changed, 5 insertions(+), 5 deletions(-)

diff --git a/Documentation/devicetree/bindings/display/msm/dp-controller.yaml b/Documentation/devicetree/bindings/display/msm/dp-controller.yaml
index 8239adb7f7d3..43ebd053f98c 100644
--- a/Documentation/devicetree/bindings/display/msm/dp-controller.yaml
+++ b/Documentation/devicetree/bindings/display/msm/dp-controller.yaml
@@ -243,7 +243,7 @@ allOf:
         clocks:
           minItems: 5
           maxItems: 5
-        clocks-names:
+        clock-names:
           minItems: 5
           maxItems: 5
 
@@ -264,7 +264,7 @@ allOf:
         clocks:
           minItems: 5
           maxItems: 6
-        clocks-names:
+        clock-names:
           minItems: 5
           maxItems: 6
 
@@ -286,7 +286,7 @@ allOf:
         clocks:
           minItems: 6
           maxItems: 6
-        clocks-names:
+        clock-names:
           minItems: 6
           maxItems: 6
 
@@ -306,7 +306,7 @@ allOf:
         clocks:
           minItems: 6
           maxItems: 8
-        clocks-names:
+        clock-names:
           minItems: 6
           maxItems: 8
 
@@ -326,7 +326,7 @@ allOf:
         clocks:
           minItems: 5
           maxItems: 6
-        clocks-names:
+        clock-names:
           minItems: 5
           maxItems: 6
 
-- 
2.54.0


