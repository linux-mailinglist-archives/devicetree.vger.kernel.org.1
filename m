Return-Path: <devicetree+bounces-35902-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id E7AD483F28D
	for <lists+devicetree@lfdr.de>; Sun, 28 Jan 2024 01:30:56 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id A2CE3286869
	for <lists+devicetree@lfdr.de>; Sun, 28 Jan 2024 00:30:55 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 3C32739B;
	Sun, 28 Jan 2024 00:30:50 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="biZnbTlH"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-yw1-f173.google.com (mail-yw1-f173.google.com [209.85.128.173])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0186963B
	for <devicetree@vger.kernel.org>; Sun, 28 Jan 2024 00:30:47 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.173
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1706401850; cv=none; b=Fl4DWu7P1Ozk7NeoO8YGYXF+5xnqup0hdvyU5fDyHR0nAtCrtdWNA0z+R+6oBIIXnhTSwa+I70D0U4AfarmRfZeD8BdPltBfe335p4wCwgISbHY8vx5asDPAuZOjy7aM20NBmnBXgu3MfUkpyCyjKxVAYziKNDmcvbYszus5GSI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1706401850; c=relaxed/simple;
	bh=6XeWa9wReTzghX8am264WYPfkFIN/SSiF0UBjGJ3W+k=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=NFtfO23M4ETk9mCsxi2Fv3taphMwmFP5LNCzczWFMGKbvny3y+J+vVLwrLComeZAIuHXNkI0A28xjbzWZNPq4YGzchbDhvv6e0sIf2/4HeG0P+3D/61CJJM0MeQ6S6Q6O9drTSbfZPAv4qxZ08MaeFX8SNeaJqOPpRuO255jgjA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=biZnbTlH; arc=none smtp.client-ip=209.85.128.173
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-yw1-f173.google.com with SMTP id 00721157ae682-5ffee6e8770so21272007b3.0
        for <devicetree@vger.kernel.org>; Sat, 27 Jan 2024 16:30:47 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1706401847; x=1707006647; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=6XeWa9wReTzghX8am264WYPfkFIN/SSiF0UBjGJ3W+k=;
        b=biZnbTlHrEq91I6Zv/G8RfPNW1HlPoUVK7+0XNmxySddAq/gZFt36KUFk6eadAF94W
         5EB3iww3ZwdX0LQrcdb7enk7WKD4j0QiAYyxIzT0DHsgHDokvrgYRJqLhZrt1GZlY9N8
         bWy+NZDuZpgVNZCd00UZht54zVSap0vff+TYB361BGlIrqqSv7FSb1eZWFFiiJY7yOXm
         1FvoTiaBg1OwrIvsbitb/SNEzUO67KY4ohMyxhhf82XDbMVLK7rL+oL2xHJskwxvUi19
         79leAfmPNqnNdaoOGuYU9PwU4wxCzzYOsJcalxucmNt1TZf63zwT+yt6ku3h3UQPv0g9
         jjJw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1706401847; x=1707006647;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=6XeWa9wReTzghX8am264WYPfkFIN/SSiF0UBjGJ3W+k=;
        b=BWneBhvr2Y2eLFdaXj3FQhq22UBY/rwaaEKl+Ckgih/KtSwLUcJZ7eMIcHo6Sr2Yz9
         y0XsBj+230SXyftcXmAYe12XbiyICSkiQuMg88V2zu44gtWVkvyreL/kNOSsF4xE1mky
         YtZe4wo6gr5bPq5wJTjnZwr7ME7WQLxQUkiK1smULBxBMIbhTtso5sq+R1NNX1WNp0Hl
         VSyjGjL38Xb61iy20Ocrphtrb3tf+0etf5sQvVbOLlopj0CRvWKMUhOwc/I+SpmloJFY
         3XRZF+aV+yLVIUehJQcfdAGEMNSm9p8x3XPBWBp+/m7SuTKTrHp6BbHNuTS6wqwB2iGM
         grbQ==
X-Gm-Message-State: AOJu0YylKe9IhgaxGFPE4K3i5fuhudd5rpymOzfp+wQVHfRl6uMaF/UL
	hfz7H3fc4/pMzK7c+LXWek6FtT3zzHF/x1EROl3sd4V/HV4nnVmp4OjhUYNmWSx3CDzJe1f1fl9
	0p14TkrgSA0zLqWDCs5CJnPTUgJg5BiuMSmW2uQ==
X-Google-Smtp-Source: AGHT+IGxs3s4swA7aJvEB7pT6rtvh2/gd0hceFpjYEOEUxrbCgEYQOKDnDUlCO+e5gXGU0buzAnJVxVqviu2TJZaXKE=
X-Received: by 2002:a81:8450:0:b0:603:bb3a:cfc9 with SMTP id
 u77-20020a818450000000b00603bb3acfc9mr1244584ywf.71.1706401847078; Sat, 27
 Jan 2024 16:30:47 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20240123083511.21063-1-krzysztof.kozlowski@linaro.org>
In-Reply-To: <20240123083511.21063-1-krzysztof.kozlowski@linaro.org>
From: Linus Walleij <linus.walleij@linaro.org>
Date: Sun, 28 Jan 2024 01:30:36 +0100
Message-ID: <CACRpkdaSdB1TZ9qM6YwJTExNMw1W9Rb450kt=6tJLKUixEeDSQ@mail.gmail.com>
Subject: Re: [PATCH] dt-bindings: pinctrl: amlogic: narrow regex for unit
 address to hex numbers
To: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Cc: Rob Herring <robh+dt@kernel.org>, 
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, Conor Dooley <conor+dt@kernel.org>, 
	Neil Armstrong <neil.armstrong@linaro.org>, Kevin Hilman <khilman@baylibre.com>, 
	Jerome Brunet <jbrunet@baylibre.com>, 
	Martin Blumenstingl <martin.blumenstingl@googlemail.com>, linux-gpio@vger.kernel.org, 
	devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
	linux-amlogic@lists.infradead.org, linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Tue, Jan 23, 2024 at 9:35=E2=80=AFAM Krzysztof Kozlowski
<krzysztof.kozlowski@linaro.org> wrote:

> Regular expression used to match the unit address part should not allow
> non-hex numbers.
>
> Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>

Patch applied!

Yours,
Linus Walleij

