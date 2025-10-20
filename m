Return-Path: <devicetree+bounces-228965-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from dfw.mirrors.kernel.org (dfw.mirrors.kernel.org [IPv6:2605:f480:58:1:0:1994:3:14])
	by mail.lfdr.de (Postfix) with ESMTPS id 459B1BF2B1B
	for <lists+devicetree@lfdr.de>; Mon, 20 Oct 2025 19:24:30 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.mirrors.kernel.org (Postfix) with ESMTPS id B67AA4F7ADA
	for <lists+devicetree@lfdr.de>; Mon, 20 Oct 2025 17:24:27 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 534B92FB618;
	Mon, 20 Oct 2025 17:24:21 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="doYASs8i"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lj1-f176.google.com (mail-lj1-f176.google.com [209.85.208.176])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A8746256C7E
	for <devicetree@vger.kernel.org>; Mon, 20 Oct 2025 17:24:19 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.176
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760981061; cv=none; b=hduNECPBYn/jkQ2fM7Lu1EH3whPeqVGbedX2hk1GhU+BCxYVnZNw5j7ROd6PAqgxZN6X/bYBZj7NIzzAVbq3gUI+CmM2WB70F6xt+qRxOGDDNM5uKoR1IzSEl2kdrWumSIwBhiM2H0SP3fhLF1YXYjkj4r9lQ/aSpmTG8b+6k70=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760981061; c=relaxed/simple;
	bh=hydKm2NZFUTr/tv1313cV/5VEAs1svpkfDCqMkUr4gs=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=WL+hthN5zuBfOQkpPas9i26xPEz5sTyKziFHycLKAumUKwZeYGoX9ELkkOCuJZQrIhlWedU6A3zelv9Pno1mEz1OtLRJnrYtmA06keW0dGKjtdyKBfvcT/7tlqeRii21mGSFu087tX9178msdURh7Z4AYVXgZUl3Er3wvHCTAR4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=doYASs8i; arc=none smtp.client-ip=209.85.208.176
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-lj1-f176.google.com with SMTP id 38308e7fff4ca-367444a3e2aso56651251fa.2
        for <devicetree@vger.kernel.org>; Mon, 20 Oct 2025 10:24:19 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1760981058; x=1761585858; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=JJL3ymzyML+diLAVT9nhgdl7Vx9TWLZbPp7QEm8FssI=;
        b=doYASs8if3X0e9jHaFnSxYzodoUB+uoec1+yI5KUPtn366ibEUEbyFdOBRiUxfw7zd
         8UBHYMK/Z7U2ZapjDY7pO2NaRo9z0vgj4EcRB6xhMTJfEQOZ+T544rkp2C1Eh8NcGgmZ
         wSVIZb+lLgq10HCZ87DPvRNGsC+CNflUloHvmAA9ChZOzqWtoaQEQc09wPG2rzfCffqn
         hcqpN8OUwXQrqO+dHI4hoepNdiD5Drwho2h1FTwYBVyhPCIOTbqnJ+ckcUQkg8Ik4k73
         BhfIYMQ1+z+RAR4IschG8EUHbJGjWtskrWgY98GQG0z+QoFLmR8CXM1gXFWjXpZgQlNj
         mSSA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1760981058; x=1761585858;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=JJL3ymzyML+diLAVT9nhgdl7Vx9TWLZbPp7QEm8FssI=;
        b=VuXhtgZemUvh9ZXJzT4uv0hs7PVITmdfw5kxq1KnAmiNhPCkSRfCdSbgBwN+zq8AUL
         rYTmEjoROvKrdfvqTdGT72A9hr12Ix8N6hDgcJfnEQYVYxYTEFfJ7RTUQAtv7pDR7GUi
         KNaZZQtMnvMLWK2sPLERnMsIPJYiro73S2bBk9VbJl3FgUyKM0DiZ54BhI8WqB3YK2A+
         J1PY/J20yErQlETiax0a/x+t3dmcr4bFAm7YhxZTlyIE96chIxONTS9Ky5Bj9ZoUikjs
         8KcgsA5tX5OKZLJ8Q57jbRzP93JXEIQWkxDUnEAekAeO4fUUg5y8IRu7rVySaLyIDzqU
         srxg==
X-Forwarded-Encrypted: i=1; AJvYcCUqNAYv7aYb2ehRBVuMQA22M2zDUDG7BeeT1gONzSMPReGnonVG3kifFPU3c3Aw7xA8fYNYmdu3H0hq@vger.kernel.org
X-Gm-Message-State: AOJu0YyEuavVcun5zFvOxXcg6ZDmmqzVcYdeogg7e8olSPn7JsP4+fRL
	Fq/f4x5iVjHgwGuWWgSMju1scu7bhYq1ovXPH8DWFqlm9pPe3FtuA7WnxHHHwzoHRhJQJVpQ4EE
	AAD2yFS4a1JmkdDqiWXd91h0L4/u2qpk=
X-Gm-Gg: ASbGncvhxW8Qc+6UG/Hw3d/hxNIOCBk6zdC8f7aCfgF1aMEAhX7i1eMmWO9G3BGyefr
	bokQ1RG4NC77Mvv1x+jxMyDmdS79RiiGR+Km0ArkgRRfO//f1v7Cz9cSfUMDuqr9kAIgqOdI0GD
	8mQdh18GIlti/rmXhgl7NsgBk5qHx7ehdITWeRwKBRnAmwFK/BB33zQ0xtT/LNItNxA5MIsQX3b
	xHpZmXQUU8LL9stMSeha40jrhoOkCWGxoMr6bS3Blhcjj9boqW6XkZcwHJ7S6FxPPn9DjJRbBuK
	3VZWlv85p9xdvmlc
X-Google-Smtp-Source: AGHT+IFGvquo7dKjulQge3D4nLth2WI8das3/MTTYuoViw5UYS7r0NQDoBhHAaPE++J0d5/68a7BWV0yZERz90yIgHQ=
X-Received: by 2002:a05:651c:1990:b0:375:f6b9:c948 with SMTP id
 38308e7fff4ca-377978d7927mr37082001fa.15.1760981056694; Mon, 20 Oct 2025
 10:24:16 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20251013205155.1187947-1-festevam@gmail.com> <4bd512fd-b3df-484a-8a04-a1ed066c42fa@nxp.com>
In-Reply-To: <4bd512fd-b3df-484a-8a04-a1ed066c42fa@nxp.com>
From: Fabio Estevam <festevam@gmail.com>
Date: Mon, 20 Oct 2025 14:24:05 -0300
X-Gm-Features: AS18NWDxC1BDffoJ0EW6ktW9w7SITyz7Fejydue0HKFG2UIjYNHc8u5VIdoiknI
Message-ID: <CAOMZO5AGRejEwNvkH0Di0HVi8QPduTeCSud+_GqOkD4tqEcsdA@mail.gmail.com>
Subject: Re: [PATCH RESEND v4 1/3] dt-bindings: lcdif: Document a imx6sx-lcdif fallback
To: Liu Ying <victor.liu@nxp.com>
Cc: marex@denx.de, stefan@agner.ch, airlied@gmail.com, simona@ffwll.ch, 
	maarten.lankhorst@linux.intel.com, mripard@kernel.org, tzimmermann@suse.de, 
	robh@kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org, 
	dri-devel@lists.freedesktop.org, devicetree@vger.kernel.org, 
	shawnguo@kernel.org, imx@lists.linux.dev, 
	linux-arm-kernel@lists.infradead.org, Ahmad Fatoum <a.fatoum@pengutronix.de>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hi Liu,

On Tue, Oct 14, 2025 at 1:12=E2=80=AFAM Liu Ying <victor.liu@nxp.com> wrote=
:

> Strictly speaking, I don't think i.MX6SX LCDIF is compatible with i.MX28 =
LCDIF
> because at least i.MX28 LCDIF has the version and debug{0,1,2} registers(=
at
> 0x1c0, 0x1d0, 0x1e0 and 0x1f0) while i.MX6SX LCDIF hasn't.

There are some DT users, such as Barebox that matches against
fsl,imx28-lcdif, so we cannot remove it.

In my first attempt,  I tried removing it:

https://lore.kernel.org/linux-devicetree/20241028180844.154349-2-festevam@g=
mail.com/

but this was rejected due to potential dtb compatibility breakage:

https://lore.kernel.org/linux-devicetree/4addc413-dd13-4867-8c49-45539af7b4=
5b@pengutronix.de/

