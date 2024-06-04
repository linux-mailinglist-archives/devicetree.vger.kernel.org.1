Return-Path: <devicetree+bounces-72177-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id CFE598FB0CC
	for <lists+devicetree@lfdr.de>; Tue,  4 Jun 2024 13:14:18 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 871402830CF
	for <lists+devicetree@lfdr.de>; Tue,  4 Jun 2024 11:14:17 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id F188F145343;
	Tue,  4 Jun 2024 11:14:12 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="pck8xz7a"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-yb1-f174.google.com (mail-yb1-f174.google.com [209.85.219.174])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5F6EB145339
	for <devicetree@vger.kernel.org>; Tue,  4 Jun 2024 11:14:11 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.219.174
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1717499652; cv=none; b=JMse+Hh/0UBCJLtyw8KAPyv70UxOuzOI+DBsTM6V9BFblzOt9hcViusbQ2sIkhEuknuN7M5Hll/bRqioVDF36w4vdbMnBznGntI0RAHNYHa8kY2lrd4BNJjX4r05GzMG6AheCP9ZVke9nDuexDlUnIk9v48qtSvBu7qGdWZuC/0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1717499652; c=relaxed/simple;
	bh=gkoEaXTyzcTGwsF2z95ESHnjbvRX6cwJPCJEJHD0kz8=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=JwyKHWEHbKWlh2dmDszokBkQqctIUW0YfDiEEd/QPhQLDrmcTywdXip39T/pcgCHiMndWSgJD9dn0GqOOfxpoZ4oo0At6iZpiRXMWltM5pJiedZDlRTE3dD6cIFzGqO9yyn5ecmDDW3La1Ms6wMeS6ge9bwv6UX4Z78bCSKSUMw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=pck8xz7a; arc=none smtp.client-ip=209.85.219.174
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-yb1-f174.google.com with SMTP id 3f1490d57ef6-dfa727cde2dso4074024276.0
        for <devicetree@vger.kernel.org>; Tue, 04 Jun 2024 04:14:11 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1717499650; x=1718104450; darn=vger.kernel.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=Q4BJtPQ73qcfI2sO7ETwV4VEq/ZHWblB62uvfMkAtXA=;
        b=pck8xz7aEQCZrXxZBnTqIUQJ/hy5CAtsO/YnI4+QTIMDaLZ/iomeFmDWIMuiuEOv2H
         cmI95gO6IS3BM1C3jdbsOzHg2NAmdNpWtKvP4DboE4PEWT2gHw3cRN2xAQ0zW3UId6HG
         qIO3XkzCY38Tqn1nzNDZ0bdyChnOHNXZCqPZqZ1pJkKBbxCtoL4LS2Z5ifWOEboVVBMG
         onQtMeGJXMeS7JF30GvwDra7+5K4S0xx3pnfd+liP8/0mZdgZTdNnX0dCNewHoi5UP0w
         SKY8xL5FCSOcmf734LZfR0qop/RzoYIA4TFibRAQm02HqW5U6hJQBFkMNobVG1rMjL31
         s91Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1717499650; x=1718104450;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=Q4BJtPQ73qcfI2sO7ETwV4VEq/ZHWblB62uvfMkAtXA=;
        b=LHn+DrAZXzPvxS6GzkJSwj47VgXXHAdtaru1mV4ywuKTU2u3nTp0rbnutRPZdX4dXF
         lT1nvl516QBF6zh9QF89GwlwylDU5nNZsT5wSYBCmbfdHzMOom6/2/Pb+A0+eiVdHPFw
         7RAzWnFhQgv2b2x+GpvwCBcfvCwM4LJ22zr2kxnPbp3KWIuCBMn2T0cC1U8O/abkOBft
         8E+uucDd13F/yBm++3iPmIUB4RSCfhlZwVcfgEnvEFALGUkkY6fNNsBuStCPV+0AJkc8
         FXP+A0xOsPn7C7inMsu0QGdKmJxLF5a7tkw5XziCf+aR84vw3UXEwuUMUkKEZ8yTyqfV
         1ziw==
X-Forwarded-Encrypted: i=1; AJvYcCX7hXg94gUIZsfYc7m5ezR8AEvMllT1rc9JNk9pXWPMHPuBiyg3sLekUoFg8NcdOKvMc0BNxIclIv3ZF52A01Xr/7GU/OvbYIEd+A==
X-Gm-Message-State: AOJu0YwDEfuFsn2gBiRM2K1sAKxJ8AyQTzdYdxfKNHsIK1+4x1b7JZvD
	48Hy6zGiDVn7ZBgkAWzCPLuUY7Luk+APEqrNlyVg3H5bIr+JltbnqG+GAPIPnvR8B6KQXtE5TKw
	HVSPr4EIxzPdpTf/PHb4ewSoSQHEQszCXmM8bkLI43mz1jvXU
X-Google-Smtp-Source: AGHT+IGbblsFi//5mNdWKH76B/L88CqYx2joBG7nqbVMyDK7axGNMhKFIZaU+2AbW4M8ccMJuHxy87Azife0n7bvlpg=
X-Received: by 2002:a25:acdc:0:b0:dee:998b:1459 with SMTP id
 3f1490d57ef6-dfa73c3dbc1mr11889385276.39.1717499650330; Tue, 04 Jun 2024
 04:14:10 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20240523120337.9530-1-quic_nainmeht@quicinc.com> <20240523120337.9530-2-quic_nainmeht@quicinc.com>
In-Reply-To: <20240523120337.9530-2-quic_nainmeht@quicinc.com>
From: Ulf Hansson <ulf.hansson@linaro.org>
Date: Tue, 4 Jun 2024 13:13:34 +0200
Message-ID: <CAPDyKFpAtvQyfKJ6-xWEZhv259eAzuS+nmA9tcFDf_h728s1Qg@mail.gmail.com>
Subject: Re: [PATCH v2 1/3] dt-bindings: mmc: sdhci-msm: Document the SDX75 compatible
To: Naina Mehta <quic_nainmeht@quicinc.com>
Cc: robh@kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org, 
	andersson@kernel.org, konrad.dybcio@linaro.org, bhupesh.sharma@linaro.org, 
	linux-mmc@vger.kernel.org, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org, linux-arm-msm@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"

On Thu, 23 May 2024 at 14:04, Naina Mehta <quic_nainmeht@quicinc.com> wrote:
>
> Document the compatible for SDHCI on SDX75 SoC.
>
> Signed-off-by: Naina Mehta <quic_nainmeht@quicinc.com>
> Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>

Applied for next, thanks!

Kind regards
Uffe


> ---
>  Documentation/devicetree/bindings/mmc/sdhci-msm.yaml | 1 +
>  1 file changed, 1 insertion(+)
>
> diff --git a/Documentation/devicetree/bindings/mmc/sdhci-msm.yaml b/Documentation/devicetree/bindings/mmc/sdhci-msm.yaml
> index c24c537f62b1..11979b026d21 100644
> --- a/Documentation/devicetree/bindings/mmc/sdhci-msm.yaml
> +++ b/Documentation/devicetree/bindings/mmc/sdhci-msm.yaml
> @@ -51,6 +51,7 @@ properties:
>                - qcom,sdm845-sdhci
>                - qcom,sdx55-sdhci
>                - qcom,sdx65-sdhci
> +              - qcom,sdx75-sdhci
>                - qcom,sm6115-sdhci
>                - qcom,sm6125-sdhci
>                - qcom,sm6350-sdhci
> --
> 2.17.1
>

