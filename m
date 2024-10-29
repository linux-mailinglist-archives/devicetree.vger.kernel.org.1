Return-Path: <devicetree+bounces-116937-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 851E39B46A6
	for <lists+devicetree@lfdr.de>; Tue, 29 Oct 2024 11:22:51 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id B71931C212F0
	for <lists+devicetree@lfdr.de>; Tue, 29 Oct 2024 10:22:50 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 9BFF320494B;
	Tue, 29 Oct 2024 10:22:46 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="pB0Z9nMp"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f44.google.com (mail-wm1-f44.google.com [209.85.128.44])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D12872040A2
	for <devicetree@vger.kernel.org>; Tue, 29 Oct 2024 10:22:43 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.44
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1730197366; cv=none; b=SeeCiubQiNXBL+b9inKvV83pzhILLPHA05292pCut/rA6wTPp9N9DDCe9SlF/iukk1e0I48UjLkmsdipX8UMsNW4BoHXGfM5MuamSuCskM3JpvD2YTuIAXDd3kuvpbVBdZss7dwyT4PiZPuDVCN2ZvqXs25KvWtTqCvRw1EYZS4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1730197366; c=relaxed/simple;
	bh=u/UBRbNPk2JvFCs/uUQ6y7UKEf8R+AmrzDHohRXqamI=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=hKSwinfJUVuaelEaTbE+s9e53+5jsfRO0H/AlmMfzbXrcP5KxNThNtrh6mGafCUmrXqnUP464FWV3ZEACfk6zlL8vkmG/8qYmytG1bJ6dWgC0b8aSB8WIZB2Gttmop+UgTxVWqqvBXjZN7/5S7vL2ca2QVik68LONeyG9ssNa70=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=pB0Z9nMp; arc=none smtp.client-ip=209.85.128.44
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wm1-f44.google.com with SMTP id 5b1f17b1804b1-4315abed18aso50333545e9.2
        for <devicetree@vger.kernel.org>; Tue, 29 Oct 2024 03:22:43 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1730197362; x=1730802162; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=iku2aazVoaifn2qwZ8do62mCbu6cZo7YQepKnixIbc4=;
        b=pB0Z9nMpfEtVcIbc5pLbsuFoUbHSLTGULx45KanDNxzjL/4sxNUlveC2XQ7ildqw08
         4rcwNqqE1TvY/2xFu0zlq1XWgsT0Yg3CF4MH/9dR/PI8+MZnesmUpHsSEey3do0maskX
         GH9BjNjwEFj5EG8cCcJTBYPGZzQmb8/qMjbWapfqvDdXD9n11LzHyhXbvsTjvRrWatBC
         t6jS81ebeA5cHayk3jZ1Z0azM6aLo3bYkGYrwJVgXGrwYGB1lSDtZvdn4+z1HjcxWRYx
         D78UwKdlhkZGuwUVq3cs7DoRIdC0f4FQ0LCJ7pJj3nZUZPCNSkoln7uXXsgeSaDqELKG
         UYIQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1730197362; x=1730802162;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=iku2aazVoaifn2qwZ8do62mCbu6cZo7YQepKnixIbc4=;
        b=Rr2JALxzZavDbPxo1NVim6yBGQsgV9OsxQdby34oOyXSTTryofDGxN3qLMkFzResKY
         hzoQEEEBEt0Q3nIBIxzrcscRbWGXTpuClNL+OoGeOjrbQOdnQFYDaA5421N19fMQN4XG
         +nClushQdD29sUmuQrHqmnNTkNg1pmK4/HYlaNqYwRjMNlB6w7kK2LyNrL2sBe6POEBj
         a+ZxD6hO1UU6uNHYGiIPrRAqY7cd919zrml18eRvwdREROge8vpSSeglLVhVaNwbgPA7
         LeXkUaWBvq0PKpTz4bA8DPpFMLRn67h/nyXwEtyqRG2cmi4Z4NW9rlMEZEHqqYEo3+HN
         h2Ng==
X-Forwarded-Encrypted: i=1; AJvYcCUsFqcNZodw/nCA1UJRRJNPUf9Slazh5jKpI++1MCb5vNWouM8gwJrC0J67ix9GYS0HMe9z/fx94Ek2@vger.kernel.org
X-Gm-Message-State: AOJu0Yyohs5t7HfhAj3WCeZ9ccUySd/Dy4hI151zxHBzfBuf0VEbKYrb
	Eax4b2kLAzjG5UxicV/zI1PKZ2bt4a0Dlks1ArauZldb1KFpIOQ4hdw2pcGiyM4=
X-Google-Smtp-Source: AGHT+IFJA0rf9yL1/4hL0/WSC0JKP3mxHD/OdeY53wfOUkq+NYJEyeFtfI5Od5uPy5TfvM1U2qN/+g==
X-Received: by 2002:adf:e38c:0:b0:37d:47e2:5e30 with SMTP id ffacd0b85a97d-380611e715dmr8476087f8f.42.1730197362162;
        Tue, 29 Oct 2024 03:22:42 -0700 (PDT)
Received: from tudordana.roam.corp.google.com ([79.115.63.43])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-38058b47a86sm12084498f8f.53.2024.10.29.03.22.40
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 29 Oct 2024 03:22:41 -0700 (PDT)
From: Tudor Ambarus <tudor.ambarus@linaro.org>
To: peng.fan@oss.nxp.com,
	m.felsch@pengutronix.de
Cc: pratyush@kernel.org,
	mwalle@kernel.org,
	miquel.raynal@bootlin.com,
	richard@nod.at,
	vigneshr@ti.com,
	robh@kernel.org,
	krzk+dt@kernel.org,
	conor+dt@kernel.org,
	shawnguo@kernel.org,
	s.hauer@pengutronix.de,
	kernel@pengutronix.de,
	festevam@gmail.com,
	linux-mtd@lists.infradead.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	imx@lists.linux.dev,
	linux-arm-kernel@lists.infradead.org,
	Peng Fan <peng.fan@nxp.com>,
	Tudor Ambarus <tudor.ambarus@linaro.org>
Subject: [RESEND PATCH v4 1/2] dt-bindings: mtd: jedec,spi-nor: add optional vcc-supply
Date: Tue, 29 Oct 2024 10:22:37 +0000
Message-ID: <20241029102238.44673-1-tudor.ambarus@linaro.org>
X-Mailer: git-send-email 2.47.0.163.g1226f6d8fa-goog
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

From: Peng Fan <peng.fan@nxp.com>

Introduce optional vcc-supply property, SPI NOR flashes needs power supply
to work properly. The power supply maybe software controlable per board
design.

Acked-by: Rob Herring (Arm) <robh@kernel.org>
Signed-off-by: Peng Fan <peng.fan@nxp.com>
Signed-off-by: Tudor Ambarus <tudor.ambarus@linaro.org>
---
v4: no changes

 Documentation/devicetree/bindings/mtd/jedec,spi-nor.yaml | 4 ++++
 1 file changed, 4 insertions(+)

diff --git a/Documentation/devicetree/bindings/mtd/jedec,spi-nor.yaml b/Documentation/devicetree/bindings/mtd/jedec,spi-nor.yaml
index 6e3afb42926e..335f8204aa1e 100644
--- a/Documentation/devicetree/bindings/mtd/jedec,spi-nor.yaml
+++ b/Documentation/devicetree/bindings/mtd/jedec,spi-nor.yaml
@@ -96,6 +96,10 @@ properties:
       If "broken-flash-reset" is present then having this property does not
       make any difference.
 
+  vcc-supply:
+    description:
+      Supply for the SPI NOR power.
+
   spi-cpol: true
   spi-cpha: true
 
-- 
2.47.0.163.g1226f6d8fa-goog


