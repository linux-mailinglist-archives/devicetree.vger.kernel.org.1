Return-Path: <devicetree+bounces-108415-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id E7439992941
	for <lists+devicetree@lfdr.de>; Mon,  7 Oct 2024 12:32:18 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 2C9C01C229C8
	for <lists+devicetree@lfdr.de>; Mon,  7 Oct 2024 10:32:18 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 1E3961C878E;
	Mon,  7 Oct 2024 10:32:13 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=9elements.com header.i=@9elements.com header.b="WmIZ72pb"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pj1-f41.google.com (mail-pj1-f41.google.com [209.85.216.41])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 92D691C2324
	for <devicetree@vger.kernel.org>; Mon,  7 Oct 2024 10:32:11 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.216.41
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1728297133; cv=none; b=TEBfIdTAwi88HXk3PAlpfBEZrd6BgD8HNhnYjYErXpqlInZhNDod3lFU1ho6f1BpQI/PwVbLkZO8dX2pvRuvZj9M3O02rSbRyJigWLljoWPlw2kzcwdLJ6m5W7/RmMm5xUdSru+0ldnizdogCh4fWhYYhSDAxDAiUpXuy3SNmmA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1728297133; c=relaxed/simple;
	bh=4BUOU3QnSe9dGH5JoK9BkTSTcts/bc1GoFyAUFX9VM4=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=Bf3h61rVOH6NPH7XQvZPeiOTeSQO/WTkHtY6oifIxw5gXILMvdysK8Hd3886cXV+pqXm5vGH3kJH6Bfe4523vVcqos7sDidjjhVUmIFG1VYPRvgJA7HUo6MyIHk6gTRnSdi0Fz8nVWgt8x9yjgzU/6kpkcwi3UW/xiDKxUjne/g=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=9elements.com; spf=pass smtp.mailfrom=9elements.com; dkim=pass (2048-bit key) header.d=9elements.com header.i=@9elements.com header.b=WmIZ72pb; arc=none smtp.client-ip=209.85.216.41
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=9elements.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=9elements.com
Received: by mail-pj1-f41.google.com with SMTP id 98e67ed59e1d1-2e137183587so3525018a91.3
        for <devicetree@vger.kernel.org>; Mon, 07 Oct 2024 03:32:11 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=9elements.com; s=google; t=1728297131; x=1728901931; darn=vger.kernel.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=7LvHP5fo67hgb9VcVRv0wFxCNn8LjWM9uhRHbO3WbUo=;
        b=WmIZ72pbhfWNdlE4a/K1vfh+oveHEgCbK8UgSEVFwx6kuNRZ/chfj0MD4M5kvsMHi0
         yVp7mjtkoGhafm45UIgMS/PFX8QIL1GhbZBFtGYPduA4ONLs/raOSO9K1/qVJcSEhlDO
         DRvP8NuzVFrd7gL3kFnpo3ihNS8C35heerDLYV7j+1zQaLK10hHqHPl/QZ31plliWFng
         c9D8QPHsqdDZSaSAYk0P/qnb2qrxFw7tsLWKpVJ6RnAPiWQ0H7o4m8DssDREObiFDHuC
         /2QVp0DbYCfPHWHXeGaK2annlgh3yL6/mJuCfd7X5QMioN+fB7LH60BGSqT7osuUc9fn
         xZiw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1728297131; x=1728901931;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=7LvHP5fo67hgb9VcVRv0wFxCNn8LjWM9uhRHbO3WbUo=;
        b=Uw+vif0mjHjKIrqyOZBHbwM8b85bdCQJFZFDmD+8Gr8GWvINnvLo+uQIXAtP5qu+NS
         gAZDZRiEQsntmqv/k3bihPHvxsIsyKzOFhZGU65j0Csc95KDPe3vhNqv1cc/d2fUl5pt
         GEwPwqMXycBwjJWDHMsnDmvUmAx5mpcSz/EUmRzya9Lg9s9asIEsfGZPhJgXxwEK1sCm
         FO+AZ+19E6bD8CcO+yDk9eAoa+ee4bcDQ7fepxs+Lmon/ANdsDwmwtlbsvqlfWauuPqQ
         Se2jm0FtlA9MlCuRGsZZQns43VkruUmhaMmSdE5Awj4NomYlt3FxUVw4bJhZRGN69JiD
         zPjg==
X-Forwarded-Encrypted: i=1; AJvYcCUAHL1UPkdTPq41h0qa8Z8OKjEUdxOT2QwP0aNvuvtTkn0YpQwt8hqjsMxOJ22jR4p4plwKTB6E4QCy@vger.kernel.org
X-Gm-Message-State: AOJu0Yxv99Y1NwHl2w7y5yEr3jnqWFveMBOFLwQrDvW8uuigZU/Tu0I+
	L6QnQ2YumiiI/8vvyhBZCB/77UzzaW5gdwwepv0ctU7qkmSlbcpdFI6HP3Wkp6RfomdZZiBbfFT
	Rt3P3Ych4MDDLQl4vOd5uzlKV2+qK716d0piSIA==
X-Google-Smtp-Source: AGHT+IFTY63/DLU3Wj2tdaOKPpjw15exbuhnusAMK03pLzADjpWiknDc5KMRIELZ+sDZO65UzW0pNLJlWGwyqrOMhuc=
X-Received: by 2002:a17:90a:8a91:b0:2e0:80e8:a319 with SMTP id
 98e67ed59e1d1-2e1e63bf55dmr12819746a91.34.1728297130812; Mon, 07 Oct 2024
 03:32:10 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20241002084023.467383-1-naresh.solanki@9elements.com> <xuczpa6nrxjwo7hjn62ehblnzc5twupghbg4uuwp5vfczw3gmg@x23yhbxjccpy>
In-Reply-To: <xuczpa6nrxjwo7hjn62ehblnzc5twupghbg4uuwp5vfczw3gmg@x23yhbxjccpy>
From: Naresh Solanki <naresh.solanki@9elements.com>
Date: Mon, 7 Oct 2024 16:02:00 +0530
Message-ID: <CABqG17gbXGRBDHzt8-rt6_n+37oMhjmJGxCLEqqM48GjMrKNrw@mail.gmail.com>
Subject: Re: [PATCH v3 1/2] dt-bindings: arm: aspeed: add IBM SBP1 board
To: Krzysztof Kozlowski <krzk@kernel.org>
Cc: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
	Conor Dooley <conor+dt@kernel.org>, Joel Stanley <joel@jms.id.au>, 
	Andrew Jeffery <andrew@codeconstruct.com.au>, devicetree@vger.kernel.org, 
	linux-arm-kernel@lists.infradead.org, linux-aspeed@lists.ozlabs.org, 
	linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"

Hi Krzysztof

On Thu, 3 Oct 2024 at 13:47, Krzysztof Kozlowski <krzk@kernel.org> wrote:
>
> On Wed, Oct 02, 2024 at 02:10:17PM +0530, Naresh Solanki wrote:
> > Document the new compatibles used on IBM SBP1.
> >
> > Signed-off-by: Naresh Solanki <naresh.solanki@9elements.com>
> > ---
> >  Documentation/devicetree/bindings/arm/aspeed/aspeed.yaml | 1 +
> >  1 file changed, 1 insertion(+)
> >
> > diff --git a/Documentation/devicetree/bindings/arm/aspeed/aspeed.yaml b/Documentation/devicetree/bindings/arm/aspeed/aspeed.yaml
> > index 95113df178cc..8c04d6eaec08 100644
> > --- a/Documentation/devicetree/bindings/arm/aspeed/aspeed.yaml
> > +++ b/Documentation/devicetree/bindings/arm/aspeed/aspeed.yaml
> > @@ -89,6 +89,7 @@ properties:
> >                - ibm,everest-bmc
> >                - ibm,rainier-bmc
> >                - ibm,system1-bmc
> > +              - ibm,sbp1-bmc
>
> Keep alphabetical order.
Sure. Will update in next patchset. Will also include Ack-by for the patch.

Thanks.
Naresh
>
> Best regards,
> Krzysztof
>

