Return-Path: <devicetree+bounces-35904-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 5F0CA83F29C
	for <lists+devicetree@lfdr.de>; Sun, 28 Jan 2024 01:40:11 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 94E33B22B6E
	for <lists+devicetree@lfdr.de>; Sun, 28 Jan 2024 00:40:08 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A1585818;
	Sun, 28 Jan 2024 00:40:03 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="r2dKyg/d"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-yb1-f181.google.com (mail-yb1-f181.google.com [209.85.219.181])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 14F78ECE
	for <devicetree@vger.kernel.org>; Sun, 28 Jan 2024 00:40:01 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.219.181
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1706402403; cv=none; b=KcZdbcUfLv62fYd280jjz9VtfP2k1p49LknUqDrQT9dEeEblSLhfXaZ2SDpRKMap7ATR395wDauP9MpsxsQnNqql1BSxxSu14HwXPj1GUbgLFwjriKsK4A72fRKaAEvFlvPJd0gFBGU2UwsmvMAOX/VJYoiBP3OavC1Rcld2Xmg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1706402403; c=relaxed/simple;
	bh=QRzZYp6PIx386k68QDCzDOD7UVHoc7rvAMQvOzXv7hQ=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=HaVW9mW9Au7BaklRqDQSdP9R9nezJQ1LzI6vTZxMFju1W21zSTmFnhtabbo9RI/C/IfZkLf1MZRszMPgF+SBYPEnYTUjWJ2yYMOi5CVfKOZ/cQW5UUHQAQ4jOtb5DCWLIUhoL5q0wbS+rvcoo584/iJpp2f/ebVq0KMJw7I6n9s=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=r2dKyg/d; arc=none smtp.client-ip=209.85.219.181
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-yb1-f181.google.com with SMTP id 3f1490d57ef6-dc227feab99so1512533276.2
        for <devicetree@vger.kernel.org>; Sat, 27 Jan 2024 16:40:01 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1706402401; x=1707007201; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=QRzZYp6PIx386k68QDCzDOD7UVHoc7rvAMQvOzXv7hQ=;
        b=r2dKyg/d2yewVMxX3LHa7VU1AsRmfzogwqGISrHWmusm86D2Jhq1y1r+Me0u9OB1dU
         6rsd4TNMvd6ztv2s4U1ZpNZE80mLTJBuAQrcx5m9qZMFytCKvxJXnIF7yctFxL8d66mC
         FM3zJ8alATFa7KnF8RPBGt0VZTpSDGL6Uojc2ociMePa8oLUtWtFqxP11UT/FMEUG1bO
         bXqhwUxMXKn4iNjW3M3yyVK78bZVstH4/ZYHmm5GjgKsW0Njvl7WTfZjzbBgmLiVmOpQ
         QMWlfyZY1zS+TbMKdXycOCCJ0i9OKLKRbb1jKhDRQ+/cVDL49Qs74qcxvj7QjKK7j1vG
         nFMg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1706402401; x=1707007201;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=QRzZYp6PIx386k68QDCzDOD7UVHoc7rvAMQvOzXv7hQ=;
        b=RLLbWtof7tPgk91Zu0CyhGBQdNF79zgoinukegRcqsM0WBkfGFm7DMd7083Tzc/CcF
         8n7VKTDTxkSoudczOU9aoN+6K5NOkhSDnnz+ptRsTIIrev9orIajjoMjZ+LGcV7skYEn
         MbO6zsIiD9VvfpBMLVBaBs6/Xu22mk5YiC3mKjm4vL6zvz2vBzCSw2Wd1gkriSe1dRW/
         w/i5oiSogmJO1orKryV8Yyqc9qQg3GAqEeXX98yWvc6bLSaKJVrOJR3CCo/tXVI2JIju
         3KMuQ0ANKp7zYXDvyAAqJ4u5V4KbPkJ7FfGoT2hov0eyIhNJzAmQ8Bh5QNwqx0LGybFd
         Y3Ag==
X-Gm-Message-State: AOJu0Yy685feAdLNcNG2q7Xy68URW74bIH7lCj6DDtjPnu6MFOHoNVl3
	MNwEn53AHtNBLFF/5QdnA11MmbOOXU/X0G0oUJdUsdCnLKeb9YGbC5wXkgzzWO61cfgbgQa7wAw
	9nMhTLyqd3UKrvEIH6k543uPhnlExzgJuNPy50g==
X-Google-Smtp-Source: AGHT+IHD8S1WP5J7m0ocSNO7pQgXHBCJmcjr56OoYWSunpFttRnhhjQGC9S9kx9v0RNFLWGmnCmzFF2GWnnjZ15IBb0=
X-Received: by 2002:a05:690c:82c:b0:602:cabb:64f4 with SMTP id
 by12-20020a05690c082c00b00602cabb64f4mr2155595ywb.97.1706402401071; Sat, 27
 Jan 2024 16:40:01 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20240104-pinctrl-scmi-v2-0-a9bd86ab5a84@nxp.com>
 <20240104-pinctrl-scmi-v2-4-a9bd86ab5a84@nxp.com> <CACRpkdbOVu4A0JdwvBaxvgvoT5u3VbjTyQi0mgqknCixR2vzYw@mail.gmail.com>
 <DU0PR04MB9417E697C5AF094C449C851D887F2@DU0PR04MB9417.eurprd04.prod.outlook.com>
In-Reply-To: <DU0PR04MB9417E697C5AF094C449C851D887F2@DU0PR04MB9417.eurprd04.prod.outlook.com>
From: Linus Walleij <linus.walleij@linaro.org>
Date: Sun, 28 Jan 2024 01:39:50 +0100
Message-ID: <CACRpkdb8ByjDN2=Cuj6+v87_Ad95nG6o3HguN==y+-4zz_SSvA@mail.gmail.com>
Subject: Re: [PATCH v2 4/6] pinctrl: Implementation of the generic
 scmi-pinctrl driver
To: Peng Fan <peng.fan@nxp.com>
Cc: "Peng Fan (OSS)" <peng.fan@oss.nxp.com>, Sudeep Holla <sudeep.holla@arm.com>, 
	Cristian Marussi <cristian.marussi@arm.com>, Rob Herring <robh+dt@kernel.org>, 
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, Conor Dooley <conor+dt@kernel.org>, 
	Oleksii Moisieiev <oleksii_moisieiev@epam.com>, Shawn Guo <shawnguo@kernel.org>, 
	Sascha Hauer <s.hauer@pengutronix.de>, Pengutronix Kernel Team <kernel@pengutronix.de>, 
	Fabio Estevam <festevam@gmail.com>, dl-linux-imx <linux-imx@nxp.com>, 
	"linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>, 
	"linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>, 
	"devicetree@vger.kernel.org" <devicetree@vger.kernel.org>, 
	"linux-gpio@vger.kernel.org" <linux-gpio@vger.kernel.org>, AKASHI Takahiro <takahiro.akashi@linaro.org>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Sun, Jan 28, 2024 at 1:28=E2=80=AFAM Peng Fan <peng.fan@nxp.com> wrote:

> Would you ACK the current V3 patch or wait I add OF dependency?

I ACKed it, don't worry it's just a nitpick.

Yours,
Linus Walleij

