Return-Path: <devicetree+bounces-35907-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id EF04283F2AB
	for <lists+devicetree@lfdr.de>; Sun, 28 Jan 2024 02:01:37 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 218311C2154A
	for <lists+devicetree@lfdr.de>; Sun, 28 Jan 2024 01:01:37 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C05AF1362;
	Sun, 28 Jan 2024 01:01:32 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="iU3z4Mk8"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-yw1-f174.google.com (mail-yw1-f174.google.com [209.85.128.174])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 11BDCECE
	for <devicetree@vger.kernel.org>; Sun, 28 Jan 2024 01:01:30 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.174
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1706403692; cv=none; b=XW3Rnmt2qOeRTbVWv9DRvc+2hZmf/9VgbyU2JS6V6KzkNYBTwK/87KgGcnIwvG5MkjQRpMb4JC46D9P9alkO8XOFfA9uP68XdcsZ/M/qK/QWvCdxXmL/9kGP6jQp5ADw5N+531A1+JfGQR6rsn1HvCUEaoFcRus3NcNe93gD5KM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1706403692; c=relaxed/simple;
	bh=s1ktUUM3CbOPG51ADbCX7yYyhsiSqRrPySzxWGfX3cw=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=uHXg3k0+mSkXu2or/YujqJzBTYahThlWf7LCtOLTVMBST+ePIp5YFudZjtElmc+2/8MG7/s8fman5aXQLxsAjXDJZ2WqO+6zbXEPVyiJVCYgPOAUa0BviIoSoBXa/fhNXKKRatZgv4C2709Ic3WNy99VTKpnI4I9mhV6u7+GaOo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=iU3z4Mk8; arc=none smtp.client-ip=209.85.128.174
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-yw1-f174.google.com with SMTP id 00721157ae682-5ff7ec8772dso20038277b3.0
        for <devicetree@vger.kernel.org>; Sat, 27 Jan 2024 17:01:30 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1706403690; x=1707008490; darn=vger.kernel.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=Akq4ZUpGAZUPtZ9ZSl7kec9+rWKqnjhKQTKGm0D6B4E=;
        b=iU3z4Mk8LGTYyxCHw/aQclMPmjNBcd6xju8kqXbvDKIjCe792H4H12h8GKYp8Uy8d4
         Rjq5Y/zOfU9cOqx5HHIFFnXUGVZHKKSTb/nNx+JmBdefMcUafRWfu+wK6eUJq41YcY34
         tXVlwMIxzH+6zTm6iifdoo73zlWuLESVF6QHAa1PQLXB9RhUvrFrS3b1NjrZ+ziVn7Oy
         Lc86UxfxxeWlSGWmVPez6uje9gdDop/if/+xXDfjbQKocyrbUEAe1rBcEggCOTDUQypZ
         lZxQspP/3QGzHMRSMW95OSF8g7spAcO6QUOlEgo4ukdymr4uYOPWAYOM8u+sHJCsQcrG
         79ew==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1706403690; x=1707008490;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=Akq4ZUpGAZUPtZ9ZSl7kec9+rWKqnjhKQTKGm0D6B4E=;
        b=QVFTh40Rj+af9Kzg3u+qsGoaJYZAc8gFGTu46qI4PtR58OMPz0JmF/xqQwVKjSP0aM
         nV8DpEQWBXLC8o5Zuv4S8cZiNETagbvdCBkbqkL2GP9nh+w4PKQzzzYPFxNeaxRZys5S
         JhWfAHWvUyxGETFESX1zaj6LP7tZlOsgNIV6di185r88Y43Cem7Mw3LogkQorPHYxPUj
         BtcYVxrLxiCxGurUPKudBPx8vl3rqliKAjR91yrAENb1InG913zOJws3/C/nBJfJmVay
         mKnX0al6wCnH0MqEDiyxOh7bUCNmo6n94C4YmBjrqxoixZKDIBUfDLpfsL/YDHTq1TuL
         CJOg==
X-Gm-Message-State: AOJu0YzrMAJLPj42ATnTpzpgHGYGkS0mpvigYLnZG3EvIU5g5Ies8gsB
	KtAUbl0jBxCttqlptFi53cxi5B7OPJICRL6IdOJEc+6/AuoqJIuYruvL005xiKefiEE1H36DwIl
	2erM0pONIhUlkrZvc8qyIxfPf8XI30AXbrtZlLw==
X-Google-Smtp-Source: AGHT+IFYb7HatSQPPLoPjPqnFQmWWbGZoWPVCQcd0gG1UWF2VmrKzHToe0mTzGvGfmkPE6SpfevyHBwphWYYblRQKag=
X-Received: by 2002:a81:6d4a:0:b0:5d7:1941:aa6 with SMTP id
 i71-20020a816d4a000000b005d719410aa6mr2551028ywc.65.1706403689965; Sat, 27
 Jan 2024 17:01:29 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20240127232436.2632187-1-quic_gaurkash@quicinc.com> <20240127232436.2632187-16-quic_gaurkash@quicinc.com>
In-Reply-To: <20240127232436.2632187-16-quic_gaurkash@quicinc.com>
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Date: Sun, 28 Jan 2024 03:01:18 +0200
Message-ID: <CAA8EJpr5fLYR1v64-DtjOigkUy3579tx_gwHpFWr9k0GyGajGw@mail.gmail.com>
Subject: Re: [PATCH v4 15/15] arm64: dts: qcom: sm8550: add hwkm support to
 ufs ice
To: Gaurav Kashyap <quic_gaurkash@quicinc.com>
Cc: linux-arm-msm@vger.kernel.org, linux-scsi@vger.kernel.org, 
	andersson@kernel.org, ebiggers@google.com, neil.armstrong@linaro.org, 
	srinivas.kandagatla@linaro.org, krzysztof.kozlowski+dt@linaro.org, 
	conor+dt@kernel.org, robh+dt@kernel.org, linux-kernel@vger.kernel.org, 
	linux-mmc@vger.kernel.org, kernel@quicinc.com, linux-crypto@vger.kernel.org, 
	devicetree@vger.kernel.org, quic_omprsing@quicinc.com, 
	quic_nguyenb@quicinc.com, bartosz.golaszewski@linaro.org, 
	konrad.dybcio@linaro.org, ulf.hansson@linaro.org, jejb@linux.ibm.com, 
	martin.petersen@oracle.com, mani@kernel.org, davem@davemloft.net, 
	herbert@gondor.apana.org.au
Content-Type: text/plain; charset="UTF-8"

On Sun, 28 Jan 2024 at 01:28, Gaurav Kashyap <quic_gaurkash@quicinc.com> wrote:
>
> The Inline Crypto Engine (ICE) for UFS/EMMC supports the
> Hardware Key Manager (HWKM) to securely manage storage
> keys. Enable using this hardware on sm8550.
>
> This requires two changes:
> 1. Register size increase: HWKM is an additional piece of hardware
>    sitting alongside ICE, and extends the old ICE's register space.
> 2. Explicitly tell the ICE driver to use HWKM with ICE so that
>    wrapped keys are used in sm8550.
>
> NOTE: Although wrapped keys cannot be independently generated and
> tested on this platform using generate, prepare and import key calls,
> there are non-kernel paths to create wrapped keys, and still use the
> kernel to program them into ICE. Hence, enabling wrapped key support
> on sm8550 too.
>
> Signed-off-by: Gaurav Kashyap <quic_gaurkash@quicinc.com>
> ---
>  arch/arm64/boot/dts/qcom/sm8550.dtsi | 3 ++-
>  1 file changed, 2 insertions(+), 1 deletion(-)
>
> diff --git a/arch/arm64/boot/dts/qcom/sm8550.dtsi b/arch/arm64/boot/dts/qcom/sm8550.dtsi
> index ee1ba5a8c8fc..b5b41d0a544c 100644
> --- a/arch/arm64/boot/dts/qcom/sm8550.dtsi
> +++ b/arch/arm64/boot/dts/qcom/sm8550.dtsi
> @@ -1977,7 +1977,8 @@ ufs_mem_hc: ufs@1d84000 {
>                 ice: crypto@1d88000 {
>                         compatible = "qcom,sm8550-inline-crypto-engine",
>                                      "qcom,inline-crypto-engine";
> -                       reg = <0 0x01d88000 0 0x8000>;
> +                       reg = <0 0x01d88000 0 0x10000>;

Does the driver fail gracefully with the old DT size? At least it
should not crash.

> +                       qcom,ice-use-hwkm;
>                         clocks = <&gcc GCC_UFS_PHY_ICE_CORE_CLK>;

-- 
With best wishes
Dmitry

