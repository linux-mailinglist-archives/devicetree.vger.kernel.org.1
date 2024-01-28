Return-Path: <devicetree+bounces-35900-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 6961283F286
	for <lists+devicetree@lfdr.de>; Sun, 28 Jan 2024 01:27:57 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 2641C285D9F
	for <lists+devicetree@lfdr.de>; Sun, 28 Jan 2024 00:27:56 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C09AA63D;
	Sun, 28 Jan 2024 00:27:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="BnN6bWTh"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-yw1-f178.google.com (mail-yw1-f178.google.com [209.85.128.178])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2D586803
	for <devicetree@vger.kernel.org>; Sun, 28 Jan 2024 00:27:52 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.178
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1706401673; cv=none; b=QjODS/0FXrQQsgh2ozOco5mqN04/d2guVfDs67MQtGCRbyE1TLcPdhna41MRpjRtvdYtdDK4CREUMNBeeY5XZzO7iAR9FiQo1kpx1U7T8FlewNvXdt+afivElynT6SwaQdwMAvrEuafs9P67301Y41P/MdtqbiI0TLbc6ykuIvI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1706401673; c=relaxed/simple;
	bh=3G1BZUc/awZCAssluIQWHzMdeWDdPsi0QWKz/a/W1nk=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=d0ogkRtr3iQH6shs5plTbvjbo4jzn6UmOmIdDUeIXSQEF0RPkulM4ysbLj+QpvmqHq8fjuDNa+4Ms4ssxuUTAlCh10fVOwgplF2XfAKT9jPUk73e6iiKZmSYHzrKpkNIf7zQ4AKiFy6HayJ1zXC1qkoipio5B4uNfeXv0tbljxk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=BnN6bWTh; arc=none smtp.client-ip=209.85.128.178
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-yw1-f178.google.com with SMTP id 00721157ae682-5ff821b9acfso14750827b3.1
        for <devicetree@vger.kernel.org>; Sat, 27 Jan 2024 16:27:52 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1706401671; x=1707006471; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=3G1BZUc/awZCAssluIQWHzMdeWDdPsi0QWKz/a/W1nk=;
        b=BnN6bWThu7NpMfg8VfYYXG/LgBS5Ix792mJZ4jS5eHGMgYSbOTcpPrU0m1aFZm/7LL
         XXVhGAGAbEZhhRDDiYDfcBxguApjnZUW8bPWLQiV1X2LwNq8xQkm0huDyFCDzafLch8i
         zyq9R8lUrwdTej80rG2GxdlgIokg/bqoLgzq7RR/pqAi2J9pjOOfZLbKbGbj1wj58bKU
         /3qpVeL8UIemA12k0lH+Bh+qJzh7Ic/DTEI6j56DGni65iOAeJE/1JaN0f/eJJB78pD8
         it8zAbrxGdfunjzWYMwJNtSHxAYRtATHJiatmX6NLGRXLZXC0FpURrToHTO1Su52C9Bc
         ewqg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1706401671; x=1707006471;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=3G1BZUc/awZCAssluIQWHzMdeWDdPsi0QWKz/a/W1nk=;
        b=XR2vJzyoOOJBikIx4fCJ4D4t8lubezrdGLjzRNni8W0PWaG+s4wyjoSRTb5DYbwmIu
         QsmZvtEgved4ZS7/tHmUPAFyFdV8NkPxUyzVDR8vTpuMz4t7eQk4Ab5OEfiJrf8vRyCO
         iZXzZvBOIkMfciU0irYSRRe0aDpKFGk3ze4+Swrm8lWCV3RdfVbOUL7ApkABkQvFPIkJ
         3mOVxSTHqITcMVluzyRZAYqiNVC0yzxcfnhIlQmY7zQrbWcAxlwZA0+2Pk04E5Q3catb
         uvmRidELIzCicX3l0TtDprNnEqL52aI0HcTzG4Afs5+Ge3iz1UNnibbsHBWoQ490Q9nb
         36Kw==
X-Gm-Message-State: AOJu0YwXAya88BR63QzJ+W3YFmYUY2wflmE5YM0bZeadShHAfdcRXK5O
	AIyL1947/ZnosNFlQ4KzxNYt8XLp9kI9RffG5qTswnBipLfFvGHjzDsI+acSPG9Rt5nZC1v8F9j
	nqaMSze6ZKhc/QvD5m672N4aPukqM/k//HmVqXw==
X-Google-Smtp-Source: AGHT+IEjSeC4hi0heaZUTpDAlmgTOe454SwsHBCH276W4pkjTAEo3a9iak0Qm8B8Jxx0QZUWAh/wBBvgSnVka9DoPL0=
X-Received: by 2002:a0d:cc93:0:b0:602:c94d:6b4c with SMTP id
 o141-20020a0dcc93000000b00602c94d6b4cmr1654809ywd.50.1706401671202; Sat, 27
 Jan 2024 16:27:51 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20240121-pinctrl-scmi-v3-0-8d94ba79dca8@nxp.com> <20240121-pinctrl-scmi-v3-4-8d94ba79dca8@nxp.com>
In-Reply-To: <20240121-pinctrl-scmi-v3-4-8d94ba79dca8@nxp.com>
From: Linus Walleij <linus.walleij@linaro.org>
Date: Sun, 28 Jan 2024 01:27:40 +0100
Message-ID: <CACRpkdYOj4gDzVNyfkDEsTfHZcQnV+X6bqQ7Vt1KH2kPa0hPbA@mail.gmail.com>
Subject: Re: [PATCH v3 4/6] pinctrl: Implementation of the generic
 scmi-pinctrl driver
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

On Sun, Jan 21, 2024 at 11:18=E2=80=AFAM Peng Fan (OSS) <peng.fan@oss.nxp.c=
om> wrote:

> From: Peng Fan <peng.fan@nxp.com>
>
> scmi-pinctrl driver implements pinctrl driver interface and using
> SCMI protocol to redirect messages from pinctrl subsystem SDK to
> SCMI platform firmware, which does the changes in HW.
>
> Co-developed-by: Oleksii Moisieiev <oleksii_moisieiev@epam.com>
> Signed-off-by: Oleksii Moisieiev <oleksii_moisieiev@epam.com>
> Signed-off-by: Peng Fan <peng.fan@nxp.com>

Reviewed-by: Linus Walleij <linus.walleij@linaro.org>
(I have just sent nitpicks anyway)

Yours,
Linus Walleij

