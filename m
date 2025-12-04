Return-Path: <devicetree+bounces-244414-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [IPv6:2600:3c04:e001:36c::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id A25F5CA4978
	for <lists+devicetree@lfdr.de>; Thu, 04 Dec 2025 17:52:21 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 854C43017854
	for <lists+devicetree@lfdr.de>; Thu,  4 Dec 2025 16:52:20 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 66C572F360A;
	Thu,  4 Dec 2025 16:42:44 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="fHmGPk0Q"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pl1-f177.google.com (mail-pl1-f177.google.com [209.85.214.177])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C74472F3C18
	for <devicetree@vger.kernel.org>; Thu,  4 Dec 2025 16:42:42 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.214.177
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764866564; cv=none; b=gQJu6AGTVwbsGCiOMqj7jaFy26Cwc61IlDFPbxdMWsJlexLnqHZWKsUeOXGwKM7TeK7vASEIJEbCSnELWyzKlfjyMzEhLnnClgPuiYu2k2U4UHeBmSVcV+3xDdFDYBDpTp109aS27mO/Vvs9hZYneJiaXSJegC6PegtkGxk/BwI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764866564; c=relaxed/simple;
	bh=mjoIZaukGJd+mpRUFGZF5pSyWo7+ZsSHYXD7PA5LEiU=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=s2LQqrAAp/seiUL/Y4keNQVzXaSYznTDSeG6I7+96HI0OMWdEIqpuOlfU0xg6tUdalE1Tn8rRojb+reiOuFmVHBRL/sx8I/kBfewR2p5xik6JLQHXxsNWYDkThN1noDGmgfGiflMh2joXKTWZ0dtpKwetoniBzATDKNZyHpdgGM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=fHmGPk0Q; arc=none smtp.client-ip=209.85.214.177
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-pl1-f177.google.com with SMTP id d9443c01a7336-298250d7769so8894295ad.0
        for <devicetree@vger.kernel.org>; Thu, 04 Dec 2025 08:42:42 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1764866562; x=1765471362; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=aqAQjayzKkiK+UyokaheK11TIpMBdBsbzUQ3poyNPt4=;
        b=fHmGPk0QZbf1xwB798ITgYZLnT7rDbfvkeA8q9cszym/3rL7Ryc4kgBM38gcZrH7Ej
         HA9uoITpLYiPNOwn646+Q9W/o4VamkPai88v2Y2/AnCOntsdY4CzB62tC3YsE2nbWJBY
         AfoqWf/esfruYOTNXYzUr/uveg1QMDyJ5VZK5jdLuO4CwYAHI5b4EfkOMpkcXjm/HJDY
         NQHP+dApAN4Pn+cmjGiZAqKVWfXUWTxdmbYwWgwK8aCO8nN+IPhIXYhZcCrNUL+Z562y
         V/Vs6OVUm+9ucZmEiBnqdWfrw9QcJdyOfLPhFrLZRChf3MVKxfFmUaN1C3USCa3vEcSB
         /+7Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1764866562; x=1765471362;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=aqAQjayzKkiK+UyokaheK11TIpMBdBsbzUQ3poyNPt4=;
        b=wDEL/RfLRAp6gAINBRFPwYdgQql91eAc0BjhzBZ+GH9+323niTbaOY/jcgqiWKyVbn
         Xkl+lYJIIyiVY+ufs1JJPKus8Cb17zUEDcjPJDFuw3RkZmQmxXAyfvne62XCOhWRKOIw
         isjbRmg80NcyBwiOubIRNoUHD8hs1WQrMmLLSCnhh2yscmudGur3EqrP9lFefPeRsH7G
         2GxqczIbjh6BS7DwFqy4QtRf33ZXHGir/W/J9nuuUrAp8S2xZpikLQSQotNWdVGTYsFH
         tOmylBQXlqfaHh+Lk2urv7I11/5KuTLnaFjPgQjvLac8k0uMOBURUOh1HKhlBD3mi2AJ
         iqeQ==
X-Forwarded-Encrypted: i=1; AJvYcCWoobjuKXF76vriNwccStfouA9AmLoKOnPTkgtaBBl3H3SJvS6/wXtCjw4eKEXQgAz9magIez3EzM0g@vger.kernel.org
X-Gm-Message-State: AOJu0YwouLijW69IC7WFFAOMgGE96AE4wnKQ15AY5v2daJSm+yi4jke/
	SOubcOwfPkrWbpIdqLJ7134Q5iAiEIsxBnIax2FsdtQeUYUj0hl+9CN5
X-Gm-Gg: ASbGncuoAqima6wA5eCK+675fz7rr0nYPIqlexnqowSoRETOmY40SiQfoIW6KSwtf9j
	1lAHskSl21diuFNOtQvy/zfsSd6ngfUmXM3iautcvYVdEpfu8xYHvcF+fSqzg2a3aVuwf4Xp97e
	gg4K+Fu3dawRIAMNRUpFrCR4v+gVrW2Oz9+6ybpRTLSJI+g6ReEv2U2oEwvCkmAwv/mlOpBU/N6
	GexhqDX874/h9nDemgpvuYYovIpbyjYqaJnlHgSQLF4KA+SW+cDXpYytaXbazBIK1zfbS5FPvTG
	UJt6aV/F6R4JP65qhcxFzXpePU00sCYhcyBLsVXlrxyhgZmIILUdknfPKDj9a9tGq5VMbc8Pj+2
	OgHM8HeKYlDiKyrE2UZ7BexwtWsRyNYs2GmDF3nlOioeKbDPHe6bicB2/rXuvAiywcIb0D4Q1Xk
	IOSCtOOTupArDnZ7S9KKwMO/4Tf9nOE24y+GhGaiANsxWhM+F+l2RbB/FgONavvSFhEDV0fDsXK
	MSNfiXxeRkEhtAwL9KafG3MgbIHvBTjpKo=
X-Google-Smtp-Source: AGHT+IHmL3NdODN0biOQSZv09OUmAKp6RXCeEtSR9fQ8w6iCx3oooNzpze9mqTtVMIc2Y+Z/hfgp4w==
X-Received: by 2002:a17:902:e807:b0:299:d5a5:3f7b with SMTP id d9443c01a7336-29d684764b1mr84258175ad.53.1764866562008;
        Thu, 04 Dec 2025 08:42:42 -0800 (PST)
Received: from visitorckw-work01.c.googlers.com.com (14.250.194.35.bc.googleusercontent.com. [35.194.250.14])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-29dae49c8absm25090275ad.16.2025.12.04.08.42.39
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 04 Dec 2025 08:42:41 -0800 (PST)
From: Kuan-Wei Chiu <visitorckw@gmail.com>
To: linus.walleij@linaro.org,
	robh@kernel.org,
	krzk+dt@kernel.org,
	conor+dt@kernel.org,
	arnd@arndb.de
Cc: jserv@ccns.ncku.edu.tw,
	linux-arm-kernel@lists.infradead.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	Kuan-Wei Chiu <visitorckw@gmail.com>,
	stable@vger.kernel.org
Subject: [PATCH] ARM: dts: integrator: Fix DMA ranges mismatch warning on IM-PD1
Date: Thu,  4 Dec 2025 16:42:28 +0000
Message-ID: <20251204164228.113587-1-visitorckw@gmail.com>
X-Mailer: git-send-email 2.52.0.177.g9f829587af-goog
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

When compiling the device tree for the Integrator/AP with IM-PD1, the
following warning is observed regarding the display controller node:

arch/arm/boot/dts/arm/integratorap-im-pd1.dts:251.3-14: Warning
(dma_ranges_format):
/bus@c0000000/bus@c0000000/display@1000000:dma-ranges: empty
"dma-ranges" property but its #address-cells (2) differs from
/bus@c0000000/bus@c0000000 (1)

The display node specifies an empty "dma-ranges" property, intended to
describe a 1:1 identity mapping. However, the node lacks explicit
"#address-cells" and "#size-cells" properties. In this case, the device
tree compiler defaults the address cells to 2 (64-bit), which conflicts
with the parent bus configuration (32-bit, 1 cell).

Fix this by explicitly defining "#address-cells" and "#size-cells" as
1. This matches the 32-bit architecture of the Integrator platform and
ensures the address translation range is correctly parsed by the
compiler.

Fixes: 7bea67a99430 ("ARM: dts: integrator: Fix DMA ranges")
Cc: stable@vger.kernel.org
Signed-off-by: Kuan-Wei Chiu <visitorckw@gmail.com>
---
 arch/arm/boot/dts/arm/integratorap-im-pd1.dts | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/arch/arm/boot/dts/arm/integratorap-im-pd1.dts b/arch/arm/boot/dts/arm/integratorap-im-pd1.dts
index db13e09f2fab..6d90d9a42dc9 100644
--- a/arch/arm/boot/dts/arm/integratorap-im-pd1.dts
+++ b/arch/arm/boot/dts/arm/integratorap-im-pd1.dts
@@ -248,6 +248,8 @@ display@1000000 {
 		/* 640x480 16bpp @ 25.175MHz is 36827428 bytes/s */
 		max-memory-bandwidth = <40000000>;
 		memory-region = <&impd1_ram>;
+		#address-cells = <1>;
+		#size-cells = <1>;
 		dma-ranges;
 
 		port@0 {
-- 
2.52.0.177.g9f829587af-goog


