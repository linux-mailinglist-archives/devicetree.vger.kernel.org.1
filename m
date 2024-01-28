Return-Path: <devicetree+bounces-35897-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id F3DA083F274
	for <lists+devicetree@lfdr.de>; Sun, 28 Jan 2024 01:16:24 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id A23BB285FF9
	for <lists+devicetree@lfdr.de>; Sun, 28 Jan 2024 00:16:23 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id AD7C6137E;
	Sun, 28 Jan 2024 00:16:19 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="AFL0NTA1"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-yw1-f174.google.com (mail-yw1-f174.google.com [209.85.128.174])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D05E61361
	for <devicetree@vger.kernel.org>; Sun, 28 Jan 2024 00:16:17 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.174
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1706400979; cv=none; b=hlpc7V0uLt8+QejDWG3rB6vvIz1zq9dY5K+IbPubO5gTtwm7r5EK9wBU8vrpjhO/gR4fV4SJ7q85JawIuXUz+nQI6Aqy2i7VlTpA4joH8YI50NYR9zRom9T4IJDrfwB3rmrcqh4AM+H+ejJRL5IamJcfVTpbRButLhVGwdkuPL4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1706400979; c=relaxed/simple;
	bh=j+JxCkxm7sKq7EUWqxAMAVKkQ0zzFi+vxNp56Qbb27o=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=b8YR0CAMXO9K/6+dd/d/WKZZUiflYocNetOAnDARSD/gFo0OEwAKrKz27ki+8FKoKHHCTto0I/GQ5rAuRqOY5MCyBrikw7TTj2NcxszTU3+4flk7ZP5F00JoO1bPa5Gdi6cNl/VGj/LEplJTA2mpXDen+yj0f47u7HTnai0oI1o=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=AFL0NTA1; arc=none smtp.client-ip=209.85.128.174
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-yw1-f174.google.com with SMTP id 00721157ae682-5ff88cbbcceso17825637b3.2
        for <devicetree@vger.kernel.org>; Sat, 27 Jan 2024 16:16:17 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1706400977; x=1707005777; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=Okg1vO1j4FYoqrEXhHbzMFKSp7IGpxrooy4PaFetwPE=;
        b=AFL0NTA1DcxII6tzf8OKwD8eQuaqZOXbqNBkeFpjC94ELa3nmLoaatR15sI/Mzr2eb
         b5MMlQfpa4wpMrR/8AOFnIRUfnBSIPZNM3HkLXAuXELy4O34rwotfvCPjvVRIIy98dHk
         vV9k+Whu1pOIO+vzTmcRYscG7UdswUfT2B8ZZ7aC3gwYvDX6AYQWGvAeGkRt7UXngvw/
         9rhaH++3FWa66SvYq7dkd4SGwvnsHvebrM7ecRjuryQV3vY6+7G9N7NEzy+uGZJNZ2QS
         BkmHvorTcAxKoK/1FKDnISHrYQXMSJZgiB/sTKxR1NF8EF8+PFuCAc7jeZSO8SNJgiQM
         ME4Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1706400977; x=1707005777;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=Okg1vO1j4FYoqrEXhHbzMFKSp7IGpxrooy4PaFetwPE=;
        b=t9qPA0oIz5M3T/e6315g8clyHXu/5FNLVOFLUkd6JvzWVzrNM+B0U6c9W3qD0a+RYR
         /Q6xXzmfSFLH8Zur1ia9rZhUl46Yf+I1gIBpa90m8W0idFLV/B8tk/skFdGhtPcYkFoQ
         yJ1WrkVK0DbL/19a/QzE1bWV7IyTZZCkSoBXlZnv1xgT2qMFOfpn3VllghOfNYcAB/c0
         jTuqWN4WLyva21pTzxezjKUuXaAplydasOpf+GJ9xuLbVCELfRlVZhJPDKryfS8UOg5j
         04CX4FgRUwpptYkCiRijY8wbASuyS4hqOmU7G84nxgGgmALPGc/QFUFdc6dwSV7E1fBp
         EAaw==
X-Gm-Message-State: AOJu0Yx/91tg4uF//A/1pD4tunKiRfAd1ue/uC25B2rHyPMZcMcKVNN0
	fQV93yB0cFdLAuMnLTa7NPaCKLLuMe80BgVNiaW3mX6epmWCnvmMQ11e+n2kPRZQFOg7xqB+tX0
	sHj5Er959FaluyT1PxpLz/6MP+HYLbxhvU9VQEA==
X-Google-Smtp-Source: AGHT+IGwmGgY1ob0uH5QlnJBFG56d3EExCZTVCMfztOEBi1dd1S0zZOOU4ZeO4Sz3B1u3wcOKCmKCWeNC8YM5Hl5v7c=
X-Received: by 2002:a0d:f4c3:0:b0:5d7:2c6b:623 with SMTP id
 d186-20020a0df4c3000000b005d72c6b0623mr2487594ywf.39.1706400976785; Sat, 27
 Jan 2024 16:16:16 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20240121-pinctrl-scmi-v3-0-8d94ba79dca8@nxp.com> <20240121-pinctrl-scmi-v3-6-8d94ba79dca8@nxp.com>
In-Reply-To: <20240121-pinctrl-scmi-v3-6-8d94ba79dca8@nxp.com>
From: Linus Walleij <linus.walleij@linaro.org>
Date: Sun, 28 Jan 2024 01:16:05 +0100
Message-ID: <CACRpkdaoBgcYToh2Za9k6gek=MX5Q1YZEoy+MrE-oL3t0UhJpg@mail.gmail.com>
Subject: Re: [PATCH NOT APPLY v3 6/6] pinctrl: scmi: implement pinctrl_scmi_imx_dt_node_to_map
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

Hi Peng,

thanks for your patch!

On Sun, Jan 21, 2024 at 11:18=E2=80=AFAM Peng Fan (OSS) <peng.fan@oss.nxp.c=
om> wrote:

> -obj-$(CONFIG_PINCTRL_SCMI)     +=3D pinctrl-scmi.o
> +obj-$(CONFIG_PINCTRL_SCMI)     +=3D pinctrl-scmi.o pinctrl-scmi-imx.o

I think you should probably create a sub-Kconfig option for this file.

Yours,
Linus Walleij

