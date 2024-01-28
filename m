Return-Path: <devicetree+bounces-35905-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 8A55A83F29E
	for <lists+devicetree@lfdr.de>; Sun, 28 Jan 2024 01:43:58 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 1EB1B1F2321F
	for <lists+devicetree@lfdr.de>; Sun, 28 Jan 2024 00:43:58 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 2411E39B;
	Sun, 28 Jan 2024 00:43:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="i344dmOb"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-yb1-f178.google.com (mail-yb1-f178.google.com [209.85.219.178])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9038DEC2
	for <devicetree@vger.kernel.org>; Sun, 28 Jan 2024 00:43:51 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.219.178
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1706402633; cv=none; b=Web0IMYc/fAcwqGSlRgAN/FHXcthUb9oMfkHqyNpRvMttTy2crBnQkd1vvmIL3S643B2AmmVncSUFdxb7v+sD7rwmEqJIKWA5OeH8vxv1Kit4fO/0qxjgl1/Vx4TPymJJ692ZPZmpCsFjaAeWrdQMTss3qS4ZC1bUeXTSiG9Kqw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1706402633; c=relaxed/simple;
	bh=fQL8fLXQP/RgVgsU6R7PqCXi4K9bGzEMkXfJji01eTA=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=OSKS5IlN9Ar4PKhTffezDRKfNjIBy2mkQ7HtrCh2VbCODcOloZ3/HxvZR8CSpitruLvS3s5I4QL3TUyNA6QPQWYiycNFbozPqFyzv7enashN9Dol9yZ+/ppyEzNQV3a19qkDj0fGlnlCM8zyK07W7R2OCK2I+lh6UZVBiESztps=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=i344dmOb; arc=none smtp.client-ip=209.85.219.178
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-yb1-f178.google.com with SMTP id 3f1490d57ef6-dc238cb1b17so2006173276.0
        for <devicetree@vger.kernel.org>; Sat, 27 Jan 2024 16:43:51 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1706402630; x=1707007430; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=xJjfllB7hqAPskI95KrviUW6Tet29Xm8hBrvemKl1DU=;
        b=i344dmObLxIAgpyZat6nV0IPHVJEHsm8rMcZw1XQFlN1GIW6nUyWU8AUX5N5G7yw0P
         51v4kDFMfXEg+N151AE3yaADmCZ/KMWmVgT8Z5x95BiIdA7o6fWoB0XgUvoi9m1znxSF
         KsJwPlo0dfTJ5CfLS2ReQIzQgf5ExE3L2Z8ORSuyJWACWE41i/dr49sTM1AXTSXw/BLM
         3YSFQRhTG1J/KWlM0LI8Q4HW5rClcQ1TA9Cm63AJGPz95r7C9reNL6iMdDtC1J5dh8Pe
         tZOFn64zh1KcaNFVZ0mKLlc4ylYruw40ufLaqP//1xn9ObK0vz2/w+Gas6Q1nJe800Rt
         1EBw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1706402630; x=1707007430;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=xJjfllB7hqAPskI95KrviUW6Tet29Xm8hBrvemKl1DU=;
        b=Mwl/5vqZyMaBNjA7jPtyM3jVQE5Y8tDYjiKJQUFjFtoVh+XeKwqZ4rWvD0+6q9s15Y
         YvPsXlltcR5dB1vo+cK1g7OqJ0oIhJFeLo7gqQ7elAYYES+cf6JHKDeLPTMyK/CgpJ9p
         kgC8i7CcAjC2hx1UuTHqNID6ymMpXdn7tP8FbH50JTzUcsyrERgh/aG4zrTCVclPu6iq
         Xhs/8oIwvrTLtR9S+m1NLyHNnAyaBURiZMn5IdpyrGuwLJ4XZhKL/cGTE2sq3ILf89io
         GntiiTpq+cptR22nO5pcUPxDKm2EtAJKdw/Fi1PCfdYqxmvWa/IDkOjj95xRyLSx0c7p
         lPJA==
X-Gm-Message-State: AOJu0YzZlwD9L40Ke06NodpbtIDc/uAJKZ5lWfGfL1egry7UtnLm+BAi
	jxTTEyCquukykPzNWRFM7fAL6c5tzAT18h5en2mfzIcA8uOCVLgpQDd0CuysUx/VwnduP1UoL3n
	QT5Ns7JdYgA2ztfMeZ3Bpl5RIizMWDOXsc+JCnw==
X-Google-Smtp-Source: AGHT+IE2IAS5u1iB18SvOFf2VzBLFJlsGN8Uiy/FjWbYeaSL6lOEryDDytsrHOd929bLK6dJGDV8nAXIEz9HLZwQ9Tc=
X-Received: by 2002:a81:b1c4:0:b0:5ea:a867:5bc7 with SMTP id
 p187-20020a81b1c4000000b005eaa8675bc7mr2419245ywh.6.1706402630566; Sat, 27
 Jan 2024 16:43:50 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20240121-pinctrl-scmi-v3-0-8d94ba79dca8@nxp.com>
 <20240121-pinctrl-scmi-v3-6-8d94ba79dca8@nxp.com> <CACRpkdaoBgcYToh2Za9k6gek=MX5Q1YZEoy+MrE-oL3t0UhJpg@mail.gmail.com>
 <DU0PR04MB941773E509C09F9C951253DC887F2@DU0PR04MB9417.eurprd04.prod.outlook.com>
In-Reply-To: <DU0PR04MB941773E509C09F9C951253DC887F2@DU0PR04MB9417.eurprd04.prod.outlook.com>
From: Linus Walleij <linus.walleij@linaro.org>
Date: Sun, 28 Jan 2024 01:43:39 +0100
Message-ID: <CACRpkdZ0JD5s+=jFN7Zw_uLr-VtRh3Or2=1rknq+aaF_DjvU4w@mail.gmail.com>
Subject: Re: [PATCH NOT APPLY v3 6/6] pinctrl: scmi: implement pinctrl_scmi_imx_dt_node_to_map
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

On Sun, Jan 28, 2024 at 1:32=E2=80=AFAM Peng Fan <peng.fan@nxp.com> wrote:
> > Subject: Re: [PATCH NOT APPLY v3 6/6] pinctrl: scmi: implement
> > On Sun, Jan 21, 2024 at 11:18=E2=80=AFAM Peng Fan (OSS) <peng.fan@oss.n=
xp.com>
> > wrote:
> >
> > > -obj-$(CONFIG_PINCTRL_SCMI)     +=3D pinctrl-scmi.o
> > > +obj-$(CONFIG_PINCTRL_SCMI)     +=3D pinctrl-scmi.o pinctrl-scmi-imx.=
o
> >
> > I think you should probably create a sub-Kconfig option for this file.
>
> Yeah, good suggestion.
>
> But as of now, the major issue is Cristian is not happy with adding
> a vendor compatible for scmi pinctrl when vendor has its own pinconf map.
> So we are stuck on how to support i.MX95 SCMI pinctrl.

I see.

> Previously Cristian suggested build exclusive for generic scmi pinctrl an=
d
> i.MX scmi pinctrl, but this means arm64 generic defconfig will not able
> to include both configs.
>
> Do you have any suggestions?

This is not a technical problem, I think it is more of a policy problem
and I can just say what works with pinctrl, the others know better than
me what is best for SCMI in general and how SCMI drivers should
be designed.

Yours,
Linus Walleij

