Return-Path: <devicetree+bounces-135810-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id A3D60A02570
	for <lists+devicetree@lfdr.de>; Mon,  6 Jan 2025 13:28:43 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 346503A1C59
	for <lists+devicetree@lfdr.de>; Mon,  6 Jan 2025 12:28:38 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 27F2B1DDC34;
	Mon,  6 Jan 2025 12:28:29 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="aWnStyuH"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pl1-f170.google.com (mail-pl1-f170.google.com [209.85.214.170])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8095B1DDC1F;
	Mon,  6 Jan 2025 12:28:26 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.214.170
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736166509; cv=none; b=QCpsus/gnf6L9BIQRavbqnfqyVPvHgaSd5t6Yumg6DTLJ4XXrgHOKvADefHVRcWLO/7qBkV/y/50+3YZVdjlOR/JVnJ2Ulm1g0lPlbJ+LTNd0r6xIbbhozqvdTMdJb6G1eEsGLx78mqnuCkaL5SCT6aOZH3hI9ZY66fATyrIFRg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736166509; c=relaxed/simple;
	bh=99+pLF1VvDcoovFOPcNeSVJ7IG/4gdQK3UKOnT6V4Zc=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=jH42AT8ieqU6QzA20pBKtogBEzgB/TihisufiZegQXCXwWW6b6gLv2IeGp82yPcREdLTHZGRUS8oJ8WeN3nUIjZixfM1c3iq1DZg7EnPq9IQ+EDLTl983v3zHuPR615d0YjtpzLr3qOknU9wCm92fnf20IdDJxvC/Gg1qHr1d9s=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=aWnStyuH; arc=none smtp.client-ip=209.85.214.170
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-pl1-f170.google.com with SMTP id d9443c01a7336-21675fd60feso4294845ad.2;
        Mon, 06 Jan 2025 04:28:26 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1736166506; x=1736771306; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=eyr6yNUD2cI7FDLN2P5orlGmGipVdT5OT8foTnjmml8=;
        b=aWnStyuHFH25n6qmVYzuowFZHmcMC9APis3BOCewkD++xtPkZT9Qa25oKJpE6JzAGN
         n95SuScA480HxXPfd8HchbOajBznWD5mYeGUhJ7d+8L8mWOFKe2maS4JBzVZYBCBblIy
         uvSUbmMwJks5pId1KjekAy8AyJKdtqLNj8HlFjrUTCrhBMWNhPLJPABkNIFgcdrAMzNP
         VNz3p928hjTD59d7e3WYOkbr8eiLi3OhXFuCJ826iiyKBaSKIq71Z2Dp3l0BjtcYtV2Z
         +fwMmDaVE0y8FvBV+6+YSAmr3obBof2BJiApWzrZuftPmXb2SSxwDsuBNPToKVl+wUgv
         50Sw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1736166506; x=1736771306;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=eyr6yNUD2cI7FDLN2P5orlGmGipVdT5OT8foTnjmml8=;
        b=moaCj5INP4WnfVnHMYz0N7PY5/pDg8+ZgGhvV4/ypr1lw28oq3rVGlhjW+qEJnBgj7
         BXi2FnMZDkuZ90Y1v57N5K5Zt9VtSzxbyPy4+LI5XH8GGHZhWpqK6lWAIy8mQEqORVez
         hbjhF7e64C6GayfwN3fXdBrk8cYX8bwRa8kn+/h1/0CSxqVVVor1y4pov4FJlWzt8CVP
         fLGTxlpVbE2GdE3S0GNHWjH1CzodyvaVDLzQprzjCgVdwA7RsEAnxnzXCW7VFXheLn9v
         uvRyn+kXfk7gDMQGdiLWRw6+A8NvxpwsBoc1B7e+ZEHmzXIeM1M21Ml8M8/zYHh6xJy/
         +lnw==
X-Forwarded-Encrypted: i=1; AJvYcCUjRMpzR7pZIz5J/VxcQr0ejZRsuXton//gGca+l1heJpOiz4YVoPuH94FFBnUVJARExaGN5t9+XZIf@vger.kernel.org, AJvYcCWln8EVVn8vHikaLBLi0hTQ3MRHxmN8GOdELbZslyIsxP8czwlFucW9O28ZHW3bGtbXIizelGMN1bOGalKg@vger.kernel.org
X-Gm-Message-State: AOJu0YwwDQ8Jc21DkyBBX5bibVj9cA/Q2xgdXEDUOY8ibMwWXRtoWGbw
	oVTYl9tWxw+TJ3g3KKE+KX8cYI5B2QkZCPoalQkCawK0RPkIBJb9
X-Gm-Gg: ASbGnct/WPpcg78qoNZqjwST3++t9TOuwDcK8w9l2OypfML11v4BYRqyDP6THMMMNk6
	uhdxWIaeA7fAv5TihIPY9n3Na7lQmjwRPzglL0mIx0VnWbGLU7ykZNET+omAcRnT21VR01xaDso
	TyjKtb8by0ptrX1qwmCqpfkDYKUVzc0Wp0V4OAtCH5rLh/hDQFa7Zc013OBQ4wtg4KWQVRn/1/T
	Vi6SvwuNDA+MKBoxWQiJYl6pYOuol8z3ebw7qwlFUp+nWDaQGseO8Xu6g==
X-Google-Smtp-Source: AGHT+IFf+AEJ7fqHxRfEDQ5692eQG5nVRbgR+HyTlqQ9ay8KL4zXj99jnd9/Z0cp+LSzenKZljEDLQ==
X-Received: by 2002:a17:902:da81:b0:216:61d2:46b8 with SMTP id d9443c01a7336-219e6ea1c0cmr855329215ad.23.1736166505667;
        Mon, 06 Jan 2025 04:28:25 -0800 (PST)
Received: from nick-mbp.. ([59.188.211.160])
        by smtp.googlemail.com with ESMTPSA id d9443c01a7336-219dc9650bcsm292678655ad.39.2025.01.06.04.28.22
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 06 Jan 2025 04:28:25 -0800 (PST)
From: Nick Chan <towinchenmi@gmail.com>
To: Hector Martin <marcan@marcan.st>,
	Sven Peter <sven@svenpeter.dev>,
	Alyssa Rosenzweig <alyssa@rosenzweig.io>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	asahi@lists.linux.dev,
	linux-arm-kernel@lists.infradead.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org
Cc: Nick Chan <towinchenmi@gmail.com>,
	Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>,
	Neal Gompa <neal@gompa.dev>
Subject: [PATCH v7 01/11] dt-bindings: arm: apple: apple,pmgr: Add A7-A11, T2 compatibles
Date: Mon,  6 Jan 2025 20:26:18 +0800
Message-ID: <20250106122805.31688-2-towinchenmi@gmail.com>
X-Mailer: git-send-email 2.47.1
In-Reply-To: <20250106122805.31688-1-towinchenmi@gmail.com>
References: <20250106122805.31688-1-towinchenmi@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

The blocks found on Apple A7-A11 SoCs are compatible with the existing
driver so add their per-SoC compatibles.

Acked-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Acked-by: Hector Martin <marcan@marcan.st>
Acked-by: Neal Gompa <neal@gompa.dev>
Signed-off-by: Nick Chan <towinchenmi@gmail.com>
---
 Documentation/devicetree/bindings/arm/apple/apple,pmgr.yaml | 5 +++++
 1 file changed, 5 insertions(+)

diff --git a/Documentation/devicetree/bindings/arm/apple/apple,pmgr.yaml b/Documentation/devicetree/bindings/arm/apple/apple,pmgr.yaml
index 673277a7a224..5001f4d5a0dc 100644
--- a/Documentation/devicetree/bindings/arm/apple/apple,pmgr.yaml
+++ b/Documentation/devicetree/bindings/arm/apple/apple,pmgr.yaml
@@ -22,6 +22,11 @@ properties:
   compatible:
     items:
       - enum:
+          - apple,s5l8960x-pmgr
+          - apple,t7000-pmgr
+          - apple,s8000-pmgr
+          - apple,t8010-pmgr
+          - apple,t8015-pmgr
           - apple,t8103-pmgr
           - apple,t8112-pmgr
           - apple,t6000-pmgr
-- 
2.47.1


