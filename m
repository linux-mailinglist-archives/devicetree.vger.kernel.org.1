Return-Path: <devicetree+bounces-178848-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id C750DABD854
	for <lists+devicetree@lfdr.de>; Tue, 20 May 2025 14:43:08 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id AAC557B03E3
	for <lists+devicetree@lfdr.de>; Tue, 20 May 2025 12:41:51 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 09C461A3166;
	Tue, 20 May 2025 12:43:01 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="z68jTGdF"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-yb1-f173.google.com (mail-yb1-f173.google.com [209.85.219.173])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 326C21A08A4
	for <devicetree@vger.kernel.org>; Tue, 20 May 2025 12:42:58 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.219.173
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747744980; cv=none; b=NiVIU2T0v0i0otfyRsRwOS89W80iyB6iiBiZ7665wLLr1ARhoUOcmj5frBiGnxk8jOXMMeQPUJl0o0f6GEAnofJc2BaEOh1EHNmYoP9KIP3+cCp8Tfo22lT08T/TF5gLOIub+s25msfNK+XBJoIN6W8CcjU7IN/u8LG0bbxNMcM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747744980; c=relaxed/simple;
	bh=kAYBhgA7SbgPwIuhLi3KNN6TuETDW3sCCCLPjUs9KLY=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=DWwjvuO1klpaRgtM9SeKQhI/YUUX9Mur8Q8df7SjFEHVSVMIIPAZ4YpX52nO06DnaGemlrfjiMnXDPsO3l+Fw4V3bY+qPKiv9vtax5ewJpr4OYR4TCVARFGRQidgN61CYS18bMCihCjeq9Pbi+NQ1Rz0d3ihuNHCvqzm+7DFgeU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=z68jTGdF; arc=none smtp.client-ip=209.85.219.173
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-yb1-f173.google.com with SMTP id 3f1490d57ef6-e7b85f1cbacso3247452276.3
        for <devicetree@vger.kernel.org>; Tue, 20 May 2025 05:42:58 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1747744978; x=1748349778; darn=vger.kernel.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=88lOLN3//BdORRDyk/6LjlOBy9fkXDogVmGs1sgPhyI=;
        b=z68jTGdFqiP6o81qhSPfWRQRBkTV68YKQY5rKGT9CAo0H+HjAXa4IDbhPYQLD/0m/A
         szy5ZbxzUoFCGFcXm+9cseyJm8i2GVo+Bl0W/SlByNxBlKXNu7uCRh4au012ZLSHVJpq
         hvyXUGGQT7tYWXQLFERvM8QFyzQAjwAA1aSqjeh9kWWYTRUltZE5Z6/VD8MQCWk7jL8C
         uF5/wjjpyZRDo+Aj7xAODjjf44F8fpNVXOOGDNUcxoxaVSfSLt3AtkN4aF5XGfmz6VNa
         GsevA4kQw122PHEaY4UBLaHW76GvyvyJUG7EX+/zCFtXswtE/T5t98OoKMgBWess8xRV
         3lyw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1747744978; x=1748349778;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=88lOLN3//BdORRDyk/6LjlOBy9fkXDogVmGs1sgPhyI=;
        b=I3WGoPPWN1SZUFmqMH9cvADhAxARfSKHzhsQyzPNeX0KL2xoE+Di0yfT8ZjerzlnhN
         kllfEO/dPHpsubYWs2CbOdVtshYauhdaZm5qhUIrAD2ygd5ONzOXWkDQoDkQ2r/W8jmF
         PvU1xDAZNnUB+jWTiiV2NtNsu3a2Shay0JrCKF1/Kqq4SsECsKk8N1ewywcL3pb2AApw
         Uy1rSkZVGnIP4e9bY9VoetFpTbv7i0kSysEOjTuE0UpkJAo7vuOwL8XTgM3TKuV0uKgr
         7g+nat7pxHkjwsD5OaOCZ4fz56Rrh94sSuDhUmLw+GONm1NMVZiy073jBkfcQ40PrSCd
         bZZw==
X-Forwarded-Encrypted: i=1; AJvYcCVP5vgq9rP4dvMHpe9g/Xx2/1tQ6XM6CGphpmkm/CUgyb/W68sqCz7b2V9KaITbNz/nq6qYo/woD7xo@vger.kernel.org
X-Gm-Message-State: AOJu0YzfjAeP13i9s74kIkiIckM5mb5Wf8hFZoZ8SY9mGPCysG/DxFT8
	D5lCfvUMhcO/n2QxwO+OjMgeNgd7O5uAKFpA5a3dxbZ/FkP8zGdKUlpUvh/wmbic2iqZ1Iytgvc
	WhpOAM3/TSThxST5Nob96GP+IbjV+PZrhHthzeiIjQA==
X-Gm-Gg: ASbGnct262F+bdZpWnMd2IlZDoRLFvH8JQeI7Cj2BIN4A9Rrni4LFCGfn0DZftAwiah
	niekdQ/r4Kpeg20Kwes+Tr1oXOXDRCrILxofbPrfgW46rzZZEUrf8z2Bx0x6B3rEY85trDaD7yV
	3H9TYq0c4w2fBJQKx9uPq8BeO8+BDz3tJsPg==
X-Google-Smtp-Source: AGHT+IGhT+v8r+0GZsiYhs7CHph95cb2P8MRGP6RGC8fZ7dFYUwqCE9+mfUsNw7SyUvETHMbFtvpOAcTqK/Ng1hl+qE=
X-Received: by 2002:a05:6902:1201:b0:e79:774:866f with SMTP id
 3f1490d57ef6-e7b69e80915mr20083103276.17.1747744978059; Tue, 20 May 2025
 05:42:58 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20250518220707.669515-1-jonas@kwiboo.se> <20250518220707.669515-6-jonas@kwiboo.se>
In-Reply-To: <20250518220707.669515-6-jonas@kwiboo.se>
From: Ulf Hansson <ulf.hansson@linaro.org>
Date: Tue, 20 May 2025 14:42:20 +0200
X-Gm-Features: AX0GCFs3Un2EF18YwTSrDKI84LtGeBLBa79SYyXbjLKaJiwIZzX41KzumIQh4bM
Message-ID: <CAPDyKFqu-ox90dEnK8L0C8CqXJDsvgGwH00__nfQcOYu8hNM9Q@mail.gmail.com>
Subject: Re: [PATCH 5/9] dt-bindings: mmc: sdhci-of-dwcmhsc: Allow use of a power-domain
To: Jonas Karlman <jonas@kwiboo.se>
Cc: Heiko Stuebner <heiko@sntech.de>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Jisheng Zhang <jszhang@kernel.org>, Yao Zi <ziyao@disroot.org>, Chukun Pan <amadeus@jmu.edu.cn>, 
	linux-rockchip@lists.infradead.org, linux-pm@vger.kernel.org, 
	devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
	linux-mmc@vger.kernel.org, linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"

On Mon, 19 May 2025 at 00:07, Jonas Karlman <jonas@kwiboo.se> wrote:
>
> The commit 7e856617a1f3 ("dt-bindings: mmc: Add support for rk3576
> eMMC") limited use of power-domains to Rockchip RK3576.
>
> Remove the power-domains: false to allow use of power-domains with more
> controllers, e.g. with SDHCI on Rockchip RK3528.
>
> Signed-off-by: Jonas Karlman <jonas@kwiboo.se>

Applied for next, thanks!

Kind regards
Uffe


> ---
>  Documentation/devicetree/bindings/mmc/snps,dwcmshc-sdhci.yaml | 4 ----
>  1 file changed, 4 deletions(-)
>
> diff --git a/Documentation/devicetree/bindings/mmc/snps,dwcmshc-sdhci.yaml b/Documentation/devicetree/bindings/mmc/snps,dwcmshc-sdhci.yaml
> index 5fb347167004..f882219a0a26 100644
> --- a/Documentation/devicetree/bindings/mmc/snps,dwcmshc-sdhci.yaml
> +++ b/Documentation/devicetree/bindings/mmc/snps,dwcmshc-sdhci.yaml
> @@ -120,10 +120,6 @@ allOf:
>        required:
>          - power-domains
>
> -    else:
> -      properties:
> -        power-domains: false
> -
>  unevaluatedProperties: false
>
>  examples:
> --
> 2.49.0
>

