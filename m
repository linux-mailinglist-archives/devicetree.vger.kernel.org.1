Return-Path: <devicetree+bounces-169800-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 48EC7A9848A
	for <lists+devicetree@lfdr.de>; Wed, 23 Apr 2025 11:01:21 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id BF6567A8A03
	for <lists+devicetree@lfdr.de>; Wed, 23 Apr 2025 09:00:09 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 8300C1DD539;
	Wed, 23 Apr 2025 09:01:13 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="wmYogycs"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-f47.google.com (mail-lf1-f47.google.com [209.85.167.47])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1349413C81B
	for <devicetree@vger.kernel.org>; Wed, 23 Apr 2025 09:01:10 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.47
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1745398873; cv=none; b=OC5e3jjWny6XAWlfSqqxdGNDhdDFmRTq1R14uvN4iDOY95elkc3e5o+ELAdJVIFukdMggF8iD6/5ZvxH5dEYJiqzvDO+fBFsjKQFaq8yTtC4PqKBKrbD1jM6nj4OuwJbmCzRS/Syz6C+oZLAGnSrn1SyP3/CbVB8dDJhW9kXcLc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1745398873; c=relaxed/simple;
	bh=l4ONh9IizedqA6W3QPhG+iwsoh6uJslCMo9BpNc/j+E=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=S5f1KUgrCMa0+6jwlyOaUN5i7tnsbUkmZkmNibhWhTJ4b2nyYh4vsQhrJNPWErpI52gvsDFggpIfCbxvEl2xc6YvPHw7Xlth80roB5BSSRPnNmjorLM6ACSep6tFKHLFH77SrVQ9wEB9gXa1vbeuvYrcuDpILYbPGVFuVgNfjM8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=wmYogycs; arc=none smtp.client-ip=209.85.167.47
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lf1-f47.google.com with SMTP id 2adb3069b0e04-54af20849adso717254e87.1
        for <devicetree@vger.kernel.org>; Wed, 23 Apr 2025 02:01:10 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1745398869; x=1746003669; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=l4ONh9IizedqA6W3QPhG+iwsoh6uJslCMo9BpNc/j+E=;
        b=wmYogycsPxJrT5IkGprAIkXL+9jDAOIzLQieuEh85TszOBHxPFwG9p5PzljEidlh9+
         jxUbO3Bs7L3VzNxJCG3vQOvxvwU2DWndvi3ZmNqMjkOsvNHzS1Kd9Gwpt0ieuSIzpkzp
         E00k4LvPWP3IQWV+IIP0whnT3x7gij/Gn8YDAUqvs7vTHimgW3aRByw5dRewYdZYYv+Z
         TGpDFP0SUJl7kwYo4+Hd3Xxg8+05yyZQdtvEgL67A++QxvrTw+goSumWNlJvG5Dn90Js
         CuAsqfDh6ZQgnmmwg7gfNaf55Ns7AD3pvbd9IhMSzw/cieBV21UxQCLF9F9j0spVAjqD
         Obzg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1745398869; x=1746003669;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=l4ONh9IizedqA6W3QPhG+iwsoh6uJslCMo9BpNc/j+E=;
        b=VMl5k7rfDZS8I2NCdACfMdKPJvrIHqpjQVgtlJqUR6sqZ4loGqQsTOYS5W+VDmwEkX
         RS4TMCIrcq5ggYN5KiEovAOkDnp6RnalXbXPX/FxbUqiK4B98abet9H6tJ+M/mHzWv1H
         zq8zVndXWEeUfKeTdYYu/jHaRlT40J89LA1Sw4uQPRr42FAhY1BduxUMqkXzBL46ui3g
         /xVGHWbJqIPysYwXtvKfWlkPDy9qK98FcdT2BdbC1hQoAk0eu+y7d2GNHlb2f4XnVjEZ
         nyho2ZR99J3c7SqbbdSgsJH8nbfCnqG+4+3yjEw+ERQJ1Ha5hrfWnU3AytW1AUrzS9QB
         s33Q==
X-Forwarded-Encrypted: i=1; AJvYcCU6iwihvUow2W/yQa5SREwZMQv8P5H0UDIYnleXgVW7+HxVsxzpVGduwDLVQ6B/JqfzbctjomnV78dn@vger.kernel.org
X-Gm-Message-State: AOJu0Yx3WIdz7rkEFbJGWnyZ4mdOigWHiQglkB9zLlAnyLMaXvIK8nMx
	gpjGintjX6qMwcr2zoh2xMNbYcG9QOsNij5TicOX/zM1ewWU/FVMYAiT1xKsfI+hr8QInek5tze
	2S3ERKFzDmV+mdOnX4wvLnjUj8oLBsmmNysTNUw==
X-Gm-Gg: ASbGncszm4ePUSrgPOIkwITFJiMqnAuoUFyoOFYdeTDV7tyoD3HiCjwyKRoWygL7z0o
	fgV9KHl9Ebywr8flsw4daXvtS2ZIlId+/RnOql++rfSJt1HHcL+PV+5/XbcmdSd1VIg3CS5kiae
	xwVVow26o2V3D+CmgZlQ0jPw==
X-Google-Smtp-Source: AGHT+IEEUsAi88UCbofnaku2lk+aEb48FzRJxri8OckiCKB/AVx4JpJsbdKyriMomMEWTnYqEIv4ataPoB16Fz19o6E=
X-Received: by 2002:a05:6512:a8e:b0:549:8d2f:86dd with SMTP id
 2adb3069b0e04-54e76b22a2bmr572698e87.20.1745398869092; Wed, 23 Apr 2025
 02:01:09 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20250417152158.3570936-1-Frank.Li@nxp.com>
In-Reply-To: <20250417152158.3570936-1-Frank.Li@nxp.com>
From: Linus Walleij <linus.walleij@linaro.org>
Date: Wed, 23 Apr 2025 11:00:57 +0200
X-Gm-Features: ATxdqUFs6bNpuAZ8C-mefVn5vnH3rPvKnGkG9Xz5ALDijczN73qOaRKozbezrQE
Message-ID: <CACRpkdZkhQRdDCTBxOUifT3uX047us8cFExhZiuAUueegD-zeg@mail.gmail.com>
Subject: Re: [PATCH 1/1] dt-bindings: pinctrl: convert fsl,imx7ulp-pinctrl.txt
 to yaml format
To: Frank Li <Frank.Li@nxp.com>
Cc: Dong Aisheng <aisheng.dong@nxp.com>, Fabio Estevam <festevam@gmail.com>, 
	Shawn Guo <shawnguo@kernel.org>, Jacky Bai <ping.bai@nxp.com>, 
	Pengutronix Kernel Team <kernel@pengutronix.de>, NXP S32 Linux Team <s32@nxp.com>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Sascha Hauer <s.hauer@pengutronix.de>, 
	"open list:PIN CONTROLLER - FREESCALE" <linux-gpio@vger.kernel.org>, 
	"open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS" <devicetree@vger.kernel.org>, 
	"open list:ARM/FREESCALE IMX / MXC ARM ARCHITECTURE" <imx@lists.linux.dev>, 
	"moderated list:ARM/FREESCALE IMX / MXC ARM ARCHITECTURE" <linux-arm-kernel@lists.infradead.org>, 
	open list <linux-kernel@vger.kernel.org>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Thu, Apr 17, 2025 at 5:22=E2=80=AFPM Frank Li <Frank.Li@nxp.com> wrote:

> Convert fsl,imx7ulp-pinctrl.txt to yaml format.
>
> Additional changes:
> - remove label in example
> - fsl,pin direct use hex value instead of macro because macro define in
> dts local directory.
>
> Signed-off-by: Frank Li <Frank.Li@nxp.com>

Patch applied!

Yours,
Linus Walleij

