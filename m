Return-Path: <devicetree+bounces-277811-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id QGbvLc4FvGmurAIAu9opvQ
	(envelope-from <devicetree+bounces-277811-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Thu, 19 Mar 2026 15:18:54 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [IPv6:2600:3c04:e001:36c::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 7CD8B2CC9B7
	for <lists+devicetree@lfdr.de>; Thu, 19 Mar 2026 15:18:54 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 3B4DF307829B
	for <lists+devicetree@lfdr.de>; Thu, 19 Mar 2026 14:15:41 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 5800B35AC19;
	Thu, 19 Mar 2026 14:15:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="Q1E2Poh0"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f41.google.com (mail-wr1-f41.google.com [209.85.221.41])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BE6AB338910
	for <devicetree@vger.kernel.org>; Thu, 19 Mar 2026 14:15:20 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.41
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773929722; cv=none; b=OJ+fGtXRMfiMfPb3FyknM2xQht+cDmcKJpkwln2ERVOUkbJ2JrKyQAHwtIkRKtZIyLWpYX8gksQkF9OKYdAwSnzABxM2exyuSrifU5Ry6jvxWrT0sEwnQgn+Hrf7WNArwDc0KDnBpb0+FtrQwp9qABCNnO21ZmC93VW3d72HK0A=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773929722; c=relaxed/simple;
	bh=AVqKV2koLL7ZlkRc62jikhi1UX4IiI5DvZw1l2ipQw8=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=UtSXe2+vv/9hzUvYKeLjZCABPDmC7FvN/zxRXIpVb4Fgkatl/L5bvrnug/aacj8IfNEbeQxlyY3oNjsNLc6tSiQjGYmDirFzsT8eyh6XDNNLqCsstzyCURibh0mbVkJvw7fPXlBp2h9pNz9Hlpz9ah1PdYhfuFHdXc6pMdxzHvg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=Q1E2Poh0; arc=none smtp.client-ip=209.85.221.41
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-wr1-f41.google.com with SMTP id ffacd0b85a97d-43b40fb7f95so892917f8f.3
        for <devicetree@vger.kernel.org>; Thu, 19 Mar 2026 07:15:20 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1773929719; x=1774534519; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=dVOwtxYwKf7F+id86vByPrLslX0VOCCmqpIA6XP6qiw=;
        b=Q1E2Poh0Sgop4j0ZeuULYvsTCnM9vWucHJdYqXYr4Vd63rxYm/g5HsODEZkqMtRNdN
         1W91gwJYsY267BOY79c7XvY/i/5awpakgTaaWZgsQFw/HfB2BA7rVnGnRWsHCQeeLhhz
         Q/3u8Jd+v/YGR3qDKuJkJN6CDyA8/o7Ym1hXLCm/wOI4qX6Cx1tBEsebzWcPZlX/LHC3
         8pz3pvd1m+bH73g3Fy9R7XAcfbk/ycLzsq4ye72kNMbH5L+Un0zpYqyzG5JMl5LYCDxN
         1OtVOGjXaMyQ8GlR15mRFQybd0oV7Hr0CmiqfznjD3uPXJ6KJw/WvyciDQE0Ru0EzSNf
         2pNA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1773929719; x=1774534519;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=dVOwtxYwKf7F+id86vByPrLslX0VOCCmqpIA6XP6qiw=;
        b=cK+ydo/oHb5caL70CxcTmP5jTPieCpcBsrHlTTO9NfcGz0agvUozls7qQmjaUdrVjQ
         e+YS/raM6xuLdY65D+N8LfZULgCX0wj1hDxyqqqQo02F6my4mRsfbPjyjG7GDuILFaWS
         NqOvdGE2hZ3Npt1RY3GLT4/ldkRh5Aws0n3t4ERnPs2wGEaHI/KRyDn2zcLRCvBeIIFP
         gaEc7pUBulVEHiqviHii9EqG6/rSlwVuBNiATs6upudI6i1ISz3nn4xITOFCAFXFRgdW
         HQJrl62nayWPt9TT7EagOVk4YVkBEiT2M0CofxGGVOu1rD6H0oGnAD5Rmsgwd4ctevU8
         6MWg==
X-Forwarded-Encrypted: i=1; AJvYcCWYhuGMtRlCkuxBWgcnz9a8EoULwzHwFXept6MK/9KlYR6yWUnxr1HLiKgnxLVx65Hrt4+zIxAr1sqm@vger.kernel.org
X-Gm-Message-State: AOJu0YyBl90mrp267GSt77dne9DfL6IRN2F/QkS2xxxyTePqouuZMOlx
	XQwMj+JT3SoUrEUfSHULVMB9c4v7DnP8FLiN9QeO7xqZDGby76gRkAGW
X-Gm-Gg: ATEYQzzuW8TZQbx3KVwVhWGrlxnZF41uPG55ezYx3c5iBs49+IWpQg+dl4NWWXVCqsN
	P4DxMkcee3088CcUaXnVxyRprQKFtM2FX5AvgpP34kOo3CRhfQTYkcXV0niHXw8hTMz/tQIttUA
	6QBsfFPINGDV2TY05/cCiAHroQ2Wzw6ljwI2d5U3AgDrmohQPUQnBcDLy/uE6hcjUramcjl27a9
	06MgswbAoZTtNHauM45tUTfHkqZe0RqAccM7hFkGIItm1VuTWh8Zi9KIh3x0SbHZnMcoqLsb94E
	V+NjGieeT+hMPeTG29BVRiGf/sam8B/KNQhhlIMza494Uz7OEJsZCU4qsUDp8rvMiq0FP5KrMI3
	Cgrc6CXugyk67MHake2VxCZTlEINH7f6Ao5iHpoileCSGI/kAoyKOpguoaxDaRBmKLu64W70IKe
	NA1VNokvbj8Glox4O5oPQS1eNoVR5+6pZzq8oGtt2gjmi2wbB0UPJ7wCG4ulLq68iHvvDh8xXeQ
	Euq1+oPELJNVyNfHw9/DhONxqm7h/nvxORpjmVn1Fl9Pdw=
X-Received: by 2002:a05:6000:2501:b0:439:c42f:10c4 with SMTP id ffacd0b85a97d-43b527a97b3mr13343032f8f.15.1773929718875;
        Thu, 19 Mar 2026 07:15:18 -0700 (PDT)
Received: from iku.example.org ([2a06:5906:61b:2d00:f7c0:c444:6359:4c21])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-43b5184957bsm17824618f8f.5.2026.03.19.07.15.18
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 19 Mar 2026 07:15:18 -0700 (PDT)
From: Prabhakar <prabhakar.csengg@gmail.com>
X-Google-Original-From: Prabhakar <prabhakar.mahadev-lad.rj@bp.renesas.com>
To: Geert Uytterhoeven <geert+renesas@glider.be>,
	Linus Walleij <linusw@kernel.org>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Magnus Damm <magnus.damm@gmail.com>
Cc: linux-renesas-soc@vger.kernel.org,
	linux-gpio@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	Prabhakar <prabhakar.csengg@gmail.com>,
	Biju Das <biju.das.jz@bp.renesas.com>,
	Fabrizio Castro <fabrizio.castro.jz@renesas.com>,
	Lad Prabhakar <prabhakar.mahadev-lad.rj@bp.renesas.com>
Subject: [PATCH v2 1/2] dt-bindings: pinctrl: renesas,r9a09g077: Document pin configuration properties
Date: Thu, 19 Mar 2026 14:15:14 +0000
Message-ID: <20260319141515.2053556-2-prabhakar.mahadev-lad.rj@bp.renesas.com>
X-Mailer: git-send-email 2.53.0
In-Reply-To: <20260319141515.2053556-1-prabhakar.mahadev-lad.rj@bp.renesas.com>
References: <20260319141515.2053556-1-prabhakar.mahadev-lad.rj@bp.renesas.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spamd-Result: default: False [-1.66 / 15.00];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	R_MISSING_CHARSET(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c04:e001:36c::/64:c];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20230601];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FREEMAIL_FROM(0.00)[gmail.com];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-277811-lists,devicetree=lfdr.de];
	MIME_TRACE(0.00)[0:+];
	FREEMAIL_TO(0.00)[glider.be,kernel.org,gmail.com];
	RCPT_COUNT_TWELVE(0.00)[14];
	FREEMAIL_CC(0.00)[vger.kernel.org,gmail.com,bp.renesas.com,renesas.com];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[prabhakarcsengg@gmail.com,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[gmail.com:+];
	NEURAL_HAM(-0.00)[-0.958];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,renesas,dt];
	ASN(0.00)[asn:63949, ipnet:2600:3c04::/32, country:SG];
	FROM_HAS_DN(0.00)[]
X-Rspamd-Queue-Id: 7CD8B2CC9B7
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

From: Lad Prabhakar <prabhakar.mahadev-lad.rj@bp.renesas.com>

Document the pin configuration properties supported by the RZ/T2H
pinctrl driver.

The RZ/T2H SoC allows configuring several electrical characteristics
through the DRCTLm (I/O Buffer Function Switching) registers. These
registers control drive strength, bias configuration, Schmitt trigger
input, and output slew rate.

Signed-off-by: Lad Prabhakar <prabhakar.mahadev-lad.rj@bp.renesas.com>
---
v1->v2:
- Updated commit description
- Switched to using the standard drive-strength-microamp property
  name instead of a custom one
- Added a description for slew-rate property
---
 .../pinctrl/renesas,r9a09g077-pinctrl.yaml      | 17 +++++++++++++++++
 1 file changed, 17 insertions(+)

diff --git a/Documentation/devicetree/bindings/pinctrl/renesas,r9a09g077-pinctrl.yaml b/Documentation/devicetree/bindings/pinctrl/renesas,r9a09g077-pinctrl.yaml
index f049013a4e0c..63993b20524f 100644
--- a/Documentation/devicetree/bindings/pinctrl/renesas,r9a09g077-pinctrl.yaml
+++ b/Documentation/devicetree/bindings/pinctrl/renesas,r9a09g077-pinctrl.yaml
@@ -83,6 +83,23 @@ definitions:
       input: true
       input-enable: true
       output-enable: true
+      bias-disable: true
+      bias-pull-down: true
+      bias-pull-up: true
+      input-schmitt-enable: true
+      input-schmitt-disable: true
+      slew-rate:
+        description: 0 is slow slew rate, 1 is fast slew rate
+        enum: [0, 1]
+      drive-strength-microamp:
+        description: |
+          Four discrete levels are supported (via registers DRCTLm), corresponding
+          to the following nominal values:
+          - 2500  (Low strength)
+          - 5000  (Middle strength)
+          - 9000  (High strength)
+          - 11800 (Ultra High strength)
+        enum: [2500, 5000, 9000, 11800]
     oneOf:
       - required: [pinmux]
       - required: [pins]
-- 
2.53.0


