Return-Path: <devicetree+bounces-250478-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id B470FCE984F
	for <lists+devicetree@lfdr.de>; Tue, 30 Dec 2025 12:13:42 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 02D53301D658
	for <lists+devicetree@lfdr.de>; Tue, 30 Dec 2025 11:13:29 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 853522E5427;
	Tue, 30 Dec 2025 11:13:28 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="QqN2oFCV"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-f45.google.com (mail-lf1-f45.google.com [209.85.167.45])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8BFC42D0C92
	for <devicetree@vger.kernel.org>; Tue, 30 Dec 2025 11:13:26 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.45
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767093208; cv=none; b=oj8Va7gzzDoBmaubYa/J5hlSQExeWJyr7aKIcA/tBRHQJCDb1kvEyAOTEq8imN2Gl0Hl6LYnhndKalm24JHWwhR9qFS0zFe6b8uy2uk0FcriNxh/LZplbvfTonD0RrF/gOk1tgpvD8mnq9sj+kCMqk1hrYYQu2bX7ulbNKTL03U=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767093208; c=relaxed/simple;
	bh=Mou9GuRir7LDbJR0BMVejC7OoEPX0gIL3s17cmVn5IM=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=CXxLIJki3P2RoUeu+LTZaTsSkqSwE7+yrEQQuTipKKwvZgeWQSwLcfbTylKpwYckI0+ObXO5uL8LjXQM1Drc2zu2UTpnmrlxDjXYI+fi3l3Ei4oBngaOyieoDbYpv4AldqGPEkNbpd3+QzjoG4jOQMwK3cTPzG3YWPQQdLY4Mg4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=QqN2oFCV; arc=none smtp.client-ip=209.85.167.45
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-lf1-f45.google.com with SMTP id 2adb3069b0e04-59b30275e69so4886946e87.1
        for <devicetree@vger.kernel.org>; Tue, 30 Dec 2025 03:13:26 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1767093205; x=1767698005; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=0DhaHJWr2nWv1al9K6mLQLe34skpWhfOOb6P3+q+LeM=;
        b=QqN2oFCVtJ1f+QCio1oMkYtb7dt8wsk4IUQzKiQ2QfUuS1jL24U39QovMvS68KKCRC
         RuStkcbCGZU82zHX7xsxTIHLr2cnXxZ2rFXc4u+zGia56d7HhGJ5UQK+5gdm1buXNibO
         i8N8WtEv7AJFfp/QpJ38yVr21TioRXxvcWYNb5gtWCmKOSmufcJhQ8PfoQadtp4H/zq0
         sA+vkhk4zHOT9MuGCrwyV+V1/KcmQ8tiCPpMy1SmFYwzAt7TOKBCsgEK+nIiwmZ7C/o0
         4DjjCwUbSxDyyTqqganywr/BQsSSkEkemMj3S/Zy3d7FvlyIAkPrGet3OG+gVxPl8Tcp
         0Hag==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1767093205; x=1767698005;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=0DhaHJWr2nWv1al9K6mLQLe34skpWhfOOb6P3+q+LeM=;
        b=ccc6OHKyNy32t2iKI3W/JWZdcYNFdHtOIJk3nFggWqLMueg84ShIo2bKFSJHmp9xlx
         T8tnGZ/zsUKPNOMSlKmoJcSPlG6eogCf5ov5FMm9DzPB7g+PkIE100n4MJq/9ALnyvfZ
         5IGX7tEjGzNIJbuT7YKUUVv4r77anmQ7c93SLsfQ0ulAsUQXQb3hRMu8jGORRSk2zEXD
         bkanBF4JZdrJeeWZnSoBnyoDuw7jtUPJSaKRoqAiRhf0coR9KLaFfsLStHzNSfxg3bMG
         6GG/Qt6EkEpdKu4Sw3iECZZvApKbVaDSXJ9lO2KmIgJuGly2P0vbZIEfqH7CYYdrQAUr
         iPCg==
X-Gm-Message-State: AOJu0YyEzcDWPOy5Z64/mpMAOyV53nGHzejuGKur7EQRKtcX3xZbVKrM
	SXclKcfZLKA0c02W1kEAGHzxgosyN4eegaypain5Gxc//rpuIJG6w7/l+kf6jbrWGWvwDz8OSxk
	AJyJ+nLjWBF2gSx1LI1Zocs6lDOqNGezLLfor
X-Gm-Gg: AY/fxX70SfxRCFdpqazkUR31aLBjck4bDHz+Juf/FEX7oK3c7duQgr4snEWEWjldCKd
	YG6SVvxoANk1EIKcnY8xK3nQagfGVqgbH9JgX4aHda5XdyiacWVGecoGTn8VGMU+qLwV7JfgQgl
	tfZN0hBDQink4r/2bDL5+sozpjZ96dJzZbMLI/qMir7jBO6BK014KYaTrYQNw8A3xknEc4f7TPQ
	HGY3mcPMpK1LydU/ve2ORZd6/p2w2/zrqPImzVqdplhWGzA0O+Uf0GqD4L/Z9TLxw7qCQpMfJI1
	x0xu+m47H+iqy/wQxdKLxVL8lYk=
X-Google-Smtp-Source: AGHT+IFq8iKQHu6vpcCYiWXyzz3tsn0MBXJbshrFfK/UlMVKowVKSf2tIcJTFEyHx5cpFKKTRtj3dLTLa2JxOdsPHZc=
X-Received: by 2002:a05:6512:3e06:b0:59a:107a:4593 with SMTP id
 2adb3069b0e04-59a17d722admr11700584e87.4.1767093204378; Tue, 30 Dec 2025
 03:13:24 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20251229213726.79374-1-stefano.r@variscite.com> <20251229213726.79374-3-stefano.r@variscite.com>
In-Reply-To: <20251229213726.79374-3-stefano.r@variscite.com>
From: Fabio Estevam <festevam@gmail.com>
Date: Tue, 30 Dec 2025 08:13:13 -0300
X-Gm-Features: AQt7F2omZLLu61VmQRr9xvfISMKNSHVaUEafxRkAtNsj_CTzmp5R38uxHvlk4qA
Message-ID: <CAOMZO5CsN-DMKoJ2Fz063tVKVqsr6Y1dq7B1Mg=Krz+_g1tQcg@mail.gmail.com>
Subject: Re: [PATCH v2 2/3] arm64: dts: freescale: Add support for Variscite DART-MX95
To: Stefano Radaelli <stefano.radaelli21@gmail.com>
Cc: devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
	Stefano Radaelli <stefano.r@variscite.com>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Shawn Guo <shawnguo@kernel.org>, Sascha Hauer <s.hauer@pengutronix.de>, 
	Pengutronix Kernel Team <kernel@pengutronix.de>, Alexander Stein <alexander.stein@ew.tq-group.com>, 
	Dario Binacchi <dario.binacchi@amarulasolutions.com>, Yannic Moog <y.moog@phytec.de>, 
	Primoz Fiser <primoz.fiser@norik.com>, Markus Niebel <Markus.Niebel@tq-group.com>, 
	Josua Mayer <josua@solid-run.com>, Francesco Dolcini <francesco.dolcini@toradex.com>, imx@lists.linux.dev, 
	linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Mon, Dec 29, 2025 at 6:37=E2=80=AFPM Stefano Radaelli
<stefano.radaelli21@gmail.com> wrote:

> +       reg_audio: regulator-audio-vdd {
> +               compatible =3D "regulator-fixed";
> +               regulator-name =3D "wm8904_supply";
> +               regulator-min-microvolt =3D <3300000>;
> +               regulator-max-microvolt =3D <3300000>;
> +               regulator-always-on;

Please drop 'regulator-always-on'. reg_audio is consumed by the audio codec=
.

> +&lpi2c8 {
> +       clock-frequency =3D <400000>;
> +       pinctrl-names =3D "default","gpio","sleep";
> +       pinctrl-0 =3D <&pinctrl_lpi2c8>;
> +       pinctrl-1 =3D <&pinctrl_lpi2c8_gpio>;
> +       pinctrl-2 =3D <&pinctrl_lpi2c8_gpio>;
> +       scl-gpios =3D <&gpio2 10 GPIO_ACTIVE_HIGH>;
> +       sda-gpios =3D <&gpio2 11 GPIO_ACTIVE_HIGH>;
> +       status =3D "okay";
> +
> +       wm8904: codec@1a {

audio-codec@1a

