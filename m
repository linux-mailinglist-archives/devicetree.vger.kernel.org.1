Return-Path: <devicetree+bounces-323167-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id Gq1bBt6+TmqITQIAu9opvQ
	(envelope-from <devicetree+bounces-323167-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 08 Jul 2026 23:19:26 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 6241E72A795
	for <lists+devicetree@lfdr.de>; Wed, 08 Jul 2026 23:19:25 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=gmail.com header.s=20251104 header.b=len5dy+s;
	dmarc=pass (policy=none) header.from=gmail.com;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-323167-lists+devicetree=lfdr.de@vger.kernel.org" designates 172.234.253.10 as permitted sender) smtp.mailfrom="devicetree+bounces-323167-lists+devicetree=lfdr.de@vger.kernel.org";
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 5A7E43062D7F
	for <lists+devicetree@lfdr.de>; Wed,  8 Jul 2026 21:18:40 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 342B83F54B1;
	Wed,  8 Jul 2026 21:18:40 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f41.google.com (mail-wm1-f41.google.com [209.85.128.41])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 706883E8C6A
	for <devicetree@vger.kernel.org>; Wed,  8 Jul 2026 21:18:38 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783545520; cv=none; b=JTs9NP8vKgQX5/pm+iMav3vZbDRdj50Qg5XBPaPkugALc/jgmaSUPjyAaR+gBQ0TL28Idb2SqZJfEwKcVnC9vSRKuzeC0AETemekkdq9Hl14JtnjDg7GylMydx8XjA7rPAILFqwMzQ+mLy0m5J54evuLNR2rN2qD9hJjqV02kEc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783545520; c=relaxed/simple;
	bh=SjjG/CrVIc9aE8jdYdM/ZV3TV+Yf7aKsf9FVtBDP3vg=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=BUq+W+Q546qXz0a+kreQLqyrkK/gEjqcb9vwGAyyGUbuJ7HZCm3G8uRkrA/lS4VdvCrpYk8Ro6SvvNZQJHh5jUISyP9v1x80kPRQh1TZA99vgdVtJmJB7J67ER5+NkxEkXG6gSyIo2BkiLM2T62jmBwbn0Dl7PIKGqotAdG8oaQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=len5dy+s; arc=none smtp.client-ip=209.85.128.41
Received: by mail-wm1-f41.google.com with SMTP id 5b1f17b1804b1-493bc8fda98so8780425e9.0
        for <devicetree@vger.kernel.org>; Wed, 08 Jul 2026 14:18:38 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1783545517; x=1784150317; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=p484GJHOgK3H42utBnZR7l0t297MFCifBS+3//lXji4=;
        b=len5dy+suois9xRraXqNmQPkEWA54g1Cid2rJHmU9+WcHXa+9JEm+DGtTp+6NHn5Pf
         BVtVGF6FKPrKpXW6lzLx7+cozoLm5cxfbCa+31U3jfVCN2WpZ8AgPAkDfHR6J+Md+qWM
         cBQSjCNve9mvtvtpMSIBPskKKlUVY1QjHLO6lfi4osoJHIAzVthlrTqM5kUPZCvCfnZB
         M/7d/PfraTGI6aU+3GUMlouJ99igWSHgG0KGv27UUJUd0OAu5E4jPtajauh2P20CsYkt
         2TIYBbgAcN65JOz0uPEtdoFp+oPZTP6ZGVxfoYA9NiXSIyL6AT76J0xp4BFfpm7YoSYe
         OvFA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1783545517; x=1784150317;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to:content-type;
        bh=p484GJHOgK3H42utBnZR7l0t297MFCifBS+3//lXji4=;
        b=ksvUsfgCLUu/rd28Kqr5pEYBUeRGC5dMJ0/E3or2jeGdj1YbXXKh/q/U2wbgs79pWC
         vV2iVmdbe0fnpWbtfFNcY/cCvnYI9F6qBEGTJsPsGHsL+iu0wYTJKV/4ni+f/5D8b311
         bMxM0qRgFvsw+N8VQc5TnZe/HDf7Kx2ZaTsrie2O5kocqh26Jlan+IXgVI153fSfj12N
         PuHuYVPpYpPdd8qS++LE20UBSK2tAZzCXhnzI/KNyLmYRyQu6aLzAPJhQrxgvLtbWwUw
         aVYbRqP6aU2IQfDB1/Oq29HrIkcR8tcAWifNVHDJP7WKdYTXJPzq5rtrER9ndZfbXhFD
         f8XQ==
X-Forwarded-Encrypted: i=1; AHgh+RrfQhvFhkm9gJIGRjG2hvRNw3oMuXD111CIGsPI72JBfXlHl8cx5RIsPR+eCUHYPS1hsDthDCa6iQ5P@vger.kernel.org
X-Gm-Message-State: AOJu0YyydH96W4Nyh/B3+fDmoO6WHy7T6lIvm53HqVgRZm6KkiKrBHIp
	gnvUkNrX6i1CPenZ/mYID5z0SvTr7ZhfozoDoy6mfwye2VJLBzuz8KLr
X-Gm-Gg: AfdE7cmrBkc5wqmM8QtsfcZ92JGjJ+ISstSvTlR6Awvw5EXB+cB7LGtfbuwe4F/d9nL
	f5IrE/bkqEOiU2o6+FR/0gJ5tnisylBf9+rcf+YxOgMV5sQlVsBp4vmap0vPjJqirb2M108sRyV
	wP/nfYhJ4EZecD8Ax3b+9c2vCL7AyWmPgvrFkSRAeqvh4xMNprM8InYhMVIKYE2AStu4DxagqYa
	Lgt7nqjfc+ps38TzDWLA8LR26vwaP334l3aBpKHzuYud+MCekjuEk5QpyLftWDqIeISROx/xUDV
	3bIl5TrwG8r07RjlA2WNkgqOkAKqIEN/wnjR+I+4pW8z6xXcj/7qPjF8fWyRHmOlk2NqU2Yrfbj
	y6QLbsX1yeGz05yFvk9pSkdc0+crVbZInP988g71JYNF0LWOuhcCBM3ISoiasaYLzBPVmeDRd0d
	BP3bc3MNAC3vgU/hHHk4i+b0vTSgDH1w/rgUsmWoLKMlInIJRVjj26BYuvbqrMH96NVME/XYvn/
	sUVVdXnZTWN6XKK4iNRylJIZo+zNjxc+FgptQ==
X-Received: by 2002:a05:600c:4743:b0:493:bba7:e9f4 with SMTP id 5b1f17b1804b1-493e68c483fmr41955935e9.18.1783545516611;
        Wed, 08 Jul 2026 14:18:36 -0700 (PDT)
Received: from Lord-Beerus.station (net-93-144-65-248.cust.vodafonedsl.it. [93.144.65.248])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-493e5a58853sm68494175e9.1.2026.07.08.14.18.35
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 08 Jul 2026 14:18:36 -0700 (PDT)
From: Stefano Radaelli <stefano.radaelli21@gmail.com>
X-Google-Original-From: Stefano Radaelli <stefano.r@variscite.com>
To: linux-kernel@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org
Cc: pierluigi.p@variscite.com,
	matthias.p@variscite.com,
	Stefano Radaelli <stefano.r@variscite.com>,
	Nishanth Menon <nm@ti.com>,
	Vignesh Raghavendra <vigneshr@ti.com>,
	Tero Kristo <kristo@kernel.org>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Kees Cook <kees@kernel.org>,
	Tony Luck <tony.luck@intel.com>,
	"Guilherme G. Piccoli" <gpiccoli@igalia.com>
Subject: [PATCH v1 1/3] dt-bindings: arm: ti: Add bindings for Variscite VAR-SOM-AM62
Date: Wed,  8 Jul 2026 23:18:25 +0200
Message-ID: <10775b12b801255546c9cdefdb153e421aedf910.1783545241.git.stefano.r@variscite.com>
X-Mailer: git-send-email 2.47.3
In-Reply-To: <cover.1783545241.git.stefano.r@variscite.com>
References: <cover.1783545241.git.stefano.r@variscite.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Rspamd-Action: no action
X-Spamd-Result: default: False [-0.16 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	R_MISSING_CHARSET(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20251104];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	FREEMAIL_FROM(0.00)[gmail.com];
	TAGGED_FROM(0.00)[bounces-323167-lists,devicetree=lfdr.de];
	FORWARDED(0.00)[lists@lfdr.de];
	FORGED_RECIPIENTS(0.00)[m:linux-kernel@vger.kernel.org,m:devicetree@vger.kernel.org,m:linux-arm-kernel@lists.infradead.org,m:pierluigi.p@variscite.com,m:matthias.p@variscite.com,m:stefano.r@variscite.com,m:nm@ti.com,m:vigneshr@ti.com,m:kristo@kernel.org,m:robh@kernel.org,m:krzk+dt@kernel.org,m:conor+dt@kernel.org,m:kees@kernel.org,m:tony.luck@intel.com,m:gpiccoli@igalia.com,m:krzk@kernel.org,m:conor@kernel.org,s:lists@lfdr.de];
	RCPT_COUNT_TWELVE(0.00)[15];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORGED_SENDER(0.00)[stefanoradaelli21@gmail.com,devicetree@vger.kernel.org];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[stefanoradaelli21@gmail.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[gmail.com:+];
	RCVD_COUNT_FIVE(0.00)[5];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	TO_DN_SOME(0.00)[];
	ALIAS_RESOLVED(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,vger.kernel.org:from_smtp,variscite.com:mid,variscite.com:email]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 6241E72A795

From: Stefano Radaelli <stefano.r@variscite.com>

Add devicetree bindings for Variscite VAR-SOM-AM62 System on Module
and its carrier boards.

Signed-off-by: Stefano Radaelli <stefano.r@variscite.com>
---
 Documentation/devicetree/bindings/arm/ti/k3.yaml | 6 ++++++
 1 file changed, 6 insertions(+)

diff --git a/Documentation/devicetree/bindings/arm/ti/k3.yaml b/Documentation/devicetree/bindings/arm/ti/k3.yaml
index 69b5441cbf1a..b9da6e62ab79 100644
--- a/Documentation/devicetree/bindings/arm/ti/k3.yaml
+++ b/Documentation/devicetree/bindings/arm/ti/k3.yaml
@@ -104,6 +104,12 @@ properties:
           - const: tq,am625-tqma6254
           - const: ti,am625
 
+      - description: K3 AM625 SoC Variscite SOM and Carrier Boards
+        items:
+          - const: variscite,var-som-am62-symphony
+          - const: variscite,var-som-am62
+          - const: ti,am625
+
       - description: K3 AM62P5 SoC Toradex Verdin Modules and Carrier Boards
         items:
           - enum:
-- 
2.47.3


