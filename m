Return-Path: <devicetree+bounces-181522-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id D7C6DAC7CE1
	for <lists+devicetree@lfdr.de>; Thu, 29 May 2025 13:25:01 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 089723AA449
	for <lists+devicetree@lfdr.de>; Thu, 29 May 2025 11:24:40 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 4924B290DAC;
	Thu, 29 May 2025 11:22:35 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=suse.com header.i=@suse.com header.b="dJVQ907N"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ed1-f48.google.com (mail-ed1-f48.google.com [209.85.208.48])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 692EF28FFF6
	for <devicetree@vger.kernel.org>; Thu, 29 May 2025 11:22:32 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.48
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1748517755; cv=none; b=CbXx/aMRwdYi3M/JIr4+c+sS0DdRqwsbnIbILWYiNp7C2FduSRoReYVPZTL7O5+pbHgkjFov66/7iSR10EBwWhRnNadXiebFsGXrN2dMpTls+Xcg1tVELKqlEpTf8WsmhcRCc81aCt7MBtq4Jh0rRjSzKnIBFMA7hfqlUs3mETw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1748517755; c=relaxed/simple;
	bh=Cxv3DdNSTbG6mkWW+XlQDzM5M3k//FCq7uG/9MGjWvM=;
	h=From:To:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=qUwc+uXA4pTBMD5EO01jylKF9il3zdBl2BxvRkEqpZ0PgL7w5wrlSrbdoxiijyK49YxEkBrbxM17l+z/n86p1znTHPMo0VHwmLd4HennhGtd4Yk4Qb1AJi0z8yJSe4SZXbtJdup8i0dZl+T3tENFyr5HTEzm7zE3rbgq1q+2adQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=suse.com; spf=pass smtp.mailfrom=suse.com; dkim=pass (2048-bit key) header.d=suse.com header.i=@suse.com header.b=dJVQ907N; arc=none smtp.client-ip=209.85.208.48
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=suse.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=suse.com
Received: by mail-ed1-f48.google.com with SMTP id 4fb4d7f45d1cf-602e203db66so1235016a12.1
        for <devicetree@vger.kernel.org>; Thu, 29 May 2025 04:22:32 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=suse.com; s=google; t=1748517750; x=1749122550; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:to:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=i8LMEHYmovrRN8zYWQwYy5+2ddqvSDMDQcnZraZcEHI=;
        b=dJVQ907NALSUscYeIJLvis9Oc5iPWNtGVZZttCHjXFn3E4xsvNfJn/+bEoC9m0bWYl
         m3+BTeB78Hbv3Tm8OEOsoZ6k4MfzsR3+ZT4K+88PuUQ3tKQ6aSgOrSVTxFkGzBOAJpvg
         nkhmh3c+bIKRx3zLM44euDiK0AAvMJghQvBfxCbQeeaii8wXuNjZ46IyHfaSPnK3K2lX
         NjyILxJMns/9VW+pmzNwDC+m4yohnMXYrm8NexWxOPHUkf38Z1Yf7bO7jO6mt3BstS2i
         QoLsP3O6/ORhn+3Tn/uqeTMgfrMbCe2ghZ/wGX0qkG0BtmJBLy6hQHPG3gqn2rKJlDO1
         G0DQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1748517750; x=1749122550;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=i8LMEHYmovrRN8zYWQwYy5+2ddqvSDMDQcnZraZcEHI=;
        b=dI/Y1Gr61AHnRZ0cuQ0LysLM1Ko9B/ISUriI8+FgI7mT375+qfRGtVrPOCh+XBtqer
         cI3HH8GZ49RUJxFJ9wTrrE7HfGtrUzPMheaNyv9YmXxFtnWjXJEcV/V7rRlM7nAdsMlf
         481p+TnyhAC3Kvkogm9DlD5QtTBM4eK08ONuH0+hVZR4NgH2kwDP9zJwEeJeZ3pjS27S
         4qgmGbNWd4+1OSsQsRZ532TZ7THXJz2eQjcsTQRU0LNuG7sOk0YEw9jlZQ74xMcofqaT
         t4dKER2s9mCbMTci1JHnaeea9RTAF+MdkZFH1SF7e+hA2LuITC9072kSzNOUzvM68jVd
         H9ig==
X-Forwarded-Encrypted: i=1; AJvYcCWTvEjVzy4wJBOQrYSearGg6x1HeXah0nMjd8m0ndg0LBFGhDwFMYrL74PcOQskmXw+gLkuynlF2jOC@vger.kernel.org
X-Gm-Message-State: AOJu0YyCvyEG4KJLUOAFnZLii7DSxdWGQKgbaiEZ7mC+Ffyv4AvptRmo
	rDOl7wxXg8ytV1j5nIq0/HyHMtRvH8fe0+psS8MnkFeo4mnQhJMAVhaxyk/bajsuQ8o=
X-Gm-Gg: ASbGncurn2VvTvXlHG8pVjrjYp8P+0u6mjAWUPnokdnwQ4qCNyrM2pjYD63RiNwkLsc
	Z8CEZT2+7Q2BKTwcqXwqwvtakX6QwR7C0D/Qg+mTI480FTtte+ByAwLeb1KRQp+QSdflRT0+qUm
	u4+N19zKXXx2h6ShdB/3iGsjbkXQabJOa4gEDk25EMCRarhF/LWZnfkTYFLpDVU9rUO4nLCtTX3
	LBEV6DQowAKleEA+pAUiEOoycWaeb9eY9i+tDemp6xJfcg1un9lj5MrbhqKkOQTmoRw6i8D9EH2
	4D1JuwlErWAKbFPrLMaL2JnHff8mwOBlAAGlP8xXWbAqIHzCM6+/gD1pDMVeKAutkQwgIuzfdCm
	0F5YbEaehbS01qVpAnm7zmESwvrA5OG77
X-Google-Smtp-Source: AGHT+IF8XwGQ/OgGZTBGcr2X6Fq/XxCyQEjsrXV9gHdoKK3u2BCfu5O6iMLab7sWG6PmCBIWss/qqQ==
X-Received: by 2002:a05:6402:2803:b0:604:becc:2f6d with SMTP id 4fb4d7f45d1cf-604becc3233mr14133877a12.27.1748517750408;
        Thu, 29 May 2025 04:22:30 -0700 (PDT)
Received: from localhost (host-87-21-228-106.retail.telecomitalia.it. [87.21.228.106])
        by smtp.gmail.com with ESMTPSA id 4fb4d7f45d1cf-6051d5f814esm2194013a12.32.2025.05.29.04.22.29
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 29 May 2025 04:22:30 -0700 (PDT)
From: Andrea della Porta <andrea.porta@suse.com>
To: Andrea della Porta <andrea.porta@suse.com>,
	Michael Turquette <mturquette@baylibre.com>,
	Stephen Boyd <sboyd@kernel.org>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Florian Fainelli <florian.fainelli@broadcom.com>,
	Broadcom internal kernel review list <bcm-kernel-feedback-list@broadcom.com>,
	Lorenzo Pieralisi <lpieralisi@kernel.org>,
	Krzysztof Wilczynski <kw@linux.com>,
	Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>,
	Bjorn Helgaas <bhelgaas@google.com>,
	Linus Walleij <linus.walleij@linaro.org>,
	Catalin Marinas <catalin.marinas@arm.com>,
	Will Deacon <will@kernel.org>,
	Bartosz Golaszewski <brgl@bgdev.pl>,
	Derek Kiernan <derek.kiernan@amd.com>,
	Dragan Cvetic <dragan.cvetic@amd.com>,
	Arnd Bergmann <arnd@arndb.de>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	Saravana Kannan <saravanak@google.com>,
	linux-clk@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	linux-pci@vger.kernel.org,
	linux-gpio@vger.kernel.org,
	Masahiro Yamada <masahiroy@kernel.org>,
	Stefan Wahren <wahrenst@gmx.net>,
	Herve Codina <herve.codina@bootlin.com>,
	Luca Ceresoli <luca.ceresoli@bootlin.com>,
	Thomas Petazzoni <thomas.petazzoni@bootlin.com>,
	Andrew Lunn <andrew@lunn.ch>,
	Phil Elwell <phil@raspberrypi.com>,
	Dave Stevenson <dave.stevenson@raspberrypi.com>,
	kernel-list@raspberrypi.com,
	Matthias Brugger <mbrugger@suse.com>
Subject: [PATCH v10 13/13] MAINTAINERS: add Raspberry Pi RP1 section
Date: Thu, 29 May 2025 13:23:48 +0200
Message-ID: <20250529112357.24182-8-andrea.porta@suse.com>
X-Mailer: git-send-email 2.44.0
In-Reply-To: <cover.1748516814.git.andrea.porta@suse.com>
References: <cover.1748516814.git.andrea.porta@suse.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Raspberry Pi RP1 is a southbridge PCIe device which embeds several
peripherals.
Add a new section to cover the main RP1 driver, DTS and specific
subperipherals (such as clock and pinconf/pinmux/gpio controller).

Signed-off-by: Andrea della Porta <andrea.porta@suse.com>
---
 MAINTAINERS | 8 ++++++++
 1 file changed, 8 insertions(+)

diff --git a/MAINTAINERS b/MAINTAINERS
index 2b16ba4eb1ce..2add073f5bdf 100644
--- a/MAINTAINERS
+++ b/MAINTAINERS
@@ -20197,6 +20197,14 @@ S:	Maintained
 F:	Documentation/devicetree/bindings/media/raspberrypi,rp1-cfe.yaml
 F:	drivers/media/platform/raspberrypi/rp1-cfe/
 
+RASPBERRY PI RP1 PCI DRIVER
+M:	Andrea della Porta <andrea.porta@suse.com>
+S:	Maintained
+F:	arch/arm64/boot/dts/broadcom/rp1*.dts*
+F:	drivers/clk/clk-rp1.c
+F:	drivers/misc/rp1/
+F:	drivers/pinctrl/pinctrl-rp1.c
+
 RC-CORE / LIRC FRAMEWORK
 M:	Sean Young <sean@mess.org>
 L:	linux-media@vger.kernel.org
-- 
2.35.3


