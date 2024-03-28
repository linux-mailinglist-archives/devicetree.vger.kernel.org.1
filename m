Return-Path: <devicetree+bounces-48675-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 9E12D873085
	for <lists+devicetree@lfdr.de>; Wed,  6 Mar 2024 09:19:33 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id B44D91C20E09
	for <lists+devicetree@lfdr.de>; Wed,  6 Mar 2024 08:19:32 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 535445D485;
	Wed,  6 Mar 2024 08:19:28 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="wlieIIjx"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-yw1-f179.google.com (mail-yw1-f179.google.com [209.85.128.179])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id AA9375CDFF
	for <devicetree@vger.kernel.org>; Wed,  6 Mar 2024 08:19:26 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.179
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1709713168; cv=none; b=WFKsPhXdJXbzBvZdttG0uUJwWqxg3m2br516W+F6QBWnWTVO8YGa+3EFMcuAK1ovRSuHsXVE+UlLI1kCL7yaoU0NC55PpG3pKYikZowJK5vKQDAJc1erUV3P5kV1XIjuI7G6Az9NpcRxc+fqmmt5o7tzy2w9/liVBjhIEFILAIY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1709713168; c=relaxed/simple;
	bh=dnIZwZqxXCXcBxKA9fSsUTi+xcmsYC0FICFHX3lYD/U=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=IeYZaZlkkTUuM6eQ4WF6Bz2Ch0EKlQ9VTUlT21IezkqRtmjnZRZQJ/7fRym77RrW90SyrIjT7gAGidXFEbUy1z/eT0d/loiosmMJZD8X6YDuHAdnfwd4hbZg/e/Mu+kRW/XXHJkNRULHY4WLXm98epWh6jdcfc5brdIk9XT22ug=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=wlieIIjx; arc=none smtp.client-ip=209.85.128.179
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-yw1-f179.google.com with SMTP id 00721157ae682-6093e067220so62271537b3.0
        for <devicetree@vger.kernel.org>; Wed, 06 Mar 2024 00:19:26 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1709713166; x=1710317966; darn=vger.kernel.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=EoKuwXMEvsZ8GzqAgZzSLOfu2yUWrCyM8WtXmP98Z6I=;
        b=wlieIIjxYtJE4k0vhWD9b2MWzWqtDs5YXzKp7XHDH0wDOcWM6tqzrIY6NlGUqd2pyQ
         AKmc3Yqz+WNCGCIfMDpla/AwZ83X9j4/MYEQTgOQlQwHfpIH3FvFDXpu9985EvGQbOnp
         wXLDezXFYoh2r2TIeM8GUKmkRDkERQIjnTHRooXH20G4oNZd2JNAuBuutr69L4A37teG
         Fxl+c/3a26ICJKHV1ofK7h5JIiKcTBD9TN1rX2yZMAX+8ri3fE4Abmar1953ZzIIT9g7
         4ZuL01auyQyVeO68Bwmep5xgxGm2RmDIT44fW0Y7XezxSQGi0lGg2AKSpii8FyJEMyNV
         oPFA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1709713166; x=1710317966;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=EoKuwXMEvsZ8GzqAgZzSLOfu2yUWrCyM8WtXmP98Z6I=;
        b=umw0FeVEjwRkGPrNcz2C/1ADe19NyiTWkIkiJI66/6lfoiiTwBuX2iKz6yW4O7cvGi
         u2GjeGtPxVx8uOSSjz4/XIM20NDJ3N9lHqXtfexmSyJyB5559EBBVbjvwULnMS+q+1Ex
         rZJ5vsY5awEGFWdfDC/31J/T9WYFPnVTqiv4cR8xcC0fSQlQJ24uoPP9xU+0pLlFvLIz
         YOCVtHw9pmxP7DPaQjhemJnyEWcJ2LNhG+l9XNBB8wtRv2VXWze+cbPXnKeIQyHPYn/z
         F5PLAGDMdrP8wpHyjrFiIPwhH6q2I0qekzUgCy4raGDuEPxj3C6+2VdRTl6WhrGWiYer
         8uUA==
X-Forwarded-Encrypted: i=1; AJvYcCV7To8JRaeyq2ctO/WHPSJzveduMmdPkwWZxa+g//Wy2xPDi10kE1LuxwuYkHt5dLqw3/RXTqJvlIxztLSraaSqj3V7aKmrIMPX0g==
X-Gm-Message-State: AOJu0YyW1tuRoJjVRYmOXxyZ9W4TLegwgP4FCyZy8coJ6ovbKu3YIuDc
	hNjFuL8T5aa/FCU4vnvGfWauyK358Y8dm6bWCxavC8XA43NCGvnvn86rSo0aNaaJi8161uWsKoY
	xO0UvThwiNRPyRu2Q7QlJLPTmJEFrht6GdunnlQ==
X-Google-Smtp-Source: AGHT+IElFEojtdTOEWHxvLU4AlUsAf4idoItp77LksSXRcXLDan78ssF5m3Ud++5mk9YINDXssdh1ZVmthJv/1gjt0Q=
X-Received: by 2002:a25:bccc:0:b0:dc7:4776:e31 with SMTP id
 l12-20020a25bccc000000b00dc747760e31mr11485475ybm.24.1709713165691; Wed, 06
 Mar 2024 00:19:25 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20240306-castor-changes-v1-0-2286eaf85fff@z3ntu.xyz> <20240306-castor-changes-v1-5-2286eaf85fff@z3ntu.xyz>
In-Reply-To: <20240306-castor-changes-v1-5-2286eaf85fff@z3ntu.xyz>
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Date: Wed, 6 Mar 2024 10:19:14 +0200
Message-ID: <CAA8EJprMWbfYuXPi_6e2HjM0W5y7BocLsCUDDu40=xG7eDwK1g@mail.gmail.com>
Subject: Re: [PATCH 5/5] ARM: dts: qcom: msm8974pro-castor: Rename wifi node name
To: Luca Weiss <luca@z3ntu.xyz>
Cc: ~postmarketos/upstreaming@lists.sr.ht, phone-devel@vger.kernel.org, 
	Bjorn Andersson <andersson@kernel.org>, Konrad Dybcio <konrad.dybcio@linaro.org>, 
	Rob Herring <robh+dt@kernel.org>, 
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, Conor Dooley <conor+dt@kernel.org>, 
	Andy Gross <andy.gross@linaro.org>, linux-arm-msm@vger.kernel.org, 
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"

On Wed, 6 Mar 2024 at 01:18, Luca Weiss <luca@z3ntu.xyz> wrote:
>
> Give the wifi node a generic node name 'wifi'.
>
> Signed-off-by: Luca Weiss <luca@z3ntu.xyz>
> ---
>  arch/arm/boot/dts/qcom/qcom-msm8974pro-sony-xperia-shinano-castor.dts | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)

Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>




-- 
With best wishes
Dmitry

