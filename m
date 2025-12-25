Return-Path: <devicetree+bounces-249656-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 72EBBCDDA8B
	for <lists+devicetree@lfdr.de>; Thu, 25 Dec 2025 11:27:35 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 73B6E3026BC3
	for <lists+devicetree@lfdr.de>; Thu, 25 Dec 2025 10:26:20 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 4D56A31A7E6;
	Thu, 25 Dec 2025 10:26:19 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="HZWoElh4"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ed1-f51.google.com (mail-ed1-f51.google.com [209.85.208.51])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4E8453164AD
	for <devicetree@vger.kernel.org>; Thu, 25 Dec 2025 10:26:17 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.51
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766658379; cv=none; b=Y2E14B8q3fcADKttbhlBAuN4TJPE/4BzHNp9gHb68qjVlO6CwnayUFlBtKYRnk3tf2t8tcPD60/FWtoU0ZfHTM0iZS1uc/wN9PyIiN4F5dhQcjWA3GOLRCtjmAEErk/ZwGSkB4CE5Jrk3ti3evN9JI3B2W0WrTlA8cPv3KAd+cY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766658379; c=relaxed/simple;
	bh=E5s5dAa0VTQdMXpF2lnAVWKinAqcZz1UaWRSxHODcwA=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=iv5H31rRmxbw1rxKKKCtajD6WDS/nx4VOtXK52FdRHWyIGzZqPuF5OqI0iTLdj4of8JKYjkybtoI6WISzLHpWq9SYepV34r0BcsOje4EwrAdBzORsAr4KRmgsR97M9VUG2DDICSYglitmUaRacaOgG9FFih94LITiu1aVVXkIqY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=HZWoElh4; arc=none smtp.client-ip=209.85.208.51
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-ed1-f51.google.com with SMTP id 4fb4d7f45d1cf-64b9b0b4d5dso10163887a12.1
        for <devicetree@vger.kernel.org>; Thu, 25 Dec 2025 02:26:17 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1766658375; x=1767263175; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=JIaCuy0Yr5csM4hT0NvBc9MsbJrznZV2wGR+tUVj03k=;
        b=HZWoElh4UJ+ufUhtfwiNswtX2iLcH7BnPCkzs/s4OntDcqFfyfCqlHmrP8GIBz3sK2
         /UFgAf0oErVO+tjsPSYZTnaDCj4uZ07wktkGeHqxmFEy5FsBiBCYr6CXApnTUWlIqCdr
         Im3kImTlJ4u3nkjgNSvB0DHgD16QNkvJl50KlXluiEZsmXGeANzyrYXbw2rKKu+Y0Stu
         /0sEQpdfpgxKCcMjnRNawxN9lEYYjVWpCi9WwfnsS4gRydmNnTC1uWRmJwzFdSkNs73H
         aGJyzl9SqOd6Jow+e07bWKnaApO9Wf6xYtwxOlg3VIrwNmHFtib93lT2eM0ivxsEEhkt
         3wGg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1766658375; x=1767263175;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=JIaCuy0Yr5csM4hT0NvBc9MsbJrznZV2wGR+tUVj03k=;
        b=QIIj+sOMRJw4kymnDfum13uUlDHSOxkQaeFEZOoO4JWDPZvsgeVD57sFP2avg34ycA
         ltRtJql21ln5U0HemVPGS+di57mYXdBEmJCnZ9iHmQiwTLVa0Onz+vWpZnliKaYjXc0X
         vnLpn4zowIuiAgLJ8vRL4lapB1PIDLDi1fL9aYkrc9PM4qtkT1kWarEQtkIZM+XKhfKh
         50AtjuM+TQYjmL2MwOnqzkOzBbbUXRiz/3RDRsleH7sVwP0qkco38KkDqbtB0PJsUeq0
         +GYFYNspO5qRGiucq37RW0kIHz0zgsOoyE7ntfPrx78UEeCj38h5khqBMnw35z86R8lf
         pJ3A==
X-Forwarded-Encrypted: i=1; AJvYcCXtWfVEA3HuuhLfVjKgZN10/IpKdH1Z596SWW2ydVeCB92flIrqysvF90o+rYxePVB386zHS2DFIyaI@vger.kernel.org
X-Gm-Message-State: AOJu0YyMKu6hu/+woHOycgikUTMqN+CoEVt4B3xl5z5vvSCBe1kRSbmP
	BbMQXk5AOPqw2J9LmfVM6LPGgfC7ZkQZGVyfZ4FcKtstbB+AmEO2Sbbr
X-Gm-Gg: AY/fxX5monf9z5D7631ade+Iwb29CIeLkvm5SNSiweV+tK0T10e8WNNVNp8c9Vyr2jx
	Lvhj624B+qJ/sVFEp6kGjDHA5k0sc8IkXcuKnPwgNC4rD8B3kiGil9vBy9hcZxIGdzPJPbVXzXF
	tEHVmoldvjQWVHvCtknlTdBc1GHkz81lZmTaxkcEArjhLAruvIM4tnfi5jVj0dv1wkbXenklMMe
	VtBWQyItSW/KOOwYgeeZn6Ji+BDsmX6/8UPmuPxoWdEcXVBQynfCF2a0DxsmOvjSvV8c1u64urO
	PZgIx8f4CHF6MXJjWyRgfoVfIOgmr+U732Q1UrIPO1eaM71YfjriKUNtkJrx8u8w38UuBioh1cN
	uFGJwCM61h72J2dj5IvAt4jUMXbB0LgK2wXj7u/jQU2AgM8EHUM8cBl4y9eWmXALNrF/6egV4qS
	Jf2Y9daW/bCAKNaZPlWvlpcTYFAm6Dm3qYk42ftwGiQU78UtVisEhTIQa2dOjGWT2KNqU=
X-Google-Smtp-Source: AGHT+IGTq+3+tIFc9OrOssc41kCs1BnvDhuOWslkFodTOLZK9xgo+B67Du+bLzTqEF27zfk+DrePnA==
X-Received: by 2002:a17:907:6093:b0:b83:246c:c857 with SMTP id a640c23a62f3a-b83246ccc94mr173915466b.17.1766658375320;
        Thu, 25 Dec 2025 02:26:15 -0800 (PST)
Received: from localhost (dslb-002-205-018-238.002.205.pools.vodafone-ip.de. [2.205.18.238])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-b8056ff4925sm1570885166b.31.2025.12.25.02.26.14
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 25 Dec 2025 02:26:14 -0800 (PST)
From: Jonas Gorski <jonas.gorski@gmail.com>
To: Kamal Dasu <kamal.dasu@broadcom.com>,
	Broadcom internal kernel review list <bcm-kernel-feedback-list@broadcom.com>,
	Mark Brown <broonie@kernel.org>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Florian Fainelli <florian.fainelli@broadcom.com>,
	Thomas Bogendoerfer <tsbogend@alpha.franken.de>,
	=?UTF-8?q?Rafa=C5=82=20Mi=C5=82ecki?= <rafal@milecki.pl>
Cc: Kamal Dasu <kdasu.kdev@gmail.com>,
	linux-spi@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	linux-mips@vger.kernel.org
Subject: [PATCH 1/4] dt-bindings: brcm,spi-bcm-qspi: allow hif_mspi as alternative for mspi
Date: Thu, 25 Dec 2025 11:25:30 +0100
Message-ID: <20251225102533.30772-2-jonas.gorski@gmail.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20251225102533.30772-1-jonas.gorski@gmail.com>
References: <20251225102533.30772-1-jonas.gorski@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Add "hif_mspi" as an alternative reg-name for brcm,spi-bcm-qspi, as
it is in use by BCM7xxx (BMIPS) device trees.

Signed-off-by: Jonas Gorski <jonas.gorski@gmail.com>
---
 Documentation/devicetree/bindings/spi/brcm,spi-bcm-qspi.yaml | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/Documentation/devicetree/bindings/spi/brcm,spi-bcm-qspi.yaml b/Documentation/devicetree/bindings/spi/brcm,spi-bcm-qspi.yaml
index 45975f40d943..ffe8d7f8dd4a 100644
--- a/Documentation/devicetree/bindings/spi/brcm,spi-bcm-qspi.yaml
+++ b/Documentation/devicetree/bindings/spi/brcm,spi-bcm-qspi.yaml
@@ -57,7 +57,7 @@ properties:
   reg-names:
     minItems: 1
     items:
-      - const: mspi
+      - enum: [ hif_mspi, mspi ]
       - const: bspi
       - enum: [ intr_regs, intr_status_reg, cs_reg ]
       - enum: [ intr_regs, intr_status_reg, cs_reg ]
-- 
2.43.0


