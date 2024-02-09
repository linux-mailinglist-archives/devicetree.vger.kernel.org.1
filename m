Return-Path: <devicetree+bounces-40131-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id AD72984F607
	for <lists+devicetree@lfdr.de>; Fri,  9 Feb 2024 14:31:22 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 3CB1DB2612A
	for <lists+devicetree@lfdr.de>; Fri,  9 Feb 2024 13:31:20 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 676F83C499;
	Fri,  9 Feb 2024 13:30:27 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="opTZal+3"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-yw1-f178.google.com (mail-yw1-f178.google.com [209.85.128.178])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C58C1381DE
	for <devicetree@vger.kernel.org>; Fri,  9 Feb 2024 13:30:25 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.178
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1707485427; cv=none; b=kBhZqkmfKHB3TuIW5bJKkFUS5ekRSWGcFBnOly5hwZRVH1mxvxVtLiYxa3Un8LybNxFK44VP2pv2bzXoljUnGq6wPA+gjYJHyA5rpzEh+PtiEt0tdm5BB9OoUsa+eVaeaQQ8dfiIq2M/+PBhGY9siaZw9mOzyIuOlR0FLoy3HHM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1707485427; c=relaxed/simple;
	bh=8sIFxxTA+kFZT7SMBIXRaEJWo4dhzYR5M12NFQkTaLM=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=UMVgTZcZbf8ROlIKmYWklhxxZBoQUQkXJc6Mv+b00wS0eiXUWaWxIgvavNIxExBqZHRtcv9SWHtj6oZ0VHuG8j5mtH+IUELaA9G8Msr09c0g1nIeh+Bczjxhwf+/VY8c1znQfNCifyu7jxPMzafi6z45q3AW+uAasTRQALG+39w=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=opTZal+3; arc=none smtp.client-ip=209.85.128.178
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-yw1-f178.google.com with SMTP id 00721157ae682-60492003050so9991057b3.0
        for <devicetree@vger.kernel.org>; Fri, 09 Feb 2024 05:30:25 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1707485424; x=1708090224; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=8sIFxxTA+kFZT7SMBIXRaEJWo4dhzYR5M12NFQkTaLM=;
        b=opTZal+3GWton4PbVJOzkJLfu8s2Xz0QtWxMPN9DSLEEPLBJUlxg9I6Ox7ksXM2tnN
         QhZxGO5cvR2KO8+TYF+zwQlKPHQH8d6brgrJDkBfwYxt7r3UEQQjG4xL2JQ8fei9lYiI
         FCJuC7F4XkDLCGuTeb6mh3UbSABBh2O6xuzTf43ncToKgo5Xp7OL4A/ja3uUGZPTxjT7
         pmeHuhdSjTgJ8P/QqZWkarrBgovkT8dpJr8mAnHlylemZ34vQ1NVPQIgMCp0mm8o0B5i
         HL2wIWS8fAzKi1ECOToHZlByWmEcvoboaz+1EqmNqQ1THw2E3eLPSLzItDovHsCesF39
         f85A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1707485424; x=1708090224;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=8sIFxxTA+kFZT7SMBIXRaEJWo4dhzYR5M12NFQkTaLM=;
        b=Sck643NLE0BqzrhOv0fB+N5GKhJQ2qFFwrN8HsjRUKFL3eqFQXqDA9o+h3ZYmOQFvI
         XPa7Hg3G+mHvM54mZJTLSrrFY+ZLNynUT5CaRWD01oODsd94VHDYSJWLi9e/zxpTSyRw
         bwCZtUxXO0LcsJzW9/cMwxnAkZuYGoHOidBH+Jv84VrONVNO2tRl/R2uy22WOCVe1qdw
         iYPbANp0Sf0s6ilZNDVMFtU2YBwITbAY28ortYxNWXcSir1sEp+qbd3S9qs1S2a55lHM
         P71M75mQmSZ/VasE080WcSjt9v+JhPBl4CsxL54SJWVv7YpvLiHB3f+DFb5+/li0lsfF
         PMZg==
X-Gm-Message-State: AOJu0YxUbCFXdQK4vgWkdFZNRLgKF12iBEmKhWSBlASbi6Cu6OPLYYqr
	LwGjTkdBsZJtzXHFR72+lV4CCdNIUHpoEKOO4mZ0eoHIxFWProNeoARjWcZi1CFQVkc9VRnaIzR
	HEKRr1b00d+ph/HwlLK+KlhGwEKEOpOjdcEJQdA==
X-Google-Smtp-Source: AGHT+IHZCQ+5vaXpkmSIUlfItwQ9qMjUfRrkgkps5uTRejECLhETkBx+m8+gijhHiaD5kznd/7S8AjDjJU6Ow1aTtaE=
X-Received: by 2002:a0d:d8d4:0:b0:604:9427:e169 with SMTP id
 a203-20020a0dd8d4000000b006049427e169mr1481315ywe.27.1707485424747; Fri, 09
 Feb 2024 05:30:24 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20240208-realtek-bindings-fixup-v1-1-b1cf7f7e9eed@linaro.org> <0c47da33-3f50-4b31-87bb-3aefb01c0e47@linaro.org>
In-Reply-To: <0c47da33-3f50-4b31-87bb-3aefb01c0e47@linaro.org>
From: Linus Walleij <linus.walleij@linaro.org>
Date: Fri, 9 Feb 2024 14:30:13 +0100
Message-ID: <CACRpkdbfYnUDq3a+Q+nDgUdYZEg_vFSEvkS9S6axypkt52giTQ@mail.gmail.com>
Subject: Re: [PATCH] dt-bindings: net: realtek: Use proper node names
To: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Cc: =?UTF-8?Q?Alvin_=C5=A0ipraga?= <alsi@bang-olufsen.dk>, 
	Andrew Lunn <andrew@lunn.ch>, Florian Fainelli <f.fainelli@gmail.com>, 
	Vladimir Oltean <olteanv@gmail.com>, "David S. Miller" <davem@davemloft.net>, 
	Eric Dumazet <edumazet@google.com>, Jakub Kicinski <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>, 
	Rob Herring <robh+dt@kernel.org>, 
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, Conor Dooley <conor+dt@kernel.org>, 
	netdev@vger.kernel.org, devicetree@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Fri, Feb 9, 2024 at 8:47=E2=80=AFAM Krzysztof Kozlowski
<krzysztof.kozlowski@linaro.org> wrote:
> On 08/02/2024 23:40, Linus Walleij wrote:

> > Replace:
> > - switch with ethernet-switch
> > - ports with ethernet-ports
> > - port with ethernet-port
>
> Would be nice to see answer "why" (because it is preferred naming
> style), because what is visible from the diff.

I guess we eventually want to get to a place where we fix all DTS files
so that we can simply disallow switch/port/ports without ethernet-* prefix
so they become easier to read (you immediately know which kind of
switch/port etc it is).

At least that is my "why", also yours?

I can add this to the commit message.

Yours,
Linus Walleij

