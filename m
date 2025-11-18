Return-Path: <devicetree+bounces-239657-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from dfw.mirrors.kernel.org (dfw.mirrors.kernel.org [142.0.200.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 2A8F7C6829C
	for <lists+devicetree@lfdr.de>; Tue, 18 Nov 2025 09:14:47 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.mirrors.kernel.org (Postfix) with ESMTPS id 47A2E4F0F22
	for <lists+devicetree@lfdr.de>; Tue, 18 Nov 2025 08:12:22 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id AEFEE30AADC;
	Tue, 18 Nov 2025 08:11:56 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="Xg7ofQni"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ej1-f41.google.com (mail-ej1-f41.google.com [209.85.218.41])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D75D43090CC
	for <devicetree@vger.kernel.org>; Tue, 18 Nov 2025 08:11:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.218.41
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763453516; cv=none; b=BJP6+VE9LO1zCHQJWZJAXV903uHk07lSZ3Ev1AZBgyd5QRWJfY4U+xzTMRAfxQNFtGT3oTNzp3dDtm0uTvCX8+/9zz7BXC2kDS1zwzAXObZowuTRxwq/1RG8b0koOlJbHH9tys/JeQG89Q9rKDsEri+N0kAPUqvbnpAqT8vbkgo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763453516; c=relaxed/simple;
	bh=U6NpoMdl8Zx+ZZCVX/tl/ljFU/wuo1o7G0BCGGjfIaM=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=rAlvdzZJZL2KT5IJsa5qGzBDjhlFSbhrLEigkb8i2lo8P0ksTEwXaUCOStTjDqbrkcRjnBN32MExNZlU8LAG9pZ/V1dWfKUaymOQUBjXgrfkR7TdIdGHBJ2ETnPu3u8vRTR89AmT3U796igtdOEHqWfbsxTlym16kdf6F9+PFB4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=Xg7ofQni; arc=none smtp.client-ip=209.85.218.41
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-ej1-f41.google.com with SMTP id a640c23a62f3a-b736ffc531fso643272266b.1
        for <devicetree@vger.kernel.org>; Tue, 18 Nov 2025 00:11:54 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1763453513; x=1764058313; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=FangEPCYJ/rRCDDLMOYHEdKjmgCazFk4RNT28+XjQGE=;
        b=Xg7ofQnioNqc1TeDgrErHbsGSr+2FWvb/+2Dp48pylxNakMQ8VLt/LfLd46SXAliDA
         uwAtxZaQ+xB1FJV6G80ixBiPiSCOAOTb0KQoxU+qVqkTu3+u+00Sj1bB2q9KhEIG/xXB
         GXVSWAe4FZDi3RT/P4Tf2BbOhIKKxQOEpLZyOYBijqRuh2sbBk5O7PKDwMjdabslfgaq
         pKKeWWi9i9rhv9dRVAGIQQkmbB9p1hwu3+jUTBngLhxIJVO9CJr6IH8Lolgj1Ux7rg7R
         6HMMGAZeTYI5RB51v6A3OV6WNx72QE8KyhEpV1Wcg9WVz/fKnzJnE6sD+n29RMYh3pOG
         uezQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1763453513; x=1764058313;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=FangEPCYJ/rRCDDLMOYHEdKjmgCazFk4RNT28+XjQGE=;
        b=FeiyhYHy5oLAbORd67Y0xcQKj/JoeMhtnPrUEpyYc/Zllf9eX52ULs2s6H9Wd12o7U
         1NpV0a5iMdkjGkSt3WWMadmt4xxBGjf4aQPdP9MMGVIaDSfNozL6+VHx9I4V5DRzLdnk
         yb88zIq1h7A6WyM0LcHLs12lbDmE0LzFaWXsEWvRSePdBpGvyizIGlgfL5gFgcJDxsMr
         4J9K5WQ4opjjeDHvq/88cYUatmwlleChpivDGBxerggZdJFTMRB1lU+MbXd4ihvZa8lR
         r7ADNoA0kQOMPbFN5LyGjOk11GleAQN2F6ANJZYeUMgmT/68PDQmRNI1Tlmgpm2HE+L2
         SciA==
X-Gm-Message-State: AOJu0Yx3tdjGolSsprgsqiwaBc3DntqWjCkUuBY2KPpD4FvQ3lb6Q16e
	ppx+EC3zb59mivavWO8BsGdmsAH1wq/Z4l/W+J/xG5LABRc+0WNL3HmUDy4Pcn3ERU3LQV1QKz/
	04KZYJHg75qevH4W/gHZPuTgdhaIQT+A=
X-Gm-Gg: ASbGncucD9Kc4D6I+kPOFPrikM/fczRlAvTlKns1CABFLhow7NAcLPAGzs7Io+EtGRk
	FTMPvb5jL69Vh1toqimEhkutGxthAmptVJHLppL1t2VmwNZ5lAyd/9ltKbOFkEXxOnpYJCD5kd8
	WMYqYJgRSAUzLcVglyb8lO6fPjj0KKTWdTKahEsUBjYV6o8Ij5ih4ofb4//hwpyjTycKZXj0S7q
	lLtLQJl4cTQNfw1y7Vn6qxFugqvlRe6Ugk5uqXUNZWyoDc5mEJ55LeCKnuh6QVCldla84Gh
X-Google-Smtp-Source: AGHT+IEHcPR+OwRwsqJJ0/uai7T9Z5bK+GvtX4wZ68Jnfq3MM6pnPM1BSU0qX5Ee3pQ1MpaQJy38JCaslU+Q+taVZiE=
X-Received: by 2002:a17:906:fe07:b0:b73:870f:fa2b with SMTP id
 a640c23a62f3a-b73870ffaf8mr1152686566b.27.1763453513074; Tue, 18 Nov 2025
 00:11:53 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20251112211248.3711889-1-sjg168@gmail.com> <20251118041058.1342672-1-sjg168@gmail.com>
 <20251118041058.1342672-2-sjg168@gmail.com> <c061ee38-5026-497d-b757-b0b9db2e6729@kernel.org>
In-Reply-To: <c061ee38-5026-497d-b757-b0b9db2e6729@kernel.org>
From: Peter Shen <sjg168@gmail.com>
Date: Tue, 18 Nov 2025 03:11:41 -0500
X-Gm-Features: AWmQ_blpk2ySgsdJXTAlDZEU8KUMAaf5aD3b5YcZV7RoXMMcHgsFu67psNDCtEU
Message-ID: <CAJTz7Jd_fuTXpsseEE_161a7nLgoh4g9nH7M__HTsGihqNLQWA@mail.gmail.com>
Subject: Re: [PATCH v7 1/2] dt-bindings: arm: aspeed: Add compatible for
 Facebook Anacapa BMC
To: Krzysztof Kozlowski <krzk@kernel.org>
Cc: devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
	linux-aspeed@lists.ozlabs.org, linux-kernel@vger.kernel.org, 
	Andrew Jeffery <andrew@codeconstruct.com.au>, Joel Stanley <joel@jms.id.au>, 
	Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	peter.shen@amd.com
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hi Krzysztof,

Thanks for your detailed explanation. I apologize for ignoring it earlier.
I now understand the importance of Acked-by/Reviewed-by/Tested-by tags, and=
 of
not attaching patchsets to unrelated threads.

I will follow the proper process from now on, and also fix my local b4
environment so that generating the correct trailers works smoothly.

Best regards,
Peter

Krzysztof Kozlowski <krzk@kernel.org> =E6=96=BC 2025=E5=B9=B411=E6=9C=8818=
=E6=97=A5 =E9=80=B1=E4=BA=8C =E4=B8=8A=E5=8D=882:21=E5=AF=AB=E9=81=93=EF=BC=
=9A
>
> On 18/11/2025 05:10, Peter Shen wrote:
> > This patch adds the compatible string for the Facebook Anacapa BMC
> > which uses an Aspeed AST2600 SoC. This is required before adding
> > the board's device tree source file.
> >
> > Signed-off-by: Peter Shen <sjg168@gmail.com>
> > ---
> >  Documentation/devicetree/bindings/arm/aspeed/aspeed.yaml | 1 +
> >  1 file changed, 1 insertion(+)
>
>
> So you just ignored everything I wrote? Long explanation and you just
> don't care?
>
> If so, then:
>
> NAK,
>
> Also, do not attach (thread) your patchsets to some other threads
> (unrelated or older versions). This buries them deep in the mailbox and
> might interfere with applying entire sets. See also:
> https://elixir.bootlin.com/linux/v6.16-rc2/source/Documentation/process/s=
ubmitting-patches.rst#L830
>
> Best regards,
> Krzysztof

