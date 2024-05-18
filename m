Return-Path: <devicetree+bounces-67638-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id D3E428C9223
	for <lists+devicetree@lfdr.de>; Sat, 18 May 2024 22:07:34 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 10EBE1C20AB7
	for <lists+devicetree@lfdr.de>; Sat, 18 May 2024 20:07:34 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B1BC2482C3;
	Sat, 18 May 2024 20:07:30 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="BAcTsGf/"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ed1-f49.google.com (mail-ed1-f49.google.com [209.85.208.49])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EBA0253389
	for <devicetree@vger.kernel.org>; Sat, 18 May 2024 20:07:28 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.49
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1716062850; cv=none; b=EtfwWUPcFaN0ykQJwFlMzE6rlcQ9xssRi9Zy+RPNO7vn8eaovaZPX/lDnH9giw33L0f7nFAVLRcbOjBuM/KkRX8ixIqGgypXdrqLMk+NHwvdft5hXDZDEaIulAC7fQP/UQXj7TRUjX5hZ1/UAKQOdT1R15uxbwrGm/iz1E+DnS4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1716062850; c=relaxed/simple;
	bh=upRzF8AIN/Q5OY07S+xJjxfXHrEphrUKI2SoEzYLscQ=;
	h=From:Subject:Date:Message-Id:MIME-Version:Content-Type:To:Cc; b=j40TQu8RpwneAaGK0jy0vevO+11xjqH9MVCm6ENGq91epT7urc/29qv56wA+MlzXO46fcfGR3+tmT86FEturi0/cfWUwSgpETkGdHSSR/naCetHCfKUAVwlleYZYbWabvQmGj7kKyUONj9+LBPaqOEj2oTQj7F/bc5H+F3LCl1I=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=BAcTsGf/; arc=none smtp.client-ip=209.85.208.49
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-ed1-f49.google.com with SMTP id 4fb4d7f45d1cf-574bf7ab218so6444492a12.1
        for <devicetree@vger.kernel.org>; Sat, 18 May 2024 13:07:28 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1716062847; x=1716667647; darn=vger.kernel.org;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:from:to:cc:subject:date:message-id:reply-to;
        bh=OkD9GWsP4x8KLdTFqbr+JvMY1DMJprR74Z3kYboYAN0=;
        b=BAcTsGf/atMVvkL4dhgt7/Z7fZg1ogdNqy8mstLwktXDzmQPIonrZJDFhQNCgFk99K
         9RA4QSWzha1S1hVfK3C+FFc6LiDRz0J7Qu9SYfVgSfEWVAx+wlkAv8CtBMa5YTf8lgb2
         MJTk6E4BBVlek3QUdoxYeRbFnG5Dm/3zD+KPp1Z1xJPJdi1uozP6gOeki6619vv8DiLJ
         8iKwU9ebZPU0IMBwEbg1Vl7gevZIrbLh3kqTAw30XBBZzCKC80KfDGmtesfEW/O3IP8E
         9kgjWu+r2ssRTVciQkv6DSEMzt479WuwxFM53u/sjPApxn8Lbrk5exNvkBu4VbERFTDA
         7FsA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1716062847; x=1716667647;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=OkD9GWsP4x8KLdTFqbr+JvMY1DMJprR74Z3kYboYAN0=;
        b=LRlEhRruwz63eTDC9SqjzqPLP/FYkYp9IW+bQcT+74iYvWm/IO4csZLMxDAgtndqg7
         esZXZZ1wZfWJl9W+V8GZC80kTJdWuzLBxXHU8r5bK5rf530OEsnDEuC/yJTzCS64lZ+2
         FRufyMz3DirJJRXW8lvIWBU1SO45qT78fbLc50t4Nx1g6zE0U6wZ1bv3Ni8MykcNm/bB
         s8CQI2pQ9FLcY84yfsihmagjvQGciRQj7w36tCnDx95Dm6BMmRrqDNcumLBvmY31gc3S
         p0BiqFucHz5UbNYZlM3buAp6Phx7j1Xyo8rp9pjsZixkZ1sxKk26t9SStc3kBKsv//+F
         0f5Q==
X-Gm-Message-State: AOJu0YyrEiO0+MObExuGAyZjI7BDlfFGysDydjDohS4uPidrYA0QOijI
	a5UAKglAo0WkLdd4ufGZrtWb4QXUgzwMPbGYeS4sm5I8tZGFPVTxiPxJn3JErA0=
X-Google-Smtp-Source: AGHT+IESdlc+k90/W3VBVuiBwYOl11KjhwZ+k8fGWrRRTUh+dWej7Z4noE3jUPJ6PbwWBwViyR3xvg==
X-Received: by 2002:a17:907:9405:b0:a5a:5b8b:d14 with SMTP id a640c23a62f3a-a5a5b8b0de6mr1473464466b.40.1716062847179;
        Sat, 18 May 2024 13:07:27 -0700 (PDT)
Received: from [127.0.1.1] ([178.197.206.169])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-a5a17b177desm1248364566b.207.2024.05.18.13.07.25
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 18 May 2024 13:07:26 -0700 (PDT)
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Subject: [PATCH 0/5] ti: fix dtbs_check for some syscon bindings and DTS
 node
Date: Sat, 18 May 2024 22:07:15 +0200
Message-Id: <20240518-dt-bindings-ti-soc-mfd-v1-0-b3952f104c9a@linaro.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-B4-Tracking: v=1; b=H4sIAHMKSWYC/x3MMQqAMAxA0atIZgO2WBSvIg61iZrBKo2IULy7x
 fEN/2dQTsIKQ5Uh8S0qRywwdQVh83FlFCoG29i2caZHunCWSBJXxUtQj4D7QuiDNcZ1PXXeQYn
 PxIs8/3ic3vcDeUv9VGgAAAA=
To: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, 
 Kishon Vijay Abraham I <kishon@kernel.org>, 
 Roger Quadros <rogerq@kernel.org>, Nishanth Menon <nm@ti.com>, 
 Vignesh Raghavendra <vigneshr@ti.com>, Tero Kristo <kristo@kernel.org>
Cc: devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
 linux-arm-kernel@lists.infradead.org, 
 Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
X-Mailer: b4 0.13.0
X-Developer-Signature: v=1; a=openpgp-sha256; l=1200;
 i=krzysztof.kozlowski@linaro.org; h=from:subject:message-id;
 bh=upRzF8AIN/Q5OY07S+xJjxfXHrEphrUKI2SoEzYLscQ=;
 b=owEBbQKS/ZANAwAKAcE3ZuaGi4PXAcsmYgBmSQp1r/e4Ha6EnRZ6q7sWVy9U84Mqw8uX839Sz
 Kc9PzcyVmKJAjMEAAEKAB0WIQTd0mIoPREbIztuuKjBN2bmhouD1wUCZkkKdQAKCRDBN2bmhouD
 157rD/0c0EbhQoZsqgLPzXK8xtZQq/46N8NFDpfnMkrbA3cv0vRntrtz7SDweP1Zo8ay/FWUubJ
 Oz26+LbctDGMB3qdoSNFEw9qOZUPPutggt6Yz6bJf71saupytmE73oXFzg3uks08UJNctX0Cz1T
 3qevmqXLfWtzERySNfG21A+PZrAFqqBIk7LO98DwpuSp2gi6pDpypzLGhR16mfwuz3q59AS4Rd7
 G0IdVqpldR5h2mvwLTvRu6srdKVN6kiixH+woODeZGDyxonJf9xSF3zkNOfwuu97IPspxji/g9a
 eLx1H6BnKcK3zvWu8wkpCOWNuH/cHVouWcS2e16l8Ul0Gi9NGO9fhyO10raPArLD+r6NXNC4QKX
 KmfS0uJ2X+144zotqpZGqgjip3iGSQ4kWU3h54ymfF/hET3YKoY+rOogjn0N//h6EiNsZE2xCoh
 6wR3uDv8r6ywSoYwxar8P+uK9CQBNPwPX/dJaUGDh7op3Uo5JUuqVwSArz6k9cH39KnQggeB2lI
 5YRbTYlimc1D0v0H/shlxZLLwL7cE6pWdWW2+0HoVjLGkK4y3U4+BJiaaqXaixixgwYnHzvqov2
 avjGlJeUtgsfB72Ixssd40hJMizgTdxjz2QIFeZIr4s0FuA+uzc0PoAnIfak9jSihzKauYLgWn6
 P9dlCPqFfnectkw==
X-Developer-Key: i=krzysztof.kozlowski@linaro.org; a=openpgp;
 fpr=9BD07E0E0C51F8D59677B7541B93437D3B41629B

Hi,

I am in the process of fixing syscon/simple-mfd bindings (to be posted
separately) and found set of issues in TI looking independent of my
series.  Please apply via TI SoC.

Best regards,
Krzysztof

---
Krzysztof Kozlowski (5):
      dt-bindings: soc: ti: am62-system-controller: add AM62 syscon
      dt-bindings: soc: ti: am645-system-controller: add AM654 syscon
      arm64: dts: ti: k3-am62: add dedicated wakeup controller compatible
      arm64: dts: ti: k3-am65-mcu: add dedicated wakeup controller compatible
      arm64: dts: ti: k3-am62a: use a specific MCU controller compatible

 .../bindings/soc/ti/ti,am62-system-controller.yaml | 77 ++++++++++++++++++++++
 .../soc/ti/ti,am654-system-controller.yaml         | 60 +++++++++++++++++
 arch/arm64/boot/dts/ti/k3-am62-wakeup.dtsi         |  2 +-
 arch/arm64/boot/dts/ti/k3-am62a-wakeup.dtsi        |  2 +-
 arch/arm64/boot/dts/ti/k3-am65-mcu.dtsi            |  2 +-
 5 files changed, 140 insertions(+), 3 deletions(-)
---
base-commit: e032bb82c315d2317a80506195d16ce4308d8cf7
change-id: 20240518-dt-bindings-ti-soc-mfd-ac211578d7a5

Best regards,
-- 
Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>


