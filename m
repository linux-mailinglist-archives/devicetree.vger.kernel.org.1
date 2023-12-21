Return-Path: <devicetree+bounces-27812-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 5705A81BBFB
	for <lists+devicetree@lfdr.de>; Thu, 21 Dec 2023 17:29:28 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id E32D21F24C02
	for <lists+devicetree@lfdr.de>; Thu, 21 Dec 2023 16:29:27 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 6512758207;
	Thu, 21 Dec 2023 16:29:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="eO0GFRMF"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-yb1-f181.google.com (mail-yb1-f181.google.com [209.85.219.181])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 04B0B55E74
	for <devicetree@vger.kernel.org>; Thu, 21 Dec 2023 16:29:20 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-yb1-f181.google.com with SMTP id 3f1490d57ef6-db3fa47c2f7so942807276.0
        for <devicetree@vger.kernel.org>; Thu, 21 Dec 2023 08:29:20 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1703176160; x=1703780960; darn=vger.kernel.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=BjPHcp5yMT17ibGa6gTs1FBCraAtjJ1c24ScrpYmDdA=;
        b=eO0GFRMFe6ao+9/qkBhgYj63SjgdmvwMtwHOn13KnmR3fyi000e4phV0i1GSM3Je4T
         THH/YW2Uxjdn9BVnvy2DYfa7LyIbVcLTLbmGbXSSB2d60gfXCKprBbbbkQAJ7JewsuUM
         ZMgB9sdwI7BDWpgB8K3Q7AlQv2KbUxIstjZYDNHfWLqCjb3CaUMH49FG6eEBVxZcPhhR
         1BWjvrp0KH73bo0VHRjgCL4Dlf0Y5X3tRe8FMhpI59mXo7COmtBjHWlHHhN8HWqFEkw7
         8vE6RTzL4UIR2yFH5YN8F42/LIJDaCHNDnkfu7t4e0GwFZ43+SvYNCMQBkmroHroVBDh
         hv8Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1703176160; x=1703780960;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=BjPHcp5yMT17ibGa6gTs1FBCraAtjJ1c24ScrpYmDdA=;
        b=lsaHfyW1hNqcrUJguDoL0U49tPdnoWIiLLuOxBjGIIowS9NZ0x7WGDax3xl5LB/EJF
         FdV7ugXpcx2+ZHGrdPdUWeOIhkE/ooHj7mEyLfruYjIfkLBaKXFA1c8nMRq0VSorbbS2
         W0DjIyI5H8wl24FXfIb+NSS/V1VtfyQC65PLuYU1RvF811nQqVYUjDW+ukAcA2pNGJAo
         /ptzqRG967g0cdK/n7b9JU8fPjfhGdT8qMvHnkKBkjZRvPBbAb2SL51nDz0iZzH3Wuzt
         kwg1yTYGgEu5mgl1k8HQvPUDT4pvsdxwg5qJV4Vzqum1bwxCNJDWKYg/Huia/3VDfoHl
         RrmA==
X-Gm-Message-State: AOJu0Yw+3AvyaMm+VGjIf1jmvS8xdPYqsgx5GAL/oakfxZEpVvuutyUE
	6L/bBShcM/lh+KdcAS3h6Q64wLAIM6IhNkjM115t8Q==
X-Google-Smtp-Source: AGHT+IGVLs+CQ+PdC7bTznaHnCI5bDzf2xPzHfAm2xC8pi3ssBDcAhHP2dXDVr6YIcp4bw0t0xdhtZqdeJkJ4bW6TGY=
X-Received: by 2002:a5b:4b:0:b0:dbd:4c39:30bf with SMTP id e11-20020a5b004b000000b00dbd4c3930bfmr1286372ybp.98.1703176159919;
 Thu, 21 Dec 2023 08:29:19 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20231219-x1e80100-phy-edp-compatible-refactor-v1-0-f9e77752953d@linaro.org>
 <20231219-x1e80100-phy-edp-compatible-refactor-v1-2-f9e77752953d@linaro.org>
In-Reply-To: <20231219-x1e80100-phy-edp-compatible-refactor-v1-2-f9e77752953d@linaro.org>
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Date: Thu, 21 Dec 2023 18:29:09 +0200
Message-ID: <CAA8EJpoZDJqJnCvPp2YJcCJd5a3Z3droe=F3oXkiAR-O8KDqGA@mail.gmail.com>
Subject: Re: [PATCH 2/3] phy: Add PHY Embedded DisplayPort mode
To: Abel Vesa <abel.vesa@linaro.org>
Cc: Vinod Koul <vkoul@kernel.org>, Kishon Vijay Abraham I <kishon@kernel.org>, 
	Bjorn Andersson <andersson@kernel.org>, Konrad Dybcio <konrad.dybcio@linaro.org>, 
	Rob Herring <robh+dt@kernel.org>, 
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, Conor Dooley <conor+dt@kernel.org>, 
	Johan Hovold <johan@kernel.org>, linux-phy@lists.infradead.org, 
	linux-kernel@vger.kernel.org, linux-arm-msm@vger.kernel.org, 
	devicetree@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"

On Tue, 19 Dec 2023 at 22:55, Abel Vesa <abel.vesa@linaro.org> wrote:
>
> Add definition for Embedded DisplayPort (eDP) phy mode.

If we leave the DT property aside, is eDP a separate PHY mode, or a
submode? (in terms of phy_set_mode_ext).

> Signed-off-by: Abel Vesa <abel.vesa@linaro.org>
> ---
>  include/linux/phy/phy.h | 3 ++-
>  1 file changed, 2 insertions(+), 1 deletion(-)
>
> diff --git a/include/linux/phy/phy.h b/include/linux/phy/phy.h
> index f6d607ef0e80..bea532711906 100644
> --- a/include/linux/phy/phy.h
> +++ b/include/linux/phy/phy.h
> @@ -42,7 +42,8 @@ enum phy_mode {
>         PHY_MODE_MIPI_DPHY,
>         PHY_MODE_SATA,
>         PHY_MODE_LVDS,
> -       PHY_MODE_DP
> +       PHY_MODE_DP,
> +       PHY_MODE_EDP
>  };

-- 
With best wishes
Dmitry

