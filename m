Return-Path: <devicetree+bounces-128235-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 70D6E9E8266
	for <lists+devicetree@lfdr.de>; Sat,  7 Dec 2024 23:03:32 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 21C3E18847E7
	for <lists+devicetree@lfdr.de>; Sat,  7 Dec 2024 22:03:32 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 3A71D1547E3;
	Sat,  7 Dec 2024 22:03:29 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="xyVACrfl"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-oi1-f171.google.com (mail-oi1-f171.google.com [209.85.167.171])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 83A3722C6FA
	for <devicetree@vger.kernel.org>; Sat,  7 Dec 2024 22:03:27 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.171
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1733609009; cv=none; b=aD5T+e4o7oFNVaffsI5MADWxwVH9QvcmoAtbKeKzOf7syRkPmod3L9UEe+js/aHF2kaQYWkid4nqLPTwaopRzSVfEBBtdflcH38yv76ypu6b83mUSTY8DBYBb8owVv0V3jKqw+qxQgS3Zd5Q54h12nHkWSiexa8Q2wH3JY6JeMk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1733609009; c=relaxed/simple;
	bh=8GXM0+BHtSGWHXqNnKhtHtPN9SdqgsAE77m643km+40=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=ZSlY+r+qHhqFd88Xkdzj28EsVWheLREUV9CaC4Xvw7cusSWs0mxmcIK/q41Gvoq6vJDbGcFVnqoaWJNxNcO/4hak0RLgFJRQ+5Iq3RrmbzjXWFp+nASPzw4q7cukYNCUhlfHNK8QGb2pCpgRREJA71liLfqw+sEY21Zs8YBvPn8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=xyVACrfl; arc=none smtp.client-ip=209.85.167.171
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-oi1-f171.google.com with SMTP id 5614622812f47-3ea369fdb0cso2001292b6e.3
        for <devicetree@vger.kernel.org>; Sat, 07 Dec 2024 14:03:27 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1733609006; x=1734213806; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=8GXM0+BHtSGWHXqNnKhtHtPN9SdqgsAE77m643km+40=;
        b=xyVACrflMo14f/QW3IV78NaUuIpm+irun7RHv0PrP2r0wQL/N9zfnYzmGlbP+zWhRL
         H7+WRfXekkeRWgKpyR8PNUteCWK02XEcwoNx/fsu52uZc8DuvUMAM++2k129ZY3/D916
         wFjhxCbEfbxWaoI+VE0WXqsbToYOhj6FzvagmxLhNexOf3PvRFYX13PxvifZUWm7fGgZ
         TuxkHIXccdVUyHsUgd9cnT4nd6cEyXWqSA4ufa3dgiIHutsl/vz+dbdQDOmTyq4xFKQA
         s9Qn+MoTaR2WHsFK+iqjxyQKTHL8WMD9J4WF2g4K5lB/Hh3ZMfqa1A3gkQdZl5ueMmun
         0uVQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1733609006; x=1734213806;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=8GXM0+BHtSGWHXqNnKhtHtPN9SdqgsAE77m643km+40=;
        b=WrANPgrOB62XNBRX7iPCJD3e5j2q+YiwaNdmgB9mjQhETsY5RRXouBxebFNAD6LqZ2
         oc2hKA1ukzMW21GgAu7NRBBYvV1A8pZWrPiE0XPCfr+5N9RBGlvnLses94AKogXwdXf3
         cBNEMhsLoDQy2B2fPqzn+9ihCYgxQy6pcSpKYdC+klOgwJPZ5JtMyy6QMvsP+VALTNpf
         UW+E7+boCaAHg1awUocLrz7piu7iDJAJtFZMspkE03y5FxQmf3dTUVB2cyjTA8r5sZyg
         k94JHmJywP0Tbim69SUUUr1F17xHzk29X4e2wqVccu2Ln3rU/Ph+VMjg1vooZZ5uZNbM
         rHOw==
X-Forwarded-Encrypted: i=1; AJvYcCUocU9gLrh0y5stVKj3qHRrg3i7A0D9e25dd/TpMAT7Kwp1TaLpg4WP5MM93Dhqqm0Ld1jNxOz+lbQ4@vger.kernel.org
X-Gm-Message-State: AOJu0YxRd+mj75kZ0iFfcu6RU+Otfj771U81+MITPwU/x0YvSxQbHdMx
	Jgu0PGsrT7hY6t9xCe72R2FEet0GCOzaCTSaoC12WoqfebLn8U+MnFDr6RjpFtEycDtQpxARcup
	FVfvDeaOd5FYiUWrnee9wC9xVALh2O59LC4YhRA==
X-Gm-Gg: ASbGncvhuuN1INlovHB6tX3klRUjIsxP+JM0JsonQdANIIXmsilrXBX0Tg3BRa1LDUL
	xMLq4LtHC26EfzZignxnQ+eefXLvUMS0=
X-Google-Smtp-Source: AGHT+IFySGjzoy5FCW6UW8sdkAac1K6u7Brr2FiRkrW+1TN5iMSt/PqT8OWXDemRttmZeKYZRyGTsy/kAkU/2DL3BXc=
X-Received: by 2002:a05:6871:c709:b0:29e:392d:afc8 with SMTP id
 586e51a60fabf-29f7329ae2dmr7184218fac.15.1733609006594; Sat, 07 Dec 2024
 14:03:26 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20241206-gs101-phy-lanes-orientation-phy-v4-0-f5961268b149@linaro.org>
 <20241206-gs101-phy-lanes-orientation-phy-v4-7-f5961268b149@linaro.org>
In-Reply-To: <20241206-gs101-phy-lanes-orientation-phy-v4-7-f5961268b149@linaro.org>
From: Peter Griffin <peter.griffin@linaro.org>
Date: Sat, 7 Dec 2024 22:03:15 +0000
Message-ID: <CADrjBPrz1qUxbEVFR8OT785xLPwWmu3_ZThSne+EtpS8_NHEEg@mail.gmail.com>
Subject: Re: [PATCH v4 7/7] phy: exynos5-usbdrd: allow DWC3 runtime suspend
 with UDC bound (E850+)
To: =?UTF-8?Q?Andr=C3=A9_Draszik?= <andre.draszik@linaro.org>
Cc: Vinod Koul <vkoul@kernel.org>, Kishon Vijay Abraham I <kishon@kernel.org>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Marek Szyprowski <m.szyprowski@samsung.com>, Sylwester Nawrocki <s.nawrocki@samsung.com>, 
	Alim Akhtar <alim.akhtar@samsung.com>, Tudor Ambarus <tudor.ambarus@linaro.org>, 
	Sam Protsenko <semen.protsenko@linaro.org>, Will McVicker <willmcvicker@google.com>, 
	Roy Luo <royluo@google.com>, kernel-team@android.com, linux-phy@lists.infradead.org, 
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
	linux-arm-kernel@lists.infradead.org, linux-samsung-soc@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hi Andr=C3=A9,

On Fri, 6 Dec 2024 at 16:31, Andr=C3=A9 Draszik <andre.draszik@linaro.org> =
wrote:
>
> To make USB runtime suspend work when a UDC has been bound, the phy
> needs to inform the USBDRD controller (DWC3) that Vbus and bvalid are
> gone, so that it can in turn raise the respective gadget interrupt with
> event =3D=3D DWC3_DEVICE_EVENT_DISCONNECT, which will cause the USB stack
> to clean up, allowing DWC3 to enter runtime suspend.
>
> On e850 and gs101 this isn't working, as the respective signals are not
> directly connected, and instead this driver uses override bits in the
> PHY IP to set those signals. It currently forcefully sets them to 'on',
> so the above mentioned interrupt will not be raised, preventing runtime
> suspend.
>
> To detect that state, update this driver to act on the TCPC's
> orientation signal - when orientation =3D=3D NONE, Vbus is gone and we ca=
n
> clear the respective bits. Similarly, for other orientation values we
> re-enable them.
>
> This makes runtime suspend work on platforms with a TCPC (like Pixel6),
> while keeping compatibility with platforms without (e850-96).
>
> With runtime suspend working, USB-C cable orientation detection now
> also fully works on such platforms, and the link comes up as Superspeed
> as expected irrespective of the cable orientation and whether UDC /
> gadget are configured and active.
>
> Signed-off-by: Andr=C3=A9 Draszik <andre.draszik@linaro.org>

As mentioned on the last patch, in my testing cable orientation
detection is working, but Pixel is detected as a superspeed device in
one orientation, and high speed device in the other orientation. So
you should either change the wording of the last paragraph in the
commit message (assuming you get the same results as me) or make it
detect as superspeed in both orientations.

Thanks,

Peter.

