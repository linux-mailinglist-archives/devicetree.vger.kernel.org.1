Return-Path: <devicetree+bounces-46852-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 4CB6086AFD7
	for <lists+devicetree@lfdr.de>; Wed, 28 Feb 2024 14:05:27 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id D90971F21C51
	for <lists+devicetree@lfdr.de>; Wed, 28 Feb 2024 13:05:26 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 025391534E2;
	Wed, 28 Feb 2024 13:04:36 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="lItC6RnK"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-yb1-f170.google.com (mail-yb1-f170.google.com [209.85.219.170])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 69804151CD4
	for <devicetree@vger.kernel.org>; Wed, 28 Feb 2024 13:04:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.219.170
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1709125475; cv=none; b=dEqvxLaQ96jVJoJbDQV7l4qAwOiDYn1L116d1sz0P4lfoRgRbCrcmCq5zX6x4FbQNtYxhwlLOp34j7sjI34bHP9Z1kBAyvyXB6t9RojNlSrL4QPeGV0Qi3N559Z4cpotTajNWPvJ1Y5YcWhOuFbz8Cpvoo87hdOnk1QdBFlWxnE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1709125475; c=relaxed/simple;
	bh=FZB5bau4XS+CfL8L2++Na5Xn+x8eJG95NbayiKGChrY=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=YGynE6cTxWSJa84nKo4Xvl0U/JbV8oMNMhnrwWZdmBjb0J2s7z64J4/7BDCIgS2eQyv2s387oQ04DRumctrEv0avLLoVSloOykKloL+FN8y5coYIv6TfdpRRVT/UoviTdanSGciBCTNt9wGLTLWEN1O6QcWKwzUbi5oKzwYet1k=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=lItC6RnK; arc=none smtp.client-ip=209.85.219.170
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-yb1-f170.google.com with SMTP id 3f1490d57ef6-dccb1421bdeso5459723276.1
        for <devicetree@vger.kernel.org>; Wed, 28 Feb 2024 05:04:34 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1709125473; x=1709730273; darn=vger.kernel.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=P0H9CjwYlrXXMXgZMM3y9R8B4NNOlSm7B7Wu2SJEefo=;
        b=lItC6RnKEVIC9+iqU7C7yBuLcvQCQh4R/xFe62spLD1BiCvgmPdlpxX0AIUEMrO5w3
         1Wby7KWTl/2TuShPNgc3knDicqHATsGn0jZ5dLv/BQc998sxSpgrjiDN8S5jQAA+cUpT
         TBD7RE9HFcBo5O3y54+ylDzWQh5uQhIJD5HE+MFqc4XDOoRl0jtROSjf0ZyNC4mPTPvq
         5auwcOMCU284Xm5fIvEAvrA0rTnW+JM5U4vwdis5iXKfHoLHx26YM+oRbt/BG/DIOm2+
         BXraVm1cAUSrY61TEX1eFmuG6ufdKvusweyBJRL0qCmqt+TPpZIisRWMYDQASfXfzwwO
         X8pA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1709125473; x=1709730273;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=P0H9CjwYlrXXMXgZMM3y9R8B4NNOlSm7B7Wu2SJEefo=;
        b=MIcy3dGtKC2vbyrCRHnSvjhGUtM7TZcL+CIwaV++cI0TpyRNlHbkLD7B5EuIqfjgK6
         U5YfxWmUaNXBHbhN3uFjC6DUcPBMetCIHNnerBZyEr9BO99dmlgb3vgjRv3yQtbTNbXk
         SCs9uj3d8yT5EbxeCqIR0zjMIch9tNKNY5AJv67vqOA3w7gdGTI7PVWGgxO9WpJp6wWK
         b9k899v67jkxke/U16/pGnbqWCi7ozBPIgcDRGf9zI11IH9J6t8cNPU87+URi1JV86WU
         OooU+QsneqpUzWTXlHJGATeYahw0dTxepYxHx6X11jxgg73EHyYMFT7dPlfus8BmaRE8
         GOuQ==
X-Forwarded-Encrypted: i=1; AJvYcCVGo++bOuHwpces8+tnE0joLln0iY/nd2NASLwPAZq4+fmkETB5yWaPmhJEpuC3MM99FXAcZ1o1sVzCu5LqfLxYXLKTq+umncdVFg==
X-Gm-Message-State: AOJu0YzvIiEXbOkM5JS7zZKQ5eBgakh58q1DE3+VgC2eKkYv6l6g+vXe
	poFmfAT7HUFD5/8vjmqzLqDw2nN8q5Uh/6Af+k0NUTQQWAW04pH4a+iBCH5Qo7inNRiUARb/HwO
	J53HHIPDt6v0MumL3BomGAKleHh9NuLgL7c64gQ==
X-Google-Smtp-Source: AGHT+IFMY1lIqqJ8UyC7C9qZOEupjve8bfAWSVebXLSJSsfev7YwuqlxCnewklXnZfsQy4eqjDlfkEIXJTMwgj5NBbQ=
X-Received: by 2002:a25:ae8d:0:b0:dcc:d455:2ab9 with SMTP id
 b13-20020a25ae8d000000b00dccd4552ab9mr2499464ybj.27.1709125473477; Wed, 28
 Feb 2024 05:04:33 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20240222143911.979058-1-festevam@gmail.com>
In-Reply-To: <20240222143911.979058-1-festevam@gmail.com>
From: Ulf Hansson <ulf.hansson@linaro.org>
Date: Wed, 28 Feb 2024 14:03:57 +0100
Message-ID: <CAPDyKFowNCc5TgG1DcfduzaK-XQYboAxpE9D4Nr=JHgFebgDcw@mail.gmail.com>
Subject: Re: [PATCH v2] dt-bindings: mmc: fsl-imx-mmc: Document the required clocks
To: Fabio Estevam <festevam@gmail.com>
Cc: robh@kernel.org, krzysztof.kozlowski+dt@linaro.org, conor+dt@kernel.org, 
	linux-mmc@vger.kernel.org, devicetree@vger.kernel.org, 
	Fabio Estevam <festevam@denx.de>
Content-Type: text/plain; charset="UTF-8"

On Thu, 22 Feb 2024 at 15:39, Fabio Estevam <festevam@gmail.com> wrote:
>
> From: Fabio Estevam <festevam@denx.de>
>
> The fsl-imx-mmc hardware needs two clocks to operate: ipg and per.
>
> Document these required clocks.
>
> This fixes the following schema warning:
>
> imx27-apf27dev.dtb: mmc@10014000: Unevaluated properties are not allowed ('clock-names', 'clocks' were unexpected)
>         from schema $id: http://devicetree.org/schemas/mmc/fsl-imx-mmc.yaml#
>
> Signed-off-by: Fabio Estevam <festevam@denx.de>

Applied for next, thanks!

Kind regards
Uffe


> ---
> Changes since v2:
> - None. Just fixed a typo in the dt list.
>
>  .../devicetree/bindings/mmc/fsl-imx-mmc.yaml         | 12 ++++++++++++
>  1 file changed, 12 insertions(+)
>
> diff --git a/Documentation/devicetree/bindings/mmc/fsl-imx-mmc.yaml b/Documentation/devicetree/bindings/mmc/fsl-imx-mmc.yaml
> index 221f5bc047bd..7911316fbd6a 100644
> --- a/Documentation/devicetree/bindings/mmc/fsl-imx-mmc.yaml
> +++ b/Documentation/devicetree/bindings/mmc/fsl-imx-mmc.yaml
> @@ -24,6 +24,14 @@ properties:
>    reg:
>      maxItems: 1
>
> +  clocks:
> +    maxItems: 2
> +
> +  clock-names:
> +    items:
> +      - const: ipg
> +      - const: per
> +
>    interrupts:
>      maxItems: 1
>
> @@ -34,6 +42,8 @@ properties:
>      const: rx-tx
>
>  required:
> +  - clocks
> +  - clock-names
>    - compatible
>    - reg
>    - interrupts
> @@ -46,6 +56,8 @@ examples:
>          compatible = "fsl,imx27-mmc", "fsl,imx21-mmc";
>          reg = <0x10014000 0x1000>;
>          interrupts = <11>;
> +        clocks = <&clks 29>, <&clks 60>;
> +        clock-names = "ipg", "per";
>          dmas = <&dma 7>;
>          dma-names = "rx-tx";
>          bus-width = <4>;
> --
> 2.34.1
>

