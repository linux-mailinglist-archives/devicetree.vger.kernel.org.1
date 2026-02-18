Return-Path: <devicetree+bounces-266499-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id CE0UI6QBlmlHYAIAu9opvQ
	(envelope-from <devicetree+bounces-266499-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 18 Feb 2026 19:15:00 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [IPv6:2600:3c04:e001:36c::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 0502E1589CB
	for <lists+devicetree@lfdr.de>; Wed, 18 Feb 2026 19:14:59 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id EACB73010B88
	for <lists+devicetree@lfdr.de>; Wed, 18 Feb 2026 18:14:58 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 76306346AC3;
	Wed, 18 Feb 2026 18:14:58 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="GLzC1rHK"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lj1-f169.google.com (mail-lj1-f169.google.com [209.85.208.169])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2DFAB2F5A06
	for <devicetree@vger.kernel.org>; Wed, 18 Feb 2026 18:14:56 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=pass smtp.client-ip=209.85.208.169
ARC-Seal:i=2; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771438498; cv=pass; b=XWnJEDbUuZXqxhoEeCMCcN6KUrnLciy1jVgcXKxM53aeS6hfsDul1FomHjKvUPX8b4hRPidvAkk/k7UEp3vEz0sqSK9xNqsSTevxBAGuMRvY/vVPeGo667pDJSHi5NkU0dFboq9+0g/JNc4Pw++6l6hXMZaKkSte/j1iqiA3ATg=
ARC-Message-Signature:i=2; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771438498; c=relaxed/simple;
	bh=YviV1LJUtPqR1ffjnWUweO4RqwvYdHYZDmBnJ4iJYEk=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=hOwP4oZjRHSQamlTsNGKHZeg3CcYtnI5YiXjZJw1zfZ3iQQFSuP9xpmz2YHjdoUq0yjpXDXinDdFH4e8aMImKKhGq/EaTBnjU5ZqHTT8gwlbpK4IWJWX0DkQ1SyKR3UbuNOe/7ahbJGZousegHPhPMNXhXIXuPXGd2xo3f6s2xU=
ARC-Authentication-Results:i=2; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=GLzC1rHK; arc=pass smtp.client-ip=209.85.208.169
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-lj1-f169.google.com with SMTP id 38308e7fff4ca-3870d178a9aso1579831fa.0
        for <devicetree@vger.kernel.org>; Wed, 18 Feb 2026 10:14:55 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1771438494; cv=none;
        d=google.com; s=arc-20240605;
        b=eUqzJUcPIHu4dOGJAxWHP3ZQqvJkUkMiEJNgy6OHFYty92BTJou12mThMMqjRIhrHQ
         UEGCYqRCjf/zbVTvHr34lv5DL9k1LEKrTcdVQduU1dyTKtbaHsS9WTc5ryJJr7pKC8/V
         MEunnHLw+QD30+SUzhz6zh7OJsjcd//scLPBtQodC4Y2FFE71d54i0ZIAbbwLrlbHbUq
         KyhdLfVxj+8lJVEjCDC682qy8UFeGWv5Qqc6EJePTCjIzWip6/q8Blc3OzljGcqIY2VN
         hoSJpUmY10S3HuoOox4WVVPrOMdMNB/ldFhGN6JZmldXm0W+Ih3AJBh+K9B8Js3U9xu0
         A+KA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:dkim-signature;
        bh=YviV1LJUtPqR1ffjnWUweO4RqwvYdHYZDmBnJ4iJYEk=;
        fh=TCqj2n7dRMuJCTEqbqeK/vIWTb4u2B+Cr6yX3Tqn8oA=;
        b=PLLiLfJVaf01hQ2gv9CkcoNeu4RQAR0QZNqOk1bWclF7yd3s3H/4trr04a5mWTZWNs
         ztGrV1Ju6yg4sEBwWIAPdXYRARpLvs4W1SYj2i9TcYPjI2vDdJJ8bsYUjIfaV29MrVT0
         24w649Csj3S2Q/H2GqN1PtEknJw4jGd1FtJXV0yClTefPrG0w9gaZq6I9U5kIMW/UlVg
         q8MIrzK7WEhz/cA0U7lHMmRxogcfMDaCYFURSUI4snSAqxQkWKIWwCMv+3FPUJ+jZd6d
         UvgzOCoD8SpJ8yHY9nmVYMkTa3i4AZ63e5yWbXNBmUbnfbi96lHSpWKLEocF1WM4/59R
         cUEg==;
        darn=vger.kernel.org
ARC-Authentication-Results: i=1; mx.google.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1771438494; x=1772043294; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=YviV1LJUtPqR1ffjnWUweO4RqwvYdHYZDmBnJ4iJYEk=;
        b=GLzC1rHK/vQeqRi8bFJWzbqHbnTYEtJ3NlKXO587ach3vDHevm1lKuUOrf7/OOAS30
         I2YALdHIQAfbV9Rze6NInQk+GWZfCjK9vSyaBOcgYo0oHTf1JqyvPlIiAlhn8iqSJuct
         eEsGZdDaOtk7xvMup13Au2uwX6kYYT0yAE3iJw3zvxmJaFSR4/9oYFxUQZDC7WTKGxdG
         f5vGnMa/YmSCFaWzusTLBA1ZMK1tvTlYMGVgDFChRjb1pD50vS2yi8Tnfnv1hnYnhoOw
         lOTPxmqydWfeuKgFIL6mbCjTR2G68j13wvwHlfhnNrou9kh0LtdKt/7kDWXrTlqetj9i
         eXBg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1771438494; x=1772043294;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=YviV1LJUtPqR1ffjnWUweO4RqwvYdHYZDmBnJ4iJYEk=;
        b=P0AnUJ5ZDIRT3ngDCjHncebtpK4VSMGD46qkn89fPfAq7qL2Zu9qiyu+kzlpWgBWsY
         eDsWBw/42zUjdYpStGa4JbRTHIzNf2U4CgaNsqaaJPL8IVEg/PWvaENWKx8aM4hzfX5h
         fshjmtdzHOlROXwpMCzCucGfT50hm0GocbmxpC2JE+0b6a2q40gmyF3wrH3HckOXQkuP
         gj/02wmF6PAKZxN4mw/8WUeJ59jAcoPvbJn5V52r6MhJSwfcLhC3Qg7fRFyr0jGB4iFF
         uogE78VX+YRl0JOpXsLOl6lKjWkMKbHPS2EQ+K/GPEbahT99BtiNEW4ZUG2ffxVvbWM0
         QaYw==
X-Forwarded-Encrypted: i=1; AJvYcCWqOMR387a/6+bFn8bPilS+ouGnLXl21tbDNaBxqnlW+Szfu3oQLhwWkXAwQnsMRF0jI/1ezPXevEBo@vger.kernel.org
X-Gm-Message-State: AOJu0YzX2QdtjSN/MIFNHxjAHtdO/ds9WZm+q0zAvmAEYAh+fGHuwrhb
	jk3PaA1BedLyDePyVTJMOaW/oUr28gGj6xvc5Ws9qBHk9oWVcwd5P7CCXgExRvc8HnOeJEAUEB2
	rWBLjjvjYitmQCIcE8pcI4qQjbMnIcVE=
X-Gm-Gg: AZuq6aIiD3ct4dL6pmSYHUeDja1J8Pxt61xVvcGvd0YsBlpNHx33DcuSqOy93RkLU/M
	nLSrOlIJswl2xapko4JliFeRQwYw6TOoTcX2iidaziPkP5uas7T8hz1GsPWNi02oR/v51FP41yK
	n8dcI0rbTln3UdC6IEcdkmLd1ieMthxIbTJnrui0a8j/cmD5sOBpB47SrHQs+EEPE7DeyTdJsYr
	fNhzOmlP6jN8TltoUvjlwmXaemN+AGUHgNV0UuZDxpofsUMmDFT0lyhjYn+RCBGX8aF6v7CUi8n
	dX7PT31OyiO0UHpFnW+FUhXJ8lhrUpPhgXj39vARCEOtOfe9uzjuR9Pbw2BBGoSxVN8usWw=
X-Received: by 2002:a05:651c:1505:b0:37a:34e2:88e7 with SMTP id
 38308e7fff4ca-38846ded488mr8325581fa.22.1771438494066; Wed, 18 Feb 2026
 10:14:54 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20260218132339.32157-1-Max.Merchel@ew.tq-group.com> <20260218132339.32157-2-Max.Merchel@ew.tq-group.com>
In-Reply-To: <20260218132339.32157-2-Max.Merchel@ew.tq-group.com>
From: Fabio Estevam <festevam@gmail.com>
Date: Wed, 18 Feb 2026 15:14:42 -0300
X-Gm-Features: AaiRm53RLXHEYghXfgNRCuxfYIbnDQ70cmKmTheE3k1c4d-bmc6cBGsAlV-rhj8
Message-ID: <CAOMZO5B5k_i_q4cd7SMNAkicF4WfEYNVUSrg8AamQHNpGys5mA@mail.gmail.com>
Subject: Re: [PATCH 1/4] ARM: dts: imx6ul/imx6ull: add boot phase properties
To: Max Merchel <Max.Merchel@ew.tq-group.com>
Cc: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
	Conor Dooley <conor+dt@kernel.org>, Frank Li <Frank.Li@nxp.com>, 
	Sascha Hauer <s.hauer@pengutronix.de>, Pengutronix Kernel Team <kernel@pengutronix.de>, linux@ew.tq-group.com, 
	devicetree@vger.kernel.org, imx@lists.linux.dev, 
	linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=2];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20230601];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c04:e001:36c::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-266499-lists,devicetree=lfdr.de];
	FORGED_SENDER_MAILLIST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	RCVD_COUNT_THREE(0.00)[4];
	FREEMAIL_FROM(0.00)[gmail.com];
	RCPT_COUNT_TWELVE(0.00)[12];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[festevam@gmail.com,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[gmail.com:+];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c04::/32, country:SG];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[tor.lore.kernel.org:helo,tor.lore.kernel.org:rdns,mail.gmail.com:mid,tq-group.com:email]
X-Rspamd-Queue-Id: 0502E1589CB
X-Rspamd-Action: no action

Hi Max,

On Wed, Feb 18, 2026 at 10:24=E2=80=AFAM Max Merchel
<Max.Merchel@ew.tq-group.com> wrote:
>
> Add boot phase properties from U-Boot device tree.

The commit logs of this series could be improved. Please take a look
at these examples:

https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git/commit/?=
h=3Dv6.19&id=3D256feb5be482315a91c1bd1a1808276f57ef76dd

https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git/commit/?=
h=3Dv6.19&id=3D2285ea3f8065f47a6a1b62e6fcfa85105c8c261b

