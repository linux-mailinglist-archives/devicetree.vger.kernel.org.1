Return-Path: <devicetree+bounces-15429-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id F17307EA0D6
	for <lists+devicetree@lfdr.de>; Mon, 13 Nov 2023 17:03:33 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id A89831F219D0
	for <lists+devicetree@lfdr.de>; Mon, 13 Nov 2023 16:03:33 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id BB20C21A0E;
	Mon, 13 Nov 2023 16:03:28 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="kDS34w5v"
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3452721A06
	for <devicetree@vger.kernel.org>; Mon, 13 Nov 2023 16:03:27 +0000 (UTC)
Received: from mail-pg1-x52a.google.com (mail-pg1-x52a.google.com [IPv6:2607:f8b0:4864:20::52a])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 0E6C519E;
	Mon, 13 Nov 2023 08:03:26 -0800 (PST)
Received: by mail-pg1-x52a.google.com with SMTP id 41be03b00d2f7-5a0dc313058so184011a12.0;
        Mon, 13 Nov 2023 08:03:26 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1699891405; x=1700496205; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=e6fs4U3EuiOCWcnkxLSVua1cmgFH2XejQ66gyNNuofk=;
        b=kDS34w5vB2Lffn2w94ySwB2zirODaWSmmYUHJoyKmwFMVZKWkjKwH7mIKBopdLee3z
         NIAbBXpvAfJHjalanFlE1nUnbjSLsimejz9nuDuoFufTEYcbnQtrYTphlEVgYpr+eAs/
         aNdswru1Ka+vER1i+ywWKwOobbgs6viM2HoZeTPffhYRRNQ7Vt8iC1Crek+y6zUOK8Cs
         d9qMixvwhbxD8XSHTcVPZ61QmIZCc8HHvCTj/CF1UIcsNoChj3bhYSICQVDQn0479KDP
         Dk1ibw/v29dCVmkhqRlNSeZJwnaMk324kb6CumePuI0fiGlRF1eKsKgDZpj6OTLpLpkA
         m4vw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1699891405; x=1700496205;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=e6fs4U3EuiOCWcnkxLSVua1cmgFH2XejQ66gyNNuofk=;
        b=hIy6MxUUDLvERFbkQ3Bex/zsMmtxn7G+ka4RE3AIgUjaaT3Odfw6ETs6klXDSkOf66
         MH61safLDMk+Q757GyD0Omgnpp7MkAtKjl/XfIhShj00kmLk0/hjg407LY1HBxrGeI/W
         8IDr+dtuX7RSEmbuJcyfSwiVVeyuys0yo7ODs0qUJdPHYmmL5uhJc9h+5XVs5SP0Vxsm
         MYME+WVwuYPKVvgQAjcGMaGyg3CUsmEdfeoEnC6ryKYsv48TziHfr+WCeZBJ6BZnN4Ij
         I/8Spa113ail1ofZE5PlFvHBrX8l7OzHnsF3aZSTG6y44V2yjrSh3cIVp/0MpXXbtUaz
         vPFw==
X-Gm-Message-State: AOJu0YyCCBy6nQh2s5r0dcgioqTa+JA+wDpk/kPWFjjKuzwd66qeNcCP
	DGk02ABxjqruBvPmTx/XOSgi2+2zsurM9vKmvhE=
X-Google-Smtp-Source: AGHT+IFmZVE88ubrsq3V+lKNqdxzDVZdmqzunmZl+GGHrnLje2TDFtcharCMSB4KPMR2qYsUGoISMu726pMhFGaa6Fg=
X-Received: by 2002:a17:90a:e645:b0:280:259:435d with SMTP id
 ep5-20020a17090ae64500b002800259435dmr6538932pjb.4.1699891405324; Mon, 13 Nov
 2023 08:03:25 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20231006180453.2903342-1-festevam@gmail.com> <CAOMZO5CfW10dwVDYaHkvhTMKeHw38ZAt1kdH8qB=8AM=cqdHvw@mail.gmail.com>
 <83dbd835-c36e-4e7d-a5e4-c572e19c649d@linaro.org> <CAOMZO5BMfsGn+rZY-EYwchOtsrYUaSnnEKAaXpNjidrC2Yq5cA@mail.gmail.com>
In-Reply-To: <CAOMZO5BMfsGn+rZY-EYwchOtsrYUaSnnEKAaXpNjidrC2Yq5cA@mail.gmail.com>
From: Fabio Estevam <festevam@gmail.com>
Date: Mon, 13 Nov 2023 13:03:11 -0300
Message-ID: <CAOMZO5A6xkQ4uNUvF1Qg3iVx7mrsGFKfrk-Swpk+gY9qX3-9WQ@mail.gmail.com>
Subject: Re: [PATCH v10 1/4] dt-bindings: thermal-zones: Document critical-action
To: Daniel Lezcano <daniel.lezcano@linaro.org>
Cc: rafael@kernel.org, krzysztof.kozlowski+dt@linaro.org, robh+dt@kernel.org, 
	conor+dt@kernel.org, linux-pm@vger.kernel.org, devicetree@vger.kernel.org, 
	Fabio Estevam <festevam@denx.de>, Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hi Daniel,

Now that 6.7-rc1 is out, could you please consider taking this series?

Thanks

On Tue, Oct 17, 2023 at 9:37=E2=80=AFAM Fabio Estevam <festevam@gmail.com> =
wrote:
>
> Hi Daniel,
>
> On Sun, Oct 15, 2023 at 6:54=E2=80=AFPM Daniel Lezcano
> <daniel.lezcano@linaro.org> wrote:
>
> > > Are you happy with the v10 series?
> >
> > Yes, I think they are fine except one thing.
> >
> > The include/linux/reboot.h is changed along with thermal*.c file. IMO i=
t
> > is preferable to have separate patch, I mean all reboot.h changes folde=
d
> > in a single patch before the thermal_*.c changes. It is actually
>
> I tried to follow your suggestion of putting all reboot.h changes
> folded in a single patch before the thermal_*.c changes,
> but I don't think I can do this split and maintain a logic patch
> separation and bisectability.
>
> > orphaned and we should ask Matti Vaittinen <mazziesaccount@gmail.com>
> > its acked-by as he is the author of the code you are changing.
> > Otherwise, he will have to ack the patches which contain also thermal
> > code which is not its area.
>
> The reason I haven't added Matti on Cc on the series is that
> get_maintainer did not list him. Added him on Cc now.
>
> Maybe Matti could help acking patches 2/4 and 3/4?
>
> Full series:
>
> https://lore.kernel.org/linux-pm/20231006180453.2903342-1-festevam@gmail.=
com/
>
> https://lore.kernel.org/linux-pm/20231006180453.2903342-2-festevam@gmail.=
com/
>
> https://lore.kernel.org/linux-pm/20231006180453.2903342-3-festevam@gmail.=
com/
>
> https://lore.kernel.org/linux-pm/20231006180453.2903342-4-festevam@gmail.=
com/

