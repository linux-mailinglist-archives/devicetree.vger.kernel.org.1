Return-Path: <devicetree+bounces-76484-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 590E990AA4D
	for <lists+devicetree@lfdr.de>; Mon, 17 Jun 2024 11:55:04 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id CC950289C54
	for <lists+devicetree@lfdr.de>; Mon, 17 Jun 2024 09:55:02 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 49F8519643C;
	Mon, 17 Jun 2024 09:46:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="XBXH8NFY"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ed1-f52.google.com (mail-ed1-f52.google.com [209.85.208.52])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 861AB196C75
	for <devicetree@vger.kernel.org>; Mon, 17 Jun 2024 09:46:52 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.52
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1718617614; cv=none; b=PqdPknowEL0TXylPXTA04PEsvAOb6JDD22Y6rDKX/h9XPBU49s0wkv/5UOYYoDTno7sqchTnzlchYekdn9XyAjJ49Ubaq5Su7EGvfuUoVzgtH5AYDpZv/Ps8y67jBbnAjP/YdeGXzD3Of4B569WS4U0biiDO+1WsdB0oXI8gOXo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1718617614; c=relaxed/simple;
	bh=AOXR1hDpTMAi5A67tDb98XY7rzBYi6SPL21QH0Px5mA=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
	 MIME-Version:Content-Type; b=rAeCmK2g509Ne5jgG6mgqomjnbC4C6VX0yGSd3rvUk8DTHd7qdVmZh9b9VwQkkR1HFaH8lYm1CPYUkRJbhCicUel8SikyobzPGT9/dIreSZdiEva6HNpiXQV7Fv51CPqHgyvsfBE5tU7xlQTu10UhLnLx88DysfOGQEPKTMANuI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=XBXH8NFY; arc=none smtp.client-ip=209.85.208.52
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-ed1-f52.google.com with SMTP id 4fb4d7f45d1cf-57c76497cefso4854313a12.1
        for <devicetree@vger.kernel.org>; Mon, 17 Jun 2024 02:46:52 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1718617611; x=1719222411; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=pYR8nPowvx0FVmVRxf+D8yDNGq/8/7xaLOVhmi9JDr8=;
        b=XBXH8NFYk2FJEPrqn2gwHQeJCKdybw/r8EsvzFCOi/B/Y0aOEi3GRG8p6l3cDI7L0o
         b+hl0v3Eu3ZmnMthV6q1XBEN5S1Naitp0UjMbO8DlIoOF8XOUHW95smNDhJiAbPP2kQa
         PaaEB2g0aFIl2JUfXnjtvlKeMVpLGK+VrlSddL+c6w8MsCmtz1ULEUZVoHdMw85ckk4I
         crCvv1q/ESyMrR8bINCToSnjH74hrtKvlqLkA2rmPiC21dKdYqPGKZJRHf40S2w3BWT/
         Fq3EV2ozsBhRlRHI25a3ULLIZI3uQK1ISttyoyx84cEmf6J7juk2WcwJO5hsmft5byqm
         nObg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1718617611; x=1719222411;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=pYR8nPowvx0FVmVRxf+D8yDNGq/8/7xaLOVhmi9JDr8=;
        b=q2mzR98qShRAXgLu25nZRX4eA8kre8Cl6J3UPu0mrwHrFjxCwGY9AHVCJ5a2wNSLSt
         aMh/KV8SxVlJOVab3Wle1uBEv3SnZkw5yABynz1WOZK9PFJibYDP8Y3j/KK2rsRF3Hgk
         xE4O8jTEyNx2s3xhMLr6ygbeZ8fNh2uK2Ke4fI7pziD9kQQWAuoTqaed/mdPMuV6Zn++
         PMeJCvlE7gt4Ui54cUCCK6dtIvLswRMOzVR12CFqdEoU3IC5YZASYlgpj1lFtYNFcT7G
         v8ROwGgZ74xvUoeRe8a6EPNp87MpuozJeSJ6ncuWlA4nlQhA4RiXxX5RNFpOJnYSI9+9
         QAHA==
X-Forwarded-Encrypted: i=1; AJvYcCVnhF8cALHOMyFKojlFFp2p7VnGve0oqov9IRCU34hXD9gGpBMrrXBncIkcbuYVFjNtaX9JQ4xc/5Fg0QIyaM1Ub+gDQLSWYvQPiA==
X-Gm-Message-State: AOJu0YyyB4fx81Px++n7Uys33YETBnsLFlHoiMxAt5FA8UjMB/5Z+Hd7
	ZjAV1PdB6yfEKBxM0OBzHhQX+2A57xLMkvx1MgwXXrMLTwyg+OJ1
X-Google-Smtp-Source: AGHT+IGNBqfbEy7gtwzJveWmAq6LUwMFqf1e5/wf22AKAgwzgLy8euB9aKLPKh5PbgSi9eNou4NOZw==
X-Received: by 2002:a50:8a97:0:b0:572:7bda:1709 with SMTP id 4fb4d7f45d1cf-57cbd649655mr6027283a12.9.1718617610447;
        Mon, 17 Jun 2024 02:46:50 -0700 (PDT)
Received: from localhost.lan (031011218106.poznan.vectranet.pl. [31.11.218.106])
        by smtp.gmail.com with ESMTPSA id 4fb4d7f45d1cf-57cb72da790sm6141318a12.35.2024.06.17.02.46.49
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 17 Jun 2024 02:46:50 -0700 (PDT)
From: =?UTF-8?q?Rafa=C5=82=20Mi=C5=82ecki?= <zajec5@gmail.com>
To: Matthias Brugger <matthias.bgg@gmail.com>,
	AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>
Cc: Sean Wang <sean.wang@mediatek.com>,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-mediatek@lists.infradead.org,
	=?UTF-8?q?Rafa=C5=82=20Mi=C5=82ecki?= <rafal@milecki.pl>
Subject: [PATCH 2/2] ARM: dts: mediatek: mt7623: fix efuse fallback compatible
Date: Mon, 17 Jun 2024 11:46:34 +0200
Message-Id: <20240617094634.23173-2-zajec5@gmail.com>
X-Mailer: git-send-email 2.35.3
In-Reply-To: <20240617094634.23173-1-zajec5@gmail.com>
References: <20240617094634.23173-1-zajec5@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit

From: Rafał Miłecki <rafal@milecki.pl>

Fix following validation error:
arch/arm/boot/dts/mediatek/mt7623a-rfb-emmc.dtb: efuse@10206000: compatible: 'oneOf' conditional failed, one must be fixed:
        ['mediatek,mt7623-efuse', 'mediatek,mt8173-efuse'] is too long
        'mediatek,mt8173-efuse' was expected
        'mediatek,efuse' was expected
        from schema $id: http://devicetree.org/schemas/nvmem/mediatek,efuse.yaml#
arch/arm/boot/dts/mediatek/mt7623a-rfb-emmc.dtb: efuse@10206000: Unevaluated properties are not allowed ('compatible' was unexpected)
        from schema $id: http://devicetree.org/schemas/nvmem/mediatek,efuse.yaml#

Fixes: 43c7a91b4b3a ("arm: dts: mt7623: add efuse nodes to the mt7623.dtsi file")
Signed-off-by: Rafał Miłecki <rafal@milecki.pl>
---
 arch/arm/boot/dts/mediatek/mt7623.dtsi | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/arm/boot/dts/mediatek/mt7623.dtsi b/arch/arm/boot/dts/mediatek/mt7623.dtsi
index 9c5a52ce9351..748f9b366897 100644
--- a/arch/arm/boot/dts/mediatek/mt7623.dtsi
+++ b/arch/arm/boot/dts/mediatek/mt7623.dtsi
@@ -328,7 +328,7 @@ sysirq: interrupt-controller@10200100 {
 
 	efuse: efuse@10206000 {
 		compatible = "mediatek,mt7623-efuse",
-			     "mediatek,mt8173-efuse";
+			     "mediatek,efuse";
 		reg = <0 0x10206000 0 0x1000>;
 		#address-cells = <1>;
 		#size-cells = <1>;
-- 
2.35.3


