Return-Path: <devicetree+bounces-227151-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from dfw.mirrors.kernel.org (dfw.mirrors.kernel.org [142.0.200.124])
	by mail.lfdr.de (Postfix) with ESMTPS id E7217BDF1E2
	for <lists+devicetree@lfdr.de>; Wed, 15 Oct 2025 16:40:29 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.mirrors.kernel.org (Postfix) with ESMTPS id D6C5F4EEB13
	for <lists+devicetree@lfdr.de>; Wed, 15 Oct 2025 14:40:28 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 99E942D5426;
	Wed, 15 Oct 2025 14:39:36 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="RhWxF/m8"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pl1-f172.google.com (mail-pl1-f172.google.com [209.85.214.172])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1E57E2D46B3
	for <devicetree@vger.kernel.org>; Wed, 15 Oct 2025 14:39:35 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.214.172
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760539176; cv=none; b=WQ9s9CKdw33Y3VTehCeIAcuHBCb2XbBoBzi/b/ljTLijBKuE2oLN1gpYR6zSidhY4rMWBb3WauENsnYZn18Q5Ed5HNCCL+PdaiFC9Q0XuygeJtH1MIRr7PgUTuRjodhIqwVW08nODvZUf8Zc4ueqYYt6vxqhkJVIY0I2+Ki/qoM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760539176; c=relaxed/simple;
	bh=jXUg/QtHqrfnHtRjLxbM98dfBLO/n/ot/03eZdO/L8Q=;
	h=From:To:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=Vt+rdJnUtrLdrqiVT0lY3o7k9r/s/ztA8MQvLgfvbbyxKDnxP7farY4a7nHz/IXx2iUO7FVdNi9Qx3PctEjnwRg9egTEfhAoLyRGx50y4SaG5l4hjjygUBcCQQ7P7sbD5hoIrEqaGPqM09pMfewpXC5I4qZhlKFePvDKFhSFQCU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=RhWxF/m8; arc=none smtp.client-ip=209.85.214.172
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-pl1-f172.google.com with SMTP id d9443c01a7336-27eed7bdfeeso13019695ad.0
        for <devicetree@vger.kernel.org>; Wed, 15 Oct 2025 07:39:35 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1760539174; x=1761143974; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:to:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=cZnPPw1yHb/kgpk5HVTCc5i/nPN6HTsBrippheu6Yfk=;
        b=RhWxF/m8joYE8uEJJGo7h0eDETjah6Yh1To69IBDabzv6Yjdl0m1bMh79fr5WB/Wpc
         cGas+oD71jM5OZA24T5ypNwpkURoXlNEHY5dv7vtdl8789wY6iHlKgYR1T8LaFI0G6aA
         7TAFnR/eIgBeib8c2D/gE4G2A3Oree+BDmRBqOWBU3ttT7gzkvLvHVj4MT5+reKOdqEM
         Z3R06CA5PTGnAtNjjrlesbzCbnD3YsxxY+K1VIjYtw+th8hKMOjIM8TlaSX5HpmT4k+p
         XnOkOavkGCnUvxw/5TpBJkOOXcfYV44cK8qoMk2jQCZocrm16EiLe+ITR65h8aqjB6Q1
         /wvQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1760539174; x=1761143974;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=cZnPPw1yHb/kgpk5HVTCc5i/nPN6HTsBrippheu6Yfk=;
        b=ucxo7OQZV+2SPrGFwAd0XwbzCTM+rdb92caVhvSrXf7riLvb/NfrjyDBL2t9FhJ2eM
         n08wnil9+wAF/ukFIkRjURI1C44/Jl+BWY5Q5bChhDIVLrdJVQ0TX2vtwOatD/5W6bMq
         ayfeo14NttyZfIm2XhdO0ICA3O5t+DqzyJtbHPI3CCrZyXvK6qZMFD51XXGOBnxZbQ7+
         EM7Y179HaK9fMbTXcbxqJ2HGk5qKkL8tkPvkV1t3RIsdFHW/hgdgs1279t0/1zXj+bZ7
         y6VSl6Mat5znYd1XCKtskEcwG0YKqS+qcZCPUmEIy2LEq4kQk2hNHVAdLWU97tJh4HW7
         OEKA==
X-Forwarded-Encrypted: i=1; AJvYcCXvD02r0DcJl+Nck7KYbzmgjJheuznqNKwjgoEYzeR58UB7En9GimihjyPJuLB3UEcLRWAhUwuKlslK@vger.kernel.org
X-Gm-Message-State: AOJu0YwsDDXV7EgZKD2TUhGGbr4Hfs0nj93ew6b4QmrHmT4enkYuEJ4d
	N7EvQS5o8329dLzrMq1SJVkS/vM5lgaG4NkrjYZGVBFvWygmSBuhRVLU
X-Gm-Gg: ASbGnct9LgRZhCSzmknx89LDEPL60WJKUiul0CgbQl82NCzfJnpX9dVb3WG6TzxHldF
	+/fsLAIdvsY/b7LSqovC5PBR8ReSdoEzxhUn9YsB/DkIPBbCSc7PDuUBDW9CCGQG/9nBkoRmCXh
	cnKgwiizr4bHPfhST6uYqetSj+vgA6eP4VbslchRqq5KxnuXXAhdke5o2egMGXxU1+PnFdSTXsj
	zScYN+2HxyjmgK83ISrX3QMykApQhzKABo6/4ODv9e9+hwOzxRYmbt7avcRPVnM+llmopOumz1Q
	hP5hlQyFzCUR1HIlr86STNCgDAQQww75ZeC1AOnm04GmhxyetrXY1Jdru9D11himO4ZzAQG5CIu
	bfJiMaWdOEPHj/skAh8hmfWvP+NNHIZWCdbQOv4003UgvK1z1CdgcwPwbvewY6iSD1HsUQF3zr1
	K+gb4LW0AUNHaanWXdToxW9Epu58pr3Q==
X-Google-Smtp-Source: AGHT+IEwVX/ElMrVL/1slVqgh0aEHLkum2PuLtXRVZK0Ha5cnSjmuPAFvQSxCr9PtIb+PIE7Zha0ow==
X-Received: by 2002:a17:902:c951:b0:25c:43f7:7e40 with SMTP id d9443c01a7336-29091ae4cdbmr4400655ad.10.1760539174469;
        Wed, 15 Oct 2025 07:39:34 -0700 (PDT)
Received: from fred-System-Product-Name.. (61-220-246-151.hinet-ip.hinet.net. [61.220.246.151])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-29034f36738sm199853455ad.87.2025.10.15.07.39.32
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 15 Oct 2025 07:39:34 -0700 (PDT)
From: Fred Chen <fredchen.openbmc@gmail.com>
To: Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Joel Stanley <joel@jms.id.au>,
	Andrew Jeffery <andrew@codeconstruct.com.au>,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-aspeed@lists.ozlabs.org,
	linux-kernel@vger.kernel.org
Subject: [PATCH v4 4/7] ARM: dts: aspeed: santabarbara: Add bmc_ready_noled Led
Date: Wed, 15 Oct 2025 22:39:00 +0800
Message-ID: <20251015143916.1850450-5-fredchen.openbmc@gmail.com>
X-Mailer: git-send-email 2.49.0
In-Reply-To: <20251015143916.1850450-1-fredchen.openbmc@gmail.com>
References: <20251015143916.1850450-1-fredchen.openbmc@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Add a 'bmc_ready_noled' LED on GPIOB3 with GPIO_TRANSITORY to ensure its
state resets on BMC reboot.

Signed-off-by: Fred Chen <fredchen.openbmc@gmail.com>
---
 .../arm/boot/dts/aspeed/aspeed-bmc-facebook-santabarbara.dts | 5 +++++
 1 file changed, 5 insertions(+)

diff --git a/arch/arm/boot/dts/aspeed/aspeed-bmc-facebook-santabarbara.dts b/arch/arm/boot/dts/aspeed/aspeed-bmc-facebook-santabarbara.dts
index b190ab344aa7..c0334abf9cda 100644
--- a/arch/arm/boot/dts/aspeed/aspeed-bmc-facebook-santabarbara.dts
+++ b/arch/arm/boot/dts/aspeed/aspeed-bmc-facebook-santabarbara.dts
@@ -104,6 +104,11 @@ led-2 {
 			default-state = "off";
 			gpios = <&gpio0 ASPEED_GPIO(P, 4) GPIO_ACTIVE_HIGH>;
 		};
+
+		led-3 {
+			label = "bmc_ready_noled";
+			gpios = <&gpio0 ASPEED_GPIO(B, 3) (GPIO_ACTIVE_HIGH|GPIO_TRANSITORY)>;
+		};
 	};
 
 	memory@80000000 {
-- 
2.49.0


