Return-Path: <devicetree+bounces-218963-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from dfw.mirrors.kernel.org (dfw.mirrors.kernel.org [IPv6:2605:f480:58:1:0:1994:3:14])
	by mail.lfdr.de (Postfix) with ESMTPS id A760BB85CC0
	for <lists+devicetree@lfdr.de>; Thu, 18 Sep 2025 17:54:46 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.mirrors.kernel.org (Postfix) with ESMTPS id 5C75F4E21DF
	for <lists+devicetree@lfdr.de>; Thu, 18 Sep 2025 15:54:45 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 95AEF3176ED;
	Thu, 18 Sep 2025 15:52:51 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=amarulasolutions.com header.i=@amarulasolutions.com header.b="O2fP5ZOV"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ej1-f51.google.com (mail-ej1-f51.google.com [209.85.218.51])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2BC6531578F
	for <devicetree@vger.kernel.org>; Thu, 18 Sep 2025 15:52:48 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.218.51
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758210771; cv=none; b=hOPKF8w54X2WB4L2Fmb9u7FVZpmgBDGAetQgiKuwFW+eAivtuPWdADstIdXbn8OpHz66ahEnCoeRKnmmqJk0+HlMg+pBf8ryNayr6EGluZmbkaOm1Jq+kXs6Y7dgQ5tzNztWHZzY3C1/CbANjPalBvRCGpWJwXR01EUsfF+dbcA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758210771; c=relaxed/simple;
	bh=8mMtSR0zIoDa6Wg3t6T/sqjlCahjaYeUdlrfsHSDYXE=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=gDJYKYGZqG3mJpbGzUEtSYp1GUCDS5Sg7u3DPi5mWVfByErf4dvaoCGnaT3PyWhIFUPtt9glhzfeZfd+jz4lY/M2lbwfDwyFOlCThvJHf9UdQMeyNkQpiWPBMp3w9DafiYF1iwjW/LMsL2CzxccM3AOq4R+2CQcbNJXOXfZalRI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=amarulasolutions.com; spf=pass smtp.mailfrom=amarulasolutions.com; dkim=pass (1024-bit key) header.d=amarulasolutions.com header.i=@amarulasolutions.com header.b=O2fP5ZOV; arc=none smtp.client-ip=209.85.218.51
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=amarulasolutions.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=amarulasolutions.com
Received: by mail-ej1-f51.google.com with SMTP id a640c23a62f3a-b246eee7153so14908566b.0
        for <devicetree@vger.kernel.org>; Thu, 18 Sep 2025 08:52:48 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=amarulasolutions.com; s=google; t=1758210767; x=1758815567; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=b+LIVzIwJpub6PF+1VXdSXGpljd8+6HMYi55fOiXUgs=;
        b=O2fP5ZOVvraMWDob0IyqegXKkV0ZhEJ1OspLVmq+Gf30ys1M0M7g+LaSivVlNNAaAy
         3eMrSzzRXYVWeSBmNMrWeLXDslGtrmWhzoLE2wWlEAsmBaxBTAjM72lXnoYgj7Zzc+jW
         x4WZN6CUFKWe5MJU8S62ehiNMV/qZH68ETUNU=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1758210767; x=1758815567;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=b+LIVzIwJpub6PF+1VXdSXGpljd8+6HMYi55fOiXUgs=;
        b=LI3i50OHgPstHBzIebV6FzLB42oO+oqqXG7Pazvgcigjq7etcukRKmvf3KjSUO3fLk
         qp1A5eATE6VdUzvNz8NTlbYXoGgKRBwQA4Kl6EbcpZCqVu+y/I8WBYytst3u6DM31+Xr
         k4fe4+/BBV9iLevbMy5Kdsj/3/ipNwFGsKZQICQELjaLuUMzTn0LYeSKjYbPEJYl4TAn
         pjNEX++IW5Quo5n89XsQoDxUn8ASgE3eUAdbXZ5aCcBKnXEfcuTlMKsLcc7brS4EvEMh
         fIL8jn31znNwqfQasvMLAjJYPm0uEqCMVDA7i9c5JLl/7sJzC2TnlWQi5fiB3YUi4CJs
         5vBQ==
X-Forwarded-Encrypted: i=1; AJvYcCVJspFG0VDjpcAErOnkya4+L1D9aB4VFHFricvjfjXXFKLAVcdeOdhbXKEZ1FEFoWyGWYIQo68IkJCS@vger.kernel.org
X-Gm-Message-State: AOJu0Yw3ZgTYBK/qEkXHHADWkCC8pF5x5+me9a8fKpTZAvkSez0YX3rR
	LDtEoi2VNEL6N6zTWJ7glhmQtl0PTbEBVcGu2/K7qyLtgjmkKGkHd+aXT7IkgK6etAA=
X-Gm-Gg: ASbGncuxFi//frKMSxx1G83zTpkdhbAZsWixpY+yiUUCNTV19wvx7MaYeUCu35hE9w5
	2WwiUYYLNW5V8jnihFj9/rmOlagNG1kZqSSNO1Ek8P3CXlWJCP5qNL8sy5oLDBEQmeMLtpj4Pog
	FeFPhFLISw1k2unoyFqMB+2sTxlNEOf5x6zi54TXCDEh0iJFimXAqwpCVXH6GWfrDkji4Kfzr7h
	5yMYSJJBCQjkcwE55YY1v4W38g3fv7wRksmz6koBv1nowSELgOk4ZR1IXAMrWsObOkIByCWuyRM
	vYoiz9gPp+W51TxwTd9+mjjN/uewGFuDbfhj34y0AuSmVeS16r3yXv5iVA4cIM1rp2JA7q1/zVt
	S+zm9tX8aAsLZcbsb2KYQ0Y315JuJqLSfIcgt77nZ3e/k33oO8BXQbfP/dpt5OID8XFDS1Mo2QJ
	S3+FuEVmCYWWej82IQNVn8OGMVS5mBM5jDvQcXSz/rLem0T1eCFFdbfGjv9VKkSer8cqvwVSJAn
	FgmaQavckA=
X-Google-Smtp-Source: AGHT+IExLNGGOMPxlFZBucMiTx7Li0FQ+LMi3DGtr6XS4648VroCdhrT9sO8/o8KnNnNbpm4wLXwXw==
X-Received: by 2002:a17:907:7e88:b0:b04:97a2:64f8 with SMTP id a640c23a62f3a-b1bb86d78famr689615266b.2.1758210767474;
        Thu, 18 Sep 2025 08:52:47 -0700 (PDT)
Received: from dario-ThinkPad-T14s-Gen-2i.homenet.telecomitalia.it (host-82-56-38-125.retail.telecomitalia.it. [82.56.38.125])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-b23a1227bacsm60449766b.41.2025.09.18.08.52.46
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 18 Sep 2025 08:52:47 -0700 (PDT)
From: Dario Binacchi <dario.binacchi@amarulasolutions.com>
To: linux-kernel@vger.kernel.org
Cc: Frank Li <Frank.Li@nxp.com>,
	linux-amarula@amarulasolutions.com,
	Dario Binacchi <dario.binacchi@amarulasolutions.com>,
	Conor Dooley <conor.dooley@microchip.com>,
	Conor Dooley <conor+dt@kernel.org>,
	Dmitry Torokhov <dmitry.torokhov@gmail.com>,
	Javier Carrasco <javier.carrasco@wolfvision.net>,
	Jeff LaBundy <jeff@labundy.com>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Rob Herring <robh@kernel.org>,
	devicetree@vger.kernel.org,
	linux-input@vger.kernel.org
Subject: [PATCH v5 3/6] dt-bindings: touchscreen: add touchscreen-glitch-threshold-ns property
Date: Thu, 18 Sep 2025 17:52:31 +0200
Message-ID: <20250918155240.2536852-4-dario.binacchi@amarulasolutions.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20250918155240.2536852-1-dario.binacchi@amarulasolutions.com>
References: <20250918155240.2536852-1-dario.binacchi@amarulasolutions.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Add support for glitch threshold configuration. A detected signal is valid
only if it lasts longer than the set threshold; otherwise, it is regarded
as a glitch.

Signed-off-by: Dario Binacchi <dario.binacchi@amarulasolutions.com>
Acked-by: Conor Dooley <conor.dooley@microchip.com>

---

Changes in v5:
- Add Acked-by tag of Conor Dooley

Changes in v2:
- Added in v2.

 .../devicetree/bindings/input/touchscreen/touchscreen.yaml    | 4 ++++
 1 file changed, 4 insertions(+)

diff --git a/Documentation/devicetree/bindings/input/touchscreen/touchscreen.yaml b/Documentation/devicetree/bindings/input/touchscreen/touchscreen.yaml
index 3e3572aa483a..a60b4d08620d 100644
--- a/Documentation/devicetree/bindings/input/touchscreen/touchscreen.yaml
+++ b/Documentation/devicetree/bindings/input/touchscreen/touchscreen.yaml
@@ -206,6 +206,10 @@ properties:
 
         unevaluatedProperties: false
 
+  touchscreen-glitch-threshold-ns:
+    description: Minimum duration in nanoseconds a signal must remain stable
+      to be considered valid.
+
 dependencies:
   touchscreen-size-x: [ touchscreen-size-y ]
   touchscreen-size-y: [ touchscreen-size-x ]
-- 
2.43.0


