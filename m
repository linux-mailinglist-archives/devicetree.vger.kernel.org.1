Return-Path: <devicetree+bounces-265881-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id QDH2Ff9Fk2l83AEAu9opvQ
	(envelope-from <devicetree+bounces-265881-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Mon, 16 Feb 2026 17:29:51 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id E9F23146317
	for <lists+devicetree@lfdr.de>; Mon, 16 Feb 2026 17:29:50 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id EA18B303A114
	for <lists+devicetree@lfdr.de>; Mon, 16 Feb 2026 16:25:01 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 92F07332904;
	Mon, 16 Feb 2026 16:25:01 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="CkLlM2XO"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f48.google.com (mail-wr1-f48.google.com [209.85.221.48])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7455F330B36
	for <devicetree@vger.kernel.org>; Mon, 16 Feb 2026 16:24:58 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.48
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771259101; cv=none; b=RWFDXExPvRky4NPDBM0dwQ2qPR/MAAOpIpwXv/7/xGSjerT0evwCZalIK2YBHHU1H4x44Np1MTvMqTg6LCiQXlEWQwkfXnj7AabFrJ1vsiQtVRiWlPKKhgJSSMBlJ0z9xdfS1nS9JCyOlAnhyy6JnkOSB7tWi4MHUVveksI4nQ8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771259101; c=relaxed/simple;
	bh=6IUT1219B7aEb0XML3z8vEkQ7tetDYgxjyC33y+1uZM=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=BWmdzDHrOaBoS2l/8KekBR/vEuiK3asraAv6x3REord+rQjQzabOWZZOje6xiOECG02L9ObdddfSPAaN7NTAAKF4Q5o6OU3iQrXb/o3Z6fXcvtmOdTC6gdz3vKmKxhscr7dhNAnruHVUv2x5WxY6siCXHrhJOr41m/KkJ1jKSDc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=CkLlM2XO; arc=none smtp.client-ip=209.85.221.48
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-wr1-f48.google.com with SMTP id ffacd0b85a97d-43638a33157so3283646f8f.1
        for <devicetree@vger.kernel.org>; Mon, 16 Feb 2026 08:24:58 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1771259097; x=1771863897; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=srYlY+UBKbck4YZkSnxZ2WyELTpV/5G0eCzsk4tYfvE=;
        b=CkLlM2XO0IbxYOISMIZiA5elH4E9psGZOgsJ7zd24+s+jJmxKtMELpArzqVm3m+mQV
         wks80r+RNlGTKqoTeM8EApZ+jdxx9M1VLwo9HKIk365GekHFGQQpfTuje++EQsj2gdyI
         RkDgWI3sfO/j4Fur4r4IMMuZM5Jl673kVHlOmLnLk0tHEDTVYya2dzxkLB9jAl2gswDN
         gxxIaI7y3oizXIU1HnAYqr/5b0snbhp0LhftfpNM/nCti6YUINO/QjP4hSdW/yS+NC9K
         H0yYKbvTZCHelOy8umDO6yViXKRUP+9ArT0BY0ArdRXAhjDl68y5XF2wuDWTO/F+7JDK
         98Yg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1771259097; x=1771863897;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=srYlY+UBKbck4YZkSnxZ2WyELTpV/5G0eCzsk4tYfvE=;
        b=qFp5QLDfpDYhLKnGMnFRbkVPr8av4nzZqK0F+amQZGNEL99KwSKXBzLfPx8WBxHNyZ
         SfNC+GM/5vtLN4PlHUWZttyGkUbqa+69OXRXB4rq3SWOfjrhej1dlwB0TEAZ/uVGVpsr
         imm3NQMYbXn2lHK6bbIdO9Zm7Jr2OTPMIL1NLmIJWut/HOEkUIbJebMbvDUIwhklOr68
         7kx6KZFJwsmkODiKfzZWytxbquMI0syyhumCFKess/YYD/Ytr+NTYg2uHsR5JMQ6jrI+
         XowK/w2fLjce51dYZspGWr1DkutOoMujaFNt95OhvVWnqoP3l4COTxznuc3K9LDtgzJL
         KOGA==
X-Forwarded-Encrypted: i=1; AJvYcCVSOzGEiJbBGps7t569vuYNTia73qXl541rY6zFERRB0dxEkU6ISqAuIpf9ih3EhVu7Pn4X/fR5YRul@vger.kernel.org
X-Gm-Message-State: AOJu0Yyxtq8XMzL54igDBO2BNotfM+iTaQTsZ5XjwtPg3Zw5XfUk97NX
	9Mp53LQEEu/larxHLHPA9f31su6E0rDBvOG08qJYfKNZzjBJ2oMJeVmF
X-Gm-Gg: AZuq6aJTZt5TvcrnT6OVmFWgiPqnph+z7sseUodepEul5e8ZG7fgM+RlszYiX8QlbUo
	xHSwyiSsBYyGk7S8CI5BXmjQecMbZIt54GXv88LgxLlgWjTsOzvPtP6iupIwkXC56mObEgl5J2Y
	8QJNn6o9w7PfPUvQSfPMdamMkiSka6kYMEZl3fzXo/sw5GSWYcu74ku7Zk6HQkiltfbxtzHzC6T
	mS7keChWygJxhcAGJWU33Oj1IhM/SdpnKzWupjRboIfMPepEyvnRErBnYW/A0ur91w8ntXFzr97
	6luz9rqBJDQ2ivnYMsE3TSALTuTjdt7i+OeeoSbpOK5IUFma5rfuOYF7jZwxqPJFiNur6o5OaWD
	aNLyeDX7QbRgzfO0SNXXg1EWYCtcAydginytl3ADrWnhkVQ8ULUsUaXIpQd6Y7wBc73V3GaBqD/
	zONyOuT3ICAhqOPUPgXmIwlJehEF9P9A==
X-Received: by 2002:a05:6000:4014:b0:436:3563:499c with SMTP id ffacd0b85a97d-437978c75d4mr14802043f8f.8.1771259096696;
        Mon, 16 Feb 2026 08:24:56 -0800 (PST)
Received: from luca-vm.lan ([154.61.61.58])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-43796a6a6desm28775962f8f.10.2026.02.16.08.24.55
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 16 Feb 2026 08:24:56 -0800 (PST)
From: Luca Leonardo Scorcia <l.scorcia@gmail.com>
To: linux-mediatek@lists.infradead.org
Cc: Luca Leonardo Scorcia <l.scorcia@gmail.com>,
	Chun-Kuang Hu <chunkuang.hu@kernel.org>,
	Philipp Zabel <p.zabel@pengutronix.de>,
	David Airlie <airlied@gmail.com>,
	Simona Vetter <simona@ffwll.ch>,
	Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
	Maxime Ripard <mripard@kernel.org>,
	Thomas Zimmermann <tzimmermann@suse.de>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Chunfeng Yun <chunfeng.yun@mediatek.com>,
	Vinod Koul <vkoul@kernel.org>,
	Neil Armstrong <neil.armstrong@linaro.org>,
	Matthias Brugger <matthias.bgg@gmail.com>,
	AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>,
	Jitao Shi <jitao.shi@mediatek.com>,
	Fabien Parent <fparent@baylibre.com>,
	dri-devel@lists.freedesktop.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-phy@lists.infradead.org
Subject: [PATCH v2 3/6] dt-bindings: display: mediatek: Correct compatibility for mt8167-dsi
Date: Mon, 16 Feb 2026 16:22:14 +0000
Message-ID: <ff920a7cc94f2b0c03d4bb55142030fded30d07c.1771258407.git.l.scorcia@gmail.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <cover.1771258407.git.l.scorcia@gmail.com>
References: <cover.1771258407.git.l.scorcia@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.16 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	R_MISSING_CHARSET(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20230601];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCPT_COUNT_TWELVE(0.00)[24];
	FREEMAIL_FROM(0.00)[gmail.com];
	TAGGED_FROM(0.00)[bounces-265881-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	FREEMAIL_CC(0.00)[gmail.com,kernel.org,pengutronix.de,ffwll.ch,linux.intel.com,suse.de,mediatek.com,linaro.org,collabora.com,baylibre.com,lists.freedesktop.org,vger.kernel.org,lists.infradead.org];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[lscorcia@gmail.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[gmail.com:+];
	RCVD_COUNT_FIVE(0.00)[5];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MID_RHS_MATCH_FROM(0.00)[];
	TO_DN_SOME(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns]
X-Rspamd-Queue-Id: E9F23146317
X-Rspamd-Action: no action

Remove the dedicated "mediatek,mt8167-dsi" compatible from the device list and
describe it as compatible with mt2701 instead. It is safe to do so because:

- Bootloader doesn't rely on this single compatible; and
- There was never any upstreamed devicetree using this single compatible; and
- The MT8167 DSI Controller is fully compatible with the one found in MT2701.

Fixes: 8867c4b39361 ("dt-bindings: display: mediatek: dsi: add documentation for MT8167 SoC")

Signed-off-by: Luca Leonardo Scorcia <l.scorcia@gmail.com>
---
 .../devicetree/bindings/display/mediatek/mediatek,dsi.yaml   | 5 ++++-
 1 file changed, 4 insertions(+), 1 deletion(-)

diff --git a/Documentation/devicetree/bindings/display/mediatek/mediatek,dsi.yaml b/Documentation/devicetree/bindings/display/mediatek/mediatek,dsi.yaml
index 27ffbccc2a08..bcbde16648c0 100644
--- a/Documentation/devicetree/bindings/display/mediatek/mediatek,dsi.yaml
+++ b/Documentation/devicetree/bindings/display/mediatek/mediatek,dsi.yaml
@@ -25,11 +25,14 @@ properties:
       - enum:
           - mediatek,mt2701-dsi
           - mediatek,mt7623-dsi
-          - mediatek,mt8167-dsi
           - mediatek,mt8173-dsi
           - mediatek,mt8183-dsi
           - mediatek,mt8186-dsi
           - mediatek,mt8188-dsi
+      - items:
+          - enum:
+              - mediatek,mt8167-dsi
+          - const: mediatek,mt2701-dsi
       - items:
           - enum:
               - mediatek,mt6795-dsi
-- 
2.43.0


