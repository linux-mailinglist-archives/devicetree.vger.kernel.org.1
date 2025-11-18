Return-Path: <devicetree+bounces-239602-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from dfw.mirrors.kernel.org (dfw.mirrors.kernel.org [142.0.200.124])
	by mail.lfdr.de (Postfix) with ESMTPS id DC032C67390
	for <lists+devicetree@lfdr.de>; Tue, 18 Nov 2025 05:12:39 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.mirrors.kernel.org (Postfix) with ESMTPS id B2E1F4E1778
	for <lists+devicetree@lfdr.de>; Tue, 18 Nov 2025 04:11:18 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 11B1E27703C;
	Tue, 18 Nov 2025 04:11:11 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="Bo1CJMYm"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pj1-f51.google.com (mail-pj1-f51.google.com [209.85.216.51])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8A50E272E5A
	for <devicetree@vger.kernel.org>; Tue, 18 Nov 2025 04:11:09 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.216.51
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763439071; cv=none; b=ggoHvY6GTmHnxDQxfdqcdljsapYznNYnvyL4TpQD2n2Z4GKeGr7vmHM7lb3Y55PMD6lQ8evFfG1a6rzy9NpsOtdeRfeZX+40aFXYOra3AZ7bHw4bmUzgc2GLV/7g44Y0CzyPhFy2byM5XIVeerT3qhh3SvdsmBX/PFWMDSwy7nE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763439071; c=relaxed/simple;
	bh=jDZzWk6gyfWt2fgrpXTLUtkG7WmaVNL/UFdkyV6A8DA=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
	 MIME-Version; b=Ob2jxD/eEi5/F7mqZ1PzwnqlXKlnFilCgK9pl8s6HFagxgxdGmHPXrhedc20YHzsp7IHv3sd6aK2xg2xNsMIteisG6tF9FSV1DaOGxnELATCHFqa5atRPDWoiZijjdNMr9N+M236mnXB7Gj2/FAQ7NEeLBYxZXB2MGVwtIZagGU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=Bo1CJMYm; arc=none smtp.client-ip=209.85.216.51
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-pj1-f51.google.com with SMTP id 98e67ed59e1d1-343ee44d89aso7254658a91.2
        for <devicetree@vger.kernel.org>; Mon, 17 Nov 2025 20:11:09 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1763439068; x=1764043868; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=oC5WZ/7VfSXVPNYFtp8ZHIoPBfsAZ00riValRO0acVk=;
        b=Bo1CJMYmTYk66f9CjjdzaCRfLlBtyhK6D2xBichV766D6RYyNbeVB/TPpPVyzMLI+I
         H4o1t469vznMBh8AE0ovvi8lQDZVQniPc85Iwfa+4PCS2GMHdmtcW5W4EtmazP6OrB7z
         wT4R6kBvj4j46ML8bXmNvSgW9nTPwXU+bCV04Kpp+LwZSl64TM1OH1ucf40KXwSrKYz8
         3LZmCwAMnC/FJxTxZd1aSlaxSKJCjdxDPo8ONa+kQ0uBj/Mb/aUUoW3fj9zsLgXfhuDc
         N+xMrNjwYTBIJ0Y4YS2qCPV7v2je9wSMdNLxQ70odEwf+uWP0PEB3g96oiNzStx9M5Gi
         EydA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1763439068; x=1764043868;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=oC5WZ/7VfSXVPNYFtp8ZHIoPBfsAZ00riValRO0acVk=;
        b=P3lo96K2BgJM1ptwXmgnrjzgx5wiGgbITxf85DA9czNdJwz9NixjCRqPi6+eMfeTCj
         OwQncYtgSzk8Uq5SmQ5N5nGuLSxXxSHq5yqy9+aYUYJ4pIXi/C8p3CIQKAJC+zrKzCHD
         I+r4GZy2sX8ZEcJa3EvWo2FlP18ABf2gjhhxpj30hegt/ilhfr+JpbS+zQH7ssynkGuy
         Ob7uEFPrLWJhOYY84Ppzjqq77I56U1GQbdVPSx08u5YNRPMhgZCb4IPRwEKCOS2hNBlY
         aJkHF2GQs9EKZrCzamlPdbtRj3XP4IAbZptOqPedsM3O3xc50MmX9khM6f9pnUWesoiy
         Xj2A==
X-Gm-Message-State: AOJu0YzKLpi6eV8abe5ZSXi8yWtvQHxE5PFMcaBH4TQz0qLnDchWePr5
	1vqJrB7w0WvmuzBf0KJyLkZdzqfJIJQhJsIlYrVlyZnpa0vcLMOKaqSsHZ5vDCvNRiI=
X-Gm-Gg: ASbGncuaJlqCOrKGy5n0+YOc8P84koGPKoT9sPg82c0ievfxx3tQ3ndQ81t59Tewiaq
	lz9y6L3Fg/yRE42qX9xO8OGv+xSdJ+cGGBvVHxzc4uaz1mam1egOw03jaQbvUz3C5BdC2kX9pQZ
	i+76XIAli/zKIf2YmQX2PhoE/qbQ1tus7tKzGX/JLqadgGmUXPUL1kFkDf48v6ny/w5Doq8euqf
	eZIN12KRDM1eUnQdDYVX59JTCmX45aJl8f9R+/QBNPV4q3VnB5WwD/GDa9ja5MLY5vymTSGj1qR
	zJ7oqwsYiMOBeFpdGiCzeag4GzG2MaELTHMnxPqT7zxdYBniRF6HJT4Hn+AmQhXOKSTzkKnvKVu
	1VIxxSN/1W6N76gdYdh3MRlEKMc6htfND6ZFw19nDjHe+s/LlfjaY7jcOHpgl8H6e4gR9cuOMkV
	DQEg==
X-Google-Smtp-Source: AGHT+IFbAdQLeXsJ9OGt7mRsvRAVrwQRoN3HqcPgt18qw6s9BCntwNDrABtfQk2EGbAMTkHuQOqMzQ==
X-Received: by 2002:a17:903:2b07:b0:295:2cb6:f4a8 with SMTP id d9443c01a7336-2986a76a1edmr149678665ad.51.1763439068321;
        Mon, 17 Nov 2025 20:11:08 -0800 (PST)
Received: from gmail.com ([218.32.81.133])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-2985c2cca00sm155514805ad.101.2025.11.17.20.11.05
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 17 Nov 2025 20:11:07 -0800 (PST)
From: Peter Shen <sjg168@gmail.com>
To: devicetree@vger.kernel.org
Cc: linux-arm-kernel@lists.infradead.org,
	linux-aspeed@lists.ozlabs.org,
	linux-kernel@vger.kernel.org,
	Andrew Jeffery <andrew@codeconstruct.com.au>,
	Joel Stanley <joel@jms.id.au>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Krzysztof Kozlowski <krzk@kernel.org>,
	peter.shen@amd.com,
	Peter Shen <sjg168@gmail.com>
Subject: [PATCH v7 1/2] dt-bindings: arm: aspeed: Add compatible for Facebook Anacapa BMC
Date: Tue, 18 Nov 2025 12:10:57 +0800
Message-Id: <20251118041058.1342672-2-sjg168@gmail.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20251118041058.1342672-1-sjg168@gmail.com>
References: <20251112211248.3711889-1-sjg168@gmail.com>
 <20251118041058.1342672-1-sjg168@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

This patch adds the compatible string for the Facebook Anacapa BMC
which uses an Aspeed AST2600 SoC. This is required before adding
the board's device tree source file.

Signed-off-by: Peter Shen <sjg168@gmail.com>
---
 Documentation/devicetree/bindings/arm/aspeed/aspeed.yaml | 1 +
 1 file changed, 1 insertion(+)

diff --git a/Documentation/devicetree/bindings/arm/aspeed/aspeed.yaml b/Documentation/devicetree/bindings/arm/aspeed/aspeed.yaml
index aedefca7cf4a..bcb874ebd9d2 100644
--- a/Documentation/devicetree/bindings/arm/aspeed/aspeed.yaml
+++ b/Documentation/devicetree/bindings/arm/aspeed/aspeed.yaml
@@ -80,6 +80,7 @@ properties:
               - aspeed,ast2600-evb
               - aspeed,ast2600-evb-a1
               - asus,x4tf-bmc
+              - facebook,anacapa-bmc
               - facebook,bletchley-bmc
               - facebook,catalina-bmc
               - facebook,clemente-bmc
-- 
2.34.1


