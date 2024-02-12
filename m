Return-Path: <devicetree+bounces-40678-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id E66958512B0
	for <lists+devicetree@lfdr.de>; Mon, 12 Feb 2024 12:53:26 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id A27D8283D6A
	for <lists+devicetree@lfdr.de>; Mon, 12 Feb 2024 11:53:25 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 356B439AC3;
	Mon, 12 Feb 2024 11:53:03 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="SgEROgKo"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f50.google.com (mail-wm1-f50.google.com [209.85.128.50])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6B6153A1D4
	for <devicetree@vger.kernel.org>; Mon, 12 Feb 2024 11:53:01 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.50
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1707738783; cv=none; b=L+SFWGn8un1lYwiF8H30ZtoSJMRQfD7PlXhF1xFvlrLBh66aZ/BgB+Z31HG3lMHzzz8NNxBgR2pW0PRl9I1zBMckBzdEJZZIiPH+gkPRi8DaywwiTLjtlMAcye7pDopVnBQp1ljAXlwpNbgeQe9yNfbhjtbqAAZ07RogauHBOt0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1707738783; c=relaxed/simple;
	bh=tgUf5cDe1cofW3YFvCaUyA8/If+CvXqWCB5051w11lI=;
	h=Message-ID:Subject:From:To:Cc:Date:In-Reply-To:References:
	 Content-Type:MIME-Version; b=QJnoR4pDidmQ2/mDEUerjT4+MlKbzzy4otZLUdsyR3kVutkKqEqIFOErLTshHcGfYvv+nTXlrZ7b89MXMMs9xB0DJx8V/8pq5MyhEQaDYuqrR/ESI0mE8GHPb4fP3m3jdTN2IhKWC3pFBsiXmgZT1gm95db8IP5bUOsjfiYtTsU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=SgEROgKo; arc=none smtp.client-ip=209.85.128.50
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wm1-f50.google.com with SMTP id 5b1f17b1804b1-4114e0a2978so1769295e9.3
        for <devicetree@vger.kernel.org>; Mon, 12 Feb 2024 03:53:01 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1707738779; x=1708343579; darn=vger.kernel.org;
        h=mime-version:user-agent:content-transfer-encoding:references
         :in-reply-to:date:cc:to:from:subject:message-id:from:to:cc:subject
         :date:message-id:reply-to;
        bh=tgUf5cDe1cofW3YFvCaUyA8/If+CvXqWCB5051w11lI=;
        b=SgEROgKoO3Ev4uEh4durKAdmTUH3DXLpzpQ4RyE3OC1TqPryQ3Cp2XJNZmlI/QXwgz
         lTtAKVqs5KRcvy88GroeQrwIPt7TL+kiCKUj4h5OVHW9UVc4MarcYXDnCnaT/nBqbRt1
         k/oGGBPtXWbVEsY5g1q4y4EUvweajUuiwZwYB6qWYRyjhUytzg8MYexvDr+SbwGIwY6w
         dV1gPhV9gJqCgLcx8EOmDZTxedNty485ob8NlUlgl91JWDymIDkC0iCz+8t+2iyngBaK
         QwSy8/CDvcxTR+NXkGaZFlQcbrYUMljL93rxpVWuo01OkRrs/cN7sROItQcMdAtAoakT
         2jtA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1707738779; x=1708343579;
        h=mime-version:user-agent:content-transfer-encoding:references
         :in-reply-to:date:cc:to:from:subject:message-id:x-gm-message-state
         :from:to:cc:subject:date:message-id:reply-to;
        bh=tgUf5cDe1cofW3YFvCaUyA8/If+CvXqWCB5051w11lI=;
        b=Zv8kLiplUR2IJEm2Q7XiQh8vIqTWYZEoQI+2vaG2aufNKfzFdKtYm59dneAusoMSFi
         DzLAe54HPowAXfLC5hz/9YfsPj4aL/lWJ3iq1xW06vDUEiFsTkFjlMTcGkFxUwwHaB5y
         w8u5xABcSxbfIGaSTIdTcct4PBAt9OlWVhRDW89tbWk0y/FXIv8Z3BLWDqR5dhcFKb7D
         9kOOBNCVs09EKRfuyyTS2EdQ/0RdLrrjA0aDTx0lUX4R0+5kisvabvXeDJAmJRrSepBc
         kiPldcDEyMKEQ7ut/BtdpQzPa8WKeqRNantYkBGOnryHhb9ET/zRwcNmh0lEqlmQHyH4
         bDhw==
X-Gm-Message-State: AOJu0YyAFFArmeP3oIlYDRHnHAV/MFlNIeUxMa250ho2TJFK61fzH2Eg
	llAOnK9TLB1p1RpKjHmTBhO/9V4fJkGJRr3If+Xqum2Zas9uS4bfh+khPIb5eiw=
X-Google-Smtp-Source: AGHT+IHGfFETrL+9eMxIcQwLoov5Z9W8uA0l3Njtm5thKhrjvaxgrYH0De47HjFqToa/3yr0zt0+MQ==
X-Received: by 2002:a5d:61c6:0:b0:33a:ed5b:3a30 with SMTP id q6-20020a5d61c6000000b0033aed5b3a30mr4324980wrv.68.1707738779650;
        Mon, 12 Feb 2024 03:52:59 -0800 (PST)
X-Forwarded-Encrypted: i=1; AJvYcCUcruLJqNG90kGvtTv/QfdF8SsnaUAT7kIHoVhJBBdzt4dZQFXOJU9x3KjlMbxe8BnuCWqoKTZTAPnngAj1Rl9WRIFlTo/LDj26oowkY+456oPfSAk/j58Y1QIMUhT7qDKfjQRle52WIsG6vnfOQFgFOioZtJ/OBt3OW6Xtp3FX+V5feTTyUSN367ZRNQIHtLWIerGA98zF9zB7J5vT3P9XDOa/7cZlbQossO7NrxP75+ET7EgCVS+qINYyVQfyQ0C/VhE2GepwyUQWP6AyGy2XCfVfOpOlWQh0648DRPK9glYDOrCGEyS87ERuCSJ6b4qp8476lCYslLlPivZgnJK/8ppoXOzxnYiBOpOuhXlqID7b1qfnLx7J/JwyE4Dl0kt3W68iieUQdbUEuONkqtpS6lh5gJNxKqZHMlO2ZtAPNss9qSk/svQK8yafCXoC5tiuwmW4b7tO
Received: from draszik.lan ([80.111.64.44])
        by smtp.gmail.com with ESMTPSA id dv5-20020a0560000d8500b0033b483d1abcsm6576312wrb.53.2024.02.12.03.52.58
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 12 Feb 2024 03:52:59 -0800 (PST)
Message-ID: <0ad3082c50e21a74de41ca9908bd53b72e1f1a9c.camel@linaro.org>
Subject: Re: [PATCH] arm64: dts: exynos: gs101: add stable i2c aliases for
 gs101-oriole
From: =?ISO-8859-1?Q?Andr=E9?= Draszik <andre.draszik@linaro.org>
To: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>, 
 peter.griffin@linaro.org, robh+dt@kernel.org,
 krzysztof.kozlowski+dt@linaro.org,  conor+dt@kernel.org
Cc: linux-kernel@vger.kernel.org, kernel-team@android.com, 
 tudor.ambarus@linaro.org, willmcvicker@google.com,
 semen.protsenko@linaro.org,  alim.akhtar@samsung.com,
 linux-arm-kernel@lists.infradead.org,  linux-samsung-soc@vger.kernel.org,
 devicetree@vger.kernel.org
Date: Mon, 12 Feb 2024 11:52:58 +0000
In-Reply-To: <67a6564a-00bb-461d-b7eb-ca169df6d251@linaro.org>
References: <20240130233700.2287442-1-andre.draszik@linaro.org>
	 <170737972037.52344.9107022607101399076.b4-ty@linaro.org>
	 <5972b6a4ae8669e2a9e872278b740b182217906b.camel@linaro.org>
	 <dce39e15-32a8-482c-8751-af4a133f82d2@linaro.org>
	 <c16c1f18a8c6f33a608618d4ccf7d8c8dbb6f88b.camel@linaro.org>
	 <67a6564a-00bb-461d-b7eb-ca169df6d251@linaro.org>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
User-Agent: Evolution 3.50.1-1 
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0

On Mon, 2024-02-12 at 12:40 +0100, Krzysztof Kozlowski wrote:
> On 12/02/2024 12:30, Andr=C3=A9 Draszik wrote:
> > On Mon, 2024-02-12 at 12:18 +0100, Krzysztof Kozlowski wrote:
> > > I can drop it, but the actual problem is that what if downstream keep=
s
> > > changing aliases? They can do it...
> >=20
> > We won't care at that stage, downstream should have no reason to divert=
 from
> > upstream for numbering at some point in the future.
>=20
> What do you mean by "no reason"? The reason is they can do whatever they
> want. Some project leader says: "I want this" and they will do it. They
> won't care about our upstream choice at all.
>=20
> And then what, you change it again?

As I said above, we won't care if downstream changes again at that stage, s=
o
no, I wouldn't plan on changing again.


Cheers,
Andre'


