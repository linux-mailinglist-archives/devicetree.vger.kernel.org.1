Return-Path: <devicetree+bounces-150402-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 5E6ADA41FF9
	for <lists+devicetree@lfdr.de>; Mon, 24 Feb 2025 14:10:25 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 9D4443A249C
	for <lists+devicetree@lfdr.de>; Mon, 24 Feb 2025 13:10:14 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 4722C23BCE2;
	Mon, 24 Feb 2025 13:10:21 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="CzZEedlq"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ej1-f54.google.com (mail-ej1-f54.google.com [209.85.218.54])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6720F802
	for <devicetree@vger.kernel.org>; Mon, 24 Feb 2025 13:10:19 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.218.54
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1740402621; cv=none; b=XxY2a3grlS/x0EiTPDuHE+q9VnGmQgw0hWaCOKlakLE+UqjfZbB2K+STlsToPrNwETb7isJ1EA46/GlD7VfOsWnpcKhp/XDQ1zliIyS0xVXrK0rrvZYViWp+fhnuk287tvewL0M6q/W3810c4KYOAd7PdEDuL5kM6pg/z74BpuM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1740402621; c=relaxed/simple;
	bh=3GoOSlh4aghrEUhFA8T2QcZ172IFZvBUU3F8aELhD30=;
	h=Message-ID:Subject:From:To:Cc:Date:In-Reply-To:References:
	 Content-Type:MIME-Version; b=UDMqdtYLaAVvPM+jkOhF13sKlShyw9JJYRyDMYHNLxZZRuaoAZB+yMOqNp/Ax3lKs8Y+IruD1AhXJ4BWfBCwNhXIHP2znTh0vynLoGONAq4sWFs0xeSoBYbjTV9YfgrXZLSZx6dtEL/WLakZkHb2w9x3EH+nyzqZIVu1nL+oYHA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=CzZEedlq; arc=none smtp.client-ip=209.85.218.54
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-ej1-f54.google.com with SMTP id a640c23a62f3a-aaf900cc7fbso674099666b.3
        for <devicetree@vger.kernel.org>; Mon, 24 Feb 2025 05:10:19 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1740402618; x=1741007418; darn=vger.kernel.org;
        h=mime-version:user-agent:content-transfer-encoding:references
         :in-reply-to:date:cc:to:from:subject:message-id:from:to:cc:subject
         :date:message-id:reply-to;
        bh=6JKe2d60+WlSAD6t2/IsKdHC5kmJu+MWZz25xMIMoOk=;
        b=CzZEedlqQuM3n5rlKgabz3+9K9TGGEMBujRzF81hTbfKXI64gTUVv13wZDsV/+laPt
         sJFxZt1ntoA0mtfukC2+Rrp6QsTgXCpBRIB2zRJBUU4M0YS/CBCvbNHbsFEMy7engtlq
         OBe4gLxQ6491Lj73FMhDsOiQAANXKoy1a2U+0O8KePN13NavI8t7h7f946duOJSQ/xcO
         DyV8qe0Wfb76RuPNb+TTNChkbweDRUicUuXTKzxU/np6n7e1A/+6/zti0LUyn9GsKcXt
         VNjlAx/S6h+eMIJx2rBealgqJXBYaOPhjQUIGQunbqnV8DpmF0uJOL3KGxxrmkKUa+su
         VmbQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1740402618; x=1741007418;
        h=mime-version:user-agent:content-transfer-encoding:references
         :in-reply-to:date:cc:to:from:subject:message-id:x-gm-message-state
         :from:to:cc:subject:date:message-id:reply-to;
        bh=6JKe2d60+WlSAD6t2/IsKdHC5kmJu+MWZz25xMIMoOk=;
        b=EW3jf4W01ZqBCOpB4/gcUjM7sHbjgb3XJQFHKcCTNHzAjKYS1W36BEi8DtLKxvEX+O
         XXx/jyxKUCaNxkzejYaYodf3QyD14RKqXgcHihArUhKFNYS0BTKu2Zaf7W+PUoEuhLrj
         ZWseZDipEcw5uqyrrz1OYt/STHi8d1azQvICUe8+KY/svfftOrfHDtVd4ueAohwEA+kZ
         86BUcvt+Cq+nswt/pZPVuishXslZbMAQKT9LbfDL40/Vq33pAuCkqjc5/1qkg8hffDfF
         xZ7dj2lwmLw7awv6KLlkILNzKzCggj3btzE8jAbjrzJRnf6J2DZOWkAMr+L16xzpIXlf
         4luQ==
X-Forwarded-Encrypted: i=1; AJvYcCWR92KLVpowIHNfSWWL0XEAcPDiJ3Syybq4mDClRsU5wD1GXL7xkgImCqKR+o5f7L86AfzsCyGmzo9F@vger.kernel.org
X-Gm-Message-State: AOJu0YyNB3nt4fGai54dBtD2KyEFttfSNwkFt11gvZKjE9juaDQEcevG
	yOElF9OGJOdicPKpUgKwSYjUCXA4eIcSEbhyXdLvbxsVNIgWwz1uvdea/wDWPZBD9v4CgRfteJg
	qJgE=
X-Gm-Gg: ASbGncuqUvDqaAJ1Uopxz0Mf2cqnaYSkcAwcJ+jWoXJt0gT+PVIdpr9z4rW94AJXCks
	FBeQUkUUwNlDnLaXQp8RQmbzb73F1wqoEjAwka+qX8LNTG+XWuxfqaLMp2mYrp/rjlh7iy/4Coh
	SbNrOLWeTWHNFvsmq+Ek/UFN7fPRZd6MKOy7IjhvwAAxT06XgKhdbBG0GkZHtsJy8lmjUzS7j86
	qg2+z37wM2BBlCIvoMgqJSsnlYY2DM53vgxpjTbQG1wdgkF9xzPt6J3tHLprPntXOoYxbCCH4xl
	MhqNl2jnZo3YJmD5IZJAieWnrnXPZg==
X-Google-Smtp-Source: AGHT+IHIvx/Mzi0ATkCEL7v8mqxYPxS778o/u734+8lN1qwnKFPkNnFzPQqlUpq/kfgg00sUP03rEg==
X-Received: by 2002:a05:600c:358c:b0:439:84ba:5760 with SMTP id 5b1f17b1804b1-439aeae1c8bmr110053185e9.5.1740402145511;
        Mon, 24 Feb 2025 05:02:25 -0800 (PST)
Received: from draszik.lan ([80.111.64.44])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-439b02e6cf4sm104593555e9.19.2025.02.24.05.02.24
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 24 Feb 2025 05:02:25 -0800 (PST)
Message-ID: <923badeacb9e52b78d276382ae8c06a47c44fbae.camel@linaro.org>
Subject: Re: [PATCH 1/6] dt-bindings: mfd: add max77759 binding
From: =?ISO-8859-1?Q?Andr=E9?= Draszik <andre.draszik@linaro.org>
To: "Rob Herring (Arm)" <robh@kernel.org>
Cc: Lee Jones <lee@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
	devicetree@vger.kernel.org, Tudor Ambarus <tudor.ambarus@linaro.org>, Will
 McVicker <willmcvicker@google.com>, linux-gpio@vger.kernel.org,
 linux-hardening@vger.kernel.org,  "Gustavo A. R. Silva"	
 <gustavoars@kernel.org>, Kees Cook <kees@kernel.org>, Conor Dooley	
 <conor+dt@kernel.org>, Linus Walleij <linus.walleij@linaro.org>, 
	kernel-team@android.com, Peter Griffin <peter.griffin@linaro.org>, Srinivas
 Kandagatla <srinivas.kandagatla@linaro.org>, Bartosz Golaszewski
 <brgl@bgdev.pl>, 	linux-kernel@vger.kernel.org
Date: Mon, 24 Feb 2025 13:02:23 +0000
In-Reply-To: <174040128694.2418814.685647591949303616.robh@kernel.org>
References: <20250224-max77759-mfd-v1-0-2bff36f9d055@linaro.org>
	 <20250224-max77759-mfd-v1-1-2bff36f9d055@linaro.org>
	 <174040128694.2418814.685647591949303616.robh@kernel.org>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
User-Agent: Evolution 3.53.2-1 
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0

On Mon, 2025-02-24 at 06:48 -0600, Rob Herring (Arm) wrote:
>=20
> On Mon, 24 Feb 2025 10:28:49 +0000, Andr=C3=A9 Draszik wrote:
> > Add device tree binding for the Maxim MAX77759 companion PMIC for USB
> > Type-C applications.
> >=20
> > The MAX77759 includes Battery Charger, Fuel Gauge, temperature sensors,
> > USB Type-C Port Controller (TCPC), NVMEM, and a GPIO expander.
> >=20
> > This describes the core mfd device.
> >=20
> > Signed-off-by: Andr=C3=A9 Draszik <andre.draszik@linaro.org>
> > ---
> > =C2=A0.../devicetree/bindings/mfd/maxim,max77759.yaml=C2=A0=C2=A0=C2=A0=
 | 104 +++++++++++++++++++++
> > =C2=A0MAINTAINERS=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 |=C2=A0=C2=A0 6 ++
> > =C2=A02 files changed, 110 insertions(+)
> >=20
>=20
> My bot found errors running 'make dt_binding_check' on your patch:
>=20
> yamllint warnings/errors:
>=20
> dtschema/dtc warnings/errors:
> /builds/robherring/dt-review-ci/linux/Documentation/devicetree/bindings/m=
fd/maxim,max77759.example.dtb: pmic@66: gpio: False schema
> does not allow {'compatible': ['maxim,max77759-gpio'], 'gpio-controller':=
 True, '#gpio-cells': 2, 'interrupt-controller': True,
> '#interrupt-cells': 2}
> 	from schema $id: http://devicetree.org/schemas/mfd/maxim,max77759.yaml#
> /builds/robherring/dt-review-ci/linux/Documentation/devicetree/bindings/m=
fd/maxim,max77759.example.dtb: pmic@66: pmic-nvmem: False
> schema does not allow {'compatible': ['maxim,max77759-nvmem'], 'nvmem-lay=
out': {'compatible': ['fixed-layout'], '#address-cells': 1,
> '#size-cells': 1, 'reboot-mode@0': {'reg': [[0, 4]]}, 'boot-reason@4': {'=
reg': [[4, 4]]}, 'shutdown-user-flag@8': {'reg': [[8, 1]]},
> 'rsoc@10': {'reg': [[10, 2]]}}}
> 	from schema $id: http://devicetree.org/schemas/mfd/maxim,max77759.yaml#
> Documentation/devicetree/bindings/mfd/maxim,max77759.example.dtb: /exampl=
e-0/i2c/pmic@66/gpio: failed to match any schema with
> compatible: ['maxim,max77759-gpio']
> Documentation/devicetree/bindings/mfd/maxim,max77759.example.dtb: /exampl=
e-0/i2c/pmic@66/pmic-nvmem: failed to match any schema with
> compatible: ['maxim,max77759-nvmem']

The top-level example in here references the two (MFD cell)
bindings added in the two follow-up patches for gpio and
nvmem. When all three binding patches exist in the tree,
the errors are gone.

Is this acceptable, or shall I add the top-level example only
after the bindings?



Thanks,
Andre'


