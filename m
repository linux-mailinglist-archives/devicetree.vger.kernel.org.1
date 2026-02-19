Return-Path: <devicetree+bounces-266769-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 8GkHIWeVl2nO1QIAu9opvQ
	(envelope-from <devicetree+bounces-266769-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Thu, 19 Feb 2026 23:57:43 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 2469E1636C7
	for <lists+devicetree@lfdr.de>; Thu, 19 Feb 2026 23:57:42 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id EACC8303CC17
	for <lists+devicetree@lfdr.de>; Thu, 19 Feb 2026 22:55:59 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 310C132E698;
	Thu, 19 Feb 2026 22:55:59 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b="uBDhLhDx"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ot1-f46.google.com (mail-ot1-f46.google.com [209.85.210.46])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3492132E143
	for <devicetree@vger.kernel.org>; Thu, 19 Feb 2026 22:55:57 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.210.46
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771541759; cv=none; b=t3+5++NeAjfpjy38DK9yjFJbONgYmMu2H1CZna5aOv4pyFcWFU9VBap8gO4U3A7KUKYQPHhTZAG2Z+CJWi38bvVshkBW1ewIbdn+9f8fxBQRFf3ACTzRkFHK0T38lJAHmFlSLo/E6y5/4anZeCUSX6Ntn9A6jnG9rTtv4BDrdTM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771541759; c=relaxed/simple;
	bh=q5ubFzH4qgc7OuFNqgcrKZJjea7RWBN3Hi9vN43DLO4=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=Q0K1ESqoyNjCg7BVbqDtuoq7PFYlOepcUmzdTZ0ytHM/AzMBFmsHgxlNG6EiKBHimoQH+YObJBjcsCfNb6YGfy1d7z2ZUXVF5KiIpPWxIhiTzQBkItSyZXdlQF3QSE86auExRTVGKrsCzZ9sMqFEaneCoMdWONiCXHXPzocSy20=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com; spf=pass smtp.mailfrom=baylibre.com; dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b=uBDhLhDx; arc=none smtp.client-ip=209.85.210.46
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=baylibre.com
Received: by mail-ot1-f46.google.com with SMTP id 46e09a7af769-7d4bc6a8021so1153577a34.3
        for <devicetree@vger.kernel.org>; Thu, 19 Feb 2026 14:55:57 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20230601.gappssmtp.com; s=20230601; t=1771541756; x=1772146556; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=jKYUgE4Lj5YWYTlIcNqqLcI1EoAo5/fpI79A2agQr2o=;
        b=uBDhLhDxzHA41XwHzyQxqmZIuGZsqC7lbZf7JnXjvA85oscr3FL8VErfkwIc3J+U0n
         0aiYXSsxWppeTaprtYKQ2Dswdj/MsO9OT805U1Kp0HDDhzalzNDUZN69wnPGTKyBqzgx
         U0oFht0WpRMP2hebfsMYj5prOPws1HBPpFUnnryh6Trd5vRX+O4EgKYN2bnGM96N8Q81
         VDj+i7DypjMpwaN2ERHTITTHMrkCLTWpnZUBgj1pyqnNWQz6hgmc7qxLK9X8V0ilLOI/
         1yFGcgSME50uhdgOT40929BcHrKMblvrp7wgFcIa7m2iv0lqPrsvkLBDC/aNaaH4fW35
         KdPg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1771541756; x=1772146556;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-gg:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=jKYUgE4Lj5YWYTlIcNqqLcI1EoAo5/fpI79A2agQr2o=;
        b=gcRTnxtP0AJEQfYQ2rdFH0Y4NBUaLwmGor2QXN2EBQlUjynYJDJi2MjLhAUnTVxlYK
         g5eH/SSxeX+jZzC4LILmjwS3yoNuJJ0Uk/tg83LabUOMGdIn9E5xVBTLSSB42/f/eEYa
         2qYeRRSS1rdgKGFQByRj6bAz5w5t02MUx8WMI3EJdOe/7XEAes7J1lJKIquyQy4nwDKn
         flWZP0aOFZ2iWfHT2P7KzVrq3DApf0WZEyCn/XsGODp8adhFGKF4D7hc4rlPUVc48XX7
         cs+npDYZMkUyr6mYIPJMeT6h7nWDzbQVjBKb0GKNtVwZjEXNLznag1ffHXfHuWVov2II
         H1CQ==
X-Gm-Message-State: AOJu0YzJbCgl7XjXbTgixMmr3peqSvrwL6Kt4rIYy8fkHClOkJluOvzV
	0GqGJECLZuYNXvwFebNU5kgE2E1Bhc+cLui16pGWT6ePD89rN7o2FNs50JxUBC2vDOo//1mzoMD
	WdSsK
X-Gm-Gg: AZuq6aIYBm9Xg9GigE6opDRi7BYxM1m0UZ7lWJQe/s60dgell2pWf4N9Yqyea8+7RpP
	41+G5POU+CCWGB03aZVBMM7hfeAlOi+4KRXlQD1SP/aY6iBS1Tv8VUSd4xyLYfHXHXEGzBUzri1
	FKhtsg1lLF+tuFT4v0mUeYcPpV1YnBJnMlwqj2VLv8kE0+xr2/Sq1qMcSzjXOWS0mVRVdwY/dKX
	62SCppy7YFK721xKik6Ni+mPycuQTWqzMe0tACs7k5/BAuin+CBgEy+SAhWOUQZUpCFs1KNOBqs
	/cYdBQRceQ0GAie5uEXdCM8V287oN1IdhzawRIOtXA63LNpNKvBrri9N4oRe3T8S1T7UI4NE2K2
	Sv5O7Z24igWL2mcfRNlyQaALuQsdXI4iS/DO3yUdCuT77lPBrtbDXDRjYaLmQweuE4B2Svk2ALi
	7Z9DU2Jx7EDRvghNCbBSSqbLqzKQ==
X-Received: by 2002:a05:6830:2b23:b0:7c9:5bef:e9b with SMTP id 46e09a7af769-7d4d0a9a731mr11337634a34.3.1771541756215;
        Thu, 19 Feb 2026 14:55:56 -0800 (PST)
Received: from [127.0.1.1] ([2600:8803:e7e4:500:d4c1:bce:26a1:c903])
        by smtp.gmail.com with ESMTPSA id 46e09a7af769-7d4a7720a95sm20565585a34.29.2026.02.19.14.55.55
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 19 Feb 2026 14:55:55 -0800 (PST)
From: David Lechner <dlechner@baylibre.com>
Date: Thu, 19 Feb 2026 16:55:30 -0600
Subject: [PATCH 2/2] dt-bindings: regulator: mt6359: make regulator names
 unique
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260219-mtk-mt6359-fix-regulator-names-v1-2-ee0fcebfe1d9@baylibre.com>
References: <20260219-mtk-mt6359-fix-regulator-names-v1-0-ee0fcebfe1d9@baylibre.com>
In-Reply-To: <20260219-mtk-mt6359-fix-regulator-names-v1-0-ee0fcebfe1d9@baylibre.com>
To: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, 
 Matthias Brugger <matthias.bgg@gmail.com>, 
 AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>, 
 Liam Girdwood <lgirdwood@gmail.com>, Mark Brown <broonie@kernel.org>, 
 Hsin-Hsiung Wang <hsin-hsiung.wang@mediatek.com>
Cc: devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
 linux-arm-kernel@lists.infradead.org, linux-mediatek@lists.infradead.org, 
 David Lechner <dlechner@baylibre.com>
X-Mailer: b4 0.14.3
X-Developer-Signature: v=1; a=openpgp-sha256; l=1337; i=dlechner@baylibre.com;
 h=from:subject:message-id; bh=q5ubFzH4qgc7OuFNqgcrKZJjea7RWBN3Hi9vN43DLO4=;
 b=owEBbQGS/pANAwAKAcLMIAH/AY/AAcsmYgBpl5TzMYDxF2HX4rTA3UnTgVFDxUpAyCkM1Kg6Q
 /Pk2GoyLeWJATMEAAEKAB0WIQTsGNmeYg6D1pzYaJjCzCAB/wGPwAUCaZeU8wAKCRDCzCAB/wGP
 wBX4B/494HnG2O3/PxDWMUTl5U+mRUHVBFcrRCjPMQGllZGxZhl0cAExWCe/Riqh1c8ca7b6ksR
 O13CBTRTitM2swXkuwkkECCdVDc/WK2FwJMX9HYlAXourphfs+DFDrQAPcAa2EippXn/tQRsnhI
 MrL41gtfiROq8S5cQYJP5wu5ansEBfY5z/1iabqbsDaDNHfn3jOyUqunbQ0HXY6xxdTPzYCKRDx
 O3Ovcp4iVhPbzgPCtidoQ6joIT2IRTIs3A5GCtnG5j6s6Ul2zCJBGvTEFBVyV59LJWoJq2rk74y
 MGyj5pAs73pMtMSh+HHVuMJoVlPv22ngO/F3KJU6T3Te7LZO
X-Developer-Key: i=dlechner@baylibre.com; a=openpgp;
 fpr=8A73D82A6A1F509907F373881F8AF88C82F77C03
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.16 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	R_DKIM_ALLOW(-0.20)[baylibre-com.20230601.gappssmtp.com:s=20230601];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-266769-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	FROM_HAS_DN(0.00)[];
	FREEMAIL_TO(0.00)[kernel.org,gmail.com,collabora.com,mediatek.com];
	FORGED_SENDER_MAILLIST(0.00)[];
	DMARC_NA(0.00)[baylibre.com];
	RCPT_COUNT_TWELVE(0.00)[13];
	MIME_TRACE(0.00)[0:+];
	DKIM_TRACE(0.00)[baylibre-com.20230601.gappssmtp.com:+];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[dlechner@baylibre.com,devicetree@vger.kernel.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-0.998];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,baylibre-com.20230601.gappssmtp.com:dkim,baylibre.com:mid,baylibre.com:email]
X-Rspamd-Queue-Id: 2469E1636C7
X-Rspamd-Action: no action

Update the example devicetree with unique regulator names for all
regulators. This reflects the same change made to the actual .dtsi file.

Signed-off-by: David Lechner <dlechner@baylibre.com>
---
 Documentation/devicetree/bindings/regulator/mt6359-regulator.yaml | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/Documentation/devicetree/bindings/regulator/mt6359-regulator.yaml b/Documentation/devicetree/bindings/regulator/mt6359-regulator.yaml
index d6b3b5a5c0b3..fe4ac9350ba0 100644
--- a/Documentation/devicetree/bindings/regulator/mt6359-regulator.yaml
+++ b/Documentation/devicetree/bindings/regulator/mt6359-regulator.yaml
@@ -287,7 +287,7 @@ examples:
           regulator-max-microvolt = <1700000>;
         };
         mt6359_vrfck_1_ldo_reg: ldo_vrfck_1 {
-          regulator-name = "vrfck";
+          regulator-name = "vrfck_1";
           regulator-min-microvolt = <1240000>;
           regulator-max-microvolt = <1600000>;
         };
@@ -309,7 +309,7 @@ examples:
           regulator-max-microvolt = <3300000>;
         };
         mt6359_vemc_1_ldo_reg: ldo_vemc_1 {
-          regulator-name = "vemc";
+          regulator-name = "vemc_1";
           regulator-min-microvolt = <2500000>;
           regulator-max-microvolt = <3300000>;
         };

-- 
2.43.0


