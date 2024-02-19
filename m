Return-Path: <devicetree+bounces-43377-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 3691C85A239
	for <lists+devicetree@lfdr.de>; Mon, 19 Feb 2024 12:41:40 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id EF359284BC0
	for <lists+devicetree@lfdr.de>; Mon, 19 Feb 2024 11:41:38 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D170B2CCD6;
	Mon, 19 Feb 2024 11:40:27 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="SzUg8fzu"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f41.google.com (mail-wm1-f41.google.com [209.85.128.41])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 100CF2C85F
	for <devicetree@vger.kernel.org>; Mon, 19 Feb 2024 11:40:25 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.41
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1708342827; cv=none; b=TfroI8jB2ByBPUMWZTLQJnoGX9EBHkontmrzSj38xNRhBY0sWKn1+FlFeSnCWhe9G8iaKAgXIOez89sBwcI3Ir4rCP/46jYPCKCAxCcAsgrGwR5gaAOC21EFldHrzax/o5eJNqqRJgVpnTBIkRbVgFeUlIT7jEGZG6JZK4eEqNM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1708342827; c=relaxed/simple;
	bh=jAfikdeogQCKPYBGMd82ir1U8guvvXXSoa10kQDkd84=;
	h=From:To:Cc:In-Reply-To:References:Subject:Message-Id:Date:
	 MIME-Version:Content-Type; b=QiS0iIU7ZNEHNmZXt9F6OKz7eO3+WIHaOQO//dVCdf+B4+/fmLxvdiCZtIcn+M9Uxf20wScw7o/AfQ6nXn8/LZ9Ln8fGZuV0q73lGiW7Q1T4rqK4IanWiXCogRqkNUxX0ALYgRh3cSd8j2DIepj9mdxVt993wK39LOpGqbCyt84=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=SzUg8fzu; arc=none smtp.client-ip=209.85.128.41
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wm1-f41.google.com with SMTP id 5b1f17b1804b1-41263dbdfeaso8478895e9.2
        for <devicetree@vger.kernel.org>; Mon, 19 Feb 2024 03:40:25 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1708342824; x=1708947624; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:date:message-id:subject
         :references:in-reply-to:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=cahpJDlTBvaPh1z0rb8s1H/VECGhkeYrXnAZOPffrYI=;
        b=SzUg8fzudbEIoQpWbmYN4lOUfT7CYkZxvoz4kBcxlf6Ztn3qt+EkADpCLb4JZw64HK
         0it2YwsyEYLYTK8i+4lofuzoNL+d21T7NpuEYjirF34e8pc8cl0Y58DjgXOeeYwx29UQ
         /dQiM/sZ4vzqAhf3JGG/TyOPKdo4ognedNwxAg10Jk1ZagmSiip1coo2m849XAIra1RK
         PxE+l8/f59FHDhAn734VAxzN/V6brjvLtnd7TnQxJKJAdl+dlFaGUP1UFXsSDqe4KchZ
         2myN5HvEmnP/0+xtGVWT3oLBpN+RaTfzlt/qU3WIU242kSzmdR1YqdEIZZr4dl9rStr4
         go7w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1708342824; x=1708947624;
        h=content-transfer-encoding:mime-version:date:message-id:subject
         :references:in-reply-to:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=cahpJDlTBvaPh1z0rb8s1H/VECGhkeYrXnAZOPffrYI=;
        b=ZIROcISE8HjIZY+dCwfRDU5AvwlxE6yqd142LH2yUVKksx7fDJs3FqvjzF8xms/KOm
         czAVWrHoFVlRc4e2k2b+piLHqxG/XRQHT3jP1HtNkXSF99AMq0kRiGe1pW1NGLbwlNFb
         OamtXEU3+3jjLtozECv765KNdDykFdfYAshEtsS/QEG5ix5pyOkMh3N3O8/2GE22rbyY
         IrbiNn5KyhNSFQivjf2Q+cJ0EdZUBDE/B2NawphjG9wp2D33YekIQuvg0l1kw9YjxCIm
         evFF6i6O3ZotBHinIdqtQwvLW7IMZMrlDrNG4qZwfKDqjlf/FJw1imisFYG1i+Fx2QxG
         VRiQ==
X-Forwarded-Encrypted: i=1; AJvYcCUNWF/oUC1pBtkb9GMmT7nDbhxtpdmabevfGzohRvXqBXFMZCRKnIO5QbRixeuAuMlduFj0VS5FNJxIz2khttPaX+WagPEmaK1CNQ==
X-Gm-Message-State: AOJu0YwzIGaFTRVZczQJ2VjySuPPuN6C1Wf64gMUobv5ZcR1DiZnCr6e
	7lRbwI7v+FIOEX1/2bLiaMeiheUDNXdkwrG0kZ++B6PrRrXAWprZ3j+0MM/zLaU=
X-Google-Smtp-Source: AGHT+IFWyWRBPHkoXku0bexMnodLRCpkZ/g2IsWgFuqrh7BOC5z6SYvdSOSACQc5UXXa84vyZN2yaw==
X-Received: by 2002:a05:600c:190f:b0:412:1998:e250 with SMTP id j15-20020a05600c190f00b004121998e250mr8490240wmq.27.1708342824470;
        Mon, 19 Feb 2024 03:40:24 -0800 (PST)
Received: from arrakeen.starnux.net ([2a01:e0a:982:cbb0:8261:5fff:fe11:bdda])
        by smtp.gmail.com with ESMTPSA id r2-20020a05600c35c200b004123b049f86sm11224164wmq.37.2024.02.19.03.40.23
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 19 Feb 2024 03:40:24 -0800 (PST)
From: Neil Armstrong <neil.armstrong@linaro.org>
To: Jessica Zhang <quic_jesszhan@quicinc.com>, 
 Sam Ravnborg <sam@ravnborg.org>, David Airlie <airlied@gmail.com>, 
 Daniel Vetter <daniel@ffwll.ch>, 
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, 
 Maxime Ripard <mripard@kernel.org>, Thomas Zimmermann <tzimmermann@suse.de>, 
 Rob Herring <robh+dt@kernel.org>, 
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, 
 Conor Dooley <conor+dt@kernel.org>, 
 Thierry Reding <thierry.reding@gmail.com>, Tony Lindgren <tony@atomide.com>
Cc: Conor Dooley <conor.dooley@microchip.com>, 
 Dmitry Baryshkov <dmitry.baryshkov@linaro.org>, 
 dri-devel@lists.freedesktop.org, devicetree@vger.kernel.org
In-Reply-To: <20240211111703.7567-1-tony@atomide.com>
References: <20240211111703.7567-1-tony@atomide.com>
Subject: Re: [PATCH v2 1/2] dt-bindings: display: simple: Add
 boe,bp082wx1-100 8.2" panel
Message-Id: <170834282359.1853972.279717039364187970.b4-ty@linaro.org>
Date: Mon, 19 Feb 2024 12:40:23 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.12.4

Hi,

On Sun, 11 Feb 2024 13:16:58 +0200, Tony Lindgren wrote:
> This panel is found on Motorola mapphone tablets mz607 to mz609.
> 
> 

Thanks, Applied to https://anongit.freedesktop.org/git/drm/drm-misc.git (drm-misc-next)

[1/2] dt-bindings: display: simple: Add boe,bp082wx1-100 8.2" panel
      https://cgit.freedesktop.org/drm/drm-misc/commit/?id=763955fd6c93ad46cdb8a0dc620e7855b1ad2fe8
[2/2] drm/panel: simple: Add BOE BP082WX1-100 8.2" panel
      https://cgit.freedesktop.org/drm/drm-misc/commit/?id=dc90214ff58be575fdceb549f901506cdef5d093

-- 
Neil


