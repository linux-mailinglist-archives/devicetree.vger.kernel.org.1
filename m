Return-Path: <devicetree+bounces-168087-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 5119CA915A2
	for <lists+devicetree@lfdr.de>; Thu, 17 Apr 2025 09:48:19 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 6D9F217F39C
	for <lists+devicetree@lfdr.de>; Thu, 17 Apr 2025 07:48:19 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 1241621D5AF;
	Thu, 17 Apr 2025 07:47:08 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="IjLwB52n"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-f50.google.com (mail-lf1-f50.google.com [209.85.167.50])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 449BD21CA1F
	for <devicetree@vger.kernel.org>; Thu, 17 Apr 2025 07:47:05 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.50
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744876028; cv=none; b=Wm7+Qx5jXnbVYb0L7Orokfckn8nDd24wjO+rWXNL/WLJezwKH+xPMxoGbM+WPXIPW54y4tXOEBcCntOj0mZOenrkmP1d8uMOUdqX989SouwZONFFAAj926QCirsahqEfirMHSc0zxNV9on9kpZmyu8MJyYQj18BnDPAZrkz+2Z4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744876028; c=relaxed/simple;
	bh=WEyznqoBqrdJu6XKj04AtQkuSGwFcw9ym4LfF8stkeo=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=X5obFG39ndXdY4viP96d2r2euEbc7s+lH4auZJBRAt4mKBsawy9T+B/KBpk88rF1JrkrdmSC8RY15/IpCFoDeY60oxYYUxYUu/l7skZknexqIrIiPYUsVhzUNuVd1nNN1k1H62FRGh32EZgr5O9UoTq6S7wtrcJQ35zHP08QY70=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=IjLwB52n; arc=none smtp.client-ip=209.85.167.50
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lf1-f50.google.com with SMTP id 2adb3069b0e04-5498d2a8b89so494961e87.1
        for <devicetree@vger.kernel.org>; Thu, 17 Apr 2025 00:47:05 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1744876024; x=1745480824; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=WEyznqoBqrdJu6XKj04AtQkuSGwFcw9ym4LfF8stkeo=;
        b=IjLwB52n60q3Q9VFKKP6XWVr6fust+tzRAz6Jg9rFcPHO+R1OsIThj5zvLyXvAnsej
         0m0gnoYOfXokeje20IoVvefHq4k4vf+dGcw4l+ZD/de4DFG2ByzRpG4UQRdoc5vFTu0F
         wbis8hSL7RIxWyMpA7nugFAL+CDgUE8JItkfXWZVOKJLwca50+krEIuG22Ws4gIx/gMb
         fo2hqWtwkyHSlnAdvGdreeOKULJEyIArlVpbIT40ojQjy+f50CS9F9KJW/BPhEKWqnIg
         ziK9pJsXYBD2oPtAXbukwaGZsrau0Myv8dA7jqiGsahbxPnFFD7mq2ZHcB571Cbl5x21
         QkTA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1744876024; x=1745480824;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=WEyznqoBqrdJu6XKj04AtQkuSGwFcw9ym4LfF8stkeo=;
        b=eW0gPheHbvId+iuoNNXr7YfvnTUEV94vGZtPjU6ZZv6DtD+46Lwk5XuUjjx6Llsqo9
         PH5T+TJ8GcjmRpa5t527qzPfaw8uWaSE0kjM0vBzg5nGdR/fBZaydxkRrx1vVByYYQGV
         AUeucS+zXEtoCVYUZGlftGEREYAF+8vkVQi+U3oINQOgzaegst7c3wX6X+S3aaZJfQbN
         8xsgtFA2O4GCl85LFOiSxRZbVmZbUA9L0sbLMeNbbkBHbko1WDnDPS2LJHQ6EqWU70ou
         5Ww4TksgWn2I18a+FD2ebdeJrEHH3jDBGmHHu5u+cTh47A11yJ4cDfMvF7MBSQmktxAf
         wNyw==
X-Forwarded-Encrypted: i=1; AJvYcCWgX966Ox7wh9gZX/mzzoWq1fQzhJ5Aj/TA36Qym8t/KdMRmzXrPrf1UpIe+dvLHx7xci8NWzhHKX+X@vger.kernel.org
X-Gm-Message-State: AOJu0Yyj4w6+AJ5nhpPRAAxdIc+LoZJ8cRn/inCGKJnkF46VHaw7FAsl
	F3ByXDEvtFseAEmuee8CVAClj+1te5Xbbt4Hg2Ioq+l2fp406rD8yOf7zXzaMKJxS5R0IuiqdfA
	YMGNnKKhafZ2C0QSs0vB061wPMQUVJ83L5wwivA==
X-Gm-Gg: ASbGncsZsEy/iYycZi8llUvQI3MWXGIKE6f11ul1K9iwaRy7vlyYI+NRNEE+xuHTbPr
	V12OHFMRmI59wC2Nl9NWtZdTA97KhFa268WiUfZPsKaGJfMl6AmdzmXvWVU9FYfNOa302Ec/O/4
	UsYy2KN40hHS/K1YVYK4J0eA==
X-Google-Smtp-Source: AGHT+IHsWIAbtRpfryXnt3qAIwy3EE4NveEHC7HyLBuEny9/7E3MO+B1CV3UsgSfANPfkNtKQcLRY1ygdj94mYcsZKI=
X-Received: by 2002:a05:6512:3d29:b0:54c:a7c:cbd5 with SMTP id
 2adb3069b0e04-54d64aab2dbmr1542697e87.33.1744876024309; Thu, 17 Apr 2025
 00:47:04 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20250416150847.3422218-1-Frank.Li@nxp.com>
In-Reply-To: <20250416150847.3422218-1-Frank.Li@nxp.com>
From: Linus Walleij <linus.walleij@linaro.org>
Date: Thu, 17 Apr 2025 09:46:53 +0200
X-Gm-Features: ATxdqUE6Yg7082az8t1vUSLeJgtF1F2xgv02wcz0LZ7Q-4BmoWJnqMUoGaW2MtA
Message-ID: <CACRpkda42xO+7tmp+CHPfNgx1YEXn6tYDoDXYJo-EnphH9cTXQ@mail.gmail.com>
Subject: Re: [PATCH v2 1/1] dt-bindings: pinctrl: convert fsl,vf610-pinctrl.txt
 to yaml format
To: Frank Li <Frank.Li@nxp.com>
Cc: Dong Aisheng <aisheng.dong@nxp.com>, Fabio Estevam <festevam@gmail.com>, 
	Shawn Guo <shawnguo@kernel.org>, Jacky Bai <ping.bai@nxp.com>, 
	Pengutronix Kernel Team <kernel@pengutronix.de>, NXP S32 Linux Team <s32@nxp.com>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	"open list:PIN CONTROLLER - FREESCALE" <linux-gpio@vger.kernel.org>, 
	"open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS" <devicetree@vger.kernel.org>, open list <linux-kernel@vger.kernel.org>, 
	imx@lists.linux.dev
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Wed, Apr 16, 2025 at 5:09=E2=80=AFPM Frank Li <Frank.Li@nxp.com> wrote:

> Convert fsl,vf610-pinctrl.txt to yaml format.
>
> Additional changes:
> - subnode name force pattern to 'grp$' to align other imx chips.
>
> Reviewed-by: Rob Herring (Arm) <robh@kernel.org>
> Signed-off-by: Frank Li <Frank.Li@nxp.com>

Patch applied!

Yours,
Linus Walleij

