Return-Path: <devicetree+bounces-110112-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id B1F699994E3
	for <lists+devicetree@lfdr.de>; Fri, 11 Oct 2024 00:07:09 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 2335D1F23FD6
	for <lists+devicetree@lfdr.de>; Thu, 10 Oct 2024 22:07:08 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 80AC11E284E;
	Thu, 10 Oct 2024 22:07:04 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="NuvsUC/e"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ej1-f53.google.com (mail-ej1-f53.google.com [209.85.218.53])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B446D18DF6B
	for <devicetree@vger.kernel.org>; Thu, 10 Oct 2024 22:07:02 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.218.53
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1728598024; cv=none; b=jdW+KKl9VDPQ93Mqs1wou4bSs57sgKrW1XDFGBfmbXmTS7L8GMMcV9qVNxzCnEahK97IlNg3sVTXuoNd3sbyA9MXoX0EMexBp9P1cDL04XJaZ6jfUT6YHMn0JQaN6pXkr0sYFbEzZtj4RH1VRlu11mUkdtA42kGjokS7bqJU8+8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1728598024; c=relaxed/simple;
	bh=NFGWjYEtn3fbCwnTuKwUth4ndhsYvZ7P4+wdW0cGjlg=;
	h=From:Subject:Date:Message-Id:MIME-Version:Content-Type:To:Cc; b=AMRrFT3eHM5L8xVP5FQ5blYZMaW6z9QpQbDsB2cvY9e2l1YIRAYbSk9lUhvbnWsAscknAiW4qTxJfh6Ea68BxHSISjLWbYIJH5E102G0rtD9vBwhmBc8WTEafzN7lY0B5JVFOu0HBMO69cTlm029rq45cD3N5Nu2KABBFgALkIw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=NuvsUC/e; arc=none smtp.client-ip=209.85.218.53
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-ej1-f53.google.com with SMTP id a640c23a62f3a-a9952ea05c5so231201766b.2
        for <devicetree@vger.kernel.org>; Thu, 10 Oct 2024 15:07:02 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1728598021; x=1729202821; darn=vger.kernel.org;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:from:to:cc:subject:date:message-id:reply-to;
        bh=QkawvLSQEbJXtp9BvTDeuTeoRPjAXTIInN17YFymJM0=;
        b=NuvsUC/eXB4ThDqz6AmdpBzhs+gZDJakijuyodqZBc5TE8MhD4QQr7PVOhmSAVS1tb
         fvRZWtmsMMf3v1JFO5/Q9Mj9ntqQJDvE6YrRLh6se6M/PFBaA3EEE6LXFyikwhMpufWO
         9ugtWEmfbvX9TREeeT3muHBxuXeRVIu6bf8lx3VtMfrrpXbOnFo7/xhFeYcM6vFyltOS
         tfKP2439pj42Syx+NM6/Xm8JT9psrWF3gmSxT3vFc5Z71fG5CAR/vwyqNtvC6pjuTSRo
         8P/a/YG1+4dZDEMmPiIXVmG15eKpoFd6/LjTuTKsrbEgNzl3zGChz1UjZgVfGhwFZIl+
         COBg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1728598021; x=1729202821;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=QkawvLSQEbJXtp9BvTDeuTeoRPjAXTIInN17YFymJM0=;
        b=ZBrILmPVoB6y9vjndTe4WuuOBEFUd1gGf/UfhQI2sRiK5Wd5/UjyqjljY1CNhDsr8P
         Pi3bWGswdAA6BigiJ2PpUPTSIkCxESEgoBcnGAWShJlCGZT1HSMxy+2FvbEXChGe1PGs
         qEcKmB/J44GCPObsxWBdcqbXlEKPCxdvzSWP8ugyxfh7rieN43gxw515QnZXZtW3UyTP
         0iVjPnZ8B+jrdHjiMP35iPxPnRH68GjjCq+dgXmITzyHHhZYLqDH0aakGjypic77zlz9
         bvqIRSerlA/yTWUT3Wv1Pd5/+H6jQk5lWNvVk+9w80sYnGc0otqq99mgLienW93M+Pz+
         TmbQ==
X-Gm-Message-State: AOJu0Yxe2DOCpigaOrLNSbbt6t+0XKwYkO61pOPdMwz6wsrEouPibrTk
	iGoXH/iY327bloYVpnD/lzlRQQaGVsqQWe8os9D9sN1WFG3Ywn5qFE+cEcU7fyY=
X-Google-Smtp-Source: AGHT+IGjhG6fJZsi1RNVDSxyckzrEQK+Z+r993avnqkp9UNr6jqrAmjdTVRjN4OCfPzN1tRfKCzfEw==
X-Received: by 2002:a17:907:efcb:b0:a99:462c:8730 with SMTP id a640c23a62f3a-a99b945e515mr37578866b.22.1728598021057;
        Thu, 10 Oct 2024 15:07:01 -0700 (PDT)
Received: from lino.lan ([85.235.12.238])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-a99a7f27e5esm140825466b.80.2024.10.10.15.07.00
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 10 Oct 2024 15:07:00 -0700 (PDT)
From: Linus Walleij <linus.walleij@linaro.org>
Subject: [PATCH 0/8] ARM: dts: Add some BCM6846 device tree
Date: Fri, 11 Oct 2024 00:06:58 +0200
Message-Id: <20241011-genexis-xg6846b-base-v1-0-f04d6f6f93ce@linaro.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-B4-Tracking: v=1; b=H4sIAAJQCGcC/x3MQQqDMBBG4avIrDswsRLEq5QujP6Js4mSgRKQ3
 N3Q5bd47yZDURgtw00FPzU9c4d7DbQda05g3btplHFy4oQTMqoa1+TnyQcOq4ER3zFgkwBx1NO
 rIGr9bz/f1h7PPk9UZgAAAA==
To: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, 
 William Zhang <william.zhang@broadcom.com>, 
 Anand Gore <anand.gore@broadcom.com>, 
 Kursad Oney <kursad.oney@broadcom.com>, 
 Florian Fainelli <florian.fainelli@broadcom.com>, 
 =?utf-8?q?Rafa=C5=82_Mi=C5=82ecki?= <rafal@milecki.pl>, 
 Broadcom internal kernel review list <bcm-kernel-feedback-list@broadcom.com>
Cc: devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
 Linus Walleij <linus.walleij@linaro.org>
X-Mailer: b4 0.14.0

This adds some silicon blocks to the BCM6846 DTSI file and
adds a device tree for the Genexis XG6846B device that
make use of it.

This is mainly so as to get this off my hard drive and
share the basics with others who want to work on the
BCM6846.

I think most of the DTSI changes can be just copied verbatim
to the rest of the BCMBCA family (maybe extracted into a
common bcbca.dtsi?) but let's think about that later.
This will do for now.

The XG6846B device tree uses the new shift register bits
property of the BCM63138 LEDs, which is ACKed by the
DT maintainers albeit not yet merged in the LED tree.

Signed-off-by: Linus Walleij <linus.walleij@linaro.org>
---
Linus Walleij (8):
      ARM: dts: bcm6846: Add iproc rng
      ARM: dts: bcm6846: Enable watchdog
      ARM: dts: bcm6846: Add GPIO blocks
      ARM: dts: bcm6846: Add MDIO control block
      ARM: dts: bcm6846: Add LED controller
      dt-bindings: vendor-prefixes: Add Genexis
      dt-bindings: arm: bcmbca: Add Genexis XG6846B
      ARM: dts: broadcom: Add Genexis XG6846B DTS file

 .../devicetree/bindings/arm/bcm/brcm,bcmbca.yaml   |   1 +
 .../devicetree/bindings/vendor-prefixes.yaml       |   2 +
 arch/arm/boot/dts/broadcom/Makefile                |   1 +
 .../boot/dts/broadcom/bcm6846-genexis-xg6846b.dts  | 244 +++++++++++++++++++++
 arch/arm/boot/dts/broadcom/bcm6846.dtsi            | 107 +++++++++
 5 files changed, 355 insertions(+)
---
base-commit: 9852d85ec9d492ebef56dc5f229416c925758edc
change-id: 20241010-genexis-xg6846b-base-ef3fbec0be01

Best regards,
-- 
Linus Walleij <linus.walleij@linaro.org>


