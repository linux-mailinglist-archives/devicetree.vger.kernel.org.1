Return-Path: <devicetree+bounces-159504-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id D4D02A6B3C3
	for <lists+devicetree@lfdr.de>; Fri, 21 Mar 2025 05:43:06 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 4688E16C281
	for <lists+devicetree@lfdr.de>; Fri, 21 Mar 2025 04:43:06 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 00C361E8837;
	Fri, 21 Mar 2025 04:43:03 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="IX+BSGAu"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pl1-f170.google.com (mail-pl1-f170.google.com [209.85.214.170])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 483891C174A
	for <devicetree@vger.kernel.org>; Fri, 21 Mar 2025 04:43:01 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.214.170
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1742532182; cv=none; b=cD1o6+B9C8mQvGu/gIEs3Izmzb5265YbCCmdBIL715NKisRg21+w1ZlELDtyRNKdT6gbk0Tc9/b55g3oPnl9Q8GF1NZj0etBLSUhQVtBI95OyfVqEU3eyysSlrl0KqJpEKlmk1HdYP1bLk20e7ITNaIvNGdinYfXEFbygpWa7ww=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1742532182; c=relaxed/simple;
	bh=/J/l2xndIYzwBh3TqfFRxLFB3IOJWbXnrMRVsBmO9EQ=;
	h=Date:From:To:CC:Subject:In-Reply-To:References:Message-ID:
	 MIME-Version:Content-Type; b=CA2198OnQ7uZc0CXYol86uXz0DzEMelfQ98VSi4fc2wU0A8jXwdgmDG8reqermANUK0qdtHLakA2qKZq0PMgnYVVgQhIWJhRhIjcNOTIPyeh/4bZZaixMRIXMONhpVRLzjk8Bavs129ifwvpSOVYaBaIhKJc/u7vjXxWgf66AW8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=IX+BSGAu; arc=none smtp.client-ip=209.85.214.170
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-pl1-f170.google.com with SMTP id d9443c01a7336-224341bbc1dso30272455ad.3
        for <devicetree@vger.kernel.org>; Thu, 20 Mar 2025 21:43:01 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1742532180; x=1743136980; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:references
         :in-reply-to:user-agent:subject:cc:to:from:date:from:to:cc:subject
         :date:message-id:reply-to;
        bh=jaHeJ6qSwJ3u/x/VdsUMlK82s8mbA82yyCP5yyeo3Fc=;
        b=IX+BSGAuyK0faO/55sbuhOf5a6TMPLuOcU+ylFUZ5MObFrKbh/NGSgkYoGdnyxwJvU
         LVpSpPw/G4qLGhrSDXcl1sCkjaqGkiasx3V10nryp0ohrgpWKTN2UdwYkbzE6ntLbbfh
         PU+lRYeIaft0Inp7UFL5Mozo+xuA3LJr9FBvDJpZb63FMi3ac0vb0W7L0g+jqG5ckwyD
         NMyTnQWaVyXmA2ClNVbqeevl/1TyxKHJKQjLsPBAsvaD9NX1zHK2Qa26Tzw+7g30C0OV
         0zWH3nrblffaRxQZUP0HKUmFRIc6lJO6GsrmkzayA0p/VUXL7jGniXSeFLNBfJ2+sbhf
         xyxQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1742532180; x=1743136980;
        h=content-transfer-encoding:mime-version:message-id:references
         :in-reply-to:user-agent:subject:cc:to:from:date:x-gm-message-state
         :from:to:cc:subject:date:message-id:reply-to;
        bh=jaHeJ6qSwJ3u/x/VdsUMlK82s8mbA82yyCP5yyeo3Fc=;
        b=OT5PstFvBe1vp8Y3nBqsPbiIz+NRyh7yKvkV4xN9J87qphgsRnYU/n7JR3ccGztSt7
         cixbCmG45pTzjAvZUoJs49BBRyOvj8Ub0fvV5qapEaZJki0fVDTceYvOPaybr3g/Lhs8
         iIy9fxPeyqQoK5p3PJGHPKL1XPJkoZU0u2ZX0asoD17bg/FljaLRFpRaWFBniLh3Q6KA
         PBygZ9pbXyk+vn45U2UEsXs5bpOTnBtoDOrHjpxIbeJriGhUgBKfQkzFcqU3OPLznNZ0
         vIq9rRT9XjZGfAxTnARSdyYqv4bqMVINGjYksJcDTgJoeZx1RFLjt88f6GDL6PbaRjLq
         YFww==
X-Forwarded-Encrypted: i=1; AJvYcCX2vKhrrR9QN06P4OX0uakdJlkhH5ra4JplBZipQolOtHX3RJB4N+zO3xShnrCTzeLok4HnxdOYBSHK@vger.kernel.org
X-Gm-Message-State: AOJu0YwQYwyHZN/u2ctodqcHmkGNmGXszgfVQyz2WQ24tapcI6BAYvZV
	diX2tbpnv1MFeELEMkLPLPHw23g4Lb5Lrhn0HMDo0otHnHRX8/tHlCr5wdajjg==
X-Gm-Gg: ASbGncsoSJtk/XYD65g+fWnzw5s+9I/rRmQHS6tR034E6eU6CGcz7RXM4uWjwE811xI
	NT5OPY1hKSZxhMFSeGNGsI/S3Sbzr1bkUHgFTbi/D1/fSTTKHs8haLN/WttQJFvOa5iTWG/JvRS
	voKFlr8tvyDnA//bVXln8WkcCOpJvyuamowxeDPsJ8gNISrurBnxGq0NCSAml4SMuy2JFoUxcHr
	XK/MsoJLveuR2xzdvdj5bVPt3zMFvdtQ4y8htrHnz+cNeE0OuBZ76/hU6Feh9izYOKi+LgvnNoX
	QD5fy9fPzrwTsEtmJhHvRphiHSW1powG/BxWnFXolgXn
X-Google-Smtp-Source: AGHT+IFCZZBsBpT+JgPon/LLEbu72ysiHsPxVJfQnDNrm7RkPGl69Wa7QQ0PvDzg1cJp1vKd8UOSxQ==
X-Received: by 2002:a17:903:2286:b0:224:249f:9723 with SMTP id d9443c01a7336-22780e38317mr26158175ad.51.1742532180528;
        Thu, 20 Mar 2025 21:43:00 -0700 (PDT)
Received: from ?IPv6:::1? ([2409:40f4:3109:f8b2:8000::])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-227811da38asm6929485ad.186.2025.03.20.21.42.58
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 20 Mar 2025 21:43:00 -0700 (PDT)
Date: Fri, 21 Mar 2025 10:12:55 +0530
From: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
To: Wei Fang <wei.fang@nxp.com>,
 devnull+manivannan.sadhasivam.linaro.org@kernel.org
CC: bartosz.golaszewski@linaro.org, bhelgaas@google.com, brgl@bgdev.pl,
 conor+dt@kernel.org, devicetree@vger.kernel.org, krzk+dt@kernel.org,
 linux-kernel@vger.kernel.org, linux-pci@vger.kernel.org, robh@kernel.org,
 netdev@vger.kernel.org
Subject: =?US-ASCII?Q?Re=3A_=5BPATCH_v3_3/5=5D_PCI/pwrctrl=3A_Skip_scanning_fo?=
 =?US-ASCII?Q?r_the_device_further_if_pwrctrl_device_is_created?=
User-Agent: K-9 Mail for Android
In-Reply-To: <20250321025940.2103854-1-wei.fang@nxp.com>
References: <20250116-pci-pwrctrl-slot-v3-3-827473c8fbf4@linaro.org> <20250321025940.2103854-1-wei.fang@nxp.com>
Message-ID: <2BFDC577-949F-49EE-A639-A21010FEEE0E@linaro.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain;
 charset=utf-8
Content-Transfer-Encoding: quoted-printable

Hi,

On March 21, 2025 8:29:40 AM GMT+05:30, Wei Fang <wei=2Efang@nxp=2Ecom> wr=
ote:
>@@ -2487,7 +2487,14 @@ static struct pci_dev *pci_scan_device(struct pci_=
bus *bus, int devfn)
> 	struct pci_dev *dev;
> 	u32 l;
>=20
>-	pci_pwrctrl_create_device(bus, devfn);
>+	/*
>+	 * Create pwrctrl device (if required) for the PCI device to handle the
>+	 * power state=2E If the pwrctrl device is created, then skip scanning
>+	 * further as the pwrctrl core will rescan the bus after powering on
>+	 * the device=2E
>+	 */
>+	if (pci_pwrctrl_create_device(bus, devfn))
>+		return NULL;
>
>Hi Manivannan,
>
>The current patch logic is that if the pcie device node is found to have
>the "xxx-supply" property, the scan will be skipped, and then the pwrctrl
>driver will rescan and enable the regulators=2E However, after merging th=
is
>patch, there is a problem on our platform=2E The =2Eprobe() of our device
>driver will not be called=2E The reason is that CONFIG_PCI_PWRCTL_SLOT is
>not enabled at all in our configuration file, and the compatible string
>of the device is also not added to the pwrctrl driver=2E

Hmm=2E So I guess the controller driver itself is enabling the supplies I =
believe (which I failed to spot)=2E May I know what platforms are affected?

> I think other
>platforms should also have similar problems, which undoubtedly make these
>platforms be unstable=2E This patch has been applied, and I am not famili=
ar
>with this=2E Can you fix this problem? I mean that those platforms that d=
o
>not use pwrctrl can avoid skipping the scan=2E

Sure=2E It makes sense to add a check to see if the pwrctrl driver is enab=
led or not=2E If it is not enabled, then the pwrctrl device creation could =
be skipped=2E I'll send a patch once I'm infront of my computer=2E

But in the long run, we would like to move all platforms to use pwrctrl in=
stead of fiddling the power supplies in the controller driver (well that wa=
s the motivation to introduce it in the first place)=2E

Once you share the platform details, I'll try to migrate it to use pwrctrl=
=2E Also, please note that we are going to enable pwrctrl in ARM64 defconfi=
g very soon=2E So I'll try to fix the affected platforms before that happen=
s=2E

- Mani

=E0=AE=AE=E0=AE=A3=E0=AE=BF=E0=AE=B5=E0=AE=A3=E0=AF=8D=E0=AE=A3=E0=AE=A9=
=E0=AF=8D =E0=AE=9A=E0=AE=A4=E0=AE=BE=E0=AE=9A=E0=AE=BF=E0=AE=B5=E0=AE=AE=
=E0=AF=8D

