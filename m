Return-Path: <devicetree+bounces-227248-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from dfw.mirrors.kernel.org (dfw.mirrors.kernel.org [142.0.200.124])
	by mail.lfdr.de (Postfix) with ESMTPS id DF6B3BDFE9F
	for <lists+devicetree@lfdr.de>; Wed, 15 Oct 2025 19:41:31 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.mirrors.kernel.org (Postfix) with ESMTPS id 840CB4FB0B3
	for <lists+devicetree@lfdr.de>; Wed, 15 Oct 2025 17:40:34 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 10B0B2FF16D;
	Wed, 15 Oct 2025 17:40:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=google.com header.i=@google.com header.b="mTydd8Ii"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pl1-f182.google.com (mail-pl1-f182.google.com [209.85.214.182])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 661752FDC30
	for <devicetree@vger.kernel.org>; Wed, 15 Oct 2025 17:40:31 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.214.182
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760550033; cv=none; b=i73Ydq6csNTJqq95eF3FAC1wBzsAMxit1+yzaKqr4JQMQkhalr8wRpltms56dGvEk7qbCpZr0q67oSGh3fVzZ7EP/nOvWYwssOCmtuDRPq80dANf1V6u9a3dhn66L1vjcpyl5r5Cn+srJIRcm8debkLOYqhe2fRjw2+MaLdXe1k=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760550033; c=relaxed/simple;
	bh=S1FtdcUcmIeQ998wpbQfLf/uCQbI5Kp2wTYdVUeqhYM=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=d/pMKLe1rDJaIiiw0LhvTtsY/eLQBvN8hfORewyOfEDihvmRiepFRQIxIdgFQuPerbL31RR5IGaXccbb9hczN2UFdlkIl0JYMrTWgFwyn3srujtEKuK9IeUprZ0oOk8WGUIKsQKDzMMl3i2sMOR3l3caOIQlYCjshhu9HZwE+DU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=google.com; spf=pass smtp.mailfrom=google.com; dkim=pass (2048-bit key) header.d=google.com header.i=@google.com header.b=mTydd8Ii; arc=none smtp.client-ip=209.85.214.182
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=google.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=google.com
Received: by mail-pl1-f182.google.com with SMTP id d9443c01a7336-269639879c3so65680755ad.2
        for <devicetree@vger.kernel.org>; Wed, 15 Oct 2025 10:40:31 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=google.com; s=20230601; t=1760550030; x=1761154830; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=xkp4QiQO+ZGOJJIskGqlgSdH1DbycxG+pl4uWz6LL4o=;
        b=mTydd8Ii2/k2bpi1Dnrf6nFc2mjlnR72gFDS5zhv23NbWmqeiXcrNARgltavxrQit9
         zQUC0AKwcHaQnPs4QNUUdFz3gfDCryUvz+GJEkN2suSAYk9h3CLalKRvhH+bo39asQaJ
         15FLPV0/lcz02DUpoEEqiMm/0Ke95CikMSRJ1P7SBhJlSLW689KxmllxB2/f6SBSpoLQ
         55fKPh0tC07/T/Qz4krsH5pFPKtyjF1Y2Vp1CYWIWr5aHwLnTqjHHIJUAqlYmw/0DX8D
         pV72HVaAaibArGz36gqYJceiaoW2CaUsDjDVx7OYCltgufq/oPbeTe0yvZOqv2WNXq48
         zqJQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1760550031; x=1761154831;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=xkp4QiQO+ZGOJJIskGqlgSdH1DbycxG+pl4uWz6LL4o=;
        b=dmgm3rgMdTpoNLaGh5Go/Z4OpAcTnoghbrOwkz6i9cs6We9cng76wEn/bLZCGDfZTZ
         XKYhPtzewgPjUUFQwxO4Tln9y3qmY1SpNP1xEvFCz4SGHLuOXaQ/Qnrdu0e/ZfqSlXkX
         BFHliJxp2clgtyVM+rEl6MymdnDdsjoFAlPn+jWyB8qSoctb1lRml9+UNkMssliVYoYB
         ejPBjr7sgCB4SU93lSPIvEAkyn861gzQyNh76iJvrJQ3InlJYp3nsQUrvH17b1cCbIuM
         cBCIPcn7hqECS93MzxiYLpUzXJp0zWERpPGdbbR97uFj3xl4mrYEYdIlVNpyF3ea1zV1
         pH/A==
X-Forwarded-Encrypted: i=1; AJvYcCWJjE0wJb2Fz1F+9NLIvT+mv3TNKtEEgB8RU4yub4iT9FkVNcHnT4plDn8Sh5e4zVo1s1iX+pniIPKf@vger.kernel.org
X-Gm-Message-State: AOJu0Yx69diqbLu7XtI6NcDKAk9lh1x448lMxJMirJ/SdXUarBlTs/jh
	ONBfq/UaDKRLSpj2cU2vKqBe/rl23ScAR2qlo0fRHHHrTxggnpVwUM4hn1Kd2XRIZ6kNE66N+T7
	3CjmQnQEIQTYCeJYOcDxwv/7xDfchd2rlKSIGXEkx
X-Gm-Gg: ASbGncs8RUW+IFzmQcoMtN6yz52HdO1xy2uVV0t6zr/LTlW4ihap6wLhJnbvrvnBzYq
	XbxQBXa4B6Meo/qqxWSg0S2r4tqH5SmawLhr0huouirxc5hvzFnTfA0IbkzYSBMeTxRdCDT62EG
	9PjocHrKlI3G/eVPHsWhXkbNe9BiBb6XVLs+O3ajFMqzMdgTvvY86AomP2W0QFH3BI8TE3bFd13
	YuCq+GgmP7DQ3+OWdS61L46BClNZ7EWCVjlgFSaiXvvP5fyzZAfwVrraf4vYM0dtA==
X-Google-Smtp-Source: AGHT+IGtM8hvN4lqZlO0WHIvTbL3D48lIHd91NHDkSwH6JM5GHtQa8Pa5RXv0ZasuodiKcuODGfruyjdLC0lq/iK870=
X-Received: by 2002:a17:902:e94e:b0:279:daa1:6780 with SMTP id
 d9443c01a7336-2902741cf99mr376217665ad.52.1760550030102; Wed, 15 Oct 2025
 10:40:30 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20251010201607.1190967-1-royluo@google.com> <20251010201607.1190967-3-royluo@google.com>
 <20251015002744.sntua4kqidgusafo@synopsys.com>
In-Reply-To: <20251015002744.sntua4kqidgusafo@synopsys.com>
From: Roy Luo <royluo@google.com>
Date: Wed, 15 Oct 2025 10:39:53 -0700
X-Gm-Features: AS18NWDkbrVxIDG8dAIZI0TtKFaXgEljVUvTQC724DiczltW9oPtD4sVlkXhIBk
Message-ID: <CA+zupgxbGjU_01JSFR_-2humZAyxwcVT5JR6h6mTVUT=3fFQ6Q@mail.gmail.com>
Subject: Re: [PATCH v3 2/4] usb: dwc3: Add Google Tensor SoC DWC3 glue driver
To: Thinh Nguyen <Thinh.Nguyen@synopsys.com>
Cc: Vinod Koul <vkoul@kernel.org>, Kishon Vijay Abraham I <kishon@kernel.org>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>, Philipp Zabel <p.zabel@pengutronix.de>, 
	Peter Griffin <peter.griffin@linaro.org>, =?UTF-8?Q?Andr=C3=A9_Draszik?= <andre.draszik@linaro.org>, 
	Tudor Ambarus <tudor.ambarus@linaro.org>, Joy Chakraborty <joychakr@google.com>, 
	Naveen Kumar <mnkumar@google.com>, Badhri Jagan Sridharan <badhri@google.com>, 
	"linux-phy@lists.infradead.org" <linux-phy@lists.infradead.org>, 
	"devicetree@vger.kernel.org" <devicetree@vger.kernel.org>, 
	"linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>, 
	"linux-usb@vger.kernel.org" <linux-usb@vger.kernel.org>, 
	"linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>, 
	"linux-samsung-soc@vger.kernel.org" <linux-samsung-soc@vger.kernel.org>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Tue, Oct 14, 2025 at 5:28=E2=80=AFPM Thinh Nguyen <Thinh.Nguyen@synopsys=
.com> wrote:
>
> Hi,
>
> On Fri, Oct 10, 2025, Roy Luo wrote:
> > +#endif /* CONFIG_PM */
> > +
> > +static const struct dev_pm_ops dwc3_google_dev_pm_ops =3D {
> > +     SET_SYSTEM_SLEEP_PM_OPS(dwc3_google_pm_suspend, dwc3_google_pm_re=
sume)
> > +     SET_RUNTIME_PM_OPS(dwc3_google_runtime_suspend, dwc3_google_runti=
me_resume,
> > +                        dwc3_google_runtime_idle)
>
> Can we use the new pm_ptr() and *_PM_OPS macros to get rid of the ifdef
> CONFIG_PM guards?

Yes, will replace it with pm_ptr in the next patch.
P.S. The kernel test robot is also complaining about it. [1]

[1] https://lore.kernel.org/linux-usb/202510111335.oyOAs9MB-lkp@intel.com/

>
> > +     .complete =3D dwc3_google_complete,
> > +     .prepare =3D dwc3_google_prepare,
> > +};
> > +
> > +static const struct of_device_id dwc3_google_of_match[] =3D {
> > +     { .compatible =3D "google,gs5-dwc3" },
> > +     { }
> > +};
> > +MODULE_DEVICE_TABLE(of, dwc3_google_of_match);
> > +
> > +static struct platform_driver dwc3_google_driver =3D {
> > +     .probe          =3D dwc3_google_probe,
> > +     .remove         =3D dwc3_google_remove,
> > +     .driver         =3D {
> > +             .name   =3D "google-dwc3",
> > +             .pm     =3D &dwc3_google_dev_pm_ops,
> > +             .of_match_table =3D dwc3_google_of_match,
> > +     },
> > +};
> > +
> > +module_platform_driver(dwc3_google_driver);
> > +MODULE_LICENSE("GPL");
> > +MODULE_DESCRIPTION("DesignWare DWC3 Google Glue Driver");
> > --
> > 2.51.0.740.g6adb054d12-goog
> >
>
> Give me some time, and I'll review the rest of this patch.

Thanks Thinh! and a heads up, I'm splitting this patset into
two separate series as Krzysztof suggested; one for the
controller and one for the phy, so the series title might
change in the next version.

Regards,
Roy Luo

>
> Thanks,
> Thinh

