Return-Path: <devicetree+bounces-207774-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 7DC81B30C3D
	for <lists+devicetree@lfdr.de>; Fri, 22 Aug 2025 05:08:37 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 914241D0263E
	for <lists+devicetree@lfdr.de>; Fri, 22 Aug 2025 03:08:28 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C68E127F017;
	Fri, 22 Aug 2025 03:07:05 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=riscstar-com.20230601.gappssmtp.com header.i=@riscstar-com.20230601.gappssmtp.com header.b="kqxwAYqf"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pg1-f169.google.com (mail-pg1-f169.google.com [209.85.215.169])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2FE3B27E06D
	for <devicetree@vger.kernel.org>; Fri, 22 Aug 2025 03:07:04 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.215.169
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755832025; cv=none; b=NwYnyR5U0OZJd+SnknpGnrwzot1CeC1xcm8q0FrygLwkti0nNckN/U+wmTua6J5/MvYeBhl2MrGrtaqYvARu9JI7sUgsxDWnLeIm5SkctQEpgJfHNM4GDPsE4U+KUW1Sb8OrJWbkm0UfID2x0DE6jq0ZB2zsGLvIaJ4rL3Nmmgo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755832025; c=relaxed/simple;
	bh=cFrWQEEvMc/7ZId6uak27PuJOXHlyYH9+xN4BakqZpE=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=cdJnxJKywwB3DhVQ/uOXb/IqMBp54/0kcSEXEpK2Yv4uvJDZ2B7bo3ZHiPYv6U7YBDMOn6yiGNs6yGk+XXQs4X4eg9r+sQhSIllqIrLlCiwIj9qlVtN1+WqmKemKguIpL3sYOqFqwtyprz2eMV1pC3C4JNv5wWpLeEF/EWTEQw0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=riscstar.com; spf=pass smtp.mailfrom=riscstar.com; dkim=pass (2048-bit key) header.d=riscstar-com.20230601.gappssmtp.com header.i=@riscstar-com.20230601.gappssmtp.com header.b=kqxwAYqf; arc=none smtp.client-ip=209.85.215.169
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=riscstar.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=riscstar.com
Received: by mail-pg1-f169.google.com with SMTP id 41be03b00d2f7-b471740e488so1341297a12.1
        for <devicetree@vger.kernel.org>; Thu, 21 Aug 2025 20:07:04 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=riscstar-com.20230601.gappssmtp.com; s=20230601; t=1755832023; x=1756436823; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=ZudeS21S7Z9HKYl2WwDLHxu+6vkPHg6qhFAwHt0tdNs=;
        b=kqxwAYqfBHgQ+JJwAUosXmJYFt2MWianOW0QzPwGqRmtycDq8U1CkUom4Xlm8h92M1
         hVlE6rjaHeTpgjRjHiAf2CxZnAFQXkvnRibp6/vVG41wGGKLmB5SAXD+I0JMq1zXqrxF
         RJ/taYk/h2rV8qrhhA2LZdW25pv+jY4gx0s4ZHmmpkNVi5IcwszB3oxVouOuk717fOu/
         7EwpRSfyotgKGzqxW1W4KNNjtST7hie0v3/P86VCUelODnd42RKVQTvch+aDOLuQHdOs
         NoMm/X9mAL3HDMuMwjqKjb4SV2yoDrT2PQ/YJaAsEcPVJF5LarrGkRiy7cSmD2JqyVDm
         npvQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1755832023; x=1756436823;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=ZudeS21S7Z9HKYl2WwDLHxu+6vkPHg6qhFAwHt0tdNs=;
        b=g7bocDec1GmiALrBHorzhMwUvm4YHUT/Jwxl24Q6ZjoOFu/YrDEtV3qk9j++7WVDlP
         dcQe5xK4IBJ3PUiwuYIj80BXBeArlu3cUnu8M87j0lLQIZUUYm80vZ7oqp+BC/tP4qw2
         8IPuhGAB5hTp6l9vtQ+5oK8SAH/1dk9hzGwSrb/j3CFUYvG5gCuSsyoAsuhpkAc+4ysq
         JIW4+JdUTyVWH4yMj+CkmK+p41S3XtLXISnSJxvUOgS5Id0TEtyRK9FKEwbSAT8d6Lue
         1tkfiElAnQUNHybHS+qNfktE1U6Gv8bP26XLD8NXCQjN4xxDpA/WHadDHAaUsUyY7pwk
         hMhw==
X-Forwarded-Encrypted: i=1; AJvYcCViFfAdUDxt68xAO79KCb6i37EBwRvn+SPnOYxHkDg8SqfaUaeELQaqSFgU+t6kF46wfWo8N9mwpO+d@vger.kernel.org
X-Gm-Message-State: AOJu0YzyMK0+FYm/h7+zmm0eTTxxKsvXnqbVfOLcyTamyJLqtiV2Wiab
	uAjA5YR/cwTULW7VouqHPMYuc1TsUVgcCNfzw45mXgU1C9toW0xaDG+cSsuo/QyFZWM=
X-Gm-Gg: ASbGncvv9YghXQVyCXxY+/0wlCB7E3Ce5V4bhVx0vuyZGRaYzIaz5ov+fE1G4GHbV4U
	FrTJA5qGeFkJ5HFvsaj2U8SMQkt7Gv0nz0tY3oCCn2OmKEMzGMBOYxW8XqLHIEX9RPCGWEJqVj7
	i0xQ6LzAagXbNKIg0hoV4wiSIbdou06m6rYmhKqo53Pa2PvIoDWYe94C3vWT1b4y3DIHxVLpQDv
	mpi9Uj2B2BWrIj54GbbbVvgoeSu57s6RzlVw2hnfSgYpCk3k3SA6HiE+Ch4YKsRRqt9X6KXDXIm
	Jf3ptn+qSCl8+BvM7utuCKdTI+zUwaMbXTvCVzhts34BaK08Mh6oolv5tDoNEk6MkEn74KiPn8P
	g9Ov6+qehdARSqhIgRMlB1C/Sqr7YAZf5clzb08lT8oJm
X-Google-Smtp-Source: AGHT+IGm4j2NRRY1FzjfoUSGytYiPyWd0cIxjX3x+KRIkqu4iEC4XXZhVq4VrVHDhxiZRilFQYwnKA==
X-Received: by 2002:a05:6a20:6a0b:b0:240:489:be9c with SMTP id adf61e73a8af0-24340cd3104mr2211058637.39.1755832023564;
        Thu, 21 Aug 2025 20:07:03 -0700 (PDT)
Received: from [127.0.1.1] ([222.71.237.178])
        by smtp.gmail.com with ESMTPSA id 41be03b00d2f7-b47769afc1bsm2756777a12.19.2025.08.21.20.06.59
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 21 Aug 2025 20:07:03 -0700 (PDT)
From: Guodong Xu <guodong@riscstar.com>
Date: Fri, 22 Aug 2025 11:06:32 +0800
Subject: [PATCH v5 6/8] riscv: dts: spacemit: Add PDMA node for K1 SoC
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20250822-working_dma_0701_v2-v5-6-f5c0eda734cc@riscstar.com>
References: <20250822-working_dma_0701_v2-v5-0-f5c0eda734cc@riscstar.com>
In-Reply-To: <20250822-working_dma_0701_v2-v5-0-f5c0eda734cc@riscstar.com>
To: Vinod Koul <vkoul@kernel.org>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Yixun Lan <dlan@gentoo.org>, 
 Philipp Zabel <p.zabel@pengutronix.de>, 
 Paul Walmsley <paul.walmsley@sifive.com>, 
 Palmer Dabbelt <palmer@dabbelt.com>, Albert Ou <aou@eecs.berkeley.edu>, 
 Alexandre Ghiti <alex@ghiti.fr>, duje@dujemihanovic.xyz
Cc: Alex Elder <elder@riscstar.com>, Vivian Wang <wangruikang@iscas.ac.cn>, 
 dmaengine@vger.kernel.org, devicetree@vger.kernel.org, 
 linux-kernel@vger.kernel.org, linux-riscv@lists.infradead.org, 
 spacemit@lists.linux.dev, Guodong Xu <guodong@riscstar.com>, 
 Troy Mitchell <troy.mitchell@linux.spacemit.com>
X-Mailer: b4 0.14.2

Add PDMA dma-controller node under dma_bus for SpacemiT K1 SoC.

The PDMA node is marked as disabled by default, allowing board-specific
device trees to enable it as needed.

Signed-off-by: Guodong Xu <guodong@riscstar.com>
Reviewed-by: Troy Mitchell <troy.mitchell@linux.spacemit.com>
---
v5:
- Add reviewed-by from Troy.
v4:
- Rename the node from pdma0 to pdma
- For consistnecy, put the "interrupts" after "clocks" and "resets"
v3:
- Adjust pdma0 position, ordering by device address
- Update properties according to the newly created schema binding
v2:
- Updated the compatible string.
- Rebased. Part of the changes in v1 is now in this patchset:
   - "riscv: dts: spacemit: Add DMA translation buses for K1"
   - Link: https://lore.kernel.org/all/20250623-k1-dma-buses-rfc-wip-v1-0-c0144082061f@iscas.ac.cn/
---
 arch/riscv/boot/dts/spacemit/k1.dtsi | 11 +++++++++++
 1 file changed, 11 insertions(+)

diff --git a/arch/riscv/boot/dts/spacemit/k1.dtsi b/arch/riscv/boot/dts/spacemit/k1.dtsi
index abde8bb07c95c5a745736a2dd6f0c0e0d7c696e4..861f0fe18083fa158da51bd3be2808609f6233f4 100644
--- a/arch/riscv/boot/dts/spacemit/k1.dtsi
+++ b/arch/riscv/boot/dts/spacemit/k1.dtsi
@@ -660,6 +660,17 @@ dma-bus {
 			dma-ranges = <0x0 0x00000000 0x0 0x00000000 0x0 0x80000000>,
 				     <0x1 0x00000000 0x1 0x80000000 0x3 0x00000000>;
 
+			pdma: dma-controller@d4000000 {
+				compatible = "spacemit,k1-pdma";
+				reg = <0x0 0xd4000000 0x0 0x4000>;
+				clocks = <&syscon_apmu CLK_DMA>;
+				resets = <&syscon_apmu RESET_DMA>;
+				interrupts = <72>;
+				dma-channels = <16>;
+				#dma-cells= <1>;
+				status = "disabled";
+			};
+
 			uart0: serial@d4017000 {
 				compatible = "spacemit,k1-uart",
 					     "intel,xscale-uart";

-- 
2.43.0


