Return-Path: <devicetree+bounces-152498-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id DCD8FA493BB
	for <lists+devicetree@lfdr.de>; Fri, 28 Feb 2025 09:39:49 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id E7CEC16B2B6
	for <lists+devicetree@lfdr.de>; Fri, 28 Feb 2025 08:39:48 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 85F882528EA;
	Fri, 28 Feb 2025 08:39:45 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="bDiWInTE"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-f51.google.com (mail-lf1-f51.google.com [209.85.167.51])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9666B250C0F
	for <devicetree@vger.kernel.org>; Fri, 28 Feb 2025 08:39:43 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.51
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1740731985; cv=none; b=Ckeu9j63qMrxByiH52HhAQEMZK3u5eNdm0Nwv0kfxzRSVuT+aayvciGcaWYJbNNHRJCtlyuuM2hBtl0podxn7l51qBnQRBGjTFhAtKNmjvFKLub2Z9AM4cbJA2LFGv7Z1MC2yQdkZlQzLY0zHWp0UZUMcuzkzd4gka+7QPEgpZQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1740731985; c=relaxed/simple;
	bh=vXjiyibKKxM77UcLdQZUdVPFpQkCll0rLi8rRYGxZ3U=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=t62idpoQEW6wqeuEI6jLS1irKLUzBMaFX0kFMAIqGr6hq4WoNsJkFoS08mabpmy0xuxlCNbSKIyHvk/Vohr5M3eL0B5GkfekZYS7EZN6VUCj3gNyR77NYrUiv1Y7Eoot+dRxMp4jmJcw26DpyTtWC8B/Dr4l33JcYHI10MeIKis=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=bDiWInTE; arc=none smtp.client-ip=209.85.167.51
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lf1-f51.google.com with SMTP id 2adb3069b0e04-54838cd334cso2084468e87.1
        for <devicetree@vger.kernel.org>; Fri, 28 Feb 2025 00:39:43 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1740731982; x=1741336782; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=vXjiyibKKxM77UcLdQZUdVPFpQkCll0rLi8rRYGxZ3U=;
        b=bDiWInTE2wLp8b29GnXJ1bKo9HpRSBfQ7dHgECNDrmHltAONJKsnNxAJU7CpwCd8hZ
         hJTP0+ZZ2KMkWHrns30xZ4LZxqTCy4zr1W/RyvJaj3m+ACIpiHGcJxyb/AZM3OILfgPW
         fDsoqMWXMNAj8osLKNKF3J1jXTcvFVSrMHIVrQzf9kbojD1MIJnL7RIWJ9GmnJJDhg1k
         3RCpgm03MNmr2lwwCQMY1wFKtgNd7D55SmlrtwhftBFvXJsGFDWoHr4WG3jTuynkp2c8
         KDbG5v4FXWuEW0o2VKfl/0a9V/gtw3w9JxOhz5lGF6tuikWKkEa8m/zLApsbvtRkgcGw
         QPKQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1740731982; x=1741336782;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=vXjiyibKKxM77UcLdQZUdVPFpQkCll0rLi8rRYGxZ3U=;
        b=sVSi+/iiWxCmcpZJBJk5ZIhtmO3LdK05JaJWjyEfBBRC2ZbRcQkATeSZcSn0FWGTRS
         qnjv3T8Eu8QRbu2B4ZvejvehfUoBgNprQTKvTfXDUB8jts4UGwq+7UtFbaBRnV0qIJEE
         XrbGA534NnKaSW3hlG9X+mVRsH5x6KRt/4szAAurfFFOb6SpKtkeyLwQtnbEZI5cvEMX
         3qoGMM0d05E776pAY847mxzkarBO6YwIr4TNOf24cP6g44qBojzKndsqrD9zOyJ+q3+g
         pjMBiDxGvH5R33bY+c/rFNhruyti3sVSfYJVA+a575w1k6HRLhbitSdUVX9/w/jK1wN9
         yEZg==
X-Forwarded-Encrypted: i=1; AJvYcCXR9WiAoPvVehpPy+dBBNGCFE8UoF8txQgHPKrjEA11c5cXdWOlnGQo9mMDt9Z/dsO09Qr7GfqhOHE+@vger.kernel.org
X-Gm-Message-State: AOJu0YywpryUJEvEtbi0NLqFoza+RLpgmB3vMq3tUkubmNe/wSt4o7Av
	bxOafw7j3dybVnpmN/rgkEgU7q/JQ3w8S8/6kVAijdUlrwi11/GqgXjP6/GTlhKxZTOwhiWDJfU
	yFd3LFmyoIatN9q25WNshSj59a06LvHTIhLredg==
X-Gm-Gg: ASbGncsWASgpVvTb91PlOhUH6P/5Hp3L8dBWnKtytbG0AW1MQMN7nJf4V7RCLH76Arz
	qNXfIASQ5YIaWUEYFwIOJZbiO4K7sbN5kFNDjd6hirEGnpGAaO58a8KP7EY4XYa0s1gjl1QqXip
	zeyCbdDZI=
X-Google-Smtp-Source: AGHT+IGP05gd+tKAmHNLIYx59fJGUcXOpFn5E7WUbHiqgXJgfnuoO/oZlX/2XdBRPuKvDCHUORWy0P2hwCXTV/HE470=
X-Received: by 2002:a05:6512:3a90:b0:549:4416:df02 with SMTP id
 2adb3069b0e04-5494c332da2mr977914e87.41.1740731981662; Fri, 28 Feb 2025
 00:39:41 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20250227175132.3734524-1-robh@kernel.org>
In-Reply-To: <20250227175132.3734524-1-robh@kernel.org>
From: Linus Walleij <linus.walleij@linaro.org>
Date: Fri, 28 Feb 2025 09:39:30 +0100
X-Gm-Features: AQ5f1JpcWRmXsix253vEwz0xl8LXX8T28Ut4ONXhb1Jer9IAi0xNCTvsBZEZyVY
Message-ID: <CACRpkdZ8twhOH1T3cStuLsD7a7HME-wA9YzotmrhgXmy-zvPoA@mail.gmail.com>
Subject: Re: [PATCH] dt-bindings: gpio: mvebu: Add missing 'gpio-ranges'
 property and hog nodes
To: "Rob Herring (Arm)" <robh@kernel.org>
Cc: =?UTF-8?Q?Uwe_Kleine=2DK=C3=B6nig?= <ukleinek@kernel.org>, 
	Bartosz Golaszewski <brgl@bgdev.pl>, Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Thomas Petazzoni <thomas.petazzoni@free-electrons.com>, Andrew Lunn <andrew@lunn.ch>, 
	linux-pwm@vger.kernel.org, linux-gpio@vger.kernel.org, 
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Thu, Feb 27, 2025 at 6:52=E2=80=AFPM Rob Herring (Arm) <robh@kernel.org>=
 wrote:

> The Marvell mvebu binding users already use 'gpio-ranges' and have hog
> nodes, so add them to the binding.
>
> Signed-off-by: Rob Herring (Arm) <robh@kernel.org>

Reviewed-by: Linus Walleij <linus.walleij@linaro.org>

Yours,
Linus Walleij

