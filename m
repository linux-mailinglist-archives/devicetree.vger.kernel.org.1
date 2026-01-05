Return-Path: <devicetree+bounces-251615-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [172.232.135.74])
	by mail.lfdr.de (Postfix) with ESMTPS id 49465CF4B62
	for <lists+devicetree@lfdr.de>; Mon, 05 Jan 2026 17:34:41 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id BAD2730096B4
	for <lists+devicetree@lfdr.de>; Mon,  5 Jan 2026 16:34:40 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 560D832F774;
	Mon,  5 Jan 2026 16:34:39 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="Kzkj8ilV"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ej1-f49.google.com (mail-ej1-f49.google.com [209.85.218.49])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 86DE333D6E2
	for <devicetree@vger.kernel.org>; Mon,  5 Jan 2026 16:34:37 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.218.49
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767630879; cv=none; b=B8lZG4TuaSOQcx/RBfqDKt1nIXCssVBY/JheRTjidvlBcreIh89Agcoy+1LulysyecY4ufcafSvI6YanxOMOjEw1ijHnh6RHYAHjfmK6H6vZV2SsIpdEYE6Zx9cg4AuCMVansqYaHrbgD/pqe3hPpKowsdkl72URj4YSarTt28s=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767630879; c=relaxed/simple;
	bh=fonikX7z7K1ohHQZl6vZ41UkDK6dK2RBIq07hZiimXM=;
	h=Message-ID:Subject:From:To:Cc:Date:In-Reply-To:References:
	 Content-Type:MIME-Version; b=jVdKEBuWajEQCn5cxaL36Eudf184DjY6UPx1bZ1oxXPlzd/nfGPIFL2oLcDFUdlLW/oLif0z7iJjXjqY/C975WyAxqNDm7booPvtXdHu7TYLgcYzvhSNuIZt54AiuhCPGKSFtHsYk3i2vBxYi79iMU7selxPxDGbrzLChQN/+Ng=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=Kzkj8ilV; arc=none smtp.client-ip=209.85.218.49
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-ej1-f49.google.com with SMTP id a640c23a62f3a-b8010b8f078so28584266b.0
        for <devicetree@vger.kernel.org>; Mon, 05 Jan 2026 08:34:37 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1767630876; x=1768235676; darn=vger.kernel.org;
        h=mime-version:user-agent:content-transfer-encoding:references
         :in-reply-to:date:cc:to:from:subject:message-id:from:to:cc:subject
         :date:message-id:reply-to;
        bh=fonikX7z7K1ohHQZl6vZ41UkDK6dK2RBIq07hZiimXM=;
        b=Kzkj8ilVNzMJFRW1nbm2QkX1jFeSKl5WkENFpQPkTe6EfrRyB4/2A5M3hGGHB8uyNm
         RVnxTbxgCEXDZthOXFVd/ohUQ8eH/gvIbNkjERHjJgVCBoEoLZrfj8SH4U9/2OuUBiHG
         lycvPdYAIjkB4nBjVEUMDHuD/wQMijclKtxYmSHkIbWPYRKGichS5cMGSmeCGMiHA4jS
         GyDuZXVdd6ZzjRVHA4VqYbib0xmmABB3FDdbgKEG24kM3ewUXFg+Ui+LC3XhztVQsjOy
         fY5YNig0nJEtLyuFN24S0aFYzIM2sCIccS1E1qxCtCL4iy+OYMI53Y9nB6h3K83FLqUM
         t6wQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1767630876; x=1768235676;
        h=mime-version:user-agent:content-transfer-encoding:references
         :in-reply-to:date:cc:to:from:subject:message-id:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=fonikX7z7K1ohHQZl6vZ41UkDK6dK2RBIq07hZiimXM=;
        b=T/aAXhbYyVb0W9K6MBeUMWsi1lPxXicF3y2qDXt/CObUmz5bgij/nBfI+aO6s3UZNR
         P2Vd0fII+ilQEBpmLAuS5Wp52Xp1b1yJer+Hv5QAacJK6lX5CC0L6pxY/i8UFOGdkPxN
         LOKaUqTlmx0a2sx3pibOxtWT/oO0m3jq3oT/Rv1q+FcIaKVvgFodixdrjorrfXZYTZr8
         gT+q1VVOeGnTGEnsvmIqc2r+s7wmKbC56LfKTGEgPzbAujicd/4Aux35K2fZdVqQlodz
         QefClYHZJ1jZPT+iVywTPXY2UnfQFGcjTgAL727CoIwYWg9C7VqK/3T4kMtHFFsGIFjO
         2K3A==
X-Forwarded-Encrypted: i=1; AJvYcCUu1l86KF/aInmf+teeu/SYHKeYwhveqLR0HxmGZxzHaU+Dbxu4fDRfk4fW6Nl4mo6KWxrlyDx4uy12@vger.kernel.org
X-Gm-Message-State: AOJu0Ywz6vREyWYqywUKRtzDr+JHA3ZQnsfEmCa+n4LtyjUTTOlzoNoR
	DvGoJW6EYliAZj7G9515Ivki6Gk3XaS+B6Zbh7RU1khekJc0RIClttslH8nQjE8G+2Q=
X-Gm-Gg: AY/fxX5Zs/tvm+v5rj4r7U+oc7vQR8IRy/urIUa2H3SdaskVo7skF7X2TNUMKlsVpyR
	ULIko4p7SLe2RXhhx4iTyPZWc98KzsSIqaIqRoojS4SnpB5QT7rTdfB/286uJQZPKiJnekjGy09
	ot3z5H8bXVrugpd1Hg2lsWcchPzHaT2/LxOVmzITKuI5B5oJEtpun92+8JsG+DsBFGv6LNKoLhf
	druA7PTJjUyAD6BXMOpDP/WiePVIgr9oYnXuQ7cOWw08a4qPJbkRMONNu0eAviGzTK8XA/xZNGx
	6FlJHnUu28wuDM8x3nXAYDYrAUByLPA1wrZHeHmWoIpm9Q8r7qBFJwzDGX9PZ4+XOAylGZNuJpQ
	QSrMYGv1Vm41k8ET4qTPCOVo8nrsllAS06slybQqbUUQn6tXKm3yNTirhJM/jhfDCUEmX+Ic44a
	U0rZKJ5bziZvZ/MhjLpw==
X-Google-Smtp-Source: AGHT+IHIyW6EL5Qeds3ppqsne/ep5l8vVI6WL/+6EbkwC3Ri0haHzlrCKUwNVD3J8FuYeN4YtG8RdA==
X-Received: by 2002:a17:907:a43:b0:b76:74b6:dbf8 with SMTP id a640c23a62f3a-b8426a67855mr36978666b.14.1767630875838;
        Mon, 05 Jan 2026 08:34:35 -0800 (PST)
Received: from draszik.lan ([212.129.74.225])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-b84265ac3ecsm40253166b.11.2026.01.05.08.34.34
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 05 Jan 2026 08:34:35 -0800 (PST)
Message-ID: <6eb57ad14908ae894f090ce83c756e4cbc834aba.camel@linaro.org>
Subject: Re: [PATCH v3 1/5] dt-bindings: mfd: maxim,max77759: reference
 power-supply schema and add regulator property
From: =?ISO-8859-1?Q?Andr=E9?= Draszik <andre.draszik@linaro.org>
To: amitsd@google.com, Sebastian Reichel <sre@kernel.org>, Rob Herring	
 <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley	
 <conor+dt@kernel.org>, Lee Jones <lee@kernel.org>, Greg Kroah-Hartman	
 <gregkh@linuxfoundation.org>, Badhri Jagan Sridharan <badhri@google.com>, 
 Heikki Krogerus <heikki.krogerus@linux.intel.com>, Peter Griffin
 <peter.griffin@linaro.org>, Tudor Ambarus	 <tudor.ambarus@linaro.org>, Alim
 Akhtar <alim.akhtar@samsung.com>
Cc: linux-kernel@vger.kernel.org, linux-pm@vger.kernel.org, 
	devicetree@vger.kernel.org, linux-usb@vger.kernel.org, 
	linux-arm-kernel@lists.infradead.org, linux-samsung-soc@vger.kernel.org, RD
 Babiera <rdbabiera@google.com>, Kyle Tso <kyletso@google.com>
Date: Mon, 05 Jan 2026 16:35:09 +0000
In-Reply-To: <20251227-max77759-charger-v3-1-54e664f5ca92@google.com>
References: <20251227-max77759-charger-v3-0-54e664f5ca92@google.com>
	 <20251227-max77759-charger-v3-1-54e664f5ca92@google.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
User-Agent: Evolution 3.56.2-2+build3 
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0

On Sat, 2025-12-27 at 00:04 +0000, Amit Sunil Dhamne via B4 Relay wrote:
> From: Amit Sunil Dhamne <amitsd@google.com>
>=20
> Extend the max77759 binding to reference power-supply schema, so that
> PMIC node can reference its supplier. Also, add regulator property to
> control CHGIN (OTG) voltage.
>=20
> Signed-off-by: Amit Sunil Dhamne <amitsd@google.com>
> ---
> =C2=A0.../devicetree/bindings/mfd/maxim,max77759.yaml=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 | 16 +++++++++++++++-
> =C2=A01 file changed, 15 insertions(+), 1 deletion(-)

Reviewed-by: Andr=C3=A9 Draszik <andre.draszik@linaro.org>

