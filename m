Return-Path: <devicetree+bounces-66714-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 6FD9B8C4535
	for <lists+devicetree@lfdr.de>; Mon, 13 May 2024 18:41:57 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id E52EC1F22A1D
	for <lists+devicetree@lfdr.de>; Mon, 13 May 2024 16:41:56 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 777BA17565;
	Mon, 13 May 2024 16:41:52 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="xcR9JJ8m"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-yb1-f176.google.com (mail-yb1-f176.google.com [209.85.219.176])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E888015E89
	for <devicetree@vger.kernel.org>; Mon, 13 May 2024 16:41:50 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.219.176
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1715618512; cv=none; b=WdHVcfSrYSCvRfZNHnVbgTno80dgBdy8dd/V6KI/I/p9lNz5J4zLJWOY829os4Td9GHjh/SkiqQe1xOhn2c58q5KMVXLJto8DA02oibfErq7JvHwwRAbWpE95ilXCM75gk2wvLtbJXtJsHysaiYHi5Hvk54PYUsPgXaoFbEcj/A=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1715618512; c=relaxed/simple;
	bh=8mSDe/ImppLgPkyTNhXsgjTCK1PmL1zw0+0a6l1PJL8=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=e4zmlWLParIryOWlt61gaQWFixvjS6XI23dWk3pKqXxwK6gz71USqqlAz6eXAnmmSicVcqAGsP5w/jhtKXqOVpSP1AfZfQFrJrIwiQ95sd/ifME/hHIH0R9uCWZTvDEXiTQcuHtBJOv0uaMPW90r8DS/GdlTpKp4ZfPhZS9j7OA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=xcR9JJ8m; arc=none smtp.client-ip=209.85.219.176
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-yb1-f176.google.com with SMTP id 3f1490d57ef6-de462979e00so4898279276.3
        for <devicetree@vger.kernel.org>; Mon, 13 May 2024 09:41:50 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1715618510; x=1716223310; darn=vger.kernel.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=DH4khu6TurPS5qb0OEXIieAt+VWCVTM6kLpaEQH1DyY=;
        b=xcR9JJ8mq6CGmXUmnNPv1Seo9swsZNYS7znOnC2h69UGt5wj++0/YL/qizbfyTlOue
         kSVJ6y+0DqjqD0EK9p9n5nEvWhnKfnMbipvFDo6B0cYjG7RXmiF2VnFytyEA737ha/xC
         cbQO3e1YfgjjiasfnqKYKkaFuFenfO5DTmlBtXP7O1Xt5TALIy61oOxXrVJQgCSKtGXq
         RTHs2Lm+Zm9MPJd5zGOFQtGFHECuawzq5xPOIwgOm+v0iANuYQlpQotJfVer+mWp1N2T
         bqJrw/qzQ360CWbd/PINiSslX5V1XoaTnCBp9UctThCQK4gabxUOBaqn2Fcm5UYrEFUl
         Lk/Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1715618510; x=1716223310;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=DH4khu6TurPS5qb0OEXIieAt+VWCVTM6kLpaEQH1DyY=;
        b=DEA/GeS/z6hTijtCJ8zDa4RWI0ZL0VDbly2WWhXX23vpyV8qVaDIO+PMW+IwrxUHqb
         3qZr9A/gcFVVxYZhgOHZtB93zBZbpt6yK7/guQDYqkQ3gRVgZJg6s5Txi64jooL83gZj
         MS4NDJ+yt8UVw8Jslkm5w+mugITQwO8BPLeKkO+QOFpBVHgcDiWCybGO6wIz09KbLZl3
         +1zaDTmfHi/gW0Y+BBEnBYlMfB8d0Ma8+L9JVfo5mRPeimbSFc5YlUDx++RAPEE+ZsaS
         1+kKaTnA1LJ2LYzGF/QZAyYRQTSOYFMFd7t4jJ7WJWmaqPZsg5ZKUp8ZIehThUtkEkD7
         plQA==
X-Forwarded-Encrypted: i=1; AJvYcCU49SPMgVdHUKSGc8vVHnOca3MqpDvOTTYJw7N/XbB8Ht0/FQgf4X1qBdW6/XwF+8T0xRyFMn0nHkm8TJq/++iloW4uJxCpT4FPvA==
X-Gm-Message-State: AOJu0YzOMgA7oHB8z2bIv+oxuxzQDxxY63VhDpzndgMWQY9jY5tEcpkF
	2Kici0si124QhMLIJUbCiuK+vEok0KmCOimVq1ZOJNPhx6MQKwCIJyYwmqRT90KEGz/0FcJ923F
	OB2wBrCWQ8yHTIeqSkmW00LrQoPZIvzbkuqt2KQ==
X-Google-Smtp-Source: AGHT+IGq2C3XDhTaH0foAS493CYmJmGVWp1jeF0dF17vOTZlUltQhDhRhnjWctarnqxlh56yWFXuox8WxUwgr4RKcNc=
X-Received: by 2002:a05:6902:2401:b0:de6:1645:499a with SMTP id
 3f1490d57ef6-dee4f338380mr9928504276.30.1715618510038; Mon, 13 May 2024
 09:41:50 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20240509-dt-bindings-dsi-panel-reg-v1-0-8b2443705be0@linaro.org> <20240513131711.GA2419451-robh@kernel.org>
In-Reply-To: <20240513131711.GA2419451-robh@kernel.org>
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Date: Mon, 13 May 2024 19:41:39 +0300
Message-ID: <CAA8EJppkJ9rukeUZ=1kAL3Y0WVhN5QFXnNU3tjv4yuXMjc++7w@mail.gmail.com>
Subject: Re: [PATCH 0/3] dt-bindings: display: panel: constrain 'reg'
To: Rob Herring <robh@kernel.org>
Cc: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>, 
	Neil Armstrong <neil.armstrong@linaro.org>, Sam Ravnborg <sam@ravnborg.org>, 
	Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, Maxime Ripard <mripard@kernel.org>, 
	Thomas Zimmermann <tzimmermann@suse.de>, David Airlie <airlied@gmail.com>, Daniel Vetter <daniel@ffwll.ch>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Chris Morgan <macromorgan@hotmail.com>, Linus Walleij <linus.walleij@linaro.org>, 
	Laurent Pinchart <laurent.pinchart@ideasonboard.com>, Andrzej Hajda <andrzej.hajda@intel.com>, 
	Konrad Dybcio <konradybcio@gmail.com>, 
	Del Regno <angelogioacchino.delregno@somainline.org>, Heiko Stuebner <heiko@sntech.de>, 
	Luca Weiss <luca.weiss@fairphone.com>, Shawn Guo <shawn.guo@linaro.org>, 
	dri-devel@lists.freedesktop.org, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"

On Mon, 13 May 2024 at 16:17, Rob Herring <robh@kernel.org> wrote:
>
> On Thu, May 09, 2024 at 11:42:50AM +0200, Krzysztof Kozlowski wrote:
> > Hi,
> >
> > Cleanups for display panel bindings.
> >
> > Rob, maybe you could take entire set if it applies? I based it on
> > linux-next, so letl me know if I need to rebase on your for-next.
>
> Applied. These 2 don't exist in my tree:

It's most likely fine, but was there an ack from drm-misc maintainers?

> Documentation/devicetree/bindings/display/panel/lg,sw43408.yaml
> Documentation/devicetree/bindings/display/panel/raydium,rm69380.yaml

Because those were added to drm-misc during the last cycle. So ideally
the patch should have gone through drm-misc.

-- 
With best wishes
Dmitry

