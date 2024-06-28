Return-Path: <devicetree+bounces-81418-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 8818291C2E4
	for <lists+devicetree@lfdr.de>; Fri, 28 Jun 2024 17:46:29 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 44BDB1F21274
	for <lists+devicetree@lfdr.de>; Fri, 28 Jun 2024 15:46:29 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 49D8E1C0DD1;
	Fri, 28 Jun 2024 15:46:27 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=google.com header.i=@google.com header.b="VrvGGOSJ"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-yb1-f202.google.com (mail-yb1-f202.google.com [209.85.219.202])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D0D5A156984
	for <devicetree@vger.kernel.org>; Fri, 28 Jun 2024 15:46:25 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.219.202
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1719589587; cv=none; b=hPXq+Qwx9ie/wukTl7k3UIhmZ/+wNhJLOeLEgxU5Mt++kg02HgZq0s8Izc50dk7sSbbFy7ES9q6YisXPCvDpt+OA8gy8nu96MfTzSN2SMQYA3BncqGct24A39+vtREw5QUk9N0iqt6WuA1C3dFHBm8KrpA5WXjAl3EhxeT8uqzA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1719589587; c=relaxed/simple;
	bh=pDyR6wbamVTNJYnWEAl1qjW26pSZoAd5OKTK9phK6wg=;
	h=Date:In-Reply-To:Mime-Version:References:Message-ID:Subject:From:
	 To:Cc:Content-Type; b=UCJYgd7arEWAEfk7YFC5hae+RDof65cwTC548BUOCq1i1A5wxp8inkeAUFn5vATrXW1qU031BFuot7YvxF5+UHPbZ+bnUyxvxDdSiMJgN2ZWFUQtsEmqS6x1TnpIkD8IkzJtOIhZ1Bw4JPSvbUitx27LdFb37KGPHCHi2wAl3aA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=google.com; spf=pass smtp.mailfrom=flex--aniketmaurya.bounces.google.com; dkim=pass (2048-bit key) header.d=google.com header.i=@google.com header.b=VrvGGOSJ; arc=none smtp.client-ip=209.85.219.202
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=google.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=flex--aniketmaurya.bounces.google.com
Received: by mail-yb1-f202.google.com with SMTP id 3f1490d57ef6-e02b7adfb95so1363417276.2
        for <devicetree@vger.kernel.org>; Fri, 28 Jun 2024 08:46:25 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=google.com; s=20230601; t=1719589585; x=1720194385; darn=vger.kernel.org;
        h=cc:to:from:subject:message-id:references:mime-version:in-reply-to
         :date:from:to:cc:subject:date:message-id:reply-to;
        bh=uik8gGS0BJXXt/zzhXfY9dwtNNpwmc4SjckR9/xyOjE=;
        b=VrvGGOSJW4D42H0vzojuWDTXK6LGKoXTb9gVXB6azibIjBqAnnVTUKpBGNQydBMV7Y
         Y6V8XSloqgcCc3M/mx7eafAdgrZVgu2XRr2HPLIohMig+z+wZhEhMrkrmA8WVrHQXOxi
         vY9WWPzigH9qVOm/hVzLo2SpaGw4OFBwNaxkIC+eq+O9/XhXruI/zGGSnUikdKFaTPLg
         O0AK/2QrykopzKGLAR5nNb/+sMiTtBHRiDv2h3Ag4qIQTo91V/+UL9UbULxcsmkps2pS
         HSpDwBDBYmdQMijRBrS6Z4EB3AB8RSUPeuaKBkqtNbYvBqc/SsbnTRlBq5YRqmG61mfD
         sJ9A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1719589585; x=1720194385;
        h=cc:to:from:subject:message-id:references:mime-version:in-reply-to
         :date:x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=uik8gGS0BJXXt/zzhXfY9dwtNNpwmc4SjckR9/xyOjE=;
        b=DNXl05RgiToWc0e3BlXIvWEp2dHEAa6jCJXu7TjIO7Vcy8yqhhR7BwLyv0LRNbeXJJ
         6BMiyU2UwNFrX0QPdAo/0c0xVF2DKbeBnXkVSHg/S+HJjyfrskK7+XQG7z1wIKXovSOj
         Q1JAvioQGqwDtJoQvGMOogzF+z4MKRE8EkwU+xnfzateXyTdbafBG/osRF8KUQEP7hct
         HHT7RUY/3smClRg7wsLZCCk02jR3IwMKiPZLDOhRv2/DDBhKkg6fAVvkH64y6PQxya7E
         yFn+nhSRZGA8SiEjhta4bmhMjxhRiBiRM4mR+4IZRxIGZN9e4EyoMk00LK+tZfiTvNfA
         kYTQ==
X-Forwarded-Encrypted: i=1; AJvYcCWVTzEdGhdVbN/X2eJwp+EV7w51iGU/z35RDHaLX0LfMkX/ykKPLPbkPpgl/346Sj5PQNXMM9szUxnMvNIIwGhoEkZZu4ybZ2vYng==
X-Gm-Message-State: AOJu0YxcqBALC1xJxzhO7bd9CwBboj7MkduWBt1vCoA691PnHCfM8+ds
	jaHkM1ykQQ02lHklqQ0YUztPCIsaMK+zQmCehIEGB8Jf/9Ej+xoxkVvrP0koYa2x0wuzkgry611
	SbTFlQam2X20QhMDE3Iicv0mevQ==
X-Google-Smtp-Source: AGHT+IGfB7ik9VdtwsAzQwB6NZPw5Sc6rxP7YfqsyxrxwdZNm7diILFTFbMiLS0YpTc/XkKLrMFZg6xM7Cn3odq5SM0=
X-Received: from aniketm.c.googlers.com ([fda3:e722:ac3:cc00:4f:4b78:c0a8:3387])
 (user=aniketmaurya job=sendgmr) by 2002:a05:6902:1006:b0:e03:4bf0:b21e with
 SMTP id 3f1490d57ef6-e034bf0b50dmr375748276.1.1719589584856; Fri, 28 Jun 2024
 08:46:24 -0700 (PDT)
Date: Fri, 28 Jun 2024 15:46:18 +0000
In-Reply-To: <20240624052851.1030799-1-aniketmaurya@google.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
Mime-Version: 1.0
References: <20240624052851.1030799-1-aniketmaurya@google.com>
X-Mailer: git-send-email 2.45.2.803.g4e1b14247a-goog
Message-ID: <20240628154618.327151-1-aniketmaurya@google.com>
Subject: [PATCH v3 3/3] i3c: dw: Add optional apb clock
From: Aniket <aniketmaurya@google.com>
To: Alexandre Belloni <alexandre.belloni@bootlin.com>, Jeremy Kerr <jk@codeconstruct.com.au>, 
	Joel Stanley <joel@jms.id.au>, Billy Tsai <billy_tsai@aspeedtech.com>, 
	Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>
Cc: linux-i3c@lists.infradead.org, linux-kernel@vger.kernel.org, 
	devicetree@vger.kernel.org, Aniket <aniketmaurya@google.com>
Content-Type: text/plain; charset="UTF-8"

Besides the core clock, IP also has an apb interface clock.
Add an optional hook for the same.

Signed-off-by: Aniket <aniketmaurya@google.com>
---
 drivers/i3c/master/dw-i3c-master.c | 4 ++++
 drivers/i3c/master/dw-i3c-master.h | 1 +
 2 files changed, 5 insertions(+)

diff --git a/drivers/i3c/master/dw-i3c-master.c b/drivers/i3c/master/dw-i3c-master.c
index 4e3335641dcd..0ca41782f3a6 100644
--- a/drivers/i3c/master/dw-i3c-master.c
+++ b/drivers/i3c/master/dw-i3c-master.c
@@ -1454,6 +1454,10 @@ int dw_i3c_common_probe(struct dw_i3c_master *master,
 	if (IS_ERR(master->core_clk))
 		return PTR_ERR(master->core_clk);
 
+	master->pclk = devm_clk_get_optional_enabled(&pdev->dev, "pclk");
+	if (IS_ERR(master->pclk))
+		return PTR_ERR(master->pclk);
+
 	master->core_rst = devm_reset_control_get_optional_exclusive(&pdev->dev,
 								    "core_rst");
 	if (IS_ERR(master->core_rst))
diff --git a/drivers/i3c/master/dw-i3c-master.h b/drivers/i3c/master/dw-i3c-master.h
index 7e76ca381d9f..fb7121c6c687 100644
--- a/drivers/i3c/master/dw-i3c-master.h
+++ b/drivers/i3c/master/dw-i3c-master.h
@@ -36,6 +36,7 @@ struct dw_i3c_master {
 	void __iomem *regs;
 	struct reset_control *core_rst;
 	struct clk *core_clk;
+	struct clk *pclk;
 	char version[5];
 	char type[5];
 	u32 sir_rej_mask;
-- 
2.45.2.803.g4e1b14247a-goog


