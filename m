Return-Path: <devicetree+bounces-245995-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 10C9BCB79E7
	for <lists+devicetree@lfdr.de>; Fri, 12 Dec 2025 03:08:17 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id A91ED305CF3B
	for <lists+devicetree@lfdr.de>; Fri, 12 Dec 2025 02:06:24 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 3877321D59B;
	Fri, 12 Dec 2025 02:06:18 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="Bicz9dRi"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-dy1-f180.google.com (mail-dy1-f180.google.com [74.125.82.180])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 25B4729ACD7
	for <devicetree@vger.kernel.org>; Fri, 12 Dec 2025 02:06:15 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=74.125.82.180
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765505178; cv=none; b=lOC6XvcM3rftg9zUt3ixmJpkLuLX5tf/omAiNPaGp4BvHxDbvbujPeDmDBZviDQxJxEUIVNMlgULIVimE12ppEGZeMKgBTafQvPXXvziTW5wz0SRMbs5CKx8y7FLkdhKG+V0TzfTvoTToYjr+MeLUPXSPq2zE+52AaCtUem0NZU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765505178; c=relaxed/simple;
	bh=9q5/APX87RGgYmhMNh/WDYwQpX7HX4MP+fy+fzWDQzo=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=ZAzoUCx+Rx2S1YJtZeHa7Nnx8NTws502V+wtxOQUmi+BDXezDs7o4AlUwVSbh08DkHANSA4wMoyfPj1XA3iEsxN4b0/uG+cCT5PdJ33igk1SWLiYe2xK+5iYPlarq3Nl9ERN57ny44NsGcdm0RN6sPuq8hUOYgz5fwDy7UxzsWo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=Bicz9dRi; arc=none smtp.client-ip=74.125.82.180
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-dy1-f180.google.com with SMTP id 5a478bee46e88-2a45877bd5eso1005850eec.0
        for <devicetree@vger.kernel.org>; Thu, 11 Dec 2025 18:06:15 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1765505175; x=1766109975; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=lDRFsyvQwwFF2ebD1NnNsyQGvhsS9i0D0wecAIBs+ow=;
        b=Bicz9dRiAdbFcHdmfiSdk/Jq9Gq81++EppELG85Zgg27vfSfAG5z1A4m7VDYiep2uP
         av+V3Ol9WIWWo+NUuwIdPirqoQpLkFk1QewSjngWcBk9FOODg8+Xs8aademrur7vc/+2
         jS0wXDN3MTB5/rWEmmy/kvfqDgfhyFWC12ryZIkCGoU2Mq3xE+K2bH8LEqrzWu2/KQJV
         rJAaAGYaVRBok/PKv0xrzZn4PtyYXfxixf1fwQw44iQlXs4PrI2k9TyGCc8S23/gYDPo
         97Ltu55iQVdcE8MRQIwhcQnwn1j7XHcvEITXpdkTw/NqXYfi+CL/esCENfg0Akt0AJo3
         XBcA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1765505175; x=1766109975;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=lDRFsyvQwwFF2ebD1NnNsyQGvhsS9i0D0wecAIBs+ow=;
        b=koEUb42I88fRyJSMPaWLQX7WnQ83ZmJZ5SDUdOpe2T6NVu2MWIkR6ltMe2XiPtZ7JP
         ahG2wXw9RlVEPbR//x9B23kh88jnk3MEJLjK4VRtrBgiMyYapYs4QeRNw+BD2dXdQJJ8
         A9AuPtplr2pqoeGEtIXG9ptJY6wIeW9ruRyOqmgW538+eqBfhoD1/9V1r7/5dmyWw2Cm
         SZDlTXUlrcVuM7jF5s/fbLzBHc8jiwfaby5OZpG1wpJtuVX4mn8WkCbQKQsDbfAYf/1E
         XDL1WrEndE+WLjyKxFZQz3QJqTGA9/+rZdncF6ichaT+UpP7HSQbV/WRCB/v/f5MmEQt
         0bWQ==
X-Forwarded-Encrypted: i=1; AJvYcCWDxWM0sdaNk9t0m61jLD6uKqSmWQ61tS421jfXn5eYLoWlK+bcv8QFk0A8OkNnC09Nr2h4fWILJcJw@vger.kernel.org
X-Gm-Message-State: AOJu0YyVrt7zvUNca3HiNRw+CDjqycHKBcEaWwmzShU2S1lwe/OD9Hnc
	4pD1uzvXvy2IrRK0tVUCmCMwEdkRSpTuqargew5wlg7hOvpb2ZNzQFXv
X-Gm-Gg: AY/fxX6stoXn9GzQ5qyGDnVcdcbvDGDTf5pAkAi2FpG3Ht7A2ZUjl1jwcLickabi87Q
	y3SCgda7V957Gjn3paFw6tshrPI86usnGM0nCtCKCYNzMgYDkUiNldVACWK+rZTKCCAlwPe9lD1
	R47YvMKnBZzfbAEAqGBTsN7tl3aLFC7eqNcwADq87txxabjhmL9ILybigRJvAIRexXaCW3ZRMHP
	C4hWsxad2fpmWNEl5TY81OwRCNAat/DAGUsOfZPVykc9Otq6isq8MLDQwkXlmxumbLIKRx6v/tM
	EzlHsq2Wc+jetD8+aOjEUfqAcD4wJDYZ9MD4SHNZHOwinCaTN7EI1SrttJj3BRsMypqFk+et5ny
	1UZmpXA/x3INWTgNfeiQ15MtW8cpR4V3HP+RcLovv2gey8AhJ6Lz0L/yDN63bQJAGsECUEZIDqz
	6Fact++tjdfQ==
X-Google-Smtp-Source: AGHT+IHp4XoVEq8gZitvB+BzE1jK7qxIPLPcDqRDy/MZup4QourLgfB3mVZLdfvqwzeWxynBbGaqDg==
X-Received: by 2002:a05:693c:26c4:b0:2a4:626d:5c38 with SMTP id 5a478bee46e88-2ac1c7af40dmr1966521eec.17.1765505174731;
        Thu, 11 Dec 2025 18:06:14 -0800 (PST)
Received: from localhost ([2001:19f0:ac00:4eb8:5400:5ff:fe30:7df3])
        by smtp.gmail.com with ESMTPSA id 5a478bee46e88-2ac190acd01sm11708576eec.1.2025.12.11.18.06.14
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 11 Dec 2025 18:06:14 -0800 (PST)
From: Inochi Amaoto <inochiama@gmail.com>
To: Eugeniy Paltsev <Eugeniy.Paltsev@synopsys.com>,
	Vinod Koul <vkoul@kernel.org>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Paul Walmsley <pjw@kernel.org>,
	Palmer Dabbelt <palmer@dabbelt.com>,
	Albert Ou <aou@eecs.berkeley.edu>,
	Alexandre Ghiti <alex@ghiti.fr>,
	Chen Wang <unicorn_wang@outlook.com>,
	Inochi Amaoto <inochiama@gmail.com>,
	Alexander Sverdlin <alexander.sverdlin@gmail.com>,
	Longbin Li <looong.bin@gmail.com>,
	Yixun Lan <dlan@gentoo.org>,
	Ze Huang <huangze@whut.edu.cn>
Cc: dmaengine@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	linux-riscv@lists.infradead.org,
	sophgo@lists.linux.dev,
	"Anton D. Stavinskii" <stavinsky@gmail.com>
Subject: [PATCH 3/3] riscv: dts: sophgo: cv180x: Allow the DMA multiplexer to set channel number for DMA controller
Date: Fri, 12 Dec 2025 10:05:03 +0800
Message-ID: <20251212020504.915616-4-inochiama@gmail.com>
X-Mailer: git-send-email 2.52.0
In-Reply-To: <20251212020504.915616-1-inochiama@gmail.com>
References: <20251212020504.915616-1-inochiama@gmail.com>
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


