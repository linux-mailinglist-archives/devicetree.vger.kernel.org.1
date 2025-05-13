Return-Path: <devicetree+bounces-176742-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id DFC53AB55EB
	for <lists+devicetree@lfdr.de>; Tue, 13 May 2025 15:24:15 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 6EEBF1B405F4
	for <lists+devicetree@lfdr.de>; Tue, 13 May 2025 13:24:28 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id EA7A028ECF5;
	Tue, 13 May 2025 13:24:10 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="DbwhB7RF"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-f45.google.com (mail-lf1-f45.google.com [209.85.167.45])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0FF1728ECC8
	for <devicetree@vger.kernel.org>; Tue, 13 May 2025 13:24:08 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.45
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747142650; cv=none; b=R6IlKC85r6YoiYKDRlZDSyORodSQttqxetWq/k1Nfpy/opgR6HHPR7ZGNH+Kr0QokyGsI5ARXc+kfY+taIAgNYQeGU3aZOvFPW2oyMa6zC6qM6f9hVnYIROqigNLP7KqbmjyKaQGZsmug4vcvqT6D/9NcvBKTWm5C6+Jq/GDmK8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747142650; c=relaxed/simple;
	bh=5eKxaIX3fw3jx/+XOFOXndB/4SjWjO6DJ61Rmj65mQw=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=t1FsRd7Fvn8C5Avi6mUCe9RQMePaoj60JxWvoqdhWu5Osk1phCuCcnagV4fyc6R1fUoAw/MKQifidX4wxRLQkHCVL1vLo1U03ybz1lfl3VHK51Uq28i8ZHNPod5vVlFLRDo6zbKt1FzTA5E9cHwn6O3klVX0X0g5FFiXIe8sCpg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=DbwhB7RF; arc=none smtp.client-ip=209.85.167.45
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lf1-f45.google.com with SMTP id 2adb3069b0e04-54e9021d2b5so8190982e87.1
        for <devicetree@vger.kernel.org>; Tue, 13 May 2025 06:24:08 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1747142647; x=1747747447; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=5eKxaIX3fw3jx/+XOFOXndB/4SjWjO6DJ61Rmj65mQw=;
        b=DbwhB7RF1JQqu3Vx8YErtq3rTPzu9DrvuTZHBpumUlQ9Fqckpe1d5klxFnDVlvW9a0
         mbStNuiJFw6GfBvu77Ue2MiUVYjGnhfDkvYoBPIMkNngWUkdhBZXjME64mxikNmE9Obl
         Bx6okDN+VXaiokTpeMVKPodEUSYw7zYVqSwGTEaDg0KBuIMuEVTI8rbJ6jNHXfC0JJNX
         dBwe8fYiS2PsBI2LA87kD88l/WduHaiVSySc6bJYyqGQwtAF0gt4vSo2bG7RupqrIt0i
         P4v1bE3w+K2sqOjV/XJOYUMhzq9cJZChC3eoTF8Ug7CPfW77rOzm6g3EUgOlE3oJw2G8
         PoGw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1747142647; x=1747747447;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=5eKxaIX3fw3jx/+XOFOXndB/4SjWjO6DJ61Rmj65mQw=;
        b=q7m6/L85PJL0DfOIiMVyqITKzg2bHFwnok+LjwVk7nUEjzomT5Ojlad35ODKkpoH+J
         dA6/VPqvuS23dxle2VudqD0qYay5ngej2uOQBXnAD4Jr3FeED8zzygjFR2iHtu9uQayy
         0haiqhyY0D7qq46TDshfxW9kxDk9mBn7WLxJQ0Zr4isZbDU/nb7IzoAr1KZPNG4IdGuJ
         S0tQc3wzhqJ9g5u/6XFtPBfyWHnIleemEhVVfcNamiMhtvd5jioWWlp4jZKBFDinYQ+a
         8caDvh/1AoSGAISPspxz0hpsQaDTAO3GlDQAbdZrnw9FE9M2gVEHMENyrIWBeARFz6ma
         KDug==
X-Forwarded-Encrypted: i=1; AJvYcCVT0dJmXskgAi3iZYcSIDVGH3n/YWCqYEL1E5kA6TVDi4MYjX2ISy/DSwKTQzFQZ0XN8XIdRZJ+SdjE@vger.kernel.org
X-Gm-Message-State: AOJu0Yy6jpw1Tern1lCyV3L7cAeMakKfFBpRLIRRHiTwKdyo4N96HgpB
	4RhqW3CwgA6/2/S2KcvmqljMX8dRz6hjQvDwwEZylbgT7zBBvfcHrQd/2Vef5yXhDNU/CE99APf
	qJi3nhJfrDeIz2WKbe/sfHBju/Gcysnfuf1ipCw==
X-Gm-Gg: ASbGncucMwTZIDhurcx3dGdegbaXXhRWsA2O8+eGJgrXRLqVssBBoE/lcT0Qoon8s2D
	lB7ns/dtW8nIJV468pdw3YCJzxBAhayFD6pVK73QV6f1z+tvbJM4laIg6S9WbyoelH0vn88H7v1
	HzFdz0M3Z/DbCz2gTAqbxa4fNHBHQcIGQo
X-Google-Smtp-Source: AGHT+IFQKowijPtKxWmuvEciX1nJf+TDzv0WZoqM/uKvRSmSrIT4h7hRJwXNUJZcQ/uYhV04L0dGE2029I5lSw65p/4=
X-Received: by 2002:a05:6512:2586:b0:54a:cc10:1050 with SMTP id
 2adb3069b0e04-550d0bc78b3mr1158871e87.15.1747142647002; Tue, 13 May 2025
 06:24:07 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20250509-max77759-mfd-v10-0-962ac15ee3ef@linaro.org> <20250509-max77759-mfd-v10-2-962ac15ee3ef@linaro.org>
In-Reply-To: <20250509-max77759-mfd-v10-2-962ac15ee3ef@linaro.org>
From: Linus Walleij <linus.walleij@linaro.org>
Date: Tue, 13 May 2025 15:23:55 +0200
X-Gm-Features: AX0GCFvUasElVjJYv3I7eVQPe0A6FsXnY_zILsVN3taTVIhvI167ZdVbaeRULuk
Message-ID: <CACRpkdZg0ZLcmGbFPqUmRpkw8DJYe5bY8yEDe5+KrnzTWxeXFQ@mail.gmail.com>
Subject: Re: [PATCH v10 2/3] gpio: max77759: add Maxim MAX77759 gpio driver
To: =?UTF-8?Q?Andr=C3=A9_Draszik?= <andre.draszik@linaro.org>
Cc: Lee Jones <lee@kernel.org>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Bartosz Golaszewski <brgl@bgdev.pl>, Srinivas Kandagatla <srini@kernel.org>, Kees Cook <kees@kernel.org>, 
	"Gustavo A. R. Silva" <gustavoars@kernel.org>, Peter Griffin <peter.griffin@linaro.org>, 
	Tudor Ambarus <tudor.ambarus@linaro.org>, Will McVicker <willmcvicker@google.com>, 
	kernel-team@android.com, linux-kernel@vger.kernel.org, 
	devicetree@vger.kernel.org, linux-gpio@vger.kernel.org, 
	linux-hardening@vger.kernel.org, 
	Bartosz Golaszewski <bartosz.golaszewski@linaro.org>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Fri, May 9, 2025 at 3:22=E2=80=AFPM Andr=C3=A9 Draszik <andre.draszik@li=
naro.org> wrote:

> The Maxim MAX77759 is a companion PMIC for USB Type-C applications and
> includes Battery Charger, Fuel Gauge, temperature sensors, USB Type-C
> Port Controller (TCPC), NVMEM, and a GPIO expander.
>
> This driver supports the GPIO functions using the platform device
> registered by the core MFD driver.
>
> Acked-by: Bartosz Golaszewski <bartosz.golaszewski@linaro.org>
> Signed-off-by: Andr=C3=A9 Draszik <andre.draszik@linaro.org>

Reviewed-by: Linus Walleij <linus.walleij@linaro.org>

Yours,
Linus Walleij

