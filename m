Return-Path: <devicetree+bounces-29692-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id B375982424A
	for <lists+devicetree@lfdr.de>; Thu,  4 Jan 2024 14:04:16 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id C3D601C21E55
	for <lists+devicetree@lfdr.de>; Thu,  4 Jan 2024 13:04:15 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 07C4722F02;
	Thu,  4 Jan 2024 13:02:12 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=bgdev-pl.20230601.gappssmtp.com header.i=@bgdev-pl.20230601.gappssmtp.com header.b="qDAKAE9T"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f51.google.com (mail-wr1-f51.google.com [209.85.221.51])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5D1062374E
	for <devicetree@vger.kernel.org>; Thu,  4 Jan 2024 13:02:10 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=bgdev.pl
Authentication-Results: smtp.subspace.kernel.org; spf=none smtp.mailfrom=bgdev.pl
Received: by mail-wr1-f51.google.com with SMTP id ffacd0b85a97d-3373bc6d625so365425f8f.3
        for <devicetree@vger.kernel.org>; Thu, 04 Jan 2024 05:02:10 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=bgdev-pl.20230601.gappssmtp.com; s=20230601; t=1704373328; x=1704978128; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=ko9AldsNAGIySQ6r8IsXSCtLQ9r/1ys0AWCrWCqKA/w=;
        b=qDAKAE9TbUQIkcoKTZtSY0WnsUGIVQYmcduoDIK0xckAbAwmxwmFXB4AWvibjMdYYo
         aHW7vr9A+l3jDthupCARLI5lxAm3VBqCodkR7/R4H4D0/iCjyAgskyFjHHXw5R1/wnRb
         L6xinfTzmbRP5M8plryQr/jzRPFgvnrY2jN5ymG+7Mx9CX1P3DSNnkUfXmswZOKE2S9h
         8hiiEjZCIFevEUYRcAddjo5IoeH53GKB+12G6Mta0Zhq9roMq7itKAXT9BzZXnmn7IsP
         6OkbDcLCHnsulClebByr5ufXmmymyNSC+LY46xZFukP9mrdmqSSepY+Sd4DKvqqBfj7D
         gDLQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1704373328; x=1704978128;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=ko9AldsNAGIySQ6r8IsXSCtLQ9r/1ys0AWCrWCqKA/w=;
        b=gFiEZ9J3TDXhppaptRyyCqUn/GUE5kiliolNhk/lp2Gb8/VbiUSAcs1DHZLMeTcduV
         5eg2H+ztsuKXyJELDncJXxo8LTkcyRYsWKUIuEM12qiPNJNrrLtVRDXWM9QKRo/I5Srd
         rtAeagkZY0vX+pxyyFzc3w0mTH/WIOGPIawjKeDiqVbaemOTpOnlBTDALRB0PQQPtwWr
         ZSkjk6VA92Zu6vk4i7WJQpC13yePM7BEWo1WWN28oTK3naz/uKPmIBFxQnHjrYWuY9Ci
         whgTAM6QrCxAtc/qajP5bOBK3qMBSlFYeFG/gNscT80JJ2zuXu2xFKB8Gv2Lcrab3vXs
         gI0Q==
X-Gm-Message-State: AOJu0YzaeWMc1JEVv8Qjq/BiJwQLYHqnOT3AUpYnFSLvsr+gFoBFSx37
	RBAQjf//SM2PRdclsFowFs0A/pUoQQznnQ==
X-Google-Smtp-Source: AGHT+IFUjxl+akq5qBUWz1Hq2UkXunszpKE6K042Vn3Nvy8yjJ9A6yhdSklCJkd/SLfWbEWSuN0qWg==
X-Received: by 2002:adf:f1c7:0:b0:336:7f93:3dcc with SMTP id z7-20020adff1c7000000b003367f933dccmr292279wro.81.1704373328663;
        Thu, 04 Jan 2024 05:02:08 -0800 (PST)
Received: from brgl-uxlite.home ([2a01:cb1d:334:ac00:5b69:3768:8459:8fee])
        by smtp.gmail.com with ESMTPSA id w5-20020a5d5445000000b0033660f75d08sm32887387wrv.116.2024.01.04.05.02.07
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 04 Jan 2024 05:02:08 -0800 (PST)
From: Bartosz Golaszewski <brgl@bgdev.pl>
To: Kalle Valo <kvalo@kernel.org>,
	"David S . Miller" <davem@davemloft.net>,
	Eric Dumazet <edumazet@google.com>,
	Jakub Kicinski <kuba@kernel.org>,
	Paolo Abeni <pabeni@redhat.com>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Bjorn Andersson <andersson@kernel.org>,
	Konrad Dybcio <konrad.dybcio@linaro.org>,
	Catalin Marinas <catalin.marinas@arm.com>,
	Will Deacon <will@kernel.org>,
	Bjorn Helgaas <bhelgaas@google.com>,
	Heiko Stuebner <heiko@sntech.de>,
	Jernej Skrabec <jernej.skrabec@gmail.com>,
	Chris Morgan <macromorgan@hotmail.com>,
	Linus Walleij <linus.walleij@linaro.org>,
	Geert Uytterhoeven <geert+renesas@glider.be>,
	Arnd Bergmann <arnd@arndb.de>,
	Neil Armstrong <neil.armstrong@linaro.org>,
	=?UTF-8?q?N=C3=ADcolas=20F=20=2E=20R=20=2E=20A=20=2E=20Prado?= <nfraprado@collabora.com>,
	Marek Szyprowski <m.szyprowski@samsung.com>,
	Peng Fan <peng.fan@nxp.com>,
	Robert Richter <rrichter@amd.com>,
	Dan Williams <dan.j.williams@intel.com>,
	Jonathan Cameron <Jonathan.Cameron@huawei.com>,
	Terry Bowman <terry.bowman@amd.com>,
	Kuppuswamy Sathyanarayanan <sathyanarayanan.kuppuswamy@linux.intel.com>,
	=?UTF-8?q?Ilpo=20J=C3=A4rvinen?= <ilpo.jarvinen@linux.intel.com>,
	Huacai Chen <chenhuacai@kernel.org>,
	Alex Elder <elder@linaro.org>,
	Srini Kandagatla <srinivas.kandagatla@linaro.org>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Cc: linux-wireless@vger.kernel.org,
	netdev@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	linux-arm-msm@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-pci@vger.kernel.org,
	Bartosz Golaszewski <bartosz.golaszewski@linaro.org>
Subject: [RFC 4/9] PCI: hold the rescan mutex when scanning for the first time
Date: Thu,  4 Jan 2024 14:01:18 +0100
Message-Id: <20240104130123.37115-5-brgl@bgdev.pl>
X-Mailer: git-send-email 2.40.1
In-Reply-To: <20240104130123.37115-1-brgl@bgdev.pl>
References: <20240104130123.37115-1-brgl@bgdev.pl>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

From: Bartosz Golaszewski <bartosz.golaszewski@linaro.org>

With the introduction of the power sequencing drivers that will be able
to trigger the port rescan, we need to hold the rescan mutex during the
initial pci_host_probe() too or the two could get in each other's way.

Signed-off-by: Bartosz Golaszewski <bartosz.golaszewski@linaro.org>
---
 drivers/pci/probe.c | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/drivers/pci/probe.c b/drivers/pci/probe.c
index b7335be56008..957f7afee7ba 100644
--- a/drivers/pci/probe.c
+++ b/drivers/pci/probe.c
@@ -3122,7 +3122,9 @@ int pci_host_probe(struct pci_host_bridge *bridge)
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


