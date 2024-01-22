Return-Path: <devicetree+bounces-33714-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id 4A7D88361CE
	for <lists+devicetree@lfdr.de>; Mon, 22 Jan 2024 12:34:19 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 66B09B236A3
	for <lists+devicetree@lfdr.de>; Mon, 22 Jan 2024 11:32:12 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E7EC34655A;
	Mon, 22 Jan 2024 11:19:28 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="uEZXiBk2"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-yb1-f171.google.com (mail-yb1-f171.google.com [209.85.219.171])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 10D9546547
	for <devicetree@vger.kernel.org>; Mon, 22 Jan 2024 11:19:25 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.219.171
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1705922368; cv=none; b=pM7CAIk4yOEMMYodQrm6e00iM2+4RL4pDUj3BkRW24gY4/WBDZlOnWilikUH0qHWpAvs2Ure4ha1pfPxw6SqKlEoLlBUoAYKBzOfjChgDXpHUYLGIwaXcHZfTzbeqAwhI4lmwmS4r4BHFPwTqOBLa0Y5ZzEv9oFkiat4Fls95wQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1705922368; c=relaxed/simple;
	bh=jNHCWw3WjlkSEZRJ7ufnyaZwg0nsdc0yG/XIpjumcQQ=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=Skfeh6WvnBw6jnACvYpUel9jW5NmjqrDJ5TK6ZYeGD3ny6iEU7EcerRaTrfeCsQ9hk5IiAurfw98GhB/UpMyhi6YeOdnDc443P+b4pbOY4OryyH1pfdmOLGshMuuH9OoWiAXaX7cTtDqMBXG/JbNNJ5q/mJjIJChwJHJdKZq54s=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=uEZXiBk2; arc=none smtp.client-ip=209.85.219.171
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-yb1-f171.google.com with SMTP id 3f1490d57ef6-da7ea62e76cso2209883276.3
        for <devicetree@vger.kernel.org>; Mon, 22 Jan 2024 03:19:25 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1705922365; x=1706527165; darn=vger.kernel.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=DjGNrBbtJ6ZdRNqm2CfKscefqbyQaHrbwOzpcX0gGKI=;
        b=uEZXiBk2UBGP+ahT97hrxlHsQ7i1mcF2SzyueXdi3wu0xOORi6jY6LQ88dkormG9B6
         /Vdk761j2XB7rBKUtJrtnpTpBjKAgYjYzv9PPEdDOnbPYoSk86nACzbh+UdrT+6EK3vK
         aMyPZZa859/GBSrNL5cwIaiO3ZRn+Cfz3PqK7j9SIF4Sg8Kq6b02GJ5zE++YZd4oYgE6
         rpKehkpTbmE2QBkO1wKlxHsBjvGv06YXZk9p+WTsZwWUNdp8+tmhms2bjoLGWS8Zqo68
         Z+7Vaith6hxgb1yqzSsXw+g2o7dXI7xeNUMJ+NYnfNwifIH3acvDyUPBOXqjruqzXRzI
         ai6g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1705922365; x=1706527165;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=DjGNrBbtJ6ZdRNqm2CfKscefqbyQaHrbwOzpcX0gGKI=;
        b=GS8ZA7QWwTurZI4hJIUSS4hFB1IVkFnUq5BlHtNS6LllLFlA+FUW2/l/9ksEYNv9l1
         Nx3DcC9aRexcoRWspYfpPlRDtiSXD/RNDcxEiLmDAHZFXcSZROcZIyUr8WjUKxxKxXJ4
         qlUFMcw1thtTIaqoLXqeDopbBDtHMIiOeapbb3G6XnweEuky7OscdtBKRr8+cyRSxnvv
         Hj4ARm1Er6E+YpVcNxFuvly3V4wTO6SsylhrQdfOymI9g9+2sslozQNh8NAIffz7zrCn
         iC0ElFtrVgrKuG2rzwKq2bJjBHaVx7SrtDaY/A3+RLI88yEsGnOVUZTzLLJus62/+1c2
         AsKA==
X-Gm-Message-State: AOJu0Yzz9fMaQYg71uk5a35m+phKUTB7jy/pj2wkIcW6C4S9ftxcgq+a
	x6ujPbia01JEgNRCz7uoERz3IA/9ZiAgDnnYR8Ln3NJou4HSTdG6we/Aq7FEGH59kmdzJHJRVk8
	olzVdY03HPdUHDtBtGDOgt1qaNzN4lw+HjzHQ1g==
X-Google-Smtp-Source: AGHT+IETeFU7o/bacSqz6mq7P8PAhi+QJN5FuxtRzOe4hfEbxRCFRPWqRvzeRZJuP4XQwexHHRuWXgq1GBOPJoErIzU=
X-Received: by 2002:a25:360d:0:b0:dc2:6600:4eac with SMTP id
 d13-20020a25360d000000b00dc266004eacmr1369699yba.116.1705922365085; Mon, 22
 Jan 2024 03:19:25 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20231222165355.1462740-1-peter.griffin@linaro.org>
 <20231222165355.1462740-2-peter.griffin@linaro.org> <4cc6df4c-504c-499f-be83-3b40d1ee6240@linaro.org>
In-Reply-To: <4cc6df4c-504c-499f-be83-3b40d1ee6240@linaro.org>
From: Peter Griffin <peter.griffin@linaro.org>
Date: Mon, 22 Jan 2024 11:19:13 +0000
Message-ID: <CADrjBPo6YqxDAKUe629Z3e0MtmEgyTqEzVLLc1bZ8xJe_dw5SQ@mail.gmail.com>
Subject: Re: [PATCH 1/3] dt-bindings: timer: exynos4210-mct: Add
 google,gs101-mct compatible
To: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Cc: robh+dt@kernel.org, krzysztof.kozlowski+dt@linaro.org, 
	daniel.lezcano@linaro.org, tglx@linutronix.de, conor+dt@kernel.org, 
	alim.akhtar@samsung.com, s.nawrocki@samsung.com, tomasz.figa@gmail.com, 
	cw00.choi@samsung.com, mturquette@baylibre.com, sboyd@kernel.org, 
	devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
	linux-samsung-soc@vger.kernel.org, linux-clk@vger.kernel.org, 
	linux-kernel@vger.kernel.org, kernel-team@android.com, 
	tudor.ambarus@linaro.org, andre.draszik@linaro.org, 
	semen.protsenko@linaro.org, saravanak@google.com, willmcvicker@google.com
Content-Type: text/plain; charset="UTF-8"

Hi Krzysztof,

On Mon, 22 Jan 2024 at 11:00, Krzysztof Kozlowski
<krzysztof.kozlowski@linaro.org> wrote:
>
> On 22/12/2023 17:53, Peter Griffin wrote:
> > Add dedicated google,gs101-mct compatible to the dt-schema for
> > representing mct timer of the Google Tensor gs101 SoC.
> >
> > Signed-off-by: Peter Griffin <peter.griffin@linaro.org>
> > ---
> >  .../devicetree/bindings/timer/samsung,exynos4210-mct.yaml       | 2 ++
> >  1 file changed, 2 insertions(+)
> >
>
> I applied remaining two patches. Let me know if I should grab this.

If you have applied
  clk: samsung: gs101: register cmu_misc clocks early
  arm64: dts: exynos: gs101: define Multi Core Timer (MCT) node

then if you can also take this one that would be great.

kind regards,

Peter

