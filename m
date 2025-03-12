Return-Path: <devicetree+bounces-156863-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 5D781A5DB71
	for <lists+devicetree@lfdr.de>; Wed, 12 Mar 2025 12:27:02 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 9F353177641
	for <lists+devicetree@lfdr.de>; Wed, 12 Mar 2025 11:27:01 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E5B742459C2;
	Wed, 12 Mar 2025 11:25:30 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="xcwtAeGv"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-yw1-f170.google.com (mail-yw1-f170.google.com [209.85.128.170])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2CB3E24501E
	for <devicetree@vger.kernel.org>; Wed, 12 Mar 2025 11:25:28 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.170
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1741778730; cv=none; b=s1wfnmwmOhKMSNR7OOo8Gkx9jyL5+iCvRML4zGlQa01a9W/+1Ua5eEKIkPkzkW60Fq5rnNmAQJAo4AvQrMejAs5qM10lI6bJuv+8WjxN0S5TK1UGkDQLNw/FZifExH3u1eamVzqv0/MvXeBh0qoUeWpQrOrP3UniNgSkhQaUb+c=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1741778730; c=relaxed/simple;
	bh=1wvMq+p0b0LHsuXs2t0D9kgHbJ0JEDZN1CXO+LT+A8M=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=d9UgpRgN01o0fdeqrFZ9t88QggUsg2jdTTra/I88/uJIQg+FfHV5H4/A5RHM/mjlD7FHbvHTgPCGgdMqYpHqYQf0hPdb3SVnSuzxCD+IVCzLDBqpoGV1B4JjhXpVbMnqzooZSzA2axnKj127EfNBbjrcMNdDCqPsTRcNZBj9yMs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=xcwtAeGv; arc=none smtp.client-ip=209.85.128.170
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-yw1-f170.google.com with SMTP id 00721157ae682-6fd80f30ba5so45991297b3.3
        for <devicetree@vger.kernel.org>; Wed, 12 Mar 2025 04:25:28 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1741778728; x=1742383528; darn=vger.kernel.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=dadpUZC9V5c7MYnunblVKwFOdnOlHudqlcLRPnjOYeA=;
        b=xcwtAeGvbeg29VdHPHF52EjNcGWPoR5CC9+YRm18s3q7zZx05h0nuhdSDn4PXwNQ36
         5AnU1v+RXDRuvZkw/Xie1Vqmug+Rml08kdNbIZMj6wn3cdZ+1loJQX17nIOr9rpuyFfi
         XNDuAPYl+b5bWJpTQJSlVhTTd2gV91T1WdxY7yy5vaIiePk5G56uIXnp/traCZSElQqi
         G5xFeCKjYIeynp1l7fqes58uKFQiDmxkoTTb8zOxTFk71+WPqmza8wTAl2BidF3nbVY+
         e38nuRQq7GEW3wX32WF8RYyaSvLLRvrigdRy7JbQeIEZlrrwq09gL7KvFYT0/3929tZp
         N6Ng==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1741778728; x=1742383528;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=dadpUZC9V5c7MYnunblVKwFOdnOlHudqlcLRPnjOYeA=;
        b=cOsRJzkNcq1gUqGbk+IXQ6CN7Q3oZ2AWATyJ/M4wWhLTQx8MqVuaDz6vYr0dWMfUB/
         rRPcOdQrFT6ZfHVIKY6n8ur/s5RDR44pX9be++VVHOfjghRwID9Cdd3bdlECAyLaXJJd
         tK+OjrLTwNg7r0OCf59OyFfLe3bmGm8be5aZvkrOr3w8mimzRsv/7yXUzBHHOGsoea8H
         cmBZrvCqwRJK6iBIAX7ZAWpUv5Q1uXJxsIpZkNl1744KXZ2bEeXQBYuCyQzPJXWRaQG4
         1oe5jVA9WaXRimL559DfVf7GL/AftpRwtxwhX4jf3eOJ++CWRmslFhNSwadgLh6xPYEy
         8duA==
X-Forwarded-Encrypted: i=1; AJvYcCVv1L6Cz2/JU0vfa8B5Py+Kgxc8m4Dl0FewOeudH8u/fHj3VwdRuOoSwFdupg/kGOYymzJpuK2eGY2Y@vger.kernel.org
X-Gm-Message-State: AOJu0YxWeiyRvMzuq+nBip7wOaA1CaYBXOwjaLLGXJ9LMKMys8pxo1dA
	3Nm6uDqukPFntNJaCn1Ac0Ica1XGpurLxRePSvWHBY11JduKHKDxDTpxAHnQC/E6bXx73UdscoF
	aRAAsIKldtXkosNhDS8imHkzc1RU0cCmVkFPNIw==
X-Gm-Gg: ASbGncs+5zhkNu3UIHoqzKSCUbhKi56+ojvQpnjSkdF/++ItDksH8f324LTIe2AdgSL
	ChEmMmlyLMiUoeAothxnnsWwBnO9DtSs9XanFfjB3DRTShxQ2fkRqXaD9YvExMjt13u3K1Pfdlr
	jOYSplCBabQXi1WiFJqBGYGDcFVXI=
X-Google-Smtp-Source: AGHT+IEkegzJ/XAYlghTUeG+wVwA3ds93Wxe6yvoeV0jHqydpXmTqXQvt4bDvlouPz1OikUEEzcCwOPsAA9n/cL6aTA=
X-Received: by 2002:a05:690c:3802:b0:6fb:4c11:61cf with SMTP id
 00721157ae682-6febf2e67e6mr312924957b3.19.1741778728184; Wed, 12 Mar 2025
 04:25:28 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20250309055348.9299-1-ziyao@disroot.org> <20250309055348.9299-2-ziyao@disroot.org>
In-Reply-To: <20250309055348.9299-2-ziyao@disroot.org>
From: Ulf Hansson <ulf.hansson@linaro.org>
Date: Wed, 12 Mar 2025 12:24:52 +0100
X-Gm-Features: AQ5f1JoG4yNR3eqoseTNZhzIg7tVbmXvgNO4DfacKMnpZftoLIoMXOX2r6zD6_U
Message-ID: <CAPDyKFp2UzcxfFz=8sREkj3x4DvfkfxU3utc0+e+uPS78Tn-+g@mail.gmail.com>
Subject: Re: [PATCH v3 1/6] dt-bindings: mmc: rockchip-dw-mshc: Add compatible
 string for RK3528
To: Yao Zi <ziyao@disroot.org>
Cc: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
	Conor Dooley <conor+dt@kernel.org>, Heiko Stuebner <heiko@sntech.de>, 
	Michael Turquette <mturquette@baylibre.com>, Stephen Boyd <sboyd@kernel.org>, 
	Shresth Prasad <shresthprasad7@gmail.com>, 
	Cristian Ciocaltea <cristian.ciocaltea@collabora.com>, 
	Detlev Casanova <detlev.casanova@collabora.com>, Jonas Karlman <jonas@kwiboo.se>, 
	Chukun Pan <amadeus@jmu.edu.cn>, linux-mmc@vger.kernel.org, devicetree@vger.kernel.org, 
	linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org, 
	linux-kernel@vger.kernel.org, linux-clk@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"

On Sun, 9 Mar 2025 at 06:54, Yao Zi <ziyao@disroot.org> wrote:
>
> Add RK3528 compatible string for SD/SDIO interface.
>
> Signed-off-by: Yao Zi <ziyao@disroot.org>
> Acked-by: Rob Herring (Arm) <robh@kernel.org>

Applied for next, thanks!

Kind regards
Uffe


> ---
>  Documentation/devicetree/bindings/mmc/rockchip-dw-mshc.yaml | 1 +
>  1 file changed, 1 insertion(+)
>
> diff --git a/Documentation/devicetree/bindings/mmc/rockchip-dw-mshc.yaml b/Documentation/devicetree/bindings/mmc/rockchip-dw-mshc.yaml
> index 06df1269f247..ea0feb733e32 100644
> --- a/Documentation/devicetree/bindings/mmc/rockchip-dw-mshc.yaml
> +++ b/Documentation/devicetree/bindings/mmc/rockchip-dw-mshc.yaml
> @@ -38,6 +38,7 @@ properties:
>                - rockchip,rk3328-dw-mshc
>                - rockchip,rk3368-dw-mshc
>                - rockchip,rk3399-dw-mshc
> +              - rockchip,rk3528-dw-mshc
>                - rockchip,rk3568-dw-mshc
>                - rockchip,rk3588-dw-mshc
>                - rockchip,rv1108-dw-mshc
> --
> 2.48.1
>

