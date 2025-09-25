Return-Path: <devicetree+bounces-221645-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 9B292BA17DE
	for <lists+devicetree@lfdr.de>; Thu, 25 Sep 2025 23:16:55 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id AC1712A1FD9
	for <lists+devicetree@lfdr.de>; Thu, 25 Sep 2025 21:16:47 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 387CB275AE2;
	Thu, 25 Sep 2025 21:16:45 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="FT4uvAxO"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-f53.google.com (mail-lf1-f53.google.com [209.85.167.53])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 738262773C0
	for <devicetree@vger.kernel.org>; Thu, 25 Sep 2025 21:16:43 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.53
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758835005; cv=none; b=FD8Ej0Z5pPdvriQfkUUOnPYWQAqjHhkrEE4gkklP03x4eNEa1xPSz5lWzS2tyJI8UtqNa4eqhh7PxltWy0ePBd1RTbor5X3f7xDpd6io5P8tkIPHM+nUeOsdiacyY9NKfhaqPAReAkZl9EvWkolm4dQUZbwbnmtV6CmxtwGIxpI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758835005; c=relaxed/simple;
	bh=SEKTPGDsWg0VrkaRrZsVcoh0RsDKUEs5dmSe955jVFU=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=LvdJ2Os1i2ewe4ZMVyhcJ/WAlVM/oMZshBX8bcgRLp5ZyEQn/e2A7Jpqf9ioC8nY/vE+FRGx0buNC58FtdBmG+7MFDZ3NDlHFjJBM1kdJZySizzlT4kVpbpTnSVh14Awo5LELH+jlJ2ToEfAwHhMDtJZTX+oDRMje5FmXsCWDCU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=FT4uvAxO; arc=none smtp.client-ip=209.85.167.53
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-lf1-f53.google.com with SMTP id 2adb3069b0e04-57e03279bfeso1929856e87.0
        for <devicetree@vger.kernel.org>; Thu, 25 Sep 2025 14:16:43 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1758835001; x=1759439801; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=xp46yIJcbHRJcWjVDLrWyTZCidnv7xkJHZZNxJgNolE=;
        b=FT4uvAxOA2Wsg95yoZ8tSCNKdZgfzW/7ACgswFDw7PMDvX9ngEIk2xA2BrCwseSUG9
         ho8yffTv9HOXqP1sxYRcvEiiBmdrYtNesLW5gZ8Pb05g7sBz8u59uHXwcJjOYJQxfdxr
         s8jrwN15qfxyfYAqG1RV1O5V6D5rsVZM1i6M+IulAFgoCPrQ/42QrffMQJ4iUE1SmIaL
         jnu85rzJw07e+4UXuP/4WPQLUkz5w8f8h2oO/wLM8lTOl1HIUzRPBBPMG2BfZowKAuPo
         PBQDb6BHy0NqbWn88I2X8q2Akkrcz+LwUy9V8NpbWsb+Zj/8Nqr5GZLjbpqxUv5ZFiGp
         E0qQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1758835001; x=1759439801;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=xp46yIJcbHRJcWjVDLrWyTZCidnv7xkJHZZNxJgNolE=;
        b=Z20SE3+t8IQHxK4b5IZi4Jy6tNWNCSqHa+03YY9aRHGRdUEkNCsxTeWYYenZJpAF51
         pJzns1mCUDLMEiBU6HqF0Y1nGt7YajxqZSFcCY8NawCJrCdKR4mOo0i5Soohax2Mks+e
         zj3VgF4eMY7yvZ+CeOx8Ux/YiqHwtn+0TeYlo0y2sv1LjheHYRQ35QeHMVy+HUKQRhWF
         kx86afFE1wJJyqeHnRA9kNC6LuoF/iqGy8OKQLGJZGDaWN93ufJU/62LutKSZ1z55Ko/
         e8sLjZ/d9WEXN8Pv6yaso8YfavdDP+GvOR0y2g0YBeCiRwHLvkGvmtZksQFem6WzlX5o
         m+IQ==
X-Forwarded-Encrypted: i=1; AJvYcCVen29Fi8mt1E8haND61xjZdt64qVgusqAZiNpUlJlkqN3e4uF8/pZcqhbnVP4XfR1rEHP7CbOnHOS/@vger.kernel.org
X-Gm-Message-State: AOJu0YwdlUXu95OoHznXGleZLK3A5zUnebWIX2JnNokO9fXFCYtUDN2Y
	wBhZL5LxNtfxkCITeKzBvz12NKEMiYnqrOsldsYn2GiToRIhMxG914pk0bhjSf4pnKbmn7nCajh
	+tjCy94/8Fau5Dw75CGtJvnys4RY9C8s=
X-Gm-Gg: ASbGncsD9Hm47jByT+Tz0Ym0oa8irFCIQujDrTV4B4dUZ5yxCWjvAxFf5hWfUbRjXWi
	D8Z5xjSx+aKP2uTVGseeUOeFiODMupj40Y/PWzzJed6J9SVR/tWEP3oVzQsGYVKFlyj2lx8lgLa
	bmbyECOTuEcOLWKmRrXDSMmuA7yX37R4smgRAbtyUvicSlFIUcLDNkHBaWL6UXku61E3lrmaF7t
	tLqq9DK1EfQcvJPzMeRg2iKCkLyfZiHAZyHm+Y=
X-Google-Smtp-Source: AGHT+IF/R4h8pdyoRhIuFrnmhFqzj4YND2cqkoN6aHQ0ZxIGheJEKMprkxFrhvzl4kOccS6Aw2A/43bT62WxKEVS/6w=
X-Received: by 2002:a05:6512:2345:b0:55f:5c1d:6cd8 with SMTP id
 2adb3069b0e04-58304fa84d1mr1231774e87.2.1758835001303; Thu, 25 Sep 2025
 14:16:41 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20250925-imx6_dts_cleanup-v1-0-748380dd0d22@nxp.com> <20250925-imx6_dts_cleanup-v1-5-748380dd0d22@nxp.com>
In-Reply-To: <20250925-imx6_dts_cleanup-v1-5-748380dd0d22@nxp.com>
From: Fabio Estevam <festevam@gmail.com>
Date: Thu, 25 Sep 2025 18:16:30 -0300
X-Gm-Features: AS18NWCZCROPwL8d5eWS_txyBP3E590ZB-alom2X8buKGCuzjFOmQJoNNEiM6KQ
Message-ID: <CAOMZO5BNBp-sgeMvisvXjvrQpkznGkCY-8h_vwp46p0izwYqEw@mail.gmail.com>
Subject: Re: [PATCH 05/11] ARM: dts: imx6: remove gpio suffix for regulator
To: Frank Li <Frank.Li@nxp.com>
Cc: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
	Conor Dooley <conor+dt@kernel.org>, Shawn Guo <shawnguo@kernel.org>, 
	Sascha Hauer <s.hauer@pengutronix.de>, Pengutronix Kernel Team <kernel@pengutronix.de>, 
	devicetree@vger.kernel.org, imx@lists.linux.dev, 
	linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Thu, Sep 25, 2025 at 6:14=E2=80=AFPM Frank Li <Frank.Li@nxp.com> wrote:

> -       reg_pcie_power_on_gpio: regulator-pcie-power-on-gpio {
> +       reg_pcie_power_on_gpio: regulator-pcie-power-on {

What about removing _gpio from the label as well for consistency?

