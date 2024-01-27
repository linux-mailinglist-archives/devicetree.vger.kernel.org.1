Return-Path: <devicetree+bounces-35729-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id A725283E83E
	for <lists+devicetree@lfdr.de>; Sat, 27 Jan 2024 01:20:37 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 40D861F223E4
	for <lists+devicetree@lfdr.de>; Sat, 27 Jan 2024 00:20:37 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 3850B5686;
	Sat, 27 Jan 2024 00:19:49 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="JWk1iTHz"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-f49.google.com (mail-lf1-f49.google.com [209.85.167.49])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A2A6B20F2
	for <devicetree@vger.kernel.org>; Sat, 27 Jan 2024 00:19:46 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.49
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1706314789; cv=none; b=SrhULPx9pBe6TUtSF+I/Z5PZyFSzu4NgHwKTNBNxha2moaXPSonrXmW05aUDD23/ZGDOZsMa3JeHBbwapkXYQ5OUqSMfn7XNGOfrBxDip935XZCTHHAttcvgK8AK4RgmkBaw0MgkiZ4/fWKlVHlS+HIwNzwNPKOTQhwKRYmbHY0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1706314789; c=relaxed/simple;
	bh=uTi26V2MzJtJNZVNk17iXxL86RmaAHxtWr8TzutnTS4=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version:Content-Type; b=oJMOqrDg/RlCpJH7gg2xHVhL2vvIq79FKRuTA8MXeC2En16yek5sGn6K0KF5D2/j110y9eDka9QqkSe1E2iTDPK1tQ+eE1YK54Yb97FYnwFKjArdK1yeu0GTZHvk21puP4/oNWYhu/0EWob/49hNnUCfSSeB1hhXsIrCnUxS70c=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=JWk1iTHz; arc=none smtp.client-ip=209.85.167.49
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lf1-f49.google.com with SMTP id 2adb3069b0e04-5100fd7f71dso1996939e87.1
        for <devicetree@vger.kernel.org>; Fri, 26 Jan 2024 16:19:46 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1706314784; x=1706919584; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=RijGLQFZHcqv92gTLyle4UGWg8cGZKgYkgyYQE7GkCw=;
        b=JWk1iTHzJzpglp6l5Ay3dUG9fjksSE5ZItlFnPVNkkwUuzq7y8r5N41VM3RW//NM2n
         690WtqLbGJahlImP19V9N7V85pFjDipX5V1ldh2Rimt2A6jkxobMrUl44hItci0KBRyT
         yI7btL0D+LRv3f62FOvSQk93ZV/EOkyXuZKbh3kbaiMfYWQybltZ65ZxYQnaqqsgb087
         icuffZZHBbzZIr6frqG82Wnk8XdTNTzH5Irid1laafN2YK8ykGtqFFQlVqoutQ9V5U0b
         LdO7Ro+wjd50RsKRAWa/kAvTXpff+l35vwY+ywigo9jh0/DBnQrF++eweihV+ItK0gaB
         S+GA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1706314784; x=1706919584;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=RijGLQFZHcqv92gTLyle4UGWg8cGZKgYkgyYQE7GkCw=;
        b=MqmHZ6s8bGA01p49/BLPDP9id7ZLCHdQoqFRpTIE4cItLoLGBonxDcUUNrWH1/u69o
         GHCd0xOKgcfcdn7XivtdNZLeA6Nbkb5TOn0LRbsk6LmPIgrNo7olWH+ZDic1TagixIxg
         II+TiNN/1pF3zb1ik0Apkkfu92ZMGNow66J0eyuEPHMyIpHI3o/7MKk6JwMxg/c8Smu3
         dR8oL80g5vXsjDcbuJLqUDa0T6wrpVG1mwhC8WcKFTVlPmS/U8vLvEJ/n0h0KEOqaXJt
         uSiVKfC+h2CerxfUZRef08HA1/LLcGLq11uYuEGi4c/KBFi8yipQi87Pta7Fiv1nyKRr
         k8lg==
X-Gm-Message-State: AOJu0YxgdBws9duAvMUbOXl3ZQcH38VX0QFMfC9dMqZu4k+GkC6eL19g
	VBuGO4L8bkrpt5xoo21VhYvuywEtWARo2OS44STt5e6dgfPZbANNP84BzaKH1J8=
X-Google-Smtp-Source: AGHT+IHXhvQ39nd+PSqqSqJd/nBtIFloGi99hX7CfKfchouqertJrL/Z5QqUIu501Bbs0iC6wDC36A==
X-Received: by 2002:a19:4f53:0:b0:510:d4a:d367 with SMTP id a19-20020a194f53000000b005100d4ad367mr270843lfk.2.1706314784131;
        Fri, 26 Jan 2024 16:19:44 -0800 (PST)
Received: from puffmais.c.googlers.com.com (229.112.91.34.bc.googleusercontent.com. [34.91.112.229])
        by smtp.gmail.com with ESMTPSA id x16-20020a170906135000b00a339d705a10sm1141359ejb.80.2024.01.26.16.19.43
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 26 Jan 2024 16:19:43 -0800 (PST)
From: =?UTF-8?q?Andr=C3=A9=20Draszik?= <andre.draszik@linaro.org>
To: peter.griffin@linaro.org,
	mturquette@baylibre.com,
	sboyd@kernel.org,
	robh+dt@kernel.org,
	krzysztof.kozlowski+dt@linaro.org,
	conor+dt@kernel.org
Cc: linux-kernel@vger.kernel.org,
	kernel-team@android.com,
	tudor.ambarus@linaro.org,
	willmcvicker@google.com,
	semen.protsenko@linaro.org,
	alim.akhtar@samsung.com,
	s.nawrocki@samsung.com,
	tomasz.figa@gmail.com,
	cw00.choi@samsung.com,
	linux-arm-kernel@lists.infradead.org,
	linux-samsung-soc@vger.kernel.org,
	linux-clk@vger.kernel.org,
	devicetree@vger.kernel.org
Subject: [PATCH 9/9] clk: samsung: gs101: don't CLK_IGNORE_UNUSED peric1_sysreg clock
Date: Sat, 27 Jan 2024 00:19:13 +0000
Message-ID: <20240127001926.495769-10-andre.draszik@linaro.org>
X-Mailer: git-send-email 2.43.0.429.g432eaa2c6b-goog
In-Reply-To: <20240127001926.495769-1-andre.draszik@linaro.org>
References: <20240127001926.495769-1-andre.draszik@linaro.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit

Now that we have hooked it up in the DTS, we can drop the
CLK_IGNORE_UNUSED from here.

Signed-off-by: André Draszik <andre.draszik@linaro.org>
---
 drivers/clk/samsung/clk-gs101.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/clk/samsung/clk-gs101.c b/drivers/clk/samsung/clk-gs101.c
index 7f6c3b52d9ff..d55ed64d0e29 100644
--- a/drivers/clk/samsung/clk-gs101.c
+++ b/drivers/clk/samsung/clk-gs101.c
@@ -3393,7 +3393,7 @@ static const struct samsung_gate_clock peric1_gate_clks[] __initconst = {
 	GATE(CLK_GOUT_PERIC1_SYSREG_PERIC1_PCLK,
 	     "gout_peric1_sysreg_peric1_pclk", "mout_peric1_bus_user",
 	     CLK_CON_GAT_GOUT_BLK_PERIC1_UID_SYSREG_PERIC1_IPCLKPORT_PCLK,
-	     21, CLK_IGNORE_UNUSED, 0),
+	     21, 0, 0),
 };
 
 static const struct samsung_cmu_info peric1_cmu_info __initconst = {
-- 
2.43.0.429.g432eaa2c6b-goog


