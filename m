Return-Path: <devicetree+bounces-42776-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 9B29785871B
	for <lists+devicetree@lfdr.de>; Fri, 16 Feb 2024 21:38:30 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 57D9728918E
	for <lists+devicetree@lfdr.de>; Fri, 16 Feb 2024 20:38:29 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 065CE151CD3;
	Fri, 16 Feb 2024 20:33:32 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=bgdev-pl.20230601.gappssmtp.com header.i=@bgdev-pl.20230601.gappssmtp.com header.b="dh/RVxIT"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lj1-f170.google.com (mail-lj1-f170.google.com [209.85.208.170])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EEF1114F9C4
	for <devicetree@vger.kernel.org>; Fri, 16 Feb 2024 20:33:28 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.170
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1708115611; cv=none; b=Ct+v1N7z3EagJYKN+9zQtjRjkXmmKyjxAetJazQr28w/Qc/PZIcjJHotGI4A6OTgdd1h9ZIsMPuS8ohBglG97L8181c8H8yqGQsk+RqYXb/dd5z1v3cWysAGGleJJ8mjUS/f5p753LRsQfGIn/zoMsLKxX8O2ieM5hDT2U+DXOE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1708115611; c=relaxed/simple;
	bh=1MzVv0nSisKV/T8y8z+7k5GcP430Ri3hmser4aGxhTc=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
	 MIME-Version; b=KItovPraEyr9eVs8dJRFS+OkYWTGV32d83U+1ZE1m2kXYg1hVBhpQy+DNqy3F2OKn5P1ylAETd+5Td4eUureiBMrKcXFPwF44OyYgp/GT41ML317/c69RsrhQvMEJ63dDWNku2Y8boGMcL7KWhuJ40Li8BuMJBM4BeMtdkaftEc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=bgdev.pl; spf=none smtp.mailfrom=bgdev.pl; dkim=pass (2048-bit key) header.d=bgdev-pl.20230601.gappssmtp.com header.i=@bgdev-pl.20230601.gappssmtp.com header.b=dh/RVxIT; arc=none smtp.client-ip=209.85.208.170
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=bgdev.pl
Authentication-Results: smtp.subspace.kernel.org; spf=none smtp.mailfrom=bgdev.pl
Received: by mail-lj1-f170.google.com with SMTP id 38308e7fff4ca-2d208d0b282so29024351fa.0
        for <devicetree@vger.kernel.org>; Fri, 16 Feb 2024 12:33:28 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=bgdev-pl.20230601.gappssmtp.com; s=20230601; t=1708115607; x=1708720407; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=eErBIOjTQ5lnZfiQvyC9U9P7RJRdhki8x/CaBEW0suw=;
        b=dh/RVxITCtXQhFAY6jllUpH6ijZmzSl3oVgfciKAwSldS0aKth9QMGwJOlCO4EfBQ2
         WRDOESAwQsPgDwqk5uyyMJiclBn+cnAR9x7eOPzEZjIi5ojzpGoVM6ac18dW2K+pNdDv
         WmWv23ry3sVEaBIsaZ7CHDxdvi+lI3Dl5Md35UOVXjDtYzoSVn/JEVGexjNforZG20d/
         KKIsMec5L9Ua1UE115q6masiZyyaAqT3eQXZaz0Uj7MAcvM1hyrieLFRN6t2yScFTiwQ
         pBzOa5n3sRpP/HtksgKDyUM71kZjtjL4a4HNUYZRAHRYdzCemSftVAbwYLdk2BdWm5dy
         ZGOQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1708115607; x=1708720407;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=eErBIOjTQ5lnZfiQvyC9U9P7RJRdhki8x/CaBEW0suw=;
        b=e7CD7U3v18bloXwlGd+gs+M2tqOfJBwD1EJA6/psvjODei1Lbo6eGZjkFcbcrDCXDx
         vjWycM+votba2jQncR5H2bHZhsPzvz/Si0cDKKYwNgSrQ9k95fY4sjirac5DuM3kl0so
         KI/Q/ABeqcIFBhNi1ewIEAqqV5QsTKgz1pIJdJMafEaHe/Op3i6N6YAI7vHWzTcivlII
         5y3zH5B2NBEJBk9ALaa7XQ6Mjv8MKcjAOKkARdvtlI0Bf1R4jZ4m7c2Lp4qiGU6KDqGp
         dk/Cu7Em59hDk1PZIbf8fh/Iiq0PgSIwLwyhHSuuu7bdFNUvAunqtSRj0DMOeibYaVZG
         D7EQ==
X-Forwarded-Encrypted: i=1; AJvYcCVWbPlyLuUFDwQuGidZSzOn+zK/Yfzz6pawGh6kR9xju+tufpuCjIWiZibsrTgTgpbtRUCfS0SqdvF+yRQwBy2+tkwbm301N0iIzw==
X-Gm-Message-State: AOJu0YwOfp4oukzgy10SfF8l8dXczqaqaqJQT6/h3oMux3YE2EI2dCiA
	Paa/AlbaVilKap5CXRS1PPKJBVi4A3d7+5PUYP/bmcK4B0EGA/jrvUL8kIwMTBY=
X-Google-Smtp-Source: AGHT+IEGi5tv9AIVQSVPvOrOZQQ9v1N9yVfrGqntVvYxcBnIqc7VX5XHcJUa0nQEF7j51CNJg9AgoQ==
X-Received: by 2002:a05:651c:10c7:b0:2d2:1107:3a7 with SMTP id l7-20020a05651c10c700b002d2110703a7mr3197736ljn.8.1708115607005;
        Fri, 16 Feb 2024 12:33:27 -0800 (PST)
Received: from brgl-uxlite.home ([2a01:cb1d:334:ac00:7758:12d:16:5f19])
        by smtp.gmail.com with ESMTPSA id m5-20020a05600c4f4500b0041253d0acd6sm1420528wmq.47.2024.02.16.12.33.25
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 16 Feb 2024 12:33:26 -0800 (PST)
From: Bartosz Golaszewski <brgl@bgdev.pl>
To: Marcel Holtmann <marcel@holtmann.org>,
	Luiz Augusto von Dentz <luiz.dentz@gmail.com>,
	"David S . Miller" <davem@davemloft.net>,
	Eric Dumazet <edumazet@google.com>,
	Jakub Kicinski <kuba@kernel.org>,
	Paolo Abeni <pabeni@redhat.com>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Kalle Valo <kvalo@kernel.org>,
	Bjorn Andersson <andersson@kernel.org>,
	Konrad Dybcio <konrad.dybcio@linaro.org>,
	Liam Girdwood <lgirdwood@gmail.com>,
	Mark Brown <broonie@kernel.org>,
	Catalin Marinas <catalin.marinas@arm.com>,
	Will Deacon <will@kernel.org>,
	Bjorn Helgaas <bhelgaas@google.com>,
	Bartosz Golaszewski <brgl@bgdev.pl>,
	Saravana Kannan <saravanak@google.com>,
	Geert Uytterhoeven <geert+renesas@glider.be>,
	Arnd Bergmann <arnd@arndb.de>,
	Neil Armstrong <neil.armstrong@linaro.org>,
	Marek Szyprowski <m.szyprowski@samsung.com>,
	Alex Elder <elder@linaro.org>,
	Srini Kandagatla <srinivas.kandagatla@linaro.org>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	Abel Vesa <abel.vesa@linaro.org>,
	Manivannan Sadhasivam <mani@kernel.org>,
	Lukas Wunner <lukas@wunner.de>,
	Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Cc: linux-bluetooth@vger.kernel.org,
	netdev@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	linux-wireless@vger.kernel.org,
	linux-arm-msm@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-pci@vger.kernel.org,
	linux-pm@vger.kernel.org,
	Bartosz Golaszewski <bartosz.golaszewski@linaro.org>
Subject: [PATCH v5 10/18] PCI: hold the rescan mutex when scanning for the first time
Date: Fri, 16 Feb 2024 21:32:07 +0100
Message-Id: <20240216203215.40870-11-brgl@bgdev.pl>
X-Mailer: git-send-email 2.40.1
In-Reply-To: <20240216203215.40870-1-brgl@bgdev.pl>
References: <20240216203215.40870-1-brgl@bgdev.pl>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

From: Bartosz Golaszewski <bartosz.golaszewski@linaro.org>

With the introduction of PCI device power control drivers that will be
able to trigger the port rescan when probing, we need to hold the rescan
mutex during the initial pci_host_probe() too or the two could get in
each other's way.

Signed-off-by: Bartosz Golaszewski <bartosz.golaszewski@linaro.org>
---
 drivers/pci/probe.c | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/drivers/pci/probe.c b/drivers/pci/probe.c
index 467c16358f17..f8ba073ffc9b 100644
--- a/drivers/pci/probe.c
+++ b/drivers/pci/probe.c
@@ -3066,7 +3066,9 @@ int pci_host_probe(struct pci_host_bridge *bridge)
 	struct pci_bus *bus, *child;
 	int ret;
 
+	pci_lock_rescan_remove();
 	ret = pci_scan_root_bus_bridge(bridge);
+	pci_unlock_rescan_remove();
 	if (ret < 0) {
 		dev_err(bridge->dev.parent, "Scanning root bridge failed");
 		return ret;
-- 
2.40.1


