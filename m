Return-Path: <devicetree+bounces-156858-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 200B6A5DB60
	for <lists+devicetree@lfdr.de>; Wed, 12 Mar 2025 12:25:46 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 620A4177358
	for <lists+devicetree@lfdr.de>; Wed, 12 Mar 2025 11:25:45 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 7E02F23ED71;
	Wed, 12 Mar 2025 11:25:07 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="OSxP8NG/"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-yw1-f177.google.com (mail-yw1-f177.google.com [209.85.128.177])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9125A23F39F
	for <devicetree@vger.kernel.org>; Wed, 12 Mar 2025 11:25:04 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.177
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1741778707; cv=none; b=Wp8bMo0xmraowvW4yZSjifN/uw/CKfvmojbOtGfJJOvwlThILo4eL5MK7E6Dscr/Z/PD0GCnnjV2TnV+xQMuXWhnOIEmTM5ONQChTKvVauJh4xW471/2yuEWSlGkv5v+4DMaZEAoaliYlrTd+v9qnwsqhkHaGdc7gN7+QUn1vvo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1741778707; c=relaxed/simple;
	bh=KZOfhNvGBAR8H62mSv+Cnr7UPfTIt95Y31gyzfttSyk=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=oFgUs7I839+QikkF0G4bmKzGLJfRBRU+wxIRUHmEYf61zzTcXAZlBMddTzTUA3Yv+nNf8kFSe5ev8Tdm7OmbHfYQmdUamc1GpKcH0PmnkXcQqhsAuIWDg2Yon/xHSBSI6NiXiLp50+vDVvvzDWYAApX1urgFVhMN7U9X19EPOUU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=OSxP8NG/; arc=none smtp.client-ip=209.85.128.177
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-yw1-f177.google.com with SMTP id 00721157ae682-6efe4e3d698so61914397b3.0
        for <devicetree@vger.kernel.org>; Wed, 12 Mar 2025 04:25:04 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1741778703; x=1742383503; darn=vger.kernel.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=RAyMzA/EpimoKgZu8On+/pcgYmPCkV2jR9c+DuBL0OM=;
        b=OSxP8NG/YruoBusSECCaQSmlndpuks8ST1i+s+tXMCLht+pvx+cE9a8v65Xo9DodRU
         EKXDk+mD3SPq/G0tjHjr9awYLeK/tqMzCl+13G/JTLByWAj8N7NHNLrRf5sGXAs/6yzm
         78Dn9VoAJLBMHQClVJw+zzmwyF1EuzUnyLEVrJhkzWIkENN2I6wNu1yYDrJsdLbOZTy+
         XBnHXY3bmA0xXdIzjJ+VHbI5+ZFFsJxS17nuZdHolNGmHQXRtz9pjj9Wxh/PBYxvrcLV
         gE9jDKZgt0SkznH7ehVXFLl7E38rwhPft//nGRalmRCjNmxtm9kcOwFKPrWwlwvwExM1
         yYTQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1741778703; x=1742383503;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=RAyMzA/EpimoKgZu8On+/pcgYmPCkV2jR9c+DuBL0OM=;
        b=sQoMdCu6bun3Vs1Fu3JSxQYjuofIZGevE7/ywBO1/Y+VAMT3SbCY7tuMh2uxrarNd+
         X3dih0rAifyKkRERKUnjTf/xMou5hZBaiZjLKXRJdF9CY420bPCDtO6wTm6ma60wXT0P
         51eKRW24C2vpg/IeNsHjBamn2JsIeON3p7XseGk1g2MzOl0izFElCBzF1NNyAdLB6dbn
         bEY1uInKdtEn8JcfYYbSxap5I8bXXFpZsB7VZ7Xc17SfsOCmt9xCHzPtOXNZ7F84rkK1
         aGNIjye50QiGAzccdpMd1TqxOB2gCjJHIm513hBjKtRNaxNLX1Lm2q7HZ3ad04htZi+a
         j32w==
X-Forwarded-Encrypted: i=1; AJvYcCWSY5yj7/2fpvih+BGCKTn/l0YBACjWq9/E4FtDeMuAg26c3EFqo1B6Lu4wDhzHPyvSCfvJrWRNZJJq@vger.kernel.org
X-Gm-Message-State: AOJu0YyoPwXRmaYVfB4D+Av88M8llrATittaxK2dabvx/zCiG/sw8Tav
	bLbfv1XXOB+2h0AHFDRbES0dFLkrm0/bPOOKev7KIA1NsL4MZI2Crw6WVvh6U6jPcp7dmOSEpk0
	wrw8LNyUsr75zOb7bngoamXHWJFSxv4yI8ax9NoGfrUEt78cr
X-Gm-Gg: ASbGncvZC9cdzrxVjelsprrWdx8GY1WdlN9IiA1sV0DGPjv0upIT6WpuR/fo7hOJTC3
	cEkeoYoHBcOGX3HNZ9GJdNbiD21GravkhjAeMqLPYTYqj52uzc8U9mOvc6mwVEy+/VLaq0MDGug
	hbXLDvbez+34Gg7z/8FYe/8PyqPWs=
X-Google-Smtp-Source: AGHT+IGglu9wcUZQJ7kM7L4REyiuLkmFGiD8FrS6mR3Xkylx8tygAZpPYRnV6JQzsp7VhJrt3avxrAJ6Y8EDAb/0jS8=
X-Received: by 2002:a05:690c:4287:b0:6fe:d759:b156 with SMTP id
 00721157ae682-6fed759b590mr172175717b3.2.1741778703631; Wed, 12 Mar 2025
 04:25:03 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20250306170937.242183-1-Frank.Li@nxp.com>
In-Reply-To: <20250306170937.242183-1-Frank.Li@nxp.com>
From: Ulf Hansson <ulf.hansson@linaro.org>
Date: Wed, 12 Mar 2025 12:24:26 +0100
X-Gm-Features: AQ5f1JoI6EhIkJvZ2urcM945k8zoD09K83RZ6y4RdDZ4NA6PxGMieT1lQ5GBlVM
Message-ID: <CAPDyKFprhKa-XqJgfPjphuBCcn4ra2Gj0VewZ8iGqjYAYc2CFw@mail.gmail.com>
Subject: Re: [PATCH] dt-bindings: mmc: fsl-imx-esdhc: Add i.MX94 support
To: Frank Li <Frank.Li@nxp.com>
Cc: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
	Conor Dooley <conor+dt@kernel.org>, Shawn Guo <shawnguo@kernel.org>, 
	Sascha Hauer <s.hauer@pengutronix.de>, Pengutronix Kernel Team <kernel@pengutronix.de>, 
	Fabio Estevam <festevam@gmail.com>, 
	"open list:MULTIMEDIA CARD (MMC), SECURE DIGITAL (SD) AND..." <linux-mmc@vger.kernel.org>, 
	"open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS" <devicetree@vger.kernel.org>, 
	"open list:ARM/FREESCALE IMX / MXC ARM ARCHITECTURE" <imx@lists.linux.dev>, 
	"moderated list:ARM/FREESCALE IMX / MXC ARM ARCHITECTURE" <linux-arm-kernel@lists.infradead.org>, 
	open list <linux-kernel@vger.kernel.org>
Content-Type: text/plain; charset="UTF-8"

On Thu, 6 Mar 2025 at 18:09, Frank Li <Frank.Li@nxp.com> wrote:
>
> Add compatible string "fsl,imx94-usdhc" for the i.MX94 chip, which is
> backward compatible with i.MX8mm. Set it to fall back to
> "fsl,imx8mm-usdhc".
>
> Signed-off-by: Frank Li <Frank.Li@nxp.com>

Applied for next, thanks!

Kind regards
Uffe


> ---
>  Documentation/devicetree/bindings/mmc/fsl-imx-esdhc.yaml | 1 +
>  1 file changed, 1 insertion(+)
>
> diff --git a/Documentation/devicetree/bindings/mmc/fsl-imx-esdhc.yaml b/Documentation/devicetree/bindings/mmc/fsl-imx-esdhc.yaml
> index b9b9995705290..b98a84f932772 100644
> --- a/Documentation/devicetree/bindings/mmc/fsl-imx-esdhc.yaml
> +++ b/Documentation/devicetree/bindings/mmc/fsl-imx-esdhc.yaml
> @@ -57,6 +57,7 @@ properties:
>                - fsl,imx8mp-usdhc
>                - fsl,imx8ulp-usdhc
>                - fsl,imx93-usdhc
> +              - fsl,imx94-usdhc
>                - fsl,imx95-usdhc
>            - const: fsl,imx8mm-usdhc
>        - items:
> --
> 2.34.1
>

