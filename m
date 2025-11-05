Return-Path: <devicetree+bounces-235312-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 5DB16C36B03
	for <lists+devicetree@lfdr.de>; Wed, 05 Nov 2025 17:28:52 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 232AA6684E7
	for <lists+devicetree@lfdr.de>; Wed,  5 Nov 2025 16:17:57 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 209043431E5;
	Wed,  5 Nov 2025 16:15:10 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="V1ZDJ0xv"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ed1-f46.google.com (mail-ed1-f46.google.com [209.85.208.46])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2C60133BBD2
	for <devicetree@vger.kernel.org>; Wed,  5 Nov 2025 16:15:06 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.46
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762359309; cv=none; b=lyb2R0jH+JrARVvrI20fDGV+G4qnGTCvhRjtMyLBRjYCBKrRg4oiO3z10aX9P8iAwvhYTO2kNwp1TTGVFTsCjnCpb9ecphwX8iFYKdwTY91Lumij6ZkrqjjAv5r8tDKoZz7PurmnhwqVOOF/7JTASVRrxV5kM8fr7B10Oy14/sg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762359309; c=relaxed/simple;
	bh=uO/6iVYZ1vFXrKMD4kA3PYSBEGhevKLmMat7U8ijANM=;
	h=Message-ID:Subject:From:To:Cc:Date:In-Reply-To:References:
	 Content-Type:MIME-Version; b=C9A/6ecZLT87iHZ3egs2hQYPFEKUKyQ/XPQGLyZLEOa+oW0NqsBitg3m5qZHUxuO5qCq8tV4SiI2ilEaIXilDrZ7dyeIsbSKbmPdtJ3Bt7yha8huJFO/g9sROOMABEnOdcbmZev2x27Ja49qIzKpEFj/w3GSzQtKZeOEcSdcNn0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=V1ZDJ0xv; arc=none smtp.client-ip=209.85.208.46
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-ed1-f46.google.com with SMTP id 4fb4d7f45d1cf-640c3940649so5336001a12.1
        for <devicetree@vger.kernel.org>; Wed, 05 Nov 2025 08:15:06 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1762359305; x=1762964105; darn=vger.kernel.org;
        h=mime-version:user-agent:content-transfer-encoding:references
         :in-reply-to:date:cc:to:from:subject:message-id:from:to:cc:subject
         :date:message-id:reply-to;
        bh=PW+009+mxrT5Q7b6yvU7pEoFhY6Kftp+LN/SDJfngBw=;
        b=V1ZDJ0xvb7uRoFrhxUzsIPQlte8MdOkz2Novsgvdv55wo47Ukt/fgjcSmjlWY/lsvC
         XcqnnhuDP8NgVHCCOv78l9UxIkMfrdRjEyxElJK9TUX2Xb0g1N7v1XafyyGB/JzpoSeb
         cLmFdgZUMjEjd8euY9cicGuhRfaIgOhSDX6F4MJCoZ/FKodLgpmePVnBQQB1Rc3FpBGy
         Vr1iAx+UQA8rSz9UYWy9Bq2Ij3BsFxmq4PeALc3ZsCRaJzdLolTvH6k/CWrCAAeg77WD
         wF1XvZWMBgAQ8RjEA4pyqTEQlxWWWfu/mfHlEWMtlBXDSB1LBihExDRK6dcmSN/sdupe
         yfig==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1762359305; x=1762964105;
        h=mime-version:user-agent:content-transfer-encoding:references
         :in-reply-to:date:cc:to:from:subject:message-id:x-gm-message-state
         :from:to:cc:subject:date:message-id:reply-to;
        bh=PW+009+mxrT5Q7b6yvU7pEoFhY6Kftp+LN/SDJfngBw=;
        b=ovW27ldrOJX1sdC6luzKYil0m6PLPzi9AQ5oofPrwXlIY0ulBUoGA9Kyx+xUAyJfXo
         ZBlj0DKEJR9OEiGDF0U0y+a+g0fVH1nm7W5y7dOsUtnDJvZhYk0xuX/N/OI0VzF1XIrG
         psqnvCaeT21c7vh+cGb3AWMezP12D5HRnlKHrW+ztr0ybcXxUyJ5cKCRA4gyX4+Busab
         lW9A+KUrOXufTRaS+Jyzoa1swRQ5mCnicqlnYeWe+6nfz5rfg1UPIsokbjZ3aW1jBvB9
         FlYTKPkwczP+vflcEpql7FP55EZIn3WNigEzTB9UT2B9P/J/wM8tIBEMLKKn55ynbYpf
         Jpwg==
X-Forwarded-Encrypted: i=1; AJvYcCU8C6OPGnnFrtmlxhjQnoINwIOZliWcgk0AJAN/ECBCiz5/09GLyWLdfzIo1FhJoGHibKBA62YDjJJ8@vger.kernel.org
X-Gm-Message-State: AOJu0YxoK/aB5KKd/uCke8xbTF0inDezUzscCgVlsS7UbyFW6P2cF+z+
	HcWZuxQAbSjdJw6XMQF3969OnyZntIi8wYzTlnMk9RclSem+pAikQt2pJ73BrP1W9m2W5Usa26E
	c9uDyHzI=
X-Gm-Gg: ASbGncvcBmBa3gdmEjTVjphUvY+2FzA2ggGgzZc4ZLMmvwPUDd4XBeF1Z7SqiPC9i5H
	zQZ/nxBDz6PWyH479NvZXfx+ZxjQxxiOBU8nlL/2ChNhdsYoaL9YRRE6k+kFnSIlxZ0d08E/XQZ
	w9cO2T3gPiLacDfi5/aAzRWVHkcdHgJwaK2Nq1QWRwtt9jkBF+glY97zkRI+wq+jZ5pmhbwmK3o
	G7kNEkTSjZ+jLYkOG3LOOM3pMjEhWHh+S9vHTeTIpYVfxRiC1FNjZ/7VNYk5TAgP2+6NOPvyKcF
	nLFFVHLD6GRgj3X2ZwzHlOBo7K/ysYfYggVCw75U8BYbr3KqxExAPi7LAsj7j4CfTo/oOtQy5Ap
	vF/0aBv2oeIIT0DkVpXrN2SCLPcCCYv83tn50Tu6J3eJvXQUeqduc4iTzNa9I16+xcV6xDkuAPj
	mBxq2o39//Md1r3r1oGSCniw==
X-Google-Smtp-Source: AGHT+IF4JPIePgklGlaLoqm71Bu7ApcoRu6iTmJ5L4gpcRDvE83BvmdQI2sf+Wxgg7a+5Eyn5thE4Q==
X-Received: by 2002:a05:6402:13cb:b0:640:d0d9:71d3 with SMTP id 4fb4d7f45d1cf-641058a2312mr3606599a12.6.1762359305340;
        Wed, 05 Nov 2025 08:15:05 -0800 (PST)
Received: from [172.20.148.133] ([87.213.113.147])
        by smtp.gmail.com with ESMTPSA id 4fb4d7f45d1cf-640e680578esm4923886a12.10.2025.11.05.08.15.02
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 05 Nov 2025 08:15:03 -0800 (PST)
Message-ID: <8f05eb9644d1920f7158c19d769c943fd5dba9a1.camel@linaro.org>
Subject: Re: [PATCH v3 10/20] regulator: add REGULATOR_LINEAR_VRANGE macro
From: =?ISO-8859-1?Q?Andr=E9?= Draszik <andre.draszik@linaro.org>
To: Mark Brown <broonie@kernel.org>
Cc: Tudor Ambarus <tudor.ambarus@linaro.org>, Rob Herring <robh@kernel.org>,
  Conor Dooley <conor+dt@kernel.org>, Krzysztof Kozlowski <krzk@kernel.org>,
 Liam Girdwood <lgirdwood@gmail.com>,  Lee Jones <lee@kernel.org>, Linus
 Walleij <linus.walleij@linaro.org>, Bartosz Golaszewski	 <brgl@bgdev.pl>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Peter Griffin	
 <peter.griffin@linaro.org>, Will McVicker <willmcvicker@google.com>, 
	kernel-team@android.com, linux-kernel@vger.kernel.org, 
	linux-samsung-soc@vger.kernel.org, devicetree@vger.kernel.org, 
	linux-gpio@vger.kernel.org
Date: Wed, 05 Nov 2025 16:15:02 +0000
In-Reply-To: <aQoNPvwUCE9PijJ6@finisterre.sirena.org.uk>
References: <20251103-s2mpg1x-regulators-v3-0-b8b96b79e058@linaro.org>
	 <20251103-s2mpg1x-regulators-v3-10-b8b96b79e058@linaro.org>
	 <aQoNPvwUCE9PijJ6@finisterre.sirena.org.uk>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
User-Agent: Evolution 3.56.2-2+build3 
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0

Thanks Mark for your review!

On Tue, 2025-11-04 at 14:27 +0000, Mark Brown wrote:
> On Mon, Nov 03, 2025 at 07:14:49PM +0000, Andr=C3=A9 Draszik wrote:
>=20
> > REGULATOR_LINEAR_VRANGE is similar to REGULATOR_LINEAR_RANGE, but
> > allows a more natural declaration of a voltage range for a regulator,
> > in that it expects the minimum and maximum values as voltages rather
> > than as selectors.
>=20
> > Using voltages arguably makes this macro easier to use by drivers and
> > code using it can become easier to read compared to
> > REGULATOR_LINEAR_RANGE.
>=20
> It does introduce an additional layer of indirection into the validation
> that the configuration is correct, the reason we use selectors is that
> they should map directly onto the register in the datasheet.

My datasheet mentions the range more prominently than the selectors, and as=
 driver
author I can easily validate both (neither macro does any validation itself=
). I do
believe code like this:

    REGULATOR_LINEAR_VRANGE(200000, 450000, 1300000, STEP_6_25_MV)

looks more meaningful and is more naturally readable than

    REGULATOR_LINEAR_RANGE(450000, 0x28, 0xb0, STEP_6_25_MV)

as it's much easier to see the actual range without doing any additional ca=
lculations.
I'd prefer to keep the alternative macro, but will drop this patch if you r=
eally
disagree that it adds any value


Cheers,
Andre'

