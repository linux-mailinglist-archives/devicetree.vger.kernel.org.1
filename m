Return-Path: <devicetree+bounces-80314-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id E2E829185BF
	for <lists+devicetree@lfdr.de>; Wed, 26 Jun 2024 17:28:27 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 1FB1A1C21D4C
	for <lists+devicetree@lfdr.de>; Wed, 26 Jun 2024 15:28:27 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id DED1A18C340;
	Wed, 26 Jun 2024 15:27:44 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b="pE3eXARI"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f53.google.com (mail-wm1-f53.google.com [209.85.128.53])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EAAFE18A94D
	for <devicetree@vger.kernel.org>; Wed, 26 Jun 2024 15:27:42 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.53
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1719415664; cv=none; b=oJIaL7PjLxjsbYAhh2eu18LJKC/Ba+XH6d5N8OUyHycfsiy5hvzGqAxggA9OI0+9cvfA3TdJXoAspBLdCz0EvkXwUWhdG5dUTRlQ70mXMm8BbF8fd7syhIbMW9WoJkDZIxj3INyak8s9ZTuMA/z3H8sDDMrcLrl6nQzCqhlSAi4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1719415664; c=relaxed/simple;
	bh=R3GS8HHHErj7MvZI0Ir09AX9yQNspKMfc3Km8T303a8=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=qq2ISOBZMibMmknzBqDiB8z8hdpXzfxaaHCrQAAFQTTKvDujbccIKOhQb4a6jlYV38ErWvwwrmh00DerT0lhgrO4xLV9oDOtAJmlaxiU3kBM5Ob44ryEJLAtqxTduuvvsQCJnag5LFwfIPPl0FUqr7tpu9GSK9rk/VbyFw/VXJk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com; spf=pass smtp.mailfrom=baylibre.com; dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b=pE3eXARI; arc=none smtp.client-ip=209.85.128.53
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=baylibre.com
Received: by mail-wm1-f53.google.com with SMTP id 5b1f17b1804b1-424f2b73629so8737075e9.2
        for <devicetree@vger.kernel.org>; Wed, 26 Jun 2024 08:27:42 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20230601.gappssmtp.com; s=20230601; t=1719415661; x=1720020461; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=jYDKthMr8PlU7RMNm/cVX+jCdaMflBOcufutTHJLPhY=;
        b=pE3eXARIr+SEf2PYxFXfaqiBV4RTTutnmpMApLOZZDNI/TleRCFm7zUed9rotYL+PG
         7KeD2bqHdG1HJRFwQmqDFb/O+y2eLMOr1/dYDkU06QL8RijQ7UidSW21uQHjFXN8p2Qx
         XyY0h3QFGCQAuiakiKuFS1V0rWzvG/xamN5nymJWbA1HrcbrO1ib9ji+n2uenkU8U8eO
         fH5aqK17hM4A0KseQ3czZJZtyVv5NFaKe7zCJJQMDRCZl+fumeb9PSLAZ7Jj4tg+bNuV
         ANwPCtST8Yg63K63FQ4NyKrPUdfmFLKOg/h2Apl6mYNod70XAp9nHYafzWgoZKgHCV1X
         jqEA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1719415661; x=1720020461;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=jYDKthMr8PlU7RMNm/cVX+jCdaMflBOcufutTHJLPhY=;
        b=b58Zzt/o24Z74EOZujbgK+bIR9h6qNCHuO3DkE/sbrk/IecegS5knkL50tkHUAEyqk
         JsibsqIJ0jXNrpH5w2rsaJzh2YcDCUHWV8AP2VgtrTsuzE3gvfBxmL8e/FQGEN7C+TFG
         SayrUITd5RxlrV3THY5MlM57WvQdgxpisgZxBn8DNUrlP3mLG8aWmUqX+RCdBDD3Gsau
         s9GRgzUBGd560g4XiKCRDoXBUKfdB8NP6iYpQzSr754fQZGfptklSQ6cOmVDNWBFIKeh
         a/mke1ci758Y40QPATxJtm4IPgO9B5/izIZ5+G7miry8LzhBTWtvWfPJPXa6SU1arIt1
         1eQQ==
X-Forwarded-Encrypted: i=1; AJvYcCWEUOjHvxMl4vcS0ZnaXaAX1clERlq8C87boTaonOMKT7jwAw+Q4K3PupH/mvYw5UX/4Uj7sWjN6ErFsrvW2AUyoiw/jixfmUiRDg==
X-Gm-Message-State: AOJu0Ywn2aOfJ2YKhEPFb8iDCIoZMWbO+QDwYXYL94IGKvjfidFP1x9d
	B4PFTflTwLeLVt3Y0B14cAZTSa3H9u8vAluvwqcE63NgrmFRpwxd+bJDBfMM3Ok=
X-Google-Smtp-Source: AGHT+IEMQpIEwx0dH+XhPkFS6EJi2CgtiwjD7ua3gdSKxmKrlk4K/C5rgHIgRTqFkzvhQeFAcYKPsA==
X-Received: by 2002:a05:600c:3514:b0:421:e7ae:955b with SMTP id 5b1f17b1804b1-4248cc3415bmr86578825e9.21.1719415661304;
        Wed, 26 Jun 2024 08:27:41 -0700 (PDT)
Received: from toaster.lan ([2a01:e0a:3c5:5fb1:7be7:aef1:af9e:fff6])
        by smtp.googlemail.com with ESMTPSA id 5b1f17b1804b1-4249b4233b3sm42321675e9.0.2024.06.26.08.27.40
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 26 Jun 2024 08:27:40 -0700 (PDT)
From: Jerome Brunet <jbrunet@baylibre.com>
To: Neil Armstrong <neil.armstrong@linaro.org>
Cc: Jerome Brunet <jbrunet@baylibre.com>,
	Kevin Hilman <khilman@baylibre.com>,
	linux-kernel@vger.kernel.org,
	linux-amlogic@lists.infradead.org,
	devicetree@vger.kernel.org,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>
Subject: [PATCH 0/2] arm64: dts: amlogic: handle hdmi system clock
Date: Wed, 26 Jun 2024 17:27:29 +0200
Message-ID: <20240626152733.1350376-1-jbrunet@baylibre.com>
X-Mailer: git-send-email 2.43.0
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
X-Patchwork-Bot: notify
Content-Transfer-Encoding: 8bit

This patchset adds the setup of the HDMI system clock for HDMI Tx.

This is another step in cleaning HDMI Tx and its direct usage of HHI
register space. Eventually, this will help remove component usage from
the Amlogic display drivers.

Jerome Brunet (2):
  arm64: dts: amlogic: gx: correct hdmi clocks
  arm64: dts: amlogic: setup hdmi system clock

 arch/arm64/boot/dts/amlogic/meson-g12-common.dtsi | 5 +++++
 arch/arm64/boot/dts/amlogic/meson-gxbb.dtsi       | 9 +++++++--
 arch/arm64/boot/dts/amlogic/meson-gxl.dtsi        | 9 +++++++--
 3 files changed, 19 insertions(+), 4 deletions(-)

-- 
2.43.0


