Return-Path: <devicetree+bounces-76194-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id BBE80909ED0
	for <lists+devicetree@lfdr.de>; Sun, 16 Jun 2024 19:34:03 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 61E521F223B2
	for <lists+devicetree@lfdr.de>; Sun, 16 Jun 2024 17:34:03 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 949DB1BC57;
	Sun, 16 Jun 2024 17:33:58 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=qq.com header.i=@qq.com header.b="O905dxj3"
X-Original-To: devicetree@vger.kernel.org
Received: from qq.com (ec2-54-164-151-162.compute-1.amazonaws.com [54.164.151.162])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DF5751946B;
	Sun, 16 Jun 2024 17:33:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=54.164.151.162
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1718559238; cv=none; b=kDMqD1T7h0meYJQhWL6FrkPxwc90Hti6GRvHDN+k+Uovdg6wc0n55sqN4ZParthj07VHR27XmDWg5cdWlJH0psnFH/h3hTO76GyzCK+3LhJSGxUyFNG2o0PZUXB4HI1dIvroYCfNNltrqKsZUb3YKz6Uj12qJtq6Y30FpCArhxM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1718559238; c=relaxed/simple;
	bh=bXpVnWeSf5VmKroUsye8C62KCLYhk+Diz1lcCWrS+Hk=;
	h=Message-ID:From:To:Cc:Subject:Date:In-Reply-To:References:
	 MIME-Version; b=kkkVqdSNzxAj37xwO6iBbxA3gK6c31aFKmLK97mm9Fts/xuoXDKJOp47Tx6GpLK5mV6nt9DSrYM5PMfFD/GsmwfzzmMKEvqJq6NYTnYn46qQr5cCyzjRGzZ5voK/Sw51BwjLOEqCNFXwoLT/JGqgNA9p9QI2rsHniuTBtnwMYlQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=cyyself.name; spf=none smtp.mailfrom=cyyself.name; dkim=pass (1024-bit key) header.d=qq.com header.i=@qq.com header.b=O905dxj3; arc=none smtp.client-ip=54.164.151.162
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=cyyself.name
Authentication-Results: smtp.subspace.kernel.org; spf=none smtp.mailfrom=cyyself.name
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qq.com; s=s201512;
	t=1718559229; bh=QCxFDA+QkmRBdRZGcgiXjLaq5q8XoSrYlBKMg+3T/tc=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References;
	b=O905dxj3phjI1u1Tp87wIjiloMpdbjED1QU+GudeVDMFftJwzuqictooRGPLjduwf
	 UEqpdZEEP0GT8TmzHSe2Hl9EESv7rXbNDrnl1b5bVlEJNqZwKyGUBFYJPpdLJBuDv3
	 6qx9wfKKVLVKQKDlIyq6yaVcVAyYp8lQbp7PrYp4=
Received: from cyy-pc.lan ([240e:379:2260:ed00:cd33:e8cf:d8f9:bed3])
	by newxmesmtplogicsvrszb9-0.qq.com (NewEsmtp) with SMTP
	id 5452D659; Mon, 17 Jun 2024 01:21:05 +0800
X-QQ-mid: xmsmtpt1718558474tw3g8141s
Message-ID: <tencent_D935633C42BE1A7BF8C80553B5571C737009@qq.com>
X-QQ-XMAILINFO: N7h1OCCDntujUM20gunPaMcd/E5Hoffduj40fBOeInfA6d5A0WXm0tEpRLsn2D
	 BWt7my34ZTNK8obOUYW+eMtpsNku+daCR5Q8keEw+GHHbSD6rq6niajZKKDfsXgtjVZK44h4ihGD
	 QMFqH8JpurMvrcGbEkstGyif1jIOkYArFn22QWwmn43BzBeqHKn2AwEIb9Gv/twpmi0KtJt7o/6q
	 c9rSjZa4Q97WadsSHrrYgTAY63rN2OcEYWfqHPft5GAYInndADaG98GT9hOUUJTLNgkZWbdzOBr2
	 TlxlVDTx1c4UzME3v+I+WgXYcem3bRfdIbZpYR4jw+PDFnETplOhPcrEUsX4bMK3wXhyjcp1dMY9
	 sDeHmHBvff+TBJrLtGfWkDlOzNJ6dAJbXd/I32yLYBTa7GMKk1gFsa5dVYg0VTEEhQbIorkPPybV
	 LeDBJ259SNksnfUm5nXqJ8aFYcFPSvYnlBYkpB5KkALKfzW9kFPi5ajSx3qTXfRxCaumE9k7dwEC
	 wGh2noUFnhGW+FOZMsB5OUDBQ7e1ZikV6DEKystoTLfnyZqHx5H9zg/njg3m8OPliOPng1bWHMDk
	 dYsMsouKyWPIJX+CVfir1AYH5P2VekOQZcgH08ib/TnfpxesbsU/far3rZegdqJF4ws1x47Xlz3I
	 Gav/9GrJSB2EYXhlYcJZf0mFOxrNK6DeVLXg5dKkcl2GByr0njy/ByJ4CxmgYfnjvovPRm+VugcH
	 1L3GxWaGLK3fkTKgP7JA7mhUHkDa9u7o4m7v8D/2fzIfIAv3eNHIcO3rDrD7x4kqlpWdktMfYBjc
	 kNmMHC71OPp1WGjHbtU9C3aiDvEM64JhiY4PPfujQ1QpiAqXQ9jm/jJZ6I0ZDlD4HK1HzsNa32F5
	 98ylvL+itHufcQYJIaRNTPgYA0qa0fnVMnVD3XAk9BffQZr2Pr4s6cIxRNFZQXXvNNK4GsGlBhKz
	 sds5Q4XsVena05XgLEXXlmKR5PAJbu689nvEhQ3Ie6Ls6bmsPq2ykCcaZv8MGm0yutGFEVan5ors
	 oMAQsgYA7aHuuiaOQ/iLFNGz21WuVKkTNDgae8NwTj6N+JEtlHppnkF0Z4j8t4asewsAwA7YjaGp
	 LxriID
X-QQ-XMRINFO: OWPUhxQsoeAVDbp3OJHYyFg=
From: Yangyu Chen <cyy@cyyself.name>
To: linux-riscv@lists.infradead.org
Cc: Conor Dooley <conor+dt@kernel.org>,
	Palmer Dabbelt <palmer@dabbelt.com>,
	Paul Walmsley <paul.walmsley@sifive.com>,
	Samuel Holland <samuel.holland@sifive.com>,
	Anup Patel <anup.patel@wdc.com>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	Yangyu Chen <cyy@cyyself.name>
Subject: [PATCH v1 6/9] riscv: add SpacemiT SOC family Kconfig support
Date: Mon, 17 Jun 2024 01:20:51 +0800
X-OQ-MSGID: <20240616172054.3074948-6-cyy@cyyself.name>
X-Mailer: git-send-email 2.45.1
In-Reply-To: <tencent_BC64B7B1876F5D10479BD19112F73F262505@qq.com>
References: <tencent_BC64B7B1876F5D10479BD19112F73F262505@qq.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

The first SoC in the SpacemiT series is K1, which contains 8 RISC-V
cores with RISC-V Vector v1.0 support.

Link: https://www.spacemit.com/en/spacemit-key-stone-2/

Signed-off-by: Yangyu Chen <cyy@cyyself.name>
---
 arch/riscv/Kconfig.socs | 5 +++++
 1 file changed, 5 insertions(+)

diff --git a/arch/riscv/Kconfig.socs b/arch/riscv/Kconfig.socs
index f51bb24bc84c..8a5775586845 100644
--- a/arch/riscv/Kconfig.socs
+++ b/arch/riscv/Kconfig.socs
@@ -24,6 +24,11 @@ config ARCH_SOPHGO
 	help
 	  This enables support for Sophgo SoC platform hardware.
 
+config ARCH_SPACEMIT
+	bool "Sophgo SoCs"
+	help
+	  This enables support for SpacemiT SoC platform hardware.
+
 config ARCH_STARFIVE
 	def_bool SOC_STARFIVE
 
-- 
2.45.1


