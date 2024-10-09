Return-Path: <devicetree+bounces-109461-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 9B8DE996776
	for <lists+devicetree@lfdr.de>; Wed,  9 Oct 2024 12:38:44 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id DBEBDB27C8B
	for <lists+devicetree@lfdr.de>; Wed,  9 Oct 2024 10:38:41 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 65270190472;
	Wed,  9 Oct 2024 10:38:18 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="qmoEEGBJ"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-yb1-f175.google.com (mail-yb1-f175.google.com [209.85.219.175])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CB25C190045
	for <devicetree@vger.kernel.org>; Wed,  9 Oct 2024 10:38:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.219.175
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1728470298; cv=none; b=WKRtbo4kIPkNH9ADFR6aoyUzCJCNG/98Sz651Cev6W2uw9v6bfXZqH+mjWkfVJqy8t65m7OiNEYy6Bw4BRvFIvo/uCi1HlgeP45S1jkh/v1UBYmCmsnRBrjX9nBIROu0ZNePNDH9GZ+Ieohsz79Bsde+AjKgkTo7szk4N7S79Bc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1728470298; c=relaxed/simple;
	bh=/pirvcswA+FHOwpqdaOFXRCzEZ6TIlpHexynPVzZ09E=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=RaScR5ayIcWUcM9RbRuvf5D/8aq/4+pZ05vcy54Sl0Jf8InxBhGDylBZjfgxouejSr41GyuA5xsXmNebgBwiEE6ifL8gewKAWpjx57b0ItFcdEr60h74wKeuOTHvVEYxiUx3onjUSh0jPD/QKwI5PmrDK9Zaxy844gtPpC512YI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=qmoEEGBJ; arc=none smtp.client-ip=209.85.219.175
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-yb1-f175.google.com with SMTP id 3f1490d57ef6-e28fc40fdccso846386276.1
        for <devicetree@vger.kernel.org>; Wed, 09 Oct 2024 03:38:16 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1728470296; x=1729075096; darn=vger.kernel.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=ID1WufQHJnNG6qgq2q02dpWhdZV7K4BwizWlrE4oEN0=;
        b=qmoEEGBJkSJudMhCOcbWY6+0lZdlZc6iWyuMpGeN/8/AoD4VTBSuaiYUzFEm1Gsa1K
         8+CIo5z5tB3l83u/f3/Z5M5FunX5/0BCIRjsFQIah8RXKaW5SiqI545uYuS7YQTur8X+
         RTL4lxlk+s34a00BRZx2Cghs65NcSU4/YEl3JvzTYSUzBFHZlDcMCx8gzGx1YEGMnFBX
         wSF+NhNuiE+CscVOBBBUMxB9yBvFcJnk/tcPZHaPN6HhFI6gvBSiPdwDVC6uCPqjqeI1
         PXtnfBedi9Q9s5465+cEuISCzjVzLDGIdUxxto5bIYlUCakINVBx0Vwx0W0FDO1KfJez
         a00Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1728470296; x=1729075096;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=ID1WufQHJnNG6qgq2q02dpWhdZV7K4BwizWlrE4oEN0=;
        b=qJbcSWlrvpTPLeneBycU49fWAHRyKPU3gbs5tZCPXwjNi7ZA9n3suu5/yta1dAXfvu
         F5oyLfiblK4hT/OiiZ/xmSdPbv2rBjo5uFvLw99U9iRyvCrNtBYN9hE0SUddd2YqaBo5
         J+uee43SzTEfLnR7LAgFWu1S5MDCoVz9ovQiDsnjCdJSC4ITtgoffwA4/RWth6FUM6JU
         6xoSKnzQZO194+XesO1CfS7rGemGmW8ZPBqWJAZpZhUbAlyj8zr34zVl6SDlrKXF+gT5
         OnQMKD2nSwbzTtl47dXZqq6YfE66SLj4ap3bD0TbLckKXnSMOqQTp/r3Kh7hNCBHMuQ4
         JMyw==
X-Forwarded-Encrypted: i=1; AJvYcCUb8wNMrR7UzBz5yWch2bqfqBMGcf7kEFpJKOkgmNdeC9og9AdcBOVHYVLztZZqGNJzU7w/vnVeP7+n@vger.kernel.org
X-Gm-Message-State: AOJu0YzNRMIa6P5biZjMPMsTknee2ktUv1Bq5XW1jc2pZAhruPGlp1+Q
	gDVDzDLKI9K4QmHWeh+08oeui/DD4Te1mmSMmSh5vgMtiL1RCB/2WjIuP+g8DI9nf04nAhxxJ/1
	jqkLW2QQgh05og3O6/bZTtEOjV1aoTXBF2n6wTQ==
X-Google-Smtp-Source: AGHT+IFoviElVg6zgPKSNNlWRMr8af1m9Z0WlJoeomF8hhSrWTf+U4itcPkeioazo85YkG9vWzGOAE0Jq1Lc8Dev+Pk=
X-Received: by 2002:a05:6902:e0c:b0:e28:f2b3:1a3d with SMTP id
 3f1490d57ef6-e28fe33b8c7mr1913514276.6.1728470295854; Wed, 09 Oct 2024
 03:38:15 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20241008-x1e80100-qcp-sdhc-v1-0-dfef4c92ae31@linaro.org> <20241008-x1e80100-qcp-sdhc-v1-1-dfef4c92ae31@linaro.org>
In-Reply-To: <20241008-x1e80100-qcp-sdhc-v1-1-dfef4c92ae31@linaro.org>
From: Ulf Hansson <ulf.hansson@linaro.org>
Date: Wed, 9 Oct 2024 12:37:40 +0200
Message-ID: <CAPDyKFobpQjYBys6J_WUM5ws53ffZfn1G_b0AHN6xee=q0KJHQ@mail.gmail.com>
Subject: Re: [PATCH 1/4] dt-bindings: mmc: sdhci-msm: Document the X1E80100
 SDHCI Controller
To: Abel Vesa <abel.vesa@linaro.org>
Cc: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
	Conor Dooley <conor+dt@kernel.org>, Bjorn Andersson <andersson@kernel.org>, 
	Konrad Dybcio <konradybcio@kernel.org>, Johan Hovold <johan@kernel.org>, 
	Dmitry Baryshkov <dmitry.baryshkov@linaro.org>, linux-mmc@vger.kernel.org, 
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
	linux-arm-msm@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"

On Tue, 8 Oct 2024 at 16:06, Abel Vesa <abel.vesa@linaro.org> wrote:
>
> Document the SDHCI Controller on the X1E80100 Platform.
>
> Signed-off-by: Abel Vesa <abel.vesa@linaro.org>

Applied for next, thanks!

Kind regards
Uffe


> ---
>  Documentation/devicetree/bindings/mmc/sdhci-msm.yaml | 1 +
>  1 file changed, 1 insertion(+)
>
> diff --git a/Documentation/devicetree/bindings/mmc/sdhci-msm.yaml b/Documentation/devicetree/bindings/mmc/sdhci-msm.yaml
> index 11979b026d211050270d018c03fa73c107e7c10f..8c7e016306f14be20e4a3cff289317ed603633f3 100644
> --- a/Documentation/devicetree/bindings/mmc/sdhci-msm.yaml
> +++ b/Documentation/devicetree/bindings/mmc/sdhci-msm.yaml
> @@ -62,6 +62,7 @@ properties:
>                - qcom,sm8450-sdhci
>                - qcom,sm8550-sdhci
>                - qcom,sm8650-sdhci
> +              - qcom,x1e80100-sdhci
>            - const: qcom,sdhci-msm-v5 # for sdcc version 5.0
>
>    reg:
>
> --
> 2.34.1
>

