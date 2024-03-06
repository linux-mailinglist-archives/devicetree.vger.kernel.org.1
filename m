Return-Path: <devicetree+bounces-48799-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id DD57087394B
	for <lists+devicetree@lfdr.de>; Wed,  6 Mar 2024 15:36:41 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 6A9D7B21058
	for <lists+devicetree@lfdr.de>; Wed,  6 Mar 2024 14:36:39 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 62D6513341E;
	Wed,  6 Mar 2024 14:36:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="BCHpRZxJ"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-yb1-f177.google.com (mail-yb1-f177.google.com [209.85.219.177])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C7E4613248F
	for <devicetree@vger.kernel.org>; Wed,  6 Mar 2024 14:36:32 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.219.177
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1709735794; cv=none; b=u5zJuSgbrxwtIVfsKeEbdEt86xu8cDf+cHDCVFaj9IRikAfP60oss+pqZq5pHgpn71ExapzY9iIppGR01FbLd6Wh74Lws/yrF8Q17jQ0qNm4VOvk4baL+58hjYFDH80pxQkBj28HPCdCcNqFVMSCawixW1kUbKdpz4sReq7pySU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1709735794; c=relaxed/simple;
	bh=1LLQImUgWptF5aTl7tp+pyRCwj6XNl/NYoCHRTgTYms=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=qeHkE/zTx3g9kD6vskmsySci6yGHmKpht6CJSESiZrtTq6lk4RHox2E8p2h/320o2xF4LinaY4TAhKsWgjArkGUENoP8xXbbuKnc1DgozfaMKEdFGDLyYYHUy6dAQD+kg7q6zgdxyJzkhotMwQcF/+Q1qi1/R0sspv8r+rP4ZV0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=BCHpRZxJ; arc=none smtp.client-ip=209.85.219.177
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-yb1-f177.google.com with SMTP id 3f1490d57ef6-dcc80d6004bso6828374276.0
        for <devicetree@vger.kernel.org>; Wed, 06 Mar 2024 06:36:32 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1709735792; x=1710340592; darn=vger.kernel.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=iHNwpCe+I31CTwN7aUrmyx61YaV7nOH+nNHqHsIA11Y=;
        b=BCHpRZxJWxalje9L7WlqJguo1HTa7MpF8LJ33LqN/L+0J8dTF13MCd8aUXoSJotOa2
         fbwL/ziW++3e7c+h9i5YPcO4HZdcDNWsKVzLckV87v04/1o0o+TWVuHqcOnNhKzCuRpf
         JwxrtfB5PlvDTV+XYCYF59bSflrCsqU9NQmNERhfSLR8wYfaVGx5L2LVIOX53iGcHZ47
         WBr2K40Y4f0QFY6wj6x5fxs4vxvddrFOODwD4lbusHO9j8RToRQS9FZiRb7yyyPdtqT0
         f7KkXH3AsSYqpEvgkqVtjT8Zbmg0PjSG7CTg8BPUsX3yPfDZ5feDbLQkZmipjnt4zJPY
         kmpw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1709735792; x=1710340592;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=iHNwpCe+I31CTwN7aUrmyx61YaV7nOH+nNHqHsIA11Y=;
        b=vK6MiAbQwqcCXz33IE2WNEXKpfHLKsZwi5LozyzUC2qHXYzDyUDL+CNHc8h2Purf63
         dgqXDfUsN5sJsDQGvt0WKb3azcu8ffqexOY5woyM8ezltpM+hUHH3NS2SDQOAKPyRRvT
         YD8rVihWMkmqQDgWPXNc4D0PLNZUucONifrpYDn4k3/c6FLnnH5nbvgVyql1l0VBVTK2
         rQL0XsPuPCn0ds2fID4ImIkl3+3F62j59ojyGAOv4t1CxNh33hZ0tEjE1onzZHk27vOp
         WKLOSNYXcGUtrnnp07ULyM+H0MsipGkON7whqDKRP13LIC5bhdbQW/HQ/7Azzfz1Bi5h
         3gEw==
X-Forwarded-Encrypted: i=1; AJvYcCX9J1pkahJGqQJGHYy8jcOlH34/Y/ZmWwk5z85au4/WXzzHIOqQGx+20x+5WLtT0PnbxCIljfIKYwHG/sSJtUJ2GyOVOuK5hTgyKw==
X-Gm-Message-State: AOJu0Yyoy6L0dUBqVaA+j+ceioMQUrr/lZNqBtsiiduKyiOmOn65T5lA
	dwkt8ofj+SY6j7Pe7uaAWHjnvto4eCSztkpFSs6da9QgL8o4coiiYP7Rni1YU3dBLJC1UwjfmX5
	VFI1NTYtTDNbQTLXg9stXDc8QIMEgIoinhibFEQ==
X-Google-Smtp-Source: AGHT+IEPpVST+4/Bc4TNGCJR/RGKL6oQPaPcYMdtq9368ed+1AVIeaEVq3Hm15PMiDpt0MhWoG0yHtosTgDkNuKx8fY=
X-Received: by 2002:a25:b28f:0:b0:dc7:5c37:5420 with SMTP id
 k15-20020a25b28f000000b00dc75c375420mr12698928ybj.60.1709735790316; Wed, 06
 Mar 2024 06:36:30 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20240306140306.876188-1-amadeus@jmu.edu.cn> <20240306140306.876188-3-amadeus@jmu.edu.cn>
In-Reply-To: <20240306140306.876188-3-amadeus@jmu.edu.cn>
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Date: Wed, 6 Mar 2024 16:36:19 +0200
Message-ID: <CAA8EJpo+wLYzLNheCJKXHTZwwQO9zEnVYyGbj4gSPVVo9yoAMA@mail.gmail.com>
Subject: Re: [PATCH v2 2/4] arm64: dts: qcom: ipq6018: add 1.5GHz CPU Frequency
To: Chukun Pan <amadeus@jmu.edu.cn>
Cc: Bjorn Andersson <andersson@kernel.org>, Konrad Dybcio <konrad.dybcio@linaro.org>, 
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, Conor Dooley <conor+dt@kernel.org>, 
	Rob Herring <robh@kernel.org>, linux-arm-msm@vger.kernel.org, 
	linux-kernel@vger.kernel.org, devicetree@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"

On Wed, 6 Mar 2024 at 16:04, Chukun Pan <amadeus@jmu.edu.cn> wrote:
>
> The IPQ6005 and some IPQ6000 SoCs (with PMIC) have CPU
> frequencies up to 1.5GHz, so add this frequency.

After this patch non-PMIC IPQ6000 boardss are broken until patch3 is
applied. Please change the order of these patches.

>
> Signed-off-by: Chukun Pan <amadeus@jmu.edu.cn>
> ---
>  arch/arm64/boot/dts/qcom/ipq6018.dtsi | 7 +++++++
>  1 file changed, 7 insertions(+)
>
> diff --git a/arch/arm64/boot/dts/qcom/ipq6018.dtsi b/arch/arm64/boot/dts/qcom/ipq6018.dtsi
> index 7fdb119083a2..064b5706a289 100644
> --- a/arch/arm64/boot/dts/qcom/ipq6018.dtsi
> +++ b/arch/arm64/boot/dts/qcom/ipq6018.dtsi
> @@ -140,6 +140,13 @@ opp-1440000000 {
>                         clock-latency-ns = <200000>;
>                 };
>
> +               opp-1512000000 {
> +                       opp-hz = /bits/ 64 <1512000000>;
> +                       opp-microvolt = <937500>;
> +                       opp-supported-hw = <0x2>;
> +                       clock-latency-ns = <200000>;
> +               };
> +
>                 opp-1608000000 {
>                         opp-hz = /bits/ 64 <1608000000>;
>                         opp-microvolt = <987500>;
> --
> 2.25.1
>
>


-- 
With best wishes
Dmitry

