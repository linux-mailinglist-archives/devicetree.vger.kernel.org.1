Return-Path: <devicetree+bounces-220450-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 70265B96585
	for <lists+devicetree@lfdr.de>; Tue, 23 Sep 2025 16:42:49 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 0BD06160F34
	for <lists+devicetree@lfdr.de>; Tue, 23 Sep 2025 14:38:50 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 28F272652B2;
	Tue, 23 Sep 2025 14:37:59 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=amarulasolutions.com header.i=@amarulasolutions.com header.b="oFt13FFE"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ej1-f43.google.com (mail-ej1-f43.google.com [209.85.218.43])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 99D9925E47D
	for <devicetree@vger.kernel.org>; Tue, 23 Sep 2025 14:37:56 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.218.43
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758638279; cv=none; b=Rq9Ky/nGrD8SKCF8yt8glcREHz3mC1NRQcptcd9cDchAMBn5VyHHphgLA6AR0RdW7n6Me4otGyTvF3Y63Dmc9lUATCzfiqkBHoI6S7tm1bSr3oSSFmkG4gx8grpw7HRoVqUwzPbbRFHm1soyPrNuXa6MeeGirIbD4y2/xGgxYdA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758638279; c=relaxed/simple;
	bh=3buR37RHWH5jCD3qcphvLVRnK0S9wHhdzCbVgwoftyA=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version:Content-Type; b=IeZWPDduZUHxarm2PXpiWzvbef4wjzXdSPZyDr/lr3AEhkU+lKz5qmOnn3qqVahC4CaNHLmflnM/evtqQ2iDBRNuxoYZ2wWY8V/5KCnDSkPSuwvUInRX+6cloJZTg9W/d4e7jXgBt9D8czzRuDCHE5ILJn2sDmz18EEWFUcYJ0o=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=amarulasolutions.com; spf=pass smtp.mailfrom=amarulasolutions.com; dkim=pass (1024-bit key) header.d=amarulasolutions.com header.i=@amarulasolutions.com header.b=oFt13FFE; arc=none smtp.client-ip=209.85.218.43
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=amarulasolutions.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=amarulasolutions.com
Received: by mail-ej1-f43.google.com with SMTP id a640c23a62f3a-b30ead58e0cso106484266b.0
        for <devicetree@vger.kernel.org>; Tue, 23 Sep 2025 07:37:56 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=amarulasolutions.com; s=google; t=1758638275; x=1759243075; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=LqtR7I2mLZ8IDYwsm1m36JqptxBkiaofBPM08P2A3KM=;
        b=oFt13FFE1fsBTlrk5eYc+OLbjuMAv2hA2V17cnjDaYyXJStgffQDjdky9l4syquuIn
         MneABdcOFIurqJXg1vm7M73SAu5PSIsXHRYdTpWwZlbIh4BXsW4Z29K214KJgyDYhRsx
         Jz85UU4qIIkqClFUTOz2AAk3AXG854vKL+6Bc=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1758638275; x=1759243075;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=LqtR7I2mLZ8IDYwsm1m36JqptxBkiaofBPM08P2A3KM=;
        b=HxAM3UeC/+DwrkbG8tBrt+SGT7d8myWveHAMyjx6YMO1Go7X+Rc44rQ/wNY9fB1gMk
         KWUxRCEo4pmMOE5UiJnKl9fc0IOslin7NeGU1VNrKZ+w+LqRVAkSHN4G/nauvBucCv4i
         8i082bjLZm7OyIteauBqfA2hPY9g5xoIvwz4t7ipnySqv9dgvEya91M0ZoFx0OEmZ6ia
         bm5GLv1/KlscGFbUeQslOFoI825btuFhTWCkU5srWDpK4oIIVvNEQGR5Zfwo3yIk00fO
         K97i5Yzy9gLkQxsRILvnex/RdsIkzVQORWFCkd85mpuqbuTBYxsllMrytoZCw8SaNgg5
         ri0w==
X-Forwarded-Encrypted: i=1; AJvYcCV8ioIueSmmUAH/sIbXEljHyYqnLa8qfMDgi/G6yiQHlIvjAhWTiimHR4JAoixArscxnszy3ZdowMY8@vger.kernel.org
X-Gm-Message-State: AOJu0YwBxRx1NRJ72MpvFWdez9w6FNwmdWjsQhpDJU3O1NudRS3N7W7u
	aqrF2R4WNgtPsz/R5+PSsOLTYNUtZ17TqKv7lvcpWcAWTJS4GguX1idByszT7bn4/e8=
X-Gm-Gg: ASbGncsgYKmY/xrV6+A9zIcjEyOjtY4GglghBRyA5QD6DG5ICiMOukH6atgk5vgAhJE
	J/yIHuiZfBNXMrrJ7ZCHfVMg8/1ot739BG4pIg954wOgMLurZs7U3edLZx8tlqZl/iG1gv8hr6b
	8jUAd2kbOwRPRJRAxtbcI+BBmp3h7beraZkpj37FeFt17piNoWgsEqjb/u9D4wJuCsXryB1A0Ev
	aV85I90nIrwYhXbRHJvn5zyeVejhuHucWtifZh5SeZWWJoWiETIEQGBXO09LxI5dJYf7WAnlq5B
	8pzjwfYrVpalZeXpyoaaUTnJ4xhL1dhUQhPQBBbx7QDYJNJ7ej0ao72USKcQJ6+39cea+9k+QM+
	haSxG5YbXU62k/QP0HP9fGtObQRjTTrV/OQ2O1bgXx1yDh1NwByO2BkHB/IZrgrciSIsabY3h87
	lVp4/QMRws18g48Po1MTNmsZQxJE8oC574oHEHf2cc1nVF0q2etIEYBGSe7k0RpJl6
X-Google-Smtp-Source: AGHT+IE9RNVNWhfVu5pqINRm6zp/ZDRtUIbE5h4ZceOxySmsxSTDc7+ivdeXCI0Sc/ctW+qK1d4qXA==
X-Received: by 2002:a17:907:980c:b0:b04:760d:1162 with SMTP id a640c23a62f3a-b302ac40ba3mr251539866b.47.1758638274273;
        Tue, 23 Sep 2025 07:37:54 -0700 (PDT)
Received: from dario-ThinkPad-T14s-Gen-2i.homenet.telecomitalia.it (host-82-56-38-125.retail.telecomitalia.it. [82.56.38.125])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-b2a2a5f6c7asm665204666b.28.2025.09.23.07.37.52
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 23 Sep 2025 07:37:53 -0700 (PDT)
From: Dario Binacchi <dario.binacchi@amarulasolutions.com>
To: linux-kernel@vger.kernel.org
Cc: linux-amarula@amarulasolutions.com,
	Frank Li <Frank.Li@nxp.com>,
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
Subject: [PATCH v6 3/6] dt-bindings: touchscreen: add debounce-delay-us property
Date: Tue, 23 Sep 2025 16:37:34 +0200
Message-ID: <20250923143746.2857292-4-dario.binacchi@amarulasolutions.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20250923143746.2857292-1-dario.binacchi@amarulasolutions.com>
References: <20250923143746.2857292-1-dario.binacchi@amarulasolutions.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit

Add support for glitch delay configuration. A detected signal is valid
only if it remains stable longer than the configured delay; otherwise,
it is considered a glitch.

This property was introduced for the i.MX6UL touchscreen controller (TSC),
which provides a hardware deglitch filter with four thresholds depending
on the IPG clock frequency. In this use case, the IPG clock rate is 66 MHz,
resulting in thresholds of 124 µs, 62 µs, 31 µs, and 15 µs, which requires
a property with microsecond-level resolution.

Signed-off-by: Dario Binacchi <dario.binacchi@amarulasolutions.com>
Acked-by: Conor Dooley <conor.dooley@microchip.com>

---

Changes in v6:
- Rename touchscreen-glitch-threshold-ns to debounce-delay-us.
- Update and improve the commit message

Changes in v5:
- Add Acked-by tag of Conor Dooley

Changes in v2:
- Added in v2.

 .../devicetree/bindings/input/touchscreen/touchscreen.yaml    | 4 ++++
 1 file changed, 4 insertions(+)

diff --git a/Documentation/devicetree/bindings/input/touchscreen/touchscreen.yaml b/Documentation/devicetree/bindings/input/touchscreen/touchscreen.yaml
index 3e3572aa483a..7023e8c73a7b 100644
--- a/Documentation/devicetree/bindings/input/touchscreen/touchscreen.yaml
+++ b/Documentation/devicetree/bindings/input/touchscreen/touchscreen.yaml
@@ -206,6 +206,10 @@ properties:
 
         unevaluatedProperties: false
 
+  debounce-delay-us:
+    description: Minimum duration in microseconds a signal must remain stable
+      to be considered valid.
+
 dependencies:
   touchscreen-size-x: [ touchscreen-size-y ]
   touchscreen-size-y: [ touchscreen-size-x ]
-- 
2.43.0


