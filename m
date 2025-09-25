Return-Path: <devicetree+bounces-221512-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 8C4EABA0638
	for <lists+devicetree@lfdr.de>; Thu, 25 Sep 2025 17:39:16 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id D92E15E652D
	for <lists+devicetree@lfdr.de>; Thu, 25 Sep 2025 15:32:38 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A33152FDC25;
	Thu, 25 Sep 2025 15:31:55 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=amarulasolutions.com header.i=@amarulasolutions.com header.b="EZwPqDhk"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ed1-f47.google.com (mail-ed1-f47.google.com [209.85.208.47])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D70CE2F90EA
	for <devicetree@vger.kernel.org>; Thu, 25 Sep 2025 15:31:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.47
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758814315; cv=none; b=Sq+/bXi60ovp0tafb3+1AfLy+oqkPJ0YNtnmOS8pJJ2V1zhnVC4xYJphlDwrUX+mC8HJKAy+/1uM2oPe8o77DYcvNO+xkRMwOJW8CdqPGlGRTzHhsYe0fRVsXWaLSYxispNQNAF1AZxuEnfnYpV4/AgTsppWSz6fGl7qIIdc5g8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758814315; c=relaxed/simple;
	bh=q5aG2S5mYUlLQBqwqhP3YXxDUhZ1opyJOZ1oXoGgGA0=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=UUMFuIry6iaVrGX2Xl3Ffdg8vtPQ6nEih43Dq8gl61LOqu72BHQaKzFVsffG3wI2tWlu/FJu83jC90mhTq7njZv3cEsEX0+QSjfQiMr5zb8jBSf7aBOOmp1jMOEMejbmnCx2+ImTyDEB0tFB5bWBQ1RptydRvk2A3qHGjtBTKd0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=amarulasolutions.com; spf=pass smtp.mailfrom=amarulasolutions.com; dkim=pass (1024-bit key) header.d=amarulasolutions.com header.i=@amarulasolutions.com header.b=EZwPqDhk; arc=none smtp.client-ip=209.85.208.47
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=amarulasolutions.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=amarulasolutions.com
Received: by mail-ed1-f47.google.com with SMTP id 4fb4d7f45d1cf-61cc281171cso2330413a12.0
        for <devicetree@vger.kernel.org>; Thu, 25 Sep 2025 08:31:53 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=amarulasolutions.com; s=google; t=1758814312; x=1759419112; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=2j6NXz/L1rjCXicECUckXAuwnbrEJeLUM7GD37RWm6Y=;
        b=EZwPqDhkxKEgMdXteaQFYfQ39dcFnn9f10C0sbwID+CyI1D1xza5k+ooeaMQ8+aJjd
         f1RXYXD/R61lhHVKErdXdJlBdQZKS0mb6fH/KobxM5nbOYwIz7oDL16bgkXiEs2P//V1
         cZ3HZ17jx6NK9Sm/kDsbIFrbh8g9CbX+v5GAA=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1758814312; x=1759419112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=2j6NXz/L1rjCXicECUckXAuwnbrEJeLUM7GD37RWm6Y=;
        b=wZjBt0hBEqC/x2Ri+nV7G1tcMRBY1+iYz0zGpNNCfYiDT5C3PQOmOvZXwlpNExXSaT
         ahmgGotkOg3XPLfqnUYHJx5+1Rn7FkrYE4OziJTS0Nkfi+LU4zyVHyqKFQqYzYAzsu31
         l1GHFJ+xKMjPjnzsFwsvfGHsSKibXJSG2ipHfrwyhemTWX3C+5ngN6u34Ygj+mkmsX6u
         v8q7tDR0CmTGtvzGn+4LrHYRIXNHdUViR2Xi7yYF+hKOG/nVPl8YIyIWUIAgRhUj53Mj
         BjFDbmchd6S2Pzh6gxk7+II/UefcMqhT9opJeKVwNvBPbIZGybQ4VjMerqPOJbIO78M3
         YzXQ==
X-Forwarded-Encrypted: i=1; AJvYcCUN4YBhFIjhwozq8VqBxbNL/+Zcc8mcOb3O2pswm0ToTATstIZ/2oE/d/RrlgwcaFSlhlArHNuAEDRI@vger.kernel.org
X-Gm-Message-State: AOJu0YxQxTvOul6R6cMPxXDNcDMJgy9qhDc5EBuW6lhBSnyaZ2PQOSYs
	RGhIjXLuzt0dx7ty0GIm5dWzmRQrZsRK/ZObmewviSLmzyynGuasv+qZaw5oxwsGfKU=
X-Gm-Gg: ASbGncvEt8k8I+UedyWRybd463yiYezkoLT1EHpdxe24MeIkTx4llyQp7RUTnqAzXrK
	k2F1KAPxqiSYt3nic1qy0wvMrjzetWPqV9WIHvBjS/xExS9IAkt5M97RKqf95EmN4IiHgKa6kMI
	qjErd2/Pk1A668YfJQllAt3kbl4CFfxlLS/68Nwiv3RjQuUrFkmBk+ZPxO+z4KzmtmMw4WQhz07
	9T09TEF+Na6Dg7AUbYTYj1rbuCHdC3hbYYAo1sfgUPN9LbLcUEkX4nkK2NHKCI8sFZsnLl4AznV
	uq/pC5d0v7lkBEiNoamky8x20r70oQpJZ8xcjFLTGcElq48qNXT11UAbLeW/SBxwAhdxsU/UUsy
	ZIhPhN5wX2FTP5tyP/iMxxnTd22QtChQiHf0Y/QBY/jWfP8uBtXb/2/64NblNsobNMf3qomC2jY
	0tIynBNZegqW0UlqbfnEqG1lR/a+uIH6/uBgiV/kMopwXdEYt74sNhkDrK1Zhv9zDO
X-Google-Smtp-Source: AGHT+IE6hFumdlcUjZ/00Iv3aIuLUT9mICMj6k5jLi1LoqQpjx/Mu7By43eLrCshvtCsZpoRqZOBQQ==
X-Received: by 2002:a17:906:6a07:b0:b04:20c0:b1f9 with SMTP id a640c23a62f3a-b34bb50f700mr453534566b.52.1758814312116;
        Thu, 25 Sep 2025 08:31:52 -0700 (PDT)
Received: from dario-ThinkPad-T14s-Gen-2i.homenet.telecomitalia.it (host-82-56-38-125.retail.telecomitalia.it. [82.56.38.125])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-b36f410e129sm43924766b.89.2025.09.25.08.31.50
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 25 Sep 2025 08:31:51 -0700 (PDT)
From: Dario Binacchi <dario.binacchi@amarulasolutions.com>
To: linux-kernel@vger.kernel.org
Cc: sebastian.reichel@collabora.com,
	linux-amarula@amarulasolutions.com,
	Dario Binacchi <dario.binacchi@amarulasolutions.com>,
	Rob Herring <robh@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Dmitry Torokhov <dmitry.torokhov@gmail.com>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	devicetree@vger.kernel.org,
	linux-input@vger.kernel.org
Subject: [linux-next PATCH v8 3/3] dt-bindings: touchscreen: remove touchscreen.txt
Date: Thu, 25 Sep 2025 17:31:35 +0200
Message-ID: <20250925153144.4082786-3-dario.binacchi@amarulasolutions.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20250925153144.4082786-1-dario.binacchi@amarulasolutions.com>
References: <20250925153144.4082786-1-dario.binacchi@amarulasolutions.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

With commit 1d6204e2f51f ("dt-bindings: touchscreen: Add touchscreen
schema") touchscreen.txt is no longer needed, and since no other file
refers to it, it can be safely removed.

Signed-off-by: Dario Binacchi <dario.binacchi@amarulasolutions.com>
Acked-by: Rob Herring (Arm) <robh@kernel.org>

---

Changes in v8:
- fix conflicts on eeti,exc3000.yaml after rebasing the first patch of
  the series on linux-next where the patch "dt-bindings: input: exc3000:
  move eeti,egalax_ts from egalax-ts.txt to eeti,exc3000.yaml" has been
  merged.

Changes in v7:
- Add Reviewed-by tag of Rob Herring for eeti,exc3000.yaml
- Add $ref: /schemas/input/touchscreen/touchscreen.yaml# to
  raspberrypi,bcm2835-firmware.yaml.

Changes in v6:
- Put deprecated the properties added for the eeti,exc3000-i2c.
- Drop the example for the eeti,exc3000-i2c.

Changes in v5:
- Drop patches:
  - v4 1/5 dt-bindings: touchscreen: convert bu21013 bindings to json schema
  - v4 4/5 dt-bindings: touchscreen: convert zet6223 bindings to json schema
  because accepted

Changes in v4:
- For rohm,bu21013 bindings:
  - Drop description from reset-gpios
  - Simplify description of avdd-supply
  - Rename bu21013.yaml to rohm,bu21013.yaml
  - Add Reviewed-by tag of Krzysztof Kozlowski
- For zeitec,zet6223
  - Drop "Phandle to the" from vio-supply and vcc-supply dscription
  - Rename zet6223.yaml to zeitec,zet6223.yaml

Changes in v2:
- Update the commit message
- Add Acked-by tag of Rob Herring
- Add patches:
  - 1/5 dt-bindings: touchscreen: convert bu21013 bindings to json schema
  - 2/5 dt-bindings: touchscreen: convert eeti bindings to json schema
  - 3/5 dt-bindings: touchscreen: convert raspberrypi,firmware-ts bindings
    to json schema
  - 4/5 dt-bindings: touchscreen: convert zet6223 bindings to json schema

 .../devicetree/bindings/input/touchscreen/touchscreen.txt        | 1 -
 1 file changed, 1 deletion(-)
 delete mode 100644 Documentation/devicetree/bindings/input/touchscreen/touchscreen.txt

diff --git a/Documentation/devicetree/bindings/input/touchscreen/touchscreen.txt b/Documentation/devicetree/bindings/input/touchscreen/touchscreen.txt
deleted file mode 100644
index e1adb902d503..000000000000
--- a/Documentation/devicetree/bindings/input/touchscreen/touchscreen.txt
+++ /dev/null
@@ -1 +0,0 @@
-See touchscreen.yaml
-- 
2.43.0

base-commit: b5a4da2c459f79a2c87c867398f1c0c315779781
branch: drop-touchscreen

