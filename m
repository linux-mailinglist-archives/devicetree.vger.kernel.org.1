Return-Path: <devicetree+bounces-63561-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 861838B558C
	for <lists+devicetree@lfdr.de>; Mon, 29 Apr 2024 12:39:10 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 41BA0280F2D
	for <lists+devicetree@lfdr.de>; Mon, 29 Apr 2024 10:39:09 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 7F9613A1C5;
	Mon, 29 Apr 2024 10:37:57 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="oAUqvc8X"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f51.google.com (mail-wm1-f51.google.com [209.85.128.51])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 008A03A1CF
	for <devicetree@vger.kernel.org>; Mon, 29 Apr 2024 10:37:55 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.51
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1714387077; cv=none; b=liU+8zNGMsmBiH739YeE/gpqdhkcggT6jolibjhG63eUNwCoxu35oGkAIdM2+bHpB90IZ11UBeOVJtsIwDfGwAUfL8jgeW5808z/P/Up7sCXEygkkpUJbAJHFUYSY6/K3EAZSTJHfs/nk/j3kYDUiYDwyfHjIsb9kDbS8TXWYJM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1714387077; c=relaxed/simple;
	bh=W3xx+8UTbM8mGeL6h0rEse6co9Ice3Alqe1RQ1LU2tk=;
	h=Message-ID:Subject:From:To:Cc:Date:In-Reply-To:References:
	 Content-Type:MIME-Version; b=L/1oHq8H7m8iKAuRDl4vmBnAcs2nGUK5loHZhyCAjoGlWh+lXSUTDGoUk4H7LGeavwkDHjLg5xPPJvIBSzyYICM12eLrDybeHZuO3V2XygRVJiX7rVS+SYEzAIADVksWVNwRF7I/m31HBMMG49GVbDGGV3uRfQ3TuKr1jn2P1YM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=oAUqvc8X; arc=none smtp.client-ip=209.85.128.51
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wm1-f51.google.com with SMTP id 5b1f17b1804b1-41b782405d5so31628945e9.2
        for <devicetree@vger.kernel.org>; Mon, 29 Apr 2024 03:37:55 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1714387074; x=1714991874; darn=vger.kernel.org;
        h=mime-version:user-agent:content-transfer-encoding:references
         :in-reply-to:date:cc:to:from:subject:message-id:from:to:cc:subject
         :date:message-id:reply-to;
        bh=W3xx+8UTbM8mGeL6h0rEse6co9Ice3Alqe1RQ1LU2tk=;
        b=oAUqvc8XLFvD8LtZe0Fci+p3ht7Yjul5WaFWdpGDW6uthwSzINmCvph40sZllIj4Sm
         JZ3uyI3341jW8srqRwclMO9aTTZEazQ3cfBkpSp03OkG6bmualGSxNpzUrTT58qpPivL
         3KZIJd1Nhj4J+rf7JhVM3eu3OgX1+tIO8dOu5K5uJM3Weda8e1WhpeeZek+0oZ9n/Ihi
         Rnb/k/6P7uR0o89JYu0jBhR6qafdJW1iixxSbB3VmRadVE8FKSiUplZmUjl++jgjYDMO
         qXFurG4DsmrIyBlKxOkb+9vkyqJ7ed1Kk9PRDq2cXnRI62nLcQKWNDpSLQ5JA/NcC3w8
         HPMw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1714387074; x=1714991874;
        h=mime-version:user-agent:content-transfer-encoding:references
         :in-reply-to:date:cc:to:from:subject:message-id:x-gm-message-state
         :from:to:cc:subject:date:message-id:reply-to;
        bh=W3xx+8UTbM8mGeL6h0rEse6co9Ice3Alqe1RQ1LU2tk=;
        b=ticvGDM0QjAUlVzMxZYMJtLhxF6a5BtTDtMvrVH8qUKs1DVRFaU2KqrutX2eL6uV9J
         p6K+2gU9OFOLvd98Laan7bUWJBpd5pZX4J5qGkyA+6xVjWYkWsG3lveej6vhUetql2o2
         pHLhgnDrBU/75VJDisjVwPyqa1S27pMNWvOHn859onilGDB6LXGzZC4pACUprr8NCjVi
         BSvHKlks/NiALKh7Me4GdNWSylKpyhDrYdHVtldOib5MbGMpXrV8GBRD40J6arAHEekk
         Z/yd6qfA+uDODl8DAk/WhqdP3DRETlGKEoRk5I+orMP+5eOe3++CUZqKIIMR8nPz/bK3
         hSZA==
X-Forwarded-Encrypted: i=1; AJvYcCVGaeVXSnx6tqaA+VM7TfdziM5oqQSroNK/tmGBiYIM2hWbl72lell7VttgBL6BTjGPMBd2fUOLzSZenFxE6lau+PetMOp4ORLMUQ==
X-Gm-Message-State: AOJu0YzU3l/de/PAWuxhXJQLmCCHnZ4bomJPImnGNtH1xSlmqCM/twQl
	5r+GeSNAeiCu7hXGNrQ/N+xV0f0ctZzRijM8uxaQIxBNugmusg7ysjIxQfPrnJU=
X-Google-Smtp-Source: AGHT+IEQw9B46vhfJGDeDgeOE7K+/nWGPXzz4WfHVc0GA0LpqjDSbTI3XW2oIhbdPUMk0ZUxVfI9rQ==
X-Received: by 2002:a05:600c:35c4:b0:418:df4:b24a with SMTP id r4-20020a05600c35c400b004180df4b24amr10729896wmq.37.1714387074506;
        Mon, 29 Apr 2024 03:37:54 -0700 (PDT)
Received: from [10.1.1.109] ([80.111.64.44])
        by smtp.gmail.com with ESMTPSA id q13-20020a05600c46cd00b0041c02589a7csm6385310wmo.40.2024.04.29.03.37.53
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 29 Apr 2024 03:37:54 -0700 (PDT)
Message-ID: <76473da66ffb4a0638ace670860e340d14063020.camel@linaro.org>
Subject: Re: [PATCH 0/2] enable USB on Pixel 6 (Oriole)
From: =?ISO-8859-1?Q?Andr=E9?= Draszik <andre.draszik@linaro.org>
To: Krzysztof Kozlowski <krzk@kernel.org>, Peter Griffin
 <peter.griffin@linaro.org>, Rob Herring <robh@kernel.org>, Krzysztof
 Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, Alim
 Akhtar <alim.akhtar@samsung.com>
Cc: Tudor Ambarus <tudor.ambarus@linaro.org>, Will McVicker
 <willmcvicker@google.com>, Roy Luo <royluo@google.com>,
 kernel-team@android.com,  linux-arm-kernel@lists.infradead.org,
 linux-samsung-soc@vger.kernel.org,  devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org
Date: Mon, 29 Apr 2024 11:37:53 +0100
In-Reply-To: <79127b00-4349-48bd-9023-259c72cc47dd@kernel.org>
References: <20240423-usb-dts-gs101-v1-0-3421b0371298@linaro.org>
	 <79127b00-4349-48bd-9023-259c72cc47dd@kernel.org>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
User-Agent: Evolution 3.50.3-1 
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0

On Sun, 2024-04-28 at 17:59 +0200, Krzysztof Kozlowski wrote:
> On 23/04/2024 22:52, Andr=C3=A9 Draszik wrote:
> >=20
> > Due to the clock IDs, this series depends on the bindings patch
> > "dt-bindings: clock: google,gs101-clock: add HSI0 clock management unit=
" of
> > the series in
> > https://lore.kernel.org/r/20240423-hsi0-gs101-v1-0-2c3ddb50c720@linaro.=
org
> >=20
>=20
> This is weird. The patchset applied cleanly without DTS parts from above
> set, but then failed to build. Obviously, because it depends on DTS,
> even though it is not explicitly said here...

Note that this also depends on the DT bindings for USB & phy mentioned in t=
he
cover letter, though. I've made that statement more explicit as well.

Thanks Krzysztof!

Cheers,
Andre


