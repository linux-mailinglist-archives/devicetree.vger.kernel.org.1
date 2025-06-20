Return-Path: <devicetree+bounces-187874-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 26994AE18E6
	for <lists+devicetree@lfdr.de>; Fri, 20 Jun 2025 12:31:42 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id ACF603A4D02
	for <lists+devicetree@lfdr.de>; Fri, 20 Jun 2025 10:31:17 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 14D512857F2;
	Fri, 20 Jun 2025 10:31:38 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=fairphone.com header.i=@fairphone.com header.b="0YERWasn"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ej1-f49.google.com (mail-ej1-f49.google.com [209.85.218.49])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 292A2283C97
	for <devicetree@vger.kernel.org>; Fri, 20 Jun 2025 10:31:35 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.218.49
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750415497; cv=none; b=ccVU5SMcRIg7aX4J2XCumJC3EkAMZ+/SMpeM4KmbZRPcVQMSZ5XzP/JyFLZfvtArBtgVt5Y+xYcjTw/o50fW8mS/YUTQtrUhGNYGW6AvV6zGJVIgZZbT0TM8D32nxXa5JZbr/FYQDiCW/Qgmz5cv95k1JtETeI6CGPbLm9G3Ifc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750415497; c=relaxed/simple;
	bh=WbYAkf28JuDB96zhXvwINlUm7Z+jr4BgOqrEfl46LOQ=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=M0mbWGanrznexO5yNbYb5icD+WUFlsjVy1Ez8vdpZUgqQ3bUVuJpygvtEQubWZoDQCSnhQWhf+RgB2xJBcyE2IfQtYYcwoKlasPozZ6ZrfnRMAEhDBZh/X++gtaq8/vBV5v7d5kw3g/1T4e73TvYW3DQCLOwSUxA3xR7YDJ/eOI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=fairphone.com; spf=pass smtp.mailfrom=fairphone.com; dkim=pass (2048-bit key) header.d=fairphone.com header.i=@fairphone.com header.b=0YERWasn; arc=none smtp.client-ip=209.85.218.49
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=fairphone.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=fairphone.com
Received: by mail-ej1-f49.google.com with SMTP id a640c23a62f3a-ade5a0442dfso324804666b.1
        for <devicetree@vger.kernel.org>; Fri, 20 Jun 2025 03:31:35 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=fairphone.com; s=fair; t=1750415494; x=1751020294; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=X8TW+dnA/RLSUCo5w0FhkO5CxTqAKcs/iJjNLMWWbto=;
        b=0YERWasncf+NVmlsSfe8Cv1whAklJamFlVlB7/HIsEaUEq8YeXWyCvEjSYDSxCZsja
         bn67UXwW55iwrWuYTe9uhhTarQ6Cy+o+ThNOPy4NACCB+tIfEPtDNVg8xk1fZBoZSX1b
         ZiOruCxw2qdq6mQwTWc7e2wm1is132LuTqyp+fG92tfOhkPGVo17WnslDgb+uPeiyIee
         9BtXInIW8VQg4LjOHf4Z+4a8qHafFUPkT94nHmp34PJewSC8nw0XXMlwiP1gS4GbiewR
         zhydQFMMw+zqR3K5FlZA0509eKb+ySUXM3iOKqkDIKV3LYi+XDFQJQiI62RX3l3C5WIx
         8PLQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1750415494; x=1751020294;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=X8TW+dnA/RLSUCo5w0FhkO5CxTqAKcs/iJjNLMWWbto=;
        b=XKGNWh6cfBkxAIdMBt+gm94KVJEMv0x7ayLAfO+Hkyxg6kBtKCSiay9cIzTe44P9f+
         pOIj/Ss/kgd8h3vzCDMCAxqeinAbUAHoK1rUFI/PTPfwDgvuMQAKRBdQRDZz0RzEdk9i
         Jko6f01VNJw4DKTE1X1w1MkY+fT31HeulVPzXhPIpCn3pztChwuERKcOaze3pFTftAUC
         OX6kgfNg+mRHg0a4m/0q1MngfNu50bmIkZfB7ddAXh1U//a8Uiibm+f1ijAEZF528V/7
         maoTUchHlCNzogyubFh/NWDwLCwR1od+v3YdifKK6JGJ+vhuUiMPnG6Q3gSPnIi9i/1m
         DRXg==
X-Forwarded-Encrypted: i=1; AJvYcCXsvIJRbn+PD7Y3hPEbrKjts2wJhS99anKEJQnS2yKxs3RKjMNqceFFQZk7zCwgWppUjL3eV2tFuQ4f@vger.kernel.org
X-Gm-Message-State: AOJu0YwgTvzKe8dx0oIir7kUGs92DhHzWSOjDsvYExVfJ8ToVIX+KZfF
	tyyPyJ9XUoj6F4pHCoCVdfLn9zGdCf5xWAqTr9tFsrYayCtp/kV8jTmQ5b9nsLtauCo=
X-Gm-Gg: ASbGncsr4OouwA+zzKHco8LeHO+b55IeN69Tqx+CmlBSQc7VYHuGtDrHxmz7OEn7ltK
	VmWS13KtcDkBu/y33cg9Ouo2X4S/GZwxJfsKI7A4W5EnpBwAW2dKGjNsqONnNLeSLZ1CRb8ebSP
	T6oOhDcHq4wDhF5YSqs8zJRbsP8eyFJZ/KABObHGIhopxSEraXATx6A04zVLYDsz6cxN+I1wylT
	mHfXOPZKCcaQsOLq336321gMSMyw7ldOcLS2StcjDR8ZeBhMK4pVY7zU1RM1eTOF7kVmKBsAw/5
	OONwo3I/+LroWPfB9wG913aon5mslh4zt6J6Zr6WFCLXsyaexbnbqYLEaO5XiPNkZeZUHM3GpOm
	7la9n+Fceti/l6hxRdEsY8i5ynsHWgEJq
X-Google-Smtp-Source: AGHT+IE9P6hDfRXmnpE+5S+EKxKkHp70DsQJ2ovXtC7hTz0ZIMVcZscGLt+vhpJFn076myB8MB2log==
X-Received: by 2002:a17:906:dc8d:b0:ad8:9257:5735 with SMTP id a640c23a62f3a-ae0578f527emr214907766b.3.1750415494301;
        Fri, 20 Jun 2025 03:31:34 -0700 (PDT)
Received: from otso.local (144-178-202-138.static.ef-service.nl. [144.178.202.138])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-ae0541b6f5csm138047366b.122.2025.06.20.03.31.33
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 20 Jun 2025 03:31:34 -0700 (PDT)
From: Luca Weiss <luca.weiss@fairphone.com>
Date: Fri, 20 Jun 2025 12:31:25 +0200
Subject: [PATCH 1/3] dt-bindings: display: simple-framebuffer: Add
 interconnects property
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20250620-simple-drm-fb-icc-v1-1-d92142e8f74f@fairphone.com>
References: <20250620-simple-drm-fb-icc-v1-0-d92142e8f74f@fairphone.com>
In-Reply-To: <20250620-simple-drm-fb-icc-v1-0-d92142e8f74f@fairphone.com>
To: Hans de Goede <hdegoede@redhat.com>, 
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, 
 Maxime Ripard <mripard@kernel.org>, Thomas Zimmermann <tzimmermann@suse.de>, 
 David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>, 
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, 
 Javier Martinez Canillas <javierm@redhat.com>, Helge Deller <deller@gmx.de>
Cc: linux-fbdev@vger.kernel.org, dri-devel@lists.freedesktop.org, 
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
 Luca Weiss <luca.weiss@fairphone.com>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=ed25519-sha256; t=1750415493; l=1090;
 i=luca.weiss@fairphone.com; s=20250611; h=from:subject:message-id;
 bh=WbYAkf28JuDB96zhXvwINlUm7Z+jr4BgOqrEfl46LOQ=;
 b=Y2GDVlFS+pU31aOX4ttTn8hlbLrxRlFtAH65SYN7sC9Zi1EhHz2D8Jo4kgsda6sDYGZfr6MTp
 AOzkGxhs9TXBET7U25bdMMFdcIgeFo2aN4c/Q85bn4pS2/9RgeCHpZw
X-Developer-Key: i=luca.weiss@fairphone.com; a=ed25519;
 pk=O1aw+AAust5lEmgrNJ1Bs7PTY0fEsJm+mdkjExA69q8=

Document the interconnects property which is a list of interconnect
paths that is used by the framebuffer and therefore needs to be kept
alive when the framebuffer is being used.

Signed-off-by: Luca Weiss <luca.weiss@fairphone.com>
---
 Documentation/devicetree/bindings/display/simple-framebuffer.yaml | 3 +++
 1 file changed, 3 insertions(+)

diff --git a/Documentation/devicetree/bindings/display/simple-framebuffer.yaml b/Documentation/devicetree/bindings/display/simple-framebuffer.yaml
index 296500f9da05e296dbbeec50ba5186b6b30aaffc..f0fa0ef23d91043dfb2b220c654b80e2e80850cd 100644
--- a/Documentation/devicetree/bindings/display/simple-framebuffer.yaml
+++ b/Documentation/devicetree/bindings/display/simple-framebuffer.yaml
@@ -79,6 +79,9 @@ properties:
   power-domains:
     description: List of power domains used by the framebuffer.
 
+  interconnects:
+    description: List of interconnect paths used by the framebuffer.
+
   width:
     $ref: /schemas/types.yaml#/definitions/uint32
     description: Width of the framebuffer in pixels

-- 
2.50.0


