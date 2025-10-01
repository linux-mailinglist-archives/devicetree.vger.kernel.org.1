Return-Path: <devicetree+bounces-222916-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 26970BAF64B
	for <lists+devicetree@lfdr.de>; Wed, 01 Oct 2025 09:24:34 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id D1FA04A359F
	for <lists+devicetree@lfdr.de>; Wed,  1 Oct 2025 07:24:32 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 5270C24290D;
	Wed,  1 Oct 2025 07:24:28 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="pLD4xT+Q"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f43.google.com (mail-wm1-f43.google.com [209.85.128.43])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 85C962264CD
	for <devicetree@vger.kernel.org>; Wed,  1 Oct 2025 07:24:26 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.43
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759303468; cv=none; b=evc4Xk6iAbSHQST83vy1WEKOfUxhVIzXO4XINlv4PppH29ii5fukISacJpMJx1aKPH7w9/5DyU2iLHpHv6mYcARnh8KnFjXJ3toZeIQ6Hrb9UlHMm/go1Tv6OudppqsaYnakBhFwCdji9rIPa49mBLSjcAsmM7QRipnI/NXpNGc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759303468; c=relaxed/simple;
	bh=99waboYNJsgUn5GTMgbiFGdFWHm0pdppWzrt3+nNXUY=;
	h=From:To:Cc:In-Reply-To:References:Subject:Message-Id:Date:
	 MIME-Version:Content-Type; b=eOEOeUd6WS4OQsrmfNK0Vi8HDhdSfVxS3Hsr2Q9reN++YggSNB6K3Y2yTBytDonFXlM2qJjPZvgIvlM0EbvHLi9n33Baa0eru+8O0BfzNsmW0ju72SkFlb62aSuChzV3t54elKqThpMXLr/K1f8XPXUkOmnPAXvq3F2yKJfbTaQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=pLD4xT+Q; arc=none smtp.client-ip=209.85.128.43
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wm1-f43.google.com with SMTP id 5b1f17b1804b1-46e37d10ed2so65315365e9.2
        for <devicetree@vger.kernel.org>; Wed, 01 Oct 2025 00:24:26 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1759303465; x=1759908265; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:date:message-id:subject
         :references:in-reply-to:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=ZeCJ3SwyftHMw0airnJwEwlrbv4c6ebfFx7pe6MtVRo=;
        b=pLD4xT+Q0fnV0jcWD8eCth4ZVhP0p2udMvKlZBxfEqBu8AewNPMIsCOx0So2F7l0ZP
         5taZdXSnV/dImzIPU5eBxiEpG1l3Pek5WpnqYHVfelB9mJmmAcnhic3vKuGia5yksTLK
         NLL5RIQGaML6aWfejjchga+Ggf5xxVANl4bAcEONpm5cMObMtW3IVHPWQx6bVgY7dGhx
         oZUECuyTdaQgVA25VHIIfteDjMIFWzgMwwFqQj8laEKWztkp6bWkL6cwzVu8RkGupPqv
         zyK+UpxJ7H3PdfDFYRXeRAL3zVMwZDPJn9vYxeWp0GrXVo7NNA5yUgoiI1Pu+ylXnVQQ
         xy1A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1759303465; x=1759908265;
        h=content-transfer-encoding:mime-version:date:message-id:subject
         :references:in-reply-to:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=ZeCJ3SwyftHMw0airnJwEwlrbv4c6ebfFx7pe6MtVRo=;
        b=on/KUYYKeD4TAxW7aaVhXNT7vBk/FOrVa7Q0ERcIuVB76txldQbXnMwx6vNYH0QSdt
         RBu+JWeuHI+M/6/NNiskLwhUo3mxx4uVwdzTEiRdrze4ey4Ezci94HbvY/cc+OXtU7Du
         G9qA7b1+9ici2hAYtfwFgh+bMwGKoGKYybjAT77zBdE8MzL3hSoSsTkCP/MyIkQ5Xn4s
         LAl7hQuMYnRPygIXre7XwkF3zassD5Hv0WAyjDuVTiBL913XnA7XUIq5UeuudeeOwqXf
         kjk5AE1ef5m0afZuY9BJzZ10L8eEl1X/ahUbzccjCfZopq8i/zjkU+Wj3H5lXA/5Ry//
         Ew9w==
X-Forwarded-Encrypted: i=1; AJvYcCVJ59vnRsmvJVQ4oNc67YEzYOpzcBnDG6rWpuU0q7LqcQq4T/xMrvvU7cKNLjqDyv4kEvnSIXO03reL@vger.kernel.org
X-Gm-Message-State: AOJu0YzUR0H6dkmdqou2gmdkS/sLCs8jhwGD/MZTF8DXgtlWeegPmFhk
	j/vpyA+UrPvJhdvImuxBSoLKtYuHTn0BBASIUA+D8/zDv6laXf5Mm9Z+b13dBxBEUtA=
X-Gm-Gg: ASbGncu8KJeVOQr7Fa1Sjx6SiyjiGaJWX0u56n2qG7mpKo5Pl77UX0MQo/+Q+LYqDjj
	77vmkc7zWALp6Vmz32jGJrFMESnKJxYyZGCbC0MroMVpKLVMW6wFjUWVnaxBAFRbMdhYMKdmsSo
	4zFmwfD1ZhIZXVpakNFvLBKaLQzPX6YkUeQX4E1/WZgGcScCF4/DcsThKwhJg7iL65QFyg8pCif
	lVGIUCO7B8flaYPQU0DJbQp9wnyLDEkoIs8Zfq/bIbrcKiJKvjwGaKrDRPAx3IampUOaODFnt0C
	XqU3PJdF0/jDGIJSGyTR+MDYpAVtFo/gbY748KkWHHPEn0Y5tzzqcp9E6mbMHqbVq4yp/SXpJi8
	8fgtuXXQzOj6Alyk6hui9Hygfj5WrNLOdSWD03o1jFaNOItrEOfcWqCPnoijTa87PGBQ=
X-Google-Smtp-Source: AGHT+IEdl4XsbaJCInDt4HTeuo5oUgfE1ebcq3HCf1e90j8pjuSWVWqbjVTfAuHDD3TOxEbAqeiTMg==
X-Received: by 2002:a05:600c:3543:b0:45d:d68c:2a36 with SMTP id 5b1f17b1804b1-46e61281448mr18833445e9.27.1759303464618;
        Wed, 01 Oct 2025 00:24:24 -0700 (PDT)
Received: from arrakeen.starnux.net ([2a01:e0a:3d9:2080:8261:5fff:fe11:bdda])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-410f2007372sm25047153f8f.16.2025.10.01.00.24.23
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 01 Oct 2025 00:24:24 -0700 (PDT)
From: Neil Armstrong <neil.armstrong@linaro.org>
To: Jessica Zhang <quic_jesszhan@quicinc.com>, 
 David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>, 
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, 
 Maxime Ripard <mripard@kernel.org>, Thomas Zimmermann <tzimmermann@suse.de>, 
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Svyatoslav Ryhel <clamor95@gmail.com>
Cc: dri-devel@lists.freedesktop.org, devicetree@vger.kernel.org, 
 linux-kernel@vger.kernel.org
In-Reply-To: <20250912064253.26346-1-clamor95@gmail.com>
References: <20250912064253.26346-1-clamor95@gmail.com>
Subject: Re: (subset) [PATCH v2 0/2] DRM: panel: add support for Sharp
 LQ079L1SX01 panel
Message-Id: <175930346392.470940.890356781501046012.b4-ty@linaro.org>
Date: Wed, 01 Oct 2025 09:24:23 +0200
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

On Fri, 12 Sep 2025 09:42:51 +0300, Svyatoslav Ryhel wrote:
> Sharp LQ079L1SX01 panel is a LCD panel working in dual video mode found in
> Xiaomi Mi Pad (A0101).
> 

Thanks, Applied to https://gitlab.freedesktop.org/drm/misc/kernel.git (drm-misc-next)

[2/2] gpu/drm: panel: Add Sharp LQ079L1SX01 panel support
      https://gitlab.freedesktop.org/drm/misc/kernel/-/commit/306e6407ed96ca3dcae5e3dbec8cf207ea33fbee

-- 
Neil


