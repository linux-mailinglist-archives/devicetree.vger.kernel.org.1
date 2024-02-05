Return-Path: <devicetree+bounces-38748-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 9F8D384A0C0
	for <lists+devicetree@lfdr.de>; Mon,  5 Feb 2024 18:30:09 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id D18D71C220D6
	for <lists+devicetree@lfdr.de>; Mon,  5 Feb 2024 17:30:08 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 5FA254594A;
	Mon,  5 Feb 2024 17:29:26 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="jGGHfDpI"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-yw1-f176.google.com (mail-yw1-f176.google.com [209.85.128.176])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BCCCC47F6E
	for <devicetree@vger.kernel.org>; Mon,  5 Feb 2024 17:29:24 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.176
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1707154166; cv=none; b=mRstlFCScOGvgFgZYp3xfS3w5IigiBA3BjmsXL8fLdxQfmLltdvknOI2GjP/Jjfw7RiC5DNDNjk5NnJ+sovzDb1IC+xwK6e/MaS9QNmViLiWCQn60WoUqIkVG7wA7jaV/CKqbZIdFmfDoiTtylWVGzRveYY4xSC1iKp+20iKLAI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1707154166; c=relaxed/simple;
	bh=O4lFQwozpj8qAdWZazPZDdbBDVBBZtmrxmGiue5/8bI=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=J4KX3WzWx04NfloyEWATVwRe8Y4BZdVx36NnJzSLNpkxaTBVfrdu+jjVPAZpazDZBnadDTQcJR0crUjjCO8lXjYlXEngjlpDrDY9msZj8gQy9C/YcHTcsJMExZxpk/9KqMvxVb6lxV9ev+l/3G9QFMn9II7l10L9vz+YiVh3AG0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=jGGHfDpI; arc=none smtp.client-ip=209.85.128.176
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-yw1-f176.google.com with SMTP id 00721157ae682-6040d9e52b9so43724427b3.0
        for <devicetree@vger.kernel.org>; Mon, 05 Feb 2024 09:29:24 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1707154164; x=1707758964; darn=vger.kernel.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=Ki2OMFRAxrlw+OBGxKHQKH7ycmBBVTQveh0bKzrpyb4=;
        b=jGGHfDpIPKXwA/1gASJ6A3aLKhMqWOXGRuAxd5Ev85vpeBNRlZbVvfon9O/ZKBRzW1
         0AAuxW+Ju+KNclgXBz+l6OfyzKGHvodtGPnjurVAgvnPAihz57JrJQbV35bNpS7MGlZy
         DU1wapqW66LrNbbFqzHSoQR5iX4oxUjlgE5YUPVo0wfvPX1VOIpDQyy+NZjEUQu1xsJl
         Z9YtCnfeIilxPcpOCzFREOFh/zkXUZr31o38EelOudaJ/fPfeegbvWxOgUZMrQM6dQFU
         Mn0K1ZnUzuk22T1BSqtSJrqBm1r2CnBFFk7Sw2Bw75HkpZdOvi5eh7tpTh5pD6465AFR
         1w/Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1707154164; x=1707758964;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=Ki2OMFRAxrlw+OBGxKHQKH7ycmBBVTQveh0bKzrpyb4=;
        b=LiaorRXwyWo0BL09+dPVg0jrh7WGg7cP6OfeKSwvuPvAfrQCiOui1bevagC/ofUqHY
         QZMJrSqeGFavdh6DRgVe5GzyeuMKzELB4tinOFrRHhmT1tCdz4q+E7DWysQxnHcJ6v5l
         o8479uoU1Kl62vfMdFfcZdro3Rs7z73RftootkWvqCePavA2X/7nCfeIbV8RPvtwQAtT
         FbEGaM8SpCWE8Z/GvSAhYe+NTmZmtXTI//NI3MT2GwNG1H0NMCldwj9jGeaq1CxAybvZ
         pCybhUDOWjschYogKamPwxWXtC5OYm9I09CVZAGxCm/PFz+KwYqrIYPnGhohcadx+UoQ
         vTog==
X-Gm-Message-State: AOJu0YwnNocrfxEGNLge3FfI2ayOJqwmfeNwq2M6fWckkIBufHw/5n7e
	tcDifdo0q8UiStw4TViWuVTtVu8Yi5peMO0HEX3nbLgCKY8FRH8bIS3hYoV8SV9+lmpStfYROBk
	RuXYDv2RceQuHsNVBx3tNESXzoE8xWNIcrG6Y2Q==
X-Google-Smtp-Source: AGHT+IHJ0bSwgVgKi9CF80Bt1Cco6PZ9KNY0zznjDRrM1zGPsHC4Y3lV/AsXifZpn4hO8tJQZqwqC2/GIdcA4wM2N6Q=
X-Received: by 2002:a0d:dbc5:0:b0:602:cf62:6590 with SMTP id
 d188-20020a0ddbc5000000b00602cf626590mr151874ywe.34.1707154163772; Mon, 05
 Feb 2024 09:29:23 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20240201-8qm_smmu-v2-0-3d12a80201a3@nxp.com> <20240201-8qm_smmu-v2-1-3d12a80201a3@nxp.com>
In-Reply-To: <20240201-8qm_smmu-v2-1-3d12a80201a3@nxp.com>
From: Ulf Hansson <ulf.hansson@linaro.org>
Date: Mon, 5 Feb 2024 18:28:47 +0100
Message-ID: <CAPDyKFqyQxo+SSYb_+Nf3zcPcmhzCJSp69gJ15qexbuD_mJ=Yg@mail.gmail.com>
Subject: Re: [PATCH v2 1/4] dt-bindings: mmc: fsl-imx-esdhc: add iommus property
To: Frank Li <Frank.Li@nxp.com>
Cc: Rob Herring <robh+dt@kernel.org>, 
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, Conor Dooley <conor+dt@kernel.org>, 
	Shawn Guo <shawnguo@kernel.org>, Sascha Hauer <s.hauer@pengutronix.de>, 
	Pengutronix Kernel Team <kernel@pengutronix.de>, Fabio Estevam <festevam@gmail.com>, 
	NXP Linux Team <linux-imx@nxp.com>, Wei Fang <wei.fang@nxp.com>, 
	Shenwei Wang <shenwei.wang@nxp.com>, Clark Wang <xiaoning.wang@nxp.com>, 
	"David S. Miller" <davem@davemloft.net>, Eric Dumazet <edumazet@google.com>, 
	Jakub Kicinski <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>, linux-mmc@vger.kernel.org, 
	devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
	linux-kernel@vger.kernel.org, netdev@vger.kernel.org, imx@lists.linux.dev
Content-Type: text/plain; charset="UTF-8"

On Thu, 1 Feb 2024 at 21:23, Frank Li <Frank.Li@nxp.com> wrote:
>
> iMX95 and iMX8QM have smmu. Add property "iommus".
>
> Signed-off-by: Frank Li <Frank.Li@nxp.com>

Applied for next, thanks!

Kind regards
Uffe


> ---
>  Documentation/devicetree/bindings/mmc/fsl-imx-esdhc.yaml | 3 +++
>  1 file changed, 3 insertions(+)
>
> diff --git a/Documentation/devicetree/bindings/mmc/fsl-imx-esdhc.yaml b/Documentation/devicetree/bindings/mmc/fsl-imx-esdhc.yaml
> index 82eb7a24c8578..0d8ed9d055ffe 100644
> --- a/Documentation/devicetree/bindings/mmc/fsl-imx-esdhc.yaml
> +++ b/Documentation/devicetree/bindings/mmc/fsl-imx-esdhc.yaml
> @@ -162,6 +162,9 @@ properties:
>        - const: ahb
>        - const: per
>
> +  iommus:
> +    maxItems: 1
> +
>    power-domains:
>      maxItems: 1
>
>
> --
> 2.34.1
>

