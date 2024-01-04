Return-Path: <devicetree+bounces-29558-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id DFA16823CB3
	for <lists+devicetree@lfdr.de>; Thu,  4 Jan 2024 08:25:30 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 7856A281B09
	for <lists+devicetree@lfdr.de>; Thu,  4 Jan 2024 07:25:29 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 6C6B1208C4;
	Thu,  4 Jan 2024 07:24:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=amarulasolutions.com header.i=@amarulasolutions.com header.b="IV8bzpKz"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ed1-f48.google.com (mail-ed1-f48.google.com [209.85.208.48])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D31452033C
	for <devicetree@vger.kernel.org>; Thu,  4 Jan 2024 07:24:21 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=amarulasolutions.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=amarulasolutions.com
Received: by mail-ed1-f48.google.com with SMTP id 4fb4d7f45d1cf-5569472f775so237706a12.2
        for <devicetree@vger.kernel.org>; Wed, 03 Jan 2024 23:24:21 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=amarulasolutions.com; s=google; t=1704353060; x=1704957860; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=WW0o6HHPG/mM4iGv+v8jU++HNDacNhnTQtmfUNegT7U=;
        b=IV8bzpKzWoc3EKiLeVAQPVyc+dT4w42gncN6bW6LlDzEJPAZUnFNHAqeElAUI9ILJi
         UiyvXH+M6JpujVywZjBxBk7J8bDo3eHpamknDF67uSZCRCfS0qCQ/9tXZF30WMVFazYe
         DpB3KP8NqDBKJsxEQ1z0xqSA+QLld858TC66s=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1704353060; x=1704957860;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=WW0o6HHPG/mM4iGv+v8jU++HNDacNhnTQtmfUNegT7U=;
        b=rx6efdqf7CNPKQJvT+1qDBY+3AA4hf47IacKHDoVeMD6VVAtZAYkzbz3uxzJkE9Kki
         1wIyJKecofWc0Fcv/9gIaGjzI20S82hBEwpmfnszU4Mx2EAa+HacWbBHsb1BuhUFVAe0
         7Qch0RL6MnpvmniIbmyN3wRs7iLFEGlvf9hBH6Sfxr0Ud8hCD0xJ5YBdh9gy2CG1Ibll
         PHY9OL33rTmyZvQXNgppaGGyNjeFMhWYcsxsz3SLEbcO22uDlItUwY83qHmUBts4nR+R
         jHxPJifekVIbekPmtdt6j/ZwpEysLPNdMIQBvOzjrDy/wNdQQA3TbyF+eSr0bhKJUAqv
         fY9g==
X-Gm-Message-State: AOJu0YxwuwtkqqmFJfuS9Rh304sgeBmG4XfodWtt5La1/3bQUT2L8TTe
	sdZ0ZCJ8WY1L/YyxLTUYdCXoUBlZ8NCGkw==
X-Google-Smtp-Source: AGHT+IHvPIuIgJDDjbDtuf22xYU9uk+ojoUO5bL5pNWzXog8ZZJcQKnDJWkQWIRkgRGZKp+vHmjunA==
X-Received: by 2002:a50:c082:0:b0:557:eb1:bb3c with SMTP id k2-20020a50c082000000b005570eb1bb3cmr3997edf.53.1704353060246;
        Wed, 03 Jan 2024 23:24:20 -0800 (PST)
Received: from dario-ThinkPad-T14s-Gen-2i.. (net-93-150-255-34.cust.vodafonedsl.it. [93.150.255.34])
        by smtp.gmail.com with ESMTPSA id d3-20020a056402000300b00553772c2968sm18530735edu.82.2024.01.03.23.24.18
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 03 Jan 2024 23:24:19 -0800 (PST)
From: Dario Binacchi <dario.binacchi@amarulasolutions.com>
To: linux-kernel@vger.kernel.org
Cc: linux-amarula@amarulasolutions.com,
	Alexandre Torgue <alexandre.torgue@foss.st.com>,
	Dario Binacchi <dario.binacchi@amarulasolutions.com>,
	Conor Dooley <conor+dt@kernel.org>,
	Daniel Vetter <daniel@ffwll.ch>,
	David Airlie <airlied@gmail.com>,
	Jessica Zhang <quic_jesszhan@quicinc.com>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Linus Walleij <linus.walleij@linaro.org>,
	Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
	Maxime Ripard <mripard@kernel.org>,
	Neil Armstrong <neil.armstrong@linaro.org>,
	Rob Herring <robh+dt@kernel.org>,
	Sam Ravnborg <sam@ravnborg.org>,
	Thomas Zimmermann <tzimmermann@suse.de>,
	devicetree@vger.kernel.org,
	dri-devel@lists.freedesktop.org
Subject: [PATCH v3 5/8] dt-bindings: nt35510: add compatible for FRIDA FRD400B25025-A-CTK
Date: Thu,  4 Jan 2024 08:23:41 +0100
Message-ID: <20240104072407.41290-6-dario.binacchi@amarulasolutions.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20240104072407.41290-1-dario.binacchi@amarulasolutions.com>
References: <20240104072407.41290-1-dario.binacchi@amarulasolutions.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

The patch adds the FRIDA FRD400B25025-A-CTK panel, which belongs to the
Novatek NT35510-based panel family.

Signed-off-by: Dario Binacchi <dario.binacchi@amarulasolutions.com>

---

Changes in v3:
- Use "enum" to have less code changed

Changes in v2:
- Add a dash in front of each "items:"

 .../devicetree/bindings/display/panel/novatek,nt35510.yaml    | 4 +++-
 1 file changed, 3 insertions(+), 1 deletion(-)

diff --git a/Documentation/devicetree/bindings/display/panel/novatek,nt35510.yaml b/Documentation/devicetree/bindings/display/panel/novatek,nt35510.yaml
index bc92928c805b..43afb316e0e9 100644
--- a/Documentation/devicetree/bindings/display/panel/novatek,nt35510.yaml
+++ b/Documentation/devicetree/bindings/display/panel/novatek,nt35510.yaml
@@ -15,7 +15,9 @@ allOf:
 properties:
   compatible:
     items:
-      - const: hydis,hva40wv1
+      - enum:
+          - hydis,hva40wv1
+          - frida,frd400b25025
       - const: novatek,nt35510
     description: This indicates the panel manufacturer of the panel
       that is in turn using the NT35510 panel driver. The compatible
-- 
2.43.0


