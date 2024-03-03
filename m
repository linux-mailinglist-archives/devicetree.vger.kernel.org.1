Return-Path: <devicetree+bounces-47960-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 0C32286F6DA
	for <lists+devicetree@lfdr.de>; Sun,  3 Mar 2024 20:41:47 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 05FCC1C20A28
	for <lists+devicetree@lfdr.de>; Sun,  3 Mar 2024 19:41:46 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 1F89879DAF;
	Sun,  3 Mar 2024 19:41:40 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="pDabq1Fo"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-yb1-f178.google.com (mail-yb1-f178.google.com [209.85.219.178])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7266167A19
	for <devicetree@vger.kernel.org>; Sun,  3 Mar 2024 19:41:37 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.219.178
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1709494900; cv=none; b=piJr1jFqzxQ0j63hn2FDbuSagIyTgBBW3EjhUAPrAXKb2lUNxodAMuvIZTvjlfKDYsCl+pefuLu0NyMEhpO4PrBsziH8x1QAJHiPg3+NR8X+1ZOpNS7T6cEwh2ottW5heFiA35gE6UtmW0NiMzdltv0g9DG65P+m/jsk2wvoOsw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1709494900; c=relaxed/simple;
	bh=yH8Iyl/clwz7ah3TSa82CMm2zdGUdQJuFN+sjwh1jTU=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=biHDT6ei1areXjeR6PTYK/4hgy7rPfoYsyIh012mXLMyhT08Oyi44ll0qRkkI8/2aJpQlOhmoa7SkF54OASGBm/s0M/yjrV4rRClIe1o8lU3yl+vzu0pPD36mzJwakKQOMGm9xDV3zHZVNhj5sR/GsEzBQlzSjXuXPdu8InzZ7E=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=pDabq1Fo; arc=none smtp.client-ip=209.85.219.178
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-yb1-f178.google.com with SMTP id 3f1490d57ef6-dc6d24737d7so3679572276.0
        for <devicetree@vger.kernel.org>; Sun, 03 Mar 2024 11:41:37 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1709494896; x=1710099696; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=yH8Iyl/clwz7ah3TSa82CMm2zdGUdQJuFN+sjwh1jTU=;
        b=pDabq1Fo/E/uxjkEV8Ab4n1p8htShtGbdpCEQpAZ4qWBViqsPV4MLX4pa5O5WwEzPj
         UntQzmeeJRL0ZidY/8TjHrrSHK61norratjQHq7pFdSN+4ZkEZaKZ5vuAEBaVXMbQreP
         tZrY5xrxymzDdUUiDk40Z4NAmLo4ftk82iz5I7qlIa3E3K9QtbcPu+Lpb18uoQVFAO8J
         IHJ7ZTogFFjFQgBRwPKSsSmQmrOjUdACHEL22mtbOKgSVHvd4EGpPnROhqYN71+6Sapz
         7pHRHs4j8+rHIgHrocvKl/PZ4cwN1eYpyPITfk6auMTznadsej7bb03FuQzOzTfLynDM
         Jr8w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1709494896; x=1710099696;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=yH8Iyl/clwz7ah3TSa82CMm2zdGUdQJuFN+sjwh1jTU=;
        b=qTP0WzXfDb3RH37qCHHmRLWJXFNB3mMd1aiV1z7iES+KFIq0qzQtsP/7BxD57+qrlC
         NdYz6QqbfQDQ4Dl6Fd5uQnEmEzOY2I3rfpXRwg3l3IjXmhEl2MBi74AX5169jMjMVwjE
         48gHBFSjsOX9ns3EACtcGcfDRGGAcY8fYq+tNkQ7umfRS5ZVe1oleHsx11VQbzDMbsf+
         jm5KjRrATA3dw/EO8y8bdYbu2xQJph8IfFzidZheVastuUrNsblsL3DviDsUip+oGn9B
         YARDEzJO/OCpLPjW704IhZCf4Q/Z+9IOz4W6On1V+t2omb0VTJB1SGd1VPNXd6vplYOB
         N9+w==
X-Forwarded-Encrypted: i=1; AJvYcCUXU5QJZJVh/vQmrDLIZBH/v2cWa/TdBJRfWMkyVuZPfkONWb24irug53PhhxWc4GElkw6E2/JAMZR+GwF3YE6BYNI4UtHreFiXgA==
X-Gm-Message-State: AOJu0Yz9E+kEY+fbzSIMx3X2rehIayF1UpFmnwbHzEQdc/HNdVxlsdng
	2XLtnZCz+2dWQRXrFYorFbZjrRIclXKJxOfod5c4Orj+i4NBhfp2BZgUzZq/6382CZcsJdcoT+P
	+imQ3v6V2RtP6j2Ldtikvvu12kWG2pciG/8hzBg==
X-Google-Smtp-Source: AGHT+IHW0/nslv9u7HI0yXnFPSD2Ds4CD4VUyxbU3QrHmEzNEYwVNoNeNJMBdXZvU06WqbJKs8wj2rVhJ6JRSfpVQwA=
X-Received: by 2002:a25:824a:0:b0:d80:68d1:b826 with SMTP id
 d10-20020a25824a000000b00d8068d1b826mr4576752ybn.6.1709494896554; Sun, 03 Mar
 2024 11:41:36 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20240223112223.1368-1-zajec5@gmail.com>
In-Reply-To: <20240223112223.1368-1-zajec5@gmail.com>
From: Linus Walleij <linus.walleij@linaro.org>
Date: Sun, 3 Mar 2024 20:41:25 +0100
Message-ID: <CACRpkdbAjJQbAnB3E5HYkd-Bmb3NhBR_p5K=BHtRy+DhRFa6Pw@mail.gmail.com>
Subject: Re: [PATCH] dt-bindings: leds: Add LED_FUNCTION_WAN_ONLINE for
 Internet access
To: =?UTF-8?B?UmFmYcWCIE1pxYJlY2tp?= <zajec5@gmail.com>
Cc: Pavel Machek <pavel@ucw.cz>, Lee Jones <lee@kernel.org>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, Conor Dooley <conor+dt@kernel.org>, 
	AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>, 
	Matthias Brugger <matthias.bgg@gmail.com>, linux-leds@vger.kernel.org, 
	devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
	linux-kernel@vger.kernel.org, =?UTF-8?B?UmFmYcWCIE1pxYJlY2tp?= <rafal@milecki.pl>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Fri, Feb 23, 2024 at 12:22=E2=80=AFPM Rafa=C5=82 Mi=C5=82ecki <zajec5@gm=
ail.com> wrote:

> From: Rafa=C5=82 Mi=C5=82ecki <rafal@milecki.pl>
>
> It's common for routers to have LED indicating link on the WAN port.
>
> Some devices however have an extra LED that's meant to be used if WAN
> connection is actually "online" (there is Internet access available).
>
> It was suggested to add #define for such use case.
>
> Link: https://lore.kernel.org/linux-devicetree/80e92209-5578-44e7-bd4b-60=
3a29053ddf@collabora.com/T/#u
> Signed-off-by: Rafa=C5=82 Mi=C5=82ecki <rafal@milecki.pl>

That looks helpful.
Reviewed-by: Linus Walleij <linus.walleij@linaro.org>

Yours,
Linus Walleij

