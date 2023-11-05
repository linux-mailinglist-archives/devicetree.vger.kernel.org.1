Return-Path: <devicetree+bounces-13938-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id 039997E16CC
	for <lists+devicetree@lfdr.de>; Sun,  5 Nov 2023 22:20:06 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 9024BB20D1B
	for <lists+devicetree@lfdr.de>; Sun,  5 Nov 2023 21:20:04 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 77E3418B00;
	Sun,  5 Nov 2023 21:20:01 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="PSzxJfZl"
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0839FAD2A
	for <devicetree@vger.kernel.org>; Sun,  5 Nov 2023 21:19:59 +0000 (UTC)
Received: from mail-yw1-x1136.google.com (mail-yw1-x1136.google.com [IPv6:2607:f8b0:4864:20::1136])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 5697ACC
	for <devicetree@vger.kernel.org>; Sun,  5 Nov 2023 13:19:58 -0800 (PST)
Received: by mail-yw1-x1136.google.com with SMTP id 00721157ae682-5a82f176860so46066377b3.1
        for <devicetree@vger.kernel.org>; Sun, 05 Nov 2023 13:19:58 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1699219197; x=1699823997; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=ZLnVpTbQiwfXIg8wGXozHxE1Sjn0Em7Ol/PU3YKzMxA=;
        b=PSzxJfZldtV2UFVuZWEnHtxWTTUSXXSytm4p4pqguJPPvpOG/IacbnsC/zLbrsjWtP
         ht9BAjhqWis8GExRE6Ot+/2XxX250CCdlH/xjlbdK9iwF5M2LsAB7YPtSvMCv6nwjoCU
         zi9vrHPPKZ3HnUC4Fw9Ep5g10jiWidjJZSA09UZzVxALiJlE3W6DnpORkQ4uZXCgVUNF
         u3PBOrJ+to8hGb84wD9YBCNaDBWnAYP860FJvF2jPIrWy6vaAVyMmwxHxwdvkNOAJBZn
         IDoeP5H0hF//VB5sHQ/zBqk9Y4bup6Ma12RVIF0Imv/qDY/fc0VUFxrSeSnK+12UMVON
         kN9w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1699219197; x=1699823997;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=ZLnVpTbQiwfXIg8wGXozHxE1Sjn0Em7Ol/PU3YKzMxA=;
        b=M3pLeqo9zwEPjdVXUkJHs+d+cwXFXhY2qRTkEDBxE82F2PaeCyj225eQE4J7FSoqJc
         e78ZdIOcSAYTBvBFXY/CnrRNfovnxDny6zRifQKySoHMUHbJPhfnGUA9BisRKYZuXhkL
         eYHZbrasKM73kC00TlFtnZlsR874mBZVH7UCsXhLID0VgSMW2bfVAevM74Bmex4inuTG
         c7dIeWUzddP5ExzesekQsoSVDXOLDLNASG4CiurLhaJJaOXcfLmsp6Vv16WDhqLUnQHt
         uwtKr2Hzp+qArUignFB3+FvucQYkV6niqtUXQ31lgNlTWK1RwmVy9wh5OJQ0i3R2GIuI
         uPeQ==
X-Gm-Message-State: AOJu0Yxd5unJsBThWjBfEsM2dSXwsgnDesmypGVF9Z3DJWdfEcHIVH9N
	qB3xjtOnJa98UHbO0YGJ+5OhQzHoPRtn9Hg+JG8MMw==
X-Google-Smtp-Source: AGHT+IFPMLz9ALOoujwosu7oN9lqlUr2Y2o8wAtyxVnWRsqtayeiUj0yzzdPWV3JUUcn7AIOW0Vgrh8vqXn2WgXwZEY=
X-Received: by 2002:a0d:ca50:0:b0:5a8:e303:1db2 with SMTP id
 m77-20020a0dca50000000b005a8e3031db2mr9978764ywd.23.1699219197562; Sun, 05
 Nov 2023 13:19:57 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20231105204759.37107-1-bryant@mai.rs>
In-Reply-To: <20231105204759.37107-1-bryant@mai.rs>
From: Linus Walleij <linus.walleij@linaro.org>
Date: Sun, 5 Nov 2023 22:19:45 +0100
Message-ID: <CACRpkdYmJkaS5dA7RcSGpN3zS58vWE_BmUtidhbR0N3ZqpD9cg@mail.gmail.com>
Subject: Re: [PATCH 0/7] Add samsung-milletwifi
To: Bryant Mairs <bryant@mai.rs>
Cc: Andy Gross <agross@kernel.org>, Bjorn Andersson <andersson@kernel.org>, 
	Konrad Dybcio <konrad.dybcio@linaro.org>, Rob Herring <robh+dt@kernel.org>, 
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, Conor Dooley <conor+dt@kernel.org>, 
	Dmitry Torokhov <dmitry.torokhov@gmail.com>, linux-arm-msm@vger.kernel.org, 
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
	linux-input@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Sun, Nov 5, 2023 at 9:48=E2=80=AFPM Bryant Mairs <bryant@mai.rs> wrote:

> This series adds support for samsung-milletwifi, the smaller cousin
> to samsung-matisselte. I've used the manufacturer's naming convention
> for consistency.

The series looks very good to me:
Acked-by: Linus Walleij <linus.walleij@linaro.org>

I also see that DRM+panel is in the works for this interesting device,
which is great!

Yours,
Linus Walleij

