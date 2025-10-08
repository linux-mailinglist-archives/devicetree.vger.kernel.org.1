Return-Path: <devicetree+bounces-224422-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from dfw.mirrors.kernel.org (dfw.mirrors.kernel.org [142.0.200.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 476DCBC3C11
	for <lists+devicetree@lfdr.de>; Wed, 08 Oct 2025 10:07:21 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.mirrors.kernel.org (Postfix) with ESMTPS id 14DF14E6F89
	for <lists+devicetree@lfdr.de>; Wed,  8 Oct 2025 08:07:20 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 680542F290B;
	Wed,  8 Oct 2025 08:07:17 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="V2mGKk8o"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ej1-f47.google.com (mail-ej1-f47.google.com [209.85.218.47])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 86EC734BA3C
	for <devicetree@vger.kernel.org>; Wed,  8 Oct 2025 08:07:15 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.218.47
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759910837; cv=none; b=I1wplkEmN5ql02GVW5wm5MlqXE8pTrDqYLOxYHoDiXhUkltOz69pinWJjMXVc6J/5y4A5TOS1pjQLfwEJTrjT3Tn+kMq2wPYAY0QeXZ6XGPge2powz3NZ/2oK4ZyG/iBIQVmPCqhnR6/P4MpN+QCgk1auw419MfXAksVm/AkvQw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759910837; c=relaxed/simple;
	bh=lz3Dr9+oQCFUFzdJjDUHVM7lAqaXzoxTfNaEvT4TpvI=;
	h=Message-ID:Subject:From:To:Cc:Date:In-Reply-To:References:
	 Content-Type:MIME-Version; b=kSZa/Ay4hsJUMtnq3XHt0X1RIPcJfjHstcBbTst8iCkUXxDZ9WLZKj1SoO8mpGrGjmPEnxpONJHYt1mRyCLO2/PtpFVw+0FNDIijhokRCze8HlyXujogEt5zWQDTBl3Eoie7NEy7gEqunvrUY6OYUK6QAlEtJSEhmTjqPzTzGdk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=V2mGKk8o; arc=none smtp.client-ip=209.85.218.47
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-ej1-f47.google.com with SMTP id a640c23a62f3a-b48d8deafaeso193205466b.1
        for <devicetree@vger.kernel.org>; Wed, 08 Oct 2025 01:07:15 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1759910834; x=1760515634; darn=vger.kernel.org;
        h=mime-version:user-agent:content-transfer-encoding:references
         :in-reply-to:date:cc:to:from:subject:message-id:from:to:cc:subject
         :date:message-id:reply-to;
        bh=lz3Dr9+oQCFUFzdJjDUHVM7lAqaXzoxTfNaEvT4TpvI=;
        b=V2mGKk8o/rX2W82CRvTJEJ6gGks7L42Pk/5rBzqVDEmh4Y2rrjE9gxowcK6rTwbffD
         1upzhol0/oxWHrZWZwlasvf7xuBizFvxRmozx8x+Pr8iY2RN9YV+96YDHgSx5GkmmcZI
         SvTGov/YDHjmBE27TAv9WAFl24jELiXnsvC2paU7yfG0zkacbXm9KI8YoRaym895KRPd
         MYze4Jtnb6yn1lU6CoWnOVQeEJ4uBauJpBuPoUDk6SuiK/G8UvZLIj2P6NrfyS64o3wS
         Db/psh9+So8mJKWVqPyCm+zgnDxlYZUfWQhURcVQspAoDVQkgYN3oeR0P9kg0ofqTb3d
         lQ/g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1759910834; x=1760515634;
        h=mime-version:user-agent:content-transfer-encoding:references
         :in-reply-to:date:cc:to:from:subject:message-id:x-gm-message-state
         :from:to:cc:subject:date:message-id:reply-to;
        bh=lz3Dr9+oQCFUFzdJjDUHVM7lAqaXzoxTfNaEvT4TpvI=;
        b=DeIiSBH9SyBbSEv4CiLmEOuHosSdux0/FsDYQ2sTZCJoCCwW7mKALXUfaGwHWSMjTB
         6TxVIX2jXAwPAjEPeT/YNjkhQk5/FpjzDMpL6PagU/1F7cPcur/yROdULjrmynWV+nll
         03QiLBQSrp/zks0lLsqUoSp5x52+J0IzNRlUgEGPkaxMnNcFO7vKFFsnUMx7BvuKOMGc
         8HYuJQ3/XFqHxU9rRtX4h+0QY+KTtraBea7KQ3weF0y1wCwqr8EkBmJHoaDO8Sntt7pi
         uNCBpYpivwET5doithrd7Z1UrrKpnelafnn6zrZxSUQoPVswWWd9Jz9r8jImmYwNNFlh
         6GtQ==
X-Forwarded-Encrypted: i=1; AJvYcCXuTkRSN+cTw7ALF6abD3Socjg5qE5Kaw402BRB6uo2YOf1+WrmAqeISyHGCVLCsBB+pYakyQuZ6ueR@vger.kernel.org
X-Gm-Message-State: AOJu0YwKVdvsjGsvx6vFAE0rqGbggYQ6zWXZz4zjCSYNXcZC3yTMb3Gp
	0jjm5L9DwgkoqJQ1HfpHsN+T8PKOc9PTYHvyTie73M/u/HPHcRwj3AE0Jbn4FGBt19k=
X-Gm-Gg: ASbGncunAhGXpoczwc1mPy91p3nnJ+bQjheO0RaZxFSw6mXS5W9JfCBR1i4fVyQdMxA
	7QsdpK4rnqYaGK6Aa+zvq5bXyQ0kbFFyKx8+qnwdMlV4h9vWpbAVhImvlSpGQcptIASNg4DpVIH
	pPz4chyXNozRyv7Nt3SHPLHGoLrePAhSXAre9Y39wTbzDQBvqaYY0XfO56FBpFW9eB979vD4XMx
	M8c1hAz9joQUSHHaY/WJBmEN0poG0nGdSF9B4MX5RNDZjJTy4HrS4qzeWFwqGDq32aBlmaSoSd1
	q73coe/bS5V25gjYWMKu08wwaghMGY+s4/aLmu6gTQAeo7Tk/LF3diz6WQr1lFkvz6EK70tu3bt
	z63qhhmITZ/QURJBWcxpkLU0MluQ4u/3TwOlFhRKUqQKvjmjkR7i9++DQW/9N/+5S
X-Google-Smtp-Source: AGHT+IHtm6BHE8ZRQ41FN4MsQQmn1glSpIZ2QsHJBtFdvnhqSHUzpN0y3S8QL9OiODXZeENcyC/EIA==
X-Received: by 2002:a17:907:3e1e:b0:b3a:b22e:dd35 with SMTP id a640c23a62f3a-b50aa48d854mr270829266b.2.1759910833825;
        Wed, 08 Oct 2025 01:07:13 -0700 (PDT)
Received: from draszik.lan ([80.111.64.44])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-b48652a9e66sm1563103566b.14.2025.10.08.01.07.12
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 08 Oct 2025 01:07:13 -0700 (PDT)
Message-ID: <e91f6754bf13f1d42402fb708dfc2b3d7bd59a6b.camel@linaro.org>
Subject: Re: [PATCH] dt-bindings: phy: samsung,ufs-phy: add power-domains
From: =?ISO-8859-1?Q?Andr=E9?= Draszik <andre.draszik@linaro.org>
To: Alim Akhtar <alim.akhtar@samsung.com>, 'Vinod Koul' <vkoul@kernel.org>, 
 'Kishon Vijay Abraham I'	 <kishon@kernel.org>, 'Rob Herring'
 <robh@kernel.org>, 'Krzysztof Kozlowski'	 <krzk+dt@kernel.org>, 'Conor
 Dooley' <conor+dt@kernel.org>
Cc: 'Peter Griffin' <peter.griffin@linaro.org>, 'Tudor Ambarus'
	 <tudor.ambarus@linaro.org>, 'Will McVicker' <willmcvicker@google.com>, 
	kernel-team@android.com, linux-phy@lists.infradead.org, 
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Date: Wed, 08 Oct 2025 09:07:12 +0100
In-Reply-To: <002001dc381c$85e17fa0$91a47ee0$@samsung.com>
References: 
	<CGME20251007160147epcas5p305e74b7b3449b934687396e9c8aa3ff4@epcas5p3.samsung.com>
		<20251007-power-domains-dt-bindings-phy-samsung-ufs-phy-v1-1-d9030d14af59@linaro.org>
	 <002001dc381c$85e17fa0$91a47ee0$@samsung.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
User-Agent: Evolution 3.56.2-2 
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0

Hi Alim,

On Wed, 2025-10-08 at 11:56 +0530, Alim Akhtar wrote:
>=20
>=20
> > -----Original Message-----
> > From: Andr=C3=A9 Draszik <andre.draszik@linaro.org>
> > Sent: Tuesday, October 7, 2025 9:32 PM
> > To: Vinod Koul <vkoul@kernel.org>; Kishon Vijay Abraham I
> > <kishon@kernel.org>; Rob Herring <robh@kernel.org>; Krzysztof Kozlowski
> > <krzk+dt@kernel.org>; Conor Dooley <conor+dt@kernel.org>; Alim Akhtar
> > <alim.akhtar@samsung.com>
> > Cc: Peter Griffin <peter.griffin@linaro.org>; Tudor Ambarus
> > <tudor.ambarus@linaro.org>; Will McVicker <willmcvicker@google.com>;
> > kernel-team@android.com; linux-phy@lists.infradead.org;
> > devicetree@vger.kernel.org; linux-kernel@vger.kernel.org; Andr=C3=A9 Dr=
aszik
> > <andre.draszik@linaro.org>
> > Subject: [PATCH] dt-bindings: phy: samsung,ufs-phy: add power-domains
> >=20
> > The UFS phy can be part of a power domain, so we need to allow the
> > relevant property 'power-domains'.
> >=20
> Can you cross check if there is a separate power domain control for ufs-p=
hy?=20

I'm still having some other troubles with the hsi2 (UFS) power domain on gs=
101,
but I can confirm the usb-phy is part of the hsi0 (USB) power domain. So fo=
r the
ufs-phy I presume it's similar: it should be part of the hsi2 power domain.=
 There
certainly is no separate domain for the ufs-phy itself.

See also my reply to the other patch:
https://lore.kernel.org/all/ff3a0b96980669f326ed02ed81b97d34c104b09d.camel@=
linaro.org/

Does that answer your question?

Cheers,
Andre'

