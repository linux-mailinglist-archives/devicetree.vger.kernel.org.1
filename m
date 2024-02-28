Return-Path: <devicetree+bounces-46850-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 3610186AFCE
	for <lists+devicetree@lfdr.de>; Wed, 28 Feb 2024 14:04:53 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id CAD8E1F21FEC
	for <lists+devicetree@lfdr.de>; Wed, 28 Feb 2024 13:04:52 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 3B0DC14A081;
	Wed, 28 Feb 2024 13:04:15 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="zKeF63px"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-yb1-f177.google.com (mail-yb1-f177.google.com [209.85.219.177])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9631214EFF5
	for <devicetree@vger.kernel.org>; Wed, 28 Feb 2024 13:04:13 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.219.177
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1709125455; cv=none; b=OT6OVJAIXM+1lPdKxFKG6D/3Zwj02/PpB6gZZe+ELbsSMh4N2dl71rwLjcP7bhMeYWXkePQNm7Aij5ugWh1F51TAz8hwWBBGtyjkuN8/mT527113TA2+nYmrCOYgnNlRX10Yszv1LrznRGTqIDH6W7d4OP2n+MrIlVM4aWRFvGc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1709125455; c=relaxed/simple;
	bh=Cdy6St+TAumTxcMKiWP3rQKGFwXjSr1a5rEWEah7bhA=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=Sd/eAf1hiRTdZ9DDZVUuPYDi919RCKe8ZA7VSS3DF+F5f5lYv4OHhVdS7o5fIFvvSJk5hVukAFxsTeW+8Ep9hTU5eIs8TV0RQpCDBhKYoeQdAvx5pmb9LOfmpZYgQ831UWaYvunRT/2QXD+Z1+GCc7XPTxhVuMmGFYe+9hcrTSA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=zKeF63px; arc=none smtp.client-ip=209.85.219.177
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-yb1-f177.google.com with SMTP id 3f1490d57ef6-dcc73148611so5729754276.3
        for <devicetree@vger.kernel.org>; Wed, 28 Feb 2024 05:04:13 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1709125452; x=1709730252; darn=vger.kernel.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=IPWk4N9bdPXdKR4Ei2myz2DuKAxPeauHNUmWL9ZIWn8=;
        b=zKeF63pxHKPF2yRiXrYHQOw3dq5jXpfIE1AM1R9b7tMky3wyexxz/Yfy0IKKdSBdqH
         TOtTwF9iDEhIISf5W+0niaZ1zvqEElZATxPmk/Lz2ME3ybgm9cNp2aTxMJ89fXBeMcwt
         Nt5FcMKumvpdbO7DycngoIFI+7TXVwtLDilYK1ed6z7zpIlcSlJpEWR7G0lZd4KzOvdL
         tnk4SM9dlZmy+BxG0QpZ9l/HY/ezp/Yq9uHRvxz/PbVo4DUnHQrb2OHDeYyKuzIGsfi7
         eJrw8hfGcjXOhL3juEXANY5Ray0gvVb9oGO/48M3CQ8yIRbikTdJIjN8/+AxMaX9klye
         BZrw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1709125452; x=1709730252;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=IPWk4N9bdPXdKR4Ei2myz2DuKAxPeauHNUmWL9ZIWn8=;
        b=YGSsm2GUdL6AyMx/dMJnbKj6u8fX3pJYfcRIqvJOrmJiA9ApONWlxjVOgC+28zJSjw
         NS1qKsCtWQoI08dcUDq3Hee/Wm/ZPUmqMLVXSanDmMifds+KZzZ5JXywozk9chtDMNjY
         ssUn0hhImgBiAWqDZvjozOkE39Jb9ouv08yD8rFSagFU3Plc4roRsnJ2kgKDsPw8b7wr
         yamywGg5EHuxllLzdzs7p9earFpOz/WVi2N+GcsFpQgdZ3G/CUDhwcUnctEW2+aWMPBH
         2QYfn3KT6C8+lFRVVm6w/yEqisxbXbJMDtntpmCUkufe5uRDQxjN+U9gBaMtwt7cs8rg
         dyeg==
X-Forwarded-Encrypted: i=1; AJvYcCV6NvhNXbfkUIC6mpcO3NsTQ96z4cTH0LmzB+pgpo7nKxFA04AijUdRymg38VN8M4NqFqLlOCzCpvfX79uSpDDKYILcrEico0rKsQ==
X-Gm-Message-State: AOJu0Yz88V+szFPYVpIBDuprw6E3ZEgiMks2nMN7kkQ/7z2Ei/yLqjHy
	OlSKxS5UqNB7WoK87uak/vXrGbVR7SE1GsdCiQ4b/EY2VFdFrd1J1/UiS50mOx9Q161VqR0Uq89
	w2oZB964FriIuvjbWRqDCyErwvc+cVdi0FVAiUOxc//dMdOUb
X-Google-Smtp-Source: AGHT+IGf021TO6N0A+Jn2pGdfdFuuxCfKPfqVCGX0Uaf82k6lo+cEMKalwjn9R3wNeAVL/LJosMsp6k5luz1m2Bj3lo=
X-Received: by 2002:a25:bc86:0:b0:dcc:e388:6db6 with SMTP id
 e6-20020a25bc86000000b00dcce3886db6mr2493381ybk.55.1709125452103; Wed, 28 Feb
 2024 05:04:12 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20240221184602.3639619-1-m.felsch@pengutronix.de>
In-Reply-To: <20240221184602.3639619-1-m.felsch@pengutronix.de>
From: Ulf Hansson <ulf.hansson@linaro.org>
Date: Wed, 28 Feb 2024 14:03:36 +0100
Message-ID: <CAPDyKFryo0vLS-t9XmA5=xAE27JQGh787f+-DGzMQWTdmBufLA@mail.gmail.com>
Subject: Re: [PATCH] dt-bindings: mmc: fsl-imx-esdhc: add default and 100mhz state
To: Marco Felsch <m.felsch@pengutronix.de>
Cc: robh+dt@kernel.org, krzysztof.kozlowski+dt@linaro.org, conor+dt@kernel.org, 
	shawnguo@kernel.org, kernel@pengutronix.de, festevam@gmail.com, 
	linux-imx@nxp.com, linux-mmc@vger.kernel.org, devicetree@vger.kernel.org, 
	linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="UTF-8"

On Wed, 21 Feb 2024 at 19:46, Marco Felsch <m.felsch@pengutronix.de> wrote:
>
> Some devices support only the default and the 100MHz case, add the
> support for this to the binding to avoid warnings.
>
> Signed-off-by: Marco Felsch <m.felsch@pengutronix.de>

Applied for next, thanks!

Kind regards
Uffe


> ---
>  Documentation/devicetree/bindings/mmc/fsl-imx-esdhc.yaml | 5 +++++
>  1 file changed, 5 insertions(+)
>
> diff --git a/Documentation/devicetree/bindings/mmc/fsl-imx-esdhc.yaml b/Documentation/devicetree/bindings/mmc/fsl-imx-esdhc.yaml
> index 82eb7a24c857..e47253e4eac4 100644
> --- a/Documentation/devicetree/bindings/mmc/fsl-imx-esdhc.yaml
> +++ b/Documentation/devicetree/bindings/mmc/fsl-imx-esdhc.yaml
> @@ -173,6 +173,11 @@ properties:
>            - const: state_100mhz
>            - const: state_200mhz
>            - const: sleep
> +      - minItems: 2
> +        items:
> +          - const: default
> +          - const: state_100mhz
> +          - const: sleep
>        - minItems: 1
>          items:
>            - const: default
> --
> 2.39.2
>

