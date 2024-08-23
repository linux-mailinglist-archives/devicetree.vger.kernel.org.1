Return-Path: <devicetree+bounces-96202-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 706FE95D1FB
	for <lists+devicetree@lfdr.de>; Fri, 23 Aug 2024 17:47:48 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 6B3B3B2ABCF
	for <lists+devicetree@lfdr.de>; Fri, 23 Aug 2024 15:42:07 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 7A49418953D;
	Fri, 23 Aug 2024 15:40:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="CBHi8NBK"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pl1-f174.google.com (mail-pl1-f174.google.com [209.85.214.174])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B5499188A1A
	for <devicetree@vger.kernel.org>; Fri, 23 Aug 2024 15:40:13 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.214.174
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1724427616; cv=none; b=MVHUMj5oleRNVM+KKTo+KCUcI5PKWoxFvST0zsdwlyFJC6F9DinwkVB8jPu97lYfxPCtwhwTqnoKkMkgRCsss157BsQvHFgft6n34/+SaqDosZxmTbZCrbYM42UTxN6Og9iMpqxLWbez/EixlqGY01j224Cf31NeN3EQkEun8K8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1724427616; c=relaxed/simple;
	bh=GaP3IZrd5RcE9Ge4dIzx32rmwqF5NAyUSCzfoCvnFqI=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=e08cRu+AY/0O6qr6yde/8quWRJMjYECI1ZVWLKmvgY94bamTlL/BUPbVQQStoRcKZGzgv0KmlxJqM5fd/KHnaiauKUJlyHOe3KaGS9n6s1V2C3ktRraOz4r+8twIFE+CRdRBjNg8ZtNYhBnE2strPyAIxjGbOZt/gxISGmeiCN4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=CBHi8NBK; arc=none smtp.client-ip=209.85.214.174
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-pl1-f174.google.com with SMTP id d9443c01a7336-201fae21398so16395315ad.1
        for <devicetree@vger.kernel.org>; Fri, 23 Aug 2024 08:40:13 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1724427613; x=1725032413; darn=vger.kernel.org;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:from:to
         :cc:subject:date:message-id:reply-to;
        bh=7PswcGyJCTUDaExiPb+cp181Qy+ul9NVt4xbxRyvgH4=;
        b=CBHi8NBK50ce1ZSLXcvgXuFRyvK3+rzQXgSny7GMaTBigXH6bgnAbnvH84FKCD55mv
         3EHyp40zA5RFx+5qXqCPRpgFo0YlORHzAgJuB5QbsdvY+wHkqekT2gstx/ksKOHpUrXt
         bajZAMYUR6CCtn2I/5musaR3pCM/ZttOsKdWQgfm8msehHm9xZkkWvZ0QAQ5lcMGsmZ+
         XBEPAa+kFE0tEQg1YJOrpYRHUXIA4NwwFyGrPG5ncaxf0nedAcfWjbvp+8DImEam9ma7
         DfyQm1/sYphsmSdVZOCC2TgHKJHYbHYnQWbdRDY+tGBIGWAmGMnom9u6lCjCk+qA5NR0
         7hmg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1724427613; x=1725032413;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=7PswcGyJCTUDaExiPb+cp181Qy+ul9NVt4xbxRyvgH4=;
        b=S7J3arwTtCPdiiJL99Kz6omvueSSEBrbMEm80lBEbMRUuiwRqCsLn+DHDw4GMw59NY
         Z4JG9GsciXh4iCuz6f3L1qEXln/jf4vKF69QXjICCAAI/0GvUwem5niB//OrqRZ33ypd
         mxh6tb9itJEErNl013y0gxk6829K4X0yTPnsKoUxc4f9Qw3HSpO+MfmCs56e6M0aPM/x
         1WaAm/d4I8QFRF2nAhwJfFCaHCLJmLJ4oqHSx6JKhWAgBNU+0x+OJY8afj5Gpy/Esa1B
         lApIwuCjRZksfS2GN5UXgOsnVXbkInCbomi2xF0UyhiKR3DZv7gkYbKZlTccd5rSUr+F
         6qkg==
X-Forwarded-Encrypted: i=1; AJvYcCXYxpHbyOi3bpkEuwl9s5RCAHKLKTTLAKOvRJmckvqS4ff8gMYHZQ7hS7GgUISDOqQrPbJLTrxh2l2P@vger.kernel.org
X-Gm-Message-State: AOJu0YxhsDM+UwIoxDlofIgk6JHXy6lV5+Z5nIpJhkugQ8aGu/wHRH+G
	BpboEZV9UxelJtfuv2BQ9rDMNiuselMEK149frZsQ1ETYM0ArZIF7Cw3HASGVg==
X-Google-Smtp-Source: AGHT+IF74dSdz3Lddcc4Y1HpHeUo4j1K1gSy0t0eup/KCqO1Hsm3KR379cw9PEgNYC8BJ6xrSdPAcA==
X-Received: by 2002:a17:902:e5ce:b0:1fd:67c2:f97f with SMTP id d9443c01a7336-2039e4e7cf1mr23598545ad.28.1724427612976;
        Fri, 23 Aug 2024 08:40:12 -0700 (PDT)
Received: from thinkpad ([120.60.50.97])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-2038556686asm29835955ad.40.2024.08.23.08.40.07
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 23 Aug 2024 08:40:12 -0700 (PDT)
Date: Fri, 23 Aug 2024 21:09:58 +0530
From: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
To: Md Sadre Alam <quic_mdalam@quicinc.com>
Cc: vkoul@kernel.org, robh@kernel.org, krzk+dt@kernel.org,
	conor+dt@kernel.org, andersson@kernel.org, konradybcio@kernel.org,
	thara.gopinath@gmail.com, herbert@gondor.apana.org.au,
	davem@davemloft.net, gustavoars@kernel.org,
	u.kleine-koenig@pengutronix.de, kees@kernel.org, agross@kernel.org,
	linux-arm-msm@vger.kernel.org, dmaengine@vger.kernel.org,
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
	linux-crypto@vger.kernel.org, quic_srichara@quicinc.com,
	quic_varada@quicinc.com, quic_utiwari@quicinc.com
Subject: Re: [PATCH v2 01/16] dt-bindings: dma: qcom,bam: Add bam pipe lock
Message-ID: <20240823153958.vk4naz34vgkqzhrb@thinkpad>
References: <20240815085725.2740390-1-quic_mdalam@quicinc.com>
 <20240815085725.2740390-2-quic_mdalam@quicinc.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20240815085725.2740390-2-quic_mdalam@quicinc.com>

On Thu, Aug 15, 2024 at 02:27:10PM +0530, Md Sadre Alam wrote:
> BAM having pipe locking mechanism. The Lock and Un-Lock bit
> should be set on CMD descriptor only. Upon encountering a
> descriptor with Lock bit set, the BAM will lock all other
> pipes not related to the current pipe group, and keep
> handling the current pipe only until it sees the Un-Lock
> set.
> 
> Signed-off-by: Md Sadre Alam <quic_mdalam@quicinc.com>
> ---
> 
> Change in [v2]
> 
> * Added initial support for dt-binding
> 
> Change in [v1]
> 
> * This patch was not included in [v1]
> 
>  Documentation/devicetree/bindings/dma/qcom,bam-dma.yaml | 8 ++++++++
>  1 file changed, 8 insertions(+)
> 
> diff --git a/Documentation/devicetree/bindings/dma/qcom,bam-dma.yaml b/Documentation/devicetree/bindings/dma/qcom,bam-dma.yaml
> index 3ad0d9b1fbc5..91cc2942aa62 100644
> --- a/Documentation/devicetree/bindings/dma/qcom,bam-dma.yaml
> +++ b/Documentation/devicetree/bindings/dma/qcom,bam-dma.yaml
> @@ -77,6 +77,12 @@ properties:
>        Indicates that the bam is powered up by a remote processor but must be
>        initialized by the local processor.
>  
> +  qcom,bam_pipe_lock:
> +    type: boolean
> +    description:
> +      Indicates that the bam pipe needs locking or not based on client driver
> +      sending the LOCK or UNLOK bit set on command descriptor.
> +

This looks like a pure driver implementation and doesn't belong to the DT at
all. Why can't you add a logic in the driver to use the lock based on some
detection mechanism?

- Mani

>    reg:
>      maxItems: 1
>  
> @@ -92,6 +98,8 @@ anyOf:
>        - qcom,powered-remotely
>    - required:
>        - qcom,controlled-remotely
> +  - required:
> +      - qcom,bam_pipe_lock
>    - required:
>        - clocks
>        - clock-names
> -- 
> 2.34.1
> 
> 

-- 
மணிவண்ணன் சதாசிவம்

