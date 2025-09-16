Return-Path: <devicetree+bounces-217641-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 9C182B58BDE
	for <lists+devicetree@lfdr.de>; Tue, 16 Sep 2025 04:33:24 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id AC0251BC3829
	for <lists+devicetree@lfdr.de>; Tue, 16 Sep 2025 02:33:28 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id EE12524DD00;
	Tue, 16 Sep 2025 02:32:52 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=postmarketos.org header.i=@postmarketos.org header.b="UHY+pnKN"
X-Original-To: devicetree@vger.kernel.org
Received: from out-176.mta1.migadu.com (out-176.mta1.migadu.com [95.215.58.176])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F41B42472B6
	for <devicetree@vger.kernel.org>; Tue, 16 Sep 2025 02:32:50 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=95.215.58.176
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757989972; cv=none; b=kicqxoZd5IDuL5DulnHVoV6lPWUxBjPzd4KklZNlDdUxf27tDt+xsYomX3mZgyWTYFzM4cAB5Eae43IaayeI8etAybIt6CY40X9nsWm6Xemm1rgBh6fBopKbg4gOc1BIhOk1d+mKfIHDp6hJZSm9qiIu0WQE5WXr3P/z3i0Vh1s=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757989972; c=relaxed/simple;
	bh=QD1XD3QJwg8gYDvPbGitDD65uZYS6EXeZGVw1RunVLA=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=NjDJ5ALe79F4NcbUpaGlzJe4XI0i1s4hZrczON7cLtEq8lxVyczpWTJfz5gaKsWrjOwlDLZIoI3Z5dDU0rBKpmF1Rp4cErmADmJhEm6iaask8HieqhW0l8Sd0jVh3TXtKSfQHWulSGc8z9z/F1Jw8HwjBED1ufrwQsd1FpnhmOQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=postmarketos.org; spf=pass smtp.mailfrom=postmarketos.org; dkim=pass (2048-bit key) header.d=postmarketos.org header.i=@postmarketos.org header.b=UHY+pnKN; arc=none smtp.client-ip=95.215.58.176
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=postmarketos.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=postmarketos.org
X-Report-Abuse: Please report any abuse attempt to abuse@migadu.com and include these headers.
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=postmarketos.org;
	s=key1; t=1757989969;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=7Hzxy2RMl64sno71Oz0iZau+iz12mHomuQMmhuu/ZxI=;
	b=UHY+pnKNGZ7w/n//LaJI1spaDsWHnh6bAx6fhAAVOiz1mL6cuQScAMJmq/yGA+Wz2GSODJ
	Lbfj0vBxKb4ioKXTkexunIqrP/JtJIw07Kvmli8t6JH9nn1hxh6Sdz5n1qb04pDKyz+qWa
	Iu02CcLEDsBnoBS0TiWHMgrGF6z3PW1nKiUSmu2XJAgoHMrAUVkcUfEq9k3M1XAU/rNJkT
	MDzjEFLhn1EZsoQAE2TVbOasVG+GEoo8903RyFJY+VH4CASnRlYlSaNV4nz2yuQzM7f2wZ
	XWL5GAoM9aCAUW5X9p/7MiKlOYdPnCQuTvr//RODLYBl9C8P05qoZlA4o6shgQ==
From: Paul Sajna <sajattack@postmarketos.org>
Date: Mon, 15 Sep 2025 19:32:14 -0700
Subject: [PATCH v2 3/3] dt-bindings: display: panel: panel-simple: Add
 lg,sw49410 compatible
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20250915-judyln-panel-v2-3-01ab2199fea5@postmarketos.org>
References: <20250915-judyln-panel-v2-0-01ab2199fea5@postmarketos.org>
In-Reply-To: <20250915-judyln-panel-v2-0-01ab2199fea5@postmarketos.org>
To: Neil Armstrong <neil.armstrong@linaro.org>, 
 Jessica Zhang <quic_jesszhan@quicinc.com>, 
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, 
 Maxime Ripard <mripard@kernel.org>, Thomas Zimmermann <tzimmermann@suse.de>, 
 David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>, 
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, 
 Thierry Reding <thierry.reding@gmail.com>, Sam Ravnborg <sam@ravnborg.org>
Cc: linux-kernel@vger.kernel.org, dri-devel@lists.freedesktop.org, 
 devicetree@vger.kernel.org, David Heidelberg <david@ixit.cz>, 
 phone-devel@vger.kernel.org, Amir Dahan <system64fumo@protonmail.com>, 
 Paul Sajna <sajattack@postmarketos.org>
X-Developer-Signature: v=1; a=ed25519-sha256; t=1757989951; l=1102;
 i=sajattack@postmarketos.org; s=20250422; h=from:subject:message-id;
 bh=QD1XD3QJwg8gYDvPbGitDD65uZYS6EXeZGVw1RunVLA=;
 b=wL3tL2/cfg5Ck1aaiCinCBhOdqlZRIl2EziBGq2b2R8O16EAVl7b+SBwXX4IkFj6HuFZ7lWwD
 6VicQihU1ZrA+9WhKTycQwFdb3mOatbB5Lik2zWK9I1R0m66EZrDkYh
X-Developer-Key: i=sajattack@postmarketos.org; a=ed25519;
 pk=TwacvEOiRJ2P2oAdEqIDrtQTL18QS4FfcHfP/zNsxkQ=
X-Migadu-Flow: FLOW_OUT

LG SW49410 is the display panel used by sdm845-lg-judyln (LG G7 ThinQ).

It supports all the same properties as panel-simple.

Signed-off-by: Paul Sajna <sajattack@postmarketos.org>
---
 Documentation/devicetree/bindings/display/panel/panel-simple.yaml | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/Documentation/devicetree/bindings/display/panel/panel-simple.yaml b/Documentation/devicetree/bindings/display/panel/panel-simple.yaml
index 5542c9229d54a000a6493ed64f03eda59c7efb02..ce6bcb95fb9efe19066e26927e068514a37ba6b9 100644
--- a/Documentation/devicetree/bindings/display/panel/panel-simple.yaml
+++ b/Documentation/devicetree/bindings/display/panel/panel-simple.yaml
@@ -192,6 +192,8 @@ properties:
       - lemaker,bl035-rgb-002
         # LG 7" (800x480 pixels) TFT LCD panel
       - lg,lb070wv8
+        # LG 6.1" (1440x3120) IPS LCD panel
+      - lg,sw49410
         # Logic Technologies LT161010-2NHC 7" WVGA TFT Cap Touch Module
       - logictechno,lt161010-2nhc
         # Logic Technologies LT161010-2NHR 7" WVGA TFT Resistive Touch Module

-- 
2.51.0


