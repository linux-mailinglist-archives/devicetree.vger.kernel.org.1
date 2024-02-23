Return-Path: <devicetree+bounces-45119-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 5F703860CE1
	for <lists+devicetree@lfdr.de>; Fri, 23 Feb 2024 09:34:17 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id B67B2B2714E
	for <lists+devicetree@lfdr.de>; Fri, 23 Feb 2024 08:34:14 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D689C1A701;
	Fri, 23 Feb 2024 08:28:26 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="hspgkU4V"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-yb1-f178.google.com (mail-yb1-f178.google.com [209.85.219.178])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 334D217C96
	for <devicetree@vger.kernel.org>; Fri, 23 Feb 2024 08:28:24 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.219.178
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1708676906; cv=none; b=r+LAlXof5eLXj5/TyuUoKilcuTco29miRUw0nmGe0MqUayFWFtcNImbgk2MjEBXyYbZQYSBa9NyOcRQ7nSeCwg/e7ijDfG1byVYF7EADslh8FLph5801V9jZ6eRAkdKGKpeBjpenZisY5Z2SoEryGbZDEm9ZsLCrj0+FSacYPlU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1708676906; c=relaxed/simple;
	bh=8AiynCpe9xm6kQcOTCDN5hH0DOETixPNQfpGOskMMBI=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=J15o0ytTdwMaoK8FQK1E83a8G1neMxpEPM6D5Kq8vdJB4IJhgGLlXcv8iPEG2re9vGp6PL1DPgXIhIxgqX4gwS+A/SRXlYkfUAKwaywpxJSBW4HXhTkYVSh3HHe0ekW4wzmX93wX0u6FXuSe9iUJPlxI01a9HbLcupLZkFFSlR8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=hspgkU4V; arc=none smtp.client-ip=209.85.219.178
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-yb1-f178.google.com with SMTP id 3f1490d57ef6-dc6e080c1f0so92708276.2
        for <devicetree@vger.kernel.org>; Fri, 23 Feb 2024 00:28:24 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1708676904; x=1709281704; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=8AiynCpe9xm6kQcOTCDN5hH0DOETixPNQfpGOskMMBI=;
        b=hspgkU4VuOYaCAYPBmvVF/+2R5JyzbNB2B/GRCJWBySrNNcG9uQ/mZQ/Oh7kpaFp8X
         qPAxk4/A39k38ZhDtIbMoh2kByr/fcOQKvqqJfZzb867K8L0olDNFw71V0UAeP3aUxvp
         aKXbmTeibIXNwTdIxJPzGDzt7M+L3lk+5STrThAdgXWVcJv62Wz96p2+3qg2tYCRK0X0
         kbGA+w+b+2xbwsrgDZ/IFW1KjuLV3b9G2ZPoGNLsOrHFZdAAKuL8sL+yw4xvidIMk/Dz
         UVPh21EP1q0ldgz56cbHLbWI5U+/yxHmkJmpF2g9d4U+dybUOlefuJO8K/HcouBSh2h6
         R5rQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1708676904; x=1709281704;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=8AiynCpe9xm6kQcOTCDN5hH0DOETixPNQfpGOskMMBI=;
        b=a2mE1iuk8RIFMviI02/Dwow3H503p3xrpQkD7tiI9x3iL0nAKx8D4jciZuwJzODt7l
         cmp7owR/blMwd1JpB7k9jYpI2PY5xBRlO0pVQS0iKmY2up2wAI6VFuk7GGMf5UPLKp8i
         Ct8bK6bLBz1xg8INA6+YtNp1Gp+r4JFyStbUw1CIdrYFevtwlYpeO+2aLrIEO4M4ITO9
         7Qsna4urnKxaDGXqvnp4Eh1HPNBTeRGitLWyLoPyTaPPxksW+OVcLUBBUsalzyuaM7eK
         fHqoCwIm8/l7u1+hZkyCWgHZRbqzvmZpi7Q09/nO01bj4sGP1WO+sYNSYjN7+HoDTmEv
         qBfQ==
X-Forwarded-Encrypted: i=1; AJvYcCW2ohpD7ibMs4kYc7ZzlLSatZXPl3bNAIREWLk2wUIsZAf1QEXprwNV+lw2YuVkYEYC+ZJpb1AZYLR8YFR+43Mku8iuarAPvkyE6g==
X-Gm-Message-State: AOJu0Yw4gkM+e1hMmzkkh/o73OdoKGXmr6SJunU0VEZxbvGwJzWAu9R7
	dXOzEX/KYaTfcAKfDcm6gIB+yfyOregacwpT1/MpvSK8s1/ZA80EKY/M73kPZU8cCMoxK16ngSE
	MABO8vi9Owf7BoFbkV114DRJm10nEpvlbC4ht4w==
X-Google-Smtp-Source: AGHT+IFZmfPy2te5fRsS6uPQOwURXMnZozqqnqYceFRPogHaB094n6NaUZkzBM6xsJv0mbIN5skNvcuRImnUSaccFbQ=
X-Received: by 2002:a25:5f4b:0:b0:dcc:b69c:12e1 with SMTP id
 h11-20020a255f4b000000b00dccb69c12e1mr1538778ybm.59.1708676904144; Fri, 23
 Feb 2024 00:28:24 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20240223-pinctrl-scmi-v4-0-10eb5a379274@nxp.com> <20240223-pinctrl-scmi-v4-3-10eb5a379274@nxp.com>
In-Reply-To: <20240223-pinctrl-scmi-v4-3-10eb5a379274@nxp.com>
From: Linus Walleij <linus.walleij@linaro.org>
Date: Fri, 23 Feb 2024 09:28:12 +0100
Message-ID: <CACRpkdZLuWwecacBAimT=Vj67dGabzBH-7aaqzoyj1B1sY6o_A@mail.gmail.com>
Subject: Re: [PATCH v4 3/4] firmware: arm_scmi: Add SCMI v3.2 pincontrol
 protocol basic support
To: "Peng Fan (OSS)" <peng.fan@oss.nxp.com>
Cc: Sudeep Holla <sudeep.holla@arm.com>, Cristian Marussi <cristian.marussi@arm.com>, 
	Rob Herring <robh+dt@kernel.org>, 
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, Conor Dooley <conor+dt@kernel.org>, 
	Oleksii Moisieiev <oleksii_moisieiev@epam.com>, Shawn Guo <shawnguo@kernel.org>, 
	Sascha Hauer <s.hauer@pengutronix.de>, Pengutronix Kernel Team <kernel@pengutronix.de>, 
	Fabio Estevam <festevam@gmail.com>, NXP Linux Team <linux-imx@nxp.com>, 
	linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org, 
	devicetree@vger.kernel.org, linux-gpio@vger.kernel.org, 
	AKASHI Takahiro <takahiro.akashi@linaro.org>, Peng Fan <peng.fan@nxp.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Fri, Feb 23, 2024 at 2:08=E2=80=AFAM Peng Fan (OSS) <peng.fan@oss.nxp.co=
m> wrote:

> From: Oleksii Moisieiev <oleksii_moisieiev@epam.com>
>
> Add basic implementation of the SCMI v3.2 pincontrol protocol.
>
> Reviewed-by: Cristian Marussi <cristian.marussi@arm.com>
> Tested-by: Cristian Marussi <cristian.marussi@arm.com>
> Reviewed-by: Linus Walleij <linus.walleij@linaro.org>
> Signed-off-by: Oleksii Moisieiev <oleksii_moisieiev@epam.com>
> Co-developed-by: Peng Fan <peng.fan@nxp.com>
> Signed-off-by: Peng Fan <peng.fan@nxp.com>

This looks ripe for merging for me, there are clearly dependencies in the S=
CMI
firmware tree so I can't apply this to the pin control tree, but if
someone creates
an immutable branch from the SCMI firmware repo (based off v6.8-rc1 or so)
I'm happy to also pull the branch into pin control.

Yours,
Linus Walleij

