Return-Path: <devicetree+bounces-218251-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 0C7EEB7EE65
	for <lists+devicetree@lfdr.de>; Wed, 17 Sep 2025 15:06:00 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id C75DA1C023B4
	for <lists+devicetree@lfdr.de>; Wed, 17 Sep 2025 08:11:49 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D75D42FFFA2;
	Wed, 17 Sep 2025 08:11:19 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=amarulasolutions.com header.i=@amarulasolutions.com header.b="lZknR9CI"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lj1-f176.google.com (mail-lj1-f176.google.com [209.85.208.176])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0022D305967
	for <devicetree@vger.kernel.org>; Wed, 17 Sep 2025 08:11:17 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.176
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758096679; cv=none; b=QcPOCh7bA6/JCcXMt9Kk+jyoha0ttBCr8ruCE7kBbqwi3ZGkzg7d6V1nRfUffBPCxu1HK9rNMBgemN4oRlVy1ekmiKeXqDr5MZpvj4Tcmdc7Wa56dYQG83LQ71VqgE7xaNipqawJVD5E/t5AvpRC40i3VmFFFtCWCfG761G5yJs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758096679; c=relaxed/simple;
	bh=osi8lZqw36mnUV7ANOU6dNqrRojLcplRBpUBXvUliAI=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=C3NJMQRK8K25cOgOTbNjjQhxVJ+L+VnR9BEq1j1lhd19aFx1QwV17pBuiKMLqdvYnv9R1ZoCmL+Y0zYErnMRP91aDlMM7cEm81JuZzv7TWwJrG/qNnHVOoJxwzaO9ilu9LEdtVV+H8XY2rbnUvK8Mc6+9J3w6cAw6aiqo9G9AsE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=amarulasolutions.com; spf=pass smtp.mailfrom=amarulasolutions.com; dkim=pass (1024-bit key) header.d=amarulasolutions.com header.i=@amarulasolutions.com header.b=lZknR9CI; arc=none smtp.client-ip=209.85.208.176
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=amarulasolutions.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=amarulasolutions.com
Received: by mail-lj1-f176.google.com with SMTP id 38308e7fff4ca-35e81b2b2cfso7873241fa.3
        for <devicetree@vger.kernel.org>; Wed, 17 Sep 2025 01:11:17 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=amarulasolutions.com; s=google; t=1758096676; x=1758701476; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=dmFa+COnAgPwES0uM9A7F5hfXb6EgxmAXNl0CdhTVj8=;
        b=lZknR9CI8lQqfEgnmLzkeyYJq3wswDJA0LCiyUWSEjFtmr8b2qSGJXFC+ki4ura1C2
         gu8EVqcJLhIvkujnrErAEY8fGafMzrvh0cWGHHmL4FJ0sCNG88y309t1S0Jm1OOS6Wzk
         cfrOMZ3plNzScaRLdjJTjT9+v1ZY+3xYLAGLo=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1758096676; x=1758701476;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=dmFa+COnAgPwES0uM9A7F5hfXb6EgxmAXNl0CdhTVj8=;
        b=eZK003E/UuqM8a7F+sPkJ9Euqzs6Oo/CVM4ZNdGdAluzrzOFdCQ+FYp+odOkIugLr+
         bFyKRdhyNF136ryhrYF5gRbbu81zypH6famxpOlHjoQkkp395xJuBKx306bQfkcWZl11
         pN6W4mHSouHLkKvXVRlyd+Z0FxkGK158ICfdwNezTfKkw09XNQvD5uQStz6EJrzWQfVr
         3u7P6jDhHXlMfU1cTYq0ds3Uc9N4DJZHUOgjjWZ4kLMyCPOLI70klXK6u0Wah9mXoD53
         29gNFnEAD/2XYfzJ0f0u2Y25de5Qs4QwmzGV/76nH4etXhyzZPE6nHBRMLGvLUquAu1I
         i+9A==
X-Forwarded-Encrypted: i=1; AJvYcCUiLstrorhPtgXqG8vsvsXuPOK/xQE+XHSIPOAmg19PxryC5CSvHR6742pzSIiZwCFqoRqFS0eVpMFv@vger.kernel.org
X-Gm-Message-State: AOJu0Yz/+p53aV9IjW9TgadIc+y7Aqp9/IIlstiQa3gxENpAYKgdgfCI
	hVY6+VUnPjZ3hCKeWnAv0izBp7O1sPrpJouOdhCf1t3tR/ymG5Ga4mqh9zcCqlM1/RIwzZSbk6h
	/eUK+
X-Gm-Gg: ASbGnctH/Sb6R3sFmSCv2iqNxFek+124+xHJWyDoT+yqOHWABgXCvMGTg3iD61XlA7g
	lZmtlOFzk75o+Rbp7u2q59l/9wkDs7PNjHlo7RGmaYsxTUm1F2L9iWrlDjuTreXmgPnRDT+3RCG
	1Hh4l4MaTl8SfQca2t6VPB2PspC7VA/ncRGHO53cP4Iw5UU78zYSEH56q1mOE8Tzu6qw+WfzEOD
	FRbZzuoWbSB+VLe/9AfJNj4CKr9NnAo37hS8VYE9tFLrP4tf/xYrZD3PYzJ+63QeOqMl86Y/ACg
	0upekrueXqaRlR/Y18qOcjRCGhiGhHG7oVcl3LdIfQmP//48fV4BJCYwHkfYKZtKAebkOsPXx1P
	OzXyyTP+WfIaenOsDYgNbVz8JgFoPO/+V4+SAt35IFqtKoCHt3ZdgLXXn6eY=
X-Google-Smtp-Source: AGHT+IGzyypKx+M7bACgg59eJNm7wQj1XbSrIEOljpQMYh6T60VBtLYsEF9CNds7ILed2NSvvzXcHw==
X-Received: by 2002:a17:907:7ba1:b0:b04:9854:981f with SMTP id a640c23a62f3a-b1bb9268e9cmr163419366b.43.1758096341586;
        Wed, 17 Sep 2025 01:05:41 -0700 (PDT)
Received: from localhost.localdomain ([2001:b07:6474:ebbf:1215:4a13:8ee5:da2a])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-b07e1aed5ffsm924936766b.81.2025.09.17.01.05.40
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 17 Sep 2025 01:05:41 -0700 (PDT)
From: Dario Binacchi <dario.binacchi@amarulasolutions.com>
To: linux-kernel@vger.kernel.org
Cc: linux-amarula@amarulasolutions.com,
	Frank Li <Frank.Li@nxp.com>,
	Dario Binacchi <dario.binacchi@amarulasolutions.com>,
	Conor Dooley <conor+dt@kernel.org>,
	Dmitry Torokhov <dmitry.torokhov@gmail.com>,
	Javier Carrasco <javier.carrasco@wolfvision.net>,
	Jeff LaBundy <jeff@labundy.com>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Rob Herring <robh@kernel.org>,
	devicetree@vger.kernel.org,
	linux-input@vger.kernel.org
Subject: [PATCH v4 3/6] dt-bindings: touchscreen: add touchscreen-glitch-threshold-ns property
Date: Wed, 17 Sep 2025 10:05:08 +0200
Message-ID: <20250917080534.1772202-4-dario.binacchi@amarulasolutions.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20250917080534.1772202-1-dario.binacchi@amarulasolutions.com>
References: <20250917080534.1772202-1-dario.binacchi@amarulasolutions.com>
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

---

(no changes since v2)

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


