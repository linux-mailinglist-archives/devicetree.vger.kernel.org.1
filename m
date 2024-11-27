Return-Path: <devicetree+bounces-124953-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id C0A559DA648
	for <lists+devicetree@lfdr.de>; Wed, 27 Nov 2024 11:58:51 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 6DDDAB226BD
	for <lists+devicetree@lfdr.de>; Wed, 27 Nov 2024 10:58:25 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D74431E0DD7;
	Wed, 27 Nov 2024 10:58:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="mkeu19hm"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ed1-f45.google.com (mail-ed1-f45.google.com [209.85.208.45])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DC7A61E0DCC
	for <devicetree@vger.kernel.org>; Wed, 27 Nov 2024 10:58:13 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.45
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1732705096; cv=none; b=jY9qs7+P7ugSlQgLjeHwUCqMXucg68hAxCZt2K5N3vk801WG3bdnRaQuul4ykEsNQDN1Ey3ENHNwUTbj34EhJjO4IlH6QZ9GU4NZA8/ryexUc1SF5LEhPx00z+6/4DATzvROcUEeMnK/FFt2mgHdLY3BXSrOESO7yfcI9J8/izU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1732705096; c=relaxed/simple;
	bh=+j4kL8jQakPtA0ubTOj6v20Lv2vxrklGu98FO81Id8M=;
	h=From:Subject:Date:Message-Id:MIME-Version:Content-Type:To:Cc; b=cH6zU9XvKSKRhGdEEW3Z9N1pznP5h9gii5Zdly0zjnnzKfTtXu3eS2ayVOGR+tWLgYO2nWpL2sMqTddska9zu4nN/iXTL/CURoQZoOFp9UssUbZxcXAXQLAHdPEFow4J3vEepywDvdRMZfaMjovKcH6Gpd+IKHyf2GhrrjeFJD4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=mkeu19hm; arc=none smtp.client-ip=209.85.208.45
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-ed1-f45.google.com with SMTP id 4fb4d7f45d1cf-5ced377447bso8939098a12.1
        for <devicetree@vger.kernel.org>; Wed, 27 Nov 2024 02:58:13 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1732705092; x=1733309892; darn=vger.kernel.org;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:from:to:cc:subject:date:message-id:reply-to;
        bh=FnSBghT1PQvjEoqKzE6lYaSFxfTQgIMEYx5M8qLoZaE=;
        b=mkeu19hmS+gux3BLo04TpsDfAFL0LGb4eHkl+1gW5IH4ynkT7r8geVypbIhc2ddrlF
         /tFzO6+EyBH2wekupHUIjtLNL6M28JQKV27/34Y9G3RU78ym4Izssn2DPYBohUMKcdrd
         G5iiZvkdHBejpeGD/l9nf2Gnwb7IUjtU3z7WuWuzzFUn66+xx83jqlwLLVhG4LrxJ8I5
         FGnuPJErpoB5VlZfsnz8zPeeWF9YInHDSX91yJ7K/8ZcPbQEmOHrMYXYrI8mFIRbth98
         WHzWGdZ/+dPnj/OnoczoRcLlbt4qETtBjtlZfgPTiRxJAth/CUIy+NtON5FTlXVxtOJe
         37ZA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1732705092; x=1733309892;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=FnSBghT1PQvjEoqKzE6lYaSFxfTQgIMEYx5M8qLoZaE=;
        b=f3Pr+rkXWHBJ7HCCmktB3YLztiu7LdlqM/M5asN8df0m9EgxxiAvpCTRaWt523YmSd
         z7/CU5hEDk5mLLcJWI4mE74y7HSXB4nWiZz9W9ow+HZs+H/NzOOXHa5pv51OGL3PpS8T
         +PBu1N6uRilCEJX0VP+6z6HKKi/H5YY69BGznLkQuod7HVRojoFulYEXtfHsIIHlv4JZ
         mmxdMW85UJvmLr31MBd9O9qigtmdcWG7bWX/63FgGevUrNPi2vbHrjes48tmqWMG6mlW
         PAIQ1K4AFxCE0Ch/2dJrfxhCrth0+F5E3sUB3NwraPHwCA96TtVA8FIbP9lZ6r+FLev8
         aytw==
X-Forwarded-Encrypted: i=1; AJvYcCWqnNsUCbpsUgyDAZ65+/LYu+6+lMT8XuMn3y3VJmOLDS/WQ23jRKeDK9uMl/BvNl2B9EaRQ11pTDXU@vger.kernel.org
X-Gm-Message-State: AOJu0Yw6hzCZiiyky+3jlZL32KIC/eC7USXQ0E6k+x7CVCnvFjgUiS7J
	QJS2kjLXt2Cylv+68yPj0mJvY52577zvf4VL7nPgDKK3TwPGZ/Xt7SzfATiL1HA=
X-Gm-Gg: ASbGncuyAw0JM+j+97RRd1e40HIs0nktFVMnZ5c11VMZCPNYnvSM9kwgTrkUwcLVE2i
	sSOq0e7GO0qkwneKzhtV2+no/L/cV3PBJh+VflJoJklYnXTSN3FMMWSbBy14B8kzoB8Ah1u271w
	YDldbpfYW/a8vxPLxtIMxAfFGLnsejGkPtUeFSsvnlXN3f/8yYtrQSi7PdGpCJUMDtHOm1asXHO
	1v+Zq7hmyQfV2Zb6fOwylUmGWIhkdQqtTekFcdKc0k2aIpJwWUNF/9eS+hcA8im/MZnbdE7AW+w
	19QpOEXSagmCNxhK6OgUz53bCkE/lih3ew==
X-Google-Smtp-Source: AGHT+IHtqYL91H6SMMvksK3ZTB/2Fzc9xaGKysfgcuXFtHMmqYC6TditIFw1AYITQuYQn85K2iSkAQ==
X-Received: by 2002:a17:906:1bb2:b0:aa2:c73:3720 with SMTP id a640c23a62f3a-aa58107846bmr200250766b.58.1732705092241;
        Wed, 27 Nov 2024 02:58:12 -0800 (PST)
Received: from puffmais.c.googlers.com (64.227.90.34.bc.googleusercontent.com. [34.90.227.64])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-aa54a6db906sm412183566b.41.2024.11.27.02.58.11
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 27 Nov 2024 02:58:11 -0800 (PST)
From: =?utf-8?q?Andr=C3=A9_Draszik?= <andre.draszik@linaro.org>
Subject: [PATCH 0/9] USB31DRD phy updates for Google Tensor gs101
 (orientation & DWC3 rpm)
Date: Wed, 27 Nov 2024 10:58:10 +0000
Message-Id: <20241127-gs101-phy-lanes-orientation-phy-v1-0-1b7fce24960b@linaro.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit
X-B4-Tracking: v=1; b=H4sIAEL7RmcC/x2NQQqDQAxFryJZG5iEoa1epbgYnFQDZZSJFEW8e
 4PL9+G9f4JJVTHomxOq/NR0KQ7UNjDOqUyCmp2BA0cifuJkFAjX+cBvKmK4uF62tLl3r9xlDuM
 jv2Jm8Mpa5aP7/fAerusPwzyMdXEAAAA=
To: Vinod Koul <vkoul@kernel.org>, 
 Kishon Vijay Abraham I <kishon@kernel.org>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, 
 Marek Szyprowski <m.szyprowski@samsung.com>, 
 Sylwester Nawrocki <s.nawrocki@samsung.com>, 
 Alim Akhtar <alim.akhtar@samsung.com>
Cc: Peter Griffin <peter.griffin@linaro.org>, 
 Tudor Ambarus <tudor.ambarus@linaro.org>, 
 Sam Protsenko <semen.protsenko@linaro.org>, 
 Will McVicker <willmcvicker@google.com>, Roy Luo <royluo@google.com>, 
 kernel-team@android.com, linux-phy@lists.infradead.org, 
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
 linux-arm-kernel@lists.infradead.org, linux-samsung-soc@vger.kernel.org, 
 =?utf-8?q?Andr=C3=A9_Draszik?= <andre.draszik@linaro.org>
X-Mailer: b4 0.13.0

Hi,

This series enables USB3 Type-C lane orientation detection and
configuration on platforms that support this (Google gs101), and it
also allows the DWC3 core to enter runtime suspend even when UDC is
active.

For lane orientation, this driver now optionally (based on DT)
subscribes to the TCPC's lane orientation notifier and remembers the
orientation to later be used during phy_init().

To enable DWC3 runtime suspend, the gadget needs to inform the core via
dwc3_gadget_interrupt() with event type == DWC3_DEVICE_EVENT_DISCONNECT
of a cable disconnect. For that to allow to happen, this driver
therefore needs to stop forcing the Vbus and bvalid signals to active
and instead change their state based on actual conditions. The same
TCPC notifier is used to detect this, and program the hardware
accordingly.

That signal state is based on advice given by Thinh in
https://lore.kernel.org/all/20240813230625.jgkatqstyhcmpezv@synopsys.com/

Both changes together now allow cable orientation detection to work, as
the DWC3 will now call phy_exit() on cable disconnect, and we can
reprogram the lane mux in phy_init().

On top of that, there are some small related cleanup patches.

Signed-off-by: André Draszik <andre.draszik@linaro.org>
---
André Draszik (9):
      dt-bindings: phy: samsung,usb3-drd-phy: align to universal style
      dt-bindings: phy: samsung,usb3-drd-phy: add optional orientation-switch
      dt-bindings: phy: samsung,usb3-drd-phy: gs101: require Type-C properties
      phy: exynos5-usbdrd: convert to dev_err_probe
      phy: exynos5-usbdrd: fix EDS distribution tuning (gs101)
      phy: exynos5-usbdrd: gs101: ensure power is gated to SS phy in phy_exit()
      phy: exynos5-usbdrd: gs101: configure SS lanes based on orientation
      phy: exynos5-usbdrd: subscribe to orientation notifier if required
      phy: exynos5-usbdrd: allow DWC3 runtime suspend with UDC bound (E850+)

 .../bindings/phy/samsung,usb3-drd-phy.yaml         |  20 ++
 drivers/phy/samsung/Kconfig                        |   1 +
 drivers/phy/samsung/phy-exynos5-usbdrd.c           | 222 ++++++++++++++++-----
 3 files changed, 197 insertions(+), 46 deletions(-)
---
base-commit: ed9a4ad6e5bd3a443e81446476718abebee47e82
change-id: 20241127-gs101-phy-lanes-orientation-phy-29d20c6d84d2

Best regards,
-- 
André Draszik <andre.draszik@linaro.org>


