Return-Path: <devicetree+bounces-30619-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id ABD87828652
	for <lists+devicetree@lfdr.de>; Tue,  9 Jan 2024 13:54:56 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 4D3071F248E5
	for <lists+devicetree@lfdr.de>; Tue,  9 Jan 2024 12:54:51 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 171C0381D5;
	Tue,  9 Jan 2024 12:54:46 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=amarulasolutions.com header.i=@amarulasolutions.com header.b="BtLss2aG"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-yb1-f177.google.com (mail-yb1-f177.google.com [209.85.219.177])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B556126AF7
	for <devicetree@vger.kernel.org>; Tue,  9 Jan 2024 12:54:44 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=amarulasolutions.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=amarulasolutions.com
Received: by mail-yb1-f177.google.com with SMTP id 3f1490d57ef6-dbd715ed145so1897408276.1
        for <devicetree@vger.kernel.org>; Tue, 09 Jan 2024 04:54:44 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=amarulasolutions.com; s=google; t=1704804883; x=1705409683; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=uINQIAiQq6opaJwfh+dSsKqfttMGu6VRZEEKvqx2fC4=;
        b=BtLss2aGfAjKNOe2k2r/c6vQK9O9bJsqDZQc+FGNtDGSYMfnJfyX1jkriDbGXJz2yh
         7PeFvSmdaBLCDKy0Fj86EJE7jZM55kDmaY/mm6TJ6yWK8VrQdBP6skf2ElamtXnxqXAH
         jw9oCrp83FHmUPo+TNckUzEOuKKo4pcDUo3Yw=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1704804883; x=1705409683;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=uINQIAiQq6opaJwfh+dSsKqfttMGu6VRZEEKvqx2fC4=;
        b=km3KklICoGc5NHvTYKDOFXGfbuvw2pJYHvmVZ1YW3PIgX+8W26RHsrqz+1iv17IgZd
         rBpSj9nwD26ZBOzZa1ISzzCNqo+MyEfnyAxuKz0hTi6Ij2MjZja2XewHm0ry76UwMEjA
         6rauxh8erA82yIoJ4uS0Zo0YFk+zrE/snAPmL6l3V3WnOFH5u8QbcDTaHJRQK/88S059
         U47rc1EsIoGoIVXIRUT29QOJTgWzyYa2DvssdlHjF9Qs/0gJYy6CIh6QULH5lzzqFBMD
         fU6r6TwtF/IdPTBhsD/iY9iOKkiL9kDodeB/2gfqKv0E5d2C5mUHhoM4rg1i8JNt/H1Z
         Q+NA==
X-Gm-Message-State: AOJu0Ywr9uoqcUxOSy5EnAvlP6s4gGmT9f4iVb7Z+cwhXSvUZDRpqbmM
	D4o/z5FV2X9kEOuSu5kz7qWgpxEHlk8NNp6bzRu9ve1tjpP5YQ==
X-Google-Smtp-Source: AGHT+IFx65iGUYcVspn/xUO0KxzMABmp//fRhiLdAyGbwggiEorVZIYs2zzC9P5dcI/pwcKtYSoedhuuhdimn6SekEM=
X-Received: by 2002:a25:9b41:0:b0:dbe:d45d:1253 with SMTP id
 u1-20020a259b41000000b00dbed45d1253mr2578201ybo.92.1704804882276; Tue, 09 Jan
 2024 04:54:42 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20240108201618.2798649-1-dario.binacchi@amarulasolutions.com>
 <20240108201618.2798649-6-dario.binacchi@amarulasolutions.com> <CACRpkdb73Qrs6MuiC427f=RnyD=rydH_4xVhBx-2bS8bX0mJCw@mail.gmail.com>
In-Reply-To: <CACRpkdb73Qrs6MuiC427f=RnyD=rydH_4xVhBx-2bS8bX0mJCw@mail.gmail.com>
From: Dario Binacchi <dario.binacchi@amarulasolutions.com>
Date: Tue, 9 Jan 2024 13:54:31 +0100
Message-ID: <CABGWkvq0kbjDZTZj-PN+Sj3jo7SAx0G5PcTeA9KDfceh4D8_yw@mail.gmail.com>
Subject: Re: [PATCH v5 5/8] dt-bindings: nt35510: add compatible for FRIDA FRD400B25025-A-CTK
To: Linus Walleij <linus.walleij@linaro.org>
Cc: linux-kernel@vger.kernel.org, linux-amarula@amarulasolutions.com, 
	Alexandre Torgue <alexandre.torgue@foss.st.com>, 
	Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>, Conor Dooley <conor+dt@kernel.org>, 
	Daniel Vetter <daniel@ffwll.ch>, David Airlie <airlied@gmail.com>, 
	Jessica Zhang <quic_jesszhan@quicinc.com>, 
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, 
	Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, Maxime Ripard <mripard@kernel.org>, 
	Neil Armstrong <neil.armstrong@linaro.org>, Rob Herring <robh+dt@kernel.org>, 
	Sam Ravnborg <sam@ravnborg.org>, Thomas Zimmermann <tzimmermann@suse.de>, devicetree@vger.kernel.org, 
	dri-devel@lists.freedesktop.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hi Linus,

On Tue, Jan 9, 2024 at 1:51=E2=80=AFPM Linus Walleij <linus.walleij@linaro.=
org> wrote:
>
> Hi Dario,
>
> do you want me to apply patches 5,7,8 to the dri-misc
> tree?
>
> Yours,
> Linus Walleij

Yes, I would appreciate that very much.

Thanks and Regards,
Dario Binacchi

--=20

Dario Binacchi

Senior Embedded Linux Developer

dario.binacchi@amarulasolutions.com

__________________________________


Amarula Solutions SRL

Via Le Canevare 30, 31100 Treviso, Veneto, IT

T. +39 042 243 5310
info@amarulasolutions.com

www.amarulasolutions.com

