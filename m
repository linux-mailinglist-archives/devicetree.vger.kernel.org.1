Return-Path: <devicetree+bounces-82464-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 3F23F92472F
	for <lists+devicetree@lfdr.de>; Tue,  2 Jul 2024 20:17:28 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 714B91C22D17
	for <lists+devicetree@lfdr.de>; Tue,  2 Jul 2024 18:17:27 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 9143D1C8FB7;
	Tue,  2 Jul 2024 18:17:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="Qu7iCN4B"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lj1-f179.google.com (mail-lj1-f179.google.com [209.85.208.179])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E14631E4AB
	for <devicetree@vger.kernel.org>; Tue,  2 Jul 2024 18:17:20 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.179
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1719944242; cv=none; b=VbpsBY53d88xUUmQtbJtM71f07Q7qL6WTWI+TNPwXGy40Z97aADyhjdYqqv+pxN+w0ftO8pK7hzFfOJoRyn8C5wmTgICIqh1EgtA8OnxA1Y94G+2EFEBEPYOhKvBJilI4Wu3Cu/Df6T3cD6iof0qJJlcmx+ZRS/KcWRlMaQwDBg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1719944242; c=relaxed/simple;
	bh=C/Qlcv0X7CwmoWdVx+DsfcHCeCFT2iZWvCV3R7NSdDo=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=iGygrkq+gOrc8qwJicY7TpvGywChWOuOPi6Zo11czisS8BD1jzBwfDO12SYY4RG+W7Lb6+33XinbbCWEmEvH4NKS774mXhNaG/5i9/1bqpt5a044+ub4H/lTAyEWG25voHYuiQOpAdZtqwvHRxtuTSCYFqDacMzr3FfNa4rY0Ds=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=Qu7iCN4B; arc=none smtp.client-ip=209.85.208.179
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-lj1-f179.google.com with SMTP id 38308e7fff4ca-2ed5af6b214so4245091fa.1
        for <devicetree@vger.kernel.org>; Tue, 02 Jul 2024 11:17:20 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1719944239; x=1720549039; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=C/Qlcv0X7CwmoWdVx+DsfcHCeCFT2iZWvCV3R7NSdDo=;
        b=Qu7iCN4Bb8JwBwkeJIdUKj9mOOLEh4fXPbDgdZGE/WvdPdH81z3EPGnBD76lLnogFy
         GoYLYy6V87a5rQLUZDVtJyiSDtHZWw1PIpfsXyCqBjacGT3Ijv/sJo8KXjjsBTeTDr8m
         FLfLEiBh6NSikmQSU5jPsmi2rFBzlGivLrS9SjxNk1FwVQJrafaaWZtlIojBaM/Fwkxp
         1wECr9eMFy7Rl/a8xyWs4+8768+4QbNMzKu3KYxcrLcVLbBboBsBJjuVimVpVQjavA1C
         37r5aJUBbNd1zHA9HmwK1wvQwYD7Na/APU59ofdbrHFoZ8HlxvPrE22IeFuK9b4jPEAf
         5L3A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1719944239; x=1720549039;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=C/Qlcv0X7CwmoWdVx+DsfcHCeCFT2iZWvCV3R7NSdDo=;
        b=mAOwdEnFAxqUkNAh8Ll2JSbBU7HqQe9Z3/JbD/VrXBXp0OOTVXTZ9ESUwkGgv+k5B1
         oZKJNAQpZhZgM5AsvB6wrEF89wSrbnfc3bZemHsZakClLqBgdTib4Fd/ksgbfKhGRoSS
         A0wv626GIwMvUm9EYVJS3H/kNv2LZeKpVB0LnT0amT2nPK1ggdMGgAGFgSIRsAeEJ/Vr
         HL+H1jB6d+r4wYd6Hs4dXjjppXRWUQt9Rv57Ici8qEjk1ve8o+eiOK9sRdY0QbMjZkNH
         Jnpg/mkiieeoHzmE7Ecpfu0v72Nn7kN2vD+GrYYPAQ3DRqiZ5nbo0/L65glbNZN0wRMf
         mHrg==
X-Forwarded-Encrypted: i=1; AJvYcCUu7ibNN91SHStzCPZxRVWahDEJ7T6mEWPJ34lH/Y0ucv2jH4/W4br/zKo45eq9dMNtYm27/l9kb+KUGuV6IuVxwa633Jea5MgUyA==
X-Gm-Message-State: AOJu0YyPRmTzwDOYcfUBxyArwu/NC2Rky0uIrMAdcJL0VlaXMzc+lS9w
	McXT66YZ+6soayh16CRNp1Iq1abLVkJNDVCutW0DQd+Mho0p20a2Ndp6/Rz/J9nI35tflfZmIkj
	PODWG/ESoYcYuBMVdw4eX1kUWzxY=
X-Google-Smtp-Source: AGHT+IH3lk+lIyyVrwN+5oCNL46VF/6woXzIpbntXZjlP3m6FyFbgY/SmMf60uE4sQmbchSjEqJ63z31+ePXXDBv2CM=
X-Received: by 2002:a05:651c:210d:b0:2eb:e6fe:3092 with SMTP id
 38308e7fff4ca-2ee5e6cd8ebmr71268311fa.4.1719944238830; Tue, 02 Jul 2024
 11:17:18 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20240701231229.197614-1-festevam@gmail.com> <20240701231229.197614-2-festevam@gmail.com>
 <CAJ+vNU39xU+NKtLUux0s6JMSaNV_6NHcxBcTJX3kpPTCGkbgNg@mail.gmail.com>
In-Reply-To: <CAJ+vNU39xU+NKtLUux0s6JMSaNV_6NHcxBcTJX3kpPTCGkbgNg@mail.gmail.com>
From: Fabio Estevam <festevam@gmail.com>
Date: Tue, 2 Jul 2024 15:17:07 -0300
Message-ID: <CAOMZO5ChLRyQtv9D0NwxRCPxJcmKOXYdaMXYyeeecS9edAJtqA@mail.gmail.com>
Subject: Re: [PATCH 2/2] arm64: dts: imx8mm-venice-gw72xx-0x: Remove
 compatible from dtso
To: Tim Harvey <tharvey@gateworks.com>
Cc: shawnguo@kernel.org, robh@kernel.org, krzk+dt@kernel.org, 
	conor+dt@kernel.org, parthiban@linumiz.com, devicetree@vger.kernel.org, 
	linux-arm-kernel@lists.infradead.org, Fabio Estevam <festevam@denx.de>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hi Tim,

On Tue, Jul 2, 2024 at 3:05=E2=80=AFPM Tim Harvey <tharvey@gateworks.com> w=
rote:

> Hi Fabio,
>
> Thanks for the fixup. Is there a warning now that detects these?

Yes, super massive warning when running "make dtbs_check":

Here it goes:
https://paste.to/?89f9844dc5b8f637#7s2w1yEc84cwkZVPTZmiqarkrsn99x9mVsjsSgXX=
ukrm

