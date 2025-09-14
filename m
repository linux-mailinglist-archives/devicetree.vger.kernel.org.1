Return-Path: <devicetree+bounces-217012-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 30D2CB56ACD
	for <lists+devicetree@lfdr.de>; Sun, 14 Sep 2025 19:16:52 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 9E412171702
	for <lists+devicetree@lfdr.de>; Sun, 14 Sep 2025 17:16:51 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 605E22DECCD;
	Sun, 14 Sep 2025 17:16:24 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=amarulasolutions.com header.i=@amarulasolutions.com header.b="BR8gfHcu"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ej1-f53.google.com (mail-ej1-f53.google.com [209.85.218.53])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 92B442DEA83
	for <devicetree@vger.kernel.org>; Sun, 14 Sep 2025 17:16:21 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.218.53
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757870184; cv=none; b=XinEJ5vlQiaJghMeHup28B7gaTAAFuKo/LpIP4IAvWkpL+Q98R2midofbA1rkiebJKfKZ8FF3h3h543/Pkl6S7a2a7766bigNJaew7BX7CSOhYigJ4SgkwiLo0NCjNUtUkna5n9cn6Y4KOmbm/O6Al5uWJT+/yiwnPh4VF8S9UU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757870184; c=relaxed/simple;
	bh=Jy5vrJ90AiD6jtnSaZVQFAUaOXKIYVVwz21RLq/eHTc=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=X87G33/U3RG3TAaXDMsZMZlhCN6mQgjpekCmwxU6u7+FW4dtHcXuw6SiOgANIORM0j0r95e285QrySioOj/GoDHMf0gaMnxEeuhu6QDe60yC4KfpR/JPrtpNlVry43yE40sUaaO/RjlRFVY6fpL2Op16fIpEM0Mnd8bbhPwwwKw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=amarulasolutions.com; spf=pass smtp.mailfrom=amarulasolutions.com; dkim=pass (1024-bit key) header.d=amarulasolutions.com header.i=@amarulasolutions.com header.b=BR8gfHcu; arc=none smtp.client-ip=209.85.218.53
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=amarulasolutions.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=amarulasolutions.com
Received: by mail-ej1-f53.google.com with SMTP id a640c23a62f3a-b046f6fb230so675725666b.1
        for <devicetree@vger.kernel.org>; Sun, 14 Sep 2025 10:16:21 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=amarulasolutions.com; s=google; t=1757870180; x=1758474980; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=Sx0EwU0te/usZ13a8MurPgLe0A2g8omNenFnNxHAiqE=;
        b=BR8gfHcuRC32Q6eRp8toJOZf+lv58YU2GNNYSv6Oi+nbSLkourz+U0JSAXNA2kMsgH
         4BWqzb9rrtCEHGr3d4dTLqfeBXhbZGW5dJ98jT/NTlu1B2eZn76YsWzWwtef+FbIHFOT
         MUzRx/Xc0PpGvjlowZMLLXrUPq82+h5cRmAJU=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1757870180; x=1758474980;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=Sx0EwU0te/usZ13a8MurPgLe0A2g8omNenFnNxHAiqE=;
        b=q4ah7VxqljE6D6h3e8rOEcVl8dnZ5bxX71+pDzO3vQPljzGBKrr++y6W3T2t/vwR3t
         NRhCYy5W7bC4Ck3ANOtqo3Hmuy4q5WZv7LMkfF/E8TxU9k92ZpQr5hwARXNV1+lPlFsh
         8kARhzXeSj26J97FnDi2TaMWRjpF0n+PYnlEky55ww8MYMzt/RTnIccps5RtBckjXEac
         V8/Mm4b95O/9wITp3duUT1MUds3OuNk5NgdHwWVp+8/pD1zadis887/P3qfybLyqj/Kq
         IirfuKvSBHg00NniTQlbh7XnWwwkytGSWBXTBchvGlc7s7cVL+xM+GOXp5J3VUsbxGAN
         B1gw==
X-Forwarded-Encrypted: i=1; AJvYcCXbJ85urQBDul57N4olEIx/SrGMqANkgCyJG8lNDG56PQlCHhwse10xr7Y89F/5ii952/8Qsq3j/j5Z@vger.kernel.org
X-Gm-Message-State: AOJu0YylBDVlJSKE4ZNsl8TwLPIbKzDqQ7HRa1NXZSRqtQ9evmhlWOs+
	yfYI7z+Nybq1HnyaG2hBwacGp0DLwhG8vX/xkaI6m+Zj+wQPOfc6FLpdqKCaGuhytmY=
X-Gm-Gg: ASbGnct0raGtIavZd6PtyyM1YOUoaSolySpSv8bYCoDg9x5cWgaVtEI/fEsAudsacUb
	0rJVNd/m0aPEmiXaQtil/pEDInx1Q6zyNtUU/urxNUnDtBlS3rs5ZvuW1cpUB5guURn2m7QdfK6
	EsqOKmIOSUC70n/gksWAI6ctnyppAwC1wAdnilEXxWq5nXfFQ5Da/1C9o2qC+xXY3TAEyh/knbh
	ypaB1FA/1h0hKoxwQREebr/hxJ/rX4g05GeV2gmDGmEnAHIzCwwdt9yg85hgpnecLOEh3dTCTeP
	JakHuslKMouRHZykmqO3YFN0Awzht40ixYVkAHi9ZL6cWV3ZBE75C0IAOMYsgwou5AcCkiCIP+E
	P8idjdtvACmK6QpWmliw0wEKiMAvXa4CbVtiOpzs4UC8VVoY0/aS/xnxhaYZ5GJp6j4qfwlqBm3
	6i/wAFvGtgBF4XcuemYfQn+uxnew79bX7P5cd+ZFgjkgiy4iMQqd/ZkNZ08ISpyiVpzCKk4oUQ5
	Pw=
X-Google-Smtp-Source: AGHT+IGg07tGI6gHsEGbzuf3VDSE6YFsTBt5Lon/+TCDORrB5jYkJHCYrktC1RHIPug9flWo1dwbuA==
X-Received: by 2002:a17:907:d8b:b0:afe:8de8:290d with SMTP id a640c23a62f3a-b07a629945emr1504682966b.6.1757870179840;
        Sun, 14 Sep 2025 10:16:19 -0700 (PDT)
Received: from dario-ThinkPad-T14s-Gen-2i.homenet.telecomitalia.it (host-82-56-38-125.retail.telecomitalia.it. [82.56.38.125])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-b07b334e76dsm776980466b.102.2025.09.14.10.16.18
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 14 Sep 2025 10:16:19 -0700 (PDT)
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
Subject: [PATCH v2 3/6] dt-bindings: touchscreen: add touchscreen-glitch-threshold-ns property
Date: Sun, 14 Sep 2025 19:16:00 +0200
Message-ID: <20250914171608.1050401-4-dario.binacchi@amarulasolutions.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20250914171608.1050401-1-dario.binacchi@amarulasolutions.com>
References: <20250914171608.1050401-1-dario.binacchi@amarulasolutions.com>
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


