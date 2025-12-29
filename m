Return-Path: <devicetree+bounces-250157-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id BF672CE694B
	for <lists+devicetree@lfdr.de>; Mon, 29 Dec 2025 12:44:08 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 0AB413016992
	for <lists+devicetree@lfdr.de>; Mon, 29 Dec 2025 11:43:17 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D8D3030CDA0;
	Mon, 29 Dec 2025 11:43:12 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="YWCpoTWb"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f43.google.com (mail-wr1-f43.google.com [209.85.221.43])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 942A71607A4
	for <devicetree@vger.kernel.org>; Mon, 29 Dec 2025 11:43:09 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.43
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767008592; cv=none; b=jtucIx0XRAD09kzozAAvpVwes8Da0GIcDEj1v0uGms0Z4EEvXWr9sUect/L+nscKLssR2M5JHZOvC09n9Wl7b5cnvMi1CYWZkflSZdbf0P0Wt6tVGYLUtQAeSpwiy+RuueZynHMGnixmnnLqmPLA1XqO8LpGQ4ui8SpS0XZ1A/E=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767008592; c=relaxed/simple;
	bh=eB3XsZRjJ1YFGjnvrsqrBm1/10oeK+YwC4DIQNxLcCs=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=nIUR7M+eDlRb7pUjKsmOvSsvkJG4jIcpDXQ2gaCGlfWKuB71f1zhxsoPLqOuRSi6ZdNkZP6GY9p/6vmy+Zeq37wwzrM22fqF6xkA1IyoT4o4vHWU43T9Lu0nZ7Kx+ql/IVPJ5bfCVzun13F4ZLfbgyn8JNG8a5HEhhoIv22J5hM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=YWCpoTWb; arc=none smtp.client-ip=209.85.221.43
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-wr1-f43.google.com with SMTP id ffacd0b85a97d-42fb4eeb482so4458654f8f.0
        for <devicetree@vger.kernel.org>; Mon, 29 Dec 2025 03:43:08 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1767008587; x=1767613387; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=eB3XsZRjJ1YFGjnvrsqrBm1/10oeK+YwC4DIQNxLcCs=;
        b=YWCpoTWbjQNXHJtkkb4+FR+bpQ4qxPiECNSByzCf7V+UE6kEFumH+a0Iyw/jn3JbvK
         scP9MyxHRlwxhI1/0cdg+TDZO7+KRFIi/bSgXIeszh9tyt+J2433NVsOG0SJf60NJAG4
         WpkaN6cLlDnvcSO0NBX6Z+lDG7zWva3St34uLwHo88zxZWOQ8/nVhs33chCQ7guCi9zg
         eddwCn3W8YO8tpioL1p1HNz6jEEEu4QDdFzAi5Ssgd50O/JSXtgDYcgkTu8ZcaF9u/rO
         be4KIc+tz2ALFpB3K3A6/8nDoM2zVbDNQw+JpO0fmQeMg2I3zVDT2M4qhCSH8XCE0I6M
         gOIg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1767008587; x=1767613387;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=eB3XsZRjJ1YFGjnvrsqrBm1/10oeK+YwC4DIQNxLcCs=;
        b=suwJz9rkFR2TePpfgkJM45G9VcRiBbe+AB5uT5ar6YKMoGezU8HgUOt4sAo1NlzRdZ
         Ixph9ey3y3vw+HVzHFN53LCOWz05vT0RM6dh5LLkD5vxzf+m/ywcGqq+XKhAxsYEWM6w
         RRNUirBRWOZokq9FU4O2O8HSwawDZXKW1h0wiNcTxNDCzA7dZzI0ecna/11jltY84IEO
         8n67D94LYsVlUUlY7o4qfCypv9VdhrNFxzLYindktGlzhV+SWnNDoNE8k4TNPBRJgsdt
         IwsW4ejxekGszKC27MNAGmgI/Jmw42EPSkecQKeMK2oMiBGNc78K6/cU6cvjxQOHzw9h
         i+cQ==
X-Forwarded-Encrypted: i=1; AJvYcCWTNMvhGW/lx3EgjW8Z1zEqqT+9GFZnWoZm9utfxTqym9cPv5d7pQHopnAL+Mr4jFDvkolrM/5DfKhT@vger.kernel.org
X-Gm-Message-State: AOJu0YzZXpp6j9D7hfc2XKkhO5faPbvyXsQFstPbvu0QRTOUhdYLgpUf
	5byhPx+WXp6mW4lonLkT+gEPlrwCGXGNE6N5asKshv0QoZ2sun335j8F3k6U8PxhtdlKgWZhasL
	WObJ/WA6HS6zMxUcwVe9k/ouCYOu4pks=
X-Gm-Gg: AY/fxX5wya/pVBC1O49U6lvZ7zaMNxiOgPmA4Xvj3MbQRU+ATHO9uaoT7XPQKwUOU9r
	ZoVCaEzn9c4t/C1KTY8Fa6RTT08cuHTiXQeYtlvmB+7GdpgpWjqNH8aEhPThhq47/TaGKrA7pli
	6VeRpYqQ3ywEZEGx0U8wfAyS1tNWLBwk/OZNJZYUMKPgGyqRa1lUSe4vVkW2WaSVHyP3zzukAGy
	74LPQMN17MM0z5xHH11/XLxXRHvCVvseELnW4ELXanQ0SAT4kY+1TY9gOpC7R6JalZzWdaJeXRK
	dcT4ei9KYBIlkAucNzVfJDNECjlhXlhiW/rrUXPoMFSp/Dv92gzlFdVmfkKJkFFGZiBEv5pDLzy
	eMvrysfyARvF1/g==
X-Google-Smtp-Source: AGHT+IGBZW6yTetvwnfGicrHJgS8HgNiMNHTIySH+8wEUsN70PrQ6mV0WydgwJ78qbVIDZx67ELX/OVuFUTj4cYkPUE=
X-Received: by 2002:a5d:4e01:0:b0:432:5ce4:6fed with SMTP id
 ffacd0b85a97d-4325ce47133mr21404075f8f.9.1767008586940; Mon, 29 Dec 2025
 03:43:06 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20251224173324.3393675-1-prabhakar.mahadev-lad.rj@bp.renesas.com>
 <20251224173324.3393675-2-prabhakar.mahadev-lad.rj@bp.renesas.com> <20251227-tacky-cordial-ostrich-263625@quoll>
In-Reply-To: <20251227-tacky-cordial-ostrich-263625@quoll>
From: "Lad, Prabhakar" <prabhakar.csengg@gmail.com>
Date: Mon, 29 Dec 2025 11:42:41 +0000
X-Gm-Features: AQt7F2oSeBaKR2srEY0LF2FWkPeA63InFdu1sEluQEP7fjKOHxwpFhKhpOiS8To
Message-ID: <CA+V-a8vh5gEfozFzym_J+aE1zDXXVbQwq8OWpr2F6rxLZaWKYw@mail.gmail.com>
Subject: Re: [PATCH 1/4] dt-bindings: can: renesas,rcar-canfd: Specify reset-names
To: Krzysztof Kozlowski <krzk@kernel.org>
Cc: Marc Kleine-Budde <mkl@pengutronix.de>, Vincent Mailhol <mailhol@kernel.org>, 
	Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Geert Uytterhoeven <geert+renesas@glider.be>, Magnus Damm <magnus.damm@gmail.com>, 
	Biju Das <biju.das.jz@bp.renesas.com>, linux-can@vger.kernel.org, 
	devicetree@vger.kernel.org, linux-renesas-soc@vger.kernel.org, 
	linux-kernel@vger.kernel.org, 
	Fabrizio Castro <fabrizio.castro.jz@renesas.com>, 
	Lad Prabhakar <prabhakar.mahadev-lad.rj@bp.renesas.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hi Krzysztof,

Thank you for the review.

On Sat, Dec 27, 2025 at 1:11=E2=80=AFPM Krzysztof Kozlowski <krzk@kernel.or=
g> wrote:
>
> On Wed, Dec 24, 2025 at 05:33:21PM +0000, Prabhakar wrote:
> > From: Lad Prabhakar <prabhakar.mahadev-lad.rj@bp.renesas.com>
> >
> > Specify the expected reset-names for the Renesas CAN-FD controller on
> > RZ/G2L and RZ/G3E SoCs.
>
> Instead this all mess should be fixed - you need to define all
> properties in top-level and only override them with specific constraints
> per variant.
>
Ok, I will define the reset-names in the top level and adjust accordingly.

Cheers,
Prabhakar

