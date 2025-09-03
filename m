Return-Path: <devicetree+bounces-212080-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 8C184B41BCD
	for <lists+devicetree@lfdr.de>; Wed,  3 Sep 2025 12:28:07 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 4D0875E718E
	for <lists+devicetree@lfdr.de>; Wed,  3 Sep 2025 10:28:06 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 834222EA17B;
	Wed,  3 Sep 2025 10:28:03 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="OiQ86Q9T"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f50.google.com (mail-wr1-f50.google.com [209.85.221.50])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B35911DA60F
	for <devicetree@vger.kernel.org>; Wed,  3 Sep 2025 10:28:01 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.50
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756895283; cv=none; b=lnooQeJeKiMJBvwC+G4IwZThPdLE0OLMPOpj//EXSB38FAYl9ZVuukYxmFDADafX+p4DDQitjjbgp2lE2B5cWBAFROkGkx2Mj6+mq/ILzDA5trtwQjAWaoWEjP5bXNeZUB/vc7wPEw3kArA5pIBP1e80TMIhjWZ/XvBMAWPCAyY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756895283; c=relaxed/simple;
	bh=le66QlMuZE7hH1oOfQ5HrC4Y1Tp6IgLYo/j2eYYGOLI=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=LYXsDaRkr3QelqqRZHD5b4wTbds7wBHZqnXs4Na+cRQBMwTFtYOK+M0wmSp6lvGUSRIecU7WprL9zk5YwUAo/gDljCf1ip/b+5jYMkAY7PLtz1829JjzUKporPtAgHcW4KuMGqL5ItAPWDQhI7J1RuzyxrsQ5NNkPGgWLgOfLqM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=OiQ86Q9T; arc=none smtp.client-ip=209.85.221.50
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wr1-f50.google.com with SMTP id ffacd0b85a97d-3c46686d1e6so4332741f8f.3
        for <devicetree@vger.kernel.org>; Wed, 03 Sep 2025 03:28:01 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1756895280; x=1757500080; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=M1WQS2V0Aq4ymgCMCBADFQC3VfxKGm3mbnfHsQGlDKY=;
        b=OiQ86Q9T7E4GYTCLRDAUAmriq+r22M+C47vmvBnvkMX0CKzPO1AGokAPLEmUEtmyAK
         vnLXIrs7jVxYLNZytHx6xNfBXGUpspUfmrMkPoopmyqLr+Y2BkUZhcvEecn/Jcp9u0y5
         +OmabEP68JmE+bLBYUDbLNej3ArhaF+6fTEDH6axrjFKZE3nZuaOTUOztjxrouCXROnS
         4hLLOG535ljYscVDVVteq999Gk34Ka/X4XuqyEZVB+dwzmvDNfHbImO2MCnkv1bYIDzb
         YB/xFFUTNRTkf9CbEjOrrSLVvQBSctUw2R3KgrLCbPG1n3vQ93NR1s/WhTd/ontzznIw
         6lBQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1756895280; x=1757500080;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=M1WQS2V0Aq4ymgCMCBADFQC3VfxKGm3mbnfHsQGlDKY=;
        b=ZMTey5P4eW+qGQD5uc0zKqJlYgvgyQN+GlLKmcbtJC6Oe0DMNQG2Dqj6YsZhyk7wBF
         CRAJ9F3WnQQLg3i7qrCyl4RH7l9Sn2Pbbatjkvd4TBQEF6iMMjHg5Zs+L8eNOgMa5Tw4
         7lZdZdb5N0z7sdYH5MbHUsWLu89exMaro3yXiCpve7qCk1+sYwytVxEvwRBfUNigq7Y/
         /5vd1ia7OSFxlSL9i8S60Zw2LKU6xxW2cCpwH9x1cafWlaBeIoeXRjbaBNOIrDPrZpVs
         gmqbWS5B/a9TrjShHIYwijofEPTuM2MIQkP9TbRfSxhv3Rz4W0DapvyR7gSOgDC2Fv+3
         AzBg==
X-Forwarded-Encrypted: i=1; AJvYcCXhThEjVvyk5sy5F0P+JrdN0714I+Uva19v9KrYGkA0c6LEj7plZdY8NkSfQHM6NQXI10qkt6aI0aHM@vger.kernel.org
X-Gm-Message-State: AOJu0Yz+1p6gfyWE1nODmYU5umLvxGOczG3asl9HoUn7lE00YMXXLRUt
	RBxA6KxDqwvDS//EjVcwT7QCYA+GYSWfZQDTiAAGoYRkWa9e0AoBVTLfj0tRWB6YTek=
X-Gm-Gg: ASbGncvmQZ16RQmtm3xR5LhTYitl1WOrTSQ1NPOnafXcBRytdOC+IHoWMfXkPHu4zxa
	FsVor2KaUxGgnD+6oC0ZlyDihqrUToFjaGXUP8crLpx6g5yXyC3LnDZFkvQbl0sn0AszCcvf22D
	Cg4k+qkZzwWgT72OB7O6UYyw72T25Sd+ZRTzioAYKq5lUmJivIVZL1Lk3OA3LuUoNbzK13cmnTp
	b3YUNjLP2e+YjuyoxZxYQ1xB2CpkMPMHCC5PWpccJQusy93EJk25/ChCCiTusvjgANpyYf52APk
	6dXdyx+cTs9qa+X3zWSpookTDqkum1S98tRu5H/V2b4S/RjVYij6pg1HeWikqPcqvP8OM3SEN0s
	f6QG/n9qYXdbwHzY76AWOeRwEXmT0Pua0KuUJe6PoY/axVf0yPZMs2Q==
X-Google-Smtp-Source: AGHT+IGUUt/nsQbBtMP9pzpPTBYBPoasAKJzS5Dkyri2rpl0+/sHhf/B6Fxwr6gUabi0H0wXSYBQiw==
X-Received: by 2002:a05:6000:3111:b0:3db:c7aa:2c4a with SMTP id ffacd0b85a97d-3dbc7aa304amr2579469f8f.42.1756895280034;
        Wed, 03 Sep 2025 03:28:00 -0700 (PDT)
Received: from mai.box.freepro.com ([2a05:6e02:1041:c10:2a30:223c:d73b:565a])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-45b9ab7c7dbsm55992855e9.11.2025.09.03.03.27.59
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 03 Sep 2025 03:27:59 -0700 (PDT)
From: Daniel Lezcano <daniel.lezcano@linaro.org>
To: jic23@kernel.org,
	dlechner@baylibre.com,
	nuno.sa@analog.com,
	andy@kernel.org,
	robh@kernel.org,
	conor+dt@kernel.org,
	krzk+dt@kernel.org
Cc: linux-iio@vger.kernel.org,
	s32@nxp.com,
	linux-kernel@vger.kernel.org,
	devicetree@vger.kernel.org,
	chester62515@gmail.com,
	mbrugger@suse.com,
	ghennadi.procopciuc@oss.nxp.com
Subject: [PATCH v1 0/2] NXP SAR ADC IIO driver for s32g2/3 platforms
Date: Wed,  3 Sep 2025 12:27:54 +0200
Message-ID: <20250903102756.1748596-1-daniel.lezcano@linaro.org>
X-Mailer: git-send-email 2.43.0
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

The S32G2 and S32G3 platforms have a couple of successive
approximation register (SAR) ADCs with eight channels and 12-bit
resolution. These changes provide the driver support for these ADCs
and the bindings describing them.

The driver is derived from the BSP driver version. It has been partly
rewritten to conform to upstream criteria.

https://github.com/nxp-auto-linux/linux/blob/release/bsp44.0-6.6.85-rt/drivers/iio/adc/s32cc_adc.c

Daniel Lezcano (2):
  dt-bindings: iio: Add the NXP SAR ADC for s32g2/3 platforms
  iio: adc: Add the NXP SAR ADC support for the s32g2/3 platforms

 .../bindings/iio/adc/nxp,s32g2-sar-adc.yaml   |   68 ++
 drivers/iio/adc/Kconfig                       |   13 +
 drivers/iio/adc/Makefile                      |    1 +
 drivers/iio/adc/nxp-sar-adc.c                 | 1046 +++++++++++++++++
 4 files changed, 1128 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/iio/adc/nxp,s32g2-sar-adc.yaml
 create mode 100644 drivers/iio/adc/nxp-sar-adc.c

-- 
2.43.0


