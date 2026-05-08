Return-Path: <devicetree+bounces-294622-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id IMOcArIq/mn/nQAAu9opvQ
	(envelope-from <devicetree+bounces-294622-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Fri, 08 May 2026 20:25:54 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 801104FA8EB
	for <lists+devicetree@lfdr.de>; Fri, 08 May 2026 20:25:53 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id B22BF3056FE4
	for <lists+devicetree@lfdr.de>; Fri,  8 May 2026 18:25:00 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 271CF3D47DE;
	Fri,  8 May 2026 18:25:00 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="KZUOR7In"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0402F2EFDA4;
	Fri,  8 May 2026 18:24:59 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778264700; cv=none; b=YtQ8mYMREfGa/Z932LbdupDU3aH6h7N/7zTTVWS/B7cx9cab/WN9CLnhAfwmsvqiWVurO0HWwPIw3ORMS4vRrSYIy/KcUuBw3kZBPBc2YsCK0VaqLRXarx9LtwQaVaEOv7oD8QZ4NU+MRhn4tR1pU/bDkzpHEVj5G/IhndaQ/+0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778264700; c=relaxed/simple;
	bh=+dDy4Sjqq5AY6pLl2Yy/ilVxUFJJMhwEepfe/mxYN+U=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=jBrKSHHM4/VXebBex5CXeMA9rTEuKWzad0h5ggKcWXF0h+I6q2Z0BTlKSQXh48k2I5J9m5gWYhTYM54x6SJlWE0J8G5FpOgRiCjQQ9R0R+bzlWdVuGV0s2Wm/naDLGWGRw418pyMeXrcbp2VlJImO9Tb/NMgy1aKCckrCbUt3/s=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=KZUOR7In; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 70DADC2BCB0;
	Fri,  8 May 2026 18:24:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778264699;
	bh=+dDy4Sjqq5AY6pLl2Yy/ilVxUFJJMhwEepfe/mxYN+U=;
	h=From:To:Cc:Subject:Date:From;
	b=KZUOR7Ing3rdhsLuUrw4FcOylMyjfhSqv26DIBxKllJHtmrIAwFCX3cj2fQWSLciq
	 2bUwnYamwoBe/M+kOxA3MHbmITsntF+1a3eY8qMmPOiFv950xhGGoBb1/eiuroSLG8
	 q4YZTx2hxjIDZKYzfF9kvu3QVoVNITKVXkuxF41qCrB1Jy8QVlpWuDHbyzbWuYaugJ
	 0ql5k38YgybsJPeUftnOPqIuN6qbR1r+laFaU//A6Sv+FSHSGND2Dk6eLju5Uxp/91
	 CXfa1KdOWykUyMD0BTfHDpucFqUdfx8OjUuaOh50PCLK3JWYXyZ/Omk/n4SOoaTK4+
	 NJwFQgPTDpLOQ==
From: "Rob Herring (Arm)" <robh@kernel.org>
To: Liam Girdwood <lgirdwood@gmail.com>,
	Mark Brown <broonie@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Matthias Brugger <matthias.bgg@gmail.com>,
	AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>,
	Koro Chen <koro.chen@mediatek.com>,
	Khushal Chitturi <khushalchitturi@gmail.com>
Cc: Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>,
	linux-sound@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-mediatek@lists.infradead.org
Subject: [PATCH] ASoC; dt-bindings: mediatek,mt8173-rt5650-rt5514: Fix mediatek,audio-codec constraints
Date: Fri,  8 May 2026 13:24:37 -0500
Message-ID: <20260508182438.1757394-1-robh@kernel.org>
X-Mailer: git-send-email 2.53.0
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Rspamd-Queue-Id: 801104FA8EB
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [0.84 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_CONTAINS_FROM(1.00)[];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_MISSING_CHARSET(0.50)[];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20201202];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCPT_COUNT_TWELVE(0.00)[14];
	FREEMAIL_TO(0.00)[gmail.com,kernel.org,collabora.com,mediatek.com];
	TAGGED_FROM(0.00)[bounces-294622-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[robh@kernel.org,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[kernel.org:+];
	NEURAL_HAM(-0.00)[-1.000];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns]
X-Rspamd-Action: no action

A phandle-array is really a matrix and needs constraints on the number
of elements for both the inner and outer dimensions. Add the missing
inner constraints.

Fixes: 472d77bdc511 ("ASoC: dt-bindings: mediatek,mt8173-rt5650-rt5514: convert to DT schema")
Signed-off-by: Rob Herring (Arm) <robh@kernel.org>
---
 .../bindings/sound/mediatek,mt8173-rt5650-rt5514.yaml           | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/Documentation/devicetree/bindings/sound/mediatek,mt8173-rt5650-rt5514.yaml b/Documentation/devicetree/bindings/sound/mediatek,mt8173-rt5650-rt5514.yaml
index ed698c9ff42b..becc7a11f8dc 100644
--- a/Documentation/devicetree/bindings/sound/mediatek,mt8173-rt5650-rt5514.yaml
+++ b/Documentation/devicetree/bindings/sound/mediatek,mt8173-rt5650-rt5514.yaml
@@ -18,7 +18,9 @@ properties:
     description: Phandles of rt5650 and rt5514 codecs
     items:
       - description: phandle of rt5650 codec
+        maxItems: 1
       - description: phandle of rt5514 codec
+        maxItems: 1
 
   mediatek,platform:
     $ref: /schemas/types.yaml#/definitions/phandle
-- 
2.53.0


