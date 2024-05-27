Return-Path: <devicetree+bounces-69450-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id BC4CC8CFD94
	for <lists+devicetree@lfdr.de>; Mon, 27 May 2024 11:56:46 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 6B8E01F21E9E
	for <lists+devicetree@lfdr.de>; Mon, 27 May 2024 09:56:46 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 305F913AA4D;
	Mon, 27 May 2024 09:56:39 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="OwZyc81o"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-yb1-f170.google.com (mail-yb1-f170.google.com [209.85.219.170])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A08F213A89B
	for <devicetree@vger.kernel.org>; Mon, 27 May 2024 09:56:37 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.219.170
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1716803799; cv=none; b=U1gpi9HD9TqCgdDIz47WlPBZ5j4yR5emmT2qEFzq3Rpl8vSFFGccHPLFOyfF0Zh9lyczIrlKvdyOwIdgJLrxhUvL9v5sCmWyp+9M8+ZKat0fDZ2tnurIjDQIx5BDF/O0tIxfTTm4iOCR1QZfJFD6xFdJo4uTKQwhhpMlfKK0efc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1716803799; c=relaxed/simple;
	bh=h5jXgRKsQkIcgfD97Q5AAMa9LZ0uTBSUY0djiFxnNdM=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=X8u0+dDcbS29FBbldEWaiiDyn0bJsyzEGEmqIAcNfysaJEHgtUvKJnuigJiW8VPkbQvNCDgZ1+4OfMgqjslJ7AlenmULIp3s6lhuzdsUGtioCTW26zHw6g3HlSBngsEBIwjfrdbcfaQbpZ/XIE0VrHi+Mw36kQx7n8MLveI4A3A=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=OwZyc81o; arc=none smtp.client-ip=209.85.219.170
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-yb1-f170.google.com with SMTP id 3f1490d57ef6-df4d5d0b8d0so5417808276.2
        for <devicetree@vger.kernel.org>; Mon, 27 May 2024 02:56:37 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1716803796; x=1717408596; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=h5jXgRKsQkIcgfD97Q5AAMa9LZ0uTBSUY0djiFxnNdM=;
        b=OwZyc81oHXBDnMV3uNMxqSlJRYsWOthjL5fZK2YxsR7yccd2ZaPUemN11Zc//VBDuP
         q9AvTGyyIJNE+1QaueCdotAutEG7/s8iHmMRbsK86csfjd9M8R7nyNw4BaTzTA5HU3rl
         N1QZHEkS71sCNIR3xJhqsfHfeff113hVZ2eN55ZbnFJ1nhZyQvDTA/olsEJZerJXHPxJ
         YOoaMzar9lZVfo51KpfQt5KH+Tjm10CX0mSJEctLWX7o0Vw0sbT/S2M450usXd8yrhvI
         zV32JlmgFfoYwIMJLlKssYQl/JiSgnvyEMd5XvYWdtgFaQme6118x9GE6blFTrpKfmas
         NAQA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1716803796; x=1717408596;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=h5jXgRKsQkIcgfD97Q5AAMa9LZ0uTBSUY0djiFxnNdM=;
        b=XvqDMnD1q56AnlybnkPzSnXsjJq+0av83v4kxRcHvKz9JFwh8IyasnBeQamxNJlWSh
         eICulROusWAHRH8cDfbyn0lQQuaFRZ1OM2rAlKwEOjEQyzeY0a9frsN3dPZ0Vw9wgiYq
         +m3V/3Ppo4OPWEeXbYTjvYmcBKV+gcm2knnK24bsCebHpQjHr5x71nGRZAXHdPFHcEJp
         1t3bDiOFXfjtMAwO0h2eNaK2zVqs8gn0DhqPn8+j0gn78XNDxjrm0MyRVZBv5Hf7I875
         GNXs7H+Y3GUR+bDKh7hILbFqIwRdgIatO8X+Yjb7RXFrmMzT3SUI0rKSNfmCMM9F3y6w
         Addg==
X-Forwarded-Encrypted: i=1; AJvYcCUyU9Gja9QPAZmdEmMVo8YAF1c/6pQ8TqbN5uvqZi7ZUaFGpxthShdrq6CCv5c/boNaqEPXEfg0alKVF6UO70bczHAU7E+HdZCycA==
X-Gm-Message-State: AOJu0YwfIVagLFSxWMFmlroI6E5Cvz8SEaqKqwBI3rCrXOuxMdYlWLjA
	a3p5Ty9Grq7U9abqVB9d4bVUzchwE6VvrHjrQBSS6dS2t6amLt85gEOnkpqHk4sHMUDE4KStAu4
	frgltmYisvfv+W4eEae/eJHzDAmKC+knm1Bds6Q==
X-Google-Smtp-Source: AGHT+IGpccHoFCMTsrdaZe9Tm3wWZXSUyc/MWc6ba+P+ihM0RdYtqT8i31GHF/bZGJjJh4akODp67cOD7U7PAxqiLSM=
X-Received: by 2002:a25:c7d1:0:b0:df4:e794:21b8 with SMTP id
 3f1490d57ef6-df77225ad0bmr9332361276.55.1716803796507; Mon, 27 May 2024
 02:56:36 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20240204220851.4783-1-wahrenst@gmx.net> <CACRpkdYmOECdug1g2gYxjHZ-+Y040SR70UtDAgKD8yCb58Ob6Q@mail.gmail.com>
 <33d009cc-3378-42e0-8d40-a74a0b583a44@gmx.net>
In-Reply-To: <33d009cc-3378-42e0-8d40-a74a0b583a44@gmx.net>
From: Linus Walleij <linus.walleij@linaro.org>
Date: Mon, 27 May 2024 11:56:25 +0200
Message-ID: <CACRpkdary+kDrTJ=u4VbSTv7wXGLQj9_fy7mv0w-Zg+eDvGXVQ@mail.gmail.com>
Subject: Re: [PATCH V4 0/2] pwm: Add GPIO PWM driver
To: Stefan Wahren <wahrenst@gmx.net>
Cc: =?UTF-8?Q?Uwe_Kleine=2DK=C3=B6nig?= <u.kleine-koenig@pengutronix.de>, 
	Rob Herring <robh+dt@kernel.org>, 
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, Conor Dooley <conor+dt@kernel.org>, 
	andy.shevchenko@gmail.com, Angelo Compagnucci <angelo.compagnucci@gmail.com>, 
	Philip Howard <phil@gadgetoid.com>, Sean Young <sean@mess.org>, linux-pwm@vger.kernel.org, 
	devicetree@vger.kernel.org, linux-gpio@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Mon, May 27, 2024 at 10:44=E2=80=AFAM Stefan Wahren <wahrenst@gmx.net> w=
rote:

> I could rebase my latest work on 6.10-rc1 and send it out as V5. I would
> be happy if you want to continue on that driver.

I could probably do that! Let's see v5 and take it from there.

Yours,
Linus Walleij

