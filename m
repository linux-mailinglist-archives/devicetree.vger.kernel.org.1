Return-Path: <devicetree+bounces-266016-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id YAz0HPcilGmqAAIAu9opvQ
	(envelope-from <devicetree+bounces-266016-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 17 Feb 2026 09:12:39 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [172.105.105.114])
	by mail.lfdr.de (Postfix) with ESMTPS id E3F6C149C3A
	for <lists+devicetree@lfdr.de>; Tue, 17 Feb 2026 09:12:38 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 6B875302B817
	for <lists+devicetree@lfdr.de>; Tue, 17 Feb 2026 08:12:23 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 6B5C82E424F;
	Tue, 17 Feb 2026 08:12:15 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b="kCqAREtM"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f47.google.com (mail-wm1-f47.google.com [209.85.128.47])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6CC1F2DC77A
	for <devicetree@vger.kernel.org>; Tue, 17 Feb 2026 08:12:13 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.47
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771315935; cv=none; b=sqDk1cF4WztwzsBNJw1wbtx3EptOGgM/SfRZhFLNtdn2+oKhHbbDBg8gYQFuFuG4PIL0YxAU1ikejNeFq0vAkidsxBlZboIfAtWLh521HCx+wRBjZ2ShivBpLaIvFjh4d4QmgU/r7vp0Ll1vGZq2DQi88vcF44OMr3IXvHiJk90=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771315935; c=relaxed/simple;
	bh=fUJ50nNqzEo25SE79AYPaMX7LUUHzTN5oOiZ4xAgcTU=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
	 MIME-Version; b=qePk47as/ATZyVnZAc5N1L6hcHSfZqYF98VDretoJuXUy13b3rgUQXVfGCtOQy6u7v2SL6GaP0DDjD4ZRf9rx0bUhmjw6lhKvBqpjE/mlCoLggeNgwby4CaLCbfgHw7yxYaHgfbx2QqA0Ledy/il469pufNgUDoHPh7lWLyQT0U=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com; spf=pass smtp.mailfrom=baylibre.com; dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b=kCqAREtM; arc=none smtp.client-ip=209.85.128.47
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=baylibre.com
Received: by mail-wm1-f47.google.com with SMTP id 5b1f17b1804b1-48371119eacso36419685e9.2
        for <devicetree@vger.kernel.org>; Tue, 17 Feb 2026 00:12:13 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20230601.gappssmtp.com; s=20230601; t=1771315932; x=1771920732; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=hkC79iRLW3tdZGeGE0h/zKnK7gWxEm2JpK3spSL5h0k=;
        b=kCqAREtMYHy/35mt+VLAhNORUCi8CPSW3SH4WBjof5HePcmaMBLzji9Tr1EkIwjUNu
         8Lv47IxLWN817CnjY8hqtMeghkq85/5a4uif+Y4hTncxdEaOECWqkS+SjUXbB2T6yk3m
         1Cfmtq8XneIU0HN53bse1WMPhU0Q0JhwT0fZXpOj7MWs4v+J8PUK8uO/H6Wj69uOoqJp
         lbEiGMyKusehWy6Hbcrb4HSCG3oihzqMFA/YKnF9kCOtaeJOkMvsIERVn+/qaaoOpUAu
         09b/rhhuix4K7C0y5fkj7kIxnOArw945uksXk14EK5JnHQHG2whPquCe1w7OaprR37Or
         KQUA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1771315932; x=1771920732;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=hkC79iRLW3tdZGeGE0h/zKnK7gWxEm2JpK3spSL5h0k=;
        b=X7fBxrYoAk8xExNBm8YDaduw4d4Ly+hyGpLLjvGPEaNcHeOfIWgkse3tp01jjrXkfB
         fatUn637OxMOun1Gx+8BI+z5BjtHDNxHMa540VbnW84RMEei84NDeI4Ft6wV1nxXrmTF
         4haiiGf58zxa2lMif/SlO/pSBzhHbbLCRWpf+GjeEiocb1fPgl9StgGftp+ZAnJ2eBmO
         uypbczEQGUx2ZzUNe8kTaJkYa1br18oDhYizCjXSvW2Wo6GNZ6pMP46I7nd1crsT8okt
         VoIyuiQxhNbr45oDESydZjD0Tu9rqadzf+KMcsQyhtPezFiKKafpMZUjgFxEIHqsLrBn
         //1Q==
X-Forwarded-Encrypted: i=1; AJvYcCX5bt5PnfdbcE9K+ppy7jALmLGnYyHa1WmAwMmz2LnwHrIkwyAwtLiWDZ+0sNNWznNJ0tbjUrDuNqok@vger.kernel.org
X-Gm-Message-State: AOJu0Yy3SIwLZCirAY3DWI7bG/t5LuZYYZYd13EKYKaUNDlJvlNM7QDN
	afUxUNiuUZQT2i3Ba1UWVXFONnEnig+l4juLvjNlTjwcy/rs9JdA3Xy3xdD8XQErQJQ=
X-Gm-Gg: AZuq6aIJo4JaNF+HCJVzi69SsyD0ITxMfyjPqETprThZftlAJeRgxiX3tJfNNuUMI29
	JlKGDp0LAhaSKwT21pQ5Oy70mnLUxyp5JReAXwbz9hiPJNy2wfSNfKkoZBpuK3Iq6l7azZzClIz
	wXKcJSGxkc9DbHyjq7vE/79HZ5nk7o1m+xyz8BEl2NggSV8ZUe/1ufv+CTAJhNuc65SbE/6/16V
	6jlMl7ju/odREHPyMbqSu7Y4EPPNDTrtWO1H1yTvjk/eisQHMzRIFwfdQR36jXhi2tFdAXoVXtm
	4wbung8pw8KjVaWRFZUx0sHsd+iKdzkYMcKIbyR+6Hw5M8GH5waXhnvYS/WTRVOo9If4Rpg4X30
	W2OKLa1+Dov76rh154FD6YhXkYcY3nmo6BFY9T0byG7ZnjmKh6O/Gr8up0x190tBaOCGbsa/F7r
	u6wqZok54oZ9xsNX24Bjx/Zoz+0JAMT4TCEemM4ryKRR5Ry4Z2uWHCiNRZB4Ka8e6ho5BxA8guc
	z4y6wnkZQ==
X-Received: by 2002:a05:600c:1f8d:b0:47e:e87b:af8 with SMTP id 5b1f17b1804b1-48373a5ba01mr233760545e9.21.1771315931619;
        Tue, 17 Feb 2026 00:12:11 -0800 (PST)
Received: from silence.. ([46.10.240.40])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-43796a5d156sm35757690f8f.5.2026.02.17.00.12.10
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 17 Feb 2026 00:12:11 -0800 (PST)
From: Stoyan Bogdanov <sbogdanov@baylibre.com>
To: jbrunet@baylibre.com,
	linux@roeck-us.net,
	robh@kernel.org,
	krzk+dt@kernel.org,
	conor+dt@kernel.org,
	corbet@lwn.net,
	skhan@linuxfoundation.org
Cc: linux-hwmon@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-doc@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	Stoyan Bogdanov <sbogdanov@baylibre.com>,
	Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>
Subject: [PATCH v3 2/3] dt-bindings: hwmon: pmbus/tps1689: Add TPS1689
Date: Tue, 17 Feb 2026 10:12:02 +0200
Message-Id: <20260217081203.1792025-3-sbogdanov@baylibre.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20260217081203.1792025-1-sbogdanov@baylibre.com>
References: <20260217081203.1792025-1-sbogdanov@baylibre.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [1.34 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_CONTAINS_FROM(1.00)[];
	R_MISSING_CHARSET(0.50)[];
	R_SPF_ALLOW(-0.20)[+ip4:172.105.105.114:c];
	R_DKIM_ALLOW(-0.20)[baylibre-com.20230601.gappssmtp.com:s=20230601];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	MIME_TRACE(0.00)[0:+];
	TAGGED_FROM(0.00)[bounces-266016-lists,devicetree=lfdr.de];
	RCPT_COUNT_TWELVE(0.00)[13];
	RCVD_TLS_LAST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	DMARC_NA(0.00)[baylibre.com];
	ASN(0.00)[asn:63949, ipnet:172.105.96.0/20, country:SG];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[sbogdanov@baylibre.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[baylibre-com.20230601.gappssmtp.com:+];
	RCVD_COUNT_FIVE(0.00)[5];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	TO_DN_SOME(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[tor.lore.kernel.org:helo,tor.lore.kernel.org:rdns,qualcomm.com:email,baylibre-com.20230601.gappssmtp.com:dkim]
X-Rspamd-Queue-Id: E3F6C149C3A
X-Rspamd-Action: no action

Add device compatible support for TPS1689

Signed-off-by: Stoyan Bogdanov <sbogdanov@baylibre.com>
Acked-by: Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>
---
 .../devicetree/bindings/hwmon/pmbus/ti,tps25990.yaml          | 4 +++-
 1 file changed, 3 insertions(+), 1 deletion(-)

diff --git a/Documentation/devicetree/bindings/hwmon/pmbus/ti,tps25990.yaml b/Documentation/devicetree/bindings/hwmon/pmbus/ti,tps25990.yaml
index f4115870e450..973ee00c2c49 100644
--- a/Documentation/devicetree/bindings/hwmon/pmbus/ti,tps25990.yaml
+++ b/Documentation/devicetree/bindings/hwmon/pmbus/ti,tps25990.yaml
@@ -16,7 +16,9 @@ description:
 
 properties:
   compatible:
-    const: ti,tps25990
+    enum:
+      - ti,tps1689
+      - ti,tps25990
 
   reg:
     maxItems: 1
-- 
2.34.1


