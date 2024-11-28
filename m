Return-Path: <devicetree+bounces-125211-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id A16CA9DB3BE
	for <lists+devicetree@lfdr.de>; Thu, 28 Nov 2024 09:28:48 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 5ACC51625E1
	for <lists+devicetree@lfdr.de>; Thu, 28 Nov 2024 08:28:45 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 5402B14D2AC;
	Thu, 28 Nov 2024 08:28:41 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="u0Hlmanu"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f49.google.com (mail-wr1-f49.google.com [209.85.221.49])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6844A14A629
	for <devicetree@vger.kernel.org>; Thu, 28 Nov 2024 08:28:39 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.49
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1732782521; cv=none; b=OpXjmYB1abHVdkkPAhfxZV5ofFbfAtcT01K/OhsT8OypL4Z6lOtA5os2+zkCXBi0IqgZ/Pa1KYo83I1n7yZhGUhYmsUm+pThZOvBNQ5sk/yeishvCjiDvG8fCoAraWWgtLX47Rk8/hN+Sd+aVvsbBWLOtxU12NDGytCP5Qu060E=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1732782521; c=relaxed/simple;
	bh=iBgmMatgfTncbI6Xxv9fv7699qHKcsEyga04yyzHrVw=;
	h=Message-ID:Subject:From:To:Cc:Date:In-Reply-To:References:
	 Content-Type:MIME-Version; b=ASRY+F2/w4H4Pf3qlSRibYT+VJ1wG83m2w8DK01yaAQfE61XctTvBXPbCvhtjKnEQZAEN/Cd0EGfuqja0jY7wyXLP0uu3Ayahvdg0psUCpKBW7dE+8c6TRZco41f0xTkDckVAIZTJN0F9Njy2A2/duX+Xd3Jnx1CESrM8yiIVnE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=u0Hlmanu; arc=none smtp.client-ip=209.85.221.49
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wr1-f49.google.com with SMTP id ffacd0b85a97d-38245e072e8so476447f8f.0
        for <devicetree@vger.kernel.org>; Thu, 28 Nov 2024 00:28:39 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1732782518; x=1733387318; darn=vger.kernel.org;
        h=mime-version:user-agent:content-transfer-encoding:references
         :in-reply-to:date:cc:to:from:subject:message-id:from:to:cc:subject
         :date:message-id:reply-to;
        bh=8ce1Yw0qnP/hYgtuVuhHQzLquqkZiusD0COEs+h5WKU=;
        b=u0HlmanuNzHOesnJQlDV/gVXgrXAn5OQZ7OcYvIFLKkmRVEd2tmn/zBUruPeKBPkNz
         iJn4FWWx+N9uxFICCdS9azuW5uF8WBv6Kit9dclVvt0IoduESaPh7OJ16LPhvK8UeM8z
         9Mq86MX+emhI4d+HbcoT/MpNw2Q/U+hTJ75SGZf3RB58aGWetDvrAS5wGhu9iF4Rfu4Y
         Jm0Z7sApaUoJjdwhE4LUr2l8y6+fhdHwpldMgEhUqYQfrTpi8QNAwRHSCsDcZD2TeWCL
         MKZhmnov7M1xFh1G0x2dOofK1Kbtd68SUXTPZJy2OAslDFs7xNFP14503MfwsR4jWf7G
         Ch6A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1732782518; x=1733387318;
        h=mime-version:user-agent:content-transfer-encoding:references
         :in-reply-to:date:cc:to:from:subject:message-id:x-gm-message-state
         :from:to:cc:subject:date:message-id:reply-to;
        bh=8ce1Yw0qnP/hYgtuVuhHQzLquqkZiusD0COEs+h5WKU=;
        b=BXwTSFlTM1iIApnHV5ltGzWE+ZWGCG9AiD0hIL3Vjdzz8lb20Uxzql/AVEggDxUFN2
         mYpag0ryUha6L5+v14cba2ahKoGa/FtGgHVbwTSVTw7DAScRTGB8USrzPE5zsaHH6QSC
         fzc5CNQnHN0QWGwJZOu6wCyrtbP7MZNOkeiVk47e59Utxb9Ehpw8CfcknsieEo06Y/gm
         PGukTS5/zMMg3BH0ydkVy6cHZy+vsc926PZ479F2FLrOKj+EfXvyim4wuTSUy29bPcqk
         F3TCA84xPkxOskuSL9qt9cBfvyNjYoUmG1KskZp4BMkAUnlPMR/jmNlkOVm+8Pdg1fWH
         VI8A==
X-Forwarded-Encrypted: i=1; AJvYcCUIwFkQIgHP0TDh6e2N5zo9Y/XBaPX9jYfCWOoBbt8oNYGdTE80CjAaDCWeIbA+HYcpU4b5PT1FgYkB@vger.kernel.org
X-Gm-Message-State: AOJu0YwC4Yr0M7T6fUGYrJUQai0/SmhT0F4XpTYoz57UBRZ+1oIzqra6
	pjSqBjVM2tvqLMNPIQd5I76txLtvdnVx0cPeYM2YEEzDoep7PTVF/atIE0ud6Tc=
X-Gm-Gg: ASbGncssOBshqYyefXLiljt1/nZ6hY+JOd42le1JfstyGaa3iLg700Yu5R8SK7xds5L
	pzazC8bwBbopBTec4Btk9YUzANSihT9gzstBqlSxtZowxC8hloVVMuVvXDGcElKyLB/2UuACrWJ
	pH8CFGM/VxlqUdK4FuhTBrKkk4z92QJnhDSoS/gpsitjzQL9yZ9sWubhCKam36WOmj9v6+l4n5R
	ud11fZxX5OTfqH+PyDHD4vSBVZhuqh6y9gG/wDsxUZ7ChKi3CWnn9U=
X-Google-Smtp-Source: AGHT+IGTu0qgLLjoHLlWHxSoBIFSoj8XfsMG9AhcjE3+CF/PWBajZkgTxHHhlbUBKXo2AHNhIEwVew==
X-Received: by 2002:a5d:6dad:0:b0:382:3959:f429 with SMTP id ffacd0b85a97d-385c6ccaeafmr6070314f8f.5.1732782517632;
        Thu, 28 Nov 2024 00:28:37 -0800 (PST)
Received: from [10.1.1.109] ([80.111.64.44])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-385ccd3a54asm996072f8f.50.2024.11.28.00.28.36
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 28 Nov 2024 00:28:37 -0800 (PST)
Message-ID: <663f534cd88332ecf64e575ea0cfa1f40e303373.camel@linaro.org>
Subject: Re: [PATCH 5/6] arm64: dts: exynos: gs101-oriole: enable Maxim
 max77759 TCPCi
From: =?ISO-8859-1?Q?Andr=E9?= Draszik <andre.draszik@linaro.org>
To: Krzysztof Kozlowski <krzk@kernel.org>, Catalin Marinas
 <catalin.marinas@arm.com>, Will Deacon <will@kernel.org>, Greg
 Kroah-Hartman <gregkh@linuxfoundation.org>, Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley
 <conor+dt@kernel.org>, Jagan Sridharan <badhri@google.com>,  Alim Akhtar
 <alim.akhtar@samsung.com>
Cc: Peter Griffin <peter.griffin@linaro.org>, Tudor Ambarus
 <tudor.ambarus@linaro.org>, Sam Protsenko <semen.protsenko@linaro.org>,
 Will McVicker <willmcvicker@google.com>, Roy Luo <royluo@google.com>,
 kernel-team@android.com,  linux-arm-kernel@lists.infradead.org,
 linux-kernel@vger.kernel.org,  linux-usb@vger.kernel.org,
 devicetree@vger.kernel.org,  linux-samsung-soc@vger.kernel.org
Date: Thu, 28 Nov 2024 08:28:35 +0000
In-Reply-To: <b0c5e443-79e2-4e53-8813-57044a627dea@kernel.org>
References: 
	<20241127-gs101-phy-lanes-orientation-dts-v1-0-5222d8508b71@linaro.org>
	 <20241127-gs101-phy-lanes-orientation-dts-v1-5-5222d8508b71@linaro.org>
	 <b0c5e443-79e2-4e53-8813-57044a627dea@kernel.org>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
User-Agent: Evolution 3.52.1-4 
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0

Hi Krzysztof,

On Thu, 2024-11-28 at 09:19 +0100, Krzysztof Kozlowski wrote:
> On 27/11/2024 12:01, Andr=C3=A9 Draszik wrote:
> > ---
> > =C2=A0arch/arm64/boot/dts/exynos/google/gs101-oriole.dts | 99
> > ++++++++++++++++++++++
> > =C2=A01 file changed, 99 insertions(+)
> >=20
> > diff --git a/arch/arm64/boot/dts/exynos/google/gs101-oriole.dts
> > b/arch/arm64/boot/dts/exynos/google/gs101-oriole.dts
> > index 387fb779bd29..5f7be0cb7418 100644
> > --- a/arch/arm64/boot/dts/exynos/google/gs101-oriole.dts
> > +++ b/arch/arm64/boot/dts/exynos/google/gs101-oriole.dts
> > @@ -10,6 +10,7 @@
> > =C2=A0
> > =C2=A0#include <dt-bindings/gpio/gpio.h>
> > =C2=A0#include <dt-bindings/input/input.h>
> > +#include <dt-bindings/usb/pd.h>
> > =C2=A0#include "gs101-pinctrl.h"
> > =C2=A0#include "gs101.dtsi"
> > =C2=A0
> > @@ -90,6 +91,84 @@ eeprom: eeprom@50 {
> > =C2=A0&hsi2c_12 {
> > =C2=A0	status =3D "okay";
> > =C2=A0	/* TODO: add the devices once drivers exist */
>=20
>=20
> Is the TODO still valid?

Yes, there are more devices on that bus.

Cheers,
Andre'


