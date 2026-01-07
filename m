Return-Path: <devicetree+bounces-252287-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 14305CFD304
	for <lists+devicetree@lfdr.de>; Wed, 07 Jan 2026 11:32:31 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 8CC6430C85AD
	for <lists+devicetree@lfdr.de>; Wed,  7 Jan 2026 10:25:23 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 0473B318139;
	Wed,  7 Jan 2026 10:25:05 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="mpbbNCJC"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f66.google.com (mail-wr1-f66.google.com [209.85.221.66])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 55A683168E3
	for <devicetree@vger.kernel.org>; Wed,  7 Jan 2026 10:25:03 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.66
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767781504; cv=none; b=rGt63+kjnUBdcQG80b/vgQtVQqYq9C1BakuueJeqoSnMLnT8P/ZX/UeKJE7VRHo8aXWdQPG3ic1ZvsBWXnfULtTMOqUVIqricRB3oFhxNNeKseT8bJSND84GCYZgF1wpfihI6WeeYGmSWyhx6p44XQNcQizLmolTb96JiBmgBao=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767781504; c=relaxed/simple;
	bh=cTvGRbomyBZQnV+yZJHifvwVeWf6GxW9l/M7+SaVQ2o=;
	h=Message-ID:Subject:From:To:Cc:Date:In-Reply-To:References:
	 Content-Type:MIME-Version; b=FuOdbAvVBkfpmlQ8HdjMOrOTMypKBR11R2n8XhpJo1ID1Y4gKv05XoJVGeimCPrEYTIjp3SOjVZNpFAlVVkI8DeqYDe/ORpgGI7SR8IglbbRM3zF6OdihIZMX+SCZ0Yna9wv5A+Ccoaum9Zj3YRJ0KfGpCDIDrlU03UIU7CbRqo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=mpbbNCJC; arc=none smtp.client-ip=209.85.221.66
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-wr1-f66.google.com with SMTP id ffacd0b85a97d-430fbb6012bso1440497f8f.1
        for <devicetree@vger.kernel.org>; Wed, 07 Jan 2026 02:25:03 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1767781502; x=1768386302; darn=vger.kernel.org;
        h=mime-version:user-agent:content-transfer-encoding:references
         :in-reply-to:date:cc:to:from:subject:message-id:from:to:cc:subject
         :date:message-id:reply-to;
        bh=cTvGRbomyBZQnV+yZJHifvwVeWf6GxW9l/M7+SaVQ2o=;
        b=mpbbNCJCym1xp3J55yz6aR3xDa6yBTQlmdzgymRat9v7XDiycm87DpKC40ci5BCu9g
         ag19P4JcJw1rNVmgTc9o3rQ/ibEf11kcuo6Mm6kZ3o/sdqAWhZoIYLZg8LqeEErF9OKD
         D7YoqWl+LXz8KqCislrZo/b96GooiJOT8HMMUtXFgQ7JdtOZgT7jM9ZWmurhjrdF43WR
         +1QD5wedOPq+k/+L3IQOKJoUanJGnQNjG8Pi+3AIe6v3rV1s3URBNGYy4momShxcnt3D
         O/GCw9lJBMSPwtROFFS97VX7eHO3lAjGwJE4KQpBRDMT/zNVJlYv8/v8aZmeqnJ/KqNV
         TwAQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1767781502; x=1768386302;
        h=mime-version:user-agent:content-transfer-encoding:references
         :in-reply-to:date:cc:to:from:subject:message-id:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=cTvGRbomyBZQnV+yZJHifvwVeWf6GxW9l/M7+SaVQ2o=;
        b=cYI5LZajTIOEcWZlVR+jYokCHH0uFVNQEmSrbb9gWtzBopcMUlbNNwfLottr9grdS5
         +wkilMIL0zTpnSqTfiAJIE2sX0wIeBOu/hZ74ugQ4qTW7VJS82yxdLQI+5+wKifPgowJ
         Yz6fGanXX/vb0G6cRfhP/v65DgeqH0Hcs/IlhfNixp1mJf1JBTds2o3nafge2X8hNXZw
         eYVhNojXSpjhLnGo7B2lYneSPoCl35VevrkemOA+Scrw0vwy0C5jJJIzdR1kEhcSAAfs
         l+oqHydaMtV+nsgOY04iSacvIFNjgrBVyUQdW6K75ZvAq+ANz6Mvn2QoRMpHPhrknYn6
         tHDA==
X-Forwarded-Encrypted: i=1; AJvYcCWV6At3fMXF7ldT2SDGFpC7c/uezQG403SCJpFSWSrd2sFThB7mhIvV3ujVMdrajnf8ZxJo9w+S5iKQ@vger.kernel.org
X-Gm-Message-State: AOJu0YzzJNwlmBERxkKnOJvuXjt7e9R9CYq+JiJ2XjjcCSgoco7KIHmf
	cg5mRBiUGJRrfw/axaphlMgqt0RtkV0j8jNO4OuBSrHxlKoARra4mnTZ
X-Gm-Gg: AY/fxX5DlObln3HDnqbgfSSERg0EKaixO29J2MBUTSS/VfjoQBYFKYXh8BrDQSa5AxJ
	FppwUaPFLg7xdmoFtMyR0dI4KXps51wRuU/q2+Ff2e7NTrvvLiHojheCVf7ZtZntky3I+E747d6
	HUZPe/LMP4//iUSYWXTgzAE5kLA+HhWH8+BmjGN0k51/53Y1Wru85zt85UR7f7I+yVWY+Cav7UX
	WHL5fQ/AMBzlvGJkQ5/E1/ooH91LLB5aMNfHP7jENY7WyZZjjHrKhaq1sI/VQJbVZv4zalDtLLX
	v+f9ASOjTCu1VMuC6aDp/4syOy26PEo4jnl+jIvl5xM1PaTXRXQhQtCxUP1SZX5XixehiJ8iKI9
	2eL4E2B/glVPs3olDL2lK6d4weX+zgmMksnfA4WLz0Pg+tgSymHpcvbaliTS1FpHDYavoP+3IRB
	j/5JaZjCFHlhg1RLuWT7U=
X-Google-Smtp-Source: AGHT+IHjhtmQPgtjUxH7G5aqK4V2+BWaRftwiGSeqgLK0QdYBuHzVzzSrn7JqQF0ls+ysYMxHM47Dw==
X-Received: by 2002:a05:6000:40c9:b0:431:48f:f79e with SMTP id ffacd0b85a97d-432c3775b58mr2421958f8f.25.1767781501603;
        Wed, 07 Jan 2026 02:25:01 -0800 (PST)
Received: from [192.168.1.187] ([161.230.67.253])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-432bd5feaf8sm9351598f8f.39.2026.01.07.02.25.01
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 07 Jan 2026 02:25:01 -0800 (PST)
Message-ID: <0ef03e2e1eb383eb0501d000704333f850652a4d.camel@gmail.com>
Subject: Re: [PATCH v2 2/2] dt-bindings: net: adi,adin: document LP
 Termination property
From: Nuno =?ISO-8859-1?Q?S=E1?= <noname.nuno@gmail.com>
To: Krzysztof Kozlowski <krzk@kernel.org>, Osose Itua
	 <osose.itua@savoirfairelinux.com>
Cc: netdev@vger.kernel.org, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org, michael.hennerich@analog.com, 
	jerome.oufella@savoirfairelinux.com
Date: Wed, 07 Jan 2026 10:25:43 +0000
In-Reply-To: <20251227-perfect-accomplished-wildcat-4fcc75@quoll>
References: <20251222222210.3651577-1-osose.itua@savoirfairelinux.com>
	 <20251222222210.3651577-3-osose.itua@savoirfairelinux.com>
	 <20251227-perfect-accomplished-wildcat-4fcc75@quoll>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
User-Agent: Evolution 3.58.2 
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0

On Sat, 2025-12-27 at 13:29 +0100, Krzysztof Kozlowski wrote:
> On Mon, Dec 22, 2025 at 05:21:05PM -0500, Osose Itua wrote:
> > Add "adi,low-cmode-impedance" boolean property which, when present,
> > configures the PHY for the lowest common-mode impedance on the receive
> > pair for 100BASE-TX operation.
> >=20
> > Signed-off-by: Osose Itua <osose.itua@savoirfairelinux.com>
> > ---
> > =C2=A0Documentation/devicetree/bindings/net/adi,adin.yaml | 6 ++++++
> > =C2=A01 file changed, 6 insertions(+)
> >=20
> > diff --git a/Documentation/devicetree/bindings/net/adi,adin.yaml
> > b/Documentation/devicetree/bindings/net/adi,adin.yaml
> > index c425a9f1886d..d3c8c5cc4bb1 100644
> > --- a/Documentation/devicetree/bindings/net/adi,adin.yaml
> > +++ b/Documentation/devicetree/bindings/net/adi,adin.yaml
> > @@ -52,6 +52,12 @@ properties:
> > =C2=A0=C2=A0=C2=A0=C2=A0 description: Enable 25MHz reference clock outp=
ut on CLK25_REF pin.
> > =C2=A0=C2=A0=C2=A0=C2=A0 type: boolean
> > =C2=A0
> > +=C2=A0 adi,low-cmode-impedance:
> > +=C2=A0=C2=A0=C2=A0 description: |
> > +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 Ability to configure for the lowest com=
mon-mode impedance on the
>=20
> Either this is ability or you configure the PHY, as written in commit
> msg. The latter suggests that's a SW property, not hardware, thus not
> for bindings.
>=20

Looking at the datasheet this looks like a system level decision. With the =
above
it seems we'll actually use more power and it is suited for designs where t=
here is
common-mode noise reaching the phy. So it feels like something we would put=
 in DT...=C2=A0

But I agree the commit message (and maybe the property description) should
be better in reflecting why this is used rather than just saying what are w=
e enabling.

- Nuno S=C3=A1

