Return-Path: <devicetree+bounces-117574-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id CD9639B6F1B
	for <lists+devicetree@lfdr.de>; Wed, 30 Oct 2024 22:37:58 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 9256528439E
	for <lists+devicetree@lfdr.de>; Wed, 30 Oct 2024 21:37:57 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id EA7A521BB04;
	Wed, 30 Oct 2024 21:34:08 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b="q3BsFvwy"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-oi1-f179.google.com (mail-oi1-f179.google.com [209.85.167.179])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C186421B435
	for <devicetree@vger.kernel.org>; Wed, 30 Oct 2024 21:34:06 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.179
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1730324048; cv=none; b=AhaDa9YBhWJYS79P6bT0Wr7XeVl89r3btjBJKbFJfIY7tJv/uV6xH+PfzHFeIiHaXS57+SCfj+PH1HY88qax8xkdSUHKIck9YuUohJfiA5Yr56CHR5Yk7HQVCfz3nZ/utvv/S4qWtXPYbuCAK8QHtbKxRZWnl8wxa3259xxDq4A=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1730324048; c=relaxed/simple;
	bh=CI2Lnp2ZFIQ9X+t6DOzwzXbSD1CdFhZkAhG2G3EEy/g=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=WnvjWwnmVNPWNRi5EvsQt3qRGm3rvBP5DwbmHbrjd+DWLNEaRueOZTL2j/lyUCkZxGxTwyHbHVnTtrc0kZ+hsE4Dj9S4ErFg4MFGHZKiZClHRzPGgxN0AjDhAB01JkCWsR1tuAs4FBu+CuyZQk9Hho5wTg/5DKf81aN4ngP7dzk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com; spf=pass smtp.mailfrom=baylibre.com; dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b=q3BsFvwy; arc=none smtp.client-ip=209.85.167.179
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=baylibre.com
Received: by mail-oi1-f179.google.com with SMTP id 5614622812f47-3e60d3adecbso199311b6e.2
        for <devicetree@vger.kernel.org>; Wed, 30 Oct 2024 14:34:06 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20230601.gappssmtp.com; s=20230601; t=1730324046; x=1730928846; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=/DgxmuugdaQ3XDKgZ0SuFc+VJJKKz2RxlCHCWZM4DSU=;
        b=q3BsFvwyFmlQx6ku2ey1oFMnO+sf8nXRyk0UyCCK9vdv66qAsOfBpxI8+AxZW95KL0
         CAyc2Ze8CP6MgaQBwT23NUI41hdXLvNUYXM+amUAba8mrg7PEkrC3ZeaXo/wKlHl4ppO
         pm3ywssPTZHtQuc1/m8kVJvbXb3BmmPiegzKonKz8TQkWYImAAyQoDIS+rA60HX9ot/T
         OhWGCgyZNw6gQhgUpjgPbXRdFb4ZncgkCpDcLrzvCxJWHddBfjipyaOt7YPQiwxvAoze
         uVgft07TZu0VK1+u7DIevJQAk4cNZhqBxbTdU20DS/QCScwTLorJ4JmLM8hTyZQTfxB0
         AEFw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1730324046; x=1730928846;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=/DgxmuugdaQ3XDKgZ0SuFc+VJJKKz2RxlCHCWZM4DSU=;
        b=iLlZ2pgnmVb5OjXkM2btcwaAooq/LvqeZywfOWbT7ofB5Xbt1ERBt5AF6hdjycFu3R
         sipZ+Q+UW6XCjNOwtMBc0ELcpnW0bIZTpiPQ+g5ndiA/H2oqpW3awG479fK9TNZfh+ui
         CwCp8iYWBHn4SI++1zE5zNReYPMPoji3CGxljP1pqSHRpqcIi7OW8UkgefvEtNYIevtJ
         oyy4TUk4InlM0zGhbuLk6yC7qo6gif9366gNAYMFSNCKo7bzg4q/0d342q9gaVaNaXPz
         ratG1mxMqO6Z/6hxnBNMpDl6/ZuPmOwz95HEkOwI0FMIY1hrFdAMxcb8JfCWDn0YqmlZ
         62bg==
X-Forwarded-Encrypted: i=1; AJvYcCXhGIv/71jYTFb/l0Z+/7NYFzeP2fPHB97vx/fCI7SDNMnrV4m4nmaXud8oAClTZpfT/uFMhQ/Q6B1I@vger.kernel.org
X-Gm-Message-State: AOJu0Yzfu/Cc0e+OFfueCec6YcC10jdI40T8onzeaZgqGVR4TAvV3jUn
	tIhdpIq7SDVJbf7YoDz1RKaiqYroWmDiWVYJ1F46XHyD4Z7+v51d4mcDNDLnO99gwTWp00IA+8I
	y
X-Google-Smtp-Source: AGHT+IELI/bVcmvdyZTSN9hBWkdwB7oJD6kTnVdjciv8Nv/H1LfXG4kzLNgcKSWs8NfJtZc+8ZjFBg==
X-Received: by 2002:a05:6808:6488:b0:3e6:54d0:d467 with SMTP id 5614622812f47-3e654d0d4d3mr6480892b6e.9.1730324045947;
        Wed, 30 Oct 2024 14:34:05 -0700 (PDT)
Received: from [127.0.1.1] (ip98-183-112-25.ok.ok.cox.net. [98.183.112.25])
        by smtp.gmail.com with ESMTPSA id 5614622812f47-3e6611a661dsm52127b6e.14.2024.10.30.14.34.03
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 30 Oct 2024 14:34:04 -0700 (PDT)
From: David Lechner <dlechner@baylibre.com>
Date: Wed, 30 Oct 2024 16:33:57 -0500
Subject: [PATCH v3 2/2] dt-bindings: dma: adi,axi-dmac: deprecate
 adi,channels node
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20241030-axi-dma-dt-yaml-v3-2-d3a9b506f96c@baylibre.com>
References: <20241030-axi-dma-dt-yaml-v3-0-d3a9b506f96c@baylibre.com>
In-Reply-To: <20241030-axi-dma-dt-yaml-v3-0-d3a9b506f96c@baylibre.com>
To: Vinod Koul <vkoul@kernel.org>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Nuno Sa <nuno.sa@analog.com>
Cc: Lars-Peter Clausen <lars@metafoo.de>, dmaengine@vger.kernel.org, 
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
 David Lechner <dlechner@baylibre.com>
X-Mailer: b4 0.14.1

Deprecate the adi,channels node in the adi,axi-dmac binding. Prior to
IP version 4.3.a, this information was required. Since then, there are
memory-mapped registers that can be read to get the same information.

Acked-by: Nuno Sa <nuno.sa@analog.com>
Reviewed-by: Rob Herring (Arm) <robh@kernel.org>
Signed-off-by: David Lechner <dlechner@baylibre.com>
---

For context, the adi,channels node has not been required in the Linux
kernel since [1].

[1]: https://lore.kernel.org/all/20200825151950.57605-7-alexandru.ardelean@analog.com/
---
 .../devicetree/bindings/dma/adi,axi-dmac.yaml        | 20 +++++---------------
 1 file changed, 5 insertions(+), 15 deletions(-)

diff --git a/Documentation/devicetree/bindings/dma/adi,axi-dmac.yaml b/Documentation/devicetree/bindings/dma/adi,axi-dmac.yaml
index b1f4bdcab4fd..63b6fb0423c2 100644
--- a/Documentation/devicetree/bindings/dma/adi,axi-dmac.yaml
+++ b/Documentation/devicetree/bindings/dma/adi,axi-dmac.yaml
@@ -33,8 +33,12 @@ properties:
     const: 1
 
   adi,channels:
+    deprecated: true
     type: object
-    description: This sub-node must contain a sub-node for each DMA channel.
+    description:
+      This sub-node must contain a sub-node for each DMA channel. This node is
+      only required for IP versions older than 4.3.a and should otherwise be
+      omitted.
     additionalProperties: false
 
     properties:
@@ -113,7 +117,6 @@ required:
   - interrupts
   - clocks
   - "#dma-cells"
-  - adi,channels
 
 examples:
   - |
@@ -123,17 +126,4 @@ examples:
         interrupts = <0 57 0>;
         clocks = <&clkc 16>;
         #dma-cells = <1>;
-
-        adi,channels {
-            #size-cells = <0>;
-            #address-cells = <1>;
-
-            dma-channel@0 {
-                reg = <0>;
-                adi,source-bus-width = <32>;
-                adi,source-bus-type = <0>; /* Memory mapped */
-                adi,destination-bus-width = <64>;
-                adi,destination-bus-type = <2>; /* FIFO */
-            };
-        };
     };

-- 
2.43.0


