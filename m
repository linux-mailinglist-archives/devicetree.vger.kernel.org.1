Return-Path: <devicetree+bounces-24103-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 8E92C80DFA3
	for <lists+devicetree@lfdr.de>; Tue, 12 Dec 2023 00:44:48 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id BFDE71C21315
	for <lists+devicetree@lfdr.de>; Mon, 11 Dec 2023 23:44:47 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 6A3515676C;
	Mon, 11 Dec 2023 23:44:44 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="QXPXDSTV"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-yw1-x112c.google.com (mail-yw1-x112c.google.com [IPv6:2607:f8b0:4864:20::112c])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 6640ECD
	for <devicetree@vger.kernel.org>; Mon, 11 Dec 2023 15:44:41 -0800 (PST)
Received: by mail-yw1-x112c.google.com with SMTP id 00721157ae682-5d34f8f211fso49952257b3.0
        for <devicetree@vger.kernel.org>; Mon, 11 Dec 2023 15:44:41 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1702338280; x=1702943080; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=6RVJBGyb7KDt+DWNM94FQxNyr6g3td0PQu8dB0bx2xU=;
        b=QXPXDSTV9m0K9fjlFwIXLnL3Q1Brd039kIoE1JinA+HTf0zpzql1caFyKHYGkGO8GH
         zeCmy1pcvVUr3C67Ty2xaOimz+3Imcd8xisphmVDkF390KUnXwC4aiMFI59Fa7CZtOo1
         x2FsPUH6IwTuTOZMxgZHbT3UMPuO8UNjFUTRcNotJ4Tb/a7yBlE+w78CQqHMtdgJaDXC
         wrbK89UMYBSajaVNCmVeBT0RTAKFGSSyH3sFx138NebBRUzvzlAGuF3X8kfvN1K50VRr
         xN6RRI76yQ+Q0dW7cbNNic63221bCdkttLMw9LMjYMxC3/scMfzj8EArwZMne/uzsg6v
         fyAQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1702338280; x=1702943080;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=6RVJBGyb7KDt+DWNM94FQxNyr6g3td0PQu8dB0bx2xU=;
        b=t0iChDMnJiRXanzcvTR0KL4SNhbn3zzajpAWv5yQCL49UY7tKgT3gSmOhxTQ088kgC
         QjOULm0NJPq9DGrl/CeIfDPFJqV6zOak9NM3cf8z8xEYdTLTe6CToi3rvvgbUOTMb/NO
         9bPFGipJEUnjxQQrBndNQfuKlilRppfJoBNrN0rBuj3liRfg4Wo1+dGR869C1IDm2a6f
         R1TigxlSI3aKXAENjC99Oxg2bqgbnLaBAKK7WApm7yihyiSq2cz/YDlLrnN+zwWbEhPt
         8BmyzshyC0litoNTJYu0rfPyac+sKfbfPP2h/HUhU6kUdBu6uZZldiG4H1nlKoWEsH2Q
         obWw==
X-Gm-Message-State: AOJu0YyFtvWwssY+DIOxdKYO0jnZmOWYMuA3lZfqda28p/3WOrdzS1Mm
	prSxW6c6ZJqHNmaUK/mA/tg6Khy+o53eMLkxz+kwaA==
X-Google-Smtp-Source: AGHT+IEyKJfPen2idBJyGlQRrYCffdjX45gEK7aScGJl7Sg68pLPELr3kqR/22x39HE5L6tPCk6Sgz9u/32o2Qy+Eso=
X-Received: by 2002:a81:4fc1:0:b0:5d7:3748:9a1e with SMTP id
 d184-20020a814fc1000000b005d737489a1emr4109098ywb.4.1702338280615; Mon, 11
 Dec 2023 15:44:40 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20231208154847.130615-1-macroalpha82@gmail.com> <20231208154847.130615-4-macroalpha82@gmail.com>
In-Reply-To: <20231208154847.130615-4-macroalpha82@gmail.com>
From: Linus Walleij <linus.walleij@linaro.org>
Date: Tue, 12 Dec 2023 00:44:29 +0100
Message-ID: <CACRpkdYLDDDR_0XrCmTnOXbKt73u3-AVweD92fBiybukna-q8g@mail.gmail.com>
Subject: Re: [PATCH 3/3] drm/panel: st7701: Add Anbernic RG-ARC Panel Support
To: Chris Morgan <macroalpha82@gmail.com>
Cc: devicetree@vger.kernel.org, dri-devel@lists.freedesktop.org, marex@denx.de, 
	conor+dt@kernel.org, krzysztof.kozlowski+dt@linaro.org, robh+dt@kernel.org, 
	daniel@ffwll.ch, airlied@gmail.com, sam@ravnborg.org, 
	quic_jesszhan@quicinc.com, neil.armstrong@linaro.org, 
	jagan@amarulasolutions.com, Chris Morgan <macromorgan@hotmail.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Fri, Dec 8, 2023 at 4:48=E2=80=AFPM Chris Morgan <macroalpha82@gmail.com=
> wrote:

> From: Chris Morgan <macromorgan@hotmail.com>
>
> The Powkiddy RG-ARC is a series of 2 handheld devices, each with a 4
> inch 480x640 display. Add support for the display.
>
> Signed-off-by: Chris Morgan <macromorgan@hotmail.com>

Reviewed-by: Linus Walleij <linus.walleij@linaro.org>

Yours,
Linus Walleij

