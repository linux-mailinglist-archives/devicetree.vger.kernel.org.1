Return-Path: <devicetree+bounces-123369-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 96F809D447D
	for <lists+devicetree@lfdr.de>; Thu, 21 Nov 2024 00:31:34 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 571062832A4
	for <lists+devicetree@lfdr.de>; Wed, 20 Nov 2024 23:31:33 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 924BC1B5ED2;
	Wed, 20 Nov 2024 23:31:29 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=sifive.com header.i=@sifive.com header.b="dBoYJX1B"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pl1-f174.google.com (mail-pl1-f174.google.com [209.85.214.174])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0D516189521
	for <devicetree@vger.kernel.org>; Wed, 20 Nov 2024 23:31:27 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.214.174
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1732145489; cv=none; b=mEUWtyWfFahagvIexmCSG6C/Y7XxCzu7bSm0f24mJ2v8ZbbYgsotzOB7lGSmx+UBE9PwJmt10cDSV6YsN1IgR/CHK5SUOEANrrul2nASz0g54kIYRBcqoXRPtZDx26C0gMq7KFmuSZ5Oi0CbbW0VJXiDJIOFPI+DAR2OBLQ5G50=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1732145489; c=relaxed/simple;
	bh=zNNjCjHxAKV7W/tDatRt9BVWmQmRJtpdS1cMtjJM+Y4=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=AIozxLqwgj3amtszsZFS1jYulJ4V1fyV2GsUvp/uQiT7MZoGO9OfyEExb7iFJcmPUEKhsqElB4TRVdyShwhMABbsTpdoE4xzSWtNgFLp+5aP2m9me6w3EZZjFeblh5MvAykjdmdP8AfpVa9laArvflRdEfdrxvs28c67cYifxOQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=sifive.com; spf=pass smtp.mailfrom=sifive.com; dkim=pass (2048-bit key) header.d=sifive.com header.i=@sifive.com header.b=dBoYJX1B; arc=none smtp.client-ip=209.85.214.174
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=sifive.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=sifive.com
Received: by mail-pl1-f174.google.com with SMTP id d9443c01a7336-21210fe8775so11601425ad.1
        for <devicetree@vger.kernel.org>; Wed, 20 Nov 2024 15:31:27 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=sifive.com; s=google; t=1732145487; x=1732750287; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=fSqv89uy0nwc5dDPbI4XvXjKwme8rpzvHxwcukveaqQ=;
        b=dBoYJX1BqgAcE9tq1mdaPHv3XjX+F+kMjp/Afx1s86yBOsRONCza/2pBlyxvTtXF1h
         k1ZRDpcVn/M50UHOfWSB60Z0PKg+KlA/sdWobIJ3/0IM0C+uJYf00EEH3eURq8Z8gmv2
         gjXYK0Vd4LstOezz6SyTpHs1/jLDj8ICuzwiLTus754xs1StXKWYV5rWmhPOuU6dhcyk
         LYdDV+xmnA4VWL3nZi+fCFAyxe2TZ3EHmKI4tfmvN4TwnGBxkNHNiyP12OrR113OsWFe
         37yihpvjeR3EZxTrgSFC0rl3WFXEJK2T47a0mRorKmGIVCMUedeJTN8PQ8jE1jj3MlQe
         3wLA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1732145487; x=1732750287;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=fSqv89uy0nwc5dDPbI4XvXjKwme8rpzvHxwcukveaqQ=;
        b=reKxQq8XAGmlRvJwb+ForheJ74nAExRaG6vHdS6U+T8CW3/xahBwvMthmRtL2dX5Iy
         nl9jfuoXnuON0iF0D7PdwfYnymSOqMVre5rcPqoX8+dM/l1hkYxxrHl55paaduPIO+D9
         jWDyX0w+N3ElpgwQQkMPEsEWdSITjTPVhFX1DtXyPMjgXJiZOQEWzXos609bYqAmNBMb
         9AwmgoJe6dDuGPIrvSubvTvsPTPpCFcRkPNQPcs8J3/wpGgUI7HEgcMlMHch78ueoLmc
         NenEcTwx4vfZ7GJWac6b6KXjZUSpd4vMBF2QyR0V7kXapqxXeyG4Sf+e4Z21vVQI9feb
         VluQ==
X-Forwarded-Encrypted: i=1; AJvYcCXJ9aXRi0+lbWpImwcUzocWymgRdtHJZD7BNyJuffdzpX34ciBGFd5XNHip04qKvLfK4PnGbGdguRRt@vger.kernel.org
X-Gm-Message-State: AOJu0YyHTGGXkMpIYy88LTQ6HJBdZErcy+SHXiIxySDlmy8zl1sZ6ZsY
	5IVxlaW3rWqXaFhFe+ufM6u8VFg58MIfIcgpv26Er4Ma9vR7RKtQQep+pZRPWBNuChYYEzG1KjA
	E
X-Google-Smtp-Source: AGHT+IG8+Dhf9R1FFvZlRBlQQYlb3BPblu14O9UczA4OS58b9VvtlNwVw8oEoDe5/zYh/oqsLmntZQ==
X-Received: by 2002:a17:902:eccb:b0:205:8b84:d5e8 with SMTP id d9443c01a7336-21283ca84ebmr14588725ad.18.1732145487286;
        Wed, 20 Nov 2024 15:31:27 -0800 (PST)
Received: from sw06.internal.sifive.com ([4.53.31.132])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-212880d0761sm1078525ad.132.2024.11.20.15.31.26
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 20 Nov 2024 15:31:26 -0800 (PST)
From: Samuel Holland <samuel.holland@sifive.com>
To: Rob Herring <robh@kernel.org>,
	Saravana Kannan <saravanak@google.com>
Cc: Anup Patel <apatel@ventanamicro.com>,
	Samuel Holland <samuel.holland@sifive.com>,
	Marc Zyngier <maz@kernel.org>,
	stable@vger.kernel.org,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	Linus Walleij <linus.walleij@linaro.org>,
	Thierry Reding <treding@nvidia.com>,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org
Subject: [PATCH v2] of: property: fw_devlink: Do not use interrupt-parent directly
Date: Wed, 20 Nov 2024 15:31:16 -0800
Message-ID: <20241120233124.3649382-1-samuel.holland@sifive.com>
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
the interrupt-parent property. commit 4104ca776ba3 ("of: property: Add
fw_devlink support for interrupts") and commit f265f06af194 ("of:
property: Fix fw_devlink handling of interrupts/interrupts-extended")
later added full support for parsing the interrupts and
interrupts-extended properties, which includes looking up the node of
the parent domain. This made the handler for the interrupt-parent
property redundant.

In fact, creating device links based solely on interrupt-parent is
problematic, because it can create spurious cycles. A node may have
this property without itself being an interrupt controller or consumer.
For example, this property is often present in the root node or a /soc
bus node to set the default interrupt parent for child nodes. However,
it is incorrect for the bus to depend on the interrupt controller, as
some of the bus's children may not be interrupt consumers at all or may
have a different interrupt parent.

Resolving these spurious dependency cycles can cause an incorrect probe
order for interrupt controller drivers. This was observed on a RISC-V
system with both an APLIC and IMSIC under /soc, where interrupt-parent
in /soc points to the APLIC, and the APLIC msi-parent points to the
IMSIC. fw_devlink found three dependency cycles and attempted to probe
the APLIC before the IMSIC. After applying this patch, there were no
dependency cycles and the probe order was correct.

Acked-by: Marc Zyngier <maz@kernel.org>
Cc: stable@vger.kernel.org
Fixes: 4104ca776ba3 ("of: property: Add fw_devlink support for interrupts")
Signed-off-by: Samuel Holland <samuel.holland@sifive.com>
---

Changes in v2:
 - Fix typo in commit message
 - Add Fixes: tag and CC stable

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


