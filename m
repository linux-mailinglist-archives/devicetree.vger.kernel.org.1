Return-Path: <devicetree+bounces-271714-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id +OBuNRThqWnDGwEAu9opvQ
	(envelope-from <devicetree+bounces-271714-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Thu, 05 Mar 2026 21:01:24 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [172.105.105.114])
	by mail.lfdr.de (Postfix) with ESMTPS id 56F13217E91
	for <lists+devicetree@lfdr.de>; Thu, 05 Mar 2026 21:01:23 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id C96A13091C86
	for <lists+devicetree@lfdr.de>; Thu,  5 Mar 2026 19:59:08 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B82ED3ED5BC;
	Thu,  5 Mar 2026 19:57:31 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="UI9kdQw8"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f47.google.com (mail-wm1-f47.google.com [209.85.128.47])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 312AF3ED5C7
	for <devicetree@vger.kernel.org>; Thu,  5 Mar 2026 19:57:25 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.47
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772740651; cv=none; b=ZxGEq6sCJYj5Jfy0xlFDBUxXaTWoPK/0rF6FmRrah7LyF/YCDZGdPZNaAPb8Y33oxRZCDV4sAHYmBA9/LacVdETANnwYPBytJ8HbQT/bNVgu/2jAQSIJgIji0AYq4X6H4maAykbTCphPYudG8t2GfOrZ/9PNvu+Zg7AouR6Eyuk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772740651; c=relaxed/simple;
	bh=ujvbhvdxFxvp+dEVlmpX9OLStQw937Z/KLIDIgyo1gA=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=J3vG4Rynl+EBzeTrQzoVQGJN1coOeDP4rsZJHbkruzYsATPCopOoFdU3qK5NqKOyHVDTbogJ44Nn0giV0k4zP7S1rLKvCJ6N/A/6kc4K6uBRWhQDO9BjFgZXroNCUDmUXHkYcJMU91gBAkkI61DRutGU3Zo0dweBQAHyubkL4xk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=UI9kdQw8; arc=none smtp.client-ip=209.85.128.47
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-wm1-f47.google.com with SMTP id 5b1f17b1804b1-48334ee0aeaso70649295e9.1
        for <devicetree@vger.kernel.org>; Thu, 05 Mar 2026 11:57:25 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1772740644; x=1773345444; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=ZtSz5l75Rw6ZqIXeFcoTcvd2i9c8nNbyLRXNmlkxqoo=;
        b=UI9kdQw83t32crcOuu4ZN+pCyFZuXGHNUq0X2JqOBQZoMh7haLTpnzO+r0xgh1qZWQ
         49qq8B0miepnx7d6k/4O4eUt7gxI49MCrWoZbYFCJbGolfN2oHXxKO0DE9Ws2m3ywsBP
         /ZCs+/+0GYiKbMJCVkm+osZkMj/nV896Ft5ahaHXBXwAbtx0KT0LFiX/hsfIoUxha0Xb
         nVfFM/7FZK0a2LV2pDVuRQ/e4QHO/wOzxieshl0UHvp06wwVdFn8IH8SqLwnI6Wy+U4v
         B3gkK3F3bouH9hyulcGYYuV5CsWjgt0hBO8Jquv9Hv5JUHcvW5rK3RGL2Qxh2Nsgv7hl
         fL5A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1772740644; x=1773345444;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=ZtSz5l75Rw6ZqIXeFcoTcvd2i9c8nNbyLRXNmlkxqoo=;
        b=m/zmIr1jxPgbwR9ppmdWp7rEeAkVGNMM3iTtvwh2jqwvxTsIAfezbtSMCCnhvceS5X
         B1xYjGh8DCGmCKQ9fC+VovKJ6+VBsm487tDgkGmtf5vNnEnT049gomdCKNcn848Tw/RQ
         RymEWcSh93IcbLj+ZVZGL5ENvuCb58eBoWvzueoVJ1OgoMF1MlKzziN6ouAFTMJD3lGw
         LbWreKywPSLyggmkdwVlM2J6KBNuG7SOzMw6GG5nKE2w8rvm3xPKYiqeyCfwg5OmjI2q
         HuhjxjweqcrxfTH6nDMM3kQTRiOXfPFzwpYiayyKFmB/0gz161+kShecTsK7MeaxfL4V
         9spg==
X-Forwarded-Encrypted: i=1; AJvYcCVTEof4oGAvendIoD7ToW93jAyenwCeEjSrOYu/U5qeiPpmtYaLj+tggGTSwllkkeORWxaJwPvFPiGM@vger.kernel.org
X-Gm-Message-State: AOJu0YwtxLmBveWnQz3BJfXTSvDoBJ+8ueWgHDEcrtiiYhN+euCzLCQB
	q+4ym50WYa9a6AovqDapQRD+LzQQVlASX3rCPnYjdDKsiff1VgopiYnJfghHIC8p
X-Gm-Gg: ATEYQzyN4hvCnHBQ/l9h9UWpYQxVWVMjWMbf10X6Y3GbVCPxgwPXgWzl1FTQaAIbzJJ
	LEWUIIKWFisCugSDMuxb1BEEJUrqiiaW15UBGYhAIhj+o/vuf4skNE8gOeQdvgDS8kNwgjHpJBa
	sQUXYt4zve3rkYVLRGJZP27b5zUucWBuC97E/1j8Tl9TQWqAN1tJfc7+UbnBvIsiPhfXYXG3sKs
	3KXiF7ZxZEUngyy3KTOSaUwVcq5kmf+a4/DgBThrrtqGsw4feeeOynECn5FqL3EBB6iLRSJ9Ee1
	+t2HSG9MlW+xrl8D9bZvUtAGGkcfsl3W9wKIXHqOj56RNiy6dQZLSqAosioPpjDmoHTCTDOKB6K
	Nry5AXxZEpj3USP/OLsg/netxvuaEQfIg1IUtmYsYDpOEO/+ItJecXs82RSYeuQ+9rrShPJYvBR
	OZG5kmkQxMc8tD/Y3m0fg=
X-Received: by 2002:a5d:5f85:0:b0:431:8f8:7f24 with SMTP id ffacd0b85a97d-439d72595bdmr1734488f8f.39.1772740643877;
        Thu, 05 Mar 2026 11:57:23 -0800 (PST)
Received: from luca-vm.lan ([154.61.61.58])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-439bb686a32sm26974297f8f.13.2026.03.05.11.57.22
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 05 Mar 2026 11:57:23 -0800 (PST)
From: Luca Leonardo Scorcia <l.scorcia@gmail.com>
To: dri-devel@lists.freedesktop.org
Cc: Luca Leonardo Scorcia <l.scorcia@gmail.com>,
	Jagan Teki <jagan@edgeble.ai>,
	Neil Armstrong <neil.armstrong@linaro.org>,
	Jessica Zhang <jesszhan0024@gmail.com>,
	David Airlie <airlied@gmail.com>,
	Simona Vetter <simona@ffwll.ch>,
	Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
	Maxime Ripard <mripard@kernel.org>,
	Thomas Zimmermann <tzimmermann@suse.de>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Heiko Stuebner <heiko@sntech.de>,
	Marek Vasut <marex@nabladev.com>,
	"Kael D'Alcamo" <dev@kael-k.io>,
	Lad Prabhakar <prabhakar.mahadev-lad.rj@bp.renesas.com>,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org
Subject: [PATCH 1/2] dt-bindings: display: panel: Add compatibles for Zhunyi Z40046
Date: Thu,  5 Mar 2026 19:56:30 +0000
Message-ID: <20260305195650.119196-2-l.scorcia@gmail.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20260305195650.119196-1-l.scorcia@gmail.com>
References: <20260305195650.119196-1-l.scorcia@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Rspamd-Queue-Id: 56F13217E91
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.16 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	R_MISSING_CHARSET(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_SPF_ALLOW(-0.20)[+ip4:172.105.105.114:c];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20230601];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FREEMAIL_FROM(0.00)[gmail.com];
	RCPT_COUNT_TWELVE(0.00)[19];
	FREEMAIL_CC(0.00)[gmail.com,edgeble.ai,linaro.org,ffwll.ch,linux.intel.com,kernel.org,suse.de,sntech.de,nabladev.com,kael-k.io,bp.renesas.com,vger.kernel.org];
	MIME_TRACE(0.00)[0:+];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-271714-lists,devicetree=lfdr.de];
	FORGED_SENDER_MAILLIST(0.00)[];
	DKIM_TRACE(0.00)[gmail.com:+];
	ASN(0.00)[asn:63949, ipnet:172.105.96.0/20, country:SG];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[lscorcia@gmail.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	MID_RHS_MATCH_FROM(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	DBL_BLOCKED_OPENRESOLVER(0.00)[tor.lore.kernel.org:rdns,tor.lore.kernel.org:helo]
X-Rspamd-Action: no action

The Zhunyi Z40046 is a 480x800 24-bit WVGA DSI panel based on the
Fitipower JD9161Z DSI controller found in the Xiaomi Mi Smart Clock
x04g, apparently in two different variants.

The Fitipower JD9161Z LCD driver IC is very similar to the Jadard
JD9365DA-H3, it just uses a different initialization sequence.

Since this is the first supported device from this vendor, document its
name to the vendor-prefixes.yaml file as well.

Signed-off-by: Luca Leonardo Scorcia <l.scorcia@gmail.com>
---
 .../devicetree/bindings/display/panel/jadard,jd9365da-h3.yaml   | 2 ++
 Documentation/devicetree/bindings/vendor-prefixes.yaml          | 2 ++
 2 files changed, 4 insertions(+)

diff --git a/Documentation/devicetree/bindings/display/panel/jadard,jd9365da-h3.yaml b/Documentation/devicetree/bindings/display/panel/jadard,jd9365da-h3.yaml
index 5802fb3c9ffe..da17072ffaaa 100644
--- a/Documentation/devicetree/bindings/display/panel/jadard,jd9365da-h3.yaml
+++ b/Documentation/devicetree/bindings/display/panel/jadard,jd9365da-h3.yaml
@@ -23,6 +23,8 @@ properties:
           - melfas,lmfbx101117480
           - radxa,display-10hd-ad001
           - radxa,display-8hd-ad002
+          - zhunyi,z40046v1
+          - zhunyi,z40046v2
       - const: jadard,jd9365da-h3
 
   reg:
diff --git a/Documentation/devicetree/bindings/vendor-prefixes.yaml b/Documentation/devicetree/bindings/vendor-prefixes.yaml
index ee7fd3cfe203..18121440dc22 100644
--- a/Documentation/devicetree/bindings/vendor-prefixes.yaml
+++ b/Documentation/devicetree/bindings/vendor-prefixes.yaml
@@ -1913,6 +1913,8 @@ patternProperties:
     description: Shenzhen Zkmagic Technology Co., Ltd.
   "^zte,.*":
     description: ZTE Corp.
+  "^zhunyi,.*":
+    description: Shenzhen Zhunyi Technology Co., Ltd.
   "^zyxel,.*":
     description: ZyXEL Communications Corp.
 
-- 
2.43.0


