Return-Path: <devicetree+bounces-23537-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 73AFC80B81D
	for <lists+devicetree@lfdr.de>; Sun, 10 Dec 2023 00:39:06 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id A1D3E1C20803
	for <lists+devicetree@lfdr.de>; Sat,  9 Dec 2023 23:39:05 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 2FC0C1EA7E;
	Sat,  9 Dec 2023 23:39:02 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="KkhI5u2t"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-oo1-xc2a.google.com (mail-oo1-xc2a.google.com [IPv6:2607:f8b0:4864:20::c2a])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id C9606123
	for <devicetree@vger.kernel.org>; Sat,  9 Dec 2023 15:38:59 -0800 (PST)
Received: by mail-oo1-xc2a.google.com with SMTP id 006d021491bc7-58cf894544cso1914708eaf.3
        for <devicetree@vger.kernel.org>; Sat, 09 Dec 2023 15:38:59 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1702165139; x=1702769939; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=iAEzUkk0kLkDRJlJ+TUfuQi4C1RrkEwtDZIE9MYzNDQ=;
        b=KkhI5u2t5RhUQnKf6Ya7rLuCr3sE6ZXTzPF4Hi7BlZEh9irYzX8sb7wyl1UCeJaiLu
         WMzoqZOPBrLox3an53wUuKyb87Q2uYIIqSXJl6qmmp2hClbRuZ9jKNRxFAYlkUhmFG/I
         1IE62A/RzetboAHoPOV7IYql7D/lQgJGwMBa7jONfkVcrHlzCp7KFQGg6Q2uaG3hMtEg
         CM12bPXj/rk30tIcuqkk9WQ7Ohzr49Ii66jRATQSBqnRGjb1NyKdw7GJ7A8Pn/bVTyeU
         3AXWtbK3dqlAKuvWfNtZ6bO8mmgoADYRv9CZYDC49hE3uD1hORYeJ4fz4wxE5s/FM3PR
         XHvQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1702165139; x=1702769939;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=iAEzUkk0kLkDRJlJ+TUfuQi4C1RrkEwtDZIE9MYzNDQ=;
        b=Iqh9QJEr9mr4gSonBjPQchWt7IWhYib+Y7yYcYArQ55TMR/SIPYjrIDamc6GEPfrJl
         KWySGrq2XANWjcXEDf1AQ/VElSz+tQsxfv4vaL5vlSATWUAv2KYvVD9TH0Jpd+PfEEO7
         fc3cA2s07XqDvFDAlnBnW1NV06pcylcsdVCE1zXHJsf5bL3IYguYNzYbhX0KGs5ewT6y
         dvUxtu6fbCpclWBPNJuCKlmWWGBq8u9q3/JplUC+9D8PdDLwMPHyi6Ng2/WSwvcIbVXl
         aV2+I7Bij/mMdf5cJtCmrL0ouMKK0ryuJymwRFXstzj/iq1IVROszqXH+hQ4m1SSe5fS
         Z0xA==
X-Gm-Message-State: AOJu0YyXzY8O4EGEEV6rih/3sVQj6L4+30lHrG0OVN8Ed6TjLcRFTNbs
	bjvv7+W16LaNLlrk+pfy4F6rB5wsAz6OSVT+O864pQ==
X-Google-Smtp-Source: AGHT+IF7RMDK0uGNI+/IJvR4qUuQ3e4du1hRISXEDPoiQ5rBh9DcvbkyUjE4cenbjyrO+jkB4HfVhbofAm3cHS7ePtE=
X-Received: by 2002:a9d:7a57:0:b0:6d9:d6f9:359f with SMTP id
 z23-20020a9d7a57000000b006d9d6f9359fmr1783064otm.53.1702165139069; Sat, 09
 Dec 2023 15:38:59 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20231208154847.130615-1-macroalpha82@gmail.com> <20231208154847.130615-3-macroalpha82@gmail.com>
In-Reply-To: <20231208154847.130615-3-macroalpha82@gmail.com>
From: Linus Walleij <linus.walleij@linaro.org>
Date: Sun, 10 Dec 2023 00:38:47 +0100
Message-ID: <CACRpkdYHvwKT+3xO0MEDncxw8ZJJsfKnWUJdy9RucvncSgwztw@mail.gmail.com>
Subject: Re: [PATCH 2/3] dt-bindings: display: st7701: Add Anbernic RG-ARC panel
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
> The RG-ARC panel is a panel specific to the Anbernic RG-ARC. It is 4
> inches in size (diagonally) with a resolution of 480x640.
>
> Signed-off-by: Chris Morgan <macromorgan@hotmail.com>

Reviewed-by: Linus Walleij <linus.walleij@linaro.org>

Yours,
Linus Walleij

