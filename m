Return-Path: <devicetree+bounces-29079-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 41C3B821543
	for <lists+devicetree@lfdr.de>; Mon,  1 Jan 2024 21:48:02 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 50D6F1C20E52
	for <lists+devicetree@lfdr.de>; Mon,  1 Jan 2024 20:48:01 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 1B432DDD1;
	Mon,  1 Jan 2024 20:47:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="h+PLGXB3"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-qk1-f179.google.com (mail-qk1-f179.google.com [209.85.222.179])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D0AE7E556
	for <devicetree@vger.kernel.org>; Mon,  1 Jan 2024 20:47:46 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-qk1-f179.google.com with SMTP id af79cd13be357-78106c385a1so879950685a.0
        for <devicetree@vger.kernel.org>; Mon, 01 Jan 2024 12:47:46 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1704142066; x=1704746866; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=eMNhsLNc6JH9BXxdcz3QKLU0dw4+NL8hfWK4BqvCMdk=;
        b=h+PLGXB3ZzUIYpUXcjW980fiNaaArTH1uw3PQCnKjbY9hdFmPN1UgomjWosCBf1wI3
         ONmcZA6CBv16ddli5n5U6iODlEjtQuOK1uLYkhmxROtyDZyrSHDDqmPCbJPLCfjiq/mU
         xeHZWvf86RQt/J/f60O+BR9H+MU0otjrNQJPlqXJ6xkN2DRyXwxwQmLYfuh7YwJy0x0F
         v1aT1DYw2FpdnTYyixXeNn4XnSHzjeFMVRDC6N+bWN57/xyBUdWejfqSNwuZaqJvuaUw
         2B0rz8dqUT2mIH31Zoj/5m/FBEKGy7e63cGmSHrQqhYGb8tQDpT2jIoKornUfgGAtk24
         9oMw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1704142066; x=1704746866;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=eMNhsLNc6JH9BXxdcz3QKLU0dw4+NL8hfWK4BqvCMdk=;
        b=UAA1eueCnSdGdJ3c4D2cLcZMIqII0QvkANCVzNH2LecuuhgDdqo6cbqv60ERxZIbqf
         S6eguunwXDGnvh+hoT4OXmU6TOeX7WRSEcgRer8GqQBk4gebX+wBwNyAzPhhTkVO02XV
         kn+x6BJYmXM78AMixsCtHAzueqFJ8dz0j8vpxCLkiyKOZN8bk2tz08EdDEdREHhdsPgg
         GfypJIluI6Vy+O66n3bPXEntNDef7vMvCTmWe9L3Tam4PcBN7xDgU8/v/rlW+ZtbKBUx
         nzBk5iYf7VTgW3Ta9C8qPPOqMp7kDE21OvQZc6SyVIfqkcFtv7Ve2CDLSYFqdlJIWOZ7
         ytuA==
X-Gm-Message-State: AOJu0YydQVx11Od3jdQl5wHvRyfJb1HKKSVNrsN36pWvO7FZDVVdWJBf
	2dbZb84/eSgqFUusrJGhmJ4GbzLQbwyQf02zWSmCLBEVywuuVA==
X-Google-Smtp-Source: AGHT+IGMZWwx9wRdBBgtWnhlfZlEube5GQnbCSOBm+J8RbjRpT4yUEx7cGRRlsuthan29DxTW0sY1BWDFrfyh1/zX7Y=
X-Received: by 2002:a05:620a:55b4:b0:781:d96d:e132 with SMTP id
 vr20-20020a05620a55b400b00781d96de132mr426264qkn.157.1704142061002; Mon, 01
 Jan 2024 12:47:41 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20240101161601.2232247-1-dario.binacchi@amarulasolutions.com> <20240101161601.2232247-6-dario.binacchi@amarulasolutions.com>
In-Reply-To: <20240101161601.2232247-6-dario.binacchi@amarulasolutions.com>
From: Linus Walleij <linus.walleij@linaro.org>
Date: Mon, 1 Jan 2024 21:47:30 +0100
Message-ID: <CACRpkdZrbfVLNMxf9jXMJNEEtk242FW6msUHBBh+X99dNKS4Tg@mail.gmail.com>
Subject: Re: [PATCH v2 5/8] dt-bindings: nt35510: add compatible for FRIDA FRD400B25025-A-CTK
To: Dario Binacchi <dario.binacchi@amarulasolutions.com>
Cc: linux-kernel@vger.kernel.org, linux-amarula@amarulasolutions.com, 
	Alexandre Torgue <alexandre.torgue@foss.st.com>, Conor Dooley <conor+dt@kernel.org>, 
	Daniel Vetter <daniel@ffwll.ch>, David Airlie <airlied@gmail.com>, 
	Jessica Zhang <quic_jesszhan@quicinc.com>, 
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, 
	Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, Maxime Ripard <mripard@kernel.org>, 
	Neil Armstrong <neil.armstrong@linaro.org>, Rob Herring <robh+dt@kernel.org>, 
	Sam Ravnborg <sam@ravnborg.org>, Thomas Zimmermann <tzimmermann@suse.de>, devicetree@vger.kernel.org, 
	dri-devel@lists.freedesktop.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Mon, Jan 1, 2024 at 5:16=E2=80=AFPM Dario Binacchi
<dario.binacchi@amarulasolutions.com> wrote:

> The patch adds the FRIDA FRD400B25025-A-CTK panel, which belongs to the
> Novatek NT35510-based panel family.
>
> Signed-off-by: Dario Binacchi <dario.binacchi@amarulasolutions.com>

Reviewed-by: Linus Walleij <linus.walleij@linaro.org>

Yours,
Linus Walleij

