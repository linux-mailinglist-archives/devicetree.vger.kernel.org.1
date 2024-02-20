Return-Path: <devicetree+bounces-43912-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 800B985BDAB
	for <lists+devicetree@lfdr.de>; Tue, 20 Feb 2024 14:52:49 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 369ED2841AD
	for <lists+devicetree@lfdr.de>; Tue, 20 Feb 2024 13:52:48 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A6A466A348;
	Tue, 20 Feb 2024 13:51:38 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=bgdev-pl.20230601.gappssmtp.com header.i=@bgdev-pl.20230601.gappssmtp.com header.b="hQcYTdri"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ua1-f53.google.com (mail-ua1-f53.google.com [209.85.222.53])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CB09A6A34D
	for <devicetree@vger.kernel.org>; Tue, 20 Feb 2024 13:51:36 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.222.53
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1708437098; cv=none; b=rJoibG3/p8OgwFecGqje+TQsR2Jl9ySLSGJmJFToFK6ft4pZiPdwvKEJFl9hKSQ8ZQB/yBrEP2TB+yjUVoEOU4fpyAiEVjH1GV35asf+WXQ9hODVdC5+Cx9PdF6SqORYqnbviMPHRZepwG52Nkf/gykyFtmrEaM0V9laduG4l5E=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1708437098; c=relaxed/simple;
	bh=0BcunvRrtaUmN0EFUUISMbneVhmBPJt6BIastJXPNP0=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=oM/K2OGhzZQEcYjXoSu7huJKAu0q/67n/ClFlV7MSG5KtXQ3OudLFlJmQ0KEbtETIu6Vgd5gHocSPvOmTNQ+O3YurN4arCwYchBPFN5Px+a4587jf7CMgzSbAh5I9kPX8dnGPWLJMo+r788eHqIpuH5r26pI17/sK9YbmWQfNmI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=bgdev.pl; spf=none smtp.mailfrom=bgdev.pl; dkim=pass (2048-bit key) header.d=bgdev-pl.20230601.gappssmtp.com header.i=@bgdev-pl.20230601.gappssmtp.com header.b=hQcYTdri; arc=none smtp.client-ip=209.85.222.53
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=bgdev.pl
Authentication-Results: smtp.subspace.kernel.org; spf=none smtp.mailfrom=bgdev.pl
Received: by mail-ua1-f53.google.com with SMTP id a1e0cc1a2514c-7d5fce59261so3578940241.3
        for <devicetree@vger.kernel.org>; Tue, 20 Feb 2024 05:51:36 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=bgdev-pl.20230601.gappssmtp.com; s=20230601; t=1708437096; x=1709041896; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=MgY4liOwTL5+3Z3CLB9W6IwO/t1zWSjoOMigtKjZYsE=;
        b=hQcYTdriKl/a1Qla7Ad54f7TSy38NbHCV77k2LdJvfrKCCJBOeMtzPROeanlGdJpTy
         TooU/kuQGLcoKpOAItES+lfOHNyXi0ye7J9OPAlLWIf1hB8W0RobhIImP+zwmYBatWrS
         p0wGzPoQ/fViQv5wHRB5+ZhW0eahYDMF4yqUN++JjtNlXNopnwbvxz5EcEeKTIMHPmlX
         QR2yMKpBFGvaNwkERPqX56Klh81YhkU4MsLOjnZB3IQYwnBWXOSTpww7u6C5ntY67bbJ
         GtdbNfARaxCH/qjflNMRUejzXTxG9xq1Uly4SMQyOR0YbaZOFR5aHeY6xyfFx7tgWbGp
         cn/g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1708437096; x=1709041896;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=MgY4liOwTL5+3Z3CLB9W6IwO/t1zWSjoOMigtKjZYsE=;
        b=JCaOUFssSLQLFeoXHiFIeoI0bF96cr2jpQfOilm8LpyG+5wNPu+6l+DVNs2oAMjolW
         7CID1D4tTEyxtP7AiUE1+VSo15EOB6EaFMhZXesYI4qni9OqHWEHoW4IPT2hZxlwc4VA
         Lm29nIJdKi+Xc105iIJZ74sN2zcbk+gZHfvtY5727xKovoa4peRLMrLgfAcaQrjGqEME
         1jD33OOuYgIPHx3nO6eXvzX8wXF5bFX/0CHZoY0Xiw1LUNuTCY6Wiuv9AsvCAiKBwkrf
         cJeJk0+S3JWshoUUbDnTU0FH10YE+ClKhT2j/fYi85/tEEb0hE98TJ7E4HHe76mU5h8+
         c+lw==
X-Forwarded-Encrypted: i=1; AJvYcCWgxfbPY8DQevFEBAM67J4EDfhWIoVcLkrR2TPfcg7eaYElheSXQjTe8f38Z5WsaZwUcA2S1opzwO1z5qOlh9Ez3SZxeQvrI5GB1Q==
X-Gm-Message-State: AOJu0YyKfqmKpeA+vMrB9J8TKiQVuy4PoiUUH3CGO4qrB2JE2Qsq/F0f
	uDrFvG+mDi9492+jxm2r/YDKoiOYMxl6zr7/Q6/M71BX071l2r9Oq74hMX5zNPle/y8Z0H+c4z7
	8FqoI7wB9mRJhSPHivj2J/hEY1DPktwP53TbZEg==
X-Google-Smtp-Source: AGHT+IGDnnvca//PyvA7xbyGzNM8JoBNHW92qi1w5wyc30nxe7IfC8qAJelE3g8wqWvKnEEoyqcjA5KVWxpp8Z8yXZs=
X-Received: by 2002:a1f:df81:0:b0:4c9:f704:38c with SMTP id
 w123-20020a1fdf81000000b004c9f704038cmr4588564vkg.11.1708437095738; Tue, 20
 Feb 2024 05:51:35 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20240216203215.40870-1-brgl@bgdev.pl> <20240216203215.40870-10-brgl@bgdev.pl>
 <48164f18-34d0-4053-a416-2bb63aaae74b@sirena.org.uk> <CAMRc=Md7ymMTmF1OkydewF5C32jDNy0V+su7pcJPHKto6VLjLg@mail.gmail.com>
 <8e392aed-b5f7-486b-b5c0-5568e13796ec@sirena.org.uk> <CAMRc=MeAXEyV47nDO_WPQqEQxSYFWTrwVPAtLghkfONj56FGVA@mail.gmail.com>
 <5a3f5e1b-8162-4619-a10b-d4711afe533b@sirena.org.uk> <CAMRc=MdTub4u0dm5PgTQPnYPuR=SRnh=ympEZqo_UyrQDrQw6w@mail.gmail.com>
 <f72723f3-f5c5-4c16-a257-e5f57c4f9e73@sirena.org.uk>
In-Reply-To: <f72723f3-f5c5-4c16-a257-e5f57c4f9e73@sirena.org.uk>
From: Bartosz Golaszewski <brgl@bgdev.pl>
Date: Tue, 20 Feb 2024 14:51:25 +0100
Message-ID: <CAMRc=McFCauVwpATbVqCOtpyP_buKQDiN0OdZP9EfXmc3CgSUA@mail.gmail.com>
Subject: Re: [PATCH v5 09/18] arm64: dts: qcom: qrb5165-rb5: model the PMU of
 the QCA6391
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

On Tue, Feb 20, 2024 at 2:48=E2=80=AFPM Mark Brown <broonie@kernel.org> wro=
te:
>
> On Tue, Feb 20, 2024 at 02:38:33PM +0100, Bartosz Golaszewski wrote:
> > On Tue, Feb 20, 2024 at 2:31=E2=80=AFPM Mark Brown <broonie@kernel.org>=
 wrote:
> > > On Tue, Feb 20, 2024 at 12:16:10PM +0100, Bartosz Golaszewski wrote:
>
> > > > And what do you mean by there not being any consumers? The WLAN and=
 BT
> > > > *are* the consumers.
>
> > > There are no drivers that bind to the regulators and vary the voltage=
s
> > > at runtime.
>
> > Even with the above misunderstanding clarified: so what? DT is the
> > representation of hardware. There's nothing that obligates us to model
> > DT sources in drivers 1:1.
>
> It is generally a bad sign if there is a voltage range specified on a
> regulator that's not got any indication that the voltage is going to be
> actively managed, especially in situations like with several of the
> supplies the DT was specifying where there are clear indications that
> the supply is intended to be fixed voltage (or cases where every single
> supply has a voltage range which would be highly unusual).  Looking at
> the consumers might provide an explanation for such unusual and likely
> incorrect constraints, and the lack of any consumers in conjunction with
> other warning signs reenforces those warning signs.

What do you recommend? No values at all in these regulators as it's
the PMU which will manage those on its own once powered up by the host
PMIC?

Bartosz

