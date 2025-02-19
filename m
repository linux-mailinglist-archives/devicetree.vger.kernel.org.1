Return-Path: <devicetree+bounces-148321-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 738AFA3BAF6
	for <lists+devicetree@lfdr.de>; Wed, 19 Feb 2025 10:59:25 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 952701887413
	for <lists+devicetree@lfdr.de>; Wed, 19 Feb 2025 09:59:27 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 1F9E21D5170;
	Wed, 19 Feb 2025 09:59:18 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="BpO64UFb"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-oo1-f53.google.com (mail-oo1-f53.google.com [209.85.161.53])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D60F6286291
	for <devicetree@vger.kernel.org>; Wed, 19 Feb 2025 09:59:15 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.161.53
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1739959158; cv=none; b=g2SEWzCrCk9V/iha4LILS7V+R8GEI2zcWUFjNtiykgxfz3SQREYVZkDWyCIMvwR1ant/d5YM2F6nlFDv0IgbTlvUAZVJitvhQzNaC8d1jHitabShxdahmvO0nuBekjTZylmFcoXTS76dgtTtRB1KM63dR4MhhrHbiGXylmdMdwc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1739959158; c=relaxed/simple;
	bh=FhaKrLYYFvH6JlBWj6iAfNEu2nFL5Z0xJ5LSfPsqzcY=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=UJtGYhS8dQJT8v8OH/oiLISbANDXN19xNXDQkztxirlfc202GdN04yvUpBEBZyBHlyVzbScm4M50PCRIoLv6NgLi1TsfmtGw206ZzZ/FmIXoNanknfBMVVkmRLTyn0fSSwgDW0XIk/xBQdc+usEJO/tgmdt6V2KULVdWAEhRZIc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=BpO64UFb; arc=none smtp.client-ip=209.85.161.53
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-oo1-f53.google.com with SMTP id 006d021491bc7-5f89aa7a101so2562023eaf.2
        for <devicetree@vger.kernel.org>; Wed, 19 Feb 2025 01:59:15 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1739959155; x=1740563955; darn=vger.kernel.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=D4ZmBE3k4+dA0yLJE7EIrqUujBLBu3hVMfqxrFcWbfY=;
        b=BpO64UFbnjMRx/6L+nVqHYe3AfCiBG/5l4cnEQnM4+m5xCL36iZhaHtesV0BFFcRZE
         eSe8BnKRU6XwSQn1RGrRP99GXHUFDTrtFctEWeXKrgg+z3OTX63/eyiW6QxdUom9BSbe
         crXNgu7biaetcx+KlOGV9D9REfl0kqBqB+t+f5FbsjtzTt0VBfYr2XSeMeSSEMBknPG1
         WGVrFaDcezkQZcZ04I4APN2LJNiRTM7jbM7xc02VJnD8fExC3JenpQsVRcP2JWEZskbA
         QcGMinX9JXpkibAlP4S4JNM+vM/GlRpKbkqdAIVq2J2S29vo99zjS2AbRkhWkfH9M44f
         4JMg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1739959155; x=1740563955;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=D4ZmBE3k4+dA0yLJE7EIrqUujBLBu3hVMfqxrFcWbfY=;
        b=eKOmdMYkhHXPiua2sFGz6IukhcAH36dFzJN6Dt8Q+wHM8y/CXtH/M/yB7wRjf5/O9H
         Ghh4tx2eywRo5hZK35SI/pg4qKayLVsFkJWyvJwu2QxAijm8vduGd2X+e3N5twsLvSGQ
         E1uWYFYPb3uV2MmNCpDAdSqouSjsbiXVHof+krONPxnomneDs/MWrz63bk7Rpvo5EJjy
         zBqz+Qvc2Uez9jtxvp5SjtyWXdsz3InwCV1CtN954O31+XwGtqzjy/so++8kqNnAAPnE
         5ZtyxOuPXDUrRtafJehrpPZr14mLN22NabLJVcumoBv/eQV/NwW2sTW0v8Q09q4c4Jbt
         NfVw==
X-Forwarded-Encrypted: i=1; AJvYcCXV5EuwtZw5jrr632GAPSfseHeDs/l8HyQbnsLkaRPOWZLd70YdnqtXNe8S4xeuNrg14cqBFij1dGkN@vger.kernel.org
X-Gm-Message-State: AOJu0YySYuJdjQXn1WQsli6XOTKq47N6JW5gMDdavMLKfgjQavInH9XN
	xemfvJvyh69SXDdTHz7dSNKVvIeZ1niksVMoK9Pzsb2ReoiR1oeXm5C5MtolJ3vAzxeTkxXUlLX
	9baduoeEo4YZqg7qGd1F7XQ++gGc5mZfHhPSSww==
X-Gm-Gg: ASbGncvw3r89lpljvQSFwxGry308Nh2cJRXUFZeOySHHhE117wkyGTFws5GAN2rCZPL
	rEpFIIp8HwaG++Dc4PFaVScgSdqeHuZ/JdPKiG2KKHepo5r33qYjyDz5c0crYTawAK1/6GwCrGj
	s=
X-Google-Smtp-Source: AGHT+IFxGDj5iXV1hVx+bDjQHTZUVRM73dPTifEk8a7TEg/x0Tcm1arIcMDlwwFyHGQfiRO96zZV23RSVt9oTTe+p/Y=
X-Received: by 2002:a4a:ee1a:0:b0:5fc:dd26:a087 with SMTP id
 006d021491bc7-5fcdd26a30cmr8214839eaf.5.1739959154922; Wed, 19 Feb 2025
 01:59:14 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20250219085726.70824-1-krzysztof.kozlowski@linaro.org>
In-Reply-To: <20250219085726.70824-1-krzysztof.kozlowski@linaro.org>
From: Peter Griffin <peter.griffin@linaro.org>
Date: Wed, 19 Feb 2025 09:59:02 +0000
X-Gm-Features: AWEUYZny13PhyIgLlHGS6LqU655W9VTKBSuguA9ge6dMXGv73qgyazJplG-xt5w
Message-ID: <CADrjBPrg4eV+fT9XsuMTwG3WprPq5Qqre9+XTwYURCp_==6diw@mail.gmail.com>
Subject: Re: [PATCH 1/2] arm64: dts: exynos: gs101: Change labels to lower-case
To: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Cc: =?UTF-8?Q?Andr=C3=A9_Draszik?= <andre.draszik@linaro.org>, 
	Tudor Ambarus <tudor.ambarus@linaro.org>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Alim Akhtar <alim.akhtar@samsung.com>, linux-fsd@tesla.com, 
	linux-arm-kernel@lists.infradead.org, linux-samsung-soc@vger.kernel.org, 
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"

On Wed, 19 Feb 2025 at 08:57, Krzysztof Kozlowski
<krzysztof.kozlowski@linaro.org> wrote:
>
> DTS coding style expects labels to be lowercase.  No functional impact.
> Verified with comparing decompiled DTB (dtx_diff and fdtdump+diff).
>
> Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
> ---

Reviewed-by: Peter Griffin <peter.griffin@linaro.org>

