Return-Path: <devicetree+bounces-61473-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id BD9F28ACD14
	for <lists+devicetree@lfdr.de>; Mon, 22 Apr 2024 14:44:35 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 3A789B23AAF
	for <lists+devicetree@lfdr.de>; Mon, 22 Apr 2024 12:44:33 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 3348A14F107;
	Mon, 22 Apr 2024 12:40:50 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="MB2WIfh4"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-oi1-f171.google.com (mail-oi1-f171.google.com [209.85.167.171])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A783E1E485
	for <devicetree@vger.kernel.org>; Mon, 22 Apr 2024 12:40:48 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.171
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1713789650; cv=none; b=bItdoNga40rcqj6nKXDZGrcizy24DbPVMmJY+mZhdL3rk4qwlXP2XBrSn0tMMpcRNOuw7BQaPfwt5RqxOCruNmeXsYcwrIBwCvk/6zG20pB6jg0DOkAtE9TYDgGupRYY5rF5dRPyXQiKvUle5tWL3UkYMpWT7rihFPBzw2DnR/g=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1713789650; c=relaxed/simple;
	bh=rHwtqOJ7hfOxjOvIBhN3DOgNQntQgRNTBmHT3TVb85g=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=YImfYO4scfOj6F2rHz/eUFBn/VsFK3EBcJxOQpRcvPqkdY2Ity8J347uL6q2Y1ZXKh9eIEfM48zFyQXOaSUTes4kw8Xsj4TsDAhQhjHGX2sgg9C32IxtQ97pdTw1F5ZoLeZ+u0WAWxmyKTb1gzzW5obg7Xzrc1DxNVX0PHXc44U=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=MB2WIfh4; arc=none smtp.client-ip=209.85.167.171
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-oi1-f171.google.com with SMTP id 5614622812f47-3c75075ad30so1411755b6e.3
        for <devicetree@vger.kernel.org>; Mon, 22 Apr 2024 05:40:48 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1713789648; x=1714394448; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=CG4hPexSWedosu3J2N32I42487kxLi51E4WCYQ7z86Q=;
        b=MB2WIfh4rnpQvPmiUpr5uUnAIHibvLzy+iAN3xVwvrhEaW0XYXtPsUEb+iP/lShDmH
         dtlFEsrvpKGphAw5yaIjDYshejPLgxIQiJYL+WWO4Pdmh2nIqbJoIl2xygXzgocgpx92
         dMH8Oypugo07UY7vrx+JMOtxIHtet4Ecl6Zr1LkMCLo29tX3ypPgmmiTAdNbR/KYB1+s
         KFVky1O5yt7228LjC2k+7AyRUv9N4AyJStrzgWziosLnrhA0Qs68qGgowC2rjSW8x+jX
         ON6rah4tqFo1KZ+8IijvfUGbY8IdSpUl227PawVTzkwib7eyPaHenxFXln/JIl4P9R/n
         O5rA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1713789648; x=1714394448;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=CG4hPexSWedosu3J2N32I42487kxLi51E4WCYQ7z86Q=;
        b=waYbc3j81rZ0CMs7hGmEIQKcRKUbJKCxUgDpXIBuyV/EfgYJdefrcafLBAgA57KfEg
         fIwYmpXxATozBg8ipOk69KEMgQc79o2TgeC1j69rcQZ52W3kPAVN7HtEHencR8nbL7Z5
         3/FBjS2Eu8ppvB7kn7uV1Czp0n2ji1ceIIHQbm/9NAdzrNaXytlgU2AIv1ci0R+l1koC
         QKuX9DL3sgn6MI27ww4RHEpJrDMnzesoCxrkpzjc4g2z5hoFrzfv1UexphFv4bJp1UQk
         VRdBV74dg7ea7YsunEHaVZBgB4YmM831snwJb+whswZMJ8TmSXhLyHkQjp8xvlY76JGl
         GtPw==
X-Forwarded-Encrypted: i=1; AJvYcCVdJ8YQeKf+8nraXCGxZWtp7KnyADg5RRAUXHTIIwC8rAQ1Tb9LgFZ1SceiYfFXGjsoeMc162LyqsEg3ylHyVhF7vOVFNS0+ZR7Tw==
X-Gm-Message-State: AOJu0YzxFJ9Bdr5WN/Ps7vktrnkwXXTKLYReTlcNVV979XyOBUPpz1QK
	XlGfDvQiZGSwXkGODVQd7I/Ds0xg0jvJTKJh8VQWTeiQ75OSSfJyCgn6JkBtnNhdmURvyeMhVu/
	UQ0mzWVEEo071cbxhLpEDLZaN98OhNt1jadMYow==
X-Google-Smtp-Source: AGHT+IEMfGJHMTEml1VRNaAfoa4qnzNHZkeLKuW9Vl9je272KzGmuVy0hJtkx+vfLt1IPHkVf/BJiDOJlfCqo09Adjo=
X-Received: by 2002:a05:6870:b601:b0:233:5557:c6a2 with SMTP id
 cm1-20020a056870b60100b002335557c6a2mr14543327oab.34.1713789647808; Mon, 22
 Apr 2024 05:40:47 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20240404122559.898930-1-peter.griffin@linaro.org>
 <20240404122559.898930-10-peter.griffin@linaro.org> <95bcdc942cba564f78a6f2fe4cde892575838d5c.camel@linaro.org>
In-Reply-To: <95bcdc942cba564f78a6f2fe4cde892575838d5c.camel@linaro.org>
From: Peter Griffin <peter.griffin@linaro.org>
Date: Mon, 22 Apr 2024 13:40:36 +0100
Message-ID: <CADrjBPrnWzT6raAtuswC0AE6EEwtQ7sTUkm8SjpBh=3nibcmSQ@mail.gmail.com>
Subject: Re: [PATCH 09/17] phy: samsung-ufs: use exynos_get_pmu_regmap_by_phandle()
 to obtain PMU regmap
To: =?UTF-8?Q?Andr=C3=A9_Draszik?= <andre.draszik@linaro.org>
Cc: mturquette@baylibre.com, sboyd@kernel.org, robh@kernel.org, 
	krzk+dt@kernel.org, conor+dt@kernel.org, vkoul@kernel.org, kishon@kernel.org, 
	alim.akhtar@samsung.com, avri.altman@wdc.com, bvanassche@acm.org, 
	s.nawrocki@samsung.com, cw00.choi@samsung.com, jejb@linux.ibm.com, 
	martin.petersen@oracle.com, chanho61.park@samsung.com, ebiggers@kernel.org, 
	linux-scsi@vger.kernel.org, linux-phy@lists.infradead.org, 
	devicetree@vger.kernel.org, linux-clk@vger.kernel.org, 
	linux-samsung-soc@vger.kernel.org, linux-kernel@vger.kernel.org, 
	linux-arm-kernel@lists.infradead.org, tudor.ambarus@linaro.org, 
	saravanak@google.com, willmcvicker@google.com
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hi Andr=C3=A9,

Thanks for the review feedback.

On Fri, 5 Apr 2024 at 08:04, Andr=C3=A9 Draszik <andre.draszik@linaro.org> =
wrote:
>
> On Thu, 2024-04-04 at 13:25 +0100, Peter Griffin wrote:
> > This allows us to obtain a PMU regmap that is created by the exynos-pmu
> > driver. Platforms such as gs101 require exynos-pmu created regmap to
> > issue SMC calls for PMU register accesses. Existing platforms still get
> > a MMIO regmap as before.
> >
> > Signed-off-by: Peter Griffin <peter.griffin@linaro.org>
> > ---
> >  drivers/phy/samsung/phy-samsung-ufs.c | 5 +++--
> >  1 file changed, 3 insertions(+), 2 deletions(-)
> >
> > diff --git a/drivers/phy/samsung/phy-samsung-ufs.c b/drivers/phy/samsun=
g/phy-samsung-ufs.c
> > index 183c88e3d1ec..c567efafc30f 100644
> > --- a/drivers/phy/samsung/phy-samsung-ufs.c
> > +++ b/drivers/phy/samsung/phy-samsung-ufs.c
> > @@ -18,6 +18,7 @@
> >  #include <linux/phy/phy.h>
> >  #include <linux/platform_device.h>
> >  #include <linux/regmap.h>
> > +#include <linux/soc/samsung/exynos-pmu.h>
>
> You can now drop the include of linux/mfd/syscon.h

I'll send a followup patch for this.

Thanks,

Peter

