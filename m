Return-Path: <devicetree+bounces-131693-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 6130E9F461E
	for <lists+devicetree@lfdr.de>; Tue, 17 Dec 2024 09:35:05 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 716417A2F15
	for <lists+devicetree@lfdr.de>; Tue, 17 Dec 2024 08:34:59 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id AE06A1DB522;
	Tue, 17 Dec 2024 08:34:55 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="Rn+0iSs6"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f44.google.com (mail-wm1-f44.google.com [209.85.128.44])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D65E71D95BE
	for <devicetree@vger.kernel.org>; Tue, 17 Dec 2024 08:34:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.44
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1734424495; cv=none; b=gFMhfuEU1n8OAkbXTxeXXee5P0WxsOa6aJG468TKgc9/VIJ4cT86vQvoYEoLqQlLpoj/gDPixy8QGd4vM3DyoKOoU0BihINKcBhiJk+eZ32M9W9K/2JODOlEo3z/CaU1xSE/Kb/C0Do55ULHigSedVetTl/rkOnjsw7+E+pMCt0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1734424495; c=relaxed/simple;
	bh=nQBFudkH/U9XRrwJjvmyIWyAmq7wglEjIEj8Zz4oFpA=;
	h=Message-ID:Subject:From:To:Cc:Date:In-Reply-To:References:
	 Content-Type:MIME-Version; b=KxxitrSGLi3lsejqPYApK0dTh+CRO08JMJanHnMU6MjjY3fI35R1hY7dnyWeoc3DxpNi0OcA8SMUTbS6UQ5QTfy2CyG6tAnbw6Bv8HcMqB5ARoyRXN3tEFK7JrbzCVLigQlN+538tpdy3sg74UAgjQz1Hmy0XeXdxtXYstRekOc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=Rn+0iSs6; arc=none smtp.client-ip=209.85.128.44
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wm1-f44.google.com with SMTP id 5b1f17b1804b1-4361815b96cso33033235e9.1
        for <devicetree@vger.kernel.org>; Tue, 17 Dec 2024 00:34:53 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1734424492; x=1735029292; darn=vger.kernel.org;
        h=mime-version:user-agent:content-transfer-encoding:references
         :in-reply-to:date:cc:to:from:subject:message-id:from:to:cc:subject
         :date:message-id:reply-to;
        bh=nQBFudkH/U9XRrwJjvmyIWyAmq7wglEjIEj8Zz4oFpA=;
        b=Rn+0iSs6bfDaKRyDmnZoNW7d4Xq1WJ96vMymXn2X/KoFcSnxMNsHrbTENlGyCFYc9t
         0Rs2VextUzWCMjFER/UcldP/tmcOcZhTan9WfQkwkf+fwFE1PO6OEp2fNMTNDsdd7H2F
         kjMSb4JYzdIwT8eo3CusZ4db97eCjg9wVVBhPM4rH5wQNrqTkjYcsOBHeSOwx5u9mRTj
         CbEesRFOKAdWEG5hescaqPUzUqm4NaDujNiDKLCI6/OpQa/SfFio2fs4zHeKl52hwZzg
         MgFQjpJfH3DSAyQGm4ErQufCTl4wJx6/UJkwzigWXWX4V/wwzz5mTf4MdRk3kiZXJs40
         IH1Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1734424492; x=1735029292;
        h=mime-version:user-agent:content-transfer-encoding:references
         :in-reply-to:date:cc:to:from:subject:message-id:x-gm-message-state
         :from:to:cc:subject:date:message-id:reply-to;
        bh=nQBFudkH/U9XRrwJjvmyIWyAmq7wglEjIEj8Zz4oFpA=;
        b=LsjbzNZq3yaj3h+Z/7VUQh8P9rs8j7b1zjMuuzjCDOQH+jvwc0Bf7xkkqtb1sUoxp5
         3bLWCa2AdH1bgm4gdia0Hc1sQjngBMIuChs6cr4J5WoLqU2f+V+eC9QOioEIIqPxkXmT
         VPqOV+3Esv3Z6atWsneAc+pIGGgM1kHU24mzBYuelwd1IhMySrd1id12T24jLTYnCbjq
         KIvdJoBQ0g54QZX46Iic/fARCS13fekHXvNDQFahorWnbMJy2zHHkOEHBaW5kgtaMdDo
         GtvZUBgYomXOFqcXcW/hCxgtMhdI0POPa9RX5ffHSZmwtdQE2DbTh82ULdcOh8lyeDlQ
         zpgg==
X-Forwarded-Encrypted: i=1; AJvYcCUfKQ49OHQGA9KdUt0Kdnbrl+/D19CLqbrOsyfVNysLz8onGCoVkKUqfcKfE1py36/9mp0tw1v74sVS@vger.kernel.org
X-Gm-Message-State: AOJu0YwmRq4AMwUZpQSMrjOZH9pq2iQjqOuzbOqep2my4yI5mPStDpwI
	Y/1amwzw+buNYBNu3WTsYAjv9kcpnoSVh6jo0Cl1jeu1fFU9ryYFkzIy5sSIonU=
X-Gm-Gg: ASbGnct7nF8zrm457SXq1X9NqhNN6/SCpXDdlewLfPqEYU/0v28rp7UAC/YYa1X0t8J
	L6NcJD+gbgKRoZHC9U1a7ZzATTq/ff3q5QpTnysvW4T9tpB8oFJROmRSZC1qkNy8ByRNN+7T5y+
	48h1snTVHDFOhUMA0rvw51CXhE5d+jUs+CbisPsLFzLEMN5cfcstNcV6egL6aN8S5tnQnbV6bf8
	iWS1TymnKKrurPWecWbR0YE0N+l7DC11AeWne+lwOhX4iBAlFWUs06OcJeV
X-Google-Smtp-Source: AGHT+IGdkDRjPGq5YThJvtr0Dph2unG1voX84f7v6HaIyi5sRuOIUK1Mi3kKYmBQJuMvyL2RKZOlJg==
X-Received: by 2002:a05:600c:3151:b0:434:fe4b:be18 with SMTP id 5b1f17b1804b1-4362aa3ffcdmr145552925e9.18.1734424492159;
        Tue, 17 Dec 2024 00:34:52 -0800 (PST)
Received: from draszik.lan ([80.111.64.44])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-43625716e5csm163118975e9.36.2024.12.17.00.34.51
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 17 Dec 2024 00:34:51 -0800 (PST)
Message-ID: <6e22585f8d374f8e26a2a51153680041ad8b1bea.camel@linaro.org>
Subject: Re: [PATCH 3/4] arm64: dts: exynos: gs101-oriole: move common
 Pixel6 & 6Pro parts into a .dtsi
From: =?ISO-8859-1?Q?Andr=E9?= Draszik <andre.draszik@linaro.org>
To: Krzysztof Kozlowski <krzk@kernel.org>
Cc: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
  Conor Dooley <conor+dt@kernel.org>, Peter Griffin
 <peter.griffin@linaro.org>, Tudor Ambarus <tudor.ambarus@linaro.org>, Alim
 Akhtar <alim.akhtar@samsung.com>, Will McVicker <willmcvicker@google.com>,
 kernel-team@android.com, devicetree@vger.kernel.org, 
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
 linux-samsung-soc@vger.kernel.org
Date: Tue, 17 Dec 2024 08:34:50 +0000
In-Reply-To: <fw2a6taf4kd3sggmyppeym2uxkuyotxy7ugj3bh73vetnra4m6@jllekadordju>
References: <20241216-gs101-simplefb-v1-0-8ccad1830281@linaro.org>
	 <20241216-gs101-simplefb-v1-3-8ccad1830281@linaro.org>
	 <fw2a6taf4kd3sggmyppeym2uxkuyotxy7ugj3bh73vetnra4m6@jllekadordju>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
User-Agent: Evolution 3.52.1-4 
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0

On Tue, 2024-12-17 at 08:38 +0100, Krzysztof Kozlowski wrote:
> On Mon, Dec 16, 2024 at 01:06:28PM +0000, Andr=C3=A9 Draszik wrote:
> > In order to support Pixel 6 (Oriole) and Pixel 6 Pro (Raven) properly,
> > we have to be able to distinguish them properly as we add support for
> > more features.
> >=20
> > For example, Raven has a larger display. There are other differences,
> > like battery design capacity, etc.
> >=20
> > Move all the parts that are common for now into a gs101-raviole.dtsi,
> > and just leave the display related things in gs101-oriole.dts.
> >=20
> > Raviole was chosen as the name because Google uses that when referring
> > to the combination of Oriole & Raven, keeping the familiar terminology.
> >=20
> > Signed-off-by: Andr=C3=A9 Draszik <andre.draszik@linaro.org>
> >=20
> > ---
> > Note: MAINTAINERS doesn't need updating, it covers this whole directory
> > ---
> > =C2=A0arch/arm64/boot/dts/exynos/google/gs101-oriole.dts | 290 +-------=
------------
> > =C2=A0.../boot/dts/exynos/google/gs101-raviole.dtsi=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0 | 297 +++++++++++++++++++++
> > =C2=A02 files changed, 305 insertions(+), 282 deletions(-)
> >=20
>=20
> This looks like move of the code, so -M/-B/-C format patch arguments
> would create better diff.

Ah, yes, forgot about those when I switched to using b4 instead of
custom scripts...

Cheers,
Andre

