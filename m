Return-Path: <devicetree+bounces-242499-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id DCF4DC8B20F
	for <lists+devicetree@lfdr.de>; Wed, 26 Nov 2025 18:06:00 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 67D093B9C6D
	for <lists+devicetree@lfdr.de>; Wed, 26 Nov 2025 17:04:48 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id F30AA33F8CF;
	Wed, 26 Nov 2025 17:04:37 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="O+Y9avAG"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f41.google.com (mail-wr1-f41.google.com [209.85.221.41])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1F96733F39F
	for <devicetree@vger.kernel.org>; Wed, 26 Nov 2025 17:04:35 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.41
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764176677; cv=none; b=qS/lmIgpdX0geIhd9AssCV8dFxvYYJCSU4/aSlPSfTl3UK0SY79mB3WKirlFgCWR+y8cvXrV6iz8fen+BoSs9wyZhH4yibIjjRgP4USN9i91gLtSVu9Ksil+/0Y21V00v5TI941xwX1ap7YMWxRJSMBLxL6gZYVZlMnN6HSMXVE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764176677; c=relaxed/simple;
	bh=SXNHwmt4IY8mD5pE4WSrMi6z+GqRjpGucvBnGaDk3bU=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=DuQyg6W+CBXh+0lXDFdHi4JEsdyF+Pk3M3bKwU1J2hVxaFtN4juSjBLOUBjc7/m0sLSK2uEg1Z8jLApGy+3KvMToX8QfgFmpaUecjxB2SZbQHyTumPTUz7zx95xpPV3sU+WogezVlJPXJsCpcRz2qwsM4GwG762Bsytt25ZiEnk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=O+Y9avAG; arc=none smtp.client-ip=209.85.221.41
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-wr1-f41.google.com with SMTP id ffacd0b85a97d-42bb288c219so57767f8f.1
        for <devicetree@vger.kernel.org>; Wed, 26 Nov 2025 09:04:35 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1764176674; x=1764781474; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=j5xnr554TtYoRpbiQVpIVqZ94ylKVMynqnLIjhVFhbc=;
        b=O+Y9avAGwPb9mg4uYXviMV4GOgyuktYi+L3eTUNDArvymJFHEyi3wCmbmkS9DpGEbk
         JQfu0xU+ciFqrspuukZuDiQLVaK10qS1YlMTTryIeSr2CZVWVUAxqPR/j/cnEIeuJAmk
         Wazr2AzLTRCQz0mZyoGaSBrgnz8ECqAkv1nG3KyPjUiuqGQrOIiam0aiwvymSxlF2PW0
         qG5E5rvHVPje3p9Fc30K1E+jAUqlYjFvva6NJKRtQSBI/02LZBx1xh5lUcldC37CF99j
         sBYoflYoBWmwBzq1ijkH3krpQQquYKguo99+Y/odYf08cZIisdkfxT8+cpprtuuDsGol
         l31Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1764176674; x=1764781474;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-gg:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=j5xnr554TtYoRpbiQVpIVqZ94ylKVMynqnLIjhVFhbc=;
        b=J0Tp2X2biE3dBGtO7U0L8rbBrAH6NUwqC1wrRQFTa3wDHFEvjFzHUxX+RX0WcJ4Q1C
         IHHG+iNfMgnN1kswh44HOK/x5hR4pHSUgHOwpQl8Wwhft7WdrDlvBBMf0xxolVPWtSYA
         KscMahhq2P4NnypKhrmw0Zp0eq6tpjWbd44BZ44GnBE8xgeiiuQKINMvYXmfhZdPSXxa
         kaQisXm7d+XVSuTeyHNgpt6Hi/hXRfp8t5PISa+wsBoBTes865jJ/wUc6HEOUXmIEgE6
         656iOhMBQB9r+oXA91C3T5dEwvogr0Kl9WQn++Os52bpWnwMJ1TEU9iepkJdatzA8PUb
         2vAw==
X-Forwarded-Encrypted: i=1; AJvYcCVKWCUx6s94HS041G185b4tbMkpxTxMd+hpmo0z63RY4K8CZtvC+bEgiyEP1/kLlPNZcJf/5B3b9vSP@vger.kernel.org
X-Gm-Message-State: AOJu0YxALQSulHrgRTjQOg1sfk4WcXVmbEkq+Pj4VRQ7spC0qqZ7ZAFi
	LYff1gD4pNajsJKYSxQWYUnU0wyIV2lkFNQXQZUhq0buTZWqxCVNWpaYPFGCp8N3
X-Gm-Gg: ASbGncv7tiSYA8Ycfh8mUGG6PMibRlMssVB5kDJTnD9J+HtTgADCHpWdpKj8TDW3X0E
	mRrteG6sw94/FFvv6yamDIMEbOgHxnVqSgTlRbaHpnFr5OpYjadM/klefY6c8GqDrZrYz7WoULT
	whVBLRKieT/KUx24rVOyFCBK0gUPr0cVNC46xm41U/rrfcge8TC6PmKsWvC2hYRjVieto0i5trp
	OtCMKPzGPyMsgd30KvVD+JcAZZZGk9WnmotZ98iyEby+pLaZtJJF7jp8hY7mc/bTluAIouGYwrW
	/q0VTGbpRusbiq/8qP9zn6XsuSvi9ZjMCP4j83QPo1W3m98Fdva6ywZEftu5tBkFGHYgsSNuuZv
	tuOBex3Q/RdwYR6n4yAF3PsEgebVjbYTov6mAO47xqJnohHfuECWktiJp9F7PxHBKorWaxMViWF
	yYLcUixYt3dLPoKSnGdtf3pbLMJpddC+VpTZV412KUe6fYAHKHdhS8
X-Google-Smtp-Source: AGHT+IFqhKM2PJT48YuPA9rXKH7Jp8+lFruZ6GLD8AePWoqqJeh2VVlVCxFXl1S1iXjh3vRhps00Xg==
X-Received: by 2002:a05:6000:230f:b0:42b:4223:e62a with SMTP id ffacd0b85a97d-42cc1cbe219mr20121309f8f.23.1764176674356;
        Wed, 26 Nov 2025 09:04:34 -0800 (PST)
Received: from ipedrosa-thinkpadx1carbongen12.rmtes.csb ([5.225.141.247])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-42cb7f2e574sm41252799f8f.3.2025.11.26.09.04.33
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 26 Nov 2025 09:04:33 -0800 (PST)
From: Iker Pedrosa <ikerpedrosam@gmail.com>
Date: Wed, 26 Nov 2025 18:03:51 +0100
Subject: [PATCH v5 3/3] MAINTAINERS: Add entry for Sitronix ST7920 driver
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20251126-st7920-v5-3-64eda5267d35@gmail.com>
References: <20251126-st7920-v5-0-64eda5267d35@gmail.com>
In-Reply-To: <20251126-st7920-v5-0-64eda5267d35@gmail.com>
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


