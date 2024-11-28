Return-Path: <devicetree+bounces-125218-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id AFDC69DB3ED
	for <lists+devicetree@lfdr.de>; Thu, 28 Nov 2024 09:40:18 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 75A32281CCC
	for <lists+devicetree@lfdr.de>; Thu, 28 Nov 2024 08:40:17 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 4D9851509BF;
	Thu, 28 Nov 2024 08:40:09 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="a/S6bdZg"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f43.google.com (mail-wr1-f43.google.com [209.85.221.43])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 33F2613FD86
	for <devicetree@vger.kernel.org>; Thu, 28 Nov 2024 08:40:06 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.43
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1732783209; cv=none; b=gwye3+diQy95SLlYC2Vjapx+ahnFNSLM+fZn8sPQCTHD2l6Yf7X2Enfii+n+fGMl6UQpqbtu2Ipw97f+45+aORmyFSk5lDcHMLMUYi/mEvzdN2dIs7XtAJFS1xY4hDY+gc10Z5jpJsfUnQkkkIULQiqEaO6FB2ybRtLtaFXCFII=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1732783209; c=relaxed/simple;
	bh=l8r4E+fAxvn95ykDQ3t+Nmyf8EYUz2dFT+lg2PPw2HI=;
	h=Message-ID:Subject:From:To:Cc:Date:In-Reply-To:References:
	 Content-Type:MIME-Version; b=noETZt3iWbZE8NxO9QKZQvkPazIUNjc4KX7mfvnZLrog/ChvVllMpjS6SV4JAOhJBUminDJ7s+fvLvJkKOdgrRj9z4HHpeorRpF/NZTpf1XoKWVCD38UBEavastlfcsoEI2dMpp7eOssTeizmYa4I8RCDfYvrIwdYg3/8D/6NqE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=a/S6bdZg; arc=none smtp.client-ip=209.85.221.43
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wr1-f43.google.com with SMTP id ffacd0b85a97d-382376fcc4fso333402f8f.2
        for <devicetree@vger.kernel.org>; Thu, 28 Nov 2024 00:40:05 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1732783204; x=1733388004; darn=vger.kernel.org;
        h=mime-version:user-agent:content-transfer-encoding:references
         :in-reply-to:date:cc:to:from:subject:message-id:from:to:cc:subject
         :date:message-id:reply-to;
        bh=l8r4E+fAxvn95ykDQ3t+Nmyf8EYUz2dFT+lg2PPw2HI=;
        b=a/S6bdZgISDO9ZAz2kcR92XlvcoculYKlo91vd/zFSU/Sw2kFgYepEZSJAfhGb0apL
         UX5CgaJblqb9vJPKkyMxX3mqTari/FvD9vZoA9q8qYfICycwNN3QAzUioKRw4xgMlvKC
         xWSZMA0ZcdymKsrVsJ5KcrIZxP6dZBfXxQM/3EXvNFlVM2cjbTChgBV6TMeFP+zVDOdj
         NAi9nHvlE8mbue0940anXfAK4DBdYn5byMbJUEFqhAVeZciSQHpE6u8n3TpGJK9l0+GO
         /UtjV6wkKU9nR9h5kZZPNSJn5eRKz9OhrhnqVY6NwM/e38j79n6QSq33k4yftpGgrFXx
         GbfA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1732783204; x=1733388004;
        h=mime-version:user-agent:content-transfer-encoding:references
         :in-reply-to:date:cc:to:from:subject:message-id:x-gm-message-state
         :from:to:cc:subject:date:message-id:reply-to;
        bh=l8r4E+fAxvn95ykDQ3t+Nmyf8EYUz2dFT+lg2PPw2HI=;
        b=r/Cy+2rJPqY9Z1daVaUGiyxv1CtsdwtkNmFes9XtLRo79r2QIYOTS9F3GKAvWpBxTL
         PGFClGfe74gpDhCvEoygPDzYxYdJC++ePlksAoWp22ast02LfWzjVy97sHxZl+wmYZ4U
         uVx61KjIC2/UKNtCc83uzjPctZ+lqbr8zF+2HVtC4IXx6T9qrlVOnZTwHguUie8K+Wrq
         BHbIe1ZYUT2DsygvNlF0y1ZB26G8k3K4DakSzmxpMXE1AeVyBp6Dgkz3eXKPszUX5AAx
         1iThgy4osdYTpLyG0JTgJ3IdlBG0oxOekvFAonzAIyACIjqT9WNeiyoWlWKar2NcFEiD
         lL4g==
X-Forwarded-Encrypted: i=1; AJvYcCXZsUg27iJ7S/nO9JdDQoW2NK+oTvE1WC0b3/q8BO27CUshGhnaO4d8IsU0ri8zVF67ilr5+pJ8NYOw@vger.kernel.org
X-Gm-Message-State: AOJu0YwTdEOufT+N/shwbMo2eXbhLyUOiHk+5zHy1xFNpqvx772etwhk
	1HVL0BbEhoTd7sCPYnz79tn7I45LpHIbynv+jzISf+2Gh9mSbGXarHV6XRR+5PM=
X-Gm-Gg: ASbGncs0vF7ywhJTV+46Lz/CJgGDTPhZF1IFVKw4yQE2sreCIl2qYri9O48ThnJCqkT
	quOAtmYlx8ZD5Ymcc84OWbQwtPOuIT1ulTNL1xnOz6MJkIetfuhvafUsS25OEczq17pXQkPDXzh
	IdPNlcVIKG1c6SIlkrEnJce8MkAQBRQopm44iaB6jIOVMo67a7xvkj3ysK8iVkN0d20MUZP+50e
	CWaIE7f2wzUvn6X058AobwOf2OhW8hqA3JiQ+MZqTEni2L3NgUd+vY=
X-Google-Smtp-Source: AGHT+IHLCVGEBiGpNB3pr06gJDHBvejAWzRugYtAncqUTz6NJIMOpbiyuWDq3lH6CC8FDjfooG1oIw==
X-Received: by 2002:a05:6000:2d8a:b0:382:2f62:bd45 with SMTP id ffacd0b85a97d-385c6ec0980mr3638454f8f.29.1732783204673;
        Thu, 28 Nov 2024 00:40:04 -0800 (PST)
Received: from [10.1.1.109] ([80.111.64.44])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-385ccce7859sm1096280f8f.0.2024.11.28.00.40.03
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 28 Nov 2024 00:40:04 -0800 (PST)
Message-ID: <5d2a32a9bcc38f31beef56c04d07f6d53aa49e06.camel@linaro.org>
Subject: Re: [PATCH 2/6] dt-bindings: usb: max33359: add max77759 flavor
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
Date: Thu, 28 Nov 2024 08:40:03 +0000
In-Reply-To: <8325415b-4af9-4bef-8310-39410b10aa84@kernel.org>
References: 
	<20241127-gs101-phy-lanes-orientation-dts-v1-0-5222d8508b71@linaro.org>
	 <20241127-gs101-phy-lanes-orientation-dts-v1-2-5222d8508b71@linaro.org>
	 <8325415b-4af9-4bef-8310-39410b10aa84@kernel.org>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
User-Agent: Evolution 3.52.1-4 
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0

On Thu, 2024-11-28 at 09:17 +0100, Krzysztof Kozlowski wrote:
> On 27/11/2024 12:01, Andr=C3=A9 Draszik wrote:
> > On the surface, Maxim's max77759 appears identical to max33359. It
> > should still have a dedicated compatible, though, as it is a different
> > IC. This will allow for handling differences in case they are
> > discovered in the future.
> >=20
> > max77759 is used on Google Pixel 6 and Pixel 6 Pro.
> >=20
> > Add a dedicated compatible to allow for potential differences in the
> > future.
> >=20
> > Signed-off-by: Andr=C3=A9 Draszik <andre.draszik@linaro.org>
>=20
> This should be sent separately to USB.

Sorry, it slipped through into this series somehow. Will do.

Thanks
Andre


