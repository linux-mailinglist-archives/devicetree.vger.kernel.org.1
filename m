Return-Path: <devicetree+bounces-246354-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 6389CCBC181
	for <lists+devicetree@lfdr.de>; Sun, 14 Dec 2025 23:48:27 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 512A93021F88
	for <lists+devicetree@lfdr.de>; Sun, 14 Dec 2025 22:47:17 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 18F6D270575;
	Sun, 14 Dec 2025 22:47:17 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="WBJHfYhS"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pf1-f181.google.com (mail-pf1-f181.google.com [209.85.210.181])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5EE89284880
	for <devicetree@vger.kernel.org>; Sun, 14 Dec 2025 22:47:15 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.210.181
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765752436; cv=none; b=upjbUIu9qS5Y177p2z0jSy+a6WbUrPv3Kxo+WWvuA+a7r67Ay1vGqQO1/pZOvH5dDZVSFDEPfvVhIcqNybV9rnBiZigmbqz8XdwIMDbDEnUrB/J1ESP61POUGm9ZMnPKAdeu0W54vfLf0zEEY3pfXFyWQVmn8zC+IM1kRyP9qlc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765752436; c=relaxed/simple;
	bh=9q5/APX87RGgYmhMNh/WDYwQpX7HX4MP+fy+fzWDQzo=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=q41CBceXsW1VJauKs/w8i7l7CrvM/M9/pN4ZO0cNVvav+gV0z3Y3fiXnJMugCeguOnJSZGkfNBNru4DGp/9lSu6BOtgqUHJIkeHOtWfLpxsQK68nR9ddi0MH8Xm0UmjL6dpvMY4+SueMyLi/TRld3FQT8xvYZTUkjFd9Ike3/bE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=WBJHfYhS; arc=none smtp.client-ip=209.85.210.181
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-pf1-f181.google.com with SMTP id d2e1a72fcca58-7aa2170adf9so2175049b3a.0
        for <devicetree@vger.kernel.org>; Sun, 14 Dec 2025 14:47:15 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1765752434; x=1766357234; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=lDRFsyvQwwFF2ebD1NnNsyQGvhsS9i0D0wecAIBs+ow=;
        b=WBJHfYhScueo0Ftt0iI2I875LYaSlMLZH7xJUQoUrZz/EObezqRr5Gl4eMV5ODmFpY
         36TXwHUvqIGQzCzSodl86whdSsm9p9K4h+HhlCsJ43qwXu4AzwsYte9wlCpWPSPM8Boe
         xAgttzDQIxhjbKmR88fetT4fQKecKlwVyut4G0r/kBRjeRquedPner1Vm3vgZDJJFALy
         tECfyk/Iq0mg8KURS0g2wYDW173P+9nxYsRNHUvKLXCfjQnDfZDLamj9dPE85FwxbshG
         73SBwSVsTQf6VccjfkoxzCYE2XJNQURVY2Jw9mPIFOr4Y/HPaP6nSumRSiEy/sX8NduM
         IEVw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1765752434; x=1766357234;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=lDRFsyvQwwFF2ebD1NnNsyQGvhsS9i0D0wecAIBs+ow=;
        b=DfffEA3l0b7/1E3a2Gfe2q0bnJZzKiW8yjYB2ILXCHroAjbJs5nTg+JHLLyEsBqJLt
         22ctsf1mJdgcdfsi+W76ztPi6i/ri+S4Tn7GLIk/RzXT4RvdcKYTcoFlYjx8rYkbCAIC
         rXfsQ7hFbOC+MfFdlGg1pfNmyvZsmbDhCRqZdChoxrJlm7MH9u6Th+o4lFIRK6mNs/gH
         7UmHs8YmPBeo6zPJ3+Pawkb7PwLKxEqWgnAnPcPo5eB8JsbTtOs0KnR4xvpdv+3zcqV2
         bdPsHnBomogB9Nh4/RA/tW2VOI2g8zAcrNNUjfvEv7ABox4lmsE0k1mX0f5nMu6PTakJ
         LUrw==
X-Forwarded-Encrypted: i=1; AJvYcCVxALipi1cCcnwJluC1/OJ2IiXaRnCiwz5Y5y+Xsdr4I7xd0BJCKP5iw2uIsD4eI6xO4NJ1ELN2zLXX@vger.kernel.org
X-Gm-Message-State: AOJu0Yx4F+uT8sNrTj1rGUfNqEiMIc2l2hV2teXELdDZhakgAyr1hJHq
	t8+iebIlbqL7OBOzAaXkfooNCx0uSijx7OZgXcbEwRf9aAkr74rHXLcm
X-Gm-Gg: AY/fxX5xcrXI2FujDfhr9HIjZ3PNRscfMst40OEtAa8d5Qxw1/sxk1mf0BCJvgUEv6n
	xDp3JFX1vWp/+mWOzZtaTL7ansAyZepE8lLf3frLYQhG4JXZOhiAH7dJWfnggA4lctB7HjND3VX
	cQrL0OxvY7l1r6vKNqQnZhdzNcnigeKeL6RAZjdPuHmpkkr6XU7KsHep35dHzos+9bPlI+/yWhV
	uwnItwdjq05RDq0Vv5IoIAIpZP8IZUYuUn8qEQ/yThCztRwGink1pOqq3spgO/vcn75j+pN79C+
	YKvCXoD/FwTECYCKqZ/iury3ZEK5qZz2YW6y21Wmob7/k5i4zlPxajG6FuVwnpSVRHNTJcbT5m2
	+oq3xF2Wpj2QeCqIlPms/Pe8F6QTpWRKUnX4/C2RjJ0gPwOvh5Nb2iF3TnbrbnvHELGeFNB4Xyg
	P0Iubacde2ug==
X-Google-Smtp-Source: AGHT+IHY+I6N505J8tBBxCiWTM4hXbMHovgZ3qawJ/YmUXRO/axk7y7nKaNrWFiQXdKScyMIfR120Q==
X-Received: by 2002:a05:7022:6184:b0:11b:8f3a:3e07 with SMTP id a92af1059eb24-11f34bee60emr7877296c88.11.1765752434409;
        Sun, 14 Dec 2025 14:47:14 -0800 (PST)
Received: from localhost ([2001:19f0:ac00:4eb8:5400:5ff:fe30:7df3])
        by smtp.gmail.com with ESMTPSA id a92af1059eb24-11f2e2ffac2sm39963363c88.11.2025.12.14.14.47.13
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 14 Dec 2025 14:47:14 -0800 (PST)
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
	Ze Huang <huangze@whut.edu.cn>
Cc: "Anton D . Stavinskii" <stavinsky@gmail.com>,
	dmaengine@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	linux-riscv@lists.infradead.org,
	sophgo@lists.linux.dev,
	Yixun Lan <dlan@gentoo.org>
Subject: [PATCH v2 3/3] riscv: dts: sophgo: cv180x: Allow the DMA multiplexer to set channel number for DMA controller
Date: Mon, 15 Dec 2025 06:46:00 +0800
Message-ID: <20251214224601.598358-4-inochiama@gmail.com>
X-Mailer: git-send-email 2.52.0
In-Reply-To: <20251214224601.598358-1-inochiama@gmail.com>
References: <20251214224601.598358-1-inochiama@gmail.com>
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


