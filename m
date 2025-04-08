Return-Path: <devicetree+bounces-164503-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 01978A81409
	for <lists+devicetree@lfdr.de>; Tue,  8 Apr 2025 19:52:22 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id DE00E4E0084
	for <lists+devicetree@lfdr.de>; Tue,  8 Apr 2025 17:52:21 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A2C0E23E351;
	Tue,  8 Apr 2025 17:51:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=riscstar-com.20230601.gappssmtp.com header.i=@riscstar-com.20230601.gappssmtp.com header.b="ag4ZO0o6"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-io1-f45.google.com (mail-io1-f45.google.com [209.85.166.45])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0C0D923E25F
	for <devicetree@vger.kernel.org>; Tue,  8 Apr 2025 17:51:51 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.166.45
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744134714; cv=none; b=EkD9FnjHJi1SQN4NAf2cYmpDaF6+wKaefEFF1WaUBtjxi7QW5vrMQ3GGDN2y2e8wnEBurcGDjcohTRfnybRAH7+S0V7AAf2BFqrHRq214hpPd4Ie6FOp6TPDtlqsgVb5pzKJEZ7GsJezSnNqNps+7ubhq+Rb8lnMpuYuVGrJ+6k=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744134714; c=relaxed/simple;
	bh=pfNiNb8Fe/zcwQj8jQmkgpYm3CZKoam63wk0H25fTyA=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=KYqfFqUyYMOt6YyIrXvj0ZT+Oj0gxOh1FsRZLdWySGrmN9CeV0MA+WnAm3nGCbS0tDiIVZNdG2qdPUEekIsmAVWZj8iG3LmOzj5ZG3Z3zZrOFGhKomc7mA3R4zHob4ZJLPBP4v+ip/TBZFK53EnkoZGBKCPERbBtIG0s2Yzp9Lc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=riscstar.com; spf=pass smtp.mailfrom=riscstar.com; dkim=pass (2048-bit key) header.d=riscstar-com.20230601.gappssmtp.com header.i=@riscstar-com.20230601.gappssmtp.com header.b=ag4ZO0o6; arc=none smtp.client-ip=209.85.166.45
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=riscstar.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=riscstar.com
Received: by mail-io1-f45.google.com with SMTP id ca18e2360f4ac-85dac9729c3so388573439f.2
        for <devicetree@vger.kernel.org>; Tue, 08 Apr 2025 10:51:51 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=riscstar-com.20230601.gappssmtp.com; s=20230601; t=1744134711; x=1744739511; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=EXZ0+VsyT3ItyrY8CgiqoYB+yPWPKWB+ae2oWOWvhgI=;
        b=ag4ZO0o61M7o/cV47ct6rJR7RnMvZyYnZK8YvTvri2+iGPVp95JX0DuBqKg2Pp3/HG
         iURoLCsYBdri1agZI3VSs0e/uThFjVo7ZJljNZEAj5afuIGUx54thzQ1xXBpMjd6Cu/A
         6FNifwFG75MFSkQKrRyU+nTy4nm5srHh8RlXGZnsLWjWGtYThzw2si6GDcNbRp+F9e7m
         +aCDKEHzozcOPuIh9UZWIJUC3ZGsqO+nZ26zgCNderBziI4KSM1ZkG/kvmDzED6bEAzc
         YNXP7nnlRPqh+bQZ09TFgcKkPqBZfG+CcxMBOdccP9/YIjPnadIVz02ABpBz7RORI4KZ
         /mxg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1744134711; x=1744739511;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=EXZ0+VsyT3ItyrY8CgiqoYB+yPWPKWB+ae2oWOWvhgI=;
        b=auwUjLeruAVXu5aSRiC+PD35YuJALj5F/1Z0/8VHClMmnb8AJc/fSqG/yOOKpC0YpE
         vpfkUwrhmc15vRMe8vTv6QMj2f5Nxw9psKTpxqlHgZ6ejkKlVMk3Kgtgkbu8hM67Oqle
         PHm7mqn5DHAFfFWYhwlsMdRsBdmGjQd2iYEzrVVlUudiX/HSYarmggKV1sU+8bFBsQ2u
         oIWMiMxXU2Bsq+mqpgPbMrJkPf33kbUsyU6wbc0RZfe6xhGVnw+ZCQTJ2DEwHaJZ+cBf
         yTZRx572yQIaPK2tLtKaFbGbT56u2X1ZAgxaA3LfxjOULlXfUBb2akpngxyWEs4i11fJ
         MLWA==
X-Forwarded-Encrypted: i=1; AJvYcCWvz9YJtxUU/AhHdtl0WsOwHYoNQRRf/igDLaYqY6iEPgbxOTz4Qc31Z1VIyyXdLkVNagR9YFL066Ir@vger.kernel.org
X-Gm-Message-State: AOJu0YxIgCuUGT1s1yP4NCYF3TDBDZB7998sHOohEOb1SqpteSvJvkkH
	RSRxgwIN4tsLvwcoIsD88uN2+H3k0x2JOeOe00zNPI3hMV7O9SDbAuGTqDIC4tg=
X-Gm-Gg: ASbGncs0N6mlMLB9VvdBzAnZBouTseh/2ykjJsSumKdxjxem21jpsIK5SC1cilxjSX4
	oCOkRvBJdQ3MMQ6Xuq3g+zghgarxpn3dxuIgRGWaDtrE09nP08RoONc0qKn17JIZ+QopKzIn3e5
	KoHOX4z8o6AAYCzZEXKJYTB34e+8QQBDyi364/X1ZBKofg/Y8EBuQZiaDLuvZaP2si8xN1huAPY
	omDBX0DSV9liePK4ysNJw1+XnmTxkTWZM5P75kvLAjl3xDybtWf5dtPBe88J7L7UuURtT5hvmys
	+0jLGdwQ5x0mtJpbOZp2zu4CckJ3/c0+uRKiBoETlVe8isM9V7Zrde9Nvv/kMC9NojsaZXLFqXN
	7s3FyhazBSqHEsSoxmkcYYFMJAHoB
X-Google-Smtp-Source: AGHT+IGVxxwmqJkqflwzOHKjV4l4VlvMzZwjLfYihFRtDlDdDH3ptiChk4kVDxgr5Yqkd4y8bj8J5A==
X-Received: by 2002:a05:6602:3995:b0:85b:601d:dfb9 with SMTP id ca18e2360f4ac-8616118207amr9274439f.3.1744134711088;
        Tue, 08 Apr 2025 10:51:51 -0700 (PDT)
Received: from localhost.localdomain (c-73-228-159-35.hsd1.mn.comcast.net. [73.228.159.35])
        by smtp.gmail.com with ESMTPSA id 8926c6da1cb9f-4f4f44e26fcsm595914173.120.2025.04.08.10.51.50
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 08 Apr 2025 10:51:50 -0700 (PDT)
From: Alex Elder <elder@riscstar.com>
To: robh@kernel.org,
	krzk+dt@kernel.org,
	conor+dt@kernel.org,
	gregkh@linuxfoundation.org,
	jirislaby@kernel.org
Cc: benjamin.larsson@genexis.eu,
	bastien.curutchet@bootlin.com,
	andriy.shevchenko@linux.intel.com,
	u.kleine-koenig@baylibre.com,
	lkundrak@v3.sk,
	devicetree@vger.kernel.org,
	linux-serial@vger.kernel.org,
	linux-kernel@vger.kernel.org
Subject: [PATCH 1/2] dt-bindings: serial: 8250: support an optional second clock
Date: Tue,  8 Apr 2025 12:51:42 -0500
Message-ID: <20250408175146.979557-2-elder@riscstar.com>
X-Mailer: git-send-email 2.45.2
In-Reply-To: <20250408175146.979557-1-elder@riscstar.com>
References: <20250408175146.979557-1-elder@riscstar.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

The SpacemiT UART driver requires a bus clock to be enabled in addition
to the primary function clock.  Add the option to specify two clocks
for an 8250-compatible UART, named "core" and "bus".

Signed-off-by: Alex Elder <elder@riscstar.com>
---
 Documentation/devicetree/bindings/serial/8250.yaml | 6 +++++-
 1 file changed, 5 insertions(+), 1 deletion(-)

diff --git a/Documentation/devicetree/bindings/serial/8250.yaml b/Documentation/devicetree/bindings/serial/8250.yaml
index dc0d52920575f..1adf935b7f36f 100644
--- a/Documentation/devicetree/bindings/serial/8250.yaml
+++ b/Documentation/devicetree/bindings/serial/8250.yaml
@@ -135,7 +135,11 @@ properties:
   clock-frequency: true
 
   clocks:
-    maxItems: 1
+    oneOf:
+      - maxItems: 1
+      - items:
+          - const: core
+          - const: bus
 
   resets:
     maxItems: 1
-- 
2.45.2


