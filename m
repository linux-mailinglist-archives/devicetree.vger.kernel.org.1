Return-Path: <devicetree+bounces-125182-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 133739DB2C2
	for <lists+devicetree@lfdr.de>; Thu, 28 Nov 2024 07:25:42 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id B6384167105
	for <lists+devicetree@lfdr.de>; Thu, 28 Nov 2024 06:25:38 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D301B145348;
	Thu, 28 Nov 2024 06:25:38 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="j5M0wFn8"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f52.google.com (mail-wm1-f52.google.com [209.85.128.52])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0C2D484E1C
	for <devicetree@vger.kernel.org>; Thu, 28 Nov 2024 06:25:36 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.52
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1732775138; cv=none; b=NjGZwQu/ej5VhFTNwPXu1ZMAHwxvLYwf4DycaA+yIDAFObMd5Z0vSXkeMNXwUB3kYmncvud+d62ZW/Uyy1fLxRRWa9KkVhkg6Jf1t/cWCEq6esogSSLd5knMP6NsMSZ2UNnaELwv99jrkMw5xB0QXgtTnTrkrr89R8bwmtGquTY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1732775138; c=relaxed/simple;
	bh=dYPE4ZNCJFy6FX0sE9ClVhGv4Cf/dafDkKNJVsMswuI=;
	h=Message-ID:Subject:From:To:Cc:Date:In-Reply-To:References:
	 Content-Type:MIME-Version; b=AggDoWbMAhiu7hcaVkh3oXBI949wHgIEstgTLgWHLa9CUc+qlQuW7s+ocAll6LV3Nz4loBUMv08sGzX4L2ZMQnkhNrq42CPwGTGjwGAoAFsXCpdxyG2SxhgoYCCJzH0IkaGRGcregSIoHKNGldbghfwZr+7iVLUv+EZhSA2FK4o=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=j5M0wFn8; arc=none smtp.client-ip=209.85.128.52
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wm1-f52.google.com with SMTP id 5b1f17b1804b1-434a8b94fb5so2714525e9.0
        for <devicetree@vger.kernel.org>; Wed, 27 Nov 2024 22:25:36 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1732775135; x=1733379935; darn=vger.kernel.org;
        h=mime-version:user-agent:content-transfer-encoding:references
         :in-reply-to:date:cc:to:from:subject:message-id:from:to:cc:subject
         :date:message-id:reply-to;
        bh=dYPE4ZNCJFy6FX0sE9ClVhGv4Cf/dafDkKNJVsMswuI=;
        b=j5M0wFn8FQX5MLBPE849ILdmuPXyPoVemuRHMOZ3n4QEfPzN5ez6eOcfptytx16cmX
         DxDMnWsrqPNqPX7iiwCxCdjmjb6TggNrGt7fyzKuGcvCaJzmyFGmb0q27xJeF4fzD4/9
         N1hvfSa8SMAj19GPx6jDfznXDsfKnqX9sNgJQAvelawOmacTywHT9m9u0NMQ5g3hpJaM
         b800NrCOy11VTC+B/kN8ODMwpkF9ZzugVfgPJsv12poEqoQ+AXU4UiRVMQOtVUXw2JK1
         9k7w/IqQM6FPtRTl3qU4EzeoYo4FbBG8OHaw0dKXp3t5TalEt43/YBAZWsLPoaZme5pn
         98jQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1732775135; x=1733379935;
        h=mime-version:user-agent:content-transfer-encoding:references
         :in-reply-to:date:cc:to:from:subject:message-id:x-gm-message-state
         :from:to:cc:subject:date:message-id:reply-to;
        bh=dYPE4ZNCJFy6FX0sE9ClVhGv4Cf/dafDkKNJVsMswuI=;
        b=j9VtN5oF8yqOcrkSQo4iq95HomwdmiyO7B2/OXzUf7NZAm32Ay7RM0z5MGDQfmw297
         4ELtE9kWVD3RALF2GRPAhr6qf0KzdgqI4hngHqbP87CcjbkCcwsbslC3vIDBVpISGKHy
         CLA26Gk138kbhDcska8vH7r8gQc3slOg66PG1nTa7KpN4xgBnhRdXWZBRNyiWGCogaLO
         UIZ+0aPlmRpReMQJV0eDcBXFqgVkC2SoesveaTVUTPrjDr6C1+1DNyd3bg1XHyfLDC1y
         DJXC6LgWV4ZM3rppZUO9tvrYJ5WtAlfXw/fBYFtPyyD/06e2y+Tw6Vje035343EmhLeo
         wFdA==
X-Forwarded-Encrypted: i=1; AJvYcCWvoqBeras3jIH5CVYnvydPoFOocKZERrI6Kjd2+omHzvMDt1C+Jbc2drTcweiF/dTYfHw3Bf7BWErv@vger.kernel.org
X-Gm-Message-State: AOJu0Ywuxr45FQiEqEv1CqiNCc0LtiAs9GMeJ0uLltSqmFfGr8+i1axf
	Evay/fOCI3rmZ/vuz+NqkAMXjBH96LQDh2a4m0SazIhd6l7rt1beJCevMtV0UNs=
X-Gm-Gg: ASbGncswkBsqf2ZQ0ZCewbfEp7iE/61FBQYrhFAPCTCh0NXLG+H/j2YcbFN/jUN+V9p
	SaOc2poS7OpAwn4j+jLY34ABSy3zO0mx5Mq/QqHFNe/RUO4Dbby0D8flMV+UlYhJHp8WOcPE9co
	BZb33VxVl8BELPxHmJlvkC8gQWfhxKK87q7jsG/dJSOlqZSdgrVitjy0G6Pw7YzS8wDm25UYaeY
	n/Sj5c8BFs/Ttyo5IQC7mPzmVtGZ2o4HSdaMuI8nvv5UY7Md+fM6uo=
X-Google-Smtp-Source: AGHT+IH6Ml7J+veNZgcHRluAVpujI8NQLzYAgYOdmWcaTC51mp1SAFlDYpCulVDkM5fF9/EPeYf0EA==
X-Received: by 2002:a05:600c:1c0a:b0:434:9fca:d6c3 with SMTP id 5b1f17b1804b1-434afb9efa7mr14137785e9.9.1732775135356;
        Wed, 27 Nov 2024 22:25:35 -0800 (PST)
Received: from [10.1.1.109] ([80.111.64.44])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-385ccd2db0bsm775126f8f.2.2024.11.27.22.25.33
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 27 Nov 2024 22:25:34 -0800 (PST)
Message-ID: <8e11e1c92d81fa39a2881086dc58f6262dd719e0.camel@linaro.org>
Subject: Re: [PATCH 6/9] phy: exynos5-usbdrd: gs101: ensure power is gated
 to SS phy in phy_exit()
From: =?ISO-8859-1?Q?Andr=E9?= Draszik <andre.draszik@linaro.org>
To: Krzysztof Kozlowski <krzk@kernel.org>, Vinod Koul <vkoul@kernel.org>, 
 Kishon Vijay Abraham I
	 <kishon@kernel.org>, Rob Herring <robh@kernel.org>, Krzysztof Kozlowski
	 <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, Marek Szyprowski
	 <m.szyprowski@samsung.com>, Sylwester Nawrocki <s.nawrocki@samsung.com>, 
 Alim Akhtar <alim.akhtar@samsung.com>
Cc: Peter Griffin <peter.griffin@linaro.org>, Tudor Ambarus
 <tudor.ambarus@linaro.org>, Sam Protsenko <semen.protsenko@linaro.org>,
 Will McVicker <willmcvicker@google.com>, Roy Luo <royluo@google.com>,
 kernel-team@android.com,  linux-phy@lists.infradead.org,
 devicetree@vger.kernel.org,  linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org,  linux-samsung-soc@vger.kernel.org
Date: Thu, 28 Nov 2024 06:25:33 +0000
In-Reply-To: <82f94ea4-2533-4ebd-a9e5-96ed64bfbc05@kernel.org>
References: 
	<20241127-gs101-phy-lanes-orientation-phy-v1-0-1b7fce24960b@linaro.org>
	 <20241127-gs101-phy-lanes-orientation-phy-v1-6-1b7fce24960b@linaro.org>
	 <82f94ea4-2533-4ebd-a9e5-96ed64bfbc05@kernel.org>
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

On Wed, 2024-11-27 at 20:42 +0100, Krzysztof Kozlowski wrote:
> On 27/11/2024 11:58, Andr=C3=A9 Draszik wrote:
> > We currently don't gate the power to the SS phy in phy_exit().
> >=20
> > Shuffle the code slightly to ensure the power is gated to the SS phy as
> > well.
> >=20
> > Signed-off-by: Andr=C3=A9 Draszik <andre.draszik@linaro.org>
> > ---
>=20
>=20
> I think this should be actually a fix with cc-stable.

Will do in v2.

> Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>

Thanks for the review!

Cheers,
Andre'


