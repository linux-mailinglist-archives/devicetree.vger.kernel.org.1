Return-Path: <devicetree+bounces-298040-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id OB/fHkrkBmoHowIAu9opvQ
	(envelope-from <devicetree+bounces-298040-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Fri, 15 May 2026 11:15:54 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [IPv6:2600:3c04:e001:36c::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id E665D54C337
	for <lists+devicetree@lfdr.de>; Fri, 15 May 2026 11:15:53 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 542BD30E5035
	for <lists+devicetree@lfdr.de>; Fri, 15 May 2026 09:03:27 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D8CD843C05E;
	Fri, 15 May 2026 09:02:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b="XVBLp6dG"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pj1-f51.google.com (mail-pj1-f51.google.com [209.85.216.51])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8802343C04E
	for <devicetree@vger.kernel.org>; Fri, 15 May 2026 09:02:32 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.216.51
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778835753; cv=none; b=BS0JaY+DJn0YPwSyYOG0V/UO3HKfqUVM4xs2SuvhFaKv9OazHkrx1vrsV+wcNflQ5Nl+4UJfAOjuVXIuuG637ZO+aeKxrXUOXvVLZTVX4bmm5gXnE+n2+XK4EmaJ7ITL08keBGe0Yf+zNBj4FpN0jRXuJHL8R3NCwD3yJzhVhJc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778835753; c=relaxed/simple;
	bh=QRpARmRr4aby8NmbN5psePJT0Yr58c8UhxRZ326x/uE=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=eM7PlBZz852/Fan+QcQn37coDDO/UNVIJKGKUq0ZbHDITg/1nDyj8ld3VI8fKZnny5OWW5hEmKdwlgSD0Czb3lLDHiOUdr1HlW2mRFvZ7qdvHi27OW6qm/xvLBBjK40K488CX7OzYYH7WgOPt0piGcKmu1qnRfj9+m7UAoeiquQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=chromium.org; spf=pass smtp.mailfrom=chromium.org; dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b=XVBLp6dG; arc=none smtp.client-ip=209.85.216.51
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=chromium.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=chromium.org
Received: by mail-pj1-f51.google.com with SMTP id 98e67ed59e1d1-3665a90bcd3so7142700a91.1
        for <devicetree@vger.kernel.org>; Fri, 15 May 2026 02:02:32 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google; t=1778835752; x=1779440552; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=ISYKmXVI5dGO3RCkjTpj/otEcK5TE9KEG1oM+kKbrzw=;
        b=XVBLp6dG2w7uoyWmBIp0CYnnZjzHEo5WWhiovnBtiqtfWfWsFkeB8ysWTXF7+3FrXi
         nacf+BfQBjFV0t/UnuegJ8R1AK3vR7Z5gNksPxUHh0wPDNMKy9DJQ/JoI6ERLFHaBRko
         rzOSjwKD6bz7wtRj2BDy/wgaxwuPbmAQGNqP0=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1778835752; x=1779440552;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=ISYKmXVI5dGO3RCkjTpj/otEcK5TE9KEG1oM+kKbrzw=;
        b=Fl48QGWM5H6J5OQ5t2T1P7GL+707nu8UID0qYc2F7IjVZ8NrZWfhrhH0NqYWb8EWJL
         TxqjWfumJdsKy9Sije2UPYmAHU+HE2kvBDxf+QS+J2e5MEFEZ3ByI18NVaE972LU9MHy
         HyyheDZoADnTD0h1gsMGBiL4FdXZYDPkntLJ7laVY3w0p5gwQTI9eFz/OQEDLYTty46K
         J46uo0zmSMVnsVoJeyUQoJz9hgmeANjv5vyhGLW3yCdUVMCfzWV0PerxGfAn1kbzFEtJ
         j6olmDcwqaxm3RPt628OsJ2NYSpV14ptvzlgl/2o7/uUSrLSZ89dpxPvBut7toeyxW4X
         enaQ==
X-Forwarded-Encrypted: i=1; AFNElJ8Zn9DWT6g4EkFFlQlmY3ywK6w64f+vy/atrlbOX/XTMOUpTLQ+5HBdLpBhnO/lxOoqesAbne31n71B@vger.kernel.org
X-Gm-Message-State: AOJu0YyIahWVlqmmVEpQkRYX3R+dMo7DsdXRzE1Qv7Ndm7bC0qg6ZhOy
	2UPS5GNhg3fIHOR7Xv33Hgi3CaLKdSGTOgaW34TcwY2POc7u3MBNQ+htTZ82eL9IKQ==
X-Gm-Gg: Acq92OHyHdCI5MKwqXxTnwLvxbZIMlxgsjzJEVD7QP6ec5lGkCqfQw+HFozz8OuUem8
	F1/PPZJvn6nyXKru3JeWo0CgyiqnLylsiEfU2aRPrqC9hljIV1QKoj6z4CVg8DeliYfLDyfgLqU
	+Ay5EbtLaANyFDHZOh4OqlIBNVlsbkwUsp5WxQQz0h7fCA0fhwjTQhpFBdNqVICAse/iBBUL6Gz
	TdnO8U0nW1SPjDzQCaKxOgUC+C9gurexnrYDe6jgsmn5EoTu4jH7JoMNuTa63FXkpcJQCgfVF5b
	DR6SZCm9zpHHRicPh9jdrSwyot3cel2q7icYeG9F8/YDTjRFWnfhbyI3im7EkYRiWQmsXOPjtBe
	ChmN88iat/MvxdH8BAeGV7DCE99AAsb6MiRtODrYAL1EWQWAbYs6gQFahCY/K8U442uN4+lq1jd
	5by+vuk5k5QPdyN1NZjXkXusJS+hIa2l6Ds+SuNQqMJLRdMa0ozck2ZmlCuv/mSpOehsD6ykiWZ
	LTefak+HsCchR+rfkg=
X-Received: by 2002:a17:90b:5784:b0:366:479c:59e8 with SMTP id 98e67ed59e1d1-369519dfe40mr3451397a91.8.1778835751725;
        Fri, 15 May 2026 02:02:31 -0700 (PDT)
Received: from wenstp920.tpe.corp.google.com ([2a00:79e0:201d:8:b3d8:e32e:c2fc:c31e])
        by smtp.gmail.com with ESMTPSA id 98e67ed59e1d1-36951584654sm2076537a91.7.2026.05.15.02.02.28
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 15 May 2026 02:02:31 -0700 (PDT)
From: Chen-Yu Tsai <wenst@chromium.org>
To: Bartosz Golaszewski <brgl@kernel.org>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Matthias Brugger <matthias.bgg@gmail.com>,
	AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>
Cc: Chen-Yu Tsai <wenst@chromium.org>,
	linux-pm@vger.kernel.org,
	linux-usb@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-mediatek@lists.infradead.org,
	linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	Manivannan Sadhasivam <mani@kernel.org>
Subject: [PATCH RFC 07/12] dt-bindings: usb: mediatek,mtk-xhci: Allow ports for USB connections
Date: Fri, 15 May 2026 17:01:43 +0800
Message-ID: <20260515090149.3169406-8-wenst@chromium.org>
X-Mailer: git-send-email 2.54.0.563.g4f69b47b94-goog
In-Reply-To: <20260515090149.3169406-1-wenst@chromium.org>
References: <20260515090149.3169406-1-wenst@chromium.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Rspamd-Queue-Id: E665D54C337
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [0.84 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_CONTAINS_FROM(1.00)[];
	R_MISSING_CHARSET(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[chromium.org,none];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c04:e001:36c::/64:c];
	R_DKIM_ALLOW(-0.20)[chromium.org:s=google];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FREEMAIL_TO(0.00)[kernel.org,linuxfoundation.org,gmail.com,collabora.com];
	RCPT_COUNT_TWELVE(0.00)[15];
	RCVD_TLS_LAST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_FROM(0.00)[bounces-298040-lists,devicetree=lfdr.de];
	ASN(0.00)[asn:63949, ipnet:2600:3c04::/32, country:SG];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[wenst@chromium.org,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[chromium.org:+];
	RCVD_COUNT_FIVE(0.00)[5];
	TAGGED_RCPT(0.00)[devicetree,dt];
	NEURAL_HAM(-0.00)[-1.000];
	TO_DN_SOME(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[tor.lore.kernel.org:helo,tor.lore.kernel.org:rdns,0.0.0.1:email,chromium.org:email,chromium.org:mid,chromium.org:dkim,0.0.0.2:email]
X-Rspamd-Action: no action

MediaTek's XHCI implementation supports both USB 2.0 High Speed (HS)
and USB 3.x Super Speed (SS). The block can also be synthesized with
either HS-only capability or HS+SS capability.

For example, on the MT8195, the first two instances support both HS and
SS, while the latter two instances support only HS.

Allow a ports sub-node for describing USB connections. Port 1 is Super
Speed if the controller is SS-capable, otherwise it is High Speed. Port
2 is High Speed if SS-capable. This port mapping scheme directly matches
what the hardware returns in its capability registers.

Signed-off-by: Chen-Yu Tsai <wenst@chromium.org>
---
 .../devicetree/bindings/usb/mediatek,mtk-xhci.yaml  | 13 +++++++++++++
 1 file changed, 13 insertions(+)

diff --git a/Documentation/devicetree/bindings/usb/mediatek,mtk-xhci.yaml b/Documentation/devicetree/bindings/usb/mediatek,mtk-xhci.yaml
index 75ecce3bdc7a..d6c75bd20b78 100644
--- a/Documentation/devicetree/bindings/usb/mediatek,mtk-xhci.yaml
+++ b/Documentation/devicetree/bindings/usb/mediatek,mtk-xhci.yaml
@@ -184,6 +184,19 @@ properties:
   "#size-cells":
     const: 0
 
+  ports:
+    $ref: /schemas/graph.yaml#/properties/ports
+
+    properties:
+      port@1:
+        $ref: /schemas/graph.yaml#/properties/port
+        description: Super Speed (SS) data bus if SS-capable;
+          otherwise High Speed (HS) data bus.
+
+      port@2:
+        $ref: /schemas/graph.yaml#/properties/port
+        description: High Speed (HS) data bus if controller is SS-capable.
+
 patternProperties:
   "@[0-9a-f]{1}$":
     type: object
-- 
2.54.0.563.g4f69b47b94-goog


