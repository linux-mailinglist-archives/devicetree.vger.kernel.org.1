Return-Path: <devicetree+bounces-246065-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [IPv6:2600:3c09:e001:a7::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 40340CB8568
	for <lists+devicetree@lfdr.de>; Fri, 12 Dec 2025 09:56:54 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id 8D422300E753
	for <lists+devicetree@lfdr.de>; Fri, 12 Dec 2025 08:56:53 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 82B573101A5;
	Fri, 12 Dec 2025 08:56:51 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="STm4S4Ot"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f44.google.com (mail-wr1-f44.google.com [209.85.221.44])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 65CE830F922
	for <devicetree@vger.kernel.org>; Fri, 12 Dec 2025 08:56:48 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.44
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765529810; cv=none; b=PIG9bxceESwSIxVVJSLvKL13HPxtIHEeyxE4s630QB7+5YvwqSYThHT6zjLRqM0as1BtiuOtaOAOrshf/RXz4K9pUBF9iCNMnfYLn9BwXjxI6snCySZ4Pj+8fFqk5dSbHR+gjCsRelEAKcJgVHOk8+XjBfr7pqRoeZIOmnumlxk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765529810; c=relaxed/simple;
	bh=SXNHwmt4IY8mD5pE4WSrMi6z+GqRjpGucvBnGaDk3bU=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=YXKDwd3w4K0YTZgDWr3p2vBkqlrm235bAiRHw0Cgch1+htO3m4qmq56aazPtOKtoWzdJqGf8J+It9WwdRc6FsNMCsAc+fuBvcM+jUXWc9YObZkrRnj0OlBNbmWSFh8Ioth5ux0EeUprbugvIqIJhlD8j5sjUQM+X9OoX/WiPNmI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=STm4S4Ot; arc=none smtp.client-ip=209.85.221.44
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-wr1-f44.google.com with SMTP id ffacd0b85a97d-42e2e167067so446887f8f.2
        for <devicetree@vger.kernel.org>; Fri, 12 Dec 2025 00:56:48 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1765529807; x=1766134607; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=j5xnr554TtYoRpbiQVpIVqZ94ylKVMynqnLIjhVFhbc=;
        b=STm4S4OtoNuafVBcmvaAuvIIT98iZuV+b2QohdSyRA2YvTQgUg5Ay78grbYo/6llTG
         c1g2B3NN7ZXWbwv+hIKQNU6aiLjgqJvOwQNU/SK59uEtrW6UieU36lFLn/Cs5S9U/s8Q
         l54hRWogLE65y+T3CGrJJY/grHGZUkEhAb/BplZz4c5DKcaDRDZAaAFyHhK/UklRc1ce
         RjXG2ScjGRexfmWJC/3JnnjIWZQ1Ix6tPqOwRXc2/s2s6LDIf4QR0PJb8e0jjmUgdCIP
         Xz553PjmlAIJkZWbz5iYiXFamuOCd9+Iw5MpTbQn9q4kZ9Yr6M7TH3gfRB6IM+jpxTb0
         uT0Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1765529807; x=1766134607;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-gg:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=j5xnr554TtYoRpbiQVpIVqZ94ylKVMynqnLIjhVFhbc=;
        b=DoWvLbTw9AiJGnf4PVqARjnNq8HDLqWYAmXksFxI5Ryu9ymX2XMfPJHjEr++SPVopE
         CwZCLLPIUudnmT2xCTBZheOGAXMe4wDg1oCjQUAucXzOSA9FVpAqnfbz+Se37CRATuzV
         TXFuheoTsk198rNjAYMCyiCsZObdWP6Nuun44NsTk4X0n4R5qMCLC1e7NYH+W16E1NYU
         0bsIK/5Gx8D30ZhXttplspaqDG1jvAxvwsm634VQ15xSQRK9P/x7sEMZVTcUhx+6SHzV
         BRk2i2hUN8orTdeQrLkoPQl79DgXQBldrMffSrhO1uj3lDbjqxiInpb+xjD7AvpdFBM1
         LqAA==
X-Forwarded-Encrypted: i=1; AJvYcCWvWano8F4s+DeDJTsl49jLTKfaBM7RspqbSFHkVb1NBn56nkOIrKf7qa8wzdR8VYLqtpd/iInFBnqn@vger.kernel.org
X-Gm-Message-State: AOJu0Yzoql8cQzUGCyVjdqJ/WMOtEWcdGbS7bDiWKv2tGUN2o5GnGYdS
	JegLOBf05oCb2cYlQtSuwk82XQ8qyPLnHs6N0yM4zd1c/n6fxKXh9mmT
X-Gm-Gg: AY/fxX6k1GsaS/f2fmEeHiihSQkXUQzCXUxBJvoWdlRGdhxuS2UfWfSwDl8D/Y1wTZi
	nSAd1k8jkL0IT+Jh3WBFAZXkPst+u7uRxBabeakprCpvgbZCNEfi50rXaIL78FNQDsHYDampNcw
	ouxLL3tQQOzqOlWzL7VCJ09/qyISUIhS+eY3Ve5R9QFkYW1zebTXgD4IlIve+trge1s3YoC2Owq
	pktUo1bgJAIIsfqkKqSXNIoJ0Kv6CXHbSV4T2PEzKicVOetjP5c45ZCYulou299/gOcinSl2IK8
	hLx9nvpLcCLNYenJEH1fZqwrfBFJ2F/B91KIo/OxyidUVy9oLRtvjSdS7tYJnaPAK60ZBwmUVZp
	QHrkl6Ej+xHlVqIAEU58zT6xAIUgO7fR1KfWnC4OL9WRGQ2ulaVILy8ZVy7o/nwq+MBrLXsJi/x
	9mxvwTAYBLXH/gRJuBVrh7OsmdmmFxeXrVi2DjpDfGJlN6LVY=
X-Google-Smtp-Source: AGHT+IHhnZmeHlyh2oJIh0NH3wEUOJqDSyyPvBS/9IvuDCpY2NGik74JNPW9/wJK41l2NNkWH9pPYw==
X-Received: by 2002:a05:6000:40cf:b0:42b:3246:1681 with SMTP id ffacd0b85a97d-42fb44a3ee7mr1344789f8f.18.1765529806668;
        Fri, 12 Dec 2025 00:56:46 -0800 (PST)
Received: from ipedrosa-thinkpadx1carbongen12.rmtes.csb ([89.7.8.79])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-42fa8a09fbesm10501696f8f.0.2025.12.12.00.56.45
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 12 Dec 2025 00:56:46 -0800 (PST)
From: Iker Pedrosa <ikerpedrosam@gmail.com>
Date: Fri, 12 Dec 2025 09:56:10 +0100
Subject: [PATCH v6 3/3] MAINTAINERS: Add entry for Sitronix ST7920 driver
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20251212-st7920-v6-3-4d3067528072@gmail.com>
References: <20251212-st7920-v6-0-4d3067528072@gmail.com>
In-Reply-To: <20251212-st7920-v6-0-4d3067528072@gmail.com>
To: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, 
 Maxime Ripard <mripard@kernel.org>, Thomas Zimmermann <tzimmermann@suse.de>, 
 David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>, 
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, 
 Javier Martinez Canillas <javierm@redhat.com>, 
 Iker Pedrosa <ikerpedrosam@gmail.com>
Cc: linux-kernel@vger.kernel.org, dri-devel@lists.freedesktop.org, 
 devicetree@vger.kernel.org
X-Mailer: b4 0.14.2

Add Iker as ST7920 driver maintainer.

Reviewed-by: Thomas Zimmermann <tzimmermann@suse.de>
Signed-off-by: Iker Pedrosa <ikerpedrosam@gmail.com>
---
 MAINTAINERS | 7 +++++++
 1 file changed, 7 insertions(+)

diff --git a/MAINTAINERS b/MAINTAINERS
index 5ddf37f0acc960039422ef988cadfa7176972fc5..79b8a277e38b55ebcff05450d6c565c0d87c6b51 100644
--- a/MAINTAINERS
+++ b/MAINTAINERS
@@ -7861,6 +7861,13 @@ T:	git https://gitlab.freedesktop.org/drm/misc/kernel.git
 F:	Documentation/devicetree/bindings/display/sitronix,st7735r.yaml
 F:	drivers/gpu/drm/sitronix/st7735r.c
 
+DRM DRIVER FOR SITRONIX ST7920 LCD DISPLAYS
+M:	Iker Pedrosa <ikerpedrosam@gmail.com>
+S:	Maintained
+T:	git https://gitlab.freedesktop.org/drm/misc/kernel.git
+F:	Documentation/devicetree/bindings/display/sitronix,st7920.yaml
+F:	drivers/gpu/drm/sitronix/st7920.c
+
 DRM DRIVER FOR SOLOMON SSD130X OLED DISPLAYS
 M:	Javier Martinez Canillas <javierm@redhat.com>
 S:	Maintained

-- 
2.52.0


