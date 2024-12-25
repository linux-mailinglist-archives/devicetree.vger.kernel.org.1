Return-Path: <devicetree+bounces-133973-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 239199FC65E
	for <lists+devicetree@lfdr.de>; Wed, 25 Dec 2024 20:27:48 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 6D7F61882695
	for <lists+devicetree@lfdr.de>; Wed, 25 Dec 2024 19:27:49 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id CC4AA1BF804;
	Wed, 25 Dec 2024 19:27:32 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=packett.cool header.i=@packett.cool header.b="MLdre/57"
X-Original-To: devicetree@vger.kernel.org
Received: from out-176.mta0.migadu.com (out-176.mta0.migadu.com [91.218.175.176])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 13EBD1BE23E
	for <devicetree@vger.kernel.org>; Wed, 25 Dec 2024 19:27:30 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=91.218.175.176
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1735154852; cv=none; b=OCfAZ8vPByY2xCq63UBYisHe105Wl84ncXW89nmBTojofTofpeNIedW2WnoD1ikde1XE+OpwP44mNiTggbqyGcl3RQX3U20M8PliqTg7VHmQ6ngR+OPuVaKarhFhbN2JNHhbK0GF3S85ALG2AFtN0fsdjMJd6Gg2tYqaaldk8kU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1735154852; c=relaxed/simple;
	bh=NT1DSZZpJlT5JL/TYTlSCdlJKDv/c0kz69pnhr24u/Y=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=g8YcJyvd1ouPvLsyBkUDcNJLeUnS+LU8NfywwNDI4WJLb5Wfh9FQOCFXcvN/zm8FaChe0fpuEwYMeV8LtYyP3sjfE5r00wQrt7RsqHoCuIq9BKXZeJfs/ULrx3UV6uy+TDUOgoVzQE8W8ViPu85AC+F1NimxdhS/MgGYtwJn0V0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=packett.cool; spf=pass smtp.mailfrom=packett.cool; dkim=pass (2048-bit key) header.d=packett.cool header.i=@packett.cool header.b=MLdre/57; arc=none smtp.client-ip=91.218.175.176
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=packett.cool
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=packett.cool
X-Report-Abuse: Please report any abuse attempt to abuse@migadu.com and include these headers.
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=packett.cool;
	s=key1; t=1735154848;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=Ds5dLdL6zKxcI6j+lsReTASICW2fhJUbhIDr3cLRVJ8=;
	b=MLdre/57xuTdMWVy3aWKChcNpz3ID3PJ4QRhDwzwgVD7oFLGl6DQrKJXbrGxmXcM2EMu4M
	Nn0u1e0mB15fudBJt2Qvwy06jRYqcyiPE0MMO7bGRTqnE+31LuHN0BX0DKf3athmugHf8j
	aiml2rDj2TaZq4l73NmJL1akOMJBLEBPg8XVtOcqbYk97x3SFoSJBinUtXw8INQbBtCvoS
	VW1iN/3ZxfR4n037ehn/+FqCfnRo+i5r2uB5cdEijY326ZXIVysChtPMB/YiE3k9f9E6E0
	EQkXjHtk4bWen1MfvcgeuBGR3Akg7VMrdrItv715jaJ+E4A1IieUW8wJwQpbBw==
From: Val Packett <val@packett.cool>
To: 
Cc: Val Packett <val@packett.cool>,
	Mattijs Korpershoek <mkorpershoek@baylibre.com>,
	Dmitry Torokhov <dmitry.torokhov@gmail.com>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Matthias Brugger <matthias.bgg@gmail.com>,
	AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>,
	Fabien Parent <fparent@baylibre.com>,
	=?UTF-8?q?Bernhard=20Rosenkr=C3=A4nzer?= <bero@baylibre.com>,
	Alexandre Mergnat <amergnat@baylibre.com>,
	Amjad Ouled-Ameur <aouledameur@baylibre.com>,
	linux-input@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-mediatek@lists.infradead.org
Subject: [PATCH 1/3] dt-bindings: mediatek,mt6779-keypad: add more compatibles
Date: Wed, 25 Dec 2024 16:26:19 -0300
Message-ID: <20241225192631.25017-2-val@packett.cool>
In-Reply-To: <20241225192631.25017-1-val@packett.cool>
References: <20241225192631.25017-1-val@packett.cool>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Migadu-Flow: FLOW_OUT

Add compatibles for SoCs using this device (mt8183, mt8365, mt8516).

Signed-off-by: Val Packett <val@packett.cool>
---
 .../devicetree/bindings/input/mediatek,mt6779-keypad.yaml      | 3 +++
 1 file changed, 3 insertions(+)

diff --git a/Documentation/devicetree/bindings/input/mediatek,mt6779-keypad.yaml b/Documentation/devicetree/bindings/input/mediatek,mt6779-keypad.yaml
index 47aac8794b689..517a4ac1bea3d 100644
--- a/Documentation/devicetree/bindings/input/mediatek,mt6779-keypad.yaml
+++ b/Documentation/devicetree/bindings/input/mediatek,mt6779-keypad.yaml
@@ -26,6 +26,9 @@ properties:
       - items:
           - enum:
               - mediatek,mt6873-keypad
+              - mediatek,mt8183-keypad
+              - mediatek,mt8365-keypad
+              - mediatek,mt8516-keypad
           - const: mediatek,mt6779-keypad
 
   reg:
-- 
2.47.1


