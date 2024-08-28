Return-Path: <devicetree+bounces-97745-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 5372696334D
	for <lists+devicetree@lfdr.de>; Wed, 28 Aug 2024 22:59:48 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id F02EC1F251D9
	for <lists+devicetree@lfdr.de>; Wed, 28 Aug 2024 20:59:47 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 70C221AC898;
	Wed, 28 Aug 2024 20:59:42 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="akue8Pph"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lj1-f180.google.com (mail-lj1-f180.google.com [209.85.208.180])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8A8AC1AC45C
	for <devicetree@vger.kernel.org>; Wed, 28 Aug 2024 20:59:40 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.180
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1724878782; cv=none; b=DkZkSEQeL5B+/bW/zcLSN/v/HhXj8a73ysEh2AMADudq1+GDd7ZGMGAomjmvcdnFFrZzYLxBDchstr3RvGC+O3D+XitTjcsqFk6djO1PrghANpSQKpr7AJpHghi/TqK/Ucnw83Mop02gBDgcNm+ovDK4rHBXc0Ko/wK40FucDC4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1724878782; c=relaxed/simple;
	bh=rgXiQ0ut4rQ+4bIIkkS5brMFNpLbKdsLtkTp1LLm1/0=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=Zx6xgr+e5Mi1gzN6JNRthvstbK81PMV8crqzcskA2e+LoPHg1/jCZ92+WanTjPYuC3MwXSgO0mU/u7C+xZ28GWaCQ5TXVExOav7LW+Q/6H3Ny2i2+8znZ0NzbT1b1aPX+xGbnH2Bv1URU41txqJpjOAyeLiHUwbmXkh2BQtSdq4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=akue8Pph; arc=none smtp.client-ip=209.85.208.180
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lj1-f180.google.com with SMTP id 38308e7fff4ca-2f3fea6a0a9so9433401fa.0
        for <devicetree@vger.kernel.org>; Wed, 28 Aug 2024 13:59:40 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1724878779; x=1725483579; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=w3e2rMn7JyR9qzQn+ZSCjNL54f4MTdVR/nFThKl7tiM=;
        b=akue8PphbNF4fYKsEysZlZXYnQl5OPqwVKc1yjOS0cs/qx2MlZOcvyWPSKSOYuHUi7
         2O1wFX1VcwAuihYz7LT46BfUYsX63Ma7BnOfyPBeSZI2vrBG23mfvdHuYozyl5pYD/Gc
         kDMnUlr4w+x1WSbFvk6xJtEOwM3g4xzj1UUiZVbaSUPSYVP1hb55KR4LUttWp9imbn21
         YV5qv6oYFM4PauGiMZV3RWc4Ottzj/bTjcn4wDPwKANwF3A3ZrxVH6Geg6+tD7uXcPC6
         Q4IRGnAzQ1AnFmq9ea1VZ1CONArMUMH6R7n86c6MAr4YRyILyblpDBz0l63Plyq/JCZN
         yg4Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1724878779; x=1725483579;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=w3e2rMn7JyR9qzQn+ZSCjNL54f4MTdVR/nFThKl7tiM=;
        b=KkQYSEiNqouQHurpKVLypE3StPItAcw2At4PK4GDm5FiLhqOztniL80v560IyQcBL5
         1yJ0bKvEhEYNC7yPJbraFuNxKTgbPnq5qEVyTsKwrYoGz6X6CzoGU4q9Xq0N9wO76Ix+
         M4B9kFtjS+7O5kc/s/+iKB2bVl00kSyQg3kTSK5ZFyFekwVVW1xPOJre9C4gDZvDKFhK
         8nWBkGJBs3TsBq8ZTunPc9rE8Fmh4W9UUqugxKO5sjDIhUHGUCiklJtaffpBZtaFJQG4
         knF7yvynAyhzp+4iQHbxmWKPt9+TvBo9dg7tnaBcrYz4OHupNT1f8HF5bghC46BhJ3J7
         kSXQ==
X-Forwarded-Encrypted: i=1; AJvYcCXT3f7/Y/6W7MwqIyRgpx9DLMOpmufZHUg92ZcCfZmk3fCfIIzt5ZptXEdNQT6R0OzejMwTyM/za4fO@vger.kernel.org
X-Gm-Message-State: AOJu0Yxzcy4xmh66pfKqV223Twtz4ArMjoka3zwmS2pbNy7O7VMt2GbK
	maCKkDGmFqXlYBko7hy38rvLkAuMt/SVCAqV5JrjnLNCDKa7RCk6HlT9Bk6UvSw=
X-Google-Smtp-Source: AGHT+IFbHz8tCFXAnyET44/ligk5uJzcSPo66ooELnKUtYAB0PqKSrneJsVu2v9zyMP4D3hSScLw9g==
X-Received: by 2002:a05:651c:211d:b0:2f5:23a:1055 with SMTP id 38308e7fff4ca-2f612ae4c5fmr1068811fa.18.1724878777924;
        Wed, 28 Aug 2024 13:59:37 -0700 (PDT)
Received: from eriador.lumag.spb.ru (2001-14ba-a0c3-3a00--7a1.rev.dnainternet.fi. [2001:14ba:a0c3:3a00::7a1])
        by smtp.gmail.com with ESMTPSA id 38308e7fff4ca-2f4047e101esm20650611fa.72.2024.08.28.13.59.36
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 28 Aug 2024 13:59:36 -0700 (PDT)
Date: Wed, 28 Aug 2024 23:59:35 +0300
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
To: Varadarajan Narayanan <quic_varada@quicinc.com>
Cc: andersson@kernel.org, konradybcio@kernel.org, robh@kernel.org, 
	krzk+dt@kernel.org, conor+dt@kernel.org, mturquette@baylibre.com, sboyd@kernel.org, 
	ilia.lin@kernel.org, rafael@kernel.org, viresh.kumar@linaro.org, 
	ulf.hansson@linaro.org, linux-pm@vger.kernel.org, linux-arm-msm@vger.kernel.org, 
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, linux-clk@vger.kernel.org, 
	Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Subject: Re: [PATCH v7 3/7] dt-bindings: soc: qcom: cpr3: Add bindings for
 IPQ9574
Message-ID: <52cffqp4ugh557yg6wx5n56tar74csra635pewqyu7wirv4cqj@zljbg2hdrxsx>
References: <20240820055705.3922754-1-quic_varada@quicinc.com>
 <20240820055705.3922754-4-quic_varada@quicinc.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20240820055705.3922754-4-quic_varada@quicinc.com>

On Tue, Aug 20, 2024 at 11:27:01AM GMT, Varadarajan Narayanan wrote:
> Add the bindings for the IPQ9574 CPR3 driver to the documentation.

Bindings are for the hardware, not for the driver.

> 
> Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
> Signed-off-by: Varadarajan Narayanan <quic_varada@quicinc.com>
> ---
> v5: Add Reviewed-by
> 
> v4: Change compatible string to cpr4 instead of cprh
>     Not adding Reviewed-By as compatible string changed

I still see that it is being declared as compatible with qcom,cprh,
while your hardware isn't CPRh, it's CPR4.

> 
> v2: Constrained nvmem-cells and the other variant.
>     Removed unnecessary blank line.
> ---
>  .../bindings/soc/qcom/qcom,cpr3.yaml          | 35 +++++++++++++++++++
>  1 file changed, 35 insertions(+)
> 
> diff --git a/Documentation/devicetree/bindings/soc/qcom/qcom,cpr3.yaml b/Documentation/devicetree/bindings/soc/qcom/qcom,cpr3.yaml
> index 2e6712aa1c58..c00373948901 100644
> --- a/Documentation/devicetree/bindings/soc/qcom/qcom,cpr3.yaml
> +++ b/Documentation/devicetree/bindings/soc/qcom/qcom,cpr3.yaml
> @@ -24,6 +24,7 @@ properties:
>        - const: qcom,cpr4
>        - items:
>            - enum:
> +              - qcom,ipq9574-cpr4
>                - qcom,msm8998-cprh
>                - qcom,sdm630-cprh
>            - const: qcom,cprh
-- 
With best wishes
Dmitry

