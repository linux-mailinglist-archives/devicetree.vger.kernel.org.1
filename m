Return-Path: <devicetree+bounces-81534-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 7D45D91C931
	for <lists+devicetree@lfdr.de>; Sat, 29 Jun 2024 00:36:05 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 3132E2872EE
	for <lists+devicetree@lfdr.de>; Fri, 28 Jun 2024 22:36:04 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 3C446136E2E;
	Fri, 28 Jun 2024 22:35:18 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="uWlWMie0"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f42.google.com (mail-wm1-f42.google.com [209.85.128.42])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 943E7132113
	for <devicetree@vger.kernel.org>; Fri, 28 Jun 2024 22:35:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.42
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1719614118; cv=none; b=NB/r62K6oOsma6RdKvX4wTpAkBPcc2H8fIMq4XbyHAdLU2/oqgl+qrN7G9LWfGOaVuSz3VRug95Wfm7YtR5dY1gQrPbhafce4oES1cE1oj/Gd6RP1JklmQPgrdna0HSZFp40Hans7MJuJXr3wKMsoAoDCJwhxiMJnuN5ec8d/D0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1719614118; c=relaxed/simple;
	bh=PApABQ8Ns3+kJP3W0ZfRrX0JhAAa8kO4F6PTGhhK+4c=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=oU4CH6HI/2AJ2dx5pv78qbFMD6F+wuSu8Z5rgKFvk6Q3uU3NQXHTj6YMnyExTc1ZNVC3Xt0iwidNZcyv+J+5o+y+h6ROEWHh8fyFMShwzVlcednJhDaN8X7ayCWV/zXE971pBz/ysQp2M87OEJ09dGL9B2Mpg8gnG+uwyn9qA2Q=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=uWlWMie0; arc=none smtp.client-ip=209.85.128.42
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wm1-f42.google.com with SMTP id 5b1f17b1804b1-4256788e13bso8369335e9.2
        for <devicetree@vger.kernel.org>; Fri, 28 Jun 2024 15:35:16 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1719614115; x=1720218915; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=bK4GVLftRcx1G43I5RNC1VZ+kMnAGIqU8rAyC3MW8BY=;
        b=uWlWMie0Yso5DTYVxZMXd7OoxDvA3F0ybBEFiZxJcIX8WI21yAImKn8MasHkGIeE/s
         GNY9I3BXv1efa+JNp8LP0OMBxqpnQDcRGrc3sy3xAMNFV4KhvMGctdiS+nCiPLzQR6d+
         enc/EXBTgahMZ6kECjihgc2i/uEMRGskRvsZLDkbi5qXQcSr1tJ1tIvG+gB+X0rhMQWm
         kJ0NQgUM8QNMt4wyvFOE3WJq6uEX0ksSBHV94HXMceiMMoFnnwzHOcbaAf5kvI8A1t/w
         tevENQpqp6EOR0STEc+88dyTf6D5YX6tmcRzqdPdGklrfxmVtpVEXd/aRNwC537KK2c3
         nIFw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1719614115; x=1720218915;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=bK4GVLftRcx1G43I5RNC1VZ+kMnAGIqU8rAyC3MW8BY=;
        b=jiRgULYRqzP7aY/Xjg+0Ph8GOmj4f2Cyn/jWwsFfFX8ubuTQNrexhFjFk5+nxdPXRa
         d/S9EWCYrKC+4VxqUW5aIemUTdEf6Wf8QUelq01AlF4V2Uq3MI69FgtN91KjXQCx4thn
         x40GCK2H6gpuUE1CadYi2gMft4X30lkHbttUbShz07Da3KKdm6j2pnmp6YMSx9x0+Uws
         6fVuwcsDrjKPwG53zV5txBvg/pvh5R/HnZSQIn2vOraFCnJiG66i9jvL1qRhpEIMAjo9
         zD/zsgdrg1emi41wUugFF/u5SjOHUYKkhTGeKIlnxffvSBHSJP2mhsHgnm9zZ6m4PZgt
         1Xnw==
X-Forwarded-Encrypted: i=1; AJvYcCWyCm5qyKBoZ8BStmCcG0QR69vODssIr/W0FoMpnI4ObIKtRQdmVf4P23eBjvRng/K60mL+GjNBWofOJTqzK03PU/ZPgZgg89GL7A==
X-Gm-Message-State: AOJu0Yx/0+iJuzXMR2t9wNCCP6tKbmU4TVfaLkSTh8snNkIXgeGroI0/
	YCP8sN1BvNGE51/l3ufG/iRiqng3JOfDDLke+89AYEXqHPMLL0utsd8KhukHb7s=
X-Google-Smtp-Source: AGHT+IGAx/+hg7U8vXysG5fFaJ+7znqTB7jHT7deRrgK6fDUyfus/N4BjGymdOMvzYq/K9V9/QTmyA==
X-Received: by 2002:a05:600c:6b16:b0:424:a3d7:2a89 with SMTP id 5b1f17b1804b1-424a3d72b27mr80778525e9.4.1719614115166;
        Fri, 28 Jun 2024 15:35:15 -0700 (PDT)
Received: from gpeter-l.lan ([2a0d:3344:2e8:8510::3aa])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-3675a043a16sm3496711f8f.0.2024.06.28.15.35.13
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 28 Jun 2024 15:35:14 -0700 (PDT)
From: Peter Griffin <peter.griffin@linaro.org>
To: robh@kernel.org,
	krzk+dt@kernel.org,
	conor+dt@kernel.org,
	alim.akhtar@samsung.com,
	s.nawrocki@samsung.com,
	cw00.choi@samsung.com,
	mturquette@baylibre.com,
	sboyd@kernel.org
Cc: linux-arm-kernel@lists.infradead.org,
	linux-samsung-soc@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	tudor.ambarus@linaro.org,
	andre.draszik@linaro.org,
	kernel-team@android.com,
	willmcvicker@google.com,
	devicetree@vger.kernel.org,
	linux-clk@vger.kernel.org,
	Peter Griffin <peter.griffin@linaro.org>
Subject: [PATCH v2 3/3] clk: samsung: gs101: mark gout_hsi2_ufs_embd_i_clk_unipro as critical
Date: Fri, 28 Jun 2024 23:35:06 +0100
Message-ID: <20240628223506.1237523-5-peter.griffin@linaro.org>
X-Mailer: git-send-email 2.45.2.803.g4e1b14247a-goog
In-Reply-To: <20240628223506.1237523-1-peter.griffin@linaro.org>
References: <20240628223506.1237523-1-peter.griffin@linaro.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

The system hangs on poweroff when this UFS clock is turned off, meaning
the system never powers down. For the moment mark the clock as critical.

Reviewed-by: Will McVicker <willmcvicker@google.com>
Tested-by: Will McVicker <willmcvicker@google.com>
Signed-off-by: Peter Griffin <peter.griffin@linaro.org>
---
 drivers/clk/samsung/clk-gs101.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/clk/samsung/clk-gs101.c b/drivers/clk/samsung/clk-gs101.c
index ba9570f7a5fa..85098c61c15e 100644
--- a/drivers/clk/samsung/clk-gs101.c
+++ b/drivers/clk/samsung/clk-gs101.c
@@ -2846,7 +2846,7 @@ static const struct samsung_gate_clock hsi2_gate_clks[] __initconst = {
 	GATE(CLK_GOUT_HSI2_UFS_EMBD_I_CLK_UNIPRO,
 	     "gout_hsi2_ufs_embd_i_clk_unipro", "mout_hsi2_ufs_embd_user",
 	     CLK_CON_GAT_GOUT_BLK_HSI2_UID_UFS_EMBD_IPCLKPORT_I_CLK_UNIPRO,
-	     21, 0, 0),
+	     21, CLK_IS_CRITICAL, 0),
 	GATE(CLK_GOUT_HSI2_UFS_EMBD_I_FMP_CLK,
 	     "gout_hsi2_ufs_embd_i_fmp_clk", "mout_hsi2_bus_user",
 	     CLK_CON_GAT_GOUT_BLK_HSI2_UID_UFS_EMBD_IPCLKPORT_I_FMP_CLK,
-- 
2.45.2.803.g4e1b14247a-goog


