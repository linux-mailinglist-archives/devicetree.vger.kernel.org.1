Return-Path: <devicetree+bounces-43842-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 4E42A85BA6C
	for <lists+devicetree@lfdr.de>; Tue, 20 Feb 2024 12:24:26 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 09D96286CC1
	for <lists+devicetree@lfdr.de>; Tue, 20 Feb 2024 11:24:25 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 5E538664B9;
	Tue, 20 Feb 2024 11:22:56 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=bgdev-pl.20230601.gappssmtp.com header.i=@bgdev-pl.20230601.gappssmtp.com header.b="vSO0mx5a"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-vs1-f50.google.com (mail-vs1-f50.google.com [209.85.217.50])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 93C3667E65
	for <devicetree@vger.kernel.org>; Tue, 20 Feb 2024 11:22:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.217.50
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1708428176; cv=none; b=fU9M3aLDdR9ZN1dXRQ91/mcSNTKESUva/LpJ3tRdATAYGBG6pXhqHtUXQi6vTPixvQ83FBgW6etNYmgs7tAA0xsD5RCwyAFznK9qRfJ3w2ybKO5rujrza6O1Dyq2vb/tEvKyWxiHlpGZLhyXacdUzcidNcvUB9MgfKZYR5u7Dts=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1708428176; c=relaxed/simple;
	bh=dQqffqh6T4LO8Z67UPdabicBep7/vKvQtPnTrA6jWl0=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=DTigkGli4zddVe6mghme4kPFBd9T7lY4fOYspwbeRuJW2Ci0l25GZwn0gUSMvWP+Ts+vQWoPaMZiZsXGTGSGzw4yQmdSII0BJyudVWybw3zYhYstPhoLSGH5sDVsHKSh5tyQnHqoyD+3YIJCQ74jugdeUQ910Sj3zNrxFgb2++k=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=bgdev.pl; spf=none smtp.mailfrom=bgdev.pl; dkim=pass (2048-bit key) header.d=bgdev-pl.20230601.gappssmtp.com header.i=@bgdev-pl.20230601.gappssmtp.com header.b=vSO0mx5a; arc=none smtp.client-ip=209.85.217.50
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=bgdev.pl
Authentication-Results: smtp.subspace.kernel.org; spf=none smtp.mailfrom=bgdev.pl
Received: by mail-vs1-f50.google.com with SMTP id ada2fe7eead31-4704cf2f4f8so367275137.2
        for <devicetree@vger.kernel.org>; Tue, 20 Feb 2024 03:22:54 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=bgdev-pl.20230601.gappssmtp.com; s=20230601; t=1708428173; x=1709032973; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=tnGpsA2N+oEjNvZD5MvHoPc7WS23uAKNUryh+bWrqLI=;
        b=vSO0mx5a+FNZasQYE4RcLEccUm4jxE8F3vYw1Sc5Z6kw5LmrJjsBHkEAhmB/OwiObt
         tP8uQWrOti3T4Rsuxd2Dqutiv+AGL72KptpRTUkZnO4DrhN39ZYEcR8wGuugsTxpFzN7
         lQyH9QDVQWiZp67zAJGmlFmxUG44rWwjGYkA4JBpouU3dzGX53eAy0Vv5CiKJSR7jW2u
         Bgca6eN8Oj+QhK3B5CBSfGP3EnYlRfI1NNrpHpbcj623KRgeabfPIRWT4zzt3u/8VT9A
         3G7DDvfLBZ5+7czw32tDwcCPbEA+IOYiiR/QTDyburwckbN3vOFgvgyvYIRhLTX3n1qu
         m82w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1708428173; x=1709032973;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=tnGpsA2N+oEjNvZD5MvHoPc7WS23uAKNUryh+bWrqLI=;
        b=rRmw6oayvtoSyz9/U6sep6iRDRiLigZgoRC1d37RHLihLFQ/rvHhpJeaOlO+aiHWEN
         mUYIOq+8iNsXq+8BUna75XQnH1Z/1JaMV6HK1Rp31Y/XcI/r6WHIs5sL8OAJICOCSW6w
         6SidbYuPKtM5yF3JYMBotaCJXLpmTwESU5wgQ8KDN/7xHtAbXhZjwAo2IgWxB0yfoTM8
         pmPt25qaycg1y06TVUOLnS3busyIstJWW1gnXhY4ZUO1mY1M1rr3PynJzu9syYpKoyyW
         sjLFzLkCVCU4Ttc9RAd42Mx3yFF9rTlweVJPjL25EBbWwbu3FVYM7EB0lYC5vO3uqgJR
         G86A==
X-Forwarded-Encrypted: i=1; AJvYcCWD4uRp1YVuf+qf2X1vRTOUe0zH/jEH04ytbxAkPseOdOzbsIKjY/p/joAZmbxZvmMLY7LLw92/pboEvNFaGcJz3NoLWNyZAWVGrA==
X-Gm-Message-State: AOJu0YxY0JY4ldZ92tm87zhneZuzqB5G9hFKg/5JpL5ZXentUOWNhTV6
	kYtROpGBSixExIrwJp0IUNZCwUXm96Xex0AX4DSmopeWqoxWce3JgZutaKj2+vlr7bJMODBl1Rz
	XJkKYX38fU5YXDSUF5yh5N6eZZN0gT7dKYewxKQ==
X-Google-Smtp-Source: AGHT+IGmypbXGvIgsXnS85V0NkbV+58vcVfrux92hdJBvsnBD1MJ/T8V6U4tgekizLSc354z11MbuHbewdtd9TTnF58=
X-Received: by 2002:a67:ec0a:0:b0:470:4dd8:b18 with SMTP id
 d10-20020a67ec0a000000b004704dd80b18mr5421598vso.19.1708428173554; Tue, 20
 Feb 2024 03:22:53 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20240216203215.40870-1-brgl@bgdev.pl> <20240216203215.40870-15-brgl@bgdev.pl>
 <d5d603dc-ec66-4e21-aa41-3b25557f1fb7@sirena.org.uk>
In-Reply-To: <d5d603dc-ec66-4e21-aa41-3b25557f1fb7@sirena.org.uk>
From: Bartosz Golaszewski <brgl@bgdev.pl>
Date: Tue, 20 Feb 2024 12:22:42 +0100
Message-ID: <CAMRc=MeUjKPS3ANE6=7WZ3kbbGAdyE8HeXFN=75Jp-pVyBaWrQ@mail.gmail.com>
Subject: Re: [PATCH v5 14/18] PCI/pwrctl: add a power control driver for WCN7850
To: Mark Brown <broonie@kernel.org>
Cc: Marcel Holtmann <marcel@holtmann.org>, Luiz Augusto von Dentz <luiz.dentz@gmail.com>, 
	"David S . Miller" <davem@davemloft.net>, Eric Dumazet <edumazet@google.com>, 
	Jakub Kicinski <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, Conor Dooley <conor+dt@kernel.org>, 
	Kalle Valo <kvalo@kernel.org>, Bjorn Andersson <andersson@kernel.org>, 
	Konrad Dybcio <konrad.dybcio@linaro.org>, Liam Girdwood <lgirdwood@gmail.com>, 
	Catalin Marinas <catalin.marinas@arm.com>, Will Deacon <will@kernel.org>, 
	Bjorn Helgaas <bhelgaas@google.com>, Saravana Kannan <saravanak@google.com>, 
	Geert Uytterhoeven <geert+renesas@glider.be>, Arnd Bergmann <arnd@arndb.de>, 
	Neil Armstrong <neil.armstrong@linaro.org>, Marek Szyprowski <m.szyprowski@samsung.com>, 
	Alex Elder <elder@linaro.org>, Srini Kandagatla <srinivas.kandagatla@linaro.org>, 
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>, Abel Vesa <abel.vesa@linaro.org>, 
	Manivannan Sadhasivam <mani@kernel.org>, Lukas Wunner <lukas@wunner.de>, 
	Dmitry Baryshkov <dmitry.baryshkov@linaro.org>, linux-bluetooth@vger.kernel.org, 
	netdev@vger.kernel.org, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org, linux-wireless@vger.kernel.org, 
	linux-arm-msm@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
	linux-pci@vger.kernel.org, linux-pm@vger.kernel.org, 
	Bartosz Golaszewski <bartosz.golaszewski@linaro.org>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Mon, Feb 19, 2024 at 6:50=E2=80=AFPM Mark Brown <broonie@kernel.org> wro=
te:
>
> On Fri, Feb 16, 2024 at 09:32:11PM +0100, Bartosz Golaszewski wrote:
>
> > +static struct pci_pwrctl_wcn7850_vreg pci_pwrctl_wcn7850_vregs[] =3D {
> > +     {
> > +             .name =3D "vdd",
> > +             .load_uA =3D 16000,
> > +     },
>
> I know a bunch of the QC stuff includes these load numbers but are they
> actually doing anything constructive?  It keeps coming up that they're
> causing a bunch of work and it's not clear that they have any great
> effect on modern systems.
>

Yes, we have what is called a high-power mode and a low-power mode in
regulators and these values are used to determine which one to use.

> > +static int pci_pwrctl_wcn7850_power_on(struct pci_pwrctl_wcn7850_ctx *=
ctx)
> > +{
> > +     int ret;
> > +
> > +     ret =3D regulator_bulk_enable(ctx->pdata->num_vregs, ctx->regs);
> > +     if (ret)
> > +             return ret;
> > +
> > +     ret =3D clk_prepare_enable(ctx->clk);
> > +     if (ret)
> > +             return ret;
>
> This won't disable the regulators on error.

Indeed. Thanks for catching this.

Bart

