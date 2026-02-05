Return-Path: <devicetree+bounces-263060-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 2E1gGueyhGk54wMAu9opvQ
	(envelope-from <devicetree+bounces-263060-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Thu, 05 Feb 2026 16:10:31 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id B89BEF4707
	for <lists+devicetree@lfdr.de>; Thu, 05 Feb 2026 16:10:30 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id A22FA302AD22
	for <lists+devicetree@lfdr.de>; Thu,  5 Feb 2026 15:07:52 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 6227A4218B8;
	Thu,  5 Feb 2026 15:07:51 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="EUo9jEu6"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-dl1-f45.google.com (mail-dl1-f45.google.com [74.125.82.45])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2A235421898
	for <devicetree@vger.kernel.org>; Thu,  5 Feb 2026 15:07:51 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=74.125.82.45
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770304071; cv=none; b=gOfDDYCeQ4d+viPf39mGo5muZTo61hfL9g4RqeQ2XcFqMhYKRCaFwkbHR3DWjpWDYSQ36Os/PVtCIznKcUXWLqntrcvMP+shCglpzz7SNmUk05IiUgZIrS6s864uIO/ubBy/LQvalZqt9E9xBbuln1GFp0OsSTzabMsWYMvEC8U=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770304071; c=relaxed/simple;
	bh=vX8BkboHsssC8Nw57SXxmpuXPbRg3g0R8uICrF6E2bA=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=a4/zyQkmSaaWHYG2Jccc4MHUdYQpIuJokYJvBnmlF7Ly5SDfq2PMN9wP5xIJwPsgPLdd1isKX/8M9u0knKoY2qhe96Gy8I0KVVJ3BLf0hpjfLAJMOKx8EMPNfkMeY28px45TZqZXY/9YLapQ7+yKCZJWH5z7Qetw6kNmqEvhczU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=EUo9jEu6; arc=none smtp.client-ip=74.125.82.45
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-dl1-f45.google.com with SMTP id a92af1059eb24-1233bb90317so1606295c88.1
        for <devicetree@vger.kernel.org>; Thu, 05 Feb 2026 07:07:50 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1770304070; x=1770908870; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=7Iai4Rzf3DIepNpQoUJOL8Zunvxr2B1jf9ADiX1Z9Pk=;
        b=EUo9jEu6QObtY+0555d6v9F8cntt16v3YN8gsOIfR1TmaMO7mQlKnQ53lWGx+uBLrc
         EAF6asYlw29CB4Z6cEvovRm9Qa55swnpSL8yiB2uwcOhy7CMTY80Va1ERQkthTugWUt7
         FyC+ZNnCcVWLyewxpMNVWGQginVGf6culi1SrI1VuGk8cfyd3SJ5j9MspQP3lUcrxac8
         o7xbRyJvtJZLS0p9AFgrqwejHRL5ZWD1lcFrEFwdlAgplUEDszb026TLHmaG9J5PwnUc
         QCdzLwFhEIAe+vzsfXmQWNN35n+dFxm33zmhmtrSIlsVB12ArOU+GLnbP55ylzEpsK8M
         IcPA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1770304070; x=1770908870;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=7Iai4Rzf3DIepNpQoUJOL8Zunvxr2B1jf9ADiX1Z9Pk=;
        b=SgAKDwPc9hTbqbI/rxtII401vduhSGzdjDg2htmtafto6BpRd60Jrg19rbEbg3DTvw
         2mOBlKEeryokPkJmVZRBJVMG3yHGavF0p6NeFLR2AsvSPfIAFEXSXNZsIcUawn7O1ngE
         duPU9b9OKW3XXraN7YRmc8xpKPIs6Nq/ngePRAgjcFowDfanPpUQIZbeLFQYZ+Qq8o8+
         qUPUk0CrveVRGeLeRRLWrfRPYAUUvX//ZUMnb0SpbZ+lb++14C+WX6GAuH5I47iP3q8O
         jFor7cZOuzUx14+jIw1Blf1zghRB14T2KZ/ZwYbX40iLh+JEinXlshRxH+2mGM81b1YQ
         /5PA==
X-Gm-Message-State: AOJu0Yw1xcKnCRAX6oZOyJ1gPSBEWBfEtJLIczNHaORR0rJtXQ7W5GBl
	TWaSVXi/ZadUCu2wjuIt7LLeix/F22b1UbTXJ645xFrF3uRPEPcJy7MjZMQVzXpVvTo=
X-Gm-Gg: AZuq6aL1QPjCKG0iVYDvbzls/+dYPgQ2JvmpyQZDal5LRs5zewWRBfSKOZB6cFB/6Od
	jB2g8luv+1ApyWxcCqb4szeNsMKSBM1euRLy4bd93CcWZF0DMh8OduVbuLLnYg9zVVUf89FkIiu
	8QVW7VO0bNTozIint/Vs9cwVvZbvw+lhQfdMXRjw+4xDo24EfbMdHWUNjv9EZENd/voeK05lFnD
	r4kTbCuYtHQ40v20vmQrb2htKLo2vvbxs9/SRRTYEJwGuO6ymvBNjTA5/vMcBPo7RKYJQMqxEZ9
	Ch040VsnFo98a+0kVyshc0Gww7HFP5Szf6hFmQVLajW3c7y7y2ad5Ziq3f6BEgiki/cMnTGfH7w
	Szls5grtLeMhiftN0kzeqKPd84nHK3mI9Fz2uBYrMjcEwLOxizxSOVMU66dRU+nem9hfCkYpbbb
	hF2VNvUtZB
X-Received: by 2002:a05:7022:619b:b0:11b:8e9f:1089 with SMTP id a92af1059eb24-126fc2b0f8bmr1136516c88.6.1770304069965;
        Thu, 05 Feb 2026 07:07:49 -0800 (PST)
Received: from arch.localdomain ([2409:8a28:a52:d2b1::1004])
        by smtp.gmail.com with ESMTPSA id a92af1059eb24-126f4e04467sm3909693c88.2.2026.02.05.07.07.45
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 05 Feb 2026 07:07:49 -0800 (PST)
From: Jun Yan <jerrysteve1101@gmail.com>
To: devicetree@vger.kernel.org,
	linux-iio@vger.kernel.org
Cc: linusw@kernel.org,
	stephan@gerhold.net,
	hns@goldelico.com,
	jic23@kernel.org,
	Jun Yan <jerrysteve1101@gmail.com>,
	Conor Dooley <conor.dooley@microchip.com>
Subject: [PATCH v4 1/3] dt-bindings: iio: accel: bosch,bma255: add bmx055 accel binding
Date: Thu,  5 Feb 2026 23:07:28 +0800
Message-ID: <20260205150734.525947-2-jerrysteve1101@gmail.com>
X-Mailer: git-send-email 2.52.0
In-Reply-To: <20260205150734.525947-1-jerrysteve1101@gmail.com>
References: <20260205150734.525947-1-jerrysteve1101@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.66 / 15.00];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_CONTAINS_FROM(1.00)[];
	R_MISSING_CHARSET(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20230601];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	MIME_TRACE(0.00)[0:+];
	TO_DN_SOME(0.00)[];
	FREEMAIL_CC(0.00)[kernel.org,gerhold.net,goldelico.com,gmail.com,microchip.com];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-263060-lists,devicetree=lfdr.de];
	DKIM_TRACE(0.00)[gmail.com:+];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	FREEMAIL_FROM(0.00)[gmail.com];
	RCVD_COUNT_FIVE(0.00)[5];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[jerrysteve1101@gmail.com,devicetree@vger.kernel.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	TAGGED_RCPT(0.00)[devicetree];
	RCPT_COUNT_SEVEN(0.00)[8];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	FROM_HAS_DN(0.00)[]
X-Rspamd-Queue-Id: B89BEF4707
X-Rspamd-Action: no action

Add the device-tree binding for the Bosch BMX055 IMU (accelerometer part),
which is compatible with bmc150_accel.

Datasheet: https://cdn.sparkfun.com/assets/b/9/1/f/4/bst-bmx055-ds000_datasheet.pdf
Signed-off-by: Jun Yan <jerrysteve1101@gmail.com>
Reviewed-by: Linus Walleij <linusw@kernel.org>
Acked-by: Conor Dooley <conor.dooley@microchip.com>
---
 .../bindings/iio/accel/bosch,bma255.yaml      | 40 ++++++++++---------
 1 file changed, 21 insertions(+), 19 deletions(-)

diff --git a/Documentation/devicetree/bindings/iio/accel/bosch,bma255.yaml b/Documentation/devicetree/bindings/iio/accel/bosch,bma255.yaml
index c1387e02eb82..7f9c5eec35dd 100644
--- a/Documentation/devicetree/bindings/iio/accel/bosch,bma255.yaml
+++ b/Documentation/devicetree/bindings/iio/accel/bosch,bma255.yaml
@@ -16,25 +16,27 @@ description:
 
 properties:
   compatible:
-    enum:
-      # bmc150-accel driver in Linux
-      - bosch,bma222
-      - bosch,bma222e
-      - bosch,bma250e
-      - bosch,bma253
-      - bosch,bma254
-      - bosch,bma255
-      - bosch,bma280
-      - bosch,bmc150_accel
-      - bosch,bmc156_accel
-      - bosch,bmi055_accel
-
-      # bma180 driver in Linux
-      - bosch,bma023
-      - bosch,bma150
-      - bosch,bma180
-      - bosch,bma250
-      - bosch,smb380
+    oneOf:
+      - enum:
+          - bosch,bma222
+          - bosch,bma222e
+          - bosch,bma250e
+          - bosch,bma253
+          - bosch,bma254
+          - bosch,bma255
+          - bosch,bma280
+          - bosch,bmc150_accel
+          - bosch,bmc156_accel
+          - bosch,bmi055_accel
+
+          - bosch,bma023
+          - bosch,bma150
+          - bosch,bma180
+          - bosch,bma250
+          - bosch,smb380
+      - items:
+          - const: bosch,bmx055-accel
+          - const: bosch,bmc150_accel
 
   reg:
     maxItems: 1
-- 
2.52.0


