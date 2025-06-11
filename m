Return-Path: <devicetree+bounces-184707-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 87879AD4F5F
	for <lists+devicetree@lfdr.de>; Wed, 11 Jun 2025 11:08:29 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id C53993A3CCE
	for <lists+devicetree@lfdr.de>; Wed, 11 Jun 2025 09:08:02 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C3A2B2405E1;
	Wed, 11 Jun 2025 09:08:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="volHhDyH"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f48.google.com (mail-wm1-f48.google.com [209.85.128.48])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 02ABD22DFA2
	for <devicetree@vger.kernel.org>; Wed, 11 Jun 2025 09:08:20 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.48
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749632902; cv=none; b=j9zknZ0Kmvoy7wsddt7WHe48hJIihRXTEDEKSvMuJ/ueUoykTip7Vj5CznqCk5BvSKxwD4703ZZ4oYw/yJto3rc6CcnSgRx/XDjSIJQOYKtzKdWqzWsYOE4ExK0QMt/LDtxA9pitd1DsToTNX95F+h2zsb7KQ7BS+tr2nrFdNNU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749632902; c=relaxed/simple;
	bh=XI9MRgqXRnhIDDskprAJ7Lp7MjrJKOdvMtsvO4mRxYc=;
	h=Message-ID:Subject:From:To:Cc:Date:In-Reply-To:References:
	 Content-Type:MIME-Version; b=m3p9yDOWgqA4V7E+p78P2thDTjheHXy5qI19dVcePL+82OeAuAQhN9wL7n81SEf+I51CCxxOA09NvkEJsIzyPtgqVWpT8dgGHSl+mdHrsClAMetyEt6ceUDMD6n04j8O2bPK1fK2wuUuCC9WVTwpAFJh/eoPc501pJ19fqcCdc4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=volHhDyH; arc=none smtp.client-ip=209.85.128.48
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wm1-f48.google.com with SMTP id 5b1f17b1804b1-43edecbfb46so54096685e9.0
        for <devicetree@vger.kernel.org>; Wed, 11 Jun 2025 02:08:20 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1749632899; x=1750237699; darn=vger.kernel.org;
        h=mime-version:user-agent:content-transfer-encoding:references
         :in-reply-to:date:cc:to:from:subject:message-id:from:to:cc:subject
         :date:message-id:reply-to;
        bh=XI9MRgqXRnhIDDskprAJ7Lp7MjrJKOdvMtsvO4mRxYc=;
        b=volHhDyH09v3nDkjEPsHoS4m7mTkTHd8/bUsINK0T0c5j5qXLpe4xTZanBXhOBaINA
         JWg/megBqwymRpHiUmDyrdxbiEJFk3DlhZY711SPmcZPq1LXTim+IHquIzB7OZy/NI2Q
         K88Bn0OUTKPi0oMl2Vuj2/iN3ZCQX3NQJjJfDpleWKRKS3Yk7DpzjQX1xQ/FtNlgqhSk
         qQCo24+CfG/rdWdLG+b/3hqmmYlFx1DN86onnyXmH/JjTDsaSXMkVrdhPpefUG8hP8Xb
         eRl+SYrv2zJOqFX4ns8VGxip2+iu81jLlQIo13qFt4uT/R+ECASuObjup48vD0FJ6nrW
         IhWw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1749632899; x=1750237699;
        h=mime-version:user-agent:content-transfer-encoding:references
         :in-reply-to:date:cc:to:from:subject:message-id:x-gm-message-state
         :from:to:cc:subject:date:message-id:reply-to;
        bh=XI9MRgqXRnhIDDskprAJ7Lp7MjrJKOdvMtsvO4mRxYc=;
        b=jLISjYr7kzVOLK/03qMXreNxzgFIGbJIMror/UiV/HGbNrQ6lu0TjjsKNMIoAo1gsc
         Hwzlv3WtwaZWaRQv6NwES/0mhvpTCQeERgAhCQlB2ZB7QDNi7+dGUp9bBLalEi7fTLIY
         dSU4llLE/YhFqOH8qdrwvOGZi63q01+Z0LfQWy8dhrFA9hNmWjcgvBgsufm9c9CGimra
         JeZxljiRI2zq6NczHYhVesMlg8WR14fiDgtA7oW4C+grKp22+Yq7yUiC84uBbeI/PLa+
         Zzu8ItlFf5cv3OIkcA7W/CDc8H9C4DYVQhdGSz0q1nX4WHlYtPDEFJFRYyV6CUl/x6cz
         f7Mw==
X-Forwarded-Encrypted: i=1; AJvYcCVwKUBk3e0ZVLAmOquTmK5sMzSTc1f7np8zMTa6DqKkgwRJp89y9/1OhPqpq/MRpylpphRJpfU4a/lm@vger.kernel.org
X-Gm-Message-State: AOJu0YxdlAdYaHEFH2UouppmtF5EWuc5TJ8+RxRWl+DAl3qKZpXZvdgP
	oOFVb8tDouLtAeJg4Cea8EJ9YBK6zgN7ZAtPAr/AK+KYDmBFrc7WqnKaSZrpcSaLeuY=
X-Gm-Gg: ASbGncsd95XPl6MjmydvgSXVA3F7TpwwGrJQtWKBR2Fb/erOeiHJNqJQqaGp/qo3Zjo
	jBc+qChuH8mGr+BBqkKh3RDMtc3COzqFkbSV9bq0mfYRZ1pLFYFzkh/qr72sVWefVCYwDglRxmM
	BwuX3bPN6AN+U1AanE9JARFdDPm47b4MIx+IOhre8msRQih1rKCCM3z4C9tNaAaolPcgFoxK+XJ
	tp02ke88HelwysjFtp0Nzauy3h80wHj9WxN80ihGHobGeRZWHb7vABd+NmZ+I5FAf8NLna5T3FW
	7svZCKSki6+V1rUQa/YBjliCV7/FbUQ8rtqbjphLe9sKEuK7DNjK2H4uidR4/5nWYA==
X-Google-Smtp-Source: AGHT+IEMk6D24rAbr4EjAYiW9bu//xAst28BwxOZGS7RIT+PIp1VlXvEeVos4jHxD+q9aHTVPlGzRA==
X-Received: by 2002:a05:600c:4e4f:b0:450:d01e:78ee with SMTP id 5b1f17b1804b1-45324f421c8mr17677035e9.24.1749632899307;
        Wed, 11 Jun 2025 02:08:19 -0700 (PDT)
Received: from draszik.lan ([80.111.64.44])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-3a53244e0e3sm14903832f8f.68.2025.06.11.02.08.15
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 11 Jun 2025 02:08:16 -0700 (PDT)
Message-ID: <013f55a0adf0b23e0836e33ee4ea0e1e7864a467.camel@linaro.org>
Subject: Re: [PATCH v2 01/17] dt-bindings: firmware: google,gs101-acpm-ipc:
 convert regulators to lowercase
From: =?ISO-8859-1?Q?Andr=E9?= Draszik <andre.draszik@linaro.org>
To: Krzysztof Kozlowski <krzk@kernel.org>
Cc: Tudor Ambarus <tudor.ambarus@linaro.org>, Rob Herring <robh@kernel.org>,
  Conor Dooley <conor+dt@kernel.org>, Liam Girdwood <lgirdwood@gmail.com>,
 Mark Brown <broonie@kernel.org>,  Lee Jones <lee@kernel.org>, Linus Walleij
 <linus.walleij@linaro.org>, Bartosz Golaszewski	 <brgl@bgdev.pl>, Peter
 Griffin <peter.griffin@linaro.org>, Will McVicker	
 <willmcvicker@google.com>, kernel-team@android.com, 
	linux-kernel@vger.kernel.org, linux-samsung-soc@vger.kernel.org, 
	devicetree@vger.kernel.org, linux-gpio@vger.kernel.org
Date: Wed, 11 Jun 2025 10:08:14 +0100
In-Reply-To: <20250611-robust-vehement-dog-2bf6ac@kuoka>
References: <20250606-s2mpg1x-regulators-v2-0-b03feffd2621@linaro.org>
	 <20250606-s2mpg1x-regulators-v2-1-b03feffd2621@linaro.org>
	 <20250611-robust-vehement-dog-2bf6ac@kuoka>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
User-Agent: Evolution 3.56.1-1 
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0

Hi Krzysztof,

On Wed, 2025-06-11 at 11:04 +0200, Krzysztof Kozlowski wrote:
> On Fri, Jun 06, 2025 at 04:02:57PM GMT, Andr=C3=A9 Draszik wrote:
> > Using lowercase for the buck and ldo nodenames is preferred, as
> > evidenced e.g. in [1].
> >=20
> > Convert the example here to lowercase before we add any bindings
> > describing the s2mpg1x regulators that will enforce the spelling.
> >=20
> > Link: https://lore.kernel.org/all/20250223-mysterious-infrared-civet-e5=
bcbf@krzk-bin/=C2=A0[1]
> > Signed-off-by: Andr=C3=A9 Draszik <andre.draszik@linaro.org>
> > ---
> > =C2=A0Documentation/devicetree/bindings/firmware/google,gs101-acpm-ipc.=
yaml | 4 ++--
> > =C2=A01 file changed, 2 insertions(+), 2 deletions(-)
>=20
> So this is also a dependency for the rest of the patches?

My thinking was that it makes sense to have it in context with
the other patches, but it indeed could go stand-alone if that's the
preference.

Cheers,
Andre'

