Return-Path: <devicetree+bounces-159934-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 831E8A6D182
	for <lists+devicetree@lfdr.de>; Sun, 23 Mar 2025 23:39:44 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id F206916D8C5
	for <lists+devicetree@lfdr.de>; Sun, 23 Mar 2025 22:39:43 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 6C2DD1CD1E1;
	Sun, 23 Mar 2025 22:39:29 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="bXVHTe/l"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ej1-f51.google.com (mail-ej1-f51.google.com [209.85.218.51])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8C8D91BD9C6
	for <devicetree@vger.kernel.org>; Sun, 23 Mar 2025 22:39:26 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.218.51
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1742769569; cv=none; b=gOZVWjlN3Y/6jhgbY0FK6+DqgmwxO+LclJPjlXV6zIIpcofhJf5oPDccPyN/ka2qas7d6owjzwS00HPbKfo9jDzpLiKqCNzZAz6gz1teZFNcpGoEziiJe+VEA5fgdVyL4G49FufddbJ6QuWoABEGdPMpTcEvJYtLe+FBCdimm2g=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1742769569; c=relaxed/simple;
	bh=ft5MMINeJ0ZFFqsyd4wk/QMt+OACxl4RgJok7sE3LxY=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=Fkc3FNI7RpkWYyIbSL/W5JFbbqP5/e6nO3pz5dpC0CDd347VpCjz5g22TR09/noneTvjX255JathQ7AYDn6tcOGsvItTO4GYDa0OxCa1IV2epNQAUSZ9EFGZXXwNRLiChxTETUCu9PXHPzmuDiE5DnvJLa+DAV+wwP/wIO0AONc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=bXVHTe/l; arc=none smtp.client-ip=209.85.218.51
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-ej1-f51.google.com with SMTP id a640c23a62f3a-ac2bdea5a38so639715866b.0
        for <devicetree@vger.kernel.org>; Sun, 23 Mar 2025 15:39:26 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1742769565; x=1743374365; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=76PH5cHSw8HwRSSvCBVkDwYPjRgUpAN3tWdOoIM1T/Y=;
        b=bXVHTe/lCcytO1CcopVSOr+R+hBF2n7JErX0VIIT7eeqljv3nLzD9yrWhU2FJRKCfq
         nrMVP3DWwwhuP3uNfZr4lsR1IstuIYajHcIuGpOcAZCaNGBrJ5HD4HuDdhBRjsK4UhLq
         qbdb/dpq2m6Hab2PG9Qa1jvC0x2/gTHdDcRsF30MW8rFDTLPkOhKjEg4tXBCZ2b8B5s+
         TwsC1hPhNTMkD7LnUqF/Fv4no0EQ7/SZf6wuR5uiA9EntK7eI8CPloNZTWPs6F301sM7
         NtxzmRhE2IOAs5UjqFaKjDBOJVUmNa0D7LvcOOUA/HBuCoO0J+r+S7g4Oz7idMYVOLAg
         kU5A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1742769565; x=1743374365;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=76PH5cHSw8HwRSSvCBVkDwYPjRgUpAN3tWdOoIM1T/Y=;
        b=wbaaxii3ovyx3Tz9sfQk9YaPus/kniFaafre8DFQna/xLbDDBTXH8iC0ms43uQIPVh
         BLL+rfjwx7g0sYuzLJx3+tW1Rj7KQZmsQo3lyFR6uMKcRLyUIyaJauQgtey+/9HY3xtr
         UGDbTBBNlmJD/16k/F3vtzsYoRAd7gjfzppD29hBXYwsNHjYJ4KvBGbn499gypsSuGzE
         YqbK6NkklbAmqAJCqLMc95SdP6dOJrUtJZwveUupeFT9ba6+b95VvRL/ryaeNY62C6CM
         pVK8WYwHTrOIjEwgCeWET5uwMMQZvJA6nSfw/ASuGt9GcCN4tYypOvZW0CxWLH8ot0HE
         g7xQ==
X-Forwarded-Encrypted: i=1; AJvYcCVtNRg6bpCb/gp4sXhfhWzkK4EJSc5l7bODIbSKIOkjO2quykpOEBLgm1G6XFYLMVh4E6vd1NovA5ZG@vger.kernel.org
X-Gm-Message-State: AOJu0YyGcGoV7DeJ6I0L+vYdYdQNK1q6L23SoHTdrDUh5qhs0J/WYVGf
	SKjxAgje/sJPGikY26Dc2hQZEPWjWeSa0Leq/90REyL6NqVGpIqbgoHHeuNL5As=
X-Gm-Gg: ASbGncu3I99rLDFx1o19onx9fWsPhzEKLlu7rrR5lkLWT52Eqsuf+5D6YDlboRvCWdw
	Xoq1IeFJGIva2HalH+hWEwyIW64V1yvRmXeYT1MNJzjvIaC3RtnBHbETuTvwrnTS5SeWWO1ZkNO
	k04LwNAsrqoPAi44jfIOs0lgMbvkRqmDxKl2aeJ5kZzaOh7OaZGHCH6/71yN0pDYXZfJzOy9hmM
	IlWf9GxJhopccj9OXXaHZwG3xUbZ89IfUz1FvZQ4KGTxppGHL2tWJeBwmNd3eC+/bfgn8bbv8j3
	ZCwahCnbhluFRx6gAU5F7M3WvwmljRJvCU6krqJP+xyYmOiS0GqqNusJ9vXDbS+Cv96BARdL3bQ
	B9iWNO4zKCXczJ7hd/OSuc+3JlRDx
X-Google-Smtp-Source: AGHT+IEYfWzNbR+K5DYstAqClR9nSakyWw/N8LzTya4wskfRe5KrC67EU110F2zXc4Z6WRaZMMlhIQ==
X-Received: by 2002:a17:907:7292:b0:ab7:6fa9:b0a9 with SMTP id a640c23a62f3a-ac3f208a29emr1120053966b.11.1742769564738;
        Sun, 23 Mar 2025 15:39:24 -0700 (PDT)
Received: from puffmais.c.googlers.com (8.239.204.35.bc.googleusercontent.com. [35.204.239.8])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-ac3ef86e44dsm559686666b.31.2025.03.23.15.39.24
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 23 Mar 2025 15:39:24 -0700 (PDT)
From: =?utf-8?q?Andr=C3=A9_Draszik?= <andre.draszik@linaro.org>
Date: Sun, 23 Mar 2025 22:39:18 +0000
Subject: [PATCH 02/34] dt-bindings: clock: samsung,s2mps11: add s2mpg10
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit
Message-Id: <20250323-s2mpg10-v1-2-d08943702707@linaro.org>
References: <20250323-s2mpg10-v1-0-d08943702707@linaro.org>
In-Reply-To: <20250323-s2mpg10-v1-0-d08943702707@linaro.org>
To: Krzysztof Kozlowski <krzk@kernel.org>, Lee Jones <lee@kernel.org>, 
 Rob Herring <robh@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
 Sylwester Nawrocki <s.nawrocki@samsung.com>, 
 Chanwoo Choi <cw00.choi@samsung.com>, Alim Akhtar <alim.akhtar@samsung.com>, 
 Michael Turquette <mturquette@baylibre.com>, 
 Stephen Boyd <sboyd@kernel.org>, Russell King <linux@armlinux.org.uk>, 
 Catalin Marinas <catalin.marinas@arm.com>, Will Deacon <will@kernel.org>, 
 Alexandre Belloni <alexandre.belloni@bootlin.com>
Cc: Peter Griffin <peter.griffin@linaro.org>, 
 Tudor Ambarus <tudor.ambarus@linaro.org>, 
 Will McVicker <willmcvicker@google.com>, kernel-team@android.com, 
 linux-kernel@vger.kernel.org, linux-samsung-soc@vger.kernel.org, 
 devicetree@vger.kernel.org, linux-clk@vger.kernel.org, 
 linux-arm-kernel@lists.infradead.org, linux-rtc@vger.kernel.org, 
 =?utf-8?q?Andr=C3=A9_Draszik?= <andre.draszik@linaro.org>
X-Mailer: b4 0.14.2

The Samsung S2MPG10 clock controller is similar to the existing clock
controllers supported by this binding. Register offsets / layout are
slightly different, so it needs its own compatible.

Signed-off-by: André Draszik <andre.draszik@linaro.org>
---
 Documentation/devicetree/bindings/clock/samsung,s2mps11.yaml | 1 +
 1 file changed, 1 insertion(+)

diff --git a/Documentation/devicetree/bindings/clock/samsung,s2mps11.yaml b/Documentation/devicetree/bindings/clock/samsung,s2mps11.yaml
index d5296e6053a1881650b8e8ff2524ea01689b7395..91d455155a606a60ed2006e57709466ae8d72664 100644
--- a/Documentation/devicetree/bindings/clock/samsung,s2mps11.yaml
+++ b/Documentation/devicetree/bindings/clock/samsung,s2mps11.yaml
@@ -25,6 +25,7 @@ description: |
 properties:
   compatible:
     enum:
+      - samsung,s2mpg10-clk
       - samsung,s2mps11-clk
       - samsung,s2mps13-clk # S2MPS13 and S2MPS15
       - samsung,s2mps14-clk

-- 
2.49.0.395.g12beb8f557-goog


