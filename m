Return-Path: <devicetree+bounces-84813-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 7ABB492DC88
	for <lists+devicetree@lfdr.de>; Thu, 11 Jul 2024 01:19:50 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 739731C225E9
	for <lists+devicetree@lfdr.de>; Wed, 10 Jul 2024 23:19:49 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 1541B153835;
	Wed, 10 Jul 2024 23:19:45 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="SLhfQIH9"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ot1-f47.google.com (mail-ot1-f47.google.com [209.85.210.47])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9B52B14D457
	for <devicetree@vger.kernel.org>; Wed, 10 Jul 2024 23:19:43 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.210.47
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1720653585; cv=none; b=qOEX3WIVe9MOhPKQC6RcOwAsvMVanI83teM7QeieEozXTl0xJYFtMBSr9JRJpeHqhel9cgJajymIPSpmeIYdT/byB+uS1zjcheTNrXELXOuyDXUrm049ws0eBlfZ8XzbloxDvjPyXy9idrX3qpp3P86atwX5nYLsk4gR41stK5E=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1720653585; c=relaxed/simple;
	bh=QyJ2iyxXUm8uwXMRO7RW/a7yXrqYjkuiZ+yXa7/uvlo=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
	 MIME-Version; b=JAvkY7OkjeLVHeROAw8043cfuDPWfJk/MhT5lDfxR9rF9H0crpynGEcV6Z7HfjfmR+tcSpkmiB3UEZV3ziKsJgvFdp9EoVSm0PKsWP7qeiftr3JsmNZvYp2J1b8nF/I3l+knKG6smJFNPjVO+2F1p0SWp6jZZX+gnfQkY74PqSE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=SLhfQIH9; arc=none smtp.client-ip=209.85.210.47
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-ot1-f47.google.com with SMTP id 46e09a7af769-70362cb061aso102236a34.1
        for <devicetree@vger.kernel.org>; Wed, 10 Jul 2024 16:19:43 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1720653582; x=1721258382; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=DJLbcDQZflMARusAT/RDfGiN+HZbm/zgjn4S839J9N4=;
        b=SLhfQIH99VpiaDv0j3hDpWv5CabF7r2A5zWq+Vbx1GtxlCg7MoIRo40PziIMhXdCSo
         z0WqOXle1fxBSZRtj77SGQoHR8J4wBBKGSkk2KMitznRl5olXzdPObwnrlcLgwj6HYUI
         nUJY4V3aFFWgKEGpJND3kYgRYIF1vR0ehTHUgI9iez9e4IjtJWSDQNbLbJSvY8FYIISG
         isnuoQrQiVSFgGOIfalojDLVxyUBeVUlMjem04piqWKL+DpUTxsv1XhTVla8LCftDTJV
         UZVO0eluWPFan0wQYX4kAbj4mTZzlT6ttk6DzzkSeWswePMLkePM/O3w3qBMXy9RLaD7
         IdYQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1720653582; x=1721258382;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=DJLbcDQZflMARusAT/RDfGiN+HZbm/zgjn4S839J9N4=;
        b=k+DvYkbQm0j2jcyD+dViPtipXbLgjYLll9zEp+UVu/xQ0ShSFfDh4QEPelCj1cS+Ky
         bAVAB7eziuG3bKPcOyCN4hBj9zoDJIYdlKf9EeNiw+QpyHtozk9UgF7qSR3AmjifnCbI
         dM8qiI/41M67z3TVQ3KfuBPvySMQ21zrIWnZEYeywIgurRW9Cphd1jz7cLuufZd00fWi
         M8hN0ekeB2KakIDaGb0Kop1wPjRiiVCa0r4syknW6XgMQdlDfPfKmvb9WCHKJu0bHzZn
         eb5OlNg7e3o/3tb+J17S2gxXDy/4n/G3KoeRxILuC/eSQD/GNMVmSA/1OJhnSKyZMmA9
         mxdQ==
X-Gm-Message-State: AOJu0YxPyVZaVxwOpMYqnSNMgOoistIDCU2uWIxW4nbjUWA2W1SH0QjM
	uYZJRzfo0HTbwieFlrR0xwkmGp0CtMOEnyIRcEOV1H9ozMJJ+E/g
X-Google-Smtp-Source: AGHT+IGvo3P5Dvaq5rkcuJAdZ+/lZcZ9HrqolQA3UoZ/TvJp3E68pRKbPJ3Qg9qxuEkUAby8hgX3Fg==
X-Received: by 2002:a05:6830:1106:b0:704:47db:cd68 with SMTP id 46e09a7af769-70447dbd02cmr4660736a34.4.1720653582547;
        Wed, 10 Jul 2024 16:19:42 -0700 (PDT)
Received: from localhost.localdomain ([2600:1700:fb0:1bcf::54])
        by smtp.gmail.com with ESMTPSA id 46e09a7af769-70374fcbf30sm1040207a34.65.2024.07.10.16.19.41
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 10 Jul 2024 16:19:42 -0700 (PDT)
From: Chris Morgan <macroalpha82@gmail.com>
To: linux-sunxi@lists.linux.dev
Cc: devicetree@vger.kernel.org,
	mripard@kernel.org,
	ryan@testtoast.com,
	andre.przywara@arm.com,
	samuel@sholland.org,
	jernej.skrabec@gmail.com,
	wens@csie.org,
	conor+dt@kernel.org,
	krzk+dt@kernel.org,
	robh@kernel.org,
	Chris Morgan <macromorgan@hotmail.com>
Subject: [PATCH V3 1/4] dt-bindings: arm: sunxi: Add Anbernic RG35XXSP
Date: Wed, 10 Jul 2024 18:17:15 -0500
Message-Id: <20240710231718.106894-2-macroalpha82@gmail.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20240710231718.106894-1-macroalpha82@gmail.com>
References: <20240710231718.106894-1-macroalpha82@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

From: Chris Morgan <macromorgan@hotmail.com>

Add the Anbernic RG35XXSP variant device.

The Anbernic RG35XXSP is almost identical to the RG35XX-Plus, but in a
clamshell form-factor with an external RTC and a lid switch.

Signed-off-by: Chris Morgan <macromorgan@hotmail.com>
---
 Documentation/devicetree/bindings/arm/sunxi.yaml | 9 +++++++--
 1 file changed, 7 insertions(+), 2 deletions(-)

diff --git a/Documentation/devicetree/bindings/arm/sunxi.yaml b/Documentation/devicetree/bindings/arm/sunxi.yaml
index c2a158b75e49..60b11b289535 100644
--- a/Documentation/devicetree/bindings/arm/sunxi.yaml
+++ b/Documentation/devicetree/bindings/arm/sunxi.yaml
@@ -61,14 +61,19 @@ properties:
           - const: anbernic,rg35xx-2024
           - const: allwinner,sun50i-h700
 
+      - description: Anbernic RG35XX H
+        items:
+          - const: anbernic,rg35xx-h
+          - const: allwinner,sun50i-h700
+
       - description: Anbernic RG35XX Plus
         items:
           - const: anbernic,rg35xx-plus
           - const: allwinner,sun50i-h700
 
-      - description: Anbernic RG35XX H
+      - description: Anbernic RG35XX SP
         items:
-          - const: anbernic,rg35xx-h
+          - const: anbernic,rg35xx-sp
           - const: allwinner,sun50i-h700
 
       - description: Amarula A64 Relic
-- 
2.34.1


