Return-Path: <devicetree+bounces-103396-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id DFFFF97AAEC
	for <lists+devicetree@lfdr.de>; Tue, 17 Sep 2024 07:16:07 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 9F8CC286811
	for <lists+devicetree@lfdr.de>; Tue, 17 Sep 2024 05:16:06 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id BFF8538DD1;
	Tue, 17 Sep 2024 05:16:04 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="n6tnX+sq"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ed1-f52.google.com (mail-ed1-f52.google.com [209.85.208.52])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id AFDCC847B
	for <devicetree@vger.kernel.org>; Tue, 17 Sep 2024 05:16:01 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.52
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1726550164; cv=none; b=jCYpy3CuDjTMEZeX24fpMAKkdcMmsggDOfAOIzcXCmkAFxrSZPmmBo8ObTRtBy36MH0RG0Yo4fyKZFJT/2zsnFXsbPbGa00EbZpo0fsUPdSq2r7Q+ZSZjRWT4gQsasLC/RmCZr7emVgiUj1I+ivSxn6wSzJqRtEEofT+p7xPIeI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1726550164; c=relaxed/simple;
	bh=2TTB7wAEj5T66egfXzELpAqCFa2m6r9RCcwd0KSOwxE=;
	h=Message-ID:Subject:From:To:Cc:Date:In-Reply-To:References:
	 Content-Type:MIME-Version; b=d0JRMfIe7QEII/QMzVDP0XYWRKwumCiTzEa31GYMwYCZ9OVOPJR+NkwhjoDB/DDa26nA4EiIi9Fpwbb8fsmiPeqFfGJxRcMBIsE9HZlB4Gz+X/LdyFez3wXDtDbwdTxe6z4/5mwNJx6owqF6LfsgLHz2e7Vw3zmfXDtjvGeZYiw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=n6tnX+sq; arc=none smtp.client-ip=209.85.208.52
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-ed1-f52.google.com with SMTP id 4fb4d7f45d1cf-5c3d20eed0bso5806955a12.0
        for <devicetree@vger.kernel.org>; Mon, 16 Sep 2024 22:16:01 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1726550160; x=1727154960; darn=vger.kernel.org;
        h=mime-version:user-agent:content-transfer-encoding:references
         :in-reply-to:date:cc:to:from:subject:message-id:from:to:cc:subject
         :date:message-id:reply-to;
        bh=2TTB7wAEj5T66egfXzELpAqCFa2m6r9RCcwd0KSOwxE=;
        b=n6tnX+sq1tqBYdsyQKZdsETIW65x/SnfwD3rirm65x2Zb+Ym3VRj4U+Sfya6XlfKy/
         RlUUF7tBeIDNdR3oGA8gBsZMfpG8OlLcIOqzO0UMYbJCFJAdw+Ckn7Lah9l+KpLfOH1q
         +DUFsrzYXbZoGSHIF4Pta5Kda4apvE3yt9B+G0C+LgozhJlqk0FcuEtqu2ecswhbAGqM
         QJ2IxohXw1HnorTP9/aRuu7naE8p7rgwuIde+PuEMIZSjrxvH5QoPlA4qwUloC3SZk0a
         mmHdjSkmXx7g8XYJnniXqrzw48qsG80Jy8tGX1KHNmshDbgJUcHCpSnbtwGAzqVhMklB
         Z2Dw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1726550160; x=1727154960;
        h=mime-version:user-agent:content-transfer-encoding:references
         :in-reply-to:date:cc:to:from:subject:message-id:x-gm-message-state
         :from:to:cc:subject:date:message-id:reply-to;
        bh=2TTB7wAEj5T66egfXzELpAqCFa2m6r9RCcwd0KSOwxE=;
        b=eLbTVC0y8YgxdxqSKTE3DR0So7gdfQPshWMGwCGU4kln1fGF6j66JzsRHb/gjUFboC
         TbKOdv1uSI2kBszqEDUkNotM+6ukLOJGn+/UGT82naVS8BDq1k/2HDbON30k0dDFY7ze
         SQJDw7RDteuPoMxs9YVFy9JOUNoF6WdUBrCp3lHefOfEIkwyog+rJC0OZRliG8DdZvFk
         CrNcXzu1awrOf+NDveFEqP1uZvRgkOdHuspwDOql5olDQDrSDyP7L/7NlmE0TkPy9KHW
         fNVirU4maQKZTBc7BE/7SDgW4IymlSxNYtP7P50AVsV6bAJwKEnxf0XSVUhXtYfYPhtR
         JWzw==
X-Forwarded-Encrypted: i=1; AJvYcCW27XUfPNj9yDmMGIaSJJRall6Rn1wo5vB9wdAbTz+FsEl5jsoW8USONRbofNFOnkSEhP0lADFHue/H@vger.kernel.org
X-Gm-Message-State: AOJu0YysWZ7pYkJiYxid36riVfMjOnmfpP9uxgVz1AnnAONiCquuvqeT
	ElwCQR3vr2AldSMcjrAfNec/fPtwAKIpp3Euc7nlAsIeyx8ZPj3RgBf+ho149BE=
X-Google-Smtp-Source: AGHT+IGU5G6rYzZj+qUSKxMD6QccfUPU5XJPeVbknYBxvKJlQGaCF1SJJe/Dc+rxOPuDLI4kUfVvhw==
X-Received: by 2002:a17:907:7255:b0:a86:8f7b:9f19 with SMTP id a640c23a62f3a-a902961754cmr1727820266b.52.1726550159121;
        Mon, 16 Sep 2024 22:15:59 -0700 (PDT)
Received: from [10.1.1.109] ([80.111.64.44])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-a90610f151esm398242566b.48.2024.09.16.22.15.58
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 16 Sep 2024 22:15:58 -0700 (PDT)
Message-ID: <2600a8780580b16ce9707a504cf02e4204cdb83c.camel@linaro.org>
Subject: Re: [PATCH 1/2] dt-bindings: regulator: add max20339 binding
From: =?ISO-8859-1?Q?Andr=E9?= Draszik <andre.draszik@linaro.org>
To: Peter Griffin <peter.griffin@linaro.org>
Cc: Liam Girdwood <lgirdwood@gmail.com>, Mark Brown <broonie@kernel.org>, 
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
 Conor Dooley <conor+dt@kernel.org>,  Michael Walle <mwalle@kernel.org>,
 Tudor Ambarus <tudor.ambarus@linaro.org>, Will McVicker
 <willmcvicker@google.com>, kernel-team@android.com, 
 linux-kernel@vger.kernel.org, devicetree@vger.kernel.org
Date: Tue, 17 Sep 2024 06:15:57 +0100
In-Reply-To: <CADrjBPp1Esr_y7nuMgEiknDQbDzW7bKu5UKaoRQ7jGYRAFr_Uw@mail.gmail.com>
References: <20240916-max20339-v1-0-b04ce8e8c471@linaro.org>
	 <20240916-max20339-v1-1-b04ce8e8c471@linaro.org>
	 <CADrjBPp1Esr_y7nuMgEiknDQbDzW7bKu5UKaoRQ7jGYRAFr_Uw@mail.gmail.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
User-Agent: Evolution 3.52.1-4 
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0

Hi Pete,

On Mon, 2024-09-16 at 20:53 +0100, Peter Griffin wrote:
> Hi Andr=C3=A9,
>=20
> On Mon, 16 Sept 2024 at 17:48, Andr=C3=A9 Draszik <andre.draszik@linaro.o=
rg> wrote:
> >=20
> > [...]
> > +
> > +description: |
> > +=C2=A0 The MAX20339 is an overvoltage protection (OVP) device with int=
egrated load
> > +=C2=A0 switches and ESD Protection for USB Type-C applications. It pro=
tects low
> > +=C2=A0 voltage systems against voltage faults and surges. It also inte=
grates two
> > +=C2=A0 load switches with current limiting, configurable by hard- and =
software.
>=20
> [nit]: what does "hard-" mean? should this say hardware?

Yes, hard- stands for hardware here, it is a suspended hyphen.

Cheers,
A


