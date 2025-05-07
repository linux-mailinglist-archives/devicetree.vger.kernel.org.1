Return-Path: <devicetree+bounces-174602-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id E1521AADBBE
	for <lists+devicetree@lfdr.de>; Wed,  7 May 2025 11:43:51 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 42A6546881E
	for <lists+devicetree@lfdr.de>; Wed,  7 May 2025 09:43:52 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 209A420125F;
	Wed,  7 May 2025 09:43:46 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="c0dLRzJH"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f53.google.com (mail-wm1-f53.google.com [209.85.128.53])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 462BC1DFE12
	for <devicetree@vger.kernel.org>; Wed,  7 May 2025 09:43:44 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.53
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746611026; cv=none; b=b/uC0YaUwVL+ktQSuVVWpYtT6FFchmaf/2PasAVRdPgTldF3PHa9dYSj0AWkNSBZwRj+DannSZ6UdDi8VCDTs3+evBOjH/wgR5UDEDLEMRXefSOr1sHJ9uYOQ117czNragj2dDW5CkkQbKfjIG2EqadB6Y+yo1MdqJZfejgVCKs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746611026; c=relaxed/simple;
	bh=rAFzUZAkSv653DMA1Gt82SdKNPVMD+FcAEb6O/SlSkw=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=ZWX6wOvCc2hwPwuK7CQxDtNA/IMV8avoUt4TezYBDCzz5NZzHwDthzUydaGnaE8DzX6mRairR7IycmJn86N35vAxkEYBp4jq3dxnfoNGfgY/TCaBoNaW9kQBOTZpvClFYyO0gLlkSYgDuxieSJe1xnUaAXMGEmQzQelxW6q3C8M=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=c0dLRzJH; arc=none smtp.client-ip=209.85.128.53
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wm1-f53.google.com with SMTP id 5b1f17b1804b1-43ce70f9afbso58905575e9.0
        for <devicetree@vger.kernel.org>; Wed, 07 May 2025 02:43:44 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1746611023; x=1747215823; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=T3uAu3A4YUWMgeScFXrknXczo0EYOFrNx11xrsJM7O0=;
        b=c0dLRzJHr8H+fG33Xpd59yZtU3fyemVSeWnjqiofLQZ9vS+OlurPpwzWNFUXjeAI5H
         k18vKVsXxCb+vpllWSGDhYRqmIW1UerrxyTRO9m1TKqqQVtH/M7c5xVwGjrt3knNYpkf
         uudYbk5t7DQbUrYJBRCzEzLulN+TLHm7D30onUGKmPfIi0t+kDefOcj2DJky6NKsMCoS
         JKJYbBL1rUTrK7qoc1oqclU4YqIbKv0jPhpxJx2SQRb3AJJqzIWehK6utxHJNPlqk+PM
         bG3lyOO2eWH5MhsYXi9zY8OegI1A79Jcz4cnSmHV8tUKb84Qf0sMyB38w/CQXdE/mZ+L
         aXUQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1746611023; x=1747215823;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=T3uAu3A4YUWMgeScFXrknXczo0EYOFrNx11xrsJM7O0=;
        b=eOk851pfpSVkqLbqEwmKhgXrW2gZ7mbnEsTluXC+ynoWNKlMHccbN87+Vmwsl1cJ/6
         RNEZ609/ZNjjroyBYK7Y9e21HBvzL19n6YJj5WnowSI2X5CtPz88U/NiFHTo52+s6cEF
         cz7j5nc0NAFH28k/+m8bW0AauZkwKoLf49FgGSzXoXra7MnMdcF3YOddgh3wFhxZcR15
         ONyGwevKV6EgkZizdtdAtbEo6fsXHBmegcs+lwjSJWi+LVc6LyBsiq5NpvtMVkYoCUre
         TJ2G5jg0zvRDfhDCAayUacTEJ3F8PGKZJ6ZR0ru4IbAamj0FK/A6L5UmV8oLM61QdDAA
         EQyw==
X-Forwarded-Encrypted: i=1; AJvYcCVNdpMncPZDQRkIbqLRHz8a4eoRBfs26UhT+NKY12c9ngth9EvYMMvhk+J/TTzLbbQ+jFPkkSsZT6IH@vger.kernel.org
X-Gm-Message-State: AOJu0YwNoCzLK3yP2brxC1YFHtu0I2UbesUM/D8C0aSRAlE6nDwjjQGU
	ec3zZVNIxyofixlZ1On3ohEn6AZhR3kwKn2QPoTjxssJOifuuB/CwpQLMFFNpyg=
X-Gm-Gg: ASbGncvfaO8hFBmcG1XladbRV8MQ4fB5aWoWBEll4zRZEuiFAba4CxmNsR7R+h6NPhL
	lG+0AVcSXl3oEkecuQali5PqP15ontIgvfF6k596ScI8eiHSt/LxhI2KmGgIIH/QgHLbMaFfM+m
	gRgfcJ+Gk+XvOVB/tUPwPcXGykmimZ4xnIF9MEgHce/4mlYW2cm8bZa7OEsITL0acMpXpK6U8Vf
	NTD7I/SKrV5Vmq0wzwy0H1mDjKk0YLBzCYDk+tu5BnMfaIYSgWEqd7Mmjz+pmwhw4LQjUi3Jb0r
	XlMP6P2l/Ir6dtBoXjfLuEQeDjC+DuZc/KBcvo0OEuEgo/wqM1vwRCKBUk3A1Y9u7ZFXnRc3
X-Google-Smtp-Source: AGHT+IHt+sBETV7AcQ5ySJc+/4bO8iXnJ5nEH5DDXoH0tDCQC0XyTyRIpVj5JbqDYI8TkrtgXdjG7w==
X-Received: by 2002:a05:600c:871b:b0:43c:f629:66f3 with SMTP id 5b1f17b1804b1-441d44c0777mr23958755e9.18.1746611022563;
        Wed, 07 May 2025 02:43:42 -0700 (PDT)
Received: from arrakeen.starnux.net ([2a01:e0a:3d9:2080:8261:5fff:fe11:bdda])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-441d434670csm25360095e9.15.2025.05.07.02.43.41
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 07 May 2025 02:43:42 -0700 (PDT)
From: neil.armstrong@linaro.org
Date: Wed, 07 May 2025 11:43:38 +0200
Subject: [PATCH 1/2] dt-bindings: display: visionox-rm69299: document new
 compatible string
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20250507-topic-misc-shift6-panel-v1-1-64e8e98ff285@linaro.org>
References: <20250507-topic-misc-shift6-panel-v1-0-64e8e98ff285@linaro.org>
In-Reply-To: <20250507-topic-misc-shift6-panel-v1-0-64e8e98ff285@linaro.org>
To: Jessica Zhang <quic_jesszhan@quicinc.com>, 
 David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>, 
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, 
 Maxime Ripard <mripard@kernel.org>, Thomas Zimmermann <tzimmermann@suse.de>, 
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, 
 Abhinav Kumar <quic_abhinavk@quicinc.com>
Cc: dri-devel@lists.freedesktop.org, devicetree@vger.kernel.org, 
 linux-kernel@vger.kernel.org, Casey Connolly <casey.connolly@linaro.org>, 
 Neil Armstrong <neil.armstrong@linaro.org>, 
 Caleb Connolly <caleb@connolly.tech>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=openpgp-sha256; l=997;
 i=neil.armstrong@linaro.org; h=from:subject:message-id;
 bh=RZnJ7ALArB3S7wde3YqyxUd7RDqI3oA1G2B1Dr/Q+do=;
 b=owEBbQKS/ZANAwAKAXfc29rIyEnRAcsmYgBoGytMfrICmXcZpVLyNNF1LWs5ATDo8J//hPClitGB
 mHXtpFCJAjMEAAEKAB0WIQQ9U8YmyFYF/h30LIt33NvayMhJ0QUCaBsrTAAKCRB33NvayMhJ0UrKD/
 9uFikz4Cx5FmB5ZYZEfJ6npPS2W1zrA3S/+SRlRbwm3f18jGaw6S9RcdZpTPnnlfOAicY58Jy/R6Zu
 EZdzKqTnm9RNt3UoPl/u+l79YT8vSuGES6MCyF9Ltqsv4NZG/RFseAXblvGAvpNvHeaXkBFEltCYX7
 kOhHNLRfJFwW1LINdKGP/pp2jSye8bnxszQlY9jN4OL/ocGqcV09LJGxr9MXVkOQ4ZwSUWcfCGE/oq
 GbUgpGlCQI/qvOwBjtfmYzWA2Q65UQ5Z6v3a4PWjBoubHy1h1VJm6inI6sZZRkGTw+qugSk/kwlWc+
 BZMqztvkXK5sZQwTYa4mTWnA063UYWEVfjYNmtt2QEYDjUSbWH2m+ur3gBb2FJzBDSVYdYo6lubZSP
 UUwUTxD8HS9y3n0A4KoMikCn0EOot8w9aeft1i81TPwiym8fTewVanPU67J0ivbMLk0ATyZ0Jv41Vi
 vlZX83cCZPQQkn+a8ZuwMHmcnIP8uu2WW0oRcS+MaK6En/Q1UZORYIrqJ4k2AmSQJMfmzUdZVeM9Tk
 J4Iv5kxd2JHvRtJWXQe0lVdMtJCIEIwm8yMZvyTvF7S5D9iYU/04ELjqf6o2qawQcp7n+jToX5fzcR
 mwkh+kO2KrGUQcv9C222i4iM6uus6X24ewDl6SKrvoB0lg3DCYWMZDE2ANEw==
X-Developer-Key: i=neil.armstrong@linaro.org; a=openpgp;
 fpr=89EC3D058446217450F22848169AB7B1A4CFF8AE

From: Caleb Connolly <caleb@connolly.tech>

Document a new compatible string for the second panel variant.

Signed-off-by: Caleb Connolly <caleb@connolly.tech>
Acked-by: Rob Herring <robh@kernel.org>
Signed-off-by: Neil Armstrong <neil.armstrong@linaro.org>
---
 Documentation/devicetree/bindings/display/panel/visionox,rm69299.yaml | 4 +++-
 1 file changed, 3 insertions(+), 1 deletion(-)

diff --git a/Documentation/devicetree/bindings/display/panel/visionox,rm69299.yaml b/Documentation/devicetree/bindings/display/panel/visionox,rm69299.yaml
index 30047a62fc111ff63cbbc275914ef8bb7cb4ffd6..f0a82f0ff79099cdccfd5c5001de0d319e94410f 100644
--- a/Documentation/devicetree/bindings/display/panel/visionox,rm69299.yaml
+++ b/Documentation/devicetree/bindings/display/panel/visionox,rm69299.yaml
@@ -18,7 +18,9 @@ allOf:
 
 properties:
   compatible:
-    const: visionox,rm69299-1080p-display
+    enum:
+      - visionox,rm69299-1080p-display
+      - visionox,rm69299-shift
 
   reg:
     maxItems: 1

-- 
2.34.1


