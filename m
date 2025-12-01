Return-Path: <devicetree+bounces-243315-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ams.mirrors.kernel.org (ams.mirrors.kernel.org [IPv6:2a01:60a::1994:3:14])
	by mail.lfdr.de (Postfix) with ESMTPS id 878B8C96B47
	for <lists+devicetree@lfdr.de>; Mon, 01 Dec 2025 11:46:21 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ams.mirrors.kernel.org (Postfix) with ESMTPS id DFEA8343139
	for <lists+devicetree@lfdr.de>; Mon,  1 Dec 2025 10:46:10 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D93B1305043;
	Mon,  1 Dec 2025 10:45:49 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="d5HQdzuk"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f44.google.com (mail-wr1-f44.google.com [209.85.221.44])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 33CF82494D8
	for <devicetree@vger.kernel.org>; Mon,  1 Dec 2025 10:45:48 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.44
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764585949; cv=none; b=mklPcMaKwbNv4iw/MHrkwLc3gm/XXE9/Qe6Gua14OOtZV4fH+JQpZPKerRf258Vycf9AebS0QWRdgn+kIQNuzS5Gz1yLI2Cuf9XH5azxVfTw1QSjln3Qq3bSPxsomFDF7/M4SAQ7ZXgbiUBFsrnyx5ZrOB/SxaZT9tPX1EfI/CU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764585949; c=relaxed/simple;
	bh=PNtzRnHeMa9DlpoWVZx3pwmISNuUbrxGoCv/8DLShLU=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=gOO7AKh9vxJzbf+dhA6KK19BSc7PGINedfXKMzMamc2ijmAZbOQqeWKA9Hm5z5sH20jr4c6LEb/E5xavQWaxBejgy9GlpIsXhGvf3Ctzsx9jNTwVmxPUBd6lLmmESwos1hw5cHSHMhm4IK+lugEUK8EAtUxy4YPY9kmsN4SLdPA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=d5HQdzuk; arc=none smtp.client-ip=209.85.221.44
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-wr1-f44.google.com with SMTP id ffacd0b85a97d-42e2e6aa22fso556040f8f.2
        for <devicetree@vger.kernel.org>; Mon, 01 Dec 2025 02:45:48 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1764585946; x=1765190746; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=lneCr3ZqgIhpQvTiPt2OPic1hCogXmFNQJJ7T8FWapE=;
        b=d5HQdzukDngJpaZtqGJpiylFA3hsG4rBtvf2kHGm8bKUXC9gjQ3P0emO9DrbfvuQ1J
         8uFeZMlAry8cVuS60qKfklHeNPt25bmPgHUCP8DHvy8etqQ2Kh9w0TXMRs73cubf6x7+
         Mft/Iur4Ry5M3Z2eTxHlisBuMLBd++R+Qu29wpMc2fJu14FcacQP2QXg1YDA9qWSc0i0
         gS7wsbAVZW9XYp7BY/VCvEScCu8Oqb0Q0Je8SYiZQWbvoSZEL26bjkizCxCrUYKT60HK
         qPRMIIgU4br/9CZFB/3GK2IyFHvWGxJv+LKlvmsv3l5/wBhkIVsViljePTtoJgNLay50
         6Igw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1764585946; x=1765190746;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-gg:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=lneCr3ZqgIhpQvTiPt2OPic1hCogXmFNQJJ7T8FWapE=;
        b=jdnSwmbaaKq+QaSDDc2+Msh7WggBpxuh6ViO5LeIwZeDt+NHREY0RAJ7PvmCpc+JCq
         j4vjl4TWjAVKQA3f+H6iurxy84IvcBP9KtBOst/xwc3DiCOyZz1zg4XTDXRxMvVQ8ky7
         uJB+8HHeaEdfc1v/ReSpCrswarLuihJl0pWWnNf5DQI3F7mqM5sprmGPJ+hxEVpkTVal
         L+BXY2RC1bJuvz1TUra4q7asqTR7KxfXMffgZiopW0Sgev9QN2NiAZUUI5aabEazGqzQ
         roDq/m1oaV+F93wAQ0DsD+2NyZs5/D0h5CNT3URERLd+wM4Q/IQUfSaY78EBcfQ/6c3a
         PeMw==
X-Gm-Message-State: AOJu0Yz5ZboMdoHcq5bkdrXruYnWcEnVom5LHQGbqypq/e0u5g6BYmnJ
	vhV0RtmpJjBIe4C6zmWrqIE2I/y1g8/oKlPhGtfkd/5g0VHRUzdqeP61
X-Gm-Gg: ASbGncsWWhD0y0AczRwiS+ZNNxO0iTijIzmg833gJkUCtv+Ew6p0m983kE4XMZ6Htxn
	e7RF0cHAkwK3tS8dipCKmkkhJnRdgNGUSrYEKpdz/i3iqjeFTlmR1tQu0ALTPzi5Yjht8G0w+kv
	K7rKXilEaZzSBmvUI4RMPv2/bPkNol+d7z4JGlBk9FF9NxnYiu7EdOWncVLE1SpOhPewUYi2PcE
	omHRqMl1UMXRgbNdmONywAqe3w56OsMJeHdoc8dtmWsAxdpAuchxg7dHapmGgpvENbrA7M0jNcI
	s8DnGn7S0ehyh9yHVgmw/taUNxzizuFhryLfAQhgwWs/XLmZVCoWgH5dC/9ghAHo+jOjh12E+k0
	kXYVfFaBa6al6+o5liU9nLp/FQ06Uu6E/9WQJNvMvtMJxQhB/Jb2qaW5jxOaqqspAdhEoJpo1sm
	LWrbLmijQnMD20iA/R+SWuIqRyug==
X-Google-Smtp-Source: AGHT+IHPCCG5O4iwIX/7gpyKWK10moypwr6m4s4LZngi2H/39mMdg/U4SqDEjLE2T2Oq9T15qq7X/w==
X-Received: by 2002:a05:6000:3106:b0:429:cc1c:c2e with SMTP id ffacd0b85a97d-42e0f1e3499mr28032126f8f.1.1764585946426;
        Mon, 01 Dec 2025 02:45:46 -0800 (PST)
Received: from [127.0.1.1] ([2001:861:3201:3d10:4ab6:6efe:9b65:a6af])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-42e1c5d6049sm26264262f8f.10.2025.12.01.02.45.45
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 01 Dec 2025 02:45:46 -0800 (PST)
From: Gary Bisson <bisson.gary@gmail.com>
Date: Mon, 01 Dec 2025 11:45:18 +0100
Subject: [PATCH v3 2/4] dt-bindings: arm: mediatek: Add Ezurio Tungsten
 entries
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20251201-review-v3-2-07f9af7341fd@gmail.com>
References: <20251201-review-v3-0-07f9af7341fd@gmail.com>
In-Reply-To: <20251201-review-v3-0-07f9af7341fd@gmail.com>
To: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, 
 Matthias Brugger <matthias.bgg@gmail.com>, 
 AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>, 
 Sean Wang <sean.wang@mediatek.com>
Cc: devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
 linux-arm-kernel@lists.infradead.org, linux-mediatek@lists.infradead.org, 
 Gary Bisson <bisson.gary@gmail.com>
X-Mailer: b4 0.13.0
X-Developer-Signature: v=1; a=ed25519-sha256; t=1764585944; l=1391;
 i=bisson.gary@gmail.com; s=20251201; h=from:subject:message-id;
 bh=PNtzRnHeMa9DlpoWVZx3pwmISNuUbrxGoCv/8DLShLU=;
 b=1roTWqzlzM5O+BhkbGLoRapqg+15AtDQG3cylp9Wt2ufCry9QrXIB8uJ4mrXxH/si29U06EJS
 FwMMxEdu0amAmDJBa3PNBeB6wbZgyyhvxaeygqrPZBwMudD3Mt+j4X6
X-Developer-Key: i=bisson.gary@gmail.com; a=ed25519;
 pk=eaOrLwovHUZBMoLbrx+L1ppj+AH+TfgxkVhIEyrhkeE=

Add device tree bindings support for the Ezurio Tungsten 510 (MT8370)
SMARC [1] / Ezurio Tungsten 700 (MT8390) SMARC [2] + Universal SMARC
carrier board [3].

[1] https://www.ezurio.com/product/tungsten510-smarc
[2] https://www.ezurio.com/product/tungsten700-smarc
[3] https://www.ezurio.com/system-on-module/accessories/universal-smarc-carrier

Signed-off-by: Gary Bisson <bisson.gary@gmail.com>

---
Changes in v2:
- Squashed both entries into 1 commit
Changed in v3:
- None
---
 Documentation/devicetree/bindings/arm/mediatek.yaml | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/Documentation/devicetree/bindings/arm/mediatek.yaml b/Documentation/devicetree/bindings/arm/mediatek.yaml
index f04277873694..cffb0f6ac690 100644
--- a/Documentation/devicetree/bindings/arm/mediatek.yaml
+++ b/Documentation/devicetree/bindings/arm/mediatek.yaml
@@ -431,12 +431,14 @@ properties:
           - const: mediatek,mt8365
       - items:
           - enum:
+              - ezurio,mt8370-tungsten-smarc
               - grinn,genio-510-sbc
               - mediatek,mt8370-evk
           - const: mediatek,mt8370
           - const: mediatek,mt8188
       - items:
           - enum:
+              - ezurio,mt8390-tungsten-smarc
               - grinn,genio-700-sbc
               - mediatek,mt8390-evk
           - const: mediatek,mt8390

-- 
2.43.0


