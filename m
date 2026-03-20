Return-Path: <devicetree+bounces-278364-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id cJPvLz55vWkA+QIAu9opvQ
	(envelope-from <devicetree+bounces-278364-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Fri, 20 Mar 2026 17:43:42 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [IPv6:2600:3c09:e001:a7::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 684882DDD7B
	for <lists+devicetree@lfdr.de>; Fri, 20 Mar 2026 17:43:42 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id A88423035F7F
	for <lists+devicetree@lfdr.de>; Fri, 20 Mar 2026 16:42:46 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B49F93D3312;
	Fri, 20 Mar 2026 16:42:06 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="CqxIjONF"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f43.google.com (mail-wr1-f43.google.com [209.85.221.43])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A1F5A3CFF6D
	for <devicetree@vger.kernel.org>; Fri, 20 Mar 2026 16:42:04 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.43
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1774024926; cv=none; b=meFHmQv/59OoRWMM0pBDF9t8TOxzy3j240iiMtf9A06oQbWAlP/PxeRv9Xhc4cfWy8aH4yW8tv+W+p/hH9V2TCGx3RSLLwHS5SuIwZYTvvVEoY520B4TQqusETxDAu9vnZFX4qcSxQ0bcLLX+1lE1QWdw32DCe+1MEPMaZi1pZE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1774024926; c=relaxed/simple;
	bh=fK3o9R4p5yoqkrXzCDN7J6tQOqKI0ucN7iP+Z2se9Wo=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=AsK0FKfvfpidW01NG7yYIhGY4BC3qQwe37MxAbVXdB1rsd1x+GL088MY7y1AJTwdLAd6zx7bqQdPLcfE6sG9hrvhsDdkgjUIVHvm8WgQAIHnsAtGwrqjR3K5oujgHLfG0rJZ7Uu426z9FyX+wMtA9mtI38VrvyYl77++2qKeFUM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=CqxIjONF; arc=none smtp.client-ip=209.85.221.43
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-wr1-f43.google.com with SMTP id ffacd0b85a97d-43b3d9d0695so1968624f8f.0
        for <devicetree@vger.kernel.org>; Fri, 20 Mar 2026 09:42:04 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1774024922; x=1774629722; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=wDx7nIMupZuya6kEy4r0T51ugjRAiOlO9zel+//9XXQ=;
        b=CqxIjONFPLhLUXOKV4QUVzkCz7SXMGIc6hY+iKm1ObazbejILRuC2ny2FPBG4Lo+To
         4lQFUnzBOV6rZUavqUu1SFi0iRmvbsAmEGBnZavymKVL6qGTirpe23qSQKFlqWd+bQhR
         RR/eUDHmETuMTXGR58G7wLobg3CqJPKAtTGlQsSeGLGgUh7FwGdmRKHlHJ4MAIGFuHNy
         nnKF44llAI9V2FYu2hqptccR3vTnijQMRJbVv3ihAKHiyNj4jnyRE0uiZK00RPnSB8pk
         PElcbN2RYz0kZYzESRz1h06JQStn993zQ711q+uTnKqaMkrZnw5Rs2P2bMZygjaE6m5L
         aZrA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1774024922; x=1774629722;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=wDx7nIMupZuya6kEy4r0T51ugjRAiOlO9zel+//9XXQ=;
        b=HS3ci1Sa51KAAuZ8f1e6MrP3bMWGtFlfDJACH7BRzFjI2sgVqUheNSdgr+PqABJUmn
         6fbesY7Y3xaUomc11MU5t2Efr7njUYHWYtNyzeT5KR00lHejab0vadVX1ddoY3Lp+Ct4
         I5jK4l5fK1wk6BB23b+XlxT32KAkJn89XfTjW5HeBFfBwi6SG8V0DWGQoTUjitYAzroi
         xLD5TimPTVIdnUTDiwLFbrBx79gyqt1eioHHuO+rWBCeqAvLFFZXULdGXt2YIY5pC3Ch
         5qmsMm88NVZuoeNO+tIBiF0E9Dso+6x0VCSHYmsF0TmbTaFzqaOxuMQDT9sJG+Pyg6bf
         DnvQ==
X-Forwarded-Encrypted: i=1; AJvYcCWWBAaslDnaHHieooVrU0kZvCm+NTI6MndLIVcBSCHPuj1Y2QYcwpbPK/ZsMohFAaYZSQPNx3cCBm2a@vger.kernel.org
X-Gm-Message-State: AOJu0YwZiWylWqaBniEC/px16MoxUfkKIee8p4aro8bXam1Kd/QerFu2
	FWShG5FVCkLzWQlkYaPYY7eEGY7BjYtn8stwh+EH6Ae+m7fWdV8pYCAG
X-Gm-Gg: ATEYQzzU4LWArdhRjsSY8x1LapqUS9ZaRd5WupmF+K1QTzUPgW/RPcAdseFCQkmD+Kf
	3OVWytegonQmzGrL9vijTEeEGjNAYAEfyiYRqo92bMe2GRmVMYSR9xWHlU5bWP8kn+8MlbgeNIG
	o49syNm+oo7j13QuAnYiP06fc8lHWTIDkbNjazUwwuDDrb0ytVyTNIEfqH2xDxI5/UCBqyxlo14
	qX2Vcsidh2nC+Kolynt5XW64LD1GB6ckmQjZG0CQWneVdfPD3IGM/pX7oISarUbkqn2y5CUzdcU
	ENGji/t0tQLYlPTYAwMiGU2tyqxy5CUY+uOHeIdzWBaNq33qXfbWcoH/D+++gLkQ4xzUQsj0hQ9
	Nhpu6WutGwh61vDV1ft/99tn4DPc7r0TcQH+k+ISMRBQrgpV7Ad8al03/GCEVsm1oSD9NE3LWSh
	tfRl/mSkMuX7Cjaxjrn13aQ3sSiALemeE=
X-Received: by 2002:a5d:5e88:0:b0:43b:4461:7adc with SMTP id ffacd0b85a97d-43b57729635mr15672004f8f.20.1774024922158;
        Fri, 20 Mar 2026 09:42:02 -0700 (PDT)
Received: from biju.lan ([2a00:23c4:a758:8a01:5b93:d2b1:bc5c:9231])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-43b64703650sm7016575f8f.20.2026.03.20.09.42.01
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 20 Mar 2026 09:42:01 -0700 (PDT)
From: Biju <biju.das.au@gmail.com>
X-Google-Original-From: Biju <biju.das.jz@bp.renesas.com>
To: David Airlie <airlied@gmail.com>,
	Simona Vetter <simona@ffwll.ch>,
	Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
	Maxime Ripard <mripard@kernel.org>,
	Thomas Zimmermann <tzimmermann@suse.de>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Geert Uytterhoeven <geert+renesas@glider.be>,
	Magnus Damm <magnus.damm@gmail.com>
Cc: Biju Das <biju.das.jz@bp.renesas.com>,
	dri-devel@lists.freedesktop.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	linux-renesas-soc@vger.kernel.org,
	Prabhakar Mahadev Lad <prabhakar.mahadev-lad.rj@bp.renesas.com>,
	Biju Das <biju.das.au@gmail.com>
Subject: [PATCH v2 1/4] dt-bindings: gpu: mali-bifrost: Add compatible for RZ/G3L SoC
Date: Fri, 20 Mar 2026 16:41:47 +0000
Message-ID: <20260320164158.487406-2-biju.das.jz@bp.renesas.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20260320164158.487406-1-biju.das.jz@bp.renesas.com>
References: <20260320164158.487406-1-biju.das.jz@bp.renesas.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spamd-Result: default: False [-0.16 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	R_MISSING_CHARSET(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c09:e001:a7::/64:c];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20230601];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-278364-lists,devicetree=lfdr.de];
	FREEMAIL_FROM(0.00)[gmail.com];
	RCPT_COUNT_TWELVE(0.00)[17];
	FORGED_SENDER_MAILLIST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	RCVD_TLS_LAST(0.00)[];
	FREEMAIL_CC(0.00)[bp.renesas.com,lists.freedesktop.org,vger.kernel.org,gmail.com];
	FREEMAIL_TO(0.00)[gmail.com,ffwll.ch,linux.intel.com,kernel.org,suse.de,glider.be];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[bijudasau@gmail.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[gmail.com:+];
	RCVD_COUNT_FIVE(0.00)[5];
	TAGGED_RCPT(0.00)[devicetree,dt,renesas];
	NEURAL_HAM(-0.00)[-0.851];
	ASN(0.00)[asn:63949, ipnet:2600:3c09::/32, country:SG];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sto.lore.kernel.org:helo,sto.lore.kernel.org:rdns,renesas.com:email,bp.renesas.com:mid]
X-Rspamd-Queue-Id: 684882DDD7B
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

From: Biju Das <biju.das.jz@bp.renesas.com>

Add a compatible string for the Renesas RZ/G3L SoC variants that include a
Mali-G31 GPU. These variants share the same restrictions on interrupts,
clocks, and power domains as the RZ/G2L SoC, so extend the existing schema
validation accordingly.

Acked-by: Rob Herring (Arm) <robh@kernel.org>
Signed-off-by: Biju Das <biju.das.jz@bp.renesas.com>
---
v1->v2:
 * Collected tag
---
 Documentation/devicetree/bindings/gpu/arm,mali-bifrost.yaml | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/Documentation/devicetree/bindings/gpu/arm,mali-bifrost.yaml b/Documentation/devicetree/bindings/gpu/arm,mali-bifrost.yaml
index db49b8ff8c74..9db9f84ad964 100644
--- a/Documentation/devicetree/bindings/gpu/arm,mali-bifrost.yaml
+++ b/Documentation/devicetree/bindings/gpu/arm,mali-bifrost.yaml
@@ -26,6 +26,7 @@ properties:
               - realtek,rtd1619-mali
               - renesas,r9a07g044-mali
               - renesas,r9a07g054-mali
+              - renesas,r9a08g046-mali
               - renesas,r9a09g047-mali
               - renesas,r9a09g056-mali
               - renesas,r9a09g057-mali
@@ -150,6 +151,7 @@ allOf:
             enum:
               - renesas,r9a07g044-mali
               - renesas,r9a07g054-mali
+              - renesas,r9a08g046-mali
               - renesas,r9a09g047-mali
               - renesas,r9a09g056-mali
               - renesas,r9a09g057-mali
-- 
2.43.0


