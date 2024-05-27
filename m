Return-Path: <devicetree+bounces-69510-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 6592E8D0069
	for <lists+devicetree@lfdr.de>; Mon, 27 May 2024 14:50:40 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 9F38B282D87
	for <lists+devicetree@lfdr.de>; Mon, 27 May 2024 12:50:38 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 4F37415ECC5;
	Mon, 27 May 2024 12:50:28 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="Ar2Qq1t6"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-yb1-f174.google.com (mail-yb1-f174.google.com [209.85.219.174])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CE0D715E5CE
	for <devicetree@vger.kernel.org>; Mon, 27 May 2024 12:50:26 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.219.174
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1716814228; cv=none; b=kPq0ZT4c4FPmD2V6d12f30aOiGVoDy+z6CW5hVQfdM7GhHJCULpMn3xretx8Gr1ff+/CbkjBKaVMOfCT8/OhjqDCINiSjW3qVbwLnVIeABVhfiJF5anLXlhlcz6a/sO8fRtCiefzwhIIfNpcIvPilvxBOQER6pzSyvSx1pXinhM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1716814228; c=relaxed/simple;
	bh=14UMBsxwAYor7acU+f5R1XwmfsHblIByKkJ6KnVfk84=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=iSuY4dKa5MoBedU3F1kU19tGV9ztMqBD6/sQVdD/AO6RKd/1G987ArNcH+IqD6FfCMVAZINX0wrFFOfeSz5FWXbBy61LcsL/yQo/M26dHAu1ZNrcFee57a3rdT5XLjzzW6JPOu2BNSvRDBnIoOm3eGQ+Z9G6Rdh8ad7DG8RQW6A=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=Ar2Qq1t6; arc=none smtp.client-ip=209.85.219.174
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-yb1-f174.google.com with SMTP id 3f1490d57ef6-df4e503983fso5343802276.2
        for <devicetree@vger.kernel.org>; Mon, 27 May 2024 05:50:26 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1716814226; x=1717419026; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=14UMBsxwAYor7acU+f5R1XwmfsHblIByKkJ6KnVfk84=;
        b=Ar2Qq1t6yWiFCSp2zWG7WxMY/cHBCa7Ldg9gcqkP1od3/0MiVOQjT2PTDceRS1edyd
         v9LX02RIH+v2wLKtIX9i7sT6v9trhjRXGprLAp3f3uU3j2YMArhFBtw+29btJMVqOcse
         eG+gnmo6/ZZ1PhPHtbxkh6kBQwPwlKLhnpJmFnLI4KmrhDmLAesWs/65FKPT4esNonit
         Dz4X4P1SwMxynXCI3Z2cjDMgloabyMcm/GbV2lCneLjB+6vdfIietZ6uhw0LH1cADhNj
         MZ85pBRO0ypzzuvMHupAtPZNMuLDGFCZGG4xDPzVwNbbeS9qIF8TBwnHg+NFHfS563Ly
         1l0Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1716814226; x=1717419026;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=14UMBsxwAYor7acU+f5R1XwmfsHblIByKkJ6KnVfk84=;
        b=tiQyzV6xd96M7bUdBTJ6vocTzLiYO9rwJBN79ZMvl8zaugEtuWfln9ePbZdBB9AN3N
         DIpzZTiSmFLC65FlHBAHVXwyVYfkIpcEL1WZyZk75dL5X7g9DssSqkZxCG+NjMBQlLMj
         +xZj6zvk88qSWbhM4yuNsK75idM8+n/etCKHCDOLwj8lHqSau6SOIH0P/vf/oRvQBK3f
         JrY2/OqQyKplxwP20lzng4S/8jyoXlGXKlEU6ctyXDyOUXYXYnv2c+uS9MCDw2KOYab7
         KvVZ6dYPHk24qBtcnmLIslaumDuY5FIETlW9uHkq+NSRycyQpGH6eHE7hM8zBv583Pf7
         CsLA==
X-Forwarded-Encrypted: i=1; AJvYcCVzT7bIRKC/7TUF6RnTHIn8ckzVN3PwM+6n87M5t8ZCcSllWIrvDWvXsxXg8y6n6ZfsXNfq1qoMPFFWAfT5izP0aPgIacpRMZbuxQ==
X-Gm-Message-State: AOJu0YwZ3Ip9Z6BHdJhxa5u8XSnEu9TAqiT3YPRYE3EwdfuYJPpN9J8n
	1OwBM2RML4DBcRnq5+sq1haEfg1qpVSh9wcQUm4pxB/Oe1gORGnWXkPZfWJKBolt2Svd/nZaJO6
	CJKw/JHqfkxSQ5g2+SEgWRh4svd51NNawITeqqQ==
X-Google-Smtp-Source: AGHT+IHQev4ydRTgpyByOzu2HFcpu2MVKpWBI6FXCN8mebkBNMtO53w2pge5I/hqSmzhTxgE+0KR4nyVgR2HhWJO7ro=
X-Received: by 2002:a25:df50:0:b0:de5:4d41:80c3 with SMTP id
 3f1490d57ef6-df77223e718mr9210410276.55.1716814225824; Mon, 27 May 2024
 05:50:25 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20240521-pinctrl-scmi-imx95-v1-0-9a1175d735fd@nxp.com> <DU0PR04MB941718F15619A907C15AA18588F02@DU0PR04MB9417.eurprd04.prod.outlook.com>
In-Reply-To: <DU0PR04MB941718F15619A907C15AA18588F02@DU0PR04MB9417.eurprd04.prod.outlook.com>
From: Linus Walleij <linus.walleij@linaro.org>
Date: Mon, 27 May 2024 14:50:15 +0200
Message-ID: <CACRpkdbpLcxZ0YNdvYCS3bpyd3e6Qx7Wf1Ju9Buy-TvkBQoYDQ@mail.gmail.com>
Subject: Re: [PATCH 0/3] pinctrl: scmi: support i.MX95 OEM extensions with
 fsl,pins property
To: Peng Fan <peng.fan@nxp.com>
Cc: "Peng Fan (OSS)" <peng.fan@oss.nxp.com>, Sudeep Holla <sudeep.holla@arm.com>, 
	Cristian Marussi <cristian.marussi@arm.com>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Shawn Guo <shawnguo@kernel.org>, Sascha Hauer <s.hauer@pengutronix.de>, 
	Pengutronix Kernel Team <kernel@pengutronix.de>, Fabio Estevam <festevam@gmail.com>, 
	Aisheng Dong <aisheng.dong@nxp.com>, Jacky Bai <ping.bai@nxp.com>, 
	"linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>, 
	"devicetree@vger.kernel.org" <devicetree@vger.kernel.org>, 
	"linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>, "imx@lists.linux.dev" <imx@lists.linux.dev>, 
	"linux-gpio@vger.kernel.org" <linux-gpio@vger.kernel.org>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Mon, May 27, 2024 at 10:36=E2=80=AFAM Peng Fan <peng.fan@nxp.com> wrote:

> Hi Linus, Sudeep, Cristian,
>
> > Subject: [PATCH 0/3] pinctrl: scmi: support i.MX95 OEM extensions with
> > fsl,pins property
>
> Sorry if this is an early ping to you. Just wanna this not blocking i.MX9=
5
> upstream support.
>
> Are you ok with this patchset?

Patch 1 is fine as it's ACKed by the DT maintainers.

Patch 2 patches the SCMI pinctrl driver and patch 3 uses
module_scmi_driver(), so I cannot merge any of these patches
without ACK from the SCMI maintainers.

The code in patch 3 looks OK but I will comment on it, no big
deal though.

Yours,
Linus Walleij

