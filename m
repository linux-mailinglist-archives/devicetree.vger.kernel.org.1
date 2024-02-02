Return-Path: <devicetree+bounces-38006-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 33716847234
	for <lists+devicetree@lfdr.de>; Fri,  2 Feb 2024 15:51:51 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id E4CAA28F25B
	for <lists+devicetree@lfdr.de>; Fri,  2 Feb 2024 14:51:49 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A7D841420D2;
	Fri,  2 Feb 2024 14:51:41 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="AhnnXlwx"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-yw1-f173.google.com (mail-yw1-f173.google.com [209.85.128.173])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 696711420AD
	for <devicetree@vger.kernel.org>; Fri,  2 Feb 2024 14:51:39 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.173
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1706885501; cv=none; b=begZvVvOTZWJUc9RKG5lwPSyg7VJmytlwYMY2P0l7n5UamMvpynCrKxStZFLIxPTkQT/aj739Q0tTMBcz7hwYT7gvb/EUdeobzqt+xVJDYmkPyn/8ZUR5CcaXgGZH6isz18enadPLnFcSilwpKTDPAfpYtYJ8iPPzLmyw2gjg9I=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1706885501; c=relaxed/simple;
	bh=pi5rb7Tmyn/7tYX8PooVljl6kCdTTto2zjA8GuBlpAY=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=PwMTEYgOXHSV7yJh67UtjlS/ppU+6Co2QaK77FefLUVfU0bpu44Bf7lf5FLH3sZhCCKl0Yxd9AhuFr5PvI2dDRYKSduqjawTIQiINLOOBpQ/9B8OHZ9DojFRceeJ91j16Dt5/HA8ZGKLaz/D3riwaZwac/pnrf1VOUcTRvG7R6o=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=AhnnXlwx; arc=none smtp.client-ip=209.85.128.173
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-yw1-f173.google.com with SMTP id 00721157ae682-6002317a427so19574127b3.2
        for <devicetree@vger.kernel.org>; Fri, 02 Feb 2024 06:51:39 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1706885498; x=1707490298; darn=vger.kernel.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=5ilE578MCSWuARlueVH7UntettuBsn2jGRybz77noas=;
        b=AhnnXlwxIZOs19Mv3JIjQFABk3L2h0YBoug9D4lQdOsMdGSAFeEnooAGf89g8Q9jm3
         qhmngmocgRaMRbkpL0Hixa69ENOM6CAufNcRzRe2ZjpmJY7NGKblf4dIowT3qT2liRAd
         ggmvyIEJMob9r1eBdr9q3ixebl3go4ln2iIO/tR04+agLLIZZLw+1/UvsqPvx02ZLUTs
         9/ZvWoEQ+aqQv5SnrRM57epENLo1fNsvR2Mp58bDLb2w51QdlNMibVSTsCIkrt1u9dKv
         NeZQBZYWtRf1Bihn/WdAbvEZVf/JfS90cNQBGcpLKPvqATpItU6UmbzGgP/YXaaIvvMT
         IIZw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1706885498; x=1707490298;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=5ilE578MCSWuARlueVH7UntettuBsn2jGRybz77noas=;
        b=rwsBSIAsWuTxdpePBZljY3lzIneQPi0px/M5wVt886l5d0Q2YOr1z9yhCIuCTIeP4e
         Id6N1EJFJfQcR/zJh2ysSc3z+nQX3wig6rc3Ripuky6ryO6xqHvyCnIph6eyl12I6aAc
         XGrg6Er/NcSznWZWn4KYad/jqCRrjG+4OdCYnPZ/G4sjV8DYdlDvCS3gkaNDjDsWZ16x
         ee9QS/A/lEBVDsCap3T/NvfnYbmgkDEGe5Pi9ZZYPqehmHShgcKZ5gTCT2VvQFPXp1iI
         SgONReFI9g27MVuNLJdAucHaD6mAqENK71QxcsTMPYyLvIRgKsVRlmgLjs34+sYM65QG
         QbFQ==
X-Gm-Message-State: AOJu0YxW2BjY9wC6BTEnBUbttAI4ORwVI1gA7RVIfp8XYZQa2diSVjls
	0UsInGCeIzU8x+aKpZrn4gFsR0lpaqXeT5C59/LmskO15Ii4c/UZoDtIQa7vb09fF7rn94MdNN6
	XIUBB9s8huWYguG/pfNuzIEDU5tybnM7gcPWuxg==
X-Google-Smtp-Source: AGHT+IGAu6APLA2kU8DipKtx/vB6ojLEggEiEM1eRwpgZew+E0GgfuIW0deCZUiuf3ZHZKYpE++k4dcdLQJ7ztG9oM4=
X-Received: by 2002:a81:52c4:0:b0:5ff:569c:d349 with SMTP id
 g187-20020a8152c4000000b005ff569cd349mr8284638ywb.19.1706885498324; Fri, 02
 Feb 2024 06:51:38 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20240202133638.4720-1-quic_wasimn@quicinc.com> <20240202133638.4720-2-quic_wasimn@quicinc.com>
In-Reply-To: <20240202133638.4720-2-quic_wasimn@quicinc.com>
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Date: Fri, 2 Feb 2024 16:51:27 +0200
Message-ID: <CAA8EJpqARMwKhybgsFDKNZ=-uSAY=j4ocdZ=ax5U1KVPNXBTCg@mail.gmail.com>
Subject: Re: [PATCH 1/3] dt-bindings: arm: qcom: Document rb5gen2-hdk board
To: Wasim Nazir <quic_wasimn@quicinc.com>
Cc: andersson@kernel.org, konrad.dybcio@linaro.org, robh+dt@kernel.org, 
	krzysztof.kozlowski+dt@linaro.org, conor+dt@kernel.org, 
	linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org, kernel@quicinc.com
Content-Type: text/plain; charset="UTF-8"

On Fri, 2 Feb 2024 at 15:37, Wasim Nazir <quic_wasimn@quicinc.com> wrote:
>
> Document board bindings for Rb5 gen2 hardware development kit.
> Rb5gen2-HDK is using Rb5 gen2 SOM which is based on QCS8550 SoC.
> RB5gen2-HDK is development kit used for IOT solutions.

What is the actual marketing name for the SoM and the carrier board?
The RB5gen2-HDK doesn't follow the previous example of the RB* boards
and doesn't sound in tune with the RB3gen2 submission.
Could you please sync up internally and come up with two similar names
for the platforms with similar purpose?

>
> Signed-off-by: Wasim Nazir <quic_wasimn@quicinc.com>
>
> diff --git a/Documentation/devicetree/bindings/arm/qcom.yaml b/Documentation/devicetree/bindings/arm/qcom.yaml
> index 9cee874a8eae..ce5b5dfe0e46 100644
> --- a/Documentation/devicetree/bindings/arm/qcom.yaml
> +++ b/Documentation/devicetree/bindings/arm/qcom.yaml
> @@ -104,6 +104,7 @@ description: |
>          qcp
>          qrd
>          rb2
> +        rb5gen2-hdk
>          ride
>          sbc
>          x100
> @@ -915,6 +916,14 @@ properties:
>            - const: qcom,qcm8550
>            - const: qcom,sm8550
>
> +      - items:
> +          - enum:
> +              - qcom,qcs8550-rb5gen2-hdk
> +          - const: qcom,qcs8550-rb5gen2
> +          - const: qcom,qcs8550
> +          - const: qcom,qcm8550
> +          - const: qcom,sm8550
> +
>        - items:
>            - enum:
>                - qcom,sa8155p-adp
> --
> 2.43.0
>
>


-- 
With best wishes
Dmitry

