Return-Path: <devicetree+bounces-15285-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 9C2627E97BF
	for <lists+devicetree@lfdr.de>; Mon, 13 Nov 2023 09:32:16 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 52C1B1F20C96
	for <lists+devicetree@lfdr.de>; Mon, 13 Nov 2023 08:32:16 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B146E11739;
	Mon, 13 Nov 2023 08:32:14 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="aD2DceTf"
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5EDBE15AD6
	for <devicetree@vger.kernel.org>; Mon, 13 Nov 2023 08:32:13 +0000 (UTC)
Received: from mail-yw1-x1129.google.com (mail-yw1-x1129.google.com [IPv6:2607:f8b0:4864:20::1129])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 98BD710FE
	for <devicetree@vger.kernel.org>; Mon, 13 Nov 2023 00:32:10 -0800 (PST)
Received: by mail-yw1-x1129.google.com with SMTP id 00721157ae682-5a90d6ab962so47789487b3.2
        for <devicetree@vger.kernel.org>; Mon, 13 Nov 2023 00:32:10 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1699864330; x=1700469130; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=e5RhQuqUMzfDx7JDb+rvZDUKhjMs57hmakWUyLzhVB0=;
        b=aD2DceTfirlKCdZsENDFV6jt1H0sEqP29XGB4VQTebLGj+bJ+xkBscVtbYG9YFZCS0
         7kxJ2u1pBERZczyI2wzKHbYcNy7KHGZJ/1NoqCM9Ra6X8YwU0NbJGmO2mZg/4Mgn5l69
         DLDXd49YZxi8F2ECJsjCKzbZYyPyaa2IBXQrcGaX/SVZN9u8OYKacBh9ZuLQyJG1eh8y
         Utuc4/CJPJDIiWGLwbnec37/Or8w3iL+Js2rmjGZkurHjp2ja6T1BteEZct/ZHHWtV/5
         hn37Zdjx8hjPwqVQuNXJAPf92cPuw5iyxKX5fFyd1SprDkihdwrG4eiSma982Dz1GSuu
         vNBg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1699864330; x=1700469130;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=e5RhQuqUMzfDx7JDb+rvZDUKhjMs57hmakWUyLzhVB0=;
        b=uTJ09nVlSISzIiME9AN0wnkZlHS1uglI0Crm5xl9x3vCywaFys4N7Is8R4pSPrr6l1
         OP/oqrm77yGdlhqXzEnvuCobhFkyK018huihjm/M6XMUMlRwhOdLuPfenSV95P/V8DtP
         Fzdu9iRtZFAbmOnCfP4Fyo+za1MZh15vS44Plo1CG7uNUMl3p5ZC2HUorBqtOwakjN8C
         5ALLMNESofx3JaqUj1CLESgXmR99uH5FcsOl/eUU/fJ0b8VKNbk/dPqeO1S7Lt1hZXED
         1OFCYD4+w7aXhO/RWasVo5jOc4NpIzx95TFohFXwsfzPi7INM/1iUJFcUGRmAmYbgMRY
         /XYg==
X-Gm-Message-State: AOJu0YzhrreKSGUG4rvUlUuA3kPuWAx21HDvkEXtk/F/9P0IF4UpUYbr
	dqE6V0OTj01Blfn4DdAbiGsHlGjdRlpttCU3eW7Kmg==
X-Google-Smtp-Source: AGHT+IFoOMPln2PbxNGJR4jftpO3cO7ILtAVxAKMv9fBem0QbXXgFc4MSP+utlwiERVh1o0wSF5x19EyD282k1ysA08=
X-Received: by 2002:a25:c048:0:b0:d9a:401d:f5da with SMTP id
 c69-20020a25c048000000b00d9a401df5damr4989938ybf.51.1699864329851; Mon, 13
 Nov 2023 00:32:09 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20231111215647.4966-1-luizluca@gmail.com> <20231111215647.4966-3-luizluca@gmail.com>
In-Reply-To: <20231111215647.4966-3-luizluca@gmail.com>
From: Linus Walleij <linus.walleij@linaro.org>
Date: Mon, 13 Nov 2023 09:31:58 +0100
Message-ID: <CACRpkdZ3a2EGYe5DtHg2xO2o33vOOozU-wH-0_PZU0yrBjb41g@mail.gmail.com>
Subject: Re: [RFC net-next 2/5] dt-bindings: net: dsa: realtek: add reset controller
To: Luiz Angelo Daros de Luca <luizluca@gmail.com>
Cc: netdev@vger.kernel.org, alsi@bang-olufsen.dk, andrew@lunn.ch, 
	vivien.didelot@gmail.com, f.fainelli@gmail.com, olteanv@gmail.com, 
	davem@davemloft.net, kuba@kernel.org, pabeni@redhat.com, robh+dt@kernel.org, 
	krzk+dt@kernel.org, arinc.unal@arinc9.com, devicetree@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Sat, Nov 11, 2023 at 10:57=E2=80=AFPM Luiz Angelo Daros de Luca
<luizluca@gmail.com> wrote:

> Realtek switches can use a reset controller instead of reset-gpios.
>
> Signed-off-by: Luiz Angelo Daros de Luca <luizluca@gmail.com>
> Cc: devicetree@vger.kernel.org
> Acked-by: Ar=C4=B1n=C3=A7 =C3=9CNAL <arinc.unal@arinc9.com>

Reviewed-by: Linus Walleij <linus.walleij@linaro.org>

Yours,
Linus Walleij

