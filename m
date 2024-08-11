Return-Path: <devicetree+bounces-92738-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 8A03494E29A
	for <lists+devicetree@lfdr.de>; Sun, 11 Aug 2024 20:18:57 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 33B371F211DC
	for <lists+devicetree@lfdr.de>; Sun, 11 Aug 2024 18:18:57 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 7DA8E16A94F;
	Sun, 11 Aug 2024 18:17:30 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="fimxGG0c"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ed1-f43.google.com (mail-ed1-f43.google.com [209.85.208.43])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7B3BC166301
	for <devicetree@vger.kernel.org>; Sun, 11 Aug 2024 18:17:28 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.43
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1723400250; cv=none; b=FqOPFAgfHF/UmTFL17Pyx+TGzNUBD06dwXQxE2xurBQAzzcwfjm1FjqEmCegz+ycaZegBAApsdzdD0Tw3FJpEG/Gr5X6b97R9y5FqpaFD4g7qd+C9ErLis3iNxExSrBOiCKvvFLKI1mbUyrDS5jYUAQfeL9OmDthKXKDkdkJj1M=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1723400250; c=relaxed/simple;
	bh=mvi7UVUD9P+O/9ZF6mKgCskHov/XbgcktorvQahRWR4=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=EPu1VmUo7Dcp5w95mlp7RlbnAKBhEBcHAuxmWGajhsoVPkV/ONfx+HqgL9BOp0pUN5nTwI+W3bIjEwq8yXc/vj21nTVdn8+X/hVaCA8j96gEc3ZLxHwne9n1tzZVw276IrAMgsHEX4Ut1O1dKDGSZ6rM9OnaDL7vwb+DMQOCSqI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=fimxGG0c; arc=none smtp.client-ip=209.85.208.43
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-ed1-f43.google.com with SMTP id 4fb4d7f45d1cf-5a1f9bc80e3so1598455a12.2
        for <devicetree@vger.kernel.org>; Sun, 11 Aug 2024 11:17:28 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1723400246; x=1724005046; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=gHTvHF3MuIrehZRyYr5ZNOACu8Umul1Ou6KdEhJmaog=;
        b=fimxGG0cOTw2CoCulc7iZUNj9Jsipez8IdpN4qvLmCTbfNmHRqKm/w56Ycro28KPC3
         cXPdAT18RgjzbggWV8Y0EW1TRzwvsgQPorhiTiuIywceSK5GVeroM0t1CPkUfBeDIJH8
         zczAvv3wtPxxxo04NIu1+GJMuChSta0x3QRfIOqxXhVxu+HZgBqtzHW5gX2N3hoM1stT
         FadIHa6ODugMwkd8g1Wdb0yEhfcAzja1HZMa+/M0TqXEPb49MFy+H9hlyzGjA24+9c3G
         LcET/1w6KB8aHLSULvCKTUq9jXrUONAMKII9xktPMzfUSeGdUi98WUMCJVH2hk+ZGsYK
         moAw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1723400246; x=1724005046;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=gHTvHF3MuIrehZRyYr5ZNOACu8Umul1Ou6KdEhJmaog=;
        b=CICghfm4+xYPeclyOzT+8BlzbWcllRG+UtIDAddp6hqDtis/BFxJseEp4fSzU+kMl7
         NjqLEB+uQWCsE0Fea5O7GI53631kkc3gO4rQfqawLHUDKngoZQPCpcUP/9rTaIQNi490
         UaGKLbTxTjSnHh/UUFbC1/Qr2HTHWoLE7ZGQ0SW08qMHUg9U7j1uTxkqHFqLiQgwj8DP
         7nNqI6keNJBU/u5AM6Y9vMCBB/WfpmosyubdvnAMHVqMeMy3KcGrUSKwLddcd1kD+fTu
         12RAW0GuXwyFf6RzLyLbDWNxCg9YrUgz3PukNKolq1zXh8LXlxzDOU0MqwAdPLBZwOko
         FHwA==
X-Forwarded-Encrypted: i=1; AJvYcCX4ZqxUQADW+7unKFgerXL2S+a+JZXSwEy/KooCn2tBvvo/hp4+LjJgNlyYZbi0xGnIwBGtLYRP7n6hzpeT+4qdPJBHGZNKDxR8mA==
X-Gm-Message-State: AOJu0Yxhf9US0qMggJuEeir3uxyls/eRgIwHQpG88XcXJR+RJNp2Ydsd
	+sR0FwlfI+AV7ausu1rWVANIkAzO5aJsz5qBXvAFy5BRiW3J9Nqa0+ojBPoVF/gtItQ+8yE0vPt
	7
X-Google-Smtp-Source: AGHT+IEmj+sNFihQ08rrfGWG3a26LT65ynSemEMCSGFHc+3kbvAO24eNC8gMDj/QsltK+PB9TZrL9w==
X-Received: by 2002:a05:6402:1d4d:b0:5af:5342:c5c0 with SMTP id 4fb4d7f45d1cf-5bd0a61c193mr6401870a12.23.1723400245584;
        Sun, 11 Aug 2024 11:17:25 -0700 (PDT)
Received: from [127.0.1.1] ([178.197.219.137])
        by smtp.gmail.com with ESMTPSA id 4fb4d7f45d1cf-5bd1a6032c1sm1610593a12.92.2024.08.11.11.17.23
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 11 Aug 2024 11:17:25 -0700 (PDT)
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Date: Sun, 11 Aug 2024 20:17:07 +0200
Subject: [PATCH 4/6] dt-bindings: gnss: reference
 serial-peripheral-props.yaml
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20240811-dt-bindings-serial-peripheral-props-v1-4-1dba258b7492@linaro.org>
References: <20240811-dt-bindings-serial-peripheral-props-v1-0-1dba258b7492@linaro.org>
In-Reply-To: <20240811-dt-bindings-serial-peripheral-props-v1-0-1dba258b7492@linaro.org>
To: Rob Herring <robh@kernel.org>, 
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>, 
 Jiri Slaby <jirislaby@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Marcel Holtmann <marcel@holtmann.org>, 
 Luiz Augusto von Dentz <luiz.dentz@gmail.com>, 
 "David S. Miller" <davem@davemloft.net>, Eric Dumazet <edumazet@google.com>, 
 Jakub Kicinski <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>, 
 Matthias Brugger <matthias.bgg@gmail.com>, 
 AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>, 
 Linus Walleij <linus.walleij@linaro.org>, Johan Hovold <johan@kernel.org>, 
 Liam Girdwood <lgirdwood@gmail.com>, Mark Brown <broonie@kernel.org>, 
 Daniel Kaehn <kaehndan@gmail.com>
Cc: linux-serial@vger.kernel.org, linux-kernel@vger.kernel.org, 
 devicetree@vger.kernel.org, linux-bluetooth@vger.kernel.org, 
 netdev@vger.kernel.org, linux-mediatek@lists.infradead.org, 
 linux-arm-kernel@lists.infradead.org, linux-sound@vger.kernel.org, 
 Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
X-Mailer: b4 0.14.1
X-Developer-Signature: v=1; a=openpgp-sha256; l=3362;
 i=krzysztof.kozlowski@linaro.org; h=from:subject:message-id;
 bh=mvi7UVUD9P+O/9ZF6mKgCskHov/XbgcktorvQahRWR4=;
 b=owEBbQKS/ZANAwAKAcE3ZuaGi4PXAcsmYgBmuQAph8zdk2rT4gjVTPNarYAGEQtTiGQ+tPDnk
 z+uS96hib+JAjMEAAEKAB0WIQTd0mIoPREbIztuuKjBN2bmhouD1wUCZrkAKQAKCRDBN2bmhouD
 123oD/sHJtccDxWIKerFfLfEW5rsmWD8qOVMuFTY5l84PnocCY4R8F48r/EZSn68llNA+9ZmLq7
 9y4ttt7gyZ1Um1LtQGOU8iMx/qOwFZlok9n7T6s6SNEWutgQ85Xl9pxuwl5nhGZfjbRxmryrU+c
 Nbb/X57g466nS9vp5O+if35f1HiFvdexj49/cl8NRRhrz/o5rvzThuoTToV7luXIV29oZNzH5qj
 RPaQGmcInaS3hUxQLNrWSHvzUct8ekruhnD2WjqupAhLCeyHqy0yT0mthXLNwcCl8DWpHr+eCqF
 x9r5jHVkh64bqoaU4qV97KLjsUmLS45x+MLOERasuGMtosuSTgRbOgTwTeo3SxCBTppolrEU5c4
 WhioFU3jjWEFUE6EywTduzyjPM0ouHpjcpq+Vt+e6OC2YpD9VJ8uGgm3vHx7tCxd4dOg5Vwojb3
 Opv7ut5m9kkttwlw5eTtVdHGnM5aUQYUcfottSPuu9X8pbalTs1G2ao64JI+pMXQhr83YYIQie/
 IsQivDNOtCtYjJBQz0ReqTca1rXa9u/cyxjVCKnoe3ayenxbNDodPnH0cqBFjoqINN369zhGZ/r
 WW0wPHp7Jk3MNChrIcW0xpivPckAHrPgdsROnoCBU7UGO4EgsRbyY18FTfCmP3l9W6JQ45/LM7c
 Howv8GVMJJo3Mhw==
X-Developer-Key: i=krzysztof.kozlowski@linaro.org; a=openpgp;
 fpr=9BD07E0E0C51F8D59677B7541B93437D3B41629B

The "current-speed" property is not a common property for all GNSS
devices, but only to these connected with serial.  Drop the property
from the common GNSS properties schema and instead reference common
serial properties schema (for children of UART controllers).

Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>

---

This patch should probably go via Rob's Devicetree tree.  It depends on
the serial patch adding serial-peripheral-props.yaml.
---
 Documentation/devicetree/bindings/gnss/brcm,bcm4751.yaml  | 1 +
 Documentation/devicetree/bindings/gnss/gnss-common.yaml   | 5 -----
 Documentation/devicetree/bindings/gnss/mediatek.yaml      | 1 +
 Documentation/devicetree/bindings/gnss/sirfstar.yaml      | 1 +
 Documentation/devicetree/bindings/gnss/u-blox,neo-6m.yaml | 1 +
 5 files changed, 4 insertions(+), 5 deletions(-)

diff --git a/Documentation/devicetree/bindings/gnss/brcm,bcm4751.yaml b/Documentation/devicetree/bindings/gnss/brcm,bcm4751.yaml
index c21549e0fba6..089166089498 100644
--- a/Documentation/devicetree/bindings/gnss/brcm,bcm4751.yaml
+++ b/Documentation/devicetree/bindings/gnss/brcm,bcm4751.yaml
@@ -18,6 +18,7 @@ description:
 
 allOf:
   - $ref: gnss-common.yaml#
+  - $ref: /schemas/serial/serial-peripheral-props.yaml#
 
 properties:
   compatible:
diff --git a/Documentation/devicetree/bindings/gnss/gnss-common.yaml b/Documentation/devicetree/bindings/gnss/gnss-common.yaml
index 963b926e30a7..d4430d2d6855 100644
--- a/Documentation/devicetree/bindings/gnss/gnss-common.yaml
+++ b/Documentation/devicetree/bindings/gnss/gnss-common.yaml
@@ -35,11 +35,6 @@ properties:
       GPIO line, this is used.
     maxItems: 1
 
-  current-speed:
-    description: The baudrate in bits per second of the device as it comes
-      online, current active speed.
-    $ref: /schemas/types.yaml#/definitions/uint32
-
 additionalProperties: true
 
 examples:
diff --git a/Documentation/devicetree/bindings/gnss/mediatek.yaml b/Documentation/devicetree/bindings/gnss/mediatek.yaml
index c0eb35beb2ef..2b9e5be4ebf3 100644
--- a/Documentation/devicetree/bindings/gnss/mediatek.yaml
+++ b/Documentation/devicetree/bindings/gnss/mediatek.yaml
@@ -15,6 +15,7 @@ description:
 
 allOf:
   - $ref: gnss-common.yaml#
+  - $ref: /schemas/serial/serial-peripheral-props.yaml#
 
 properties:
   compatible:
diff --git a/Documentation/devicetree/bindings/gnss/sirfstar.yaml b/Documentation/devicetree/bindings/gnss/sirfstar.yaml
index 0bbe684d82e1..7e5da89a5ad7 100644
--- a/Documentation/devicetree/bindings/gnss/sirfstar.yaml
+++ b/Documentation/devicetree/bindings/gnss/sirfstar.yaml
@@ -21,6 +21,7 @@ description:
 
 allOf:
   - $ref: gnss-common.yaml#
+  - $ref: /schemas/serial/serial-peripheral-props.yaml#
 
 properties:
   compatible:
diff --git a/Documentation/devicetree/bindings/gnss/u-blox,neo-6m.yaml b/Documentation/devicetree/bindings/gnss/u-blox,neo-6m.yaml
index cd80668182b6..7d4b6d49e5ee 100644
--- a/Documentation/devicetree/bindings/gnss/u-blox,neo-6m.yaml
+++ b/Documentation/devicetree/bindings/gnss/u-blox,neo-6m.yaml
@@ -8,6 +8,7 @@ title: U-blox GNSS Receiver
 
 allOf:
   - $ref: gnss-common.yaml#
+  - $ref: /schemas/serial/serial-peripheral-props.yaml#
 
 maintainers:
   - Johan Hovold <johan@kernel.org>

-- 
2.43.0


