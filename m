Return-Path: <devicetree+bounces-190285-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id B3876AEB477
	for <lists+devicetree@lfdr.de>; Fri, 27 Jun 2025 12:25:25 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 4E15656351A
	for <lists+devicetree@lfdr.de>; Fri, 27 Jun 2025 10:24:42 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id BE5622D979B;
	Fri, 27 Jun 2025 10:20:48 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=thegoodpenguin-co-uk.20230601.gappssmtp.com header.i=@thegoodpenguin-co-uk.20230601.gappssmtp.com header.b="VQNmMWZH"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f49.google.com (mail-wr1-f49.google.com [209.85.221.49])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6BCAD2BF015
	for <devicetree@vger.kernel.org>; Fri, 27 Jun 2025 10:20:46 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.49
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1751019648; cv=none; b=DSdJPZdO/p+Omgj5v5g+SYfhgzAebCQt9RjhN0VQCj8qG/KKPoFk7KHXiX/hEOPrXn163X4HjzpiQDuJi0kwZtiXfjlErTrCds0CN3NzQdBKwXzGAVdb1ky3uyQef4lSiEaItvxZcDHmY0x8Aty6c2dWEEwzZIEYItCsSpFXI5U=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1751019648; c=relaxed/simple;
	bh=pC0l6WHANk7+BDn4DSC1TDZ/W9QIUe5+pxJCXm1fLz0=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=Q91pyyYmX9pliNFRClO4xIbYCN8tiHh/nZMyWfKtuxHe5nmQUOSGHwYk8lXNlT8P/b9WBK2k5l7ElWejY+dmcl01FbYlKFsHn/gHHCfybncnSGGyCKZhLdLwqhdn2sxWvFG7I0KMdYdif0lQU6exvndWIjYyDrHqSq7wzE4+/A0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=thegoodpenguin.co.uk; spf=pass smtp.mailfrom=thegoodpenguin.co.uk; dkim=pass (2048-bit key) header.d=thegoodpenguin-co-uk.20230601.gappssmtp.com header.i=@thegoodpenguin-co-uk.20230601.gappssmtp.com header.b=VQNmMWZH; arc=none smtp.client-ip=209.85.221.49
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=thegoodpenguin.co.uk
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=thegoodpenguin.co.uk
Received: by mail-wr1-f49.google.com with SMTP id ffacd0b85a97d-3a4f72cba73so1946658f8f.1
        for <devicetree@vger.kernel.org>; Fri, 27 Jun 2025 03:20:46 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=thegoodpenguin-co-uk.20230601.gappssmtp.com; s=20230601; t=1751019645; x=1751624445; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=aq559hpnsPALC3Gw2Iq/fQPfs7dODjMgP+m9Jus9x+s=;
        b=VQNmMWZHVzeL0mVBpx7BRB9YshokMKuy5XmYkd55pfjczrubIUPxxnHeuKFXl79lSK
         lu8jflTmGa6NQ8lVbGsXmQ+PDwQ2wLrVBvzF/6SxfoOC83hODDMetVCFpW96VPAFMQ0b
         0xE1RSRwVmmuTLrWYLXTuw+5aSLbeOYfDe8SSGGdJpj53QvRyVFyrzP6NGfXH2xwckUC
         0l0to+teDyDtcvueK3WkukSoM/Mmc04amEZRkWrbdWIDKU+zlMFYQF9QEfzummMDItNU
         Xpr79f4H9Q/6sa7EbJ9tvNPDxPzKifNmlM5ceVJ8DAc6NSSVKUPElpP0G/PXjpq6nbRf
         VImg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1751019645; x=1751624445;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=aq559hpnsPALC3Gw2Iq/fQPfs7dODjMgP+m9Jus9x+s=;
        b=Z8YnHO/aLrd6ghl4En6dS+UumwM2hpgs2eNq1k9YgEjeiKfdZNzY/2//9eLPrWl/ez
         bOopvEyc7VsVu2YFmo3Thnjql+jpMhH7JMIQHsAl3xUuWvBoqKHQV5utxyjYLPpgZNha
         mlpREXuaf4xc51TjjC/+pJ+TNdLLp8fufl2cXHifMeJRmXtnVC1gNR5i/VNjdC1Fvuyx
         HrbfInyUVBuH2jMx9Wy2Lbc5AZsgO/kIl8AoU7rwqGyyjg19baaylMufKGmM8Oru7LGL
         Cxx9fvtuXjPXxdxbYZi4yz4AOT9/4HQsnBAHjUjmUjBhqik3qwEjfYd7AO5MGNWdhKdt
         vxjw==
X-Forwarded-Encrypted: i=1; AJvYcCXBYZMDuvhfe3T5JGlgYHmt+DyxxZPXT3s81K72ZyhbwWXNfYCOyzGG+wO26EjjaSJFAJvynos1Nm+/@vger.kernel.org
X-Gm-Message-State: AOJu0YymeTBAKcMVacmKT+kAVwhdcm635afrbTkM6+MB27rBqhiktCTP
	H8GKoXc+ynwUwNabeQ0BWq5HTQJMKAkfa/dxvnCkGmRquAhCclbyENBp9x8RPMvA8KI=
X-Gm-Gg: ASbGncvIbJmpVA6uXw2kcZhXwd3GmbB1kapTChh9ePPuFbLBAb5yaXUP+ZXWixjbEsU
	dj/ez/fH7syxUY09FuX4uWN8BPkcq9mREBkl8u6DvTaUSPJJhcuY1nB+hscj4SJ/IckibCkS7T9
	XIdOc2tVMpqYzxXpqF3uiWBKsbFYshPaBTFfl7CpFlDcNZhZwglO/K/98REwklUG51IUIern5qy
	aVtr4KShIPqvT5VD2OWRm1392ue7JFnTEbVOivgMp5mRm6qhgViYjkev3U9qXHm4UXo8mF0T+nI
	5dr0c54do1HUWv37rH6JZYmGQga6AdG+Q7mWVhEgvid/2rPh6xrYPEVKQZ3CertYGBkuszh5MO+
	y1xCC4cd0T53dKA==
X-Google-Smtp-Source: AGHT+IF6vUJQw7zfzcWiAUbOQNcZ/wL7goXlO+7umDbwfPrBooPMhK6yAVqjRPepYyvldjekGiZ3iQ==
X-Received: by 2002:a05:6000:430e:b0:3a5:7895:7f6b with SMTP id ffacd0b85a97d-3a980296d2amr2004224f8f.7.1751019644761;
        Fri, 27 Jun 2025 03:20:44 -0700 (PDT)
Received: from [127.0.1.1] ([2a00:23c7:1d1a:9c01:1a4a:198c:c191:f3d7])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-3a88c7e7524sm2331700f8f.12.2025.06.27.03.20.43
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 27 Jun 2025 03:20:44 -0700 (PDT)
From: Pawel Zalewski <pzalewski@thegoodpenguin.co.uk>
Date: Fri, 27 Jun 2025 11:20:37 +0100
Subject: [PATCH v2 3/3] dt-bindings: leds: is31fl3236: add issi,22kHz-pwm
 property
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20250627-leds-is31fl3236a-v2-3-f6ef7495ce65@thegoodpenguin.co.uk>
References: <20250627-leds-is31fl3236a-v2-0-f6ef7495ce65@thegoodpenguin.co.uk>
In-Reply-To: <20250627-leds-is31fl3236a-v2-0-f6ef7495ce65@thegoodpenguin.co.uk>
To: Lee Jones <lee@kernel.org>, Pavel Machek <pavel@kernel.org>, 
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>
Cc: linux-leds@vger.kernel.org, linux-kernel@vger.kernel.org, 
 Pavel Machek <pavel@ucw.cz>, devicetree@vger.kernel.org, 
 Pawel Zalewski <pzalewski@thegoodpenguin.co.uk>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=ed25519-sha256; t=1751019641; l=1100;
 i=pzalewski@thegoodpenguin.co.uk; s=20250625; h=from:subject:message-id;
 bh=pC0l6WHANk7+BDn4DSC1TDZ/W9QIUe5+pxJCXm1fLz0=;
 b=37L+LM2vw4vz1KW53lZHMXE5vyMJwCaux/OoJrnYWkR7OK4MA9KkFhQrj9SsHiTziBPHg7JRi
 q2gGD9QZRBPCM5BpWv8kpMgb391bih/Sc/uIMZG4H4jlPafGui/Ckxd
X-Developer-Key: i=pzalewski@thegoodpenguin.co.uk; a=ed25519;
 pk=hHrwBom/yjrVTqpEvKpVXLYfxr6nqBNP16RkQopIRrI=

Add an additional and optional control property for setting
the output PWM frequency to 22kHz. The default is 3kHz and
this option puts the operational frequency outside of the
audible range.

Signed-off-by: Pawel Zalewski <pzalewski@thegoodpenguin.co.uk>
---
 Documentation/devicetree/bindings/leds/leds-is31fl3236.yaml | 6 ++++++
 1 file changed, 6 insertions(+)

diff --git a/Documentation/devicetree/bindings/leds/leds-is31fl3236.yaml b/Documentation/devicetree/bindings/leds/leds-is31fl3236.yaml
index f26340850647d1c642fb345b7cf90764200e13ee..cea93f4d8fe0bcc80d6932be1f346bad321bcd38 100644
--- a/Documentation/devicetree/bindings/leds/leds-is31fl3236.yaml
+++ b/Documentation/devicetree/bindings/leds/leds-is31fl3236.yaml
@@ -42,6 +42,12 @@ properties:
   "#size-cells":
     const: 0
 
+  issi,22kHz-pwm:
+    type: boolean
+    description:
+      When present, the chip's PWM will operate at ~22kHz as opposed
+      to ~3kHz to move the operating frequency out of the audible range.
+
 patternProperties:
   "^led@[1-9][0-9]*$":
     type: object

-- 
2.48.1


