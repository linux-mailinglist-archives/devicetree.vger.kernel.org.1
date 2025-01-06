Return-Path: <devicetree+bounces-135955-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 6DF57A031BF
	for <lists+devicetree@lfdr.de>; Mon,  6 Jan 2025 22:02:23 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 56F5A165094
	for <lists+devicetree@lfdr.de>; Mon,  6 Jan 2025 21:02:21 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 14D311DF25A;
	Mon,  6 Jan 2025 21:02:18 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="LoRy/UVI"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lj1-f178.google.com (mail-lj1-f178.google.com [209.85.208.178])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5B01118A6AC;
	Mon,  6 Jan 2025 21:02:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.178
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736197338; cv=none; b=atCZVJCNQ20JWQhp1/nNIk+QS53Jm9vlK/qgVFnbcFrjvESmfDrX88z0TYEctTEb69lFU1auAZ0eIz1PrNaVlkd7DE/C8oBsuSQk1ltHFxV0ly4wx3B0UswJeTneHrhftSWw8+VrD3LzOAEiEIWzJp66ghljBQL3EMAMA7NYFFQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736197338; c=relaxed/simple;
	bh=FSksfoV0Ccs0LphJlugUorrUGEPy9Zvkm+EQdSpvqv4=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=uAPSdPSFgZIR/eNnyUStkGQ91YUJ3C/6ru+MEn+rVSl1zSXhtzas0Xz6lBnEm6YKhj1xZ4jCypukBd/yrZm+Qs147Nm+slvwoIgz+3s4B4rt3O9Ayb18M9RqtAVAZhbZ0XV8o0FI38srNlQV5nNV9t5l0q+yIedydCl998IHqgI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=LoRy/UVI; arc=none smtp.client-ip=209.85.208.178
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-lj1-f178.google.com with SMTP id 38308e7fff4ca-30034ad2ca3so138036601fa.1;
        Mon, 06 Jan 2025 13:02:16 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1736197334; x=1736802134; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=FSksfoV0Ccs0LphJlugUorrUGEPy9Zvkm+EQdSpvqv4=;
        b=LoRy/UVIvgXJXotR+2JtvFNjSM9nd+6EqbsyMI5KfLYshA+tNcbpiXdDB+wKA0e1O1
         BjE30qfS47BH7/fvf/D1SjDgP8MY2OXqvQ+/xiFJ+q+fF7YRdaXeFMd5aOZlzauyUM47
         EpsQ+oTgKdKjvzjdQf6XoVWds/NgdlJ4QWrSc0rCb6UZ1PBbThB5THmpyJb5Z8ODGVSf
         POKDupA/6os9oELiWGp9VumXPzJOjFusCWWr/AhqX4VHJtfUpBkGluJMDlIJnOYwbLXG
         YDVClDaM8j/uSFe/iueqcsXYgnSPmdNEtHfLSi/2da9XPOUWQjCtnoW9JsJ6BYpO+FbS
         YKEw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1736197334; x=1736802134;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=FSksfoV0Ccs0LphJlugUorrUGEPy9Zvkm+EQdSpvqv4=;
        b=NgOcbifF2Izer0arnXZYcAU8ZWp1AZpIVEw4cjaPMe5WcPWqRl0of13OLvrldr4kW7
         1uPTgbmVwS1NZGIcDJPTd6YO9hnRvfZezVPgbzXJACiX1rBftngdX5ZeHoOPR2J6D2oC
         x6wB+DJrj5nCtBle0JH7ChV45ZvezeVqZWn5vR0w+7vXx2mdovUpUO14NcjWgxV3cawb
         Q+FXqjlfhCwF2oyWvZMghY/OQ0gMw5Wu7dBNtSGAost0fvi6nLmDLh3CmWt01oFV6xAR
         vBwzH3oVHhOIguDXpxzyO+309piB0+SAX/rL6sIMEkHRqSQFSRUGPQqldT1EcXke8cUp
         s+2w==
X-Forwarded-Encrypted: i=1; AJvYcCUP0EOXGz9/t+cgaNewS85PHFL04yPTQNtl4L3P4qPdS5renLZx+dq9Cv2K3AfCirRckdO4PwfvKjfiYTE=@vger.kernel.org
X-Gm-Message-State: AOJu0YxpsECmgF2xA0M1iwBJNWsa/iaIXO7Av7dtLiQXZM1ihKSrw/af
	xLQmJNr8vU09+KCNlhEj6ZKDTOzKaPvNlbfM262/6vlM+SkyJHakCKnmmIOwu+DUryKJ7aSXF7N
	zUU/OmYiX+ZJLsrmtd4WXlh7aWmdnAg==
X-Gm-Gg: ASbGncs0T6SiGFgnk+aReDsrCewdswM1IHtWAQpCvR1KgKVg1wgZYnilgaZVylJFZBl
	d9nz/HULW7Nnmoz6g/ArJoywITvdaHkAolxv8TW/FHFqC0vhWIngocpI9EZUZnNzYzdJnkQ==
X-Google-Smtp-Source: AGHT+IH5sSW1uM19drmFof3pNxa3vYfTwiNNLlLGEBw4FDaRtnaIDgnVsupO45AUaUAgf9tyT3GSnfpvL9Ng/Z/humg=
X-Received: by 2002:a05:6512:110d:b0:540:2a92:7da9 with SMTP id
 2adb3069b0e04-54229539f3dmr11610884e87.21.1736197334159; Mon, 06 Jan 2025
 13:02:14 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20250106205635.2177321-1-Mr.Bossman075@gmail.com>
In-Reply-To: <20250106205635.2177321-1-Mr.Bossman075@gmail.com>
From: Fabio Estevam <festevam@gmail.com>
Date: Mon, 6 Jan 2025 18:02:03 -0300
X-Gm-Features: AbW1kvYXgq6GgQzzyf3D1NZI4udm-1B7Nz4fQpoAIJcXJtm_KNj5TR_fMH-dl_c
Message-ID: <CAOMZO5DDDFAWoTsujKuUsvRews4dez=rc6a3+Hnaq5iyoL6T6Q@mail.gmail.com>
Subject: Re: [RESEND PATCH v2] ARM: dts: imxrt1050: Fix clocks for mmc
To: Jesse Taube <mr.bossman075@gmail.com>
Cc: devicetree@vger.kernel.org, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Shawn Guo <shawnguo@kernel.org>, Sascha Hauer <s.hauer@pengutronix.de>, 
	Pengutronix Kernel Team <kernel@pengutronix.de>, linus.walleij@linaro.org, arnd@arndb.de, 
	--cc=imx@lists.linux.dev, linux-arm-kernel@lists.infradead.org, 
	linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Mon, Jan 6, 2025 at 5:56=E2=80=AFPM Jesse Taube <mr.bossman075@gmail.com=
> wrote:
>
> One of the usdhc1 controller's clocks should be IMXRT1050_CLK_AHB_PODF no=
t
> IMXRT1050_CLK_OSC.
>
> Fixes: 1c4f01be3490 ("ARM: dts: imx: Add i.MXRT1050-EVK support")
> Signed-off-by: Jesse Taube <Mr.Bossman075@gmail.com>

Reviewed-by: Fabio Estevam <festevam@gmail.com>

