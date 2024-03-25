Return-Path: <devicetree+bounces-52993-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 240EC88A974
	for <lists+devicetree@lfdr.de>; Mon, 25 Mar 2024 17:34:08 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 559D21C3A06A
	for <lists+devicetree@lfdr.de>; Mon, 25 Mar 2024 16:34:07 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id BFAE312C551;
	Mon, 25 Mar 2024 14:37:36 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="b1/l3USo"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-oa1-f50.google.com (mail-oa1-f50.google.com [209.85.160.50])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2E82313CFA6
	for <devicetree@vger.kernel.org>; Mon, 25 Mar 2024 14:37:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.160.50
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1711377456; cv=none; b=QkrQGzaGjtBKRT7u1+ccBAMaEaOpzuutIP008dXMLpaFOMUvHLE2ugN3vusbbyA8xc2JcGGoquLrpxUcF/ekSRc8y3zLdkDiHCLQ6bZOcJsbrwuW5dm8lFLBiH2pc8FYNC8nbzwDWYdA8LZnrxmt5D2FfgV+7ub8mnlu0PciH80=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1711377456; c=relaxed/simple;
	bh=VsFizpVQywjUDfCZG3OAR/4o4rg+shQUyDNixa7kgbQ=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
	 MIME-Version; b=LNXKgIajt2LwbtLTOBXd2tZ71vflVO2RsMJX8rSx76YpUTnLLRXCBXfcIHutREd/0lklKoN4vWx2tXNX9nkl05P4CvMTCMPmEBWNXtkDjvRfISTZipJqa2FSq9Z2za6mmbjiBf3usfvWmRsSuRQkjEUTIxbuIkSE59S7VKkZZRw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=b1/l3USo; arc=none smtp.client-ip=209.85.160.50
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-oa1-f50.google.com with SMTP id 586e51a60fabf-22222357d76so1508037fac.2
        for <devicetree@vger.kernel.org>; Mon, 25 Mar 2024 07:37:34 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1711377454; x=1711982254; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=QNg/lAN0ji1lgkv8ICJBH5shfYt5KAq0z8UCo+AIPcY=;
        b=b1/l3USo4M6BZE7dH/cb9a3p91Ki9TogVdyIBTwnsRy2lB5MaNeCiVx/p4AfIFJEkT
         aNgza76S92lJgQrX+bmGFgH8M6EulLcgp3Qk8C8Ft5UIHYsTzuZXHJmVr84nfLUr+1zK
         PLvBxH41n3v2/fMfc2LPmOBmIpqM8QVOTE8YCglU2yaf2sijxA+OVA7e7v+2s+g9H4A8
         ZfQfWCEaQ4R50nViIdIKCCJPhAP6fdm6eGXjbFlR0ZH1jimZ5vSdkLWwqbL9h3p6o9+O
         7CLkgTAJjw84NB83ZIPD92p5JEGJ8/PWOqRwWoieOiqw2TLfU3umIM1fihJuN6/AN2ws
         LuZw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1711377454; x=1711982254;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=QNg/lAN0ji1lgkv8ICJBH5shfYt5KAq0z8UCo+AIPcY=;
        b=q2ATItCudBgkwUjbKQTo0xs1aC+jdtKatdzOJ5Rdm4IzabMdtIjfmRm+aQXpAYH5YW
         twGsriGnimVDop68kXdAbb3hohRJXHzpUJCt0C48KPf6eWZTQdLRahpmvke3NHecUOOE
         MbdpIKiBreYuSD1uwu8bA8KYLdz5zO+E8tQvlWcHjw9kY2yWRf6yDBvpBpIpXalW5a0R
         sx/cRjR00jHAuXBxD3KxwwdsHEbJTMkce3MUvh8VYl8o8w8GZlgdaK7P2Y2hEc53Bg/a
         y31KuZ6IdIgPk+NbWSBVcxWimz0l/EvC+1HEZHam8keftPS3K+VjLiHJcaWyd8plSx+k
         T/9w==
X-Gm-Message-State: AOJu0Yx6gADQ3nE/GoCZHW5Yd/S5HXNXkIdBUXkC+D34O2OwIfALP+K+
	QaHEynquxdj+PnF6SCnceM1N/q7QRjJev8ZoRkHDH4rbnpL2HykQ
X-Google-Smtp-Source: AGHT+IGv5f1B1VUhDqe1XP+drjOwefd9ldyERXeymiDRfWRwlw9KWkzHtMzZZeYxxYj4oZ42RPBt6g==
X-Received: by 2002:a05:6871:31af:b0:229:800f:3ed6 with SMTP id lv47-20020a05687131af00b00229800f3ed6mr6315397oac.36.1711377454257;
        Mon, 25 Mar 2024 07:37:34 -0700 (PDT)
Received: from localhost.localdomain ([75.28.21.198])
        by smtp.gmail.com with ESMTPSA id xb22-20020a056870cd9600b0022a0ff98f9bsm1417180oab.4.2024.03.25.07.37.33
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 25 Mar 2024 07:37:33 -0700 (PDT)
From: Chris Morgan <macroalpha82@gmail.com>
To: linux-rockchip@lists.infradead.org
Cc: devicetree@vger.kernel.org,
	heiko@sntech.de,
	conor+dt@kernel.org,
	krzysztof.kozlowski+dt@linaro.org,
	robh@kernel.org,
	Chris Morgan <macromorgan@hotmail.com>
Subject: [PATCH 2/4] arm64: dts: rockchip: rgxx3: Add optional node for chasis-type
Date: Mon, 25 Mar 2024 09:37:27 -0500
Message-Id: <20240325143729.83852-3-macroalpha82@gmail.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20240325143729.83852-1-macroalpha82@gmail.com>
References: <20240325143729.83852-1-macroalpha82@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

From: Chris Morgan <macromorgan@hotmail.com>

Add optional node for chasis-type defining this device as a handset.

Signed-off-by: Chris Morgan <macromorgan@hotmail.com>
---
 arch/arm64/boot/dts/rockchip/rk3566-anbernic-rgxx3.dtsi | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/arch/arm64/boot/dts/rockchip/rk3566-anbernic-rgxx3.dtsi b/arch/arm64/boot/dts/rockchip/rk3566-anbernic-rgxx3.dtsi
index c8fdb1b817f5..233eade30f21 100644
--- a/arch/arm64/boot/dts/rockchip/rk3566-anbernic-rgxx3.dtsi
+++ b/arch/arm64/boot/dts/rockchip/rk3566-anbernic-rgxx3.dtsi
@@ -10,6 +10,8 @@
 #include "rk3566.dtsi"
 
 / {
+	chassis-type = "handset";
+
 	chosen: chosen {
 		stdout-path = "serial2:1500000n8";
 	};
-- 
2.34.1


