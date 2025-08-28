Return-Path: <devicetree+bounces-210016-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 122B5B39E72
	for <lists+devicetree@lfdr.de>; Thu, 28 Aug 2025 15:15:59 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 0AB557B7517
	for <lists+devicetree@lfdr.de>; Thu, 28 Aug 2025 13:14:01 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 9879A311969;
	Thu, 28 Aug 2025 13:15:29 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=suse.com header.i=@suse.com header.b="aKK9f6+p"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ej1-f53.google.com (mail-ej1-f53.google.com [209.85.218.53])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8B4D1311956
	for <devicetree@vger.kernel.org>; Thu, 28 Aug 2025 13:15:27 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.218.53
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756386929; cv=none; b=bFTpxmQgM9LNx4G33I+FsxuMq55qX6FuM++EmlYKD+6cfzTxcYM6aP28iokzlHwf69w3EhUUGoPMmNLiRVGKAXDd71/HQGHK+idENhpXkztATQq4I64M80gPtpV/xOfSWH3NkFWjsAnDIEII9C9hKhuPW1Rs/pFucJWz/40Rz8A=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756386929; c=relaxed/simple;
	bh=cplGFDqmgtSpbjmRX3cAoVtjixMSRofZ7eAFWsu8/iY=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=MJLt0TUa9+26hQxj0yHwNM0bkZYbsQTIS4DhTnFASeOfYIgoaPKa5A8r0qKAPO3bCJZ+oWkpmJwV4DlBdCS/JFXsjpGHRqApNDtz9IllwY3BcY1JBdmvTIgFGAyBFhbZEhc2dJ1xFvyrsEQJeUKqO2CPAYHG50saBNRrNIlF4sI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=suse.com; spf=pass smtp.mailfrom=suse.com; dkim=pass (2048-bit key) header.d=suse.com header.i=@suse.com header.b=aKK9f6+p; arc=none smtp.client-ip=209.85.218.53
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=suse.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=suse.com
Received: by mail-ej1-f53.google.com with SMTP id a640c23a62f3a-afcb78ead12so146394066b.1
        for <devicetree@vger.kernel.org>; Thu, 28 Aug 2025 06:15:27 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=suse.com; s=google; t=1756386926; x=1756991726; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=Gr8F9oLlUMXE4zHvyjlznjcTWEkXwUVRTFmLoor2DC4=;
        b=aKK9f6+pN2tIa6PHgMWIb1JiUm2xc+jVylimGixQkkQs6bmsyvDfKm9oWGWeFKjbYN
         DOcL9BjwSGcgIUCEyWS7CN3zGeCySSxZh0sYXcGgqjcefbT3ryPog+Z92gVKjh1iCJ4E
         Qn4ndcR3RiQmMqVELirin/iyF0s1Nenw4Ru5EkG08WcDv2FA4iNSsCbzIaeYNcEJKI77
         0z769kHt+oZMWB5mUMuSCMPgBsG/YCGZmMfKn7vTSkLPzHHNY09DSgfR0f1DuFL4Fb/U
         8P7JMfkHc/SlCWR6+F1PYg1Pn/ZOMJLoMsi+Hzdr59sc5HSCxwRlIPa6+4qeLKzZQFtJ
         sUlA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1756386926; x=1756991726;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=Gr8F9oLlUMXE4zHvyjlznjcTWEkXwUVRTFmLoor2DC4=;
        b=k7XcZ6eCdi0rBfWwaEEHh267zBQMccLEVeM5dqnVh5O8yJTvvNfOC4NlP7ZE3EFga/
         dZY+OACIRDv6UUUxcOCL8yclKUSgjJQHDoc0IPmokFswTNEQjL+XHMQxxEARBM+eL2ns
         qknCKZA5WqtpuJNAvK/jGWJzuPn/kse9Sq9mvJSE1D/JA8NMfTyk9jt5rWGwEDonwqyg
         dBYEockmAT282i1f5kqxAJCIq8aLH6uWpoNeL2SueBFSZyPLzfJOhW/Eq0wzz6ZIHmJm
         g2XBmWPWV8HQeqdMlfhFBr4QHxZRpyATZHYxKXj0t7ah4uszDi+2x9ILPS4zep+Jbzbs
         MthQ==
X-Forwarded-Encrypted: i=1; AJvYcCX8FnNZ6jXXok9v5DgW+LwRVMOZTJuZpoIRLFRR0xV32tmnnTeakn20nR1RUX+kXiqg3AH5xMTgz8sy@vger.kernel.org
X-Gm-Message-State: AOJu0YxkgKEBziWo9oEmr5Qk9hcPkA6rh8HQ1sUP4ZA8Bzfo9XM4D1yN
	W4CRomK6GEI6MQa3WtWwCXo963xVmQka9pT9tPaUXYOLThuA5/6/bYsFfwDT6lBmXhc=
X-Gm-Gg: ASbGnctdjWtnOBf0wv2i5b9bPBlYjfkTOFjDnmY0u1ei2s20zM8Gh+3fNaFpdzClwPl
	0uTW3pfQiiIk5nW9/6kUxNdv9IS0fc8nGW/S/tblJNc/K3FygDksxKqkz8/Xd2Q4TC/9A855qfo
	p3xfFP9eJW67jQAoKP7lshQss6FKBZEGHQBOHiLSRhQxaVscWm4xcsabSxnnIM4CqzBI/u3BKMD
	mjrgiDnTy3q+kGeZ3xkTd8fpEABdI8jRhYcNFFzbuSmsTuIiMaiPysJ513glnZpBgU+6w2rh404
	5oYwvds6SZrqqcS2uoZIsxVVX+29457rRCgsgFx4bY1IQPo0t9E9jGoCa9OY3cmWgIpVytrJl53
	UkrSVqVtqeezrLHRgAYx0S7aoD26/aAP5nyknHacQtoUNrtqR14yn8SOg+mUFGkjKz99IaUypAP
	kHHjtsa0dzPS6gXg6q
X-Google-Smtp-Source: AGHT+IEI9YD/yIKwxGzebC+FCV1SyBTlu4bST+Ltd9CEVkIOaKvOCGIoQzOBpgJhki3SAdvQXPUT6g==
X-Received: by 2002:a17:906:4fd2:b0:afd:d994:cb3 with SMTP id a640c23a62f3a-afe294d3edamr1890495566b.65.1756386925746;
        Thu, 28 Aug 2025 06:15:25 -0700 (PDT)
Received: from localhost (host-79-36-0-44.retail.telecomitalia.it. [79.36.0.44])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-afe7ddbf166sm895554666b.78.2025.08.28.06.15.24
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 28 Aug 2025 06:15:25 -0700 (PDT)
From: Andrea della Porta <andrea.porta@suse.com>
To: linus.walleij@linaro.org,
	robh@kernel.org,
	krzk+dt@kernel.org,
	conor+dt@kernel.org,
	florian.fainelli@broadcom.com,
	wahrenst@gmx.net,
	linux-gpio@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	Catalin Marinas <catalin.marinas@arm.com>,
	Will Deacon <will@kernel.org>,
	iivanov@suse.de,
	svarbanov@suse.de,
	mbrugger@suse.com,
	Jonathan Bell <jonathan@raspberrypi.com>,
	Phil Elwell <phil@raspberrypi.com>,
	Ulf Hansson <ulf.hansson@linaro.org>,
	Broadcom internal kernel review list <bcm-kernel-feedback-list@broadcom.com>,
	Al Cooper <alcooperx@gmail.com>,
	linux-mmc@vger.kernel.org,
	Jiri Slaby <jirislaby@kernel.org>,
	linux-serial@vger.kernel.org
Cc: Andrea della Porta <andrea.porta@suse.com>
Subject: [PATCH v2 1/5] dt-bindings: mmc: Add support for capabilities to Broadcom SDHCI controller
Date: Thu, 28 Aug 2025 15:17:10 +0200
Message-ID: <181cc905566f2d9b2e5076295cd285230f81ed07.1756386531.git.andrea.porta@suse.com>
X-Mailer: git-send-email 2.51.0
In-Reply-To: <cover.1756386531.git.andrea.porta@suse.com>
References: <cover.1756386531.git.andrea.porta@suse.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

The Broadcom BRCMSTB SDHCI Controller device supports Common
properties in terms of Capabilities.

Reference sdhci-common schema instead of mmc-controller in order
for capabilities to be specified in DT nodes avoiding warnings
from the DT compiler.

Signed-off-by: Andrea della Porta <andrea.porta@suse.com>
---
 Documentation/devicetree/bindings/mmc/brcm,sdhci-brcmstb.yaml | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/Documentation/devicetree/bindings/mmc/brcm,sdhci-brcmstb.yaml b/Documentation/devicetree/bindings/mmc/brcm,sdhci-brcmstb.yaml
index eee6be7a7867..493655a38b37 100644
--- a/Documentation/devicetree/bindings/mmc/brcm,sdhci-brcmstb.yaml
+++ b/Documentation/devicetree/bindings/mmc/brcm,sdhci-brcmstb.yaml
@@ -61,7 +61,7 @@ properties:
     description: Specifies that controller should use auto CMD12
 
 allOf:
-  - $ref: mmc-controller.yaml#
+  - $ref: sdhci-common.yaml#
   - if:
       properties:
         clock-names:
-- 
2.35.3


