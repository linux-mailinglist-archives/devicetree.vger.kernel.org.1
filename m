Return-Path: <devicetree+bounces-171619-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 7C07FA9F5A0
	for <lists+devicetree@lfdr.de>; Mon, 28 Apr 2025 18:23:14 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 68CDF3B82CC
	for <lists+devicetree@lfdr.de>; Mon, 28 Apr 2025 16:22:13 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 8F42C27A91A;
	Mon, 28 Apr 2025 16:22:06 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="NibRXpgW"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-yw1-f169.google.com (mail-yw1-f169.google.com [209.85.128.169])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CD1AD27BF6D
	for <devicetree@vger.kernel.org>; Mon, 28 Apr 2025 16:22:04 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.169
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1745857326; cv=none; b=k5xFhzUCX5Bnu3KZNTfvmBwsB+xC/xJuHEQ6w5TljB351BKejvto42gkBWDa2Qi8pmxQw57T0Uwi+sjIUNlOLFN8YmGcAnNdod4nawURLWy3WkIKH9dFQrFxaMDcb75Vdc0qgS2qewS3G3AQbGtlE7hM/ezfiX8suiYhXOiQDvE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1745857326; c=relaxed/simple;
	bh=bpFyqVnuV1089Ku+5ux8rJ2ecmqFhHkgxj5EiEeZRv8=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=Xv9n5UVhfNSzVuClmj3xke1Wv2lAI0PWajn2N+UKolg8I10brzSwy4EHUnWblxIqfPebirD718UE2TJuzj+Xh2Lm9plxcPqmmP8Ah2/hDRH/79lTpxfWzL96ncdVgWR9z5dIoumqZsqPvjgHhhLyxtKlH8/OTSYSeEP/PS3KGb4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=NibRXpgW; arc=none smtp.client-ip=209.85.128.169
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-yw1-f169.google.com with SMTP id 00721157ae682-6ff1e375a47so51996437b3.1
        for <devicetree@vger.kernel.org>; Mon, 28 Apr 2025 09:22:04 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1745857324; x=1746462124; darn=vger.kernel.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=jYJtlwUK9gE9rMaYOlbOBvLsJs+lLIqjK+LtZtlE7Pg=;
        b=NibRXpgWAWIKe5UMYOjZwFdat/f/I+EKWRm4WbRkQssJjXtQsl6YiIiMbHZ1qH74Of
         MlKo8+yt0mxBlg0KLHVgJDxuohwL0SCz24AlRuaMxgpgF9/YC/oLK40moVsqqMqevn8Y
         rQVFoyCF7CAMkeLlmUToFc2Z2F3IH2Nh+hQtZPHWLoZmPfIRCrJOBp7bWc1xpN1iA3qq
         fLGxERY1f2GGPm+mguKAWuf5P0dDgNZmynZp6RYhAGnjO2XiUqucFcy7rTetzOGUwpQA
         I1MWLY2isG86wcMrZAPYHiII0LIhW2NSBoBnFEcJKlUBRfFxspqxJO6jsklIJvKRld+j
         H2aQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1745857324; x=1746462124;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=jYJtlwUK9gE9rMaYOlbOBvLsJs+lLIqjK+LtZtlE7Pg=;
        b=PcqJJ21ooEPwYEYnSznnQEuar6g6yA8pwOB/QMxjVDMV+YaNhB2bOOn0AFHkyAg6f8
         ANKeccyuYwVXjVokno2oj/Ud2kLtnZghcPMnxnkvjYcdc3pkY8M5QssVKU/zz5cW1Km2
         BTw6zziam20jg4UdDtd5gQ4YysCXNhMLzG8zjfJtRXFhwenTVpXOt0j8xudbzrBpD4uC
         gdKgLqhwYLGJptS7TaQRtLLKKcSsgEorSlasGV5Qbw7a8cWJs2QK0i9kujE37yOQaI9p
         U6UmL90HdBUAgN3Xc6i3uE4STLPWJmv4eR45Nd2le+Ke1zg/GYLnsn0hVHRC5kS0dP75
         2UAQ==
X-Forwarded-Encrypted: i=1; AJvYcCUDJm7J2JISszCgUEM41iNxvRdZmV3uMR8V7NNZorp5WBop/pNVINgFxuO/8ODJpu0JE9uJ27iG9l1g@vger.kernel.org
X-Gm-Message-State: AOJu0YymjGdfnhhYLo5jtfQy2kF4B+/UJScuPKUqSb6wK+oXZ89lVQSQ
	6tmqes0z8pJzJIGbLJwBYLHDo8lX6j32W1nGUYuB0xGNmdXJ45Abslkw82g8GlJLv91PWiVaU16
	y0/gZJIUz5YJ6mo2hE5z1SGvRxcmLxFE4IcbolQ==
X-Gm-Gg: ASbGnctRtEQhZjWJ1gU1OMSj9RKGDt3WC5pnHGphaz8Zcyu97QMcr1nmLZFbWJtYi1P
	4aAPBbogb4mOL+m0vGnzGGmh/UuI/GKk45IyqbOVo/MhizEBw6GhUyu7bHDjJijrkzxSdypSVTf
	4zKkgzC45bK3AkLWJCJ3RClgQ=
X-Google-Smtp-Source: AGHT+IEnuPZVaSvesgsXBNiFjLoJWiZy53DGC9o8Sp1zW11942XKrl2X+yuR17blEKZkX8LjsFHcDXXyS5d8LGqn8s4=
X-Received: by 2002:a05:690c:4905:b0:6ee:8363:96d3 with SMTP id
 00721157ae682-7085f23733bmr133253447b3.27.1745857323624; Mon, 28 Apr 2025
 09:22:03 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20250417151300.3570021-1-Frank.Li@nxp.com>
In-Reply-To: <20250417151300.3570021-1-Frank.Li@nxp.com>
From: Ulf Hansson <ulf.hansson@linaro.org>
Date: Mon, 28 Apr 2025 18:21:27 +0200
X-Gm-Features: ATxdqUFvglZC6L-IAvGpqWBDcRfYWiynLM-kZ_f4pW7hBaIPW-FcbcKpWQ_mW_g
Message-ID: <CAPDyKFpEGn=xcaG=QF4KkvLxwN3Ak41dJ=1mgY5oDn2pRYJktQ@mail.gmail.com>
Subject: Re: [PATCH 1/1] dt-bindings: mmc: fsl,esdhc: add compatible string fsl,ls1021a-esdhc
To: Frank Li <Frank.Li@nxp.com>
Cc: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
	Conor Dooley <conor+dt@kernel.org>, 
	"open list:MULTIMEDIA CARD (MMC), SECURE DIGITAL (SD) AND..." <linux-mmc@vger.kernel.org>, 
	"open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS" <devicetree@vger.kernel.org>, open list <linux-kernel@vger.kernel.org>, 
	imx@lists.linux.dev
Content-Type: text/plain; charset="UTF-8"

On Thu, 17 Apr 2025 at 17:13, Frank Li <Frank.Li@nxp.com> wrote:
>
> Add compatible string fsl,ls1021a-esdhc for LS1021a SoC.
>
> Signed-off-by: Frank Li <Frank.Li@nxp.com>

Applied for next, thanks!

Kind regards
Uffe


> ---
>  Documentation/devicetree/bindings/mmc/fsl,esdhc.yaml | 1 +
>  1 file changed, 1 insertion(+)
>
> diff --git a/Documentation/devicetree/bindings/mmc/fsl,esdhc.yaml b/Documentation/devicetree/bindings/mmc/fsl,esdhc.yaml
> index b86ffb53b18b5..62087cf920df8 100644
> --- a/Documentation/devicetree/bindings/mmc/fsl,esdhc.yaml
> +++ b/Documentation/devicetree/bindings/mmc/fsl,esdhc.yaml
> @@ -24,6 +24,7 @@ properties:
>            - fsl,t1040-esdhc
>            - fsl,t4240-esdhc
>            - fsl,ls1012a-esdhc
> +          - fsl,ls1021a-esdhc
>            - fsl,ls1028a-esdhc
>            - fsl,ls1088a-esdhc
>            - fsl,ls1043a-esdhc
> --
> 2.34.1
>

