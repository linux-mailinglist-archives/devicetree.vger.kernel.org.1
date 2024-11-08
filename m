Return-Path: <devicetree+bounces-120169-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 6737A9C1AD1
	for <lists+devicetree@lfdr.de>; Fri,  8 Nov 2024 11:39:18 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 254F728320D
	for <lists+devicetree@lfdr.de>; Fri,  8 Nov 2024 10:39:17 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 847081E3771;
	Fri,  8 Nov 2024 10:39:02 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=suse.com header.i=@suse.com header.b="bzeI5eWa"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ej1-f43.google.com (mail-ej1-f43.google.com [209.85.218.43])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 92B711E32A0
	for <devicetree@vger.kernel.org>; Fri,  8 Nov 2024 10:39:00 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.218.43
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1731062342; cv=none; b=JQ898hxGw581SLjS3CvDLdUxfBMKceWkKbHODplswb6Lxp3hJA+7LFjaM7fNHU1W4tzaxbct4wMgHWkp7FmsXtFShnBfK3TTrMCyfZtniKA/uvJaxnuhjH+3WIjZX2a/HabzH8yU8DY9M9MKPFrbQBdr70SvXTuOKiKYv41+cis=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1731062342; c=relaxed/simple;
	bh=ZI7tjvx/GWaHe2pXNRvmtZniWMOO8iY8D9CppSRXIQ0=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=InVGwIBLkqVw9k+StlqOadZK1Fzx/wrs/lPWNkta2+dePANm+bxumeNZ1N5MktygWtIk6Fak0u/XRU5SvxKurKcgkuAoKiREh2EwuC2+CSsWEDPb5bXj5fvFKuf9eh+HvgJ86XVAAs8jcvskd45nqRhpclkFSRAv6F+JsqcPGa0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=suse.com; spf=pass smtp.mailfrom=suse.com; dkim=pass (2048-bit key) header.d=suse.com header.i=@suse.com header.b=bzeI5eWa; arc=none smtp.client-ip=209.85.218.43
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=suse.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=suse.com
Received: by mail-ej1-f43.google.com with SMTP id a640c23a62f3a-a9ed7d8d4e0so289245166b.1
        for <devicetree@vger.kernel.org>; Fri, 08 Nov 2024 02:39:00 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=suse.com; s=google; t=1731062339; x=1731667139; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=jJXmxMV9Abc1uTINb2xUxHegsV2x5Sbl3192+49JM4w=;
        b=bzeI5eWayKRUIUnkStz9uK6qAc3mCR+mwYLXPT5Xr9wsT7e9mbuXJY387vQ1qpMqdG
         7CoKfTw4c1OgblCTKPT6OaXzkjSlAmsBGm7Sj4LeNFO9FojlDMaV5Lt1i6Dw4AELDkDj
         On7R+UqoRVjGgxj7XcIdvMQt3Bfu1LHrjUz0FJWxuEsMBrn1/zPrmJV+ayKQHCet8xF9
         iu4oJGUU1U8h4/3dpiHA1blQTvqJTTXx70SJniHB0y58kSndJU7KeazMZhht+oWRDS5N
         c9urFsK6pdjsKq4yjztcgW/QhLa4YGVwMUd9SEkGdj6N04/sYGSnzSl4zkf0x+UhXJ1Q
         shxQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1731062339; x=1731667139;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=jJXmxMV9Abc1uTINb2xUxHegsV2x5Sbl3192+49JM4w=;
        b=JP+WXb1C+T1o/ACsXcNAFVb8/TS5FYRrn+fvWxhG7Nf+0v4RHfoH/pWJ2L+PTfeB4B
         opIBt92kzxfxhjWWviJuBf8Mb5QtHcKKfyuwVS8e99Y2dXpqlrWwcrfJu0Ims/eGm9mA
         cJf7q3g627XngIny6SbtxcMm0XprG8sLMdeksbhoTIOlnvbStHwYlS7Wyubplsqjve+v
         xgBTvxrAlbrraLXv4gpOEn/Zqxje0oWIW88B1CfFWkuagWvFBFFob8gGc3xCVOoxBlL9
         zljGYe9ZXxOTXck19aG8tnA47GBTpf5txvf8uJOf4GfuxBkPAh7pGl0Z3aPGm19jgZrn
         oDGQ==
X-Forwarded-Encrypted: i=1; AJvYcCXIUCko4akQhsix+14G61ST3YZN3Tf3A3/8MQc9jdtJN+eW+EsipXJpcpoanaRE45IsaGc9eApMpxSY@vger.kernel.org
X-Gm-Message-State: AOJu0Ywvwf4llAYCJFHXPQLX9aVLH86JxsVB2xvkA5D1Y0phZ3ybp1ZV
	4u5IAZ7tRfh+ccJltY8bZGPFcHBPbQSYA9jgex3OMroeJhVhnsbqhRIaou4RQA8=
X-Google-Smtp-Source: AGHT+IHiQxW5gF9yi4X8bacvXjxGkk6fIrYEA4STUTYGNxpcC1/v9Tb+L2h7W5kVMF2aOK5bJYki5Q==
X-Received: by 2002:a17:906:eecb:b0:a9e:b150:a99d with SMTP id a640c23a62f3a-a9eefeb4d57mr208775166b.5.1731062338980;
        Fri, 08 Nov 2024 02:38:58 -0800 (PST)
Received: from localhost (host-79-35-211-193.retail.telecomitalia.it. [79.35.211.193])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-a9ee0a188besm213593566b.8.2024.11.08.02.38.57
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 08 Nov 2024 02:38:58 -0800 (PST)
From: Andrea della Porta <andrea.porta@suse.com>
To: Michael Turquette <mturquette@baylibre.com>,
	Stephen Boyd <sboyd@kernel.org>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Florian Fainelli <florian.fainelli@broadcom.com>,
	Broadcom internal kernel review list <bcm-kernel-feedback-list@broadcom.com>,
	Lorenzo Pieralisi <lpieralisi@kernel.org>,
	Krzysztof Wilczynski <kw@linux.com>,
	Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>,
	Bjorn Helgaas <bhelgaas@google.com>,
	Linus Walleij <linus.walleij@linaro.org>,
	Catalin Marinas <catalin.marinas@arm.com>,
	Will Deacon <will@kernel.org>,
	Bartosz Golaszewski <brgl@bgdev.pl>,
	Derek Kiernan <derek.kiernan@amd.com>,
	Dragan Cvetic <dragan.cvetic@amd.com>,
	Arnd Bergmann <arnd@arndb.de>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	Saravana Kannan <saravanak@google.com>,
	linux-clk@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-rpi-kernel@lists.infradead.org,
	linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	linux-pci@vger.kernel.org,
	linux-gpio@vger.kernel.org,
	Masahiro Yamada <masahiroy@kernel.org>,
	Stefan Wahren <wahrenst@gmx.net>,
	Herve Codina <herve.codina@bootlin.com>,
	Luca Ceresoli <luca.ceresoli@bootlin.com>,
	Thomas Petazzoni <thomas.petazzoni@bootlin.com>,
	Andrew Lunn <andrew@lunn.ch>
Cc: Andrea della Porta <andrea.porta@suse.com>,
	stable@vger.kernel.org
Subject: [PATCH 2/2] of: address: Preserve the flags portion on 1:1 dma-ranges mapping
Date: Fri,  8 Nov 2024 11:39:21 +0100
Message-ID: <ae3363eb212b356d526e9cfa7775c6dfea33e372.1731060031.git.andrea.porta@suse.com>
X-Mailer: git-send-email 2.44.0
In-Reply-To: <cover.1731060031.git.andrea.porta@suse.com>
References: <cover.1731060031.git.andrea.porta@suse.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

A missing or empty dma-ranges in a DT node implies a 1:1 mapping for dma
translations. In this specific case, the current behaviour is to zero out
the entire specifier so that the translation could be carried on as an
offset from zero.  This includes address specifier that has flags (e.g.
PCI ranges).
Once the flags portion has been zeroed, the translation chain is broken
since the mapping functions will check the upcoming address specifier
against mismatching flags, always failing the 1:1 mapping and its entire
purpose of always succeeding.
Set to zero only the address portion while passing the flags through.

Fixes: dbbdee94734b ("of/address: Merge all of the bus translation code")
Cc: stable@vger.kernel.org
Signed-off-by: Andrea della Porta <andrea.porta@suse.com>
Tested-by: Herve Codina <herve.codina@bootlin.com>
---
 drivers/of/address.c | 3 ++-
 1 file changed, 2 insertions(+), 1 deletion(-)

diff --git a/drivers/of/address.c b/drivers/of/address.c
index 286f0c161e33..72b6accff21c 100644
--- a/drivers/of/address.c
+++ b/drivers/of/address.c
@@ -455,7 +455,8 @@ static int of_translate_one(struct device_node *parent, struct of_bus *bus,
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


