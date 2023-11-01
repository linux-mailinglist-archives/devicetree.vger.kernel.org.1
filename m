Return-Path: <devicetree+bounces-13398-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 6A9637DDF3D
	for <lists+devicetree@lfdr.de>; Wed,  1 Nov 2023 11:17:25 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 962641C20BA1
	for <lists+devicetree@lfdr.de>; Wed,  1 Nov 2023 10:17:24 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 093E3D272;
	Wed,  1 Nov 2023 10:17:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=google.com header.i=@google.com header.b="iiubIDLj"
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B9F0110781
	for <devicetree@vger.kernel.org>; Wed,  1 Nov 2023 10:17:20 +0000 (UTC)
Received: from mail-yb1-xb49.google.com (mail-yb1-xb49.google.com [IPv6:2607:f8b0:4864:20::b49])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 2982810D
	for <devicetree@vger.kernel.org>; Wed,  1 Nov 2023 03:17:19 -0700 (PDT)
Received: by mail-yb1-xb49.google.com with SMTP id 3f1490d57ef6-da1aa98ec19so5718606276.2
        for <devicetree@vger.kernel.org>; Wed, 01 Nov 2023 03:17:19 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=google.com; s=20230601; t=1698833838; x=1699438638; darn=vger.kernel.org;
        h=cc:to:from:subject:message-id:references:mime-version:in-reply-to
         :date:from:to:cc:subject:date:message-id:reply-to;
        bh=eYwnCg3MzOCxaL6syOpApDs7eXE4N92NMNfKk1723ok=;
        b=iiubIDLj9+fiCVO4MRpbpNiWATQLYfZHiBCO35SoWgZagmwID+7ufEeHiRa4+HlAkN
         sP0sY+7jA9UEd9dB/nWZLLxUnc/XHy3xiXnsWWd7Wu6V3eTm2SjcRw3lcjf24d1lqaLP
         2Due5leqljuEQc1plzedg+EhOxIMvpeAER0lnd+zngCkG4t3N4iWIsa05+oqyszpXG66
         v3K/FismcNKh1F/jqiWKQ/p+mHqd2f56cBTz4Dv8h85sufn5JUPiGjMyCDw/glZIBUWI
         Hsj3eEbSAy/NV2qcZ2KwyZjkdqswRkm6Cdqfiep/afgFQKz9guD+Ve4azVqRkl0TeP/t
         PdGA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1698833838; x=1699438638;
        h=cc:to:from:subject:message-id:references:mime-version:in-reply-to
         :date:x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=eYwnCg3MzOCxaL6syOpApDs7eXE4N92NMNfKk1723ok=;
        b=Zfes2aD4kGIZER9hdiwXuns6VV2x1Ft7hsljmmvqfIpu3mBOvzkDB/GfpRrEIsYsxO
         Y3uphxKQRAW+GzTbisasEOvG5NU8bS9ioBAwo/k9jB2KreHzxeLm7FlIrOXNiMka19vb
         gce5hZveeky0nJdB4eIc08DSZrXJQSeUV8ziGpuz/Gt8k84KLGfaaIeabvaMsY4lEMQf
         hUKqi8hX9sqqehQJy2k6UyUGofhcEzzY90zvKnN10eYdkjJm9G2K0kuIs19wQYYWN6Ww
         bh/JJ03K/ogZOe2G+w/Eo4KqPJTRekc69hTRihp7uuOdkhzi+c2iDsOp83uDrOWZDpXb
         JzqA==
X-Gm-Message-State: AOJu0YzBNmXvE8Ok6/NqZq48fv3clP8WtxCsVMO9utRFFgXSd1MRAVC2
	1LqCxIQitcgpSgUqL4ygW1GPdCciVBdQ
X-Google-Smtp-Source: AGHT+IHinYRwD8fj0nrrNZJpNGMVcxTbcgPusqm9nKng4RFXsyc4EKTfTVPgJ98yc1drhyuZAcOYzZfbiOsN
X-Received: from mnkumar0.c.googlers.com ([fda3:e722:ac3:cc00:4f:4b78:c0a8:313a])
 (user=mnkumar job=sendgmr) by 2002:a25:bc52:0:b0:d9a:3d02:b55 with SMTP id
 d18-20020a25bc52000000b00d9a3d020b55mr296671ybk.0.1698833838374; Wed, 01 Nov
 2023 03:17:18 -0700 (PDT)
Date: Wed,  1 Nov 2023 10:16:24 +0000
In-Reply-To: <20231101101625.4151442-1-mnkumar@google.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
Mime-Version: 1.0
References: <20231101101625.4151442-1-mnkumar@google.com>
X-Mailer: git-send-email 2.42.0.820.g83a721a137-goog
Message-ID: <20231101101625.4151442-2-mnkumar@google.com>
Subject: [PATCH RESEND 1/2] usb: host: xhci-plat: Add quirk-no-64-bit-support
From: Naveen Kumar <mnkumar@google.com>
To: Mathias Nyman <mathias.nyman@intel.com>, 
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>, Rob Herring <robh+dt@kernel.org>, 
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, Conor Dooley <conor+dt@kernel.org>
Cc: linux-usb@vger.kernel.org, linux-kernel@vger.kernel.org, royluo@google.com, 
	devicetree@vger.kernel.org, Naveen Kumar M <mnkumar@google.com>
Content-Type: text/plain; charset="UTF-8"

From: Naveen Kumar M <mnkumar@google.com>

This patch exposes the existing quirk XHCI_NO_64BIT_SUPPORT so that dwc3
clients can also use this flag. Despite HCCPARAMS1 being set to 1 some
clients may not support 64 bit addressing.

Signed-off-by: Naveen Kumar M <mnkumar@google.com>
---
 drivers/usb/host/xhci-plat.c | 3 +++
 1 file changed, 3 insertions(+)

diff --git a/drivers/usb/host/xhci-plat.c b/drivers/usb/host/xhci-plat.c
index b93161374293..d5f37decb7da 100644
--- a/drivers/usb/host/xhci-plat.c
+++ b/drivers/usb/host/xhci-plat.c
@@ -249,6 +249,9 @@ int xhci_plat_probe(struct platform_device *pdev, struct device *sysdev, const s
 		if (device_property_read_bool(tmpdev, "quirk-broken-port-ped"))
 			xhci->quirks |= XHCI_BROKEN_PORT_PED;
 
+		if (device_property_read_bool(tmpdev, "quirk-no-64-bit-support"))
+			xhci->quirks |= XHCI_NO_64BIT_SUPPORT;
+
 		device_property_read_u32(tmpdev, "imod-interval-ns",
 					 &xhci->imod_interval);
 	}
-- 
2.42.0.820.g83a721a137-goog


