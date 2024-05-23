Return-Path: <devicetree+bounces-68576-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 47BB48CCD1F
	for <lists+devicetree@lfdr.de>; Thu, 23 May 2024 09:38:13 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id EF2DB1F21250
	for <lists+devicetree@lfdr.de>; Thu, 23 May 2024 07:38:12 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 890FC13CA9C;
	Thu, 23 May 2024 07:38:04 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="F95qfjXL"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f43.google.com (mail-wr1-f43.google.com [209.85.221.43])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D735C13A3E3
	for <devicetree@vger.kernel.org>; Thu, 23 May 2024 07:38:02 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.43
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1716449884; cv=none; b=VtPtMSJzMdhJXNIdoEy0ALZkZ4/SdWOEJSu4cgHkvv8jbw0k8bl4O0+J4BthmB/bFGuXOIrDgf2GNhARDtDfACLr5LIoD3ZniWJusUv32+/QvMRxwrbBNL5oQf3llfOcPCJODsEPe7R6BLUJVV0N5E2f55O6y3VWmPSG7Oin0Sk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1716449884; c=relaxed/simple;
	bh=J2DG/3/GCMldpCtcfPH9RS5eOzOUlMSVGLLyw5WQIEw=;
	h=From:To:Cc:In-Reply-To:References:Subject:Message-Id:Date:
	 MIME-Version:Content-Type; b=WWFlgcOyQDvcgYF9lE6eBPotpTZa+AfajrJO7gUqsbZt8s8+JIHkro+qYAgUbua0a953pggzRdZL/BYHLswfIJpl54QlZA6SrBA/paK4S1govpEGsOQCbrFtZ7tDYXS2toJlClNiTKYfEHQUG0MdFp+DxY71MDZQrvEc3Lq86Po=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=F95qfjXL; arc=none smtp.client-ip=209.85.221.43
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wr1-f43.google.com with SMTP id ffacd0b85a97d-34f0e55787aso4793016f8f.2
        for <devicetree@vger.kernel.org>; Thu, 23 May 2024 00:38:02 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1716449881; x=1717054681; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:date:message-id:subject
         :references:in-reply-to:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=4O+SS1GsRMB8bjPXT+6PVKoi06ILz48Vqq1L93jlgPo=;
        b=F95qfjXLkXr8NYTHZPifLpVeBUkqfR2ZWlpDhe1C84DAa1MnQs4ui6a+tmYL3ND19n
         btiU7Uq+/J4BqGUvmj0XUCFESLuri12cx7yBMLWJbLcalyeZcppExhKMV7kMvI8qs2Ag
         t2K70eoS8Xm7rUVFiTfZZXkl3JsTHwRIF1fhe1O5cX6UtQITI4kx/eQ7lIQLvjCrmA6w
         MZ5gUq0Kewpz16ZxL87vqxVdjpmu90HQQCzoozHhGr2Em9u8BUATn5sIhdo0fBz+iR/y
         n2B538Y09EVIMDGK6FLK6EKQzEZBsZwO46R3mJGPxA2rcX5TvcSD3u2aCY8WBEwdfAgf
         wNuw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1716449881; x=1717054681;
        h=content-transfer-encoding:mime-version:date:message-id:subject
         :references:in-reply-to:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=4O+SS1GsRMB8bjPXT+6PVKoi06ILz48Vqq1L93jlgPo=;
        b=q0gFY6TXUlPHEdqqgDDX4sSGCR7UyVE0VOjad/MMUcL6dnOMGhVvN/lOMZTy3Y/4u+
         ez6MQD+L/80ZnxgTVEGfkvuwl1uHbhU8JUBIfpuzG1tBXfpTsNlCr0wKbGS0jN5qgX0v
         0RyY74Zg/ILpqiTBXQ5sHU/zNJa7m6RIQAqvqJa9/cEyEx/5HsUV5g7QsOgOdSVlq0aL
         ZfAHu8KE+W2ycQOLxZW5I6+p7U7ly1NaNvWOXCF+3bxWrfgTg70fYs9Fv+WDBZiphJBm
         H5k5JriBhemxuOTn3YE3BShtbf7Ph0lu52Ip/zCN0IsW3uxg70pyXg7bc+xc4DujalGW
         bi/g==
X-Forwarded-Encrypted: i=1; AJvYcCUftXZ/7o2A8C30NxsLDc5hXG8qhsbKmYTvXJJJu0cAYuu9b91gZIEwj//XJYj7TsIZxLJTbr/JboldA0kYlhaQzTaXL7sGIt2DIw==
X-Gm-Message-State: AOJu0Yxb74bDRltFLuy6bmZ0nfVfB+y3GPpMaS965Rx/lgvhadv3XrdM
	I47/qVcR61wUTrndB53P1KDqsYYMimHZlA/2sMwGvDzNM+zr44H3vK6aXQPoMMcYHaSxvcIBoJr
	w
X-Google-Smtp-Source: AGHT+IHK3gd8xnykZzZ98OHITQnyjeTmM56u8J6DJqBPYDwpo+keFdbr+WPnivHIFoDfG6N4ETBJbw==
X-Received: by 2002:adf:f50d:0:b0:354:fa69:aacb with SMTP id ffacd0b85a97d-354fa69ab18mr613176f8f.43.1716449881025;
        Thu, 23 May 2024 00:38:01 -0700 (PDT)
Received: from arrakeen.starnux.net ([2a01:e0a:982:cbb0:52eb:f6ff:feb3:451a])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-354fcf20f4csm282500f8f.47.2024.05.23.00.38.00
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 23 May 2024 00:38:00 -0700 (PDT)
From: Neil Armstrong <neil.armstrong@linaro.org>
To: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Jeffrey Hugo <jeffrey.l.hugo@gmail.com>, 
 Thierry Reding <thierry.reding@gmail.com>, Sam Ravnborg <sam@ravnborg.org>, 
 Dmitry Baryshkov <dmitry.baryshkov@linaro.org>, 
 Douglas Anderson <dianders@chromium.org>
Cc: Daniel Vetter <daniel@ffwll.ch>, David Airlie <airlied@gmail.com>, 
 Jessica Zhang <quic_jesszhan@quicinc.com>, 
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, 
 Maxime Ripard <mripard@kernel.org>, Thomas Zimmermann <tzimmermann@suse.de>, 
 devicetree@vger.kernel.org, dri-devel@lists.freedesktop.org, 
 linux-kernel@vger.kernel.org
In-Reply-To: <20240520153813.1.Iefaa5b93ca2faada269af77deecdd139261da7ec@changeid>
References: <20240520153813.1.Iefaa5b93ca2faada269af77deecdd139261da7ec@changeid>
Subject: Re: [PATCH] dt-bindings: display: Reorganize legacy eDP panel
 bindings
Message-Id: <171644988011.2016197.234222014770021280.b4-ty@linaro.org>
Date: Thu, 23 May 2024 09:38:00 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.13.0

Hi,

On Mon, 20 May 2024 15:38:17 -0700, Douglas Anderson wrote:
> Back in the day, we used to need to list the exact panel in dts for
> eDP panels. This led to all sorts of problems including a large number
> of cases where people listed a bogus panel in their device tree
> because of the needs of second sourcing (and third sourcing, and
> fourth sourcing, ...). Back when we needed to add eDP panels to dts
> files we used to list them in "panel-simple.yaml".
> 
> [...]

Thanks, Applied to https://gitlab.freedesktop.org/drm/misc/kernel.git (drm-misc-next)

[1/1] dt-bindings: display: Reorganize legacy eDP panel bindings
      https://gitlab.freedesktop.org/drm/misc/kernel/-/commit/bd0fc87d5adc8e3a0d6fb84c9ed3c77da1f1242d

-- 
Neil


