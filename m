Return-Path: <devicetree+bounces-13599-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 112877DF2D3
	for <lists+devicetree@lfdr.de>; Thu,  2 Nov 2023 13:51:29 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id D78191C20B0A
	for <lists+devicetree@lfdr.de>; Thu,  2 Nov 2023 12:51:27 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 2E454568A;
	Thu,  2 Nov 2023 12:51:24 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="AZbKVW02"
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 38D892FB6
	for <devicetree@vger.kernel.org>; Thu,  2 Nov 2023 12:51:20 +0000 (UTC)
Received: from mail-yw1-x112b.google.com (mail-yw1-x112b.google.com [IPv6:2607:f8b0:4864:20::112b])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 9C60012E
	for <devicetree@vger.kernel.org>; Thu,  2 Nov 2023 05:51:15 -0700 (PDT)
Received: by mail-yw1-x112b.google.com with SMTP id 00721157ae682-59e88a28b98so8057827b3.1
        for <devicetree@vger.kernel.org>; Thu, 02 Nov 2023 05:51:15 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1698929475; x=1699534275; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=9pU8l6Ru1lmyLGco+UhPIPJQZlA30Z+Oa9JgbnH5Dks=;
        b=AZbKVW0219z6rAdwYz6L4Xoh5ZTuSdZPFZecqQ+CTAHD0kFVyPYG5WCrqAU7GXuU69
         iHKyX+nn5IJfv8VJ6zsJH8NJAWzGRI8pcbu5Pf5+yRTHJGgTDhu1SVTy4JW22jYVelm3
         S2GC5N6br4nNJm601OGIDiTE41SMDW/gC+Mxrl3csQDtprKFqQ20jGUokq2MBNaUv3wm
         o3HLTGQcSO3CfmzILDt6bEU62ZfDEYJBAuxcZVSV1+qHpWdge+1PEJxSF2SU4VhOVISn
         fMT+FIWKmSdhYleoVOxwkGAlZyik0GLuo3r/DM8j8jOPbDxFKGba3D1tWUIKQWhm0PMB
         Wk3A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1698929475; x=1699534275;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=9pU8l6Ru1lmyLGco+UhPIPJQZlA30Z+Oa9JgbnH5Dks=;
        b=KrT/myCEpepIaoYTrvebkWGgaClQ3SMdgdg1PXzcGWtitNaNP8//hKSQCBnMyNT6rs
         Lwf3x2RoprtrAjGOmgGHnL4+pejz1ssfUbCtE3SgSI/dJjCUy27tIc9QJ5tEKIp9HOTS
         nRLfs2lmPAao2U1iQIz7yrapLDXzPCD/x5eGABNsUuzM90iyc6PL82FxldF0Lxxsyz5z
         TW8BIYk5kuImgAXtvbTiN63014QJBxGGFAHJQdHWrG9SbrlsRM6Vd5UZTtH4rrqHDLmb
         zj8S0zSCrLHaQ+D/k6AeGs1m5qTnhJt6Kjycn6KwGfIuOXImzfWCOZ7FXJlXviwCTGCe
         LdLw==
X-Gm-Message-State: AOJu0Yz9Wu+QX6FDZPgIq5PWzing4rorVCpjzZNmMkQS/U0HK0qBmLHD
	tDOnso7MtI6Jm/AR88Twh2DIeYcCeBkg9Gx9QSROfA==
X-Google-Smtp-Source: AGHT+IGRkYgLvFHHFjBhSWduql5eL+9bAHhVMQTgHxjzn6sHcDECaO2Lh/+qYRAoq7rT1SgPFNKls6mPJcZrLdU2ueU=
X-Received: by 2002:a81:ac64:0:b0:5af:97b6:9def with SMTP id
 z36-20020a81ac64000000b005af97b69defmr4708633ywj.24.1698929474829; Thu, 02
 Nov 2023 05:51:14 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20231030072337.2341539-2-contact@jookia.org> <20231030072337.2341539-3-contact@jookia.org>
In-Reply-To: <20231030072337.2341539-3-contact@jookia.org>
From: Linus Walleij <linus.walleij@linaro.org>
Date: Thu, 2 Nov 2023 13:51:03 +0100
Message-ID: <CACRpkdbm5KYj8KWNQJ20jq7XLbW-_ykX1_t=kse9-otB1FSPSQ@mail.gmail.com>
Subject: Re: [RFC PATCH v4 1/7] drm/panel: nv3052c: Document known register names
To: John Watts <contact@jookia.org>
Cc: dri-devel@lists.freedesktop.org, 
	Neil Armstrong <neil.armstrong@linaro.org>, Jessica Zhang <quic_jesszhan@quicinc.com>, 
	Sam Ravnborg <sam@ravnborg.org>, Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, 
	Maxime Ripard <mripard@kernel.org>, Thomas Zimmermann <tzimmermann@suse.de>, 
	David Airlie <airlied@gmail.com>, Daniel Vetter <daniel@ffwll.ch>, Rob Herring <robh+dt@kernel.org>, 
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, Conor Dooley <conor+dt@kernel.org>, 
	Heiko Stuebner <heiko@sntech.de>, Bjorn Andersson <andersson@kernel.org>, 
	Chris Morgan <macromorgan@hotmail.com>, Jagan Teki <jagan@edgeble.ai>, 
	Paul Cercueil <paul@crapouillou.net>, Christophe Branchereau <cbranchereau@gmail.com>, 
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Mon, Oct 30, 2023 at 8:24=E2=80=AFAM John Watts <contact@jookia.org> wro=
te:

> Many of these registers have a known name in the public datasheet.
> Document them as comments for reference.
>
> Signed-off-by: John Watts <contact@jookia.org>
> Reviewed-by: Jessica Zhang <quic_jesszhan@quicinc.com>

This makes things better so:
Reviewed-by: Linus Walleij <linus.walleij@linaro.org>

Yours,
Linus Walleij

