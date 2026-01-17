Return-Path: <devicetree+bounces-256337-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [172.232.135.74])
	by mail.lfdr.de (Postfix) with ESMTPS id 76EF0D38B41
	for <lists+devicetree@lfdr.de>; Sat, 17 Jan 2026 02:22:45 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id 49E973014E9E
	for <lists+devicetree@lfdr.de>; Sat, 17 Jan 2026 01:22:22 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 5C205292918;
	Sat, 17 Jan 2026 01:22:14 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=nexthop.ai header.i=@nexthop.ai header.b="X0McLSz5"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-dl1-f42.google.com (mail-dl1-f42.google.com [74.125.82.42])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EB4BC277029
	for <devicetree@vger.kernel.org>; Sat, 17 Jan 2026 01:22:08 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=74.125.82.42
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768612932; cv=none; b=tJVVExdQlpJlWSVZR+vRFr5amHQL8zatFt0Tb/amCLzHaQ6LQZh4xwwo2cpaR4jb3pjftfSxtX96dfoIOcRY9paX/mcJHo/j4BpF0CZ4bEcjJwbz++3M84PdCLpSx83Re0W93/RZSmMN/+gxUO3eq2qRukNDdIlO2kC8nEBJM8U=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768612932; c=relaxed/simple;
	bh=B+/+PTm75bB4jcTridEbaDWAIvys2S5q2IqRCz6uDz0=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=c4Bf1Aa6z9NTimRSmjoLo4WDb02daSrF2WGfw5zTrIOxTbQ+GRf2P7ZOoHKjzloK5Ku5tHCfDf/cXVrx8zPJW7RUAAXYYOlQgRhc9WpGjq0ZJB6UNOkHrtj7i/O1VVZZ+1EK3CnSgdjc+NO2im5hbiV8lhYgEroTgEzx6mprnm8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=nexthop.ai; spf=pass smtp.mailfrom=nexthop.ai; dkim=pass (2048-bit key) header.d=nexthop.ai header.i=@nexthop.ai header.b=X0McLSz5; arc=none smtp.client-ip=74.125.82.42
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=nexthop.ai
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=nexthop.ai
Received: by mail-dl1-f42.google.com with SMTP id a92af1059eb24-12448c4d404so1735043c88.1
        for <devicetree@vger.kernel.org>; Fri, 16 Jan 2026 17:22:07 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=nexthop.ai; s=google; t=1768612924; x=1769217724; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=gUAaJXmI/F/1af7Net/YmbJOyQv7O+4kkKkCTpHdDNs=;
        b=X0McLSz5H9iIwu//4xcfWNmAHjA20f097q+4KrRG/YZ0TxHKpwZreTrOEABWFdz5wu
         r0F9UjVzf058OfGDeGQhp0N7cl6+DCPu8Ksy1i9ThqBSTGDwmnjch3qo56XUNIwB2isl
         uevVv7/h/OsGVnMgrq96dvRzyJDPTSnupqVWfxX1utbZLmag3DICQy73NfqMdyK+3VIj
         LRLgwDQqg41F1FwWmd+Do7WncdTf0ko3XwEOP35kA+8H+V+pnwQPuBV6FlHPz7IWcD9G
         aZMTXrzsS0qiae7yBzxTayj+o3Y1trFpDeqNXCAPeF9XttaPEM5sxpckm5aLOf2cQhtZ
         6onQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1768612924; x=1769217724;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=gUAaJXmI/F/1af7Net/YmbJOyQv7O+4kkKkCTpHdDNs=;
        b=hckRM8fKyH3yg+vWLEDSMTE11bAcyy/E5nutq2XWGll2FXTLOOTozp1+duvHNpv434
         PNNKG7hfb1Ndncefa05JwnuAT9gWsdHR8oxiGC9H1rkchRJmuoQ1dl1klZ1kuMZhII4E
         ryF55KaoEYKx/1cgS897klwYnItqmf5DiOLXsMLrpP769rXet9kZ+pW+FFYHSMNoGP4g
         t7YrshMQj8q/uuh2jvvoMN9w4lOs0fTZLfKWua/4zW03rMPKtL0SuIwKFDjiLmuHnyT4
         8qLLXsqlaRGkUr4wwZiP3Mgk/RxcB/kV3kEKivEjEyBPnK6ooRreSEAKeaUoIi0Rxxcs
         rx+A==
X-Forwarded-Encrypted: i=1; AJvYcCVNM8jqiQsJGecZjiMwnN6qaxPewXUIMP1ysrFDCzZadc5JpGwYdaILc6L1H4VVPNjDr6uQH5O0fNGq@vger.kernel.org
X-Gm-Message-State: AOJu0YxETgLlzwRhi5Zbv0son7/r17AKtB42yzme+hd4/Ock7IsIwjnD
	kHnM1NA/5nRLkywwo12fvld5QvTzod8u7bu9I1WxKSF5rudU23ge9nXlpJ0c5Hnhu+w=
X-Gm-Gg: AY/fxX4JQTS660X7mZrAYca+FTdlkDPDDPAc8ZQJSwboy+UIOal1A6YBV2FYS3agTm6
	Qs3oR3jiIw4TtVfiwLaJV4Jg+uZsUzNNz5aAEPpXI6vMyTBaRk6q8W/CtMzKy/AKP6WfSsvvRMH
	BakIn20jBDH4f9lnCly7Ov7uAhD0KMQ5C0eopn/evvO1ihiHo7mvHBSJrnuzQr1s9YtFJZHTVcq
	OWE8E25pn3KEsvji/7CPrHWvm9gKfr2+Hi1WY9pTlMwCLQiMAz6uTy9YGSXfYXnRjRyRvANcsf7
	hGXW1B5ymJoT6q6qpOQrCFOAmP3ym/9y/LG7oi7HGc1wExYE34VDGfXuWXbbUSk3MI+/djcQF0S
	jVA2kqeZ8UpOnx0ZD+DdrlD54C92BhXm7PkK6tHub0BrLi3IzcgNzgO0L7PCkFFZZXKq/nd1rZH
	TX0YFCdt3eGyM=
X-Received: by 2002:a05:7022:6988:b0:11b:a514:b64f with SMTP id a92af1059eb24-1244a72ae90mr3884422c88.13.1768612924273;
        Fri, 16 Jan 2026 17:22:04 -0800 (PST)
Received: from localhost ([50.145.100.178])
        by smtp.gmail.com with ESMTPSA id a92af1059eb24-1244ac58140sm4388151c88.4.2026.01.16.17.22.03
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 16 Jan 2026 17:22:03 -0800 (PST)
From: Abdurrahman Hussain <abdurrahman@nexthop.ai>
To: Mark Brown <broonie@kernel.org>,
	Michal Simek <michal.simek@amd.com>,
	Andrew Lunn <andrew@lunn.ch>
Cc: linux-spi@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	devicetree@vger.kernel.org,
	Abdurrahman Hussain <abdurrahman@nexthop.ai>
Subject: [PATCH v2 3/3] spi: dt-bindings: xilinx: make interrupts optional
Date: Sat, 17 Jan 2026 01:21:36 +0000
Message-ID: <20260117012136.265220-4-abdurrahman@nexthop.ai>
X-Mailer: git-send-email 2.52.0
In-Reply-To: <20260117012136.265220-1-abdurrahman@nexthop.ai>
References: <20260117012136.265220-1-abdurrahman@nexthop.ai>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

This makes the driver work on platforms where interrupts are either not
provided or broken.

Signed-off-by: Abdurrahman Hussain <abdurrahman@nexthop.ai>
---
 Documentation/devicetree/bindings/spi/spi-xilinx.yaml | 1 -
 1 file changed, 1 deletion(-)

diff --git a/Documentation/devicetree/bindings/spi/spi-xilinx.yaml b/Documentation/devicetree/bindings/spi/spi-xilinx.yaml
index 4beb3af0416d..24e62530d432 100644
--- a/Documentation/devicetree/bindings/spi/spi-xilinx.yaml
+++ b/Documentation/devicetree/bindings/spi/spi-xilinx.yaml
@@ -38,7 +38,6 @@ properties:
 required:
   - compatible
   - reg
-  - interrupts
 
 unevaluatedProperties: false
 
-- 
2.52.0


