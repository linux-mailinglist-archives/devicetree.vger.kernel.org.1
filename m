Return-Path: <devicetree+bounces-237344-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from dfw.mirrors.kernel.org (dfw.mirrors.kernel.org [142.0.200.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 6236EC4F99B
	for <lists+devicetree@lfdr.de>; Tue, 11 Nov 2025 20:27:15 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.mirrors.kernel.org (Postfix) with ESMTPS id 78DFA4E1176
	for <lists+devicetree@lfdr.de>; Tue, 11 Nov 2025 19:27:02 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id F31773271FD;
	Tue, 11 Nov 2025 19:26:44 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b="czTSgGHG"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pf1-f175.google.com (mail-pf1-f175.google.com [209.85.210.175])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6DFC1326D70
	for <devicetree@vger.kernel.org>; Tue, 11 Nov 2025 19:26:43 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.210.175
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762889204; cv=none; b=UmFZqRTesVRMN+C3sW+rVhCzglYs/AHXmPAAmVOQHhjXAcLpHghta16cdHXbmJb9dEVJDdNQxPWYFcRTxZQNiZ97BCTdAPpdobNtI4bUk6gc+x81/VtBf0rXduku5D5j93ML3oPRl0z7+wF/0nfh944YkYcyvlKXV5m/cfEnjw0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762889204; c=relaxed/simple;
	bh=PuM1AACg2d+I1zG41cyM/NLvQTJ2/H6JFpNiUOMJQO8=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=Tu9IXk+uszdgE8Zrt4FpnCi3YKp1g3cQIufDMAoOcMdhu2wgxrMI2tIHWOHbGdmoD7l5KhmkfHd3bR3/iT8EJ1WNwsitE7hKm6Oly094mWcRJxfQ3USA99m0z6EFvOmoIoLVo4ElvMkffjm5c/EGN/1aX0KUrAYcl0Mr48YNz+0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=chromium.org; spf=pass smtp.mailfrom=chromium.org; dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b=czTSgGHG; arc=none smtp.client-ip=209.85.210.175
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=chromium.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=chromium.org
Received: by mail-pf1-f175.google.com with SMTP id d2e1a72fcca58-7af73974a4bso1083b3a.0
        for <devicetree@vger.kernel.org>; Tue, 11 Nov 2025 11:26:43 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google; t=1762889203; x=1763494003; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=BdNxsDJ9m7UGbRcYc8TABHid3VHQHv2h0LQ2tYeasVo=;
        b=czTSgGHGABHc27+UBO36i8NZqqDMtOKmZJeshxFQSzE7w8yHWNBVghJ1OKn+sh/OTr
         pO7ohLbAh3htpT5Tab1CnPR28QtdkyFyl1OX0XN2t7g8oGbTYQI7SVLTchelDU8JgIxB
         AvhMjwViVRw3M+mr9FgRdEyIebm2BDdUMFLy8=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1762889203; x=1763494003;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=BdNxsDJ9m7UGbRcYc8TABHid3VHQHv2h0LQ2tYeasVo=;
        b=HuZqaFMJLReMbECbKC9vnD+RjV7JfE4A5/y4VLAifq2PmjlGCmVUUUnIq7mFRvmXZq
         3NChFaAjQ+88AYOA+w2OZCJm+/ydzW/rCRJ797jfJhMEvntWuxkwyTBuCQ508ylDG2Kt
         7V9Uy+rkf+YoEeXXCKl+N2VvD5odBfIDztehmqmDQmF+CwI0WHTCnB5m/aNpoorMAcKy
         NSVZhaK9HyxyNvrOOrdHIkC4/oKHr2oNn1HVSD9kdiud20+eMFpyTAKXfKTCYJaLAtwB
         0kglHhha7WqNm3yeI0pANa1sqZbDiunfwsRbrPgu77aN/kKqE9HlT2+8VtI8jXTLBK6n
         ohTw==
X-Forwarded-Encrypted: i=1; AJvYcCUwu6wm9lQBJHZIZuLZutCWrbTwZ6eymcq82N2Q55YA9CxZRfOc4mEFKbGLUU+KKq1htCHjoE0mUeTz@vger.kernel.org
X-Gm-Message-State: AOJu0YzJgevRnmq2ZycFGCHKkvx+quMjkupIrVKDvYzlhWeemdCsNx04
	FxQaUQGeIEZnnlT7n+LqVpBmrNPTqpkcjOO+5MqgtP5iNq5mBtYQhFLw8V1Foz8+BQ==
X-Gm-Gg: ASbGnctqX8fLsVqjzjdRAfwbzgkZDXKFl4iBQqFpaw0v8snwrRkf/PubHhmSY5Pe+ui
	7H22s2+QPoPfzePqcljb0YaXXk1cRB6h5fs+0haViJl5stk0yZi/9lV3OmB/OeHSj4U6OXxv13q
	/J68ousnLlc33xm0Hevlnjukd6a04iOYhbYSZqwg7zbp7ADE+SB8cgRw+/pxI1bXqGcDnCCEnNL
	g8bELLF4ixNDmi6R7KCWPBFxKcNm7MHV+YtWRSSgOKXD9mwDx7rijETSjoXvFWDPZfkcT35M/8n
	YNQuvR5rL/VG09pOeM2w6k9dcAlHtt08jSYTnS2qa5U+WOJ4qWhe/pXhX0KpecpIgVJ7CFZMHJp
	q3uDgpom9881QfPIYBBsHzOZGu3PFcOv8sRJ9PWdP/ABMj5yIbbQk6tekDbP7GtZKTTqjC2WhG1
	0r58/wHHXiUUxxCvd6c6ndzrqI7FtzSdHggkCuFlReMASAwn+Qsrq5+CH9omo4WAifERewYQ==
X-Google-Smtp-Source: AGHT+IFUhgG9WpQVUBXncCvJtpv/AdoMd+/rut91fwnGCd4l3imDRqM9pTW1tm/5jIJ9RftY3SLcaw==
X-Received: by 2002:a17:903:944:b0:295:28a4:f0c6 with SMTP id d9443c01a7336-2984ec88253mr6581805ad.0.1762889202759;
        Tue, 11 Nov 2025 11:26:42 -0800 (PST)
Received: from dianders.sjc.corp.google.com ([2a00:79e0:2e7c:8:ba9f:d4c6:9323:4864])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-2984dcd0974sm4861075ad.90.2025.11.11.11.26.40
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 11 Nov 2025 11:26:41 -0800 (PST)
From: Douglas Anderson <dianders@chromium.org>
To: Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Peter Griffin <peter.griffin@linaro.org>,
	=?UTF-8?q?Andr=C3=A9=20Draszik?= <andre.draszik@linaro.org>,
	Tudor Ambarus <tudor.ambarus@linaro.org>
Cc: linux-samsung-soc@vger.kernel.org,
	Roy Luo <royluo@google.com>,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	Chen-Yu Tsai <wenst@chromium.org>,
	Julius Werner <jwerner@chromium.org>,
	William McVicker <willmcvicker@google.com>,
	Douglas Anderson <dianders@chromium.org>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	Jiri Slaby <jirislaby@kernel.org>,
	linux-kernel@vger.kernel.org,
	linux-serial@vger.kernel.org
Subject: [PATCH 2/4] dt-bindings: serial: snps-dw-apb-uart: Add "google,lga-uart"
Date: Tue, 11 Nov 2025 11:22:05 -0800
Message-ID: <20251111112158.2.I040412d80bc262f213444aa6f6ec4f0334315a67@changeid>
X-Mailer: git-send-email 2.51.2.1041.gc1ab5b90ca-goog
In-Reply-To: <20251111192422.4180216-1-dianders@chromium.org>
References: <20251111192422.4180216-1-dianders@chromium.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

The Google Tensor G5 SoC (known as "laguna" and canonically written in
code as "lga") has a UART based on Designware IP. The UART appears to
work reasonably well, at least for serial console, with the existing
driver in Linux. Add a compatible for this UART based on the canonical
"lga" name for this SoC with a fallback to the existing
"snps,dw-apb-uart".

Signed-off-by: Douglas Anderson <dianders@chromium.org>
---

 Documentation/devicetree/bindings/serial/snps-dw-apb-uart.yaml | 1 +
 1 file changed, 1 insertion(+)

diff --git a/Documentation/devicetree/bindings/serial/snps-dw-apb-uart.yaml b/Documentation/devicetree/bindings/serial/snps-dw-apb-uart.yaml
index cb9da6c97afc..df6a7558a9f2 100644
--- a/Documentation/devicetree/bindings/serial/snps-dw-apb-uart.yaml
+++ b/Documentation/devicetree/bindings/serial/snps-dw-apb-uart.yaml
@@ -53,6 +53,7 @@ properties:
           - enum:
               - brcm,bcm11351-dw-apb-uart
               - brcm,bcm21664-dw-apb-uart
+              - google,lga-uart
               - rockchip,px30-uart
               - rockchip,rk1808-uart
               - rockchip,rk3036-uart
-- 
2.51.2.1041.gc1ab5b90ca-goog


