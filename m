Return-Path: <devicetree+bounces-41697-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id 0B207854D37
	for <lists+devicetree@lfdr.de>; Wed, 14 Feb 2024 16:46:47 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 9F28AB24A4B
	for <lists+devicetree@lfdr.de>; Wed, 14 Feb 2024 15:46:44 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A44375D8F4;
	Wed, 14 Feb 2024 15:46:38 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=bgdev-pl.20230601.gappssmtp.com header.i=@bgdev-pl.20230601.gappssmtp.com header.b="CB5dhkms"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-oa1-f44.google.com (mail-oa1-f44.google.com [209.85.160.44])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 22A0F5D756
	for <devicetree@vger.kernel.org>; Wed, 14 Feb 2024 15:46:36 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.160.44
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1707925598; cv=none; b=epNJHMR7BA8K/+iOCv2so5/xLx9BnjF7pICsc9vpIAfchZDg+rbbA3W8pg9mG09S0XZMMykf2pFUAukDA61kYBccTlDrZFbLoUZfRKhbEwBQ+VSBhabr+LEvJ6EBYdA2W/APSu1uIKGquhykR2QRNeVJn7LFKCl/XBFdFSDM+CU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1707925598; c=relaxed/simple;
	bh=nXt2NydxVPyI52wKlorJbsmqB3Y1sW0XBLcflaBdxWI=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=RkQGD35oGVr5W2IrFYysURyshNQYWs1claSrr3AnXADEq360t71MtLLCP3zi4lyHBfsS/7pT/kWH9NOsPN0neDAWe2/M0m0BtSpWFg36J0oR+pIGA7sXcesKRhb87v4WI06UGVC1XBAe6AVOk7V0BhIyW8ivNARDjebJngl66qs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=bgdev.pl; spf=none smtp.mailfrom=bgdev.pl; dkim=pass (2048-bit key) header.d=bgdev-pl.20230601.gappssmtp.com header.i=@bgdev-pl.20230601.gappssmtp.com header.b=CB5dhkms; arc=none smtp.client-ip=209.85.160.44
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=bgdev.pl
Authentication-Results: smtp.subspace.kernel.org; spf=none smtp.mailfrom=bgdev.pl
Received: by mail-oa1-f44.google.com with SMTP id 586e51a60fabf-21432e87455so3171317fac.1
        for <devicetree@vger.kernel.org>; Wed, 14 Feb 2024 07:46:36 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=bgdev-pl.20230601.gappssmtp.com; s=20230601; t=1707925596; x=1708530396; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=43U0prLBEviHcCJ3pSlb1u8y9sUlYBpSR6dl+zr/IL8=;
        b=CB5dhkms/IoQIZ0SSZkK9qtAUj1aDMxKzE8xM4f9PrWezhuGOsacgz4YP2KGzuisXO
         Yypudkqr2k/5n1+E6iTB/wf13I60X7EiEeAI9wGRgBQAZPlD/uCwJbX1D0iDVI3HsFku
         WHDw1EOiOjFemrSSQqb1dYtDtyaYwhNkkM3EC5LG7g7BwmT6wg0ca8BoQ4iY7PpUL8SN
         GQM6o8+LDI/wjkx0bLASEhFzVRujNmkyye7gHLbAzAL6saIlLtv6sjYsrwK/mWKDh+NA
         CqQtQWYZQLEis8ERh3yCubqJPDzxDkdSrwt2WwlXUdnisDvZxgYMMoIS+ZFsMk7wOnKS
         ScUA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1707925596; x=1708530396;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=43U0prLBEviHcCJ3pSlb1u8y9sUlYBpSR6dl+zr/IL8=;
        b=Mx8kzhLfRpwjIlD+X0/0SYzVvPbb68P+c7rSlz2fCqwjqeX1WTvdyIkqBQXLs62YTb
         jXp4NkMX3IpD8z87h3WiWBgIuF6ln8oKQXckzmpelVRp9W5e2tLPefbw9vcZgJBokXMa
         KwyMAOwaQKBZ5jOAzCgt8heE3vMiOjGZhIClqEQmAMNpIzoMIpMAvLTHUrdpUwNVyVRn
         GZBcgsP9ApK01qfozu7qwY+xnxGnfB+NB9BvXBYHrDRwZNft23Gv4c4U1xPyxPB0ddZH
         4Uw93Pdwpbez0ze56JWChPQeyA7KUqL1yMjJGUSKAHU39dLwbDG2aDi9SEwizoxf8tNw
         s1tA==
X-Forwarded-Encrypted: i=1; AJvYcCW1zPQRJuMj2g6QTbF8Qer+GYxHAEI6kWxS7jbr/cNcvhlhkPMSuR/9TSmcRbSJL7fFZ4aFiYsbzqGOG3dbKiIEnFlt0nVQYkTKFg==
X-Gm-Message-State: AOJu0Yy0efR/R9PQB1oux/jhGBucD6LIA+eoy8/rvfX+Yi+QnkzR6Cm/
	2IhcyGmgCHwu4LS+PldOSP8ZQKontlj4gH3PUfRGV9Al8X1tLLqVr3yrPH3CiJRH9goP+nfOVD5
	/m9edVTNslnTn3daYz5bTokJsJkZisYpoRQVZhQ==
X-Google-Smtp-Source: AGHT+IGq/FPDHURxZuXkT8EEMfyOBxQIWZRGOM045VqtAvTD1CETCELK38VG/mvuBgw8UVUij5Aehjzrk5JxYSrtPyI=
X-Received: by 2002:a05:6871:551:b0:218:55c9:bb20 with SMTP id
 t17-20020a056871055100b0021855c9bb20mr3419259oal.21.1707925596168; Wed, 14
 Feb 2024 07:46:36 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20240201155532.49707-1-brgl@bgdev.pl> <20240201155532.49707-9-brgl@bgdev.pl>
 <7tbhdkqpl4iuaxmc73pje2nbbkarxxpgmabc7j4q26d2rhzrv5@ltu6niel5eb4>
In-Reply-To: <7tbhdkqpl4iuaxmc73pje2nbbkarxxpgmabc7j4q26d2rhzrv5@ltu6niel5eb4>
From: Bartosz Golaszewski <brgl@bgdev.pl>
Date: Wed, 14 Feb 2024 16:46:25 +0100
Message-ID: <CAMRc=MeM_ys7_Rk2=yhEVL6pe1bWQXqS8r_Y7P-SMQ_cTCMebA@mail.gmail.com>
Subject: Re: [RFC 8/9] PCI/pwrctl: add PCI power control core code
To: Bjorn Andersson <andersson@kernel.org>
Cc: Konrad Dybcio <konrad.dybcio@linaro.org>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, Conor Dooley <conor+dt@kernel.org>, 
	Marcel Holtmann <marcel@holtmann.org>, Luiz Augusto von Dentz <luiz.dentz@gmail.com>, 
	Bjorn Helgaas <bhelgaas@google.com>, Neil Armstrong <neil.armstrong@linaro.org>, 
	Alex Elder <elder@linaro.org>, Srini Kandagatla <srinivas.kandagatla@linaro.org>, 
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>, Arnd Bergmann <arnd@arndb.de>, 
	Abel Vesa <abel.vesa@linaro.org>, Manivannan Sadhasivam <mani@kernel.org>, Lukas Wunner <lukas@wunner.de>, 
	linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org, linux-bluetooth@vger.kernel.org, 
	linux-pci@vger.kernel.org, 
	Bartosz Golaszewski <bartosz.golaszewski@linaro.org>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Fri, Feb 2, 2024 at 4:53=E2=80=AFAM Bjorn Andersson <andersson@kernel.or=
g> wrote:
>

[snip]

>
> > +             break;
> > +     case BUS_NOTIFY_BOUND_DRIVER:
> > +             pwrctl->link =3D device_link_add(dev, pwrctl->dev,
> > +                                            DL_FLAG_AUTOREMOVE_CONSUME=
R);
> > +             if (!pwrctl->link)
> > +                     dev_err(pwrctl->dev, "Failed to add device link\n=
");
> > +             break;
> > +     case BUS_NOTIFY_UNBOUND_DRIVER:
> > +             device_link_del(pwrctl->link);
>
> This might however become a NULL-pointer dereference, if dev was bound
> to its driver before the pci_pwrctl_notify() was registered for the
> pwrctl and then the PCI device is unbound.
>

Right. And it also makes me think that right after registering with
the notifier, we should iterate over the PCI bus devices and see if
the relevant one is already there.

> This would also happen if device_link_add() failed when the PCI device
> was bound...
>

Right.

Bart

[snip]

