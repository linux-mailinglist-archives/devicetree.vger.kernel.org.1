Return-Path: <devicetree+bounces-13399-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id 22CF37DDF42
	for <lists+devicetree@lfdr.de>; Wed,  1 Nov 2023 11:17:38 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id A65C8B20F26
	for <lists+devicetree@lfdr.de>; Wed,  1 Nov 2023 10:17:35 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 0FBAD101EB;
	Wed,  1 Nov 2023 10:17:30 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=google.com header.i=@google.com header.b="Khfnj0y2"
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B818E10789
	for <devicetree@vger.kernel.org>; Wed,  1 Nov 2023 10:17:28 +0000 (UTC)
Received: from mail-yw1-x1149.google.com (mail-yw1-x1149.google.com [IPv6:2607:f8b0:4864:20::1149])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 32C15102
	for <devicetree@vger.kernel.org>; Wed,  1 Nov 2023 03:17:26 -0700 (PDT)
Received: by mail-yw1-x1149.google.com with SMTP id 00721157ae682-5a8d9dcdd2bso115532847b3.2
        for <devicetree@vger.kernel.org>; Wed, 01 Nov 2023 03:17:26 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=google.com; s=20230601; t=1698833845; x=1699438645; darn=vger.kernel.org;
        h=cc:to:from:subject:message-id:references:mime-version:in-reply-to
         :date:from:to:cc:subject:date:message-id:reply-to;
        bh=Vprtd1rnc+6PWmI9YtTse/TMvnp22Nc9rwicgWr4RkQ=;
        b=Khfnj0y2ac9BFIyLjiz85G0lATt4TAJ02Vm3UaXjXQ3L3r0H6dedXWkWGhl49+O3wx
         4urwKE+YDUeddAnNjVHiKU3Wtek8bfHfaumxL/tVjSP1Hsh1NpBulUGPTmADhEMlvP/j
         24Zd7P5YppVwvdpoxJARrL6odJeu43oJtn4EImlnRGJlxPwYKCVXR79/NewPZHbEZJB4
         Z/VG0YzHWZbLrcpmVY3WIMvelPauPlCIKanNR7GPE+2FQLcRErT4pLeiH02pYKDPoZIe
         WyErqa/7sMmxDMxeVkEvwO+qsJWBbbLvs6TkHztS6WOnSiAyphEcI1FsNxKSvhm/h2iW
         l2cQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1698833845; x=1699438645;
        h=cc:to:from:subject:message-id:references:mime-version:in-reply-to
         :date:x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=Vprtd1rnc+6PWmI9YtTse/TMvnp22Nc9rwicgWr4RkQ=;
        b=RqeormUmgjGMa6//3ct0ThdwWNNEOzVpjybTB3IBA8D6xNAPYH8sgzqdHbBPYklXcB
         XnrM/coBswiepJLTj8XbehJUBqfcIEFnRRMw3HIYGly8JsBrnCzqOMiPb6oyQPe4Wd5W
         ScJIEUfAPbqhLSjA+Iu/yqdDGwGJklpxtnS/XdeafUbwxla6kOqWyj3E2OfOqU/WYXN7
         yrJzZlSIT6v2TmQt5ihHLC9CRJiVBXyiLKVXUPmz/njFw1RgKpe4U+WSDp0KuNh2CMpM
         V1HkpJ1+U6jlNdarwLeXAr2iT5+gDRX6VVacpSHYtFCBm/IXPuNaUuHcd1rcrSoGzGP4
         i7dQ==
X-Gm-Message-State: AOJu0Yyb8iWG2eT+ATgnsbmT2NzIGUTZRgSBzWWD6gUD02dn8/LDGW8Y
	iYIvzlUTfAQzn245wMT9EvTs7Pk0tyIl
X-Google-Smtp-Source: AGHT+IGkfIXtBIMbWiSohH3G81opyz7YcOkbxfQvv4/AQ1loEffyLJXXLOsN3/OXjkkFqgKoDde5Qf0cSNH2
X-Received: from mnkumar0.c.googlers.com ([fda3:e722:ac3:cc00:4f:4b78:c0a8:313a])
 (user=mnkumar job=sendgmr) by 2002:a25:ce94:0:b0:da0:3bea:cdc7 with SMTP id
 x142-20020a25ce94000000b00da03beacdc7mr263093ybe.2.1698833845477; Wed, 01 Nov
 2023 03:17:25 -0700 (PDT)
Date: Wed,  1 Nov 2023 10:16:25 +0000
In-Reply-To: <20231101101625.4151442-1-mnkumar@google.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
Mime-Version: 1.0
References: <20231101101625.4151442-1-mnkumar@google.com>
X-Mailer: git-send-email 2.42.0.820.g83a721a137-goog
Message-ID: <20231101101625.4151442-3-mnkumar@google.com>
Subject: [PATCH RESEND 2/2] dt-bindings: usb: add no-64-bit-support property
From: Naveen Kumar <mnkumar@google.com>
To: Mathias Nyman <mathias.nyman@intel.com>, 
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>, Rob Herring <robh+dt@kernel.org>, 
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, Conor Dooley <conor+dt@kernel.org>
Cc: linux-usb@vger.kernel.org, linux-kernel@vger.kernel.org, royluo@google.com, 
	devicetree@vger.kernel.org, Naveen Kumar M <mnkumar@google.com>
Content-Type: text/plain; charset="UTF-8"

From: Naveen Kumar M <mnkumar@google.com>

Add a new DT option to specify whether a host controller is able to
support 64-bit DMA memory pointers

Signed-off-by: Naveen Kumar M <mnkumar@google.com>
---
 Documentation/devicetree/bindings/usb/usb-xhci.yaml | 4 ++++
 1 file changed, 4 insertions(+)

diff --git a/Documentation/devicetree/bindings/usb/usb-xhci.yaml b/Documentation/devicetree/bindings/usb/usb-xhci.yaml
index 180a261c3e8f..20dc134004f3 100644
--- a/Documentation/devicetree/bindings/usb/usb-xhci.yaml
+++ b/Documentation/devicetree/bindings/usb/usb-xhci.yaml
@@ -25,6 +25,10 @@ properties:
     description: Set if the controller has broken port disable mechanism
     type: boolean
 
+  quirk-no-64-bit-support:
+    description: Set if the xHC doesn't support 64-bit DMA memory pointers
+    type: boolean
+
   imod-interval-ns:
     description: Interrupt moderation interval
     default: 5000
-- 
2.42.0.820.g83a721a137-goog


