Return-Path: <devicetree+bounces-216935-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id EEA1EB568CC
	for <lists+devicetree@lfdr.de>; Sun, 14 Sep 2025 14:43:31 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id D66E41895A33
	for <lists+devicetree@lfdr.de>; Sun, 14 Sep 2025 12:43:52 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B97CE2741C6;
	Sun, 14 Sep 2025 12:42:47 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="PuxeCqBj"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f48.google.com (mail-wr1-f48.google.com [209.85.221.48])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8CCD3271476
	for <devicetree@vger.kernel.org>; Sun, 14 Sep 2025 12:42:45 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.48
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757853767; cv=none; b=tF7KVwSNizKuz6KKPoCixosYCBB93CogrLy3p7T1IBXkjIu34l8gqev092p15ZhEnyAoKzxeWHUuxdfeGxzhNJ+ib6KP92wqWhkXbXSPI8BU58h3wcye+HrrYs/Nq3EgrSm6iYDzbbJx7jaaNQkP74OrKXD4Ezn1wAfds4OjVCE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757853767; c=relaxed/simple;
	bh=D22DQEAI7GUdY0C98ZI2lUt2RWXEbX1YdkY+EOaEysY=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=Ba35+vQKPOAU2VqPsCrMNOZ9RKL9ARiEYtcqpN7KniuuRfcrYCKSZuTPtAArptUZyIxhBJbHlyiLPQc+qJrxezpBHX+GPwmpMZS/vjrsXm51KTheboyGsZu2mLF89zTJGFu1vjmk3nPqLep0qpGLWFvDDVUpk/p8o9N7MKf2FCA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=PuxeCqBj; arc=none smtp.client-ip=209.85.221.48
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-wr1-f48.google.com with SMTP id ffacd0b85a97d-3e8ea11a325so1103948f8f.1
        for <devicetree@vger.kernel.org>; Sun, 14 Sep 2025 05:42:45 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1757853764; x=1758458564; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=Z5IkwHpWT3vjOUxYuXQio/Ms33Sg58fY2czp9a5UdkM=;
        b=PuxeCqBjJ3HDaqIFS8HzlHkBE6W6j7uxWv8VYHtczVwYtuUrdp+Ayn1AwxJq85OcFJ
         6pProTdwI7L11VVqbh52KND6ElxLC2osvR+wUYLfiHN0ut48bXBC4moItQfkG88e771f
         W5lssByHXe5oGdCMHFUeSZPngRQxFBELBAJXllrNIXOptLCvpV8iSDz3Bvm+4OfGTVbc
         iVn/Vw+jQ0xfd8b9yoig9/PoPdIBHQuHkUTQFMFpz7sn/iT3xu3diMCCb6BeFql+jyWf
         62XmTSQCaQAbfYXu+RKkS6bT82EfpWeVSlBz2uh75TvMDTyCNBFSSFvJOUtDiiOn3Jkv
         b03w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1757853764; x=1758458564;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=Z5IkwHpWT3vjOUxYuXQio/Ms33Sg58fY2czp9a5UdkM=;
        b=u32ny4nmOylmCNM1rfFM7OvkIxa00Bzm2Y2TlGCgnU7swbcbs7F1lKcIwMqYYo9s9x
         bj6nyl1yvatAb2Gnj1KzYBVna08MdTX9JQcgI63CtEYXRtXfr/mR3HQdnl0rvzCR3czl
         oKE0tFvaTc4QYwQ7N6UJk/oFaFcglPzf5ooDPOxpZDINDeL4ZS8e71hbtpGlfg9pB8TF
         obfmOdhQe8X2zoOBwlJfG5dtxnhxor1DgJtXglaYVL3Cy1DhwR/X+l5V+627yD3CkFh5
         5edjBBcvmp47kqceFHyHk8pyYzEujC4LmHM9v3dIMVMMz5ODa00V+0+MbDRreemMTqf3
         3LTw==
X-Forwarded-Encrypted: i=1; AJvYcCVyDvHc7xphv9NQ3RJwfis13ZieT8rEzr6I/znjYFne+rGiMgA21sNYArSIdO6SHgTBuggvTcU5KlpR@vger.kernel.org
X-Gm-Message-State: AOJu0YxjndbmmAx4mf+LnjY5TWYM/4xaJQ3pfJmgHZisSKnFERTWeJjr
	mVVDFmmpURA20q1ecgDWxSyzzRvaA5Hv8ueeKnte0yPJvecfG4lzGUDv
X-Gm-Gg: ASbGncvWtXya3JhNvRINP+jdm0WPYed0CdxZp639s5mbZD/+zNWLpoyhvo1tH4Xj9Vj
	vpG0AEVepP1Wg+nCXSlgo7FZKjUeL5NLdMfDtibo1doGQf/5w9vcaJJa3xbX1HB6xqf5H/dqgZJ
	dwr+mvcKFbdEvdX8PGtFUVuRXF4p6JLvDh84bMR3+eooKeLuusqquyY8P7SJY9FAD4E8TlJgMvA
	q+K2ilj//e9vUIom98EgQifmI9a1IgUPnq+f/c00jEuoyPbUQvTdwf2EuRxhH+LoPvk3KBTdOW+
	+34nEBe1gHWHKWmN570Y3eJ3HRvCJw6vIejFKlUgrsByWWLvS1xMl98aj16mTkrgbo7F/Tl7wgh
	iaZoqRL/+BoXSIOQa/p8t0fsFld3Ms46bqmP3uhl5w9oKhWpyQw0y3QfQmIyVHZmO9c1Iv4C4zZ
	/c70AT6fqD
X-Google-Smtp-Source: AGHT+IFJplQxPa+oOwiL3HwRMbWnzwzx1xcdaJkdmZixyb1ZQ45I0gzLQ3rbeFTRhbx5TQ6AuRvPjQ==
X-Received: by 2002:a05:6000:2dc8:b0:3e3:921b:659f with SMTP id ffacd0b85a97d-3e765780a76mr8171220f8f.2.1757853763840;
        Sun, 14 Sep 2025 05:42:43 -0700 (PDT)
Received: from ivaylo-T580.. (91-139-201-119.stz.ddns.bulsat.com. [91.139.201.119])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-3e9511abbccsm3727773f8f.9.2025.09.14.05.42.42
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 14 Sep 2025 05:42:43 -0700 (PDT)
From: Ivaylo Ivanov <ivo.ivanov.ivanov1@gmail.com>
To: Krzysztof Kozlowski <krzk@kernel.org>,
	=?UTF-8?q?Andr=C3=A9=20Draszik?= <andre.draszik@linaro.org>,
	Sylwester Nawrocki <s.nawrocki@samsung.com>,
	Chanwoo Choi <cw00.choi@samsung.com>,
	Alim Akhtar <alim.akhtar@samsung.com>,
	Michael Turquette <mturquette@baylibre.com>,
	Stephen Boyd <sboyd@kernel.org>,
	Rob Herring <robh@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Lee Jones <lee@kernel.org>,
	Liam Girdwood <lgirdwood@gmail.com>,
	Mark Brown <broonie@kernel.org>,
	Alexandre Belloni <alexandre.belloni@bootlin.com>
Cc: linux-samsung-soc@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-clk@vger.kernel.org,
	linux-rtc@vger.kernel.org,
	linux-kernel@vger.kernel.org
Subject: [PATCH v1 5/7] clk: s2mps11: add the support for S2MPS16 PMIC clock
Date: Sun, 14 Sep 2025 15:42:25 +0300
Message-ID: <20250914124227.2619925-6-ivo.ivanov.ivanov1@gmail.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20250914124227.2619925-1-ivo.ivanov.ivanov1@gmail.com>
References: <20250914124227.2619925-1-ivo.ivanov.ivanov1@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Add the support for S2MPS16 PMIC clock, which is functionally the same
as the currently supported ones, with the exception of a different
register.

Signed-off-by: Ivaylo Ivanov <ivo.ivanov.ivanov1@gmail.com>
---
 drivers/clk/clk-s2mps11.c | 8 ++++++++
 1 file changed, 8 insertions(+)

diff --git a/drivers/clk/clk-s2mps11.c b/drivers/clk/clk-s2mps11.c
index d4e9c3577..7c766d05d 100644
--- a/drivers/clk/clk-s2mps11.c
+++ b/drivers/clk/clk-s2mps11.c
@@ -14,6 +14,7 @@
 #include <linux/mfd/samsung/s2mps11.h>
 #include <linux/mfd/samsung/s2mps13.h>
 #include <linux/mfd/samsung/s2mps14.h>
+#include <linux/mfd/samsung/s2mps16.h>
 #include <linux/mfd/samsung/s5m8767.h>
 #include <linux/mfd/samsung/core.h>
 
@@ -149,6 +150,9 @@ static int s2mps11_clk_probe(struct platform_device *pdev)
 	case S2MPS14X:
 		s2mps11_reg = S2MPS14_REG_RTCCTRL;
 		break;
+	case S2MPS16X:
+		s2mps11_reg = S2MPS16_REG_RTC_BUF;
+		break;
 	case S5M8767X:
 		s2mps11_reg = S5M8767_REG_CTRL1;
 		break;
@@ -224,6 +228,7 @@ static const struct platform_device_id s2mps11_clk_id[] = {
 	{ "s2mps11-clk", S2MPS11X},
 	{ "s2mps13-clk", S2MPS13X},
 	{ "s2mps14-clk", S2MPS14X},
+	{ "s2mps16-clk", S2MPS16X},
 	{ "s5m8767-clk", S5M8767X},
 	{ },
 };
@@ -249,6 +254,9 @@ static const struct of_device_id s2mps11_dt_match[] __used = {
 	}, {
 		.compatible = "samsung,s2mps14-clk",
 		.data = (void *)S2MPS14X,
+	}, {
+		.compatible = "samsung,s2mps16-clk",
+		.data = (void *)S2MPS16X,
 	}, {
 		.compatible = "samsung,s5m8767-clk",
 		.data = (void *)S5M8767X,
-- 
2.43.0


