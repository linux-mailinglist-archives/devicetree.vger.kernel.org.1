Return-Path: <devicetree+bounces-217583-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 7B420B58595
	for <lists+devicetree@lfdr.de>; Mon, 15 Sep 2025 21:55:51 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 237EF208726
	for <lists+devicetree@lfdr.de>; Mon, 15 Sep 2025 19:55:32 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 4896C28D83E;
	Mon, 15 Sep 2025 19:53:59 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=amarulasolutions.com header.i=@amarulasolutions.com header.b="o1sYXDm4"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f53.google.com (mail-wm1-f53.google.com [209.85.128.53])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EC84A28B4FE
	for <devicetree@vger.kernel.org>; Mon, 15 Sep 2025 19:53:56 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.53
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757966038; cv=none; b=D/2vkEhXtC4DSe1d/52GseDIP7rxDZFcyqmHUG7FhoaKup54OHnlkQYrMnx5RCf0Em72G9wGTUHcOs2UJ/mMBaoQ8DuifkGOxINXFXBaH3EqM7BK3+oLwMyxCjPiS7LOEfR4BaWKonXAN/QjCJ06L8kYGI76w/Zv4BAW2eexd8k=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757966038; c=relaxed/simple;
	bh=osi8lZqw36mnUV7ANOU6dNqrRojLcplRBpUBXvUliAI=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=fx8vzdWxMjv/eSzbBMiSjlr4nprGYrZg2FaH/iQ4cdY5KcLG4WAX8D8JcWz9ZgDdwl3MYb6jLye6jn31fVn09PjdGdVqN80ADeL+6ksb4Eiqm3oApFgDqnUn+xIRgBLemzADGsoOCdT05rrUWnoG+P3eQ9whP3T/7cEiVLsJlJU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=amarulasolutions.com; spf=pass smtp.mailfrom=amarulasolutions.com; dkim=pass (1024-bit key) header.d=amarulasolutions.com header.i=@amarulasolutions.com header.b=o1sYXDm4; arc=none smtp.client-ip=209.85.128.53
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=amarulasolutions.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=amarulasolutions.com
Received: by mail-wm1-f53.google.com with SMTP id 5b1f17b1804b1-45b9c35bc0aso41467145e9.2
        for <devicetree@vger.kernel.org>; Mon, 15 Sep 2025 12:53:56 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=amarulasolutions.com; s=google; t=1757966035; x=1758570835; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=dmFa+COnAgPwES0uM9A7F5hfXb6EgxmAXNl0CdhTVj8=;
        b=o1sYXDm4EQHgeqE+sUlroS/wcNcfY3037sJ/QaR2P1jC/BwELsjryPsBoRhFa9CwJk
         9yaFLCuL+O3OdLTp8w9oqoCSOl1heBgVFDcivlnyq28Z0+V76YESjJoEnUPjlhUrFVC7
         pIZm5H2d9dWIKWkkZRAaFdJkvku4uWST5B6p4=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1757966035; x=1758570835;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=dmFa+COnAgPwES0uM9A7F5hfXb6EgxmAXNl0CdhTVj8=;
        b=mNDtpVDUcGiuzZregicTjdzokJM6Nrauclhkmtb5JRG9PYTLu3tl36Q+PmhGK/TIP9
         g6H3uDuhHddMhHjdTrVqPVPCLKZEKyWjAhtKeANpovvZPE9rrdUObCc5v5HqhyCApuiT
         lGg56bD+iTOMiNz8OL4JEnhsDU5ty050d6rvTg6ODqNHKO+KcBg5A9Na8lM9QsjHAMxW
         ort0kXp4XakVMylq7aOJApKVeEHbdpLBDImDnigPUUsIZCrYcs8mZoczIN6xx4FA2ZUo
         pEc5o/TNorLmOxuFDZCb1B5EaIH+YzmjjKmG0n51DtnT3ylQONbR718iK2/UDnkKPMkU
         amBw==
X-Forwarded-Encrypted: i=1; AJvYcCViWhbqYxlywLUII2PpDS8czZkd2MX0bI7Bg2duWBe1u34/k4xejCmrwkwbHqUQVXvnQ8lzmrpMrgpm@vger.kernel.org
X-Gm-Message-State: AOJu0YyL7nLDV4h9mjUlfDQ8O6ZaevYYxpL1vMS8rzxh7EQ1QxNFOtUa
	g1jVZuqygq65LrVDWZXKS3rnntc2LetVFOroa/CeJibg9ytmjpHk+ITiBLdgZ/E+I4s=
X-Gm-Gg: ASbGnct00Jnu9Mk5JwTyE9ftQyy6LMDWCzbphlPoKnRc7BoErdp1kNe6H8P8M9hcXSR
	e52lDc4itB09o8KiInVPUuGN0Shh/+vN3pUDzbuP7N1axYls2jFJncMxSVWjB3M6e1O+4bU5jFo
	jWEcYoRf+UtHLv2Bx547Gm+gcm5IRqmic8fsP0uefrOeQeWoDKkCNplSlPxlVdVBTF4jFN3u0bj
	CKeERLF7I7Kx4miNDpS1NeKYl0I2gPadh27MU4QQrtk0Jf5hWs55v/ypUorykWgBYsht3HIYJLM
	9GEaDAr4q2mi4Xo8jF9irOZl8JIy57oqn3Yg6D2KdSn9tAIJEQWEt1h9M3K+FVmU4QSbIIiO3yx
	vnIumxo0l7HIDAMNom64d33KJ+54FWp872uQ1LA1VXMMRLfXxLCbfypr+nBnSNqmrqgWE5TOzUN
	+os4G4iVH2
X-Google-Smtp-Source: AGHT+IHgPVqq/VbNUTCtXpuQZBf5oSQihvNkja9owWSYGdvunXVj22DIYhh2VXxExfJ6E1JEJCRPRw==
X-Received: by 2002:a5d:64c9:0:b0:3e9:3647:baf0 with SMTP id ffacd0b85a97d-3e93647f7a5mr6656144f8f.50.1757966035186;
        Mon, 15 Sep 2025 12:53:55 -0700 (PDT)
Received: from dario-ThinkPad-T14s-Gen-2i.. ([2.196.40.230])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-45f32640f49sm530985e9.9.2025.09.15.12.53.54
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 15 Sep 2025 12:53:54 -0700 (PDT)
From: Dario Binacchi <dario.binacchi@amarulasolutions.com>
To: linux-kernel@vger.kernel.org
Cc: Frank Li <Frank.Li@nxp.com>,
	linux-amarula@amarulasolutions.com,
	Dario Binacchi <dario.binacchi@amarulasolutions.com>,
	Conor Dooley <conor+dt@kernel.org>,
	Dmitry Torokhov <dmitry.torokhov@gmail.com>,
	Javier Carrasco <javier.carrasco@wolfvision.net>,
	Jeff LaBundy <jeff@labundy.com>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Rob Herring <robh@kernel.org>,
	devicetree@vger.kernel.org,
	linux-input@vger.kernel.org
Subject: [PATCH v3 3/6] dt-bindings: touchscreen: add touchscreen-glitch-threshold-ns property
Date: Mon, 15 Sep 2025 21:53:05 +0200
Message-ID: <20250915195335.1710780-4-dario.binacchi@amarulasolutions.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20250915195335.1710780-1-dario.binacchi@amarulasolutions.com>
References: <20250915195335.1710780-1-dario.binacchi@amarulasolutions.com>
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


