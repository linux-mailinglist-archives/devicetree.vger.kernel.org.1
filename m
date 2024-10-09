Return-Path: <devicetree+bounces-109506-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 958049968EE
	for <lists+devicetree@lfdr.de>; Wed,  9 Oct 2024 13:36:22 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 54C63287C07
	for <lists+devicetree@lfdr.de>; Wed,  9 Oct 2024 11:36:21 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 9B8C41922D5;
	Wed,  9 Oct 2024 11:36:18 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="zRqDbGRF"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lj1-f173.google.com (mail-lj1-f173.google.com [209.85.208.173])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E46CF18FDDB
	for <devicetree@vger.kernel.org>; Wed,  9 Oct 2024 11:36:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.173
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1728473778; cv=none; b=CFPGVN+rlWhZlKn9+o3jzUxgrCal6OrZBJhAkAGxwVqZJ4NP7V+jsK71Og/VaKynaTqXIAMf/IECl7kZHXXjozacGYqauGWx8doFpFBU8W/vr7NihJTAyHS9vdgyKF+XJnE0MatqwlaLA/YjwUtFido9x/Y0HZhjdizin0IHvig=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1728473778; c=relaxed/simple;
	bh=BSKbXKJqzTsd3uaOfVQYvC+3CVoZeM7xAmzIRqlfg+M=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=rzZj4I7xz76+O/w+m36UUafyqV1T42k9cfadUZIOkNtt3bWDBMRgNpRPzEK7BknOyZkXucZ8wx6Mf8IrEi/1xMWhKAd2xqTQ/Ay84pTZ2tg7lw0PfVX/qQbauR0T1yGfwHgrrj1AihRwC7GBGCG0f9DuH0TZkdx6ESUQOYNFrLc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=zRqDbGRF; arc=none smtp.client-ip=209.85.208.173
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lj1-f173.google.com with SMTP id 38308e7fff4ca-2fad8337aa4so74092081fa.0
        for <devicetree@vger.kernel.org>; Wed, 09 Oct 2024 04:36:16 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1728473775; x=1729078575; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=ulmNMFxv/3Cp2Bz+2y+sXqWfdub8KWmBh74jTPivB+s=;
        b=zRqDbGRFNFVjsQ8hwHhadNeDsvl94ICaQBMvDrTDZ+Ur3xPKEkRECBRj/2hdsvA2Mi
         QK5Bp7Wk23fmFLqB1gUWy2X74pGAz5A4d3VMU8EtYM96K1Gk+OSMp4CQ+hBjUQiEoK6b
         PLC3xcDh1gp64Evmm43NJL311zdJiD7v37phi5kUieYc5OEGFw8mI3cxpgbfaaNb4B5d
         thFDftJ+YBVRWBSYhsOertMVD/u/9M7W1toWa7Jq54R8K3rAWiSBE6VWdJuygrkjfQTl
         oLLiS7O/BYeODxoIpsBvs/pPX0m3p/+1/mahogA3yc0DVcEpUHQccEZxgGwdkQ64h17A
         /gXA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1728473775; x=1729078575;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=ulmNMFxv/3Cp2Bz+2y+sXqWfdub8KWmBh74jTPivB+s=;
        b=Sn5MyoQ4ECP5sENY4Q4fKbDNqqaYeDL7Szn7GyTcyoDdHnG8zLEuLjOfcz+yW9UOeg
         n3AoSLuUAEKEjMh9MPI1W6tW89Zqeg4aZr2hOxXoYHuY5CfmMsW7J85CC95k3JIshKJS
         nqHy6CGgJjcPfT24l2FcHzAiElajbxsvqo80dZTqq18BQKehiW0Wa/L47gDttOYOODCW
         /lD0G3ro5fAVCO8cRqLYv5gb1puPZVhJAgklCBYnD8rbxn99BD70nMPDBSOBRi0LJ2Sp
         D9WdqrIf5T2WLvUAfTbifOBBrvCCI0qn28luOvCPh9qpqWzY8ySlVQ6bFAZKtJBXfcYB
         Pz5g==
X-Forwarded-Encrypted: i=1; AJvYcCX4YWZnN2zbHFgg9+PzA8s73PZuqfVWKenH/NgAjGqHh2Baym+XFWwDBYsc5wET57VF0y8eOx0FEWz1@vger.kernel.org
X-Gm-Message-State: AOJu0YwXqUdZxqcbAKYwYZdXuevywB/jOPSk3CSES1IOM/BJfJ5aot4Y
	nEGLIfOMo6WX8Sh0vmrBhmvB6B3sO6+IFWO3nFiiyWQOs+53ZBMc7MC8pabeRO6psy2Sq0ieCt8
	JZUOacu/2cTGGHgXZqINeZ09ry6hwBG0D41alJw==
X-Google-Smtp-Source: AGHT+IFQL8HqNRjIVR+UudCx6cwyjDEbayIZi+vVchkMN2pOXLQmyPRZirCYhwW99AJa3LiMKdJ1kZ/+fJRKckyit7k=
X-Received: by 2002:a2e:a582:0:b0:2fa:de52:f03c with SMTP id
 38308e7fff4ca-2fb1871b375mr13956081fa.5.1728473775033; Wed, 09 Oct 2024
 04:36:15 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20241009-mbly-i2c-v2-0-ac9230a8dac5@bootlin.com> <20241009-mbly-i2c-v2-6-ac9230a8dac5@bootlin.com>
In-Reply-To: <20241009-mbly-i2c-v2-6-ac9230a8dac5@bootlin.com>
From: Linus Walleij <linus.walleij@linaro.org>
Date: Wed, 9 Oct 2024 13:36:03 +0200
Message-ID: <CACRpkdbqPMb7MSnEeK4vADrfeZD=dk6GA=A_i2M-53eGmJkTag@mail.gmail.com>
Subject: Re: [PATCH v2 6/6] i2c: nomadik: support >=1MHz speed modes
To: =?UTF-8?B?VGjDqW8gTGVicnVu?= <theo.lebrun@bootlin.com>
Cc: Andi Shyti <andi.shyti@kernel.org>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	linux-arm-kernel@lists.infradead.org, linux-i2c@vger.kernel.org, 
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
	Vladimir Kondratiev <vladimir.kondratiev@mobileye.com>, 
	=?UTF-8?Q?Gr=C3=A9gory_Clement?= <gregory.clement@bootlin.com>, 
	Thomas Petazzoni <thomas.petazzoni@bootlin.com>, Tawfik Bayouk <tawfik.bayouk@mobileye.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Wed, Oct 9, 2024 at 12:23=E2=80=AFPM Th=C3=A9o Lebrun <theo.lebrun@bootl=
in.com> wrote:

>  - BRCR value must go into the BRCR1 field when in high-speed mode.
>    It goes into BRCR2 otherwise.
>
>  - Remove fallback to standard mode if priv->sm > I2C_FREQ_MODE_FAST.
>
>  - Set SM properly in probe; previously it only checked STANDARD versus
>    FAST. Now we set STANDARD, FAST, FAST_PLUS or HIGH_SPEED.
>
>  - Remove all comment sections saying we only support low-speeds.
>
> Signed-off-by: Th=C3=A9o Lebrun <theo.lebrun@bootlin.com>

Reviewed-by: Linus Walleij <linus.walleij@linaro.org>

Yours,
Linus Walleij

