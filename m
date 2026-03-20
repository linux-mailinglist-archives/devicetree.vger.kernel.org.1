Return-Path: <devicetree+bounces-278306-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id iGsbAL1cvWl09QIAu9opvQ
	(envelope-from <devicetree+bounces-278306-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Fri, 20 Mar 2026 15:42:05 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [IPv6:2600:3c09:e001:a7::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id C28962DBF0F
	for <lists+devicetree@lfdr.de>; Fri, 20 Mar 2026 15:42:04 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id 051643023682
	for <lists+devicetree@lfdr.de>; Fri, 20 Mar 2026 14:41:55 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E96003C3433;
	Fri, 20 Mar 2026 14:41:51 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="QhL3jiRA"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f52.google.com (mail-wm1-f52.google.com [209.85.128.52])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 752BC3C13F0
	for <devicetree@vger.kernel.org>; Fri, 20 Mar 2026 14:41:50 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.52
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1774017711; cv=none; b=WYiKf7Z8R1T6TZbWjSPW7zAlg1UyGnotT1dJbFwgIV80y7KrM21JTrPjvQMRkMhbyq5d0wMi0gth5zQZo8lKauDPWdb19809n0asfBB+vsFZAnE2NH/ugoFkoJSeCpmvKOpHV/jycuObjhLuljlNhbqwaZ9cHsAY7kLIF0PxJq8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1774017711; c=relaxed/simple;
	bh=Ns/WNy0Z7rKIF5KEEaOQ5y4gyFT2BopG513lDTCUOlE=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=rKhnb/Z4gfuT9Ar8FnvulecjYi+jm6YFVZfCgvfITyRRrT6XruZZARkRyyn7gz0vb+XuSuRVYjGlF7jYgWvWeSoJENbhhjWgKqI/QsK6oqb5qbof0oA9cwQwC3xpgmGI+3XCm8yu1NDiFuzLkAI/t9CsJb80OSf5aHGsaAlXvys=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=QhL3jiRA; arc=none smtp.client-ip=209.85.128.52
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-wm1-f52.google.com with SMTP id 5b1f17b1804b1-48374014a77so19103325e9.3
        for <devicetree@vger.kernel.org>; Fri, 20 Mar 2026 07:41:50 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1774017709; x=1774622509; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=z9Ej4pASsqYp2gOGlmVa1Dopz4W2+LI/x1nMQtFrz0U=;
        b=QhL3jiRAL8DIqFHA3lextf4XDTv0HbXfUgx2PIkLLlmumCHSoxB3gU4eUD39w4JZfn
         BsTUvlMETRzmw886VNmTUO/8SnkfYTQD8oXIfVmqdRoYLEnLq5bLDB7ko9P28cRE+yLa
         k8yaAYiTr4tMdhe9KCZ++ZIZqq+hdoh0BY6E0jbn+8KUGCwVuCfJBoN3BwDoSUazsWRJ
         36EWRzzuhUMbYBIlSf3r/Bld9uOtbtOX7cSGSVhYs0yAHHOLJuKzruMyP86s+enk4y6x
         AvBIzZeZxYu+zhk4L6b5ZTNm3priklsBbGUmTOSlhzccVNd+ZabCKiQt+R/xjXFt0iEt
         FxAQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1774017709; x=1774622509;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-gg:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=z9Ej4pASsqYp2gOGlmVa1Dopz4W2+LI/x1nMQtFrz0U=;
        b=ZRsINwwFCvpw9c5dJEKWBgpnWmpz0fk6Rknsv4NC0SnoogNU2GAYOelJrV8siFFuCz
         fQ7M6nmIwoggO8Ct7fLfYqlP6F1KQi+aNOZ9dHStrvTXGNjfTu38q9cNSEXZg7FtD7z2
         H7y7wPZ7b8AzTwBvv2ZEILIx/Ncmoy6sFgQIiAesVtV8yjPmTQoUgnjguHaZgxBng2TE
         ZFW3zHPZzqWhe1wA7ZEo3Jt1C90tAhTd9YBh2A4GQr9n0fKwBJ4KZkO67n2F7RBZzPSz
         wGktOYA2fRKBhe+ElTW27/SsoqKhZv3bhLdt3o7z6AXPWs7Y6lpFhLl7FwS7tbWc5BpN
         nGQQ==
X-Forwarded-Encrypted: i=1; AJvYcCWCZq9manlmJ+ioyFuf3XY+Q3fFKaDJJdUbmE2igL5bXyLRitmHB5wLqph1yDNI3ZtCXQdcnx0nqCV+@vger.kernel.org
X-Gm-Message-State: AOJu0Yx4XlDJETbzp6cfd7cyr6dn8g50YZs3it8q3ESRIFrxIQf6HU/k
	fyHp9534PEqJnG/yKiL57u0RPtjmSdYGNjzC2mas7a0Ns9u1nQpEmKst
X-Gm-Gg: ATEYQzwZLyxCcH5s/p4lijojpKFWeTuHnl1HeOsVEqBIAskSBIFFBOwJ6s+DvEZ+H/j
	Nol2EOmzhPyRileiViqNemIhaiimIqWRp+NTOf2ja+2KOeAzYuGhGWT8iHBYsb/CCgKFfa5qsso
	hQaZADccxOtrmJhIjdeAYplFosNJHC7jSaofdXpbvCJ3hRYUzTdrGyzo/LLLBaHB5IEXBNyNVW+
	V7EZzrtOTUkumZt74B0DNZDjhTwmcS6VN84i0VpMp+DLadDK6HuslPF6ZTS91AyaOE58bXkhXPh
	dh6cn0rOlPqZMcERxJi8E5dRo440+wcDcvTtg0+ejrnATnvKwJ8zvUWhSHLvmeV2GFS3Yc4TbBX
	MLu56/NU0fNUvEnHik1JN+gcw+1ddkyrBpwZ2qle0sGqb1q/Y+jr/wNGRiS+ZBjmp6OlLhpXZcy
	oKKo0p5xyGWDx+yFYU/P6fDab9/rWSHmlrs0s/qIQH6nIk0z6XFVh/R/3uqvy8/Nc=
X-Received: by 2002:a05:600c:4705:b0:486:d76c:fa57 with SMTP id 5b1f17b1804b1-486fee0983dmr51086015e9.17.1774017708638;
        Fri, 20 Mar 2026 07:41:48 -0700 (PDT)
Received: from [10.100.102.17] (89-139-129-65.bb.netvision.net.il. [89.139.129.65])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-486f8b1fe65sm130648835e9.5.2026.03.20.07.41.46
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 20 Mar 2026 07:41:48 -0700 (PDT)
From: Yedaya Katsman <yedaya.ka@gmail.com>
Date: Fri, 20 Mar 2026 16:41:38 +0200
Subject: [PATCH v7 1/3] dt-bindings: display: panel: Add Samsung
 S6E8FC0-M1906F9
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit
Message-Id: <20260320-panel-patches-v7-1-3eaefc4b3878@gmail.com>
References: <20260320-panel-patches-v7-0-3eaefc4b3878@gmail.com>
In-Reply-To: <20260320-panel-patches-v7-0-3eaefc4b3878@gmail.com>
To: Neil Armstrong <neil.armstrong@linaro.org>, 
 Jessica Zhang <jesszhan0024@gmail.com>, David Airlie <airlied@gmail.com>, 
 Simona Vetter <simona@ffwll.ch>, 
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, 
 Maxime Ripard <mripard@kernel.org>, Thomas Zimmermann <tzimmermann@suse.de>, 
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, 
 =?utf-8?q?Kamil_Go=C5=82da?= <kamil.golda@protonmail.com>, 
 Bjorn Andersson <andersson@kernel.org>, 
 Konrad Dybcio <konradybcio@kernel.org>, 
 Kaustabh Chakraborty <kauschluss@disroot.org>
Cc: ~postmarketos/upstreaming@lists.sr.ht, phone-devel@vger.kernel.org, 
 dri-devel@lists.freedesktop.org, devicetree@vger.kernel.org, 
 linux-kernel@vger.kernel.org, linux-arm-msm@vger.kernel.org, 
 Yedaya Katsman <yedaya.ka@gmail.com>, 
 Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=ed25519-sha256; t=1774017703; l=1398;
 i=yedaya.ka@gmail.com; s=20260113; h=from:subject:message-id;
 bh=Ns/WNy0Z7rKIF5KEEaOQ5y4gyFT2BopG513lDTCUOlE=;
 b=XpIs2OcjqEG0kwK3wW8POn+gnlHDANJIQ4sIneTR12hoxNhYKjaoyFsaAgphcR8f2uJpzGufb
 V8hHXGwDPfbDp9PdBfgmYN/lwavA5WLin9fiVAgLgfQuAN98DvbFCSx
X-Developer-Key: i=yedaya.ka@gmail.com; a=ed25519;
 pk=CgNmxD3tYSws5dZfpmJfc6re/bV/f47veVijddHLytk=
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c09:e001:a7::/64:c];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20230601];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-278306-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	FREEMAIL_TO(0.00)[linaro.org,gmail.com,ffwll.ch,linux.intel.com,kernel.org,suse.de,protonmail.com,disroot.org];
	FORGED_SENDER_MAILLIST(0.00)[];
	FREEMAIL_FROM(0.00)[gmail.com];
	FREEMAIL_CC(0.00)[lists.sr.ht,vger.kernel.org,lists.freedesktop.org,gmail.com,oss.qualcomm.com];
	RCPT_COUNT_TWELVE(0.00)[22];
	MIME_TRACE(0.00)[0:+];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[yedayaka@gmail.com,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[gmail.com:+];
	NEURAL_HAM(-0.00)[-0.959];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MID_RHS_MATCH_FROM(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c09::/32, country:SG];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[disroot.org:email,sto.lore.kernel.org:helo,sto.lore.kernel.org:rdns,protonmail.com:email]
X-Rspamd-Queue-Id: C28962DBF0F
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

Add Samsung S6E8FC0 DTS binding used with the M1906F9 6.09" 720x1560
panel found in the Xiaomi Mi A3 smartphone.

Co-developed-by: Kamil Gołda <kamil.golda@protonmail.com>
Signed-off-by: Kamil Gołda <kamil.golda@protonmail.com>
Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>
Signed-off-by: Yedaya Katsman <yedaya.ka@gmail.com>
---
 .../bindings/display/panel/samsung,s6e8aa5x01-ams561ra01.yaml        | 5 ++++-
 1 file changed, 4 insertions(+), 1 deletion(-)

diff --git a/Documentation/devicetree/bindings/display/panel/samsung,s6e8aa5x01-ams561ra01.yaml b/Documentation/devicetree/bindings/display/panel/samsung,s6e8aa5x01-ams561ra01.yaml
index eccfc66d7fe24fbe86e3c25f35beb0855c4fcee6..b271de575e15071bc8370466428bedbf41a93d11 100644
--- a/Documentation/devicetree/bindings/display/panel/samsung,s6e8aa5x01-ams561ra01.yaml
+++ b/Documentation/devicetree/bindings/display/panel/samsung,s6e8aa5x01-ams561ra01.yaml
@@ -8,13 +8,16 @@ title: Samsung AMS561RA01 panel with S6E8AA5X01 controller
 
 maintainers:
   - Kaustabh Chakraborty <kauschluss@disroot.org>
+  - Yedaya Katsman <yedaya.ka@gmail.com>
 
 allOf:
   - $ref: panel-common.yaml#
 
 properties:
   compatible:
-    const: samsung,s6e8aa5x01-ams561ra01
+    enum:
+      - samsung,s6e8aa5x01-ams561ra01
+      - samsung,s6e8fc0-m1906f9
 
   reg:
     maxItems: 1

-- 
2.53.0


