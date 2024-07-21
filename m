Return-Path: <devicetree+bounces-86999-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 437F0938410
	for <lists+devicetree@lfdr.de>; Sun, 21 Jul 2024 10:52:14 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 65BBE1C20A32
	for <lists+devicetree@lfdr.de>; Sun, 21 Jul 2024 08:52:13 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B75608F40;
	Sun, 21 Jul 2024 08:52:12 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="ObkI0JcH"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-oa1-f44.google.com (mail-oa1-f44.google.com [209.85.160.44])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 163FE9473
	for <devicetree@vger.kernel.org>; Sun, 21 Jul 2024 08:52:10 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.160.44
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1721551932; cv=none; b=Nzj0qHayB13f4N5LZ3G/34lCKK2HVvOqE3UDXE70p972H+ZjLEhLK+zV3y6Td0G+J1j3chE3n1Qs+UY5fkluGRBQSTT7+IymCmQbHtmm4qcdMBmNqYrCZ4VsRcMdwy+BIOKPN0kh9edhIQQgxaQeyLN2gQGiXsch842Ju4of5Fs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1721551932; c=relaxed/simple;
	bh=iCQdZOj68/akTNvWefpiYEBVhYawxW0/QS2Pv7LOC/o=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=WOWRlbe3gtxslw/jgSd/JTCz/Oako7E/O/uvDWsxvTtQnbN9hO11hwC/JEnsNNMvYAB0fPPkxhBkvixNrl4Fv10WO0XygO6RNfEd5BurI/QOeBKSHGWA7UZe4NHHS4Pe7+i5VsexENOZRcMkjS3jfyZOYPTRCNJWoGbuwSPVqNo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=ObkI0JcH; arc=none smtp.client-ip=209.85.160.44
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-oa1-f44.google.com with SMTP id 586e51a60fabf-261112c303bso1245704fac.1
        for <devicetree@vger.kernel.org>; Sun, 21 Jul 2024 01:52:10 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1721551930; x=1722156730; darn=vger.kernel.org;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:from:to
         :cc:subject:date:message-id:reply-to;
        bh=X7ZS2uPOUje55mIE52CAqCCri08pD10wNTzXXCn3ihY=;
        b=ObkI0JcHS09zeI6Rl/r0Yi2B5ERCcSZMGN6lIFnN7BdP/rdLqeHRarBwiwNm+gw4lG
         30PgHdbxyLbey1iyGsT9JfGY4U+6WwcT/1ODCJ8e7P1hTG4ytd+8Z9p2j2Sv5oLjTvmI
         RZK0xN+WUv9lHKawRC21zM6rohnmsqGl0tOrKGo6dsKtK3ECYhnOr0CiUfeMywUpA5lT
         paP04jfG3RbzGnGeo506MyiKweja+vrkjLQ9L7JUGd12AFpa9i7X5cxIzFxmy5GAOgMk
         vtIQ9ZlugokyziJFteum2SMi9Sbxx+MlivJBTia9n8vewFUnC+sDKy6BYMlIcq2rIWMA
         v3Rg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1721551930; x=1722156730;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=X7ZS2uPOUje55mIE52CAqCCri08pD10wNTzXXCn3ihY=;
        b=aXwN11JKymff0+TZHwBhBWSjBXsus1BASHmkcLI7YJhHk4Bj5CfOnbImNaCIy4N6TH
         FoAnE27/R170Y5290W7yPR+HfWKgaKjwKJyPYw8/eZRt7vpvkFgCdgeZXTUAYsIh6m1l
         hTpFo3qg8Emb1w1tV5xCfbx4kudGEsvSmEsT2c2gyQ2qBp1tArqPoPabiHbUagRVhM9d
         im90fvuDn83FYB7suaUVpVxNQCYjhAeCRD4u7H/3nV5JBba5TDYVWhn6ZRHotcn5VrGE
         5IyR4nGKv7Cj3WQvZjv5pEcja2g+Y1tbvSY98+Sz9Pffchy9nxCuJu3f2YAc6o2IajCW
         9B9A==
X-Forwarded-Encrypted: i=1; AJvYcCWaM3lGReVo+QDoJZhMU+vvkTyHZOzKXevZcvN/5w6F9XccYydEddprlSS3Dvw5uGk4Xk5329iz3cX7YZMHkUidKTyECq5SRoq65w==
X-Gm-Message-State: AOJu0YwlOMoVyQF4QJ2S87G4DXApC/bth/ie7SFO602/w4s6M31yBLkV
	0UK/JRLRgzGeqGNW93SAtCM5chx6sZfAbFKWqu0YnS+Hj0Nw21aCTabEHr60GA==
X-Google-Smtp-Source: AGHT+IEc7fqKlPNWS9Lge1u0WJuAaJVMRY75Y8sIwcx5LAC81F2MWI3JcVI2FJjY9FR1mPBL0NCVBg==
X-Received: by 2002:a05:6870:171e:b0:260:eb3a:1b2 with SMTP id 586e51a60fabf-26121303088mr4811129fac.7.1721551930158;
        Sun, 21 Jul 2024 01:52:10 -0700 (PDT)
Received: from thinkpad ([120.56.206.118])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-70d24065a1esm415083b3a.120.2024.07.21.01.52.07
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 21 Jul 2024 01:52:09 -0700 (PDT)
Date: Sun, 21 Jul 2024 14:22:05 +0530
From: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
To: Tengfei Fan <quic_tengfan@quicinc.com>
Cc: Jassi Brar <jassisinghbrar@gmail.com>, Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>, kernel@quicinc.com,
	linux-arm-msm@vger.kernel.org, linux-kernel@vger.kernel.org,
	devicetree@vger.kernel.org
Subject: Re: [PATCH v2] dt-bindings: mailbox: qcom-ipcc: Document the QCS9100
 IPCC
Message-ID: <20240721085205.GM1908@thinkpad>
References: <20240709-document_qcs9100_ipcc_compatible-v2-1-0fd67000e6b1@quicinc.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20240709-document_qcs9100_ipcc_compatible-v2-1-0fd67000e6b1@quicinc.com>

On Tue, Jul 09, 2024 at 10:01:47PM +0800, Tengfei Fan wrote:
> Document the Inter-Processor Communication Controller on the QCS9100
> Platform.
> QCS9100 is drived from SA8775p. Currently, both the QCS9100 and SA8775p
> platform use non-SCMI resource. In the future, the SA8775p platform will
> move to use SCMI resources and it will have new sa8775p-related device
> tree. Consequently, introduce "qcom,qcs9100-ipcc" to describe non-SCMI
> based IPCC.
> 
> Signed-off-by: Tengfei Fan <quic_tengfan@quicinc.com>

Reviewed-by: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>

- Mani

> ---
> Introduce support for the QCS9100 SoC device tree (DTSI) and the
> QCS9100 RIDE board DTS. The QCS9100 is a variant of the SA8775p.
> While the QCS9100 platform is still in the early design stage, the
> QCS9100 RIDE board is identical to the SA8775p RIDE board, except it
> mounts the QCS9100 SoC instead of the SA8775p SoC.
> 
> The QCS9100 SoC DTSI is directly renamed from the SA8775p SoC DTSI, and
> all the compatible strings will be updated from "SA8775p" to "QCS9100".
> The QCS9100 device tree patches will be pushed after all the device tree
> bindings and device driver patches are reviewed.
> 
> The final dtsi will like:
> https://lore.kernel.org/linux-arm-msm/20240703025850.2172008-3-quic_tengfan@quicinc.com/
> 
> The detailed cover letter reference:
> https://lore.kernel.org/linux-arm-msm/20240703025850.2172008-1-quic_tengfan@quicinc.com/
> ---
> Changes in v2:
>   - Split huge patch series into different patch series according to
>     subsytems
>   - Update patch commit message
> 
> prevous disscussion here:
> [1] v1: https://lore.kernel.org/linux-arm-msm/20240703025850.2172008-1-quic_tengfan@quicinc.com/
> ---
>  Documentation/devicetree/bindings/mailbox/qcom-ipcc.yaml | 1 +
>  1 file changed, 1 insertion(+)
> 
> diff --git a/Documentation/devicetree/bindings/mailbox/qcom-ipcc.yaml b/Documentation/devicetree/bindings/mailbox/qcom-ipcc.yaml
> index 05e4e1d51713..916c47fbc238 100644
> --- a/Documentation/devicetree/bindings/mailbox/qcom-ipcc.yaml
> +++ b/Documentation/devicetree/bindings/mailbox/qcom-ipcc.yaml
> @@ -24,6 +24,7 @@ properties:
>    compatible:
>      items:
>        - enum:
> +          - qcom,qcs9100-ipcc
>            - qcom,qdu1000-ipcc
>            - qcom,sa8775p-ipcc
>            - qcom,sc7280-ipcc
> 
> ---
> base-commit: 0b58e108042b0ed28a71cd7edf5175999955b233
> change-id: 20240709-document_qcs9100_ipcc_compatible-f5f933d24098
> 
> Best regards,
> -- 
> Tengfei Fan <quic_tengfan@quicinc.com>
> 

-- 
மணிவண்ணன் சதாசிவம்

