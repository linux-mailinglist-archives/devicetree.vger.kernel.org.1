Return-Path: <devicetree+bounces-142283-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id E186CA24C8B
	for <lists+devicetree@lfdr.de>; Sun,  2 Feb 2025 04:51:11 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 5D80B163FAD
	for <lists+devicetree@lfdr.de>; Sun,  2 Feb 2025 03:51:10 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E48952EAEA;
	Sun,  2 Feb 2025 03:51:05 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=google.com header.i=@google.com header.b="EM6ChZcQ"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pj1-f73.google.com (mail-pj1-f73.google.com [209.85.216.73])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 654F622075
	for <devicetree@vger.kernel.org>; Sun,  2 Feb 2025 03:51:04 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.216.73
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1738468265; cv=none; b=FKCeaYzNMgO5y+PWclFTm86VXq9041ecQDShPpvPU7sNFxMjuUpPgwMB5SCDMUjvyC3cbLxtiO3ebJNAf+3U1OcTaY2h6+7fpeEgWFWNsuGSE53BUzgoacsotqPiDylzA/5Bgmk1Y7/v8vd8lfJov+E8VsKNKiEdoUc3tyMl2tY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1738468265; c=relaxed/simple;
	bh=ThuQSdfaKBpcDXqt8wGsv78oL2BN2jQmseobtTxhhbg=;
	h=Date:Mime-Version:Message-ID:Subject:From:To:Cc:Content-Type; b=goYbHrs2NmcDe0mCZ7MdGY9sggL+QclmPs9A7HqyIfdt3c49q/mWFBj6DrsW5uVlEML5lDzYLuzTN6Z/gXyd+sdis8L48a3gkVAv5+w5oKhzdeeKpk1kp0c+QpMun6XnXliuKxK0oys4psQDSYM0WJqtjGnXQrIGHcN9zBmJWKU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=google.com; spf=pass smtp.mailfrom=flex--badhri.bounces.google.com; dkim=pass (2048-bit key) header.d=google.com header.i=@google.com header.b=EM6ChZcQ; arc=none smtp.client-ip=209.85.216.73
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=google.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=flex--badhri.bounces.google.com
Received: by mail-pj1-f73.google.com with SMTP id 98e67ed59e1d1-2ef9b9981f1so9466205a91.3
        for <devicetree@vger.kernel.org>; Sat, 01 Feb 2025 19:51:04 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=google.com; s=20230601; t=1738468263; x=1739073063; darn=vger.kernel.org;
        h=cc:to:from:subject:message-id:mime-version:date:from:to:cc:subject
         :date:message-id:reply-to;
        bh=tLQvG5TnFcXOemXaUB33YPT8JnYY7IUsNv0/RBB9dNA=;
        b=EM6ChZcQDonl4Hau+k1dDHSCiLC/vmWxDa9pKY5GXQ1YfZhRK0b7K7ZoW258jhP9fO
         y5tvEv6NigLAQd1B30gwqxfXHBOUWv6OoJ4DNdIfYqxFcG94hlDLuI8Wetb4eRCIr2EP
         fGq2fi6FND0nPRncVVA7ZdqqGo6VshVuDOYO9qa2aSYs8q5xN+Ie5/OeArsXAZNWMtgD
         A5qgtNHEA4hyOXmC1Hu9QZF106jK0+7GO0CFva8kTxWPFNlCQOV2A8JzvlsD5PDX92qp
         HNs/wl1XpsU7ehlSVIgaPEpC/jmCl5/29RXYQmR1t/65i9lKc0VgNS9LtuZHHGlRGkvD
         vnBQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1738468263; x=1739073063;
        h=cc:to:from:subject:message-id:mime-version:date:x-gm-message-state
         :from:to:cc:subject:date:message-id:reply-to;
        bh=tLQvG5TnFcXOemXaUB33YPT8JnYY7IUsNv0/RBB9dNA=;
        b=ho8Zk6l6KHtOC8swGK+oQOqkFqmSQrOs3v5JN4R4Cn7nIkexUQZGXIB7x+xqE9bIp9
         9o2qR2LOWx7lMouoSx/nUk6VvTsjKV+4PQIMextn/QYLwbrNVUcV7pCyvwYCMHnf+PHJ
         nKtam4X1KunfCQmxfQhyvCIs+9kzwmTSH/uuXW6CELQOdIgUexkPlYlKJUuIBxAV2+lJ
         1KOHXJlWbqBGzn1u9PhjDx+LNlZKi9VYpidknGutHBGzwUfn2vRgD1mZEqw+vz23SrVS
         1qKMpGqWHG5pmtnwLgCV4GhrhRj9NuPVmvMDFzDg46A1SUbCoTF7MH9JFivdX7ubZsje
         Awzw==
X-Forwarded-Encrypted: i=1; AJvYcCWZWle1/A1HX7X+b4mU7dZToLESGBBBIghZXtYUZp2jmPromp82oYW576tT27Qzb9k9vskHT8Nmy4ag@vger.kernel.org
X-Gm-Message-State: AOJu0YwLOp7Qe7KMchX5CO87MCk0e4YiOi1Q6/SraXqcq08Hz5sREnny
	htDk6/9pQZFmiUFR0lZaw1HEcf5byzRMA5T895u1CnWY4oMSd2qhIiwyMkx2Umtc+RpY243tCr0
	bfQ==
X-Google-Smtp-Source: AGHT+IEiw45d1/cmdFgJV1d7Z6blmkpea4G+wd4Ucnyh5wS54em9mWU7qFTZa3sEXs/P4HN3AUDWT8EAxCU=
X-Received: from pjbnc13.prod.google.com ([2002:a17:90b:37cd:b0:2ea:46ed:5d3b])
 (user=badhri job=prod-delivery.src-stubby-dispatcher) by 2002:a17:90b:37c3:b0:2ee:8ea0:6b9c
 with SMTP id 98e67ed59e1d1-2f83abda22dmr29831867a91.12.1738468263511; Sat, 01
 Feb 2025 19:51:03 -0800 (PST)
Date: Sun,  2 Feb 2025 03:50:59 +0000
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
Mime-Version: 1.0
X-Mailer: git-send-email 2.48.1.362.g079036d154-goog
Message-ID: <20250202035100.31235-1-badhri@google.com>
Subject: [PATCH v1 1/2] dt-bindings: usb: snps,dwc3: Add property for imod
From: Badhri Jagan Sridharan <badhri@google.com>
To: Thinh.Nguyen@synopsys.com, gregkh@linuxfoundation.org, 
	felipe.balbi@linux.intel.com, robh@kernel.org, krzk+dt@kernel.org, 
	conor+dt@kernel.org, johnyoun@synopsys.com
Cc: linux-usb@vger.kernel.org, linux-kernel@vger.kernel.org, 
	devicetree@vger.kernel.org, jameswei@google.com, 
	Badhri Jagan Sridharan <badhri@google.com>, stable@kernel.org
Content-Type: text/plain; charset="UTF-8"

This change adds `snps,device-mode-intrpt-mod-interval`
which allows enabling interrupt moderation through
snps,dwc3 node.

`snps,device-mode-intrpt-mod-interval`specifies the
minimum inter-interrupt interval in 250ns increments
during device mode operation. A value of 0 disables
the interrupt throttling logic and interrupts are
generated immediately if event count becomes non-zero.
Otherwise, the interrupt is signaled when all of the
following conditons are met which are, EVNT_HANDLER_BUSY
is 0, event count is non-zero and at least 250ns increments
of this value has elapsed since the last time interrupt
was de-asserted.

Cc: stable@kernel.org
Fixes: cf40b86b6ef6 ("usb: dwc3: Implement interrupt moderation")
Signed-off-by: Badhri Jagan Sridharan <badhri@google.com>
---
 .../devicetree/bindings/usb/snps,dwc3-common.yaml   | 13 +++++++++++++
 1 file changed, 13 insertions(+)

diff --git a/Documentation/devicetree/bindings/usb/snps,dwc3-common.yaml b/Documentation/devicetree/bindings/usb/snps,dwc3-common.yaml
index c956053fd036..3957f1dac3c4 100644
--- a/Documentation/devicetree/bindings/usb/snps,dwc3-common.yaml
+++ b/Documentation/devicetree/bindings/usb/snps,dwc3-common.yaml
@@ -375,6 +375,19 @@ properties:
     items:
       enum: [1, 4, 8, 16, 32, 64, 128, 256]
 
+  snps,device-mode-intrpt-mod-interval:
+    description:
+      Specifies the minimum inter-interrupt interval in 250ns increments
+      during device mode operation. A value of 0 disables the interrupt
+      throttling logic and interrupts are generated immediately if event
+      count becomes non-zero. Otherwise, the interrupt is signaled when
+      all of the following conditons are met which are, EVNT_HANDLER_BUSY
+      is 0, event count is non-zero and at least 250ns increments of this
+      value has elapsed since the last time interrupt was de-asserted.
+    $ref: /schemas/types.yaml#/definitions/uint16
+    minimum: 0
+    maximum: 255
+
   num-hc-interrupters:
     maximum: 8
     default: 1

base-commit: 72deda0abee6e705ae71a93f69f55e33be5bca5c
-- 
2.48.1.362.g079036d154-goog


