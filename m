Return-Path: <devicetree+bounces-121956-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 51DF39C92AF
	for <lists+devicetree@lfdr.de>; Thu, 14 Nov 2024 20:57:03 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 1714D282EF8
	for <lists+devicetree@lfdr.de>; Thu, 14 Nov 2024 19:57:02 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E784B1A76A4;
	Thu, 14 Nov 2024 19:56:56 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=sifive.com header.i=@sifive.com header.b="euW6R8bI"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pg1-f177.google.com (mail-pg1-f177.google.com [209.85.215.177])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 31F451A2645
	for <devicetree@vger.kernel.org>; Thu, 14 Nov 2024 19:56:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.215.177
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1731614216; cv=none; b=Vxb4QJKXK8VeD++L9V2XRzvb1LYUgbEGmYU8XLmPh4mKHq5ZsUralzXW3dWY8G6JB91KeOVVZH2A7KaZpdg2h6Bh7P4Uci2CrrP87r4EC332rgi12OhmwMrie6Cu+iOIdIXOlIbThv+mFRMNLFpFkGdSNCI0lkNg3TmN8dhgX6M=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1731614216; c=relaxed/simple;
	bh=UwYpymoJNg6uhdrcPhwIqhStfdSx5HmoITpcaxbv5CY=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=NywhaH9TMSeLsrHxjUVF4WpXGIgrH3LbEKLSFApO9fLbdZ3ASazBFhLQmttd4dqLqkbmkV4O+q1zJsOaLM7ep8JMG1fNLyJ/LRaAk2GZLpJCbk+BsSfR2EfjkIlwJ7pzkiHjx4wlCx3d5fDNR+wxfcVAtfW0URht7ST47GLbQN4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=sifive.com; spf=pass smtp.mailfrom=sifive.com; dkim=pass (2048-bit key) header.d=sifive.com header.i=@sifive.com header.b=euW6R8bI; arc=none smtp.client-ip=209.85.215.177
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=sifive.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=sifive.com
Received: by mail-pg1-f177.google.com with SMTP id 41be03b00d2f7-7ea7e2ff5ceso803969a12.2
        for <devicetree@vger.kernel.org>; Thu, 14 Nov 2024 11:56:54 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=sifive.com; s=google; t=1731614214; x=1732219014; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=GVQSHnPqrqPLMNZP6o69IRBL1jKThUMkliC7H0VO5m4=;
        b=euW6R8bImhdE91B97BdPgAyCCN2behfRzVhIf2oTLveHN0ufAdDXfnor4i6hE2Drfl
         Neg0T5RjVUZXx+n0ZDM/yTHGGWaq+36QTskwyU6onN4/Q7KKVou5L9D6+2UI6BbIoOc5
         K2l0Av4a4W84A8er8l8hwprEmqv5q+6eAVHSYYv0u86PMXXoph4YaLWDbkuTKqJOEd/g
         ogiUo4jgTAhvWIZKFp8JFiPXxArENuMRb0CBIogG2daLSKiSU/0NhctVSQAhNZ6W85uw
         30zsdJaLPJocl2ZjAQZllGXZH5H98XgnpZKnfb0U2p2x4lsm97O1mo7LQbVB/zLnv98q
         zy2A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1731614214; x=1732219014;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=GVQSHnPqrqPLMNZP6o69IRBL1jKThUMkliC7H0VO5m4=;
        b=g8d0zvA+0jxU8mtbA/PwRYz0D9C+wiR2v87nKAQZBgTSWqqW/5quz94JWw4mCUntHI
         IcB/EqVEoxype2V8NEI3/MXT8htKSa+L6CiwPWyy/r0Ltl42k8dNGr/K4M+7Mji/xQvP
         4hwOggDNFNlrpFvAazjo+VU7UzI9/1eHkaHC8XmHOGCCXiY5mZxl7XjCFPEANvyHTA5P
         5mE013ojtASWtUHZ+Wn2J7Fpy3TTrv9b1roUNLR9xO/fm0RfB8qe6IpoOlWQJxucTwMq
         MvuXHuQOzDNwKBCmiXOC5fktM4evxXfQiFdUVPJU1Tsx96ngwASNgtQc7FVPR0xMp5xa
         GXJA==
X-Forwarded-Encrypted: i=1; AJvYcCVAuPjckyjEoEFxCHmAc+mswiYqheD8kCwoiuzL/uRYPG4eRDooUzfVUPLb7yp8Ji1WJxt6U8bXn3ng@vger.kernel.org
X-Gm-Message-State: AOJu0YyKmW1IFspmsQhriSe/z1KXwePbPIPEMvCL2JA2A8Uec9a1rJQn
	fFbfZcJKPl37DUZKYw1T+YjX3p9tC5seKbIQ/EA4o1hMLQ741Ov/5dmRa9AL3w8=
X-Google-Smtp-Source: AGHT+IHLoJ5uQlbmwI7UOxCVQN1W7z+tMyLKhZhocvuZ5iHF31FrICzOQm6eGNyu9uIQcW79a8XfWA==
X-Received: by 2002:a05:6a20:4314:b0:1da:5bb:f8ca with SMTP id adf61e73a8af0-1dc909bf945mr4488637.0.1731614214511;
        Thu, 14 Nov 2024 11:56:54 -0800 (PST)
Received: from sw06.internal.sifive.com ([4.53.31.132])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-724771c0d43sm14009b3a.114.2024.11.14.11.56.53
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 14 Nov 2024 11:56:54 -0800 (PST)
From: Samuel Holland <samuel.holland@sifive.com>
To: Rob Herring <robh@kernel.org>,
	Saravana Kannan <saravanak@google.com>
Cc: Samuel Holland <samuel.holland@sifive.com>,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org
Subject: [PATCH] of: property: fw_devlink: Do not use interrupt-parent directly
Date: Thu, 14 Nov 2024 11:56:49 -0800
Message-ID: <20241114195652.3068725-1-samuel.holland@sifive.com>
X-Mailer: git-send-email 2.45.1
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

commit 7f00be96f125 ("of: property: Add device link support for
interrupt-parent, dmas and -gpio(s)") started adding device links for
the interrupt-parent property. Later, commit f265f06af194 ("of:
property: Fix fw_devlink handling of interrupts/interrupts-extended")
added full support for parsing the interrupts and interrupts-extended
properties, which includes looking up the node of the parent domain.
This made the handler for the interrupt-parent property redundant.

In fact, creating device links based solely on interrupt-parent is
problematic, because it can create spurious cycles. A node may have
this property without itself being an interrupt controller or consumer.
For example, this property is often present in the root node or a /soc
bus node to set the default interrupt parent for child nodes. However,
it is incorrect for the bus to depend on the interrupt controller, as
some of the bus's childre may not be interrupt consumers at all or may
have a different interrupt parent.

Resolving these spurious dependency cycles can cause an incorrect probe
order for interrupt controller drivers. This was observed on a RISC-V
system with both an APLIC and IMSIC under /soc, where interrupt-parent
in /soc points to the APLIC, and the APLIC msi-parent points to the
IMSIC. fw_devlink found three dependency cycles and attempted to probe
the APLIC before the IMSIC. After applying this patch, there were no
dependency cycles and the probe order was correct.

Signed-off-by: Samuel Holland <samuel.holland@sifive.com>
---

 drivers/of/property.c | 2 --
 1 file changed, 2 deletions(-)

diff --git a/drivers/of/property.c b/drivers/of/property.c
index 11b922fde7af..7bd8390f2fba 100644
--- a/drivers/of/property.c
+++ b/drivers/of/property.c
@@ -1213,7 +1213,6 @@ DEFINE_SIMPLE_PROP(iommus, "iommus", "#iommu-cells")
 DEFINE_SIMPLE_PROP(mboxes, "mboxes", "#mbox-cells")
 DEFINE_SIMPLE_PROP(io_channels, "io-channels", "#io-channel-cells")
 DEFINE_SIMPLE_PROP(io_backends, "io-backends", "#io-backend-cells")
-DEFINE_SIMPLE_PROP(interrupt_parent, "interrupt-parent", NULL)
 DEFINE_SIMPLE_PROP(dmas, "dmas", "#dma-cells")
 DEFINE_SIMPLE_PROP(power_domains, "power-domains", "#power-domain-cells")
 DEFINE_SIMPLE_PROP(hwlocks, "hwlocks", "#hwlock-cells")
@@ -1359,7 +1358,6 @@ static const struct supplier_bindings of_supplier_bindings[] = {
 	{ .parse_prop = parse_mboxes, },
 	{ .parse_prop = parse_io_channels, },
 	{ .parse_prop = parse_io_backends, },
-	{ .parse_prop = parse_interrupt_parent, },
 	{ .parse_prop = parse_dmas, .optional = true, },
 	{ .parse_prop = parse_power_domains, },
 	{ .parse_prop = parse_hwlocks, },
-- 
2.45.1


