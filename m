Return-Path: <devicetree+bounces-219263-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id AB5F3B89A2B
	for <lists+devicetree@lfdr.de>; Fri, 19 Sep 2025 15:17:35 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 8E0DA188FBB0
	for <lists+devicetree@lfdr.de>; Fri, 19 Sep 2025 13:17:57 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 34E76221271;
	Fri, 19 Sep 2025 13:17:31 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="Eyed/DFU"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f52.google.com (mail-wm1-f52.google.com [209.85.128.52])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 62473249EB
	for <devicetree@vger.kernel.org>; Fri, 19 Sep 2025 13:17:29 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.52
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758287851; cv=none; b=Vui/JsRFz9sagVmGxsUzvuWxV3g2pOMTgkE2Lc+e0wmGN+YjnCggfUmUgRVvkRjOPTSo1bSWGtB++rg7XQCmOjcX+IENCu8LmslnQmwPvNco/Is2ScgdoJ+Hs82yIa3S/1l/uUc098Avr2+/FSk3U94xAfQYHJEgVivUMZvq2ZU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758287851; c=relaxed/simple;
	bh=eSREDETOuCirK9j7pp0KaT4IL5H8FAZmt4obtpK9FwU=;
	h=Message-ID:Subject:From:To:Cc:Date:In-Reply-To:References:
	 Content-Type:MIME-Version; b=samypQ1vtb9W2BpMabTBGHMZJcPCgVbu3cawblbT8/j3XjosKtzvQaOyNZKR0mRxTKTEaKq/gRUqfGJEbA46WeC0GCNfMyxo8uM3mtiRdBT+XEHCUhzMpzlvRe3O/a1Kq6dR8cbqlvM/7s6JHZVoaaRbRAFQr/flSGvU1Ao01Xs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=Eyed/DFU; arc=none smtp.client-ip=209.85.128.52
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wm1-f52.google.com with SMTP id 5b1f17b1804b1-45de56a042dso14122525e9.3
        for <devicetree@vger.kernel.org>; Fri, 19 Sep 2025 06:17:29 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1758287848; x=1758892648; darn=vger.kernel.org;
        h=mime-version:user-agent:content-transfer-encoding:references
         :in-reply-to:date:cc:to:from:subject:message-id:from:to:cc:subject
         :date:message-id:reply-to;
        bh=eSREDETOuCirK9j7pp0KaT4IL5H8FAZmt4obtpK9FwU=;
        b=Eyed/DFUcHC/eY9Dwk4WEIuNjwmF9UxRzgbac3/eRs7vXT7HafKOX9/WmJtUm81cNU
         16D8oo56DzfuODKP4SnAWxfuawbSO6wrbOP/S29XpuW7QlTl5CLAe2AcDhxsAcvWLtWp
         sO2wgGz60g91ftbQY/TyVOzIcsOwE/ANEEFKYDxJ+UtuCryb2KAqjWcsjMgUOZiVOlkM
         oZxAtnmMUnqtcRirGwMxeTIkBuZ0oCn8ET/gfBcTDzzQfCmKEcwjssSWaVjMy0pPEg53
         iAzCLx/TxSbsgn7IbZrKaCf35X0ILKQBPyonYzO694lTAFZHLrnCthURULfH8ECwFrli
         OEKA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1758287848; x=1758892648;
        h=mime-version:user-agent:content-transfer-encoding:references
         :in-reply-to:date:cc:to:from:subject:message-id:x-gm-message-state
         :from:to:cc:subject:date:message-id:reply-to;
        bh=eSREDETOuCirK9j7pp0KaT4IL5H8FAZmt4obtpK9FwU=;
        b=dFugQLDBboy1y4NSARzkK0KWe7A4bx3vjkLXIaNxRQTA2HoWhy99z0iR8laVrLaIkV
         d1WRGce9LHNn2chxUgzhVIp+EQL+DzHCHVrh1klvsgJNfQVO9pFXhgr4mPHQagvGqHbH
         56xSMFELtVEkLVk69kzgO5DWY9/aMKRj42aBjQDFiOfWO+vcFNfELjI1pOQqKR0nQSLU
         Kaygcm6r1q8H16qGVmyXpQZwr6F5LxICi0WW3oc8R3V2ZyC+uemFgDQzDFqB9BQYkNxm
         q1knVaRlqR4lecGJEomJMCxLIs41UasCXR4dHyTAkVpg3lRE1SHz5c31wKz5emRSyzk+
         FfJg==
X-Forwarded-Encrypted: i=1; AJvYcCWGBMMSsQm/U/q6vhoHM/dpLZ/KO+xa0oH1jGT0Wd8c0m+Z6aektzvMLihQ2zh9N8G6plvo8NoK2/SQ@vger.kernel.org
X-Gm-Message-State: AOJu0YwEGihlmh9DEJBTPDQf1h6mdVqXBMkIC+o9WNFTomcycBiIrX3V
	ZrDjfPyWxQ+WmSdIM3suLvbkdhx2FkTWZIQyoHRnCkeUdhMa21aIZJ2C6oBT/0wDt80=
X-Gm-Gg: ASbGnctgz9bMxcsZLnahtN6ZBkeovzTYyOFdhHlF3nstPVzwHoHX5zvc2Hzhkyl2EC+
	r7MMRWvgZDzz279pqLK8XQ/9cRYc1BruLaC1Ht5BRKLkGfgPMslYpC41qKH2Toz7NwsCf2ILw40
	KI+e4uLwFn9AA+li4vfujtCxHPiV8y82ivEaWdkIkOyR3NwIgRiI2xlCmWerinoB+Rq8iIXQWE7
	KuNNxLTyn7/L4et/FK4v+l3kOAOEFbvgaDmjZ117LIQ/1cz7aJoxbhy+uwt0fiHwGs94aFe9rTP
	gD56Wm5b16gqCG+/O4573n9HjCdYQaYBCdnwdFJDm3f4h5SY11gAc5S2EFPueSW9YaPVx20575X
	S+bgw+LlWg+BQufEhRC2Bezac75JWKCO1xkDd
X-Google-Smtp-Source: AGHT+IFOEEL5rr0JEeFyk2H6x0E84IJDnhVN8O14E2Hi/9ffavovVbWpQzybBfB+MObNjmkLFHYNTA==
X-Received: by 2002:a05:600c:6305:b0:45b:868e:7f7f with SMTP id 5b1f17b1804b1-467ee8c56d6mr37027415e9.17.1758287847647;
        Fri, 19 Sep 2025 06:17:27 -0700 (PDT)
Received: from [10.1.1.59] ([80.111.64.44])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-464f6695a9dsm88797825e9.24.2025.09.19.06.17.26
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 19 Sep 2025 06:17:27 -0700 (PDT)
Message-ID: <dfde0a91359b87d4eff88815b4112ad17cca9935.camel@linaro.org>
Subject: Re: [PATCH v6 2/2] dt-bindings: power: supply: add support for
 MAX77759 fuel gauge
From: =?ISO-8859-1?Q?Andr=E9?= Draszik <andre.draszik@linaro.org>
To: Sebastian Reichel <sebastian.reichel@collabora.com>
Cc: Thomas Antoine <t.antoine@uclouvain.be>, Conor Dooley
 <conor@kernel.org>,  Rob Herring <robh@kernel.org>, Krzysztof Kozlowski
 <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>,  Peter Griffin
 <peter.griffin@linaro.org>, linux-kernel@vger.kernel.org,
 linux-pm@vger.kernel.org, 	devicetree@vger.kernel.org
Date: Fri, 19 Sep 2025 14:17:26 +0100
In-Reply-To: <65xrumpt7ug5mqd7mkcknwyqmljrn4sofrqymg46bwvcmjoarr@wmt5fhsj3viz>
References: <20250915-b4-gs101_max77759_fg-v6-0-31d08581500f@uclouvain.be>
	 <20250915-b4-gs101_max77759_fg-v6-2-31d08581500f@uclouvain.be>
	 <20250915-presoak-answering-2df6fca532ad@spud>
	 <c5f2e6e8-2ada-476a-8557-85273b9a93b7@uclouvain.be>
	 <a55d7e6e6d9515293ca735f25ffd5c925a6ec617.camel@linaro.org>
	 <65xrumpt7ug5mqd7mkcknwyqmljrn4sofrqymg46bwvcmjoarr@wmt5fhsj3viz>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
User-Agent: Evolution 3.56.2-2 
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0

Hi,

On Fri, 2025-09-19 at 00:32 +0200, Sebastian Reichel wrote:
> Hi,
>=20
> On Thu, Sep 18, 2025 at 02:02:55PM +0100, Andr=C3=A9 Draszik wrote:
> >=20
> > Additionally, the FG block can also measure temperature and battery ID.=
 For
> > those, a combination of (top-level) PMIC and FG registers are needed
> > unfortunately. Which means that the FG should probably be an MFD child
> > device, even though the FG itself doesn't depend on the top-level. Othe=
rwise
> > it'd be hard to access the top-level PMIC register.
>=20
> My understanding is, that the FG has a dedicated I2C device address

Yes, that is correct. It also has its own dedicated interrupt output.

> and thus cannot be a simple MFD child of the PMIC.

The core can still create child devices if a child uses a different
i2c address, as already done by the max77759 core driver for the charger
(which e.g. doesn't have its own interrupt). Some MFD other core drivers
also use such an approach.


[...]

> Assuming I understood things correctly, I think I suggest to model
> things like this for the battery temperature/ID:

Nice, yes, that should work - didn't think of that...

Cheers,
Andre'

