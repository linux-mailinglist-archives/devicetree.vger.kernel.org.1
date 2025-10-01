Return-Path: <devicetree+bounces-222917-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 21A48BAF651
	for <lists+devicetree@lfdr.de>; Wed, 01 Oct 2025 09:24:38 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id CCDFF1695F5
	for <lists+devicetree@lfdr.de>; Wed,  1 Oct 2025 07:24:37 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 24BE025C822;
	Wed,  1 Oct 2025 07:24:29 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="FfaDakch"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f41.google.com (mail-wm1-f41.google.com [209.85.128.41])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 48C0F236453
	for <devicetree@vger.kernel.org>; Wed,  1 Oct 2025 07:24:27 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.41
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759303469; cv=none; b=L+kHx9VmUC9ClR5GFCPGcXw0suJMiGmX9fxQsn+CybQWwNaxi07k2ZJGmFuV9GpR2YL6NXWFXOkkVvpz0Jj8JZIT0z9QTVBkwHa/nI5KpVWxoqRq2ZohC8SUNz4bgSmeQebO61KjMkBigq2Ns6fPb4cDnSW88FmCy37qskvhQVc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759303469; c=relaxed/simple;
	bh=kBDp6gp7cB+TVpa/upMsL1ZsdFKVPjo6pPGY0xAhR/Q=;
	h=From:To:Cc:In-Reply-To:References:Subject:Message-Id:Date:
	 MIME-Version:Content-Type; b=UeNd7iDZKyq9pELF2lwTMyx73d4ihzzcTNciKuPVl3zUj3N1LdXgxq/2Q3t3zNjDC7Bqb1/N2yQC5UoKgaKAU3//joSkC/Ak99jqSfup1YaXxGL5dF5MmVZ2eWk5GMHPXg8+J6oT4kABfxhL/jmP9pUK2l6HmjiT3kfrG1Duy9g=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=FfaDakch; arc=none smtp.client-ip=209.85.128.41
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wm1-f41.google.com with SMTP id 5b1f17b1804b1-46e2e363118so65425385e9.0
        for <devicetree@vger.kernel.org>; Wed, 01 Oct 2025 00:24:26 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1759303465; x=1759908265; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:date:message-id:subject
         :references:in-reply-to:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=0JtxRzMZeL9v17nXRs0wb3R8qd1EOkfb8vMoEKaK0eQ=;
        b=FfaDakcht9hSFYCXNoMKBG+QPboW/B/Vc6F5DEOL0ddUuW9PsOFD2Qy/xErzHjv49V
         WOdKi5VX9fZXF1Euj8PVx5WDqJxvpXh+BpxcMtox/fwHGwnHnZ+2Hit1+sXwC0S9gA75
         jJY9RiHRzKkuXY/yAmmgqp+A7vQSZ2Fh8pD0Th2s2LyZRxb2euVgIUR00+t253uM3zdF
         Ughrgh4QocrzBSplbWQT3Hc1r7YGvPpi5r0Z5iWgzLEvr6Xcwl9GTfhpqkN1j6/xF+mY
         IkbYgwoGD7wyqnOb6fAtziN79+LoQ8MTjHVSaKUD+o/2ZEm0qzG/PV5WZhhJam7seLgx
         S3Ow==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1759303465; x=1759908265;
        h=content-transfer-encoding:mime-version:date:message-id:subject
         :references:in-reply-to:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=0JtxRzMZeL9v17nXRs0wb3R8qd1EOkfb8vMoEKaK0eQ=;
        b=a2PQ39EJYTZAzkaXN8IN7AEpYV+94lD5XV1urOEjM79PgjfdmH4c4EuJSP/vrWiY56
         NexEmoDnyXbquREUWC8Yj/4aq2pjz565glVue1B5E0mo9fWs3XnRvzFUQ2XJ6A4ukVje
         MuSEjrcfQIPoh2e91CTuz3VoXCpHsO7KAThU5HGP4oEYFs1ZqfhIwsE8tiiXqhjFZp6m
         GWYqXgYdIORYEWAsZLyc6CPH/luMljlirlcT6PjROhzXdmbynKO7HBnr5Ww3qhvAk2DL
         IQjktKuXWHlqtbs5xMyUuS83b2NnW1DFJbWubmEHc64Y2+lFNbs7IB73EuGmc8YEEDlB
         cSqA==
X-Forwarded-Encrypted: i=1; AJvYcCVszmN4ShpB1AjOoH2yTzL+sR9S2hqWTEuk1XRbVLmLFCBY6+IDNuQB/JNl9d8R4JKD6ZOyBOwqp9Pd@vger.kernel.org
X-Gm-Message-State: AOJu0YxrKU+vufhD+a6B075UX2Byh3UyUHeL9/6X/HmoiD2ka0YiPlGI
	bxw+fS8BAIBUkd0tLgZl4Ib6DvLo7q4sd/Ca0XuZmhQGzXHdzZV+a2zXaDZAWZfTa4w=
X-Gm-Gg: ASbGncupu612yO8QYVv7LoLYt5xmryi6viHG4+3Vk7xLJ4n9gEslVmPdE9kABJ/kLgq
	euBVONWNNaXcrjsoxInrm8pngDuGLbgzdQxaULbjynq+Is7dLAnpTbTb/4ra9mSlUDcmGn7A0Sa
	IHs30b1qtohxClKiPazjzevkdMU8/MftjbvJxrkpdL1nTMVvSYrPNrxU1Jus0OX+jZrItQEZLlt
	cglpEsb/GBXToG4W3T5HMI/7PW42FGzif1W80XZxtSyDdY/s0a1T6hah975ttWJeGpHQ+UZcA3s
	3vfg570MSOBl0mAkUPD0V9USGZa0XiQH6gpv1Nmo1/1WTw2WksmkD8badhSUtZ8/GNXXpDesvip
	tl0bSL8OIrp3PYxfS341UXrQl5GGQdb8wpNkagRVGMEO07ExcgGNKMOy/RX0es73I70s=
X-Google-Smtp-Source: AGHT+IE6yluUbRPj1Xf82URTt49n1XA+WrKyrXfFL4dmGKEG9ksoSO6w24jNnMA9btnzpoe9DeDppw==
X-Received: by 2002:a05:600c:3b08:b0:46e:4704:b01e with SMTP id 5b1f17b1804b1-46e612652d1mr22649105e9.8.1759303465411;
        Wed, 01 Oct 2025 00:24:25 -0700 (PDT)
Received: from arrakeen.starnux.net ([2a01:e0a:3d9:2080:8261:5fff:fe11:bdda])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-410f2007372sm25047153f8f.16.2025.10.01.00.24.24
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 01 Oct 2025 00:24:25 -0700 (PDT)
From: Neil Armstrong <neil.armstrong@linaro.org>
To: Jessica Zhang <quic_jesszhan@quicinc.com>, 
 David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>, 
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, 
 Maxime Ripard <mripard@kernel.org>, Thomas Zimmermann <tzimmermann@suse.de>, 
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Svyatoslav Ryhel <clamor95@gmail.com>
Cc: dri-devel@lists.freedesktop.org, devicetree@vger.kernel.org, 
 linux-kernel@vger.kernel.org
In-Reply-To: <20250919153839.236241-1-clamor95@gmail.com>
References: <20250919153839.236241-1-clamor95@gmail.com>
Subject: Re: [PATCH v3 0/2] DRM: panel: add support for Sharp LQ079L1SX01
 panel
Message-Id: <175930346477.470940.4121513970812142140.b4-ty@linaro.org>
Date: Wed, 01 Oct 2025 09:24:24 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.14.2

Hi,

On Fri, 19 Sep 2025 18:38:37 +0300, Svyatoslav Ryhel wrote:
> Sharp LQ079L1SX01 panel is a LCD panel working in dual video mode found in
> Xiaomi Mi Pad (A0101).
> 

Thanks, Applied to https://gitlab.freedesktop.org/drm/misc/kernel.git (drm-misc-next)

[1/2] dt-bindings: display: panel: document Sharp LQ079L1SX01 panel
      https://gitlab.freedesktop.org/drm/misc/kernel/-/commit/16c5b1a63623da251ae842b45fe10263d33bf71c
[2/2] gpu/drm: panel: Add Sharp LQ079L1SX01 panel support
      https://gitlab.freedesktop.org/drm/misc/kernel/-/commit/306e6407ed96ca3dcae5e3dbec8cf207ea33fbee

-- 
Neil


