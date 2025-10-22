Return-Path: <devicetree+bounces-229740-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ams.mirrors.kernel.org (ams.mirrors.kernel.org [213.196.21.55])
	by mail.lfdr.de (Postfix) with ESMTPS id 863D2BFB495
	for <lists+devicetree@lfdr.de>; Wed, 22 Oct 2025 12:04:06 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ams.mirrors.kernel.org (Postfix) with ESMTPS id 32E56356922
	for <lists+devicetree@lfdr.de>; Wed, 22 Oct 2025 10:04:06 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E55F231DD98;
	Wed, 22 Oct 2025 10:03:43 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="kfiHY1Pj"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ed1-f53.google.com (mail-ed1-f53.google.com [209.85.208.53])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EE93831B82F
	for <devicetree@vger.kernel.org>; Wed, 22 Oct 2025 10:03:41 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.53
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761127423; cv=none; b=RYzDN2pV8Gkqa1A0TkLkiA/4ZD8aVzpvWyDhx0A/3l+FAxfw40BI20sIscoVFG1bp6/yYtGVC22sjZT+5YDiG2TJXh62py4K29DMhmWlG2SzAzRLcLRkPoeneS4Ey3LluMkWKLLbh/iZ1rHtL3lsSb39kKtMyKoHLW2B3hPG5Iw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761127423; c=relaxed/simple;
	bh=Qbbi4MZBKkecaJJl494H7QcMGXGjmq/zovJ9I9dUy7s=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=hjH/O5V1SzFqTuSTo9vpg5dK8aQt2JhzExrbUz6BTpSA5ynNCPIxfTiHOQA5ck4n5muO+8kN0lEw22N0pgNIOmvX19BJYP3Eum5e/hrY/K6MGoHsOUYI/Q5baxPd3H05i1BlPCiQVqc4Eb11M6M9Z4fkTFa2Yn0mV8ZYJzN2xGI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=kfiHY1Pj; arc=none smtp.client-ip=209.85.208.53
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-ed1-f53.google.com with SMTP id 4fb4d7f45d1cf-63d6ee383bdso4243269a12.2
        for <devicetree@vger.kernel.org>; Wed, 22 Oct 2025 03:03:41 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1761127420; x=1761732220; darn=vger.kernel.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=j80svTpQNDT2HO9SwazgBXuB8uzAZlJDHoPKa+K5IjE=;
        b=kfiHY1PjMsOHPsR9jJ4muQi0D4utfRZmNvVBKUphDChSMB4OMatKjPgL5IYiowKZdB
         CeKI/koN/f70ZsSePFBdOpXpLA2IF11aF9wlwZSOVB5zX52YoGyWv9zVbJHrCvoOsKA+
         Npw0aT8CMUyVDUPT2mAPbaakxM/fNGLgUxUDCMJK1Go83CBQmqBLWd4tO0lcoF9P9XyD
         ELvNRnNhg1P2MnqDEBtdRFaydl3AoXxkjPtN4HGgMQExa85rHUR2EIo4GERo1UuOUlAl
         lY7EJt6NSsN6Zq0eiGn8gF2bYkUBer7gysstSe4ZaD9YXtb5Yk9/+iGkV7FaforxveBf
         MP9g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1761127420; x=1761732220;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=j80svTpQNDT2HO9SwazgBXuB8uzAZlJDHoPKa+K5IjE=;
        b=MN1J6ZXlrbnBol0wt0BQX31YUNg1jaMqCYhBfkdi+0S68MRqgVqZZbd6NOq0S0BCBu
         KxfwyNsLZMkNcHfYbvzEnpI0bscud+WTzMHVgzEYLBTRBbmu0vw29CPOejlUOvlgxXRS
         KG2gmwY1X7ZsNxMoRL/qhW7aYlghC6kVWzogOoaWLsVXrL04Ei0fwbWicz/BRVuKoSa/
         MybFTOaFZ1lc0fiHeGFPU2V1KTriQvzBnwClXXBV0s5Nzte0WnMIy0XTjf2lL5ZKVPzd
         iV9kZqt+HiOh9VlGcnGKxVKu7f9cDxFJaZcvepcPHMmzUAuFlXxwtmbvM30TE14bJd2k
         5eIA==
X-Forwarded-Encrypted: i=1; AJvYcCXOizg8TJhiQElFqW4cUWr4IrXRghIF7zEJXUYfxm1kUYfIxfJvR2zbhM7zYLuyI1Yc2X+8rZ9ckVAO@vger.kernel.org
X-Gm-Message-State: AOJu0YzCRLUfj8Mns14psQoJQ+6ZSQP9mxaHFBrtmxhShxRsUUHIjAmf
	FOEv1AYLdgVYSIPe2SNQlQ9Zh3AC7Zr88U1v5ioRkjHwF7GHp1v7Pon72N9ikGeaZUzI/W1chMH
	eD0JvMPlmengKr0ciMcoT+NrhV4keFe0d0HWtNGnuoQ==
X-Gm-Gg: ASbGncujeIog4PTcMIJgK4/NED/44SOj895weUV1GkMKBrnWMVVBZCHp6IbrGyhISd6
	pPWnEZJz+qyIUj3w8HOO7Qu/nHFDiCRrUgpKUJdCILSFztNlNEpj33M2eCmsWEc8AhyLAt8MauL
	lV83q77n5Tqaby8isaJF6j26sbmU0oQltAebZE6YGZKna4IRPepz+p9pB7Wsc920D+LNAPqooZg
	RgYseQG5ICrdh6C3ITliL2w6BR+YZZT3+fPS1m341OiooL/+2dDPd7shduEfUkdFOz1VrYl9LRo
	FAyotUA=
X-Google-Smtp-Source: AGHT+IFRHS9fCtNlfozcKqfiZ/HU21GMsDA3YriXsWw67Ybr2fSHm2R56fU3GCdtVA2wLt6A2hgJEfeDgzt+vSey8O0=
X-Received: by 2002:a05:6402:40ca:b0:63e:17ef:a62d with SMTP id
 4fb4d7f45d1cf-63e17efa78dmr3015030a12.15.1761127420175; Wed, 22 Oct 2025
 03:03:40 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20251016-gs101-pd-v3-0-7b30797396e7@linaro.org>
 <20251016-gs101-pd-v3-3-7b30797396e7@linaro.org> <CAPDyKFqNEN_yfmGWZr=sC-W8-Drv7zn82WYa-y=v+Suk-JHvtQ@mail.gmail.com>
 <838a2a9f-9d4f-4c04-bab3-c6a7d52b60b3@kernel.org>
In-Reply-To: <838a2a9f-9d4f-4c04-bab3-c6a7d52b60b3@kernel.org>
From: Ulf Hansson <ulf.hansson@linaro.org>
Date: Wed, 22 Oct 2025 12:03:02 +0200
X-Gm-Features: AS18NWDgqWuAfrcT_6PqRDb-GaFHTXtI7dspjwKLQKVO9xQrFqh11FPqeF5ceCc
Message-ID: <CAPDyKFr4G5m_tnC20w-K7Nh2m-ut77rbeHvWgDTgHLA0hkALNQ@mail.gmail.com>
Subject: Re: [PATCH v3 03/10] dt-bindings: soc: samsung: gs101-pmu: allow
 power domains as children
To: Krzysztof Kozlowski <krzk@kernel.org>
Cc: =?UTF-8?Q?Andr=C3=A9_Draszik?= <andre.draszik@linaro.org>, 
	Alim Akhtar <alim.akhtar@samsung.com>, Rob Herring <robh@kernel.org>, 
	Conor Dooley <conor+dt@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
	Marek Szyprowski <m.szyprowski@samsung.com>, Peter Griffin <peter.griffin@linaro.org>, 
	Tudor Ambarus <tudor.ambarus@linaro.org>, Will McVicker <willmcvicker@google.com>, 
	kernel-team@android.com, linux-arm-kernel@lists.infradead.org, 
	linux-samsung-soc@vger.kernel.org, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org, linux-pm@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"

On Tue, 21 Oct 2025 at 18:18, Krzysztof Kozlowski <krzk@kernel.org> wrote:
>
> On 21/10/2025 14:59, Ulf Hansson wrote:
> >> +  "^power-domain@[0-9a-f]+$":
> >> +    type: object
> >> +    description: Child node describing one power domain within the PMU
> >> +
> >
> > I think we should specify the power-domain-cells too, along the lines
> > of the below.
> >
> > '#power-domain-cells'
> >  const: 0
>
> That's not needed. The child (this child device node) schema will
> enforce it. Parent (so the PMU) is supposed only to list compatible.

Ah, I see. Thanks for clarifying!

Kind regards
Uffe

