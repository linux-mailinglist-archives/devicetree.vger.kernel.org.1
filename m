Return-Path: <devicetree+bounces-15284-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 0F7327E97BA
	for <lists+devicetree@lfdr.de>; Mon, 13 Nov 2023 09:32:00 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id B89731F20F06
	for <lists+devicetree@lfdr.de>; Mon, 13 Nov 2023 08:31:59 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 953A315AF6;
	Mon, 13 Nov 2023 08:31:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="TUUb0S1Z"
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 45ADA1A587
	for <devicetree@vger.kernel.org>; Mon, 13 Nov 2023 08:31:52 +0000 (UTC)
Received: from mail-yw1-x112c.google.com (mail-yw1-x112c.google.com [IPv6:2607:f8b0:4864:20::112c])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id CEB02C7
	for <devicetree@vger.kernel.org>; Mon, 13 Nov 2023 00:31:49 -0800 (PST)
Received: by mail-yw1-x112c.google.com with SMTP id 00721157ae682-5a81ab75f21so47749417b3.2
        for <devicetree@vger.kernel.org>; Mon, 13 Nov 2023 00:31:49 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1699864309; x=1700469109; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=nZWJLT+FmATC6Dn3e6/yFxDq3bmMEZ1shNqxAugejZQ=;
        b=TUUb0S1ZP7bpAtrOYFWZ5H6ozSeypmjTPS3u3pt4hjP+7feMzzLK45+lz5dPcGu3Le
         y34alKr5GuBXhkoLKBw5fg0LXE4YldPA1OvjK0CSAOGVM/rbvu+plzLILj5FFtMDHinT
         vtvr3H+vhF4Fhuh4kKyYsnl0FFVBgpAit3Uljtrvch43orT0hF2VF122nzcSx0NphtXL
         VgjTciIEsIcXKQrCltOwY2qLRIRh4gDf0gY3xg6lar1puYhjfQfgdRCCYJTOh8JoMNZQ
         NpSkiQSsMSI32TwY2C+1XmBARzK+ar3w2KVczJw6Xk4pzO5MLbxlW0Fn0EWas4uAi7XK
         KVfw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1699864309; x=1700469109;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=nZWJLT+FmATC6Dn3e6/yFxDq3bmMEZ1shNqxAugejZQ=;
        b=VEfVtg6/AYDARsG23vIi5QYgmjNoUsI0mLJsQC5nZIgurmu17/8wnprSP7tRCMgRSc
         7xJKxtt+Rcy8anLBNAEEeiBzF3l+4dbAD5bO6LfPs81YLAJiA26TGzRVcnIf6d/HxcSk
         T4PQ4xPW9lbPpvYI0kGJQjWGziaqousDp4OVFOjGWi7+UHUEZlCXj/Pj2SC+cqVsyA9R
         mw471SbIi6P3GIqZBZIXeiAYkmf7xRRINZexFZF18Rrny9itqKLxmI7wAcTmyELoT9N9
         9Y4RC5hwVP0xlptnQBmbNztLJ0GugtmgFLyZmohxCyW7wvIoq7/OZv9C49i/gx2dJmy/
         TXZA==
X-Gm-Message-State: AOJu0Yy6q9qAFrfs6F0tujDiYL2EUEkQe6xhluH0299BVcfB1FF2Q0h5
	9jlo8sJazxmDVNYrP0auhdVIWcrnlLPNqV4PgcGN7A==
X-Google-Smtp-Source: AGHT+IG6qna+ij3rHcycFQVFjnQdjyYqM/eVCXJO5DVLm1KRTfujo8Eu/0aNWVNyRCqnx7KfnxU1iXt/wpNaD4TDMC8=
X-Received: by 2002:a81:5342:0:b0:5a1:e4bf:ee5a with SMTP id
 h63-20020a815342000000b005a1e4bfee5amr6053863ywb.41.1699864309046; Mon, 13
 Nov 2023 00:31:49 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20231111215647.4966-1-luizluca@gmail.com> <20231111215647.4966-2-luizluca@gmail.com>
In-Reply-To: <20231111215647.4966-2-luizluca@gmail.com>
From: Linus Walleij <linus.walleij@linaro.org>
Date: Mon, 13 Nov 2023 09:31:37 +0100
Message-ID: <CACRpkdaUN4AVDJ_zTyxguiArrEd5w6UocZqQWTtfh42PE0ciog@mail.gmail.com>
Subject: Re: [RFC net-next 1/5] dt-bindings: net: dsa: realtek: reset-gpios is
 not required
To: Luiz Angelo Daros de Luca <luizluca@gmail.com>
Cc: netdev@vger.kernel.org, alsi@bang-olufsen.dk, andrew@lunn.ch, 
	vivien.didelot@gmail.com, f.fainelli@gmail.com, olteanv@gmail.com, 
	davem@davemloft.net, kuba@kernel.org, pabeni@redhat.com, robh+dt@kernel.org, 
	krzk+dt@kernel.org, arinc.unal@arinc9.com, devicetree@vger.kernel.org, 
	Rob Herring <robh@kernel.org>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Sat, Nov 11, 2023 at 10:57=E2=80=AFPM Luiz Angelo Daros de Luca
<luizluca@gmail.com> wrote:

> The 'reset-gpios' should not be mandatory. although they might be
> required for some devices if the switch reset was left asserted by a
> previous driver, such as the bootloader.
>
> Signed-off-by: Luiz Angelo Daros de Luca <luizluca@gmail.com>
> Cc: devicetree@vger.kernel.org
> Acked-by: Ar=C4=B1n=C3=A7 =C3=9CNAL <arinc.unal@arinc9.com>
> Acked-by: Rob Herring <robh@kernel.org>

Reviewed-by: Linus Walleij <linus.walleij@linaro.org>

Yours,
Linus Walleij

