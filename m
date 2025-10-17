Return-Path: <devicetree+bounces-228230-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ams.mirrors.kernel.org (ams.mirrors.kernel.org [IPv6:2a01:60a::1994:3:14])
	by mail.lfdr.de (Postfix) with ESMTPS id 3BD85BEA8EE
	for <lists+devicetree@lfdr.de>; Fri, 17 Oct 2025 18:14:57 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ams.mirrors.kernel.org (Postfix) with ESMTPS id B4A0E35EC07
	for <lists+devicetree@lfdr.de>; Fri, 17 Oct 2025 16:14:56 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 99D4628A731;
	Fri, 17 Oct 2025 16:14:24 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="kHT45T+A"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ej1-f49.google.com (mail-ej1-f49.google.com [209.85.218.49])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E69EC287258
	for <devicetree@vger.kernel.org>; Fri, 17 Oct 2025 16:14:21 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.218.49
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760717664; cv=none; b=avs2M3XqxzTpSNXu9s3yph12sGWKaxBNtxUKZI0W57VZ7h71t9xGdKhNkyElbr3d/+k2szo0Rm+Tg6EaG6w6lp0uRFCqOgkOxrBG3K6hYzT2L51f+bcKOitqU1WNfmISHKy+StE11+vPib51aGgJIXRNE/doezUffrasE3zfVb4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760717664; c=relaxed/simple;
	bh=Cd8oUm5Z29mj16djHEeq4ZCktxy2V2ujF5TAhVpwGz4=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=KDIO0NbKarmnE1n/to26fpxmkcUBxhxeYcZZ+NQVQOywPRLXEXnO4wvhIC/gnVcU//hBPA8PA80X4XlwL5qAM4mitVZPRLIImbHJMjbCqkBSb+Vuq10EJjqqNydOTPQdbEt7QoipLYkVi438m5CGZQ9QrcHpfCTqrLrj9VKOYxU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=kHT45T+A; arc=none smtp.client-ip=209.85.218.49
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-ej1-f49.google.com with SMTP id a640c23a62f3a-b3dbf11fa9eso410136666b.0
        for <devicetree@vger.kernel.org>; Fri, 17 Oct 2025 09:14:21 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1760717660; x=1761322460; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=5wSXHZohsaCEhrjQuZ+j1mQRILOZAzer/gVJVPvJ/bw=;
        b=kHT45T+AyBZVKIT3Eolsi91cSDdzJS3bKfCPN3GpvKrruCYrDralWi3QueCwUSRVJH
         hXFG0ftuyF1GV5+ihYnusjFcxjRilpW5FF32LeC7fIK2xsF7A4O5//1WT4ZauDZ+ntsw
         RkYgdVuFi0WjXsatvUX6jW8dHQ2c9+9wbOi0i3qoIHzWJgyFSDA5H4C5HC9a2OOEqoTf
         dBlwaWEG6v4NxhdVMaljnXdz96Ov3qck87TzTx487Dy7zhod4E8bbrn3fEUdPTw72VL+
         AKq16PdmP1MJVYALYBHOcWX9bFunTb+udoWEfkISaYmyUkL3X6dEYR5nvZIF9hTcmvVJ
         TcEg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1760717660; x=1761322460;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=5wSXHZohsaCEhrjQuZ+j1mQRILOZAzer/gVJVPvJ/bw=;
        b=WDA7kyDxxgWNnNSyLmIsIbvq4ESOOF55dHzorJ0Q2LxpucRQt/FdINftSjjXfOH/bJ
         /7nKpTM4X5lIWowhNUspycKwv2rilOzRNrOcn98LyXrW/bBy06gRTyyMRRoBkXGzwtu4
         ue2/0VtreeAiSHefAnhOBIaViIylar2DTgR7R+nljYXW4x4PzELF4dXtHmPsNDGHQzLq
         wuERGDBBdbQp7cMc4Xk8iNG+4NgNsmkSU7SCVQePVLYAEj0K445rlgGwmGiOnnEHyLtK
         0RWnTAK1yBd0jjFrXDCFVLOtecc0Ee5pCtG2/F5m8doThsTBUUcmaw1BVlvvgxWRpaTi
         gxzw==
X-Forwarded-Encrypted: i=1; AJvYcCUt7gaJZLMyGd2B3VKil9s9FqqnRvtu3hpvIDUOg7VYa5l+VdIbd/CrftpN59IYPsuAlCSnOikYoGog@vger.kernel.org
X-Gm-Message-State: AOJu0YxwJOa4xmxnlDqB7jPdQzwkIzdepz01ZbuD4DQPER5rycwUg5+t
	9yz5dteLfR9M5JvodXDHdDg9d35P724GfJPU+B4mS5yGWvwiWB02coLv
X-Gm-Gg: ASbGncuQl6cngj+k5m7/8jA204MReo+xlCdsEnqHkBBidtyyWHN6Vxl9X18JAcjosC1
	KhpnliYVTD/s9DoLTC1WqlLd9kHD5KCtqGzBl079kRvq4zuEmUZ9+Rsp48YRh5XtN7bbVHn6s4g
	0NOKS0dHfkBsQ4UY92P/gpmy379BYLVogfDzoclV/KdB8IQuTAIbnCaNC/OEf55bJskffETy9pj
	rSC46wYXc9i6tEEhGF5u3U5NN0K/PoF8HeFhjNr6XQ4HytxgY9OkAGylNK6Gi/IeECM9I9f/HW6
	eejGqDrKOC/j5jjGRDWagRt8eICwzWpG+/M6LLalbvl+/jVatq6tWxRATJov5dUmaJ1VyVUjUh3
	n535NrnZazV2env+ZY6+r2qQYgfmbRimk1is+Bt0Ks6/hpno5TMHBC5S5Xh6ZCvDIJ8Y2mFushH
	ADiOI8VQN/yUlV7BWpj8tfpJYpbXhS4qaaQV3Th6Js5rcoXPgl2Kw=
X-Google-Smtp-Source: AGHT+IHeWvwzswQuS89QqwrkWJejRaA0kdyn1cZQjqE82QizymMChJ/7f4qYNAhj2tOmrYVSNDAksg==
X-Received: by 2002:a17:906:c116:b0:b1d:285c:e0ef with SMTP id a640c23a62f3a-b6471f3c342mr512675266b.26.1760717660204;
        Fri, 17 Oct 2025 09:14:20 -0700 (PDT)
Received: from ivaylo-T580.. (79-100-18-255.ip.btc-net.bg. [79.100.18.255])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-b65eb036706sm9606466b.41.2025.10.17.09.14.19
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 17 Oct 2025 09:14:19 -0700 (PDT)
From: Ivaylo Ivanov <ivo.ivanov.ivanov1@gmail.com>
To: Krzysztof Kozlowski <krzk@kernel.org>,
	Sylwester Nawrocki <s.nawrocki@samsung.com>,
	Chanwoo Choi <cw00.choi@samsung.com>
Cc: Alim Akhtar <alim.akhtar@samsung.com>,
	Michael Turquette <mturquette@baylibre.com>,
	Stephen Boyd <sboyd@kernel.org>,
	Rob Herring <robh@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	linux-samsung-soc@vger.kernel.org,
	linux-clk@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org
Subject: [PATCH v2 4/5] clk: samsung: clk-pll: Add support for pll_1431x
Date: Fri, 17 Oct 2025 19:13:32 +0300
Message-ID: <20251017161334.1295955-5-ivo.ivanov.ivanov1@gmail.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20251017161334.1295955-1-ivo.ivanov.ivanov1@gmail.com>
References: <20251017161334.1295955-1-ivo.ivanov.ivanov1@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

The PLL is similar enough to pll_36xx that the same code can be used.

When defining a PLL, the "con" parameter should be set to CON0
register, like this:

PLL(pll_1431x, CLK_FOUT_SHARED0_PLL, "fout_shared0_pll", "oscclk",
     PLL_LOCKTIME_PLL_SHARED0, PLL_CON0_PLL_SHARED0,
     pll_shared0_rate_table),

Signed-off-by: Ivaylo Ivanov <ivo.ivanov.ivanov1@gmail.com>
Reviewed-by: Peng Fan <peng.fan@nxp.com>
---
Changes from v2:
- rebase
- add r-b tag from Peng Fan
---
 drivers/clk/samsung/clk-pll.c | 1 +
 drivers/clk/samsung/clk-pll.h | 1 +
 2 files changed, 2 insertions(+)

diff --git a/drivers/clk/samsung/clk-pll.c b/drivers/clk/samsung/clk-pll.c
index 3c7333529..a509180a7 100644
--- a/drivers/clk/samsung/clk-pll.c
+++ b/drivers/clk/samsung/clk-pll.c
@@ -1544,6 +1544,7 @@ static void __init _samsung_clk_register_pll(struct samsung_clk_provider *ctx,
 	/* clk_ops for 36xx and 2650 are similar */
 	case pll_36xx:
 	case pll_2650:
+	case pll_1431x:
 		pll->enable_offs = PLL36XX_ENABLE_SHIFT;
 		pll->lock_offs = PLL36XX_LOCK_STAT_SHIFT;
 		if (!pll->rate_table)
diff --git a/drivers/clk/samsung/clk-pll.h b/drivers/clk/samsung/clk-pll.h
index 04b3fe97f..eddc4cd08 100644
--- a/drivers/clk/samsung/clk-pll.h
+++ b/drivers/clk/samsung/clk-pll.h
@@ -53,6 +53,7 @@ enum samsung_pll_type {
 	pll_1031x,
 	pll_141xx,
 	pll_1419x,
+	pll_1431x,
 };
 
 #define PLL_RATE(_fin, _m, _p, _s, _k, _ks) \
-- 
2.43.0


