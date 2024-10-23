Return-Path: <devicetree+bounces-114478-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 312819ABC80
	for <lists+devicetree@lfdr.de>; Wed, 23 Oct 2024 05:56:05 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id B51441F24D28
	for <lists+devicetree@lfdr.de>; Wed, 23 Oct 2024 03:56:04 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 0671213BC11;
	Wed, 23 Oct 2024 03:55:55 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=google.com header.i=@google.com header.b="s7ZJ8wi9"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-yb1-f201.google.com (mail-yb1-f201.google.com [209.85.219.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 67A8E13A25B
	for <devicetree@vger.kernel.org>; Wed, 23 Oct 2024 03:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.219.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1729655754; cv=none; b=WzglnG984fTPj4cmyg/59VZCINE3JnN7zt/aA8GDEj3VWOH1jRn0+YweyONP9ZI2XDVsK3eOHQSUTMsvfRWvM5UzjeTEDqx9kzR46aaQ4da55cPbTRVvAawrWPnmpwRKiifso+pWOk34LBrfzQyfGUs5nWoMsSbV22xiJuDNzgQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1729655754; c=relaxed/simple;
	bh=sr1da177nMKJ/Vsh/2ykOlfrWElYkCVx5H9q1E23rWQ=;
	h=Date:In-Reply-To:Mime-Version:References:Message-ID:Subject:From:
	 To:Cc:Content-Type; b=Loydb+6DxXaPpfQQF4iyBA89hbWcGP/tlUvuSL5csuqgzLdrQ+kQKQvHKsYhCxKyMlAQ59vsKok9wYl9ZDDGndc03Vl/pcPN80cfbAekL+neq5PEYftzzracAvOQHEP09u2dFq2S3rc7GAcymmUSEv82QPq/kb1/Q6CdGRidYns=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=google.com; spf=pass smtp.mailfrom=flex--amitsd.bounces.google.com; dkim=pass (2048-bit key) header.d=google.com header.i=@google.com header.b=s7ZJ8wi9; arc=none smtp.client-ip=209.85.219.201
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=google.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=flex--amitsd.bounces.google.com
Received: by mail-yb1-f201.google.com with SMTP id 3f1490d57ef6-e2946a143efso776215276.1
        for <devicetree@vger.kernel.org>; Tue, 22 Oct 2024 20:55:53 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=google.com; s=20230601; t=1729655752; x=1730260552; darn=vger.kernel.org;
        h=cc:to:from:subject:message-id:references:mime-version:in-reply-to
         :date:from:to:cc:subject:date:message-id:reply-to;
        bh=R8NOW9r0NeL3hg4pXGOJ9bNEj8VFlhidqkHS6u4oIJM=;
        b=s7ZJ8wi9oRKfp36hOgXxKI9D9cGtyUOca4b5pUNgsSNOTkTy2eNdLyDBpP+LfJGsMm
         47UEpTlcIVKABzC2EYTOSF272xRY3/hL13zmaaHFA8CB2Ke1FgY3PknWWzTrU1hJBpZv
         qUC4YhUr2lTCnF/v4WQbECw/DbTT28lo37Lsck9g7ach542TLDXQECCh3ivqRoQz60kv
         RR8nP/yMdOWVt0cyTwZtmVefYXXhBEPdOPn7Vy1R4RQl1PEMY/dt4ibeGlV9EJ6ii+26
         42lGwx4ioM4b/P06PojyXocXmb6YGhrkA+vA0pCuQV/jIfg9+kjPPg7M8PKJuFGRd12M
         AbMQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1729655752; x=1730260552;
        h=cc:to:from:subject:message-id:references:mime-version:in-reply-to
         :date:x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=R8NOW9r0NeL3hg4pXGOJ9bNEj8VFlhidqkHS6u4oIJM=;
        b=YfCcGKHPmDEM6fsEOSwnYaGCHoRnYzRpFec6Ta6w9lCJD5haw4MRvrbi+NgTu3jdzc
         enUe6dIyKIBSElSq/mZyxp6jbznKaJy94E3iUFLiDF0AILJxK7gMIT+1R8hbDsjR5Lpl
         4IJLTbeY4jUCPJ+eb8s44arU+i9eQjPEmthN2b41yBv1tW7HijUTdAPE5Z2klJzg1Y4n
         Su2B2qm5h1KpQrGpA52+OhcAg7XHDebrv8TEMRDJ2VI+1SMbA5RG1oB1OxEAItPH8Eb4
         PNstt/cYWFhkc8RSoHGm91PDTrA1bTG+zTBgp03PpsDV4TphXCxtX6F12cMCpHhZz3Uz
         kXHQ==
X-Gm-Message-State: AOJu0YxRgzJETj6AHKsepRQxDWWOqJoetSybLdR3X0EYZDrGRzKBlnBu
	i1AQgxYygfwaA248jm+zUZnfiLSrBYK+4Uq2GRzfu6leQCxfEFVLfaaH3f+qYEI+74Fc9LS5L4L
	cKQ==
X-Google-Smtp-Source: AGHT+IHF16XCapmTGj83fmOd6YDMeRXK+zt7yj7Rd/dEGndzeE1M+dnbq+eF2jqvK+HHDBYhTXpq5zRGHLI=
X-Received: from amitsd-gti.c.googlers.com ([fda3:e722:ac3:cc00:20:ed76:c0a8:827])
 (user=amitsd job=sendgmr) by 2002:a25:dc4f:0:b0:e2b:db24:905e with SMTP id
 3f1490d57ef6-e2e39d50bbemr14978276.5.1729655752269; Tue, 22 Oct 2024 20:55:52
 -0700 (PDT)
Date: Tue, 22 Oct 2024 20:55:48 -0700
In-Reply-To: <20241022-pd-dt-time-props-v1-0-fea96f51b302@google.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
Mime-Version: 1.0
References: <20241022-pd-dt-time-props-v1-0-fea96f51b302@google.com>
X-Mailer: b4 0.13.0
Message-ID: <20241022-pd-dt-time-props-v1-1-fea96f51b302@google.com>
Subject: [PATCH 1/2] dt-bindings: connector: Add properties to define time values
From: Amit Sunil Dhamne <amitsd@google.com>
To: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
	Conor Dooley <conor+dt@kernel.org>, Heikki Krogerus <heikki.krogerus@linux.intel.com>, 
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Cc: devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
	linux-usb@vger.kernel.org, Badhri Jagan Sridharan <badhri@google.com>, 
	RD Babiera <rdbabiera@google.com>, Kyle Tso <kyletso@google.com>, 
	Amit Sunil Dhamne <amitsd@google.com>
Content-Type: text/plain; charset="utf-8"

This commit adds the following properties:
  * sink-wait-cap-time-ms
  * ps-source-off-time-ms
  * cc-debounce-time-ms

This is to enable setting of platform/board specific timer values as
these timers have a range of acceptable values.

Signed-off-by: Amit Sunil Dhamne <amitsd@google.com>
Reviewed-by: Rob Herring (Arm) <robh@kernel.org>
---
 .../bindings/connector/usb-connector.yaml          | 35 +++++++++++++++++++++-
 1 file changed, 34 insertions(+), 1 deletion(-)

diff --git a/Documentation/devicetree/bindings/connector/usb-connector.yaml b/Documentation/devicetree/bindings/connector/usb-connector.yaml
index fb216ce68bb3..21a0c58c65cd 100644
--- a/Documentation/devicetree/bindings/connector/usb-connector.yaml
+++ b/Documentation/devicetree/bindings/connector/usb-connector.yaml
@@ -253,6 +253,36 @@ properties:
 
     additionalProperties: false
 
+  sink-wait-cap-time-ms:
+    description: Represents the max time in ms that USB Type-C port (in sink
+      role) should wait for the port partner (source role) to send source caps.
+      SinkWaitCap timer starts when port in sink role attaches to the source.
+      This timer will stop when sink receives PD source cap advertisement before
+      timeout in which case it'll move to capability negotiation stage. A
+      timeout leads to a hard reset message by the port.
+    minimum: 310
+    maximum: 620
+    default: 310
+
+  ps-source-off-time-ms:
+    description: Represents the max time in ms that a DRP in source role should
+      take to turn off power after the PsSourceOff timer starts. PsSourceOff
+      timer starts when a sink's PHY layer receives EOP of the GoodCRC message
+      (corresponding to an Accept message sent in response to a PR_Swap or a
+      FR_Swap request). This timer stops when last bit of GoodCRC EOP
+      corresponding to the received PS_RDY message is transmitted by the PHY
+      layer. A timeout shall lead to error recovery in the type-c port.
+    minimum: 750
+    maximum: 920
+    default: 920
+
+  cc-debounce-time-ms:
+    description: Represents the max time in ms that a port shall wait to
+      determine if it's attached to a partner.
+    minimum: 100
+    maximum: 200
+    default: 200
+
 dependencies:
   sink-vdos-v1: [ sink-vdos ]
   sink-vdos: [ sink-vdos-v1 ]
@@ -380,7 +410,7 @@ examples:
     };
 
   # USB-C connector attached to a typec port controller(ptn5110), which has
-  # power delivery support and enables drp.
+  # power delivery support, explicitly defines time properties and enables drp.
   - |
     #include <dt-bindings/usb/pd.h>
     typec: ptn5110 {
@@ -393,6 +423,9 @@ examples:
             sink-pdos = <PDO_FIXED(5000, 2000, PDO_FIXED_USB_COMM)
                          PDO_VAR(5000, 12000, 2000)>;
             op-sink-microwatt = <10000000>;
+            sink-wait-cap-time-ms = <465>;
+            ps-source-off-time-ms = <835>;
+            cc-debounce-time-ms = <101>;
         };
     };
 

-- 
2.47.0.105.g07ac214952-goog


