Return-Path: <devicetree+bounces-139366-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 09966A15558
	for <lists+devicetree@lfdr.de>; Fri, 17 Jan 2025 18:10:11 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id F25D316740A
	for <lists+devicetree@lfdr.de>; Fri, 17 Jan 2025 17:10:08 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 061751A0BED;
	Fri, 17 Jan 2025 17:10:02 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="j3xDIggR"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ej1-f43.google.com (mail-ej1-f43.google.com [209.85.218.43])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9958F19E99C
	for <devicetree@vger.kernel.org>; Fri, 17 Jan 2025 17:09:59 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.218.43
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1737133801; cv=none; b=cZ+Xn9SE0F7qnXpMURuPbNOhGJqe6s0ZkmlAaS4pIzVM5XiXH2F3+qNZEeLIFqVb72Zu35pe809j9zx8jhECLfNY+FW0NzvwWdRSfVtYrYQWqvY29i44v8mCxKWmeM7p+t0NwjYnfi3bzL+hXBFSuHEGv35H+FlIXA9ZTrDytAA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1737133801; c=relaxed/simple;
	bh=QUweSS7Ezk07GROe4ptc2JCbOPNeoO1DPWPu/QS6yU0=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=qg+5OX2Ih/XRf7nk11YwoVgJZtU1Qe2qLUK0ckm1pd5YZKDrYCQbmFuMdZp/ADqNazEqgXakmjUwGcW0wTwk4bjFvMOzCJjIpQBPjV1AJdLZRInCwg6HEHqPrSJf1O/iITsnj9oZFOffbALQT9BcEI39RhhnKzK08d1/OHhT6eI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=j3xDIggR; arc=none smtp.client-ip=209.85.218.43
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-ej1-f43.google.com with SMTP id a640c23a62f3a-aa684b6d9c7so406174266b.2
        for <devicetree@vger.kernel.org>; Fri, 17 Jan 2025 09:09:59 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1737133798; x=1737738598; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=zWj3M8A+8QkmZTCPt7r4bM5zsk4erApcDBVhUj+B4N8=;
        b=j3xDIggRY/fySTQ3youNGWQlqFcHgy4wol/PyZq9NBv5euBr6ULML8Vqscy13+N0O5
         c3mBPPoJnRKwDVRqhux/7UskNZ/ITsIwPpxxbAHtAFUWQMrUQHM05D7KaJFKfxs7o0Mh
         fWN8Hqk2uGBOpGr0TYJrlOkHkmQW8x+3rcz5FZK49Csz/Yt9GhNo9wHKPe1HrXSI1KBj
         zHJ8WssJrvYr7ClNewg67+2NxUBH9w2VOVdWYs/Txxo5dDXn/Xr9X6O/nMCJ30ySKV2J
         BYsW61kp3IjW2lLFiixnK5OCW6gEe/baK9qBh2KDWjkidkUTAKQUB2JYxEvgDwdfAA47
         n0og==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1737133798; x=1737738598;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=zWj3M8A+8QkmZTCPt7r4bM5zsk4erApcDBVhUj+B4N8=;
        b=jiQK8EG/qJzMHSHxoIgLpsfR2FVuwIUMAEF7D9u0kt3LBibfyecZ1GXslNAIqbLoPm
         hDmD3voJs/xb42OZnzVjoArB2dZJKd7nw/AKSSIQ33visJyoE5nXb2JUKCTnOQ9PeKYj
         HSa8LTNvi3PO1gVpaR00TaX291mEahbw+eIuuvyaAdBdBFlGYYAwti/70Zi0OiBssKjx
         sbDbeV83Y7xcb5kd4VvmPbwEhUGLl8R+l9fKSQwX6sEof0ZtrKu7PeHubPFOehq2jNe/
         AzuheekyIp72vE8xnUSsmf7WCJjuDDi1xMkdS7frtg8YMSBZfgtFtsRMyCLPhGLlmHYV
         OD6Q==
X-Forwarded-Encrypted: i=1; AJvYcCUfhRud/wMVHuS1fKxR7zux6fPovAAsRbh/NL5LqeTJY2UWD1135HONnjkPCyqSpOeV/2fACbf+fjwa@vger.kernel.org
X-Gm-Message-State: AOJu0YzBYwrptuZ9RHL9ktI3odL/fTco00JzqwPhPJdOoQ+dOB9fJuJ3
	EZ458Ztb0ZDGumwiPteeqvHgskFk/i0J2GUQQRfhO+zAhGGAL0M7+Qvls4pDCVI=
X-Gm-Gg: ASbGncvvp65k8zBUFCgxckqVgQMPjI7pNgAQO/jGfBSTOWOkNRWe1gEqmVAv1HjUIHW
	YrIRoX2RuOJ0B+Bh1xfPGvEVWEroZ53pz9xmQITRDmwwNSQU6KSAKUeiVM4Be+4zFZEPXWJNUft
	0vDuXJlN7oz38P8KhyA7qUlK6O4cplDjt/EW546TFgLA6s8MVTEcMmc6T6OguyHDIlh4vLC0F7U
	7rv7H2OYeGwhxuRXMITTpmd2E4iDUhl6FgmO9aLAEw8jaTg/IKRwAZEi9VpDKtpF1KzVKbNSEAm
	ritDIcvBRx/w9IKql4xs6GtmLJtK2ERr2QSV/e4c
X-Google-Smtp-Source: AGHT+IF0L7i4EpVSgd88RVC/tmSVBf4b8zhHMKBwJVkEIlZvmd5oRM2kNs+UPF0xzIQ5t2bc6BiNnw==
X-Received: by 2002:a17:906:c143:b0:aa6:8cbc:8d15 with SMTP id a640c23a62f3a-ab38b10bacemr299713366b.14.1737133797895;
        Fri, 17 Jan 2025 09:09:57 -0800 (PST)
Received: from puffmais.c.googlers.com (140.20.91.34.bc.googleusercontent.com. [34.91.20.140])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-ab384f87065sm199197966b.133.2025.01.17.09.09.57
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 17 Jan 2025 09:09:57 -0800 (PST)
From: =?utf-8?q?Andr=C3=A9_Draszik?= <andre.draszik@linaro.org>
Date: Fri, 17 Jan 2025 17:09:54 +0000
Subject: [PATCH v4 1/4] dt-bindings: arm: google: add gs101-raven
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit
Message-Id: <20250117-gs101-simplefb-v4-1-a5b90ca2f917@linaro.org>
References: <20250117-gs101-simplefb-v4-0-a5b90ca2f917@linaro.org>
In-Reply-To: <20250117-gs101-simplefb-v4-0-a5b90ca2f917@linaro.org>
To: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, 
 Peter Griffin <peter.griffin@linaro.org>, 
 Tudor Ambarus <tudor.ambarus@linaro.org>, 
 Alim Akhtar <alim.akhtar@samsung.com>
Cc: Will McVicker <willmcvicker@google.com>, kernel-team@android.com, 
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
 linux-arm-kernel@lists.infradead.org, linux-samsung-soc@vger.kernel.org, 
 =?utf-8?q?Andr=C3=A9_Draszik?= <andre.draszik@linaro.org>
X-Mailer: b4 0.13.0

Raven is Google's code name for Pixel 6 Pro. Since there are
differences compared to Pixel 6 (Oriole), we need to add a separate
compatible for it.

Reviewed-by: Peter Griffin <peter.griffin@linaro.org>
Acked-by: Rob Herring (Arm) <robh@kernel.org>
Signed-off-by: André Draszik <andre.draszik@linaro.org>
---
 Documentation/devicetree/bindings/arm/google.yaml | 3 ++-
 1 file changed, 2 insertions(+), 1 deletion(-)

diff --git a/Documentation/devicetree/bindings/arm/google.yaml b/Documentation/devicetree/bindings/arm/google.yaml
index e20b5c9b16bc..99961e5282e5 100644
--- a/Documentation/devicetree/bindings/arm/google.yaml
+++ b/Documentation/devicetree/bindings/arm/google.yaml
@@ -34,10 +34,11 @@ properties:
     const: '/'
   compatible:
     oneOf:
-      - description: Google Pixel 6 / Oriole
+      - description: Google Pixel 6 or 6 Pro (Oriole or Raven)
         items:
           - enum:
               - google,gs101-oriole
+              - google,gs101-raven
           - const: google,gs101
 
   # Bootloader requires empty ect node to be present

-- 
2.48.0.rc2.279.g1de40edade-goog


