Return-Path: <devicetree+bounces-66763-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 853748C4846
	for <lists+devicetree@lfdr.de>; Mon, 13 May 2024 22:35:45 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 3EC9D286B1E
	for <lists+devicetree@lfdr.de>; Mon, 13 May 2024 20:35:44 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 46B4680025;
	Mon, 13 May 2024 20:35:41 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="lqsgXXBC"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-yw1-f169.google.com (mail-yw1-f169.google.com [209.85.128.169])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C478E7FBA1
	for <devicetree@vger.kernel.org>; Mon, 13 May 2024 20:35:39 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.169
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1715632541; cv=none; b=Z/aK3R4goxG/0R5jYheNR89Z2wKl9v34hdAVt7Tv8xRNEK0YnejtRY/d8sszgK/w7FwHwyW4hZES1B1QGpBszrUr3W8RjYJq5I1n70AMRNnfhO0ZKg7HmwscxXL0CLo0SFjTTIzDpB2zy3jrXFCHG6R7udTnmPWcvHakPzzrv2o=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1715632541; c=relaxed/simple;
	bh=K5gJymEU887CrNC6X289CM2zG0sNjhqiEQwzbLWQ8aI=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=p+YY7KmmMHKRSRzR8Pim2Z1n2/Afi1GdLaUmWxM7Qjdz/NCJrwgMnXPN+wLKwQE3eQ0Bbm4b+7AePApZwafZeQzn1sN6Gl6DCm41lqCo8Gr+W34F2lqgtxtYBLRS/OWGFdvKDJl4VoSXZWUhQziT5PfsXJ6eOyqX0uNh1MnCktA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=lqsgXXBC; arc=none smtp.client-ip=209.85.128.169
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-yw1-f169.google.com with SMTP id 00721157ae682-6153d85053aso36883707b3.0
        for <devicetree@vger.kernel.org>; Mon, 13 May 2024 13:35:39 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1715632539; x=1716237339; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=K5gJymEU887CrNC6X289CM2zG0sNjhqiEQwzbLWQ8aI=;
        b=lqsgXXBCWoP4mfkbmPLX3+Y7tKuuQbuE/7eQ0VgRM8xV2eLjdsJMqmKG6likQJwXlA
         6UCbAjQpNzs1YKL3uQfFcnrMWtX53p+/544o1p0JKxmTQw9jeTh3S3280k18a+ebrGhx
         CODiN3MR+ZQNmRXmqxhfUf0+pNg9AR+hoQvdOfBCVwQhaVcEQ60EnAZugayaDi2fRHRK
         EQnAX2iF3rQiAT4UgLuCXdNOTxhBfwDhSqVwA6nIAfK1pC/GY1QHphQoGOsFKJMZCOHq
         vHpMZlPbeasNM8TLICrV9VDvYRH0pubfgTdNYpjOg1JPM8S7nbECnpHtNy/IHKzqYQLB
         A6pw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1715632539; x=1716237339;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=K5gJymEU887CrNC6X289CM2zG0sNjhqiEQwzbLWQ8aI=;
        b=gxft1E7kfebIIpXFXLj/1ShG7wH9HRUlhc4oRfBkxal0Z9owxZRknmzaU/2pFXHupU
         wR6vMzSp0fBqQzV8y+I5uKvnZ6Dyk2+fFggWj52LnJPPoO2H775TC6p99rLlXQfH4VY/
         JRHz+DZZ2/VjcVR0La1e/lMhtQbpzqPSlLSl1lBkBuUZJXGWMNTqAH+g4TbsdTmdq92c
         BxfJxYHurzfKHiF9o3v9r34vUrHGNjIcMvRZtUPI5Pc9VaKrUjVzZ/ZsKWqG2IQcxMjh
         JK7JEgJx5hTHqYJ98uB32iXfHBFsCy6xZ3l5nE6Du1veaprUHM2z2Dk/sVh8cljjDg79
         8H3Q==
X-Forwarded-Encrypted: i=1; AJvYcCUJKfIL6IGaGoncTnQBQm301na2AA6q2PXBfPIoFdykO2uyXr3Lo5gRH9WTRBxbDdjwKcpKRa3iUpqlJbZhsZfuh/jLxhChZgvWcQ==
X-Gm-Message-State: AOJu0YzniUUCTr/hiWaQUQfJx5mtkK3BVHjDXT9FnpfBmwu6FsmcXHPp
	VK/JmKizKVH0Z5Rx9iFDiejIHZNYwKyuW/45PGaAW/jnu5U2lF8Hu+C65KF/DzWMTbGSkehRb14
	07o7FOzF35ylmkFbNeRQHb6qQWVNjbOxx8sviAg==
X-Google-Smtp-Source: AGHT+IHSl/yR0nTZcRlSe+ORPztjmoog4CRZc8k44qPEv4107dBUri0sSEMdFfUGHggaDXOsYQE07EPlHgu7P5eK1hg=
X-Received: by 2002:a0d:df16:0:b0:618:83a4:588e with SMTP id
 00721157ae682-622b013d333mr108562117b3.37.1715632537678; Mon, 13 May 2024
 13:35:37 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20240511021326.288728-1-yangcong5@huaqin.corp-partner.google.com> <20240511021326.288728-8-yangcong5@huaqin.corp-partner.google.com>
In-Reply-To: <20240511021326.288728-8-yangcong5@huaqin.corp-partner.google.com>
From: Linus Walleij <linus.walleij@linaro.org>
Date: Mon, 13 May 2024 22:35:27 +0200
Message-ID: <CACRpkdb0YQZsFY-uYFKLo_aqE_G4mQ+5mtiszDGsrgFz5R+CcQ@mail.gmail.com>
Subject: Re: [PATCH v6 7/7] drm/panel: himax-hx83102: Support for IVO t109nw41
 MIPI-DSI panel
To: Cong Yang <yangcong5@huaqin.corp-partner.google.com>
Cc: sam@ravnborg.org, neil.armstrong@linaro.org, daniel@ffwll.ch, 
	dianders@chromium.org, krzysztof.kozlowski+dt@linaro.org, robh+dt@kernel.org, 
	conor+dt@kernel.org, airlied@gmail.com, dmitry.baryshkov@linaro.org, 
	dri-devel@lists.freedesktop.org, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org, xuxinxiong@huaqin.corp-partner.google.com
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Sat, May 11, 2024 at 4:14=E2=80=AFAM Cong Yang
<yangcong5@huaqin.corp-partner.google.com> wrote:

> The IVO t109nw41 is a 11.0" WUXGA TFT LCD panel, use hx83102 controller
> which fits in nicely with the existing panel-himax-hx83102 driver. Hence,
> we add a new compatible with panel specific config.
>
> Signed-off-by: Cong Yang <yangcong5@huaqin.corp-partner.google.com>

Reviewed-by: Linus Walleij <linus.walleij@linaro.org>

Yours,
Linus Walleij

