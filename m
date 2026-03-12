Return-Path: <devicetree+bounces-274419-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id aBTiKGlDsmlFKgAAu9opvQ
	(envelope-from <devicetree+bounces-274419-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Thu, 12 Mar 2026 05:39:05 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 2288026D288
	for <lists+devicetree@lfdr.de>; Thu, 12 Mar 2026 05:39:05 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 17C8D3031808
	for <lists+devicetree@lfdr.de>; Thu, 12 Mar 2026 04:38:50 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 900423976A5;
	Thu, 12 Mar 2026 04:38:49 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="JzecDMvF"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pj1-f45.google.com (mail-pj1-f45.google.com [209.85.216.45])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6A26339657C
	for <devicetree@vger.kernel.org>; Thu, 12 Mar 2026 04:38:48 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.216.45
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773290329; cv=none; b=t/J/xR4bcQH9J7L+Gl5+KFqjwcSG0K6BqZnDtbhEkSi05BOJA+VqQtQ/D3uABnPiHDQJZksJvOrOTDQ9nRkU+Tef8gyBds/DpweFVSBZrBWm0cHuGjE6i5x0/3mALn1RcwOewQHUEKvPQtH13KlavIhYbaPeKsifoOtrnwH5XeQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773290329; c=relaxed/simple;
	bh=PdhZ7DC54zY6/jpvD2JgERR7Nb3tJjUtY6jU/DeqF+c=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
	 MIME-Version; b=uiOdw+uuckktGXoBiAZO8cPiuOWIMGsoNbIWiocO4dArftL0ZMLm0D97i5rTGzCKnSWyBiVAlC+dLyJ7pFxJdXJc36es5p4zlmhIF47oCM+l51PKfWPn4uyl+/BnEcDxGbshE2JQ6hj5k5S4F81/I+gOeByqsA2yj1ileel0jAM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=JzecDMvF; arc=none smtp.client-ip=209.85.216.45
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-pj1-f45.google.com with SMTP id 98e67ed59e1d1-35a132767c3so198154a91.1
        for <devicetree@vger.kernel.org>; Wed, 11 Mar 2026 21:38:48 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1773290328; x=1773895128; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=nMTZw9V6oYdbNCX21LHvVHPsfOKTyWhCTcJB46ncYVY=;
        b=JzecDMvF5oHLziIbHl74xghzxynatF1mLzfN6qNsSQeZIXxUECT4IzDb7LGvKbQKLh
         03HhKJY9h3RQi3sqenZWVFfOXGiNo/vh0+fLj/nrlzB8b+pXSS4jVZPgscThPwMHBqqG
         WyRJpqCBuTFZaiblKcDKnlMb46aKAOm9g7KBNAKLH0ltUQRgWSi3+khS70bxNFNgrtYn
         eYIUt1ooHI7DcJiniR6IxySUxca7OcsJKa7Lb5a0xrsoFXw2vcp3Elxt9WUryp3iyFal
         JDUQvCHaqIec8N4TujLfD09r/CtE4cqVPYhRTOeJQeA2qRMlwCUKr24bJalYqZqtIbTI
         LAvg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1773290328; x=1773895128;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=nMTZw9V6oYdbNCX21LHvVHPsfOKTyWhCTcJB46ncYVY=;
        b=ReFloEszu8A0gziyM6DFgNBgAckKWMezqRihMSzrKCDuDXsGb0t5C6KRVzYmbpWvJt
         sbitszgmeUUSWLUTZq1dzbObiny+pT+zGJl472g3Aegwf9DwPfFEJE+bdOysM/LaD2mx
         +z6/SDAwkJRDP9jwpfcE952RzIWaXlKoUgXP+pMCUHQjud7MQYjmMhU30sfGanM9cqRi
         XVn/gsqy1G3xAqOjPslooVliNuRQq0fgqWrisCHDWysxi/ug0jqVerwBcgqFc3+rtgpZ
         SlqwcbItSdjT0G94aFbpoQSgNhHOUssJA6okb4nU2c6Y3yxi0yB6O0F6Hd2W/dZfH0fp
         +Kcw==
X-Forwarded-Encrypted: i=1; AJvYcCVTGO3Q/i+rJl3ihUOZF4OKuNpkxKkMjpZg0AoEkuzUOngMb26upEOcDa7pLvA3cLIDupO4x390jLoY@vger.kernel.org
X-Gm-Message-State: AOJu0YxwAoq9hUPaZetCWDafCHjtnz5Ul28+TK3sDB1qlXV0vRbe+ZDn
	9Y5oORMBHR0eg75UyF2HmAt0Y3D5pTGbkqbE09Ki0JCGHYePBZQ0+LMV
X-Gm-Gg: ATEYQzxdgnPvj53e16zNUgOWlFf61Lchhyhn1rx3ePAEuoiXwSh6VwydfJW/5idVfTR
	GnkyZb4AboKrHSUl71B+pBgOSmkX0W//mOgAbAKmgom9xV9yDEH7pKEqAYp3Bi4lfPtdvvvDE8A
	pN3wOfulQOQwl68yzNIr6rRzwqZUCKw3TrOOPLtU5HHhJ3mwnpVyrONl818ca7cc4F/5TLmWhrl
	M4dhdBbMDsWG/DMaAkW5jPPfCJITORiVzDHNUr3YX9NVg1Zw3iOEe/dS+PTkmbfQI6L9T5sBK/3
	BwDgD8nRQzfxgIYo08yecc73JVYun7C4RT4uvVtpbcvc1p8aca8svaXQSmDEA0XQVZk0b+F/HJO
	MMQzTLK/3dZyCFQ89/3D5k5IBHkcHPKkgPpui+WHgSMWOujLAcjCmudSGR6bX+dWZWV0ThxhUgb
	tmRI7+cjO/dbXsSpFByFgGzrld8r93BFp6G19qCut6sPA0UsHgjAiHYQqIaPo=
X-Received: by 2002:a17:90b:2c8d:b0:359:9083:3661 with SMTP id 98e67ed59e1d1-35a01247d63mr4568828a91.15.1773290327700;
        Wed, 11 Mar 2026 21:38:47 -0700 (PDT)
Received: from test-HP-Desktop-Pro-G3.. ([103.218.174.23])
        by smtp.gmail.com with ESMTPSA id 98e67ed59e1d1-35a030490b9sm3793460a91.17.2026.03.11.21.38.41
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 11 Mar 2026 21:38:47 -0700 (PDT)
From: Sudarshan Shetty <tessolveupstream@gmail.com>
To: andrzej.hajda@intel.com,
	neil.armstrong@linaro.org,
	rfoss@kernel.org
Cc: Laurent.pinchart@ideasonboard.com,
	jonas@kwiboo.se,
	jernej.skrabec@gmail.com,
	maarten.lankhorst@linux.intel.com,
	mripard@kernel.org,
	tzimmermann@suse.de,
	airlied@gmail.com,
	simona@ffwll.ch,
	robh@kernel.org,
	krzk+dt@kernel.org,
	conor+dt@kernel.org,
	marex@denx.de,
	valentin@compulab.co.il,
	philippe.schenker@toradex.com,
	dri-devel@lists.freedesktop.org,
	linux-kernel@vger.kernel.org,
	devicetree@vger.kernel.org,
	Sudarshan Shetty <tessolveupstream@gmail.com>
Subject: [PATCH v2 1/2] dt-bindings: display: bridge: ti,sn65dsi83: Add dual-link video mode property
Date: Thu, 12 Mar 2026 10:07:42 +0530
Message-Id: <20260312043743.261475-2-tessolveupstream@gmail.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20260312043743.261475-1-tessolveupstream@gmail.com>
References: <20260312043743.261475-1-tessolveupstream@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spamd-Result: default: False [0.84 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_CONTAINS_FROM(1.00)[];
	R_MISSING_CHARSET(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20230601];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	FREEMAIL_CC(0.00)[ideasonboard.com,kwiboo.se,gmail.com,linux.intel.com,kernel.org,suse.de,ffwll.ch,denx.de,compulab.co.il,toradex.com,lists.freedesktop.org,vger.kernel.org];
	RCVD_TLS_LAST(0.00)[];
	FREEMAIL_FROM(0.00)[gmail.com];
	MIME_TRACE(0.00)[0:+];
	RCPT_COUNT_TWELVE(0.00)[21];
	TAGGED_FROM(0.00)[bounces-274419-lists,devicetree=lfdr.de];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[tessolveupstream@gmail.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[gmail.com:+];
	RCVD_COUNT_FIVE(0.00)[5];
	TAGGED_RCPT(0.00)[devicetree,dt];
	NEURAL_HAM(-0.00)[-1.000];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns]
X-Rspamd-Queue-Id: 2288026D288
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

Add a new optional device tree property `ti,dual-link-video-mode`
to indicate that the bridge should configure the device for
dual-link LVDS video mode.

In dual-link configurations, some panels require the horizontal
timing parameters to be adjusted before programming them into
the device. In such cases, the horizontal timing values must be
divided by two when operating in dual-link mode.

Signed-off-by: Sudarshan Shetty <tessolveupstream@gmail.com>
---
 .../devicetree/bindings/display/bridge/ti,sn65dsi83.yaml | 9 +++++++++
 1 file changed, 9 insertions(+)

diff --git a/Documentation/devicetree/bindings/display/bridge/ti,sn65dsi83.yaml b/Documentation/devicetree/bindings/display/bridge/ti,sn65dsi83.yaml
index e69b6343a8eb..b610739555a4 100644
--- a/Documentation/devicetree/bindings/display/bridge/ti,sn65dsi83.yaml
+++ b/Documentation/devicetree/bindings/display/bridge/ti,sn65dsi83.yaml
@@ -38,6 +38,15 @@ properties:
   interrupts:
     maxItems: 1
 
+  ti,dual-link-video-mode:
+    type: boolean
+    description: |
+      Enables configuration settings required for correct dual-link
+      LVDS operation. Some panels require the horizontal timing
+      parameters to be adjusted before being programmed into the
+      device. The horizontal timing values must be divided by
+      two when operating in dual-link mode.
+
   ports:
     $ref: /schemas/graph.yaml#/properties/ports
 
-- 
2.34.1


