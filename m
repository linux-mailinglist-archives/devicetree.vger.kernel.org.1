Return-Path: <devicetree+bounces-204783-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 7796DB26CAD
	for <lists+devicetree@lfdr.de>; Thu, 14 Aug 2025 18:41:19 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 49730A20822
	for <lists+devicetree@lfdr.de>; Thu, 14 Aug 2025 16:40:10 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 5C23E288C39;
	Thu, 14 Aug 2025 16:40:09 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="PZLWTEWY"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lj1-f170.google.com (mail-lj1-f170.google.com [209.85.208.170])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A87B42566D2
	for <devicetree@vger.kernel.org>; Thu, 14 Aug 2025 16:40:07 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.170
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755189609; cv=none; b=JnNEV7/M1PUYqG+SlnaZrh8fOCzb+PUiAm/eX38fFl5phRMjbkSGh/8OmG/rwDjvaa/+VuEIjfrEZ6rF44SVDbp/a+PfGQzDNCfC21+9r8POrj+tA4AuOXr1K5htYS9WQsm3WDhOTpwVvIz/K4qImZPdU0hYJDKBc3Cj8U3Ko5o=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755189609; c=relaxed/simple;
	bh=G8co3pU6Q3d6O6lWYwd6XyPhfwnAuaAhsPVtGA1Hr1o=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=IYbay9dSFVioJ4SGhOBop3hFYqEn3dxbpYeN247U7eVw8xzzM3Y/MIHHDiuHx6wLS9hfSZBzUdXAOUEHNgiQTP8k5HwF6QcPkvpzhp1B4pBFaUJP2u8w8SCfkhZyYFiObyoA3n2JCCR0GspdUa6eHtSLZaJPNO9E1uAtwsSObuw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=PZLWTEWY; arc=none smtp.client-ip=209.85.208.170
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lj1-f170.google.com with SMTP id 38308e7fff4ca-333f8db5aedso8083981fa.0
        for <devicetree@vger.kernel.org>; Thu, 14 Aug 2025 09:40:07 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1755189606; x=1755794406; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=mOiSS2YmpGkuVbLupvrasgScHIbLrmXUCYTQ1Gz/BGw=;
        b=PZLWTEWYk0xgtnFbnMEaZPoP0+28165iM2GZfp69zhfuLvOfGRad95ItuqlvcXkRbb
         cwXc5mRssKWF/w6ykCF0JiItN1WVQxlxClmjjB84xaO4ZwXtnR0jS43CX2Qo61u0pgtU
         0WC+uPOHSJ6gjmaRyaBDRWIEouVtnklK6sH0arXL5gUPZzkSg3miUpgMcRqiwuYpH49V
         LAI145mfafJMzj2USVrreNVkZvi2e1lObQl3JO1elYLvFrjd7vVF+sUTJdXvCHp/wpDX
         VOY2hXXy96t4Kb3ZOwEqnt0y2BgkyLdJntOI+VF/nB2VRHymTjbTQlo3Zt6PmlXV9wil
         TDRA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1755189606; x=1755794406;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=mOiSS2YmpGkuVbLupvrasgScHIbLrmXUCYTQ1Gz/BGw=;
        b=fq01L0onq+1yiSrsnDXdTFybM+y5aHWWruvQ8ZqnUsq9jHStoz0IidOoY4bR7yjmcj
         fXw44tOcuhVWMWpvj21yJNIuzRpTti/YnJ3lBpsMvC/4X676cZ4ohJiKuYmfNPglffJ5
         vkozLfRa18tEkKOybHYEJieuZY6fWuIyh9UphDi9s4tT3TP0Lw87J3VoaEaz+CWv/bAt
         QD8Dhl23i6tU6Ho097QHyAAKBFnzfWrMG3FvlY07b/CSI6IodQvohfFovVGPTuFprAxM
         039MkJdJEtpPClM16nReZOzu53f/xurEfNrG7a11ndIwEVugLOH3BBNgWJnlbnyVZui1
         xtsA==
X-Gm-Message-State: AOJu0YzKXVV9w92tr2Bgx2B/PSzpuhOuSxktmERswiMqFdWjWd79gKJq
	7/1ldrC/CXCQXhLNFdEUzTL1e4pGMG56XjL2wwlHwoYttfIj9IWPJhYQsXltKrsCJCty8cEoeVe
	KuD1b9+I=
X-Gm-Gg: ASbGncunLL7h6LxnKxaF5uFYgHevhdPi8HeRr6HHlewqw+BOo49UkEwzpRYPG28fTqF
	0nhBnO1930b7y7z5G1FQFAtYvBmEdmXP013851FSaVymbHbcCMRa05CLqrkj/mQgBf8/2GHrpsJ
	1kHn+UNh5uNVy7BOYPwjwfYQlFUfhJnZ9aYI1T8MI/FsAjRJdg+hymmVRMUmYAAcKO3TL0+iHce
	sqlP6hHIbFWWZ8KdKO5YhcPVuP/3oRW5zv5ktDPvHF4UHxLFalopn/x+EHioCUTUX8oIbBktMB7
	XS6prOgmBEJITFidLyNMy3Nc63SJRQXQ10Z3LxUn6QBpAxMnpLSNA+bRK19edexbciGVI7HQsaG
	H0VH0/aMgOLbrM3kxtgv/X6LQsP2fwHGd
X-Google-Smtp-Source: AGHT+IGfH5F0Rjfp8cqhDaoIQBEk31TE9r3dqRydObKcWr5Q7Lj6Duc6dFCM5ga9hJFGEoP6TB/BFw==
X-Received: by 2002:a2e:8e36:0:b0:332:1c24:d32c with SMTP id 38308e7fff4ca-333fa8048e3mr9278461fa.28.1755189605550;
        Thu, 14 Aug 2025 09:40:05 -0700 (PDT)
Received: from [192.168.1.140] ([85.235.12.238])
        by smtp.gmail.com with ESMTPSA id 38308e7fff4ca-333f8e1c71fsm3296301fa.48.2025.08.14.09.40.04
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 14 Aug 2025 09:40:04 -0700 (PDT)
From: Linus Walleij <linus.walleij@linaro.org>
Date: Thu, 14 Aug 2025 18:40:03 +0200
Subject: [PATCH 1/3] dt-bindings: Add Actiontec vendor prefix
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20250814-ixp4xx-mi424wr-dts-v1-1-b7c10f3c4193@linaro.org>
References: <20250814-ixp4xx-mi424wr-dts-v1-0-b7c10f3c4193@linaro.org>
In-Reply-To: <20250814-ixp4xx-mi424wr-dts-v1-0-b7c10f3c4193@linaro.org>
To: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Linus Walleij <linusw@kernel.org>, 
 Imre Kaloz <kaloz@openwrt.org>
Cc: devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
 Linus Walleij <linus.walleij@linaro.org>
X-Mailer: b4 0.14.2

Actiontec is a US manufacturer of telecom equipment.

Signed-off-by: Linus Walleij <linus.walleij@linaro.org>
---
 Documentation/devicetree/bindings/vendor-prefixes.yaml | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/Documentation/devicetree/bindings/vendor-prefixes.yaml b/Documentation/devicetree/bindings/vendor-prefixes.yaml
index 77160cd47f54079a39f35b570d69f7c4c2274724..a0abe9e39291eb687793d1b4b4187524a004a413 100644
--- a/Documentation/devicetree/bindings/vendor-prefixes.yaml
+++ b/Documentation/devicetree/bindings/vendor-prefixes.yaml
@@ -48,6 +48,8 @@ patternProperties:
     description: Acme Systems srl
   "^actions,.*":
     description: Actions Semiconductor Co., Ltd.
+  "^actiontec,.*":
+    description: Actiontec Electronics, Inc
   "^active-semi,.*":
     description: Active-Semi International Inc
   "^ad,.*":

-- 
2.50.1


