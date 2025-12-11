Return-Path: <devicetree+bounces-245826-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [IPv6:2600:3c04:e001:36c::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 22C8FCB5A30
	for <lists+devicetree@lfdr.de>; Thu, 11 Dec 2025 12:32:21 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 24147300CAC9
	for <lists+devicetree@lfdr.de>; Thu, 11 Dec 2025 11:32:20 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 50EB727CCEE;
	Thu, 11 Dec 2025 11:32:18 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="QQX57O8O"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-yx1-f46.google.com (mail-yx1-f46.google.com [74.125.224.46])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 801D421FF25
	for <devicetree@vger.kernel.org>; Thu, 11 Dec 2025 11:32:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=74.125.224.46
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765452738; cv=none; b=MyRakU/brBUBabGt7ekS6W/fV28GD58FYAcW9QqnlMEmQJ6yQ/KQdd/e25KTUJmoRbQQD19TX8rfZZjnlcYDYR/Hn5pG7T6SQKknWb/G2hTdS+tct9Bb/6AU/NavjPrYNga6cu9UE420g1UmPZSV8tYPdMZqFv5+4oddfzDyt8E=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765452738; c=relaxed/simple;
	bh=NchHZPDCVbR2zKgQZ6II0ne2TAbumnNcDZoeVADXcKk=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=i19LtZqG7Y5zwtn/gs25S36KgImB/0/U49YHE3kDBxUiDZua4buKDa2ehroZvy0PP9imw29pVs93ncKd9V1/jS8aaVtFTQwJvwro4S3ZjXwo3AmUNgKIxKPYdgB8TypEbstaLBf2bbyhg4Aau+JMOZVUyDi57tKCJbdczja49B0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=QQX57O8O; arc=none smtp.client-ip=74.125.224.46
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-yx1-f46.google.com with SMTP id 956f58d0204a3-640e065991dso749924d50.3
        for <devicetree@vger.kernel.org>; Thu, 11 Dec 2025 03:32:16 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1765452735; x=1766057535; darn=vger.kernel.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=vAvAduq0/fXRtJhO0coRhdPgTbJSI1bNLnmdQnPpfuY=;
        b=QQX57O8OsKuVkASZOy3qxp6if78bDgDbkjwSeD7uaKrKurvNp1ku/3MDnCE9Bf6Mym
         C+NxsqKpUWN8GaO+RapzoLI/tFEh9UW9QqyYNX0PmN9kAFmFVCqFATZR4TX2+JART4Ij
         Ww1J4foYdr6vNtt8a7tOuoiWCzh7oZhR6S70cb/Kv0KsQTQyCYa60HSECZoFp77O9N8H
         VRb0rfvZ7BoxG92nyYSOGgqg5xoWMAP23FDSPo9rP75amoW8qhfaCLkVnVG8eHhNcGb9
         vncS2Ps5PoPRn4RlbNAcuewgWJFWm6evYv1K+ckfssLI9BeMqOCvPe8FxXjDgx8FcCr/
         O/3w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1765452735; x=1766057535;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=vAvAduq0/fXRtJhO0coRhdPgTbJSI1bNLnmdQnPpfuY=;
        b=PPh1lApvPERJEuzlJ/IkOjbK+q3O7qkFFTILY01SNlwKzjtUOs9OlbePoBapJ7TtUr
         LGqltxq1rUsgwg0LaCe9rY2We1m+vbWi7zmEvi8mD51C3/i49aUnzCPPVA4X+fGvWYvl
         3O9sGLkZfavEtdYihGcIddxzYij9WxR4reME5YbaHT1m/kENfELnZkH4JP8zxbg44+h+
         iUu+17OqEYAWWsRT8uxJCDFi482mpdw67mOrpiZM6KOtUCFCA3EpCHTh5i4gHciv0H4L
         6xW4IVBVOPkUBD8+wqRwCuZjgt8sXAwvIiCnrQCUFpPLxz/H9sptJqVNW5Rw5Uuk4C9Q
         WXEQ==
X-Forwarded-Encrypted: i=1; AJvYcCWRP5bPtF4zzRl0tyS44hSC65qe1c/m4lkzNcrw2WJETLLwqXPrZukKm31QpEgYkY9RmWKals4GQkdj@vger.kernel.org
X-Gm-Message-State: AOJu0YzaGrj4mDPT3ViK97wok+8P62szC3s+R1fneH6WD8JD7iU99SBB
	7oYKJ02ZfKgN1F/tOmgGZ85Vjvf1Q4GJZI12qRGZaTzHjynDRz8gKfl6CR69dQst3zwh42YG21k
	elBhjYiUz26i54V5qV2F8+EAr+0QcQHDDYUa/SBtwdw==
X-Gm-Gg: AY/fxX54Z61Ee/f0mCw9gPL+FvxZ6723+h1bGyhOi+zx519HxoiTlk9/3vb8Lx6xIsd
	ThWFg+W8fcgX0VjoMR6Vl/Mc1IV3N3+jFs4NDVmjDFM+SOE/QmZ803FfZVj9ojGQXzdq+YE3JYk
	vDvjlt/9owzCUGSH1crGBHeSypm4U2b4GsdSajNFJY2k58EhghHLqFdPic7IRRxoLn/4wxuE11N
	mepdq+/0Bb/SLtF84pQe6Jo0jdE+utCtEnW7vNRg/R9QKVSy/TO9KqMJadTCFAzXVYasVB+bywq
	zQIfmag=
X-Google-Smtp-Source: AGHT+IG8bNJ7GVmxCtKmkFoNf2sieoYkv2mgOPVq2xJndKf37hgXCewb4eZsd1D0ffqnRQUAE3M4kyCHgtlEMcMmN4I=
X-Received: by 2002:a05:690e:191b:b0:640:db57:8d95 with SMTP id
 956f58d0204a3-6446eb3aa4emr5006636d50.63.1765452735377; Thu, 11 Dec 2025
 03:32:15 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20251211-dev-dt-warnings-all-v1-0-21b18b9ada77@codeconstruct.com.au>
 <20251211-dev-dt-warnings-all-v1-6-21b18b9ada77@codeconstruct.com.au>
In-Reply-To: <20251211-dev-dt-warnings-all-v1-6-21b18b9ada77@codeconstruct.com.au>
From: Ulf Hansson <ulf.hansson@linaro.org>
Date: Thu, 11 Dec 2025 12:31:38 +0100
X-Gm-Features: AQt7F2pSIRmWc3gz3aUnvZCl6QhFMFW_pPE_bkwFhLy-FhbClf3aqE2_J1pJY4M
Message-ID: <CAPDyKFrbS_3XRTSuexFxTpP1ydgvfFvXNv_tninnTqum7+92ZA@mail.gmail.com>
Subject: Re: [PATCH RFC 06/16] dt-bindings: mmc: Switch ref to sdhci-common.yaml
To: Andrew Jeffery <andrew@codeconstruct.com.au>
Cc: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
	Conor Dooley <conor+dt@kernel.org>, Linus Walleij <linusw@kernel.org>, Joel Stanley <joel@jms.id.au>, 
	linux-hwmon@vger.kernel.org, devicetree@vger.kernel.org, 
	linux-arm-kernel@lists.infradead.org, linux-aspeed@lists.ozlabs.org, 
	linux-kernel@vger.kernel.org, openbmc@lists.ozlabs.org, 
	linux-gpio@vger.kernel.org, linux-mmc@vger.kernel.org, 
	linux-crypto@vger.kernel.org, linux-iio@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"

On Thu, 11 Dec 2025 at 09:47, Andrew Jeffery
<andrew@codeconstruct.com.au> wrote:
>
> Enable use of common SDHCI-related properties such as sdhci-caps-mask as
> found in the AST2600 EVB DTS.
>
> Signed-off-by: Andrew Jeffery <andrew@codeconstruct.com.au>

Applied for fixes and by adding a stable-tag, thanks!

Kind regards
Uffe


> ---
>  Documentation/devicetree/bindings/mmc/aspeed,sdhci.yaml | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
>
> diff --git a/Documentation/devicetree/bindings/mmc/aspeed,sdhci.yaml b/Documentation/devicetree/bindings/mmc/aspeed,sdhci.yaml
> index 9fce8cd7b0b6..d24950ccea95 100644
> --- a/Documentation/devicetree/bindings/mmc/aspeed,sdhci.yaml
> +++ b/Documentation/devicetree/bindings/mmc/aspeed,sdhci.yaml
> @@ -41,7 +41,7 @@ properties:
>  patternProperties:
>    "^sdhci@[0-9a-f]+$":
>      type: object
> -    $ref: mmc-controller.yaml
> +    $ref: sdhci-common.yaml
>      unevaluatedProperties: false
>
>      properties:
>
> --
> 2.47.3
>
>

