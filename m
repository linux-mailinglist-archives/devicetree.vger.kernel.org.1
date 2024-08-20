Return-Path: <devicetree+bounces-95239-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 3F902958999
	for <lists+devicetree@lfdr.de>; Tue, 20 Aug 2024 16:37:12 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 71CBF1C20DD0
	for <lists+devicetree@lfdr.de>; Tue, 20 Aug 2024 14:37:11 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 68557192B9F;
	Tue, 20 Aug 2024 14:36:21 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=suse.com header.i=@suse.com header.b="OBt2Yz4g"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ej1-f45.google.com (mail-ej1-f45.google.com [209.85.218.45])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2471D18E756
	for <devicetree@vger.kernel.org>; Tue, 20 Aug 2024 14:36:17 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.218.45
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1724164581; cv=none; b=kQ4swbwv4f2e9U5OQNyYot6yRji1/6L8JwP+eohP7MX+fa6Zj/46OjAqjNYBZYoBGevMTayfcpPr8CY27GXo0FXuJcEXlcD801WlRS+oi9GPnHsAd+USPIJnEeQMWgjtbyxlZ4XElEaf/75lVzyIP6Q4nssyJJrVgdpsX0B+Pmo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1724164581; c=relaxed/simple;
	bh=q6AxTSV6o67QZGmu1De3KVOHFHwIyt9xfYvx5cSg08g=;
	h=From:To:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=IxCd4L/F7c2ZUU5tQIZzEtNW9qWzpWTW09kxYpJ5FiDATAyzlKfbAxkCmbs5D7GyqG+XPAi7RzTXQV9jDK4SNR1hwbkRTnRMpG4o97lUKh5nbq830Y3PV1atXx4EXfEp96rwkdJ59Lg/gP+/PquRC1OQGSexmtj/g7Ehkfs+n0I=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=suse.com; spf=pass smtp.mailfrom=suse.com; dkim=pass (2048-bit key) header.d=suse.com header.i=@suse.com header.b=OBt2Yz4g; arc=none smtp.client-ip=209.85.218.45
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=suse.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=suse.com
Received: by mail-ej1-f45.google.com with SMTP id a640c23a62f3a-a7a8a4f21aeso673513066b.2
        for <devicetree@vger.kernel.org>; Tue, 20 Aug 2024 07:36:17 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=suse.com; s=google; t=1724164576; x=1724769376; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:to:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=ME6qWihrqgDhoFw7rnf+emxGVj4+uhQv8Lp27J8mM3c=;
        b=OBt2Yz4gPOMRq8IuUHlM6jT+kyEJo2uPy+0KVFagEkCoQY5zZxCD7YT6IQF2fvooPv
         U90Il88N8AR+3ubMh7C3JNAprpj5sjawGm8zCY3ZXoDqRQ4r3nVT2l49oScdS7qtmWua
         82CMkvnhnnvPtU38MsAB0FkohaP+e/3c7JUN94XeK7ANHGmSiE4JDX7LxhQ3sqG1tqXy
         SZagTQ3c1U82hSiIOqci3mxMqmnEJiqJ/azZS7jwYCmvsHGjN4pVwQA89hrUljgcL93r
         k7E6adMmksKiblAwLbHLonXGd7F6YCdRPpujnOhhvj93DGR82SZzBr501qmnO4bUn4r5
         yTLA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1724164576; x=1724769376;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=ME6qWihrqgDhoFw7rnf+emxGVj4+uhQv8Lp27J8mM3c=;
        b=CN+tBHdg75N/v6B8gcD9RMT0MkN8g9EChzSKQAe/Z/yfpkPbA+zXTWtchuUv37P0PR
         cLdFSf17M2vyE3sTuxRYB3sjFQwDKkyQ4rJm64dEKnAt5LMgpYrcGxNHh3IlF7Zi1Hyg
         0BcOJbfutO+7fS1R0S4TqvYq41DDTo10Q9BTqYXm4yL/8ELN3OJFu0MPKktI74ddNuO8
         D7tZXdxQ0pm95nF79Ox1jsj2a0GCjUTWliUyGFAebb0JZMVWRS+CQ8FyfUzPUVM6O3EW
         fESprwn39LN7+IB75hNXacIUi0khPrXrRXZ2aSwT4IGZu+TuKVnMBvpEwMaQnOsQOD0r
         wQCg==
X-Forwarded-Encrypted: i=1; AJvYcCUkEL0oFKSSea9kfVxUHJ3n4/YtECqtFCbkt2v4Xk+ZgDdRngv2nPQxRXSrONGtUAb8niOF1zBDB7ou@vger.kernel.org
X-Gm-Message-State: AOJu0YweCV/bL2Zpe3gNHPZxOLmRxygHLzveDd/24n+HE8iCH3CyK76p
	9mEY2ARNIO1NQWVtuJjCT7NcR59UXZJgqfsTIQ1CVspSGPOlgZgRPC2mA9xbQmQ=
X-Google-Smtp-Source: AGHT+IF2qH4dP28P5IO8gpA7s40UNOYyhDmMrqE5VSKZ2OTtvuPVd4Y6Vq1UjJSJsr78+uOKo4LfAw==
X-Received: by 2002:a17:907:6d0b:b0:a7d:3ce8:131c with SMTP id a640c23a62f3a-a8392a49776mr1063754666b.62.1724164575530;
        Tue, 20 Aug 2024 07:36:15 -0700 (PDT)
Received: from localhost ([87.13.33.30])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-a83838cfd5esm768068266b.78.2024.08.20.07.36.14
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 20 Aug 2024 07:36:15 -0700 (PDT)
From: Andrea della Porta <andrea.porta@suse.com>
To: Andrea della Porta <andrea.porta@suse.com>,
	Michael Turquette <mturquette@baylibre.com>,
	Stephen Boyd <sboyd@kernel.org>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Florian Fainelli <florian.fainelli@broadcom.com>,
	Broadcom internal kernel review list <bcm-kernel-feedback-list@broadcom.com>,
	Linus Walleij <linus.walleij@linaro.org>,
	Catalin Marinas <catalin.marinas@arm.com>,
	Will Deacon <will@kernel.org>,
	Derek Kiernan <derek.kiernan@amd.com>,
	Dragan Cvetic <dragan.cvetic@amd.com>,
	Arnd Bergmann <arnd@arndb.de>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	Nicolas Ferre <nicolas.ferre@microchip.com>,
	Claudiu Beznea <claudiu.beznea@tuxon.dev>,
	"David S. Miller" <davem@davemloft.net>,
	Eric Dumazet <edumazet@google.com>,
	Jakub Kicinski <kuba@kernel.org>,
	Paolo Abeni <pabeni@redhat.com>,
	Saravana Kannan <saravanak@google.com>,
	Bjorn Helgaas <bhelgaas@google.com>,
	linux-clk@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-rpi-kernel@lists.infradead.org,
	linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	linux-gpio@vger.kernel.org,
	netdev@vger.kernel.org,
	linux-pci@vger.kernel.org,
	linux-arch@vger.kernel.org,
	Lee Jones <lee@kernel.org>,
	Andrew Lunn <andrew@lunn.ch>,
	Stefan Wahren <wahrenst@gmx.net>
Subject: [PATCH 04/11] of: address: Preserve the flags portion on 1:1 dma-ranges mapping
Date: Tue, 20 Aug 2024 16:36:06 +0200
Message-ID: <5ca13a5b01c6c737f07416be53eb05b32811da21.1724159867.git.andrea.porta@suse.com>
X-Mailer: git-send-email 2.44.0
In-Reply-To: <cover.1724159867.git.andrea.porta@suse.com>
References: <cover.1724159867.git.andrea.porta@suse.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

A missing or empty dma-ranges in a DT node implies a 1:1 mapping for dma
translations. In this specific case, rhe current behaviour is to zero out
the entire specifier so that the translation could be carried on as an
offset from zero.  This includes address specifier that has flags (e.g.
PCI ranges).
Once the flags portion has been zeroed, the translation chain is broken
since the mapping functions will check the upcoming address specifier
against mismatching flags, always failing the 1:1 mapping and its entire
purpose of always succeeding.
Set to zero only the address portion while passing the flags through.

Signed-off-by: Andrea della Porta <andrea.porta@suse.com>
---
 drivers/of/address.c | 3 ++-
 1 file changed, 2 insertions(+), 1 deletion(-)

diff --git a/drivers/of/address.c b/drivers/of/address.c
index d669ce25b5f9..5a6d55a67aa8 100644
--- a/drivers/of/address.c
+++ b/drivers/of/address.c
@@ -443,7 +443,8 @@ static int of_translate_one(struct device_node *parent, struct of_bus *bus,
 	}
 	if (ranges == NULL || rlen == 0) {
 		offset = of_read_number(addr, na);
-		memset(addr, 0, pna * 4);
+		/* copy the address while preserving the flags */
+		memset(addr + pbus->flag_cells, 0, (pna - pbus->flag_cells) * 4);
 		pr_debug("empty ranges; 1:1 translation\n");
 		goto finish;
 	}
-- 
2.35.3


