Return-Path: <devicetree+bounces-264205-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id WLJgEsqYimk8MQAAu9opvQ
	(envelope-from <devicetree+bounces-264205-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 10 Feb 2026 03:32:42 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [IPv6:2600:3c04:e001:36c::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 09D4611652B
	for <lists+devicetree@lfdr.de>; Tue, 10 Feb 2026 03:32:41 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 485DA3031B37
	for <lists+devicetree@lfdr.de>; Tue, 10 Feb 2026 02:32:34 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D1F082DECA8;
	Tue, 10 Feb 2026 02:32:32 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="Y+OmHyoW"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-qv1-f43.google.com (mail-qv1-f43.google.com [209.85.219.43])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 94E182DC770
	for <devicetree@vger.kernel.org>; Tue, 10 Feb 2026 02:32:31 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.219.43
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770690752; cv=none; b=bHPeD4w2pycKxu+RygQyCbnwbnL+BdH2+pqo0zG/h6d8HdQUxXAIca/0t1OjczO7OlCN9obK23WxWIF8F+XmVy/cdWAYbIQzI/y5VNpwiIw2fb2gLXBrNqbS9B7LXobSyKrWHMvMm5w8CQc/HMoJEhRsgDFxY+dJjFqtO6f19MA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770690752; c=relaxed/simple;
	bh=CGVgRF93HcW2AHUPhAOHv6DbXwIP/SjikR/DSk5SQ8A=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=kBdIp3ldN1Ad2z3LAM8AwuvhYH1ZjW4ENz3Zb8Ii7CfCdS2PCUHGX4V8pRi17H5XyMTCYfVvMAG4l6MEGAz7Wem52S8zcRX7Y28eY5yuR4L9OiURK10tL3fsUY+DW3Mwftqvlr7ybs4wl19yk9esbJXC2xNFdpgGV5zHAWd2x1g=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=Y+OmHyoW; arc=none smtp.client-ip=209.85.219.43
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-qv1-f43.google.com with SMTP id 6a1803df08f44-897002b7576so4091406d6.3
        for <devicetree@vger.kernel.org>; Mon, 09 Feb 2026 18:32:31 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1770690750; x=1771295550; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=QwMu+F72u7N7yLtX52ANx3B33oLmrGPjxc879zIDdAs=;
        b=Y+OmHyoWGEEtBIsKheYl6+IRWfuFCxqh5YpxMI65/hE53s9mYwhbh723r9Yrc0wCiO
         YFq395lUTp9GD6l3zuQdpST9Rpk0PQel/fKYZp2F9pB3wAyuKZR/i9jPsX3PFMa0ZCeA
         a1NFGZoVIGxWAbcQl7Q8Cf1Xz6IvK77TCuDNbPSTbblMhYOTG/MiY+go6e1xbr4kVMCP
         rHgqB4FyjYd5xAL2xmS2cSRbMsezqAxwWIN20yKl7p9YsQ+X0A8n8aqW3UaLpSbyp4gP
         QyaczJlPiwCBJfRJq9Ut1Fg9XnE4rX+KuOYQlK7cSIygVp3DF4zOJ1U5WRhCPDCj/ODq
         XBPA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1770690750; x=1771295550;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=QwMu+F72u7N7yLtX52ANx3B33oLmrGPjxc879zIDdAs=;
        b=vvLbZbx7CbqH9jIqZ7qgcoQEFlt/xIDrpppPbvZpPX8AhKSMrm+nwl978w9TiQmEn6
         18gwPeeTfUd4XoT+MEK5J+CFmIdy9hp6OlDsAvxkqV4CvO8R6P+szeJL2gNPjO+OPaFm
         N9IkEFcUWJZj47qdTcLHd8JE5ytVrZaNuoG1p8+jqPPE/NTQeoKYz+yyKpziRNEquTyA
         36+8Etb6pIovKKvioiM6HNMDnpita1NNRJF6XXdrqKhLSrHFFz0qHQX9IJqcRXKamlUj
         YsMzP9A4tDKH6QXrCAYNqHHhGXMo9sf6BsK0gSX/oCZLdyRLMREt8AU3bSG3AAKkT7k8
         g1Fg==
X-Forwarded-Encrypted: i=1; AJvYcCWRHWMaq7r2QcAqNnmLXtwSBSN4KaKhLGU+1qFOSo2e2DwrtDebQ+sCG3xDMwpkIaQse2JyWcRktmqL@vger.kernel.org
X-Gm-Message-State: AOJu0YywucbtlHGAZ6YDpYf1Scgx79WBhkHqDeKswFbYPVM+d6aOwNB6
	jcKzSwVTwimBhdlWmQrFJhxAuNZnvVgXvmWw3ZUuuBKHuaUIAC7iRgC3
X-Gm-Gg: AZuq6aKlE3e/la7kOIwvxVsZekXq+3CrxlobP6Ih9KfdabiPFDAo33L7OCJd94tjuB1
	ScibB+FyVCoiIjaSkLvPNIXfedPvfoIXgg4M7JlVlB6P6ZsgGYmaZXJVKU0Zuxr6pScM4nlQjGm
	iGaNLOHMv0CKKY1qQ/gGwsb8tbSK4c419I3PwyKbBhJeA2kdbBPulFjwQk5atlq3oLQbY0v3W4Y
	Pef9wGPVPKPC8OolfkXxQNDuGWPO6v3wOcb+9XPl0Shxxyglyx49aKc0IsczBsdC6leodm5qDV8
	pIxvLCgPdaVdYYTPItCEmghWBxc1dDuzUi3PzGT3iPORkCcXIJDP6vKRnTSLdaWXST35Wig3IBn
	jbNhIFuJpIaIt7qUPYBsYAbB1g7AcKAHWXaVndPNuYG9XhJy/RLKm8gR2W0EfphhPyyBBv31hSs
	87duJ3ikZKASXNy8oFXu/xYooc8rhNruErNyNh4jCwQPdY3Mh3ss7SKJpon+mab/WtZqhDLEkx6
	++5i8G4wEF0/DA=
X-Received: by 2002:ad4:5c8c:0:b0:894:610c:3a22 with SMTP id 6a1803df08f44-8953c805d13mr218451556d6.20.1770690750570;
        Mon, 09 Feb 2026 18:32:30 -0800 (PST)
Received: from localhost (bras-base-toroon21-grc-75-184-144-58-243.dsl.bell.ca. [184.144.58.243])
        by smtp.gmail.com with ESMTPSA id d75a77b69052e-50640c60b3csm90470001cf.8.2026.02.09.18.32.29
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 09 Feb 2026 18:32:29 -0800 (PST)
From: Richard Acayan <mailingradian@gmail.com>
To: Bjorn Andersson <andersson@kernel.org>,
	Konrad Dybcio <konradybcio@kernel.org>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Neil Armstrong <neil.armstrong@linaro.org>,
	Jessica Zhang <jesszhan0024@gmail.com>,
	Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
	Maxime Ripard <mripard@kernel.org>,
	Thomas Zimmermann <tzimmermann@suse.de>,
	David Airlie <airlied@gmail.com>,
	Simona Vetter <simona@ffwll.ch>,
	Thierry Reding <thierry.reding@gmail.com>,
	Sam Ravnborg <sam@ravnborg.org>,
	linux-arm-msm@vger.kernel.org,
	devicetree@vger.kernel.org,
	dri-devel@lists.freedesktop.org
Cc: yifei@zhan.science,
	Richard Acayan <mailingradian@gmail.com>
Subject: [PATCH 2/6] dt-bindings: panel-simple-dsi: add nt37700f compatible
Date: Mon,  9 Feb 2026 21:32:56 -0500
Message-ID: <20260210023300.15785-3-mailingradian@gmail.com>
X-Mailer: git-send-email 2.53.0
In-Reply-To: <20260210023300.15785-1-mailingradian@gmail.com>
References: <20260210023300.15785-1-mailingradian@gmail.com>
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
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_MISSING_CHARSET(0.50)[];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20230601];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c04:e001:36c::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-264205-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	FREEMAIL_FROM(0.00)[gmail.com];
	RCPT_COUNT_TWELVE(0.00)[19];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FREEMAIL_TO(0.00)[kernel.org,linaro.org,gmail.com,linux.intel.com,suse.de,ffwll.ch,ravnborg.org,vger.kernel.org,lists.freedesktop.org];
	DKIM_TRACE(0.00)[gmail.com:+];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[mailingradian@gmail.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	FREEMAIL_CC(0.00)[zhan.science,gmail.com];
	RCVD_COUNT_FIVE(0.00)[5];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c04::/32, country:SG];
	DBL_BLOCKED_OPENRESOLVER(0.00)[tor.lore.kernel.org:helo,tor.lore.kernel.org:rdns]
X-Rspamd-Queue-Id: 09D4611652B
X-Rspamd-Action: no action

Add the compatible for the NT37700F panel found on the Pixel 3a XL.

Signed-off-by: Richard Acayan <mailingradian@gmail.com>
---
 .../devicetree/bindings/display/panel/panel-simple-dsi.yaml     | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/Documentation/devicetree/bindings/display/panel/panel-simple-dsi.yaml b/Documentation/devicetree/bindings/display/panel/panel-simple-dsi.yaml
index 8d668979b62d..e56865d2771b 100644
--- a/Documentation/devicetree/bindings/display/panel/panel-simple-dsi.yaml
+++ b/Documentation/devicetree/bindings/display/panel/panel-simple-dsi.yaml
@@ -49,6 +49,8 @@ properties:
       - lg,lh500wx1-sd03
         # Lincoln LCD197 5" 1080x1920 LCD panel
       - lincolntech,lcd197
+        # Novatek NT37700F 1080x2160 AMOLED panel
+      - novatek,nt37700f
         # One Stop Displays OSD101T2587-53TS 10.1" 1920x1200 panel
       - osddisplays,osd101t2587-53ts
         # Panasonic 10" WUXGA TFT LCD panel
-- 
2.53.0


