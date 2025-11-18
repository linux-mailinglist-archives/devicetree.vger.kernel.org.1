Return-Path: <devicetree+bounces-239875-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ams.mirrors.kernel.org (ams.mirrors.kernel.org [IPv6:2a01:60a::1994:3:14])
	by mail.lfdr.de (Postfix) with ESMTPS id 93CC2C6A3BF
	for <lists+devicetree@lfdr.de>; Tue, 18 Nov 2025 16:10:41 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ams.mirrors.kernel.org (Postfix) with ESMTPS id EAF923835AD
	for <lists+devicetree@lfdr.de>; Tue, 18 Nov 2025 15:09:28 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id AD658364E81;
	Tue, 18 Nov 2025 15:08:59 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="XsU9HEUP"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f52.google.com (mail-wm1-f52.google.com [209.85.128.52])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D7D7E357719
	for <devicetree@vger.kernel.org>; Tue, 18 Nov 2025 15:08:57 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.52
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763478539; cv=none; b=adwTQ7R3YBDvrrrCTqQZg4lgu4QD4cvPPUFeAg9SKUc0+4PElQWEB3PoPhDJpdJmAsqhZilrsscjDa5fEWJmIGErLzlAZNMm8F86h0oR+8KuseCJu67qVYyKJVeJbRYw3IStyu5uoWdfS1/E4gI3JlEuJVaz+kZ/e9FioTLq7Qc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763478539; c=relaxed/simple;
	bh=j404RXFCjfpGOevkkPY/EcJ8Zbu+jTiLAdexv35SvpM=;
	h=From:Subject:Date:Message-Id:MIME-Version:Content-Type:To:Cc; b=aE/Xw/7O7GYmeWqRUXGvil0CYdLzXiHgvpQ2pPEk4aaGA0dqJYQksyZJ/CzlAGFBcHrNDeEDYXTAwgshoDNK91y7WvSxz0kJF2uDnC3CKRXcQxX2Yjfr6p2el9zHQcDgSoMSV+x9n3rMCitOHhY0yFjXRm4KfTPfRn8HCXBcIo4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=XsU9HEUP; arc=none smtp.client-ip=209.85.128.52
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-wm1-f52.google.com with SMTP id 5b1f17b1804b1-4779a4fc95aso20288485e9.1
        for <devicetree@vger.kernel.org>; Tue, 18 Nov 2025 07:08:57 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1763478536; x=1764083336; darn=vger.kernel.org;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:from:to:cc:subject:date:message-id:reply-to;
        bh=6WPvFi51hSTGug9x4SN8j0sL2LdGeBDK68HLUzdBwf0=;
        b=XsU9HEUPdYwbM/Nkl7KJ8OlHrMY95BEivqyv031cpGr5gk2ot52IUD8eGXHqhmXE8c
         h/CJqfn3ZlRQyNyhimG26jRXvMqno471mB1DXo0yN7r80TJOmZl1I2E5uYnFxpA0EBIh
         w6w2/lP8MSn6kvOjzGqH3jmU8msH4+mAMLNixTuQRcvm9Gm1mt70oBk9Aa4KnU70h0BL
         F7gKOQ+y54oEWmDHH0E9nUK2HBhBYCfPVbIrApzCAeSOHM8qvcSAzf9ObEUKRkqrHgqf
         Bey9HXMdscHemdEcu8qMEcytwxEbX1gAoft7j4LcY2i74C1RlxN5ZlBgq2kDgRwOsAa/
         O2HQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1763478536; x=1764083336;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=6WPvFi51hSTGug9x4SN8j0sL2LdGeBDK68HLUzdBwf0=;
        b=TxV8QyKrhAfCSW5Oufx0bn4xN9zU0GRXiZ31VKH6F5Ub6tlALatwzItw6GsD/R6PxW
         Fw0T/17YavlBnVPJtMLK3uHDauM7zVcvatFooUTGVhRSAKUmcva9BAWD8hcBP3EEheh3
         IYPACjqpAeEDdY9t+ucRfdYstdvozpVE+ot/wjA/SyQkLZNSDoHzPlF1/1HVIsOZRzos
         kF1fjNTmbXx72lx3XzjgwwYBnjR4mhW/War64CQ6f7E5g8juc/LEBBAJ2JHfQPMTVRS8
         2q7jebHCeBeeBImqw+OQHZ8/tX5jXZstEQDNl0RLeVGNvcDiRRhugt+h2x7tnU+8jyQH
         Fd5g==
X-Forwarded-Encrypted: i=1; AJvYcCUk0W960kEWnl2nnYwuIXuPii/KrN5R6eoYDX2u7Bf7hyiAT4hMwBJaMxn1fimwj++ue45ojkXm8y5J@vger.kernel.org
X-Gm-Message-State: AOJu0YyH6fkZaul5ME8eO+RgYlWgZp6h9N5XDk/5J/wsdONOaHWhRAXm
	Qtg9LXHoAcRInznFOIyaSGrQ4+Up0dqp8eWhaTaZ3vUHcN7YZyMW5w/1
X-Gm-Gg: ASbGncvnk2j6uXQ31gHuFpAUzbiR88Kbdx1MtRR/VDJv5zu9cqlCd62cdbcqCcF2DhF
	wcv3/uZ18kC0tC4jIepP6OhF//raTYmwKAl/+cI3WikjcW/wtTQqu33lFTgHlO3CtZlpL1o9d1Z
	aCwf32UewUcJvLyebg3fkVilWEXC7fKRXYOjQigRH1YEP0i5C6qyD9up1QFBAufReA51Po42jCk
	WnFKTqlLJfbHoW4pGU0sy0hj+wOGkp2jMbL1wb2EPdN7piMPzs/I+FrsjXZ8FuJCdsA3XD6f1R6
	kcwuyhlv8PevB9U/Tz645rrYhBh/5Fe0dhut7Iw7nodaqvo2MReFYRlVLxc2KdkrRs62w46rdq4
	MpIg/VCBfbR3avfLLDYGo6UVgsiHzag2utO/EwdRQVV7Osw8mnanXCTB5gGKiDU1khydJPbhcv+
	emav2MvGaa3CxMso2cxQyiUTz3Gl3Kh3PpOua6VeYKy2Fkh8K722N099CxB2ne6znFxqE=
X-Google-Smtp-Source: AGHT+IF/6kXbFEjAEd63GYihy5Q8u6mMF1GK/dF5UenuZ7Kz2Ra3089BukNPLHYwu6f1QH+eFEoqTg==
X-Received: by 2002:a05:600c:4592:b0:46e:3b58:1b40 with SMTP id 5b1f17b1804b1-477a94acde4mr37754535e9.4.1763478535789;
        Tue, 18 Nov 2025 07:08:55 -0800 (PST)
Received: from localhost (2a02-842a-9b20-0d01-432b-0dab-f195-2b25.rev.sfr.net. [2a02:842a:9b20:d01:432b:dab:f195:2b25])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-477a97213b8sm19970405e9.1.2025.11.18.07.08.54
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 18 Nov 2025 07:08:55 -0800 (PST)
From: =?utf-8?q?Cl=C3=A9ment_Le_Goffic?= <legoffic.clement@gmail.com>
Subject: [PATCH v9 0/7] Add DDR4 memory-controller bindings and factorise
 LPDDR and DDR bindings
Date: Tue, 18 Nov 2025 16:07:56 +0100
Message-Id: <20251118-b4-ddr-bindings-v9-0-a033ac5144da@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit
X-B4-Tracking: v=1; b=H4sIAMyLHGkC/3WNywqDMBBFf0WybsoYjY+u+h+li8QZdaDGkpTQI
 v57oyuhdHkunHMXEcgzBXHJFuEpcuDZJWhPmehG4waSjImFAqWhVUraUiJ6adkhuyHIOq9yKgh
 MryuRrKennt978XZPPHJ4zf6zH8R6W/+3Yi1B2gJRAekSbXUdJsOPczdPYmvF5uAX8Os3ye+px
 KaDXBsNR39d1y8IwXSa7gAAAA==
X-Change-ID: 20250922-b4-ddr-bindings-7161e3e0af56
To: Krzysztof Kozlowski <krzk@kernel.org>, Rob Herring <robh@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Julius Werner <jwerner@chromium.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Maxime Coquelin <mcoquelin.stm32@gmail.com>, 
 Alexandre Torgue <alexandre.torgue@foss.st.com>
Cc: linux-kernel@vger.kernel.org, devicetree@vger.kernel.org, 
 linux-stm32@st-md-mailman.stormreply.com, 
 linux-arm-kernel@lists.infradead.org, 
 =?utf-8?q?Cl=C3=A9ment_Le_Goffic?= <legoffic.clement@gmail.com>, 
 =?utf-8?q?Cl=C3=A9ment_Le_Goffic?= <clement.legoffic@foss.st.com>, 
 Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
X-Mailer: b4 0.15-dev-86b30

Introduce DDR4 bindings, which is the first DDR type to be added.
As the DDR and LPDDR use the same properties, factorise them in a
sdram-props bindings file and rename lpddr-channel into sdram-channel.

Changes in v9:
- In the ddr4 compatible pattern :
    s/ddrX-YYYY,AAAA...,ZZ/ddrX-YYYY,AAAA...-ZZ/
    The comma before the "ZZ" part has been replaced with a minus.
- Add information about how the compatible is constructed in the patch 2:
  "dt-bindings: memory: introduce DDR4"
- Add Krzysztof Kozlowski's trailer on patch 1
- Link to v8: https://lore.kernel.org/r/20250930-b4-ddr-bindings-v8-0-fe4d8c015a50@gmail.com

Changes in v8:
- Globally fix typo/grammar in SDRAM props bindings:
  - DDR4 bindings compatible description:
    - s/lpddrX,YY,ZZZZ/lpddrX-YY,ZZZZ/
    - s/in lower case/lowercase/
    - s/statis/static/
    - s/~/-/
  - Add an "s" where a plural form is used (e.g. registers) in the DDR4
    binding revision-id description
- Fix the number of chars that an SPD can contain in the part number
  field.
- Link to v7: https://lore.kernel.org/r/20250922-b4-ddr-bindings-v7-0-b3dd20e54db6@gmail.com

The v7 is a subset of the v6 and other prior versions, split to simplify
the review and merging process.

Changes in v7:
- None
- Link to v6: https://lore.kernel.org/all/20250909-b4-ddrperfm-upstream-v6-5-ce082cc801b5@gmail.com/

Signed-off-by: Clément Le Goffic <legoffic.clement@gmail.com>
---
Clément Le Goffic (7):
      dt-bindings: memory: factorise LPDDR props into SDRAM props
      dt-bindings: memory: introduce DDR4
      dt-bindings: memory: factorise LPDDR channel binding into SDRAM channel
      dt-binding: memory: add DDR4 channel compatible
      dt-bindings: memory: SDRAM channel: standardise node name
      arm64: dts: st: add LPDDR channel to stm32mp257f-dk board
      arm64: dts: st: add DDR channel to stm32mp257f-ev1 board

 .../memory-controllers/ddr/jedec,ddr4.yaml         | 34 ++++++++
 .../memory-controllers/ddr/jedec,lpddr-props.yaml  | 74 -----------------
 .../memory-controllers/ddr/jedec,lpddr2.yaml       |  2 +-
 .../memory-controllers/ddr/jedec,lpddr3.yaml       |  2 +-
 .../memory-controllers/ddr/jedec,lpddr4.yaml       |  2 +-
 .../memory-controllers/ddr/jedec,lpddr5.yaml       |  2 +-
 ...lpddr-channel.yaml => jedec,sdram-channel.yaml} | 40 ++++++---
 .../memory-controllers/ddr/jedec,sdram-props.yaml  | 94 ++++++++++++++++++++++
 arch/arm64/boot/dts/st/stm32mp257f-dk.dts          |  7 ++
 arch/arm64/boot/dts/st/stm32mp257f-ev1.dts         |  7 ++
 10 files changed, 173 insertions(+), 91 deletions(-)
---
base-commit: e7c375b181600caf135cfd03eadbc45eb530f2cb
change-id: 20250922-b4-ddr-bindings-7161e3e0af56

Best regards,
--  
Clément Le Goffic <legoffic.clement@gmail.com>


