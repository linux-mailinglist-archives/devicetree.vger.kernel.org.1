Return-Path: <devicetree+bounces-257147-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from dfw.mirrors.kernel.org (dfw.mirrors.kernel.org [142.0.200.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 6BC30D3BDED
	for <lists+devicetree@lfdr.de>; Tue, 20 Jan 2026 04:28:11 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.mirrors.kernel.org (Postfix) with ESMTPS id 0CDDF4E2FFA
	for <lists+devicetree@lfdr.de>; Tue, 20 Jan 2026 03:28:10 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 1F7FF326943;
	Tue, 20 Jan 2026 03:28:07 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="CilRYqUI"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-qk1-f176.google.com (mail-qk1-f176.google.com [209.85.222.176])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 97ABA326930
	for <devicetree@vger.kernel.org>; Tue, 20 Jan 2026 03:28:04 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.222.176
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768879687; cv=none; b=c8U79vpyJJGxaXq39bP1+uw7Lr8pg6Is7sbmX4Qpds6yZ8yBqr0YpufcEtrAkCl4asufgn8duYz8jzw+6S+DF04IerFf+fBtCW7M5BClQUyKKnBGEYj3mtKUfDp6RDxUPpCJyLQekXFMXXNlDQin1lWV3sjLLVdJ+abd96Nuqsg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768879687; c=relaxed/simple;
	bh=TnrWvLiHpwdAR1oIsgz5dmEGTJ7Pw1ADVefNWrpsJwk=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=Z3SDtnGDE2fsfTtlyC4ILOH7Khiw7afTY4SRt4BbiwUNJXINPpVaHHy/XwZ4YRDxh9T2GJw48AHbB8SXubJCNE4eDeTa8ID8109iEPVhOBZo0N9IMDlBIWhkDn0XArJLFj9dvgsZQCEJhVPpWP8D4OLdF7A1mNIwZ1p4f/pccIY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=CilRYqUI; arc=none smtp.client-ip=209.85.222.176
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-qk1-f176.google.com with SMTP id af79cd13be357-8c6a7638f42so612677185a.2
        for <devicetree@vger.kernel.org>; Mon, 19 Jan 2026 19:28:04 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1768879683; x=1769484483; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=hlh3awqwpSDVfosrs2ZgXu5CLF0C481abnvSQYVV+dg=;
        b=CilRYqUIhPWDXpyHmzz4aOx/LNwxTQS6n25lXtJF0M1R9wg6+iWyX2FAVAKO1E5lxx
         e/vK9ZVdtATNIk2sr26l1vdIfIQUDGoaNoDgCup2SV34uKAyHsoEDlbpvvk7hOJsBq7x
         SNWHU/gLWPfQo9kif/66phOyZi4QNPFz6GvVVIOj9ujXFBP4h+PSdSopw14KjvsOtlD/
         2owkbL3LVedTkVCX9I91zsVB4D4HSuRC2jcNKVegE21QIzXmLvrc8xwrk2oU4tOaFolq
         M5E5dv84OPLwSU55S7YZ5KiPJbANIoCgk3l23F9TIJdghezJuU+eyLP7D/oxshHaYhlD
         Uiuw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1768879683; x=1769484483;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=hlh3awqwpSDVfosrs2ZgXu5CLF0C481abnvSQYVV+dg=;
        b=ZETTV2ZK6RObXtRcEggrvoPJ6TgTKIAlr9Unrkxw1xYyNQONqWYmSCi+7DCQE2Cd5c
         CNOV7vdlvA7Du0jt7RgEB8yZB5345HAyol+CSd21EzccauPJKM50uPyjTyAwWuqd/q9W
         zQtFhraZBRtpR92kmXzksWL/Ht6IdAzPzseBzkxdwGdshnHE6Cfrc039qe+QpIXEiJoL
         2LrokWJSGjkwjxz2LoUrbM+uNcgbta5NhL9zHKgm5+bNeeMQiqUQFuH+fRUfi+MX6GFw
         RMVvSzOXA48IdCxwp3QwjnYHOgnXEDZfmnxR7PQYFK28BjAvGI4hZ1ta0izoaEMF4Vea
         z+PQ==
X-Forwarded-Encrypted: i=1; AJvYcCW1ytXZtHgMAQ2c90WJc0Guv7OAc5PDJQKuCrq9XbUV9/xmneLbtIO6oZ+hSZFzr5SIbX4iD1aoQkCX@vger.kernel.org
X-Gm-Message-State: AOJu0YwpmPMddxKa/Fh/cEb9xspyujkk0LvOBfa7QkRBtg+IipjlYy7w
	aNG9sk464U/IPHl2RbdE3ExZFiyQTC2t6fGIWmFg1i0AcnDsnv/P0UppQCUemFSi
X-Gm-Gg: AY/fxX7ZhSy3AsIAhZqvoV39S31yZnJF0Mt9C5/BBcf+5isCo2LU6FRtBh3Yj41DEx7
	47UJorK1WYj7bZg0u9EeDfP6VpkLqdQSWfaH/QHSKyu1mTiqBxLK05FODtbIR3/zsje7z1E3XWP
	7x5FlNLGJr1xm20UJa8kVAjN6G/Ym3SfI5VdKGP/8F4YSA7cJQki91FudiUZAN6bHG36YGAE8vC
	mle9kaYmJG4Gw4wac9AvHLe+AAAC6TP+ph5AGB+La/8p4TR73Ba8vfpwQTg6FCl8q0OrkD4NY7U
	OT+ixGbVYvavUpRoArw+Zic45kjFJiGCU5khp3s0Q18faqU8F3TflWCAAntOaUtOR9FjBBeEf0x
	oarkkMq3hNPvtfMHPCotTiYXVc1VuCCb5Cs5+BhXq5AOxyNIVeomMjV4MI9Awh/UjwDpVFvpSlV
	jH9hYyjJ2wKQ==
X-Received: by 2002:a05:7300:6c89:b0:2ae:4f61:892e with SMTP id 5a478bee46e88-2b6b4eaddf6mr9178898eec.36.1768873045971;
        Mon, 19 Jan 2026 17:37:25 -0800 (PST)
Received: from localhost ([2001:19f0:ac00:4eb8:5400:5ff:fe30:7df3])
        by smtp.gmail.com with ESMTPSA id 5a478bee46e88-2b6b36550dfsm15337344eec.25.2026.01.19.17.37.25
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 19 Jan 2026 17:37:25 -0800 (PST)
From: Inochi Amaoto <inochiama@gmail.com>
To: Eugeniy Paltsev <Eugeniy.Paltsev@synopsys.com>,
	Vinod Koul <vkoul@kernel.org>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Chen Wang <unicorn_wang@outlook.com>,
	Inochi Amaoto <inochiama@gmail.com>,
	Paul Walmsley <pjw@kernel.org>,
	Palmer Dabbelt <palmer@dabbelt.com>,
	Albert Ou <aou@eecs.berkeley.edu>,
	Alexandre Ghiti <alex@ghiti.fr>,
	Alexander Sverdlin <alexander.sverdlin@gmail.com>,
	Longbin Li <looong.bin@gmail.com>,
	Ze Huang <huangze@whut.edu.cn>
Cc: dmaengine@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	sophgo@lists.linux.dev,
	linux-riscv@lists.infradead.org,
	Yixun Lan <dlan@gentoo.org>,
	"Anton D. Stavinskii" <stavinsky@gmail.com>
Subject: [PATCH v3 3/3] riscv: dts: sophgo: cv180x: Allow the DMA multiplexer to set channel number for DMA controller
Date: Tue, 20 Jan 2026 09:37:05 +0800
Message-ID: <20260120013706.436742-4-inochiama@gmail.com>
X-Mailer: git-send-email 2.52.0
In-Reply-To: <20260120013706.436742-1-inochiama@gmail.com>
References: <20260120013706.436742-1-inochiama@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Change the DMA controller compatible to the sophgo,cv1800b-axi-dma,
which supports setting DMA channel number in DMA phandle args.

Fixes: 514951a81a5e ("riscv: dts: sophgo: cv18xx: add DMA controller")
Reported-by: Anton D. Stavinskii <stavinsky@gmail.com>
Closes: https://github.com/sophgo/linux/issues/9
Signed-off-by: Inochi Amaoto <inochiama@gmail.com>
Tested-by: Anton D. Stavinskii <stavinsky@gmail.com>
---
 arch/riscv/boot/dts/sophgo/cv180x.dtsi | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/riscv/boot/dts/sophgo/cv180x.dtsi b/arch/riscv/boot/dts/sophgo/cv180x.dtsi
index 1b2b1969a648..e1b515b46466 100644
--- a/arch/riscv/boot/dts/sophgo/cv180x.dtsi
+++ b/arch/riscv/boot/dts/sophgo/cv180x.dtsi
@@ -417,7 +417,7 @@ sdhci1: mmc@4320000 {
 		};
 
 		dmac: dma-controller@4330000 {
-			compatible = "snps,axi-dma-1.01a";
+			compatible = "sophgo,cv1800b-axi-dma";
 			reg = <0x04330000 0x1000>;
 			interrupts = <SOC_PERIPHERAL_IRQ(13) IRQ_TYPE_LEVEL_HIGH>;
 			clocks = <&clk CLK_SDMA_AXI>, <&clk CLK_SDMA_AXI>;
-- 
2.52.0


