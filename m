Return-Path: <devicetree+bounces-121357-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 065DA9C68D8
	for <lists+devicetree@lfdr.de>; Wed, 13 Nov 2024 06:43:35 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 5C736B249D6
	for <lists+devicetree@lfdr.de>; Wed, 13 Nov 2024 05:43:32 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D249217625F;
	Wed, 13 Nov 2024 05:43:28 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="J8wYN5xJ"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lj1-f177.google.com (mail-lj1-f177.google.com [209.85.208.177])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 055C5433CE
	for <devicetree@vger.kernel.org>; Wed, 13 Nov 2024 05:43:25 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.177
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1731476608; cv=none; b=ZKyhB/dPApsc9RWc1pqtycTl/lDmn4vnxYsQWvkpdZjmoa1k0SSDFVZvEijRqnv7Ray15uxNgtlbCIcW7qSkY7SbyMdZ4cuHn9hSecYXHKlGeZNgWksyKekJKQ1ZXGqxVT/I/jBCK94wXYFZjhvOkhWlmkzhkZ5JbL3OFeMpxKQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1731476608; c=relaxed/simple;
	bh=qfk1W0G4btZgNu2/jWoIENaOgqxz+HG7iiYJQahdguE=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=X6Irv0ZdsM50Pxbz3aZfd2aCbtf2DM++xYKl5xd4z0KQ3TBvq8eAIHXmaAfBqXmYLPK2iuHWgbtrUOkNSlO8QFh+PO+jwotb+2UoWRZguH+OK5IpSYdEuBVy0ZjHXySkESPMAgwLzlq6K5YDjCg92fk/IJUUdYw3QR2XM4vQqNE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=J8wYN5xJ; arc=none smtp.client-ip=209.85.208.177
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lj1-f177.google.com with SMTP id 38308e7fff4ca-2fb498a92f6so54972731fa.1
        for <devicetree@vger.kernel.org>; Tue, 12 Nov 2024 21:43:25 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1731476604; x=1732081404; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=8rDIdcymWASYRjAzFg8MHUqlCL9IqZxCW77N1LbzUcM=;
        b=J8wYN5xJRUKaJyWXjNJXPV5I+GVlVC3TMKlOZjQnXwH2BK0MGIgxhr2H8ebkqHyWrD
         142OgiZUh8Lp7jXTHXc6WbFqYuBqShFDyGA+Wai7ZXNOf8tLx3vSgbLF/Z3EDkMwSggw
         u+gKEyXOmmIKGVuSO5bFzQ8YfY5zFH3i7bdTYlxvxEQAu0Kv1NT7JtpIw6+g604zVKP2
         TgJXG3VwuNFhNSOPl1P36POix5tKqAYtlNxHV+ixJ3gicW/A2GYE34naUUNHLfDKk93g
         bcEN+alAHi99RLaSQAyhQOMZ9LvlHnL0TvVDmxp7YxGr9+YUcMjVIgXP15HAd7vELTxy
         qJWw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1731476604; x=1732081404;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=8rDIdcymWASYRjAzFg8MHUqlCL9IqZxCW77N1LbzUcM=;
        b=IuYoGla/6ISiaxtgYKrZy3z8ff89pNcMeHgWO665knh3mDj8kCzJX32wTfp0Dvix1T
         GGNRGoZqEpjET+7MpRNG0S10NgwP5K1+qjdVjhhVoQn6etqt47YbUUCPd3+YmJ7v/eEn
         3zkcneZJU7gg1AceEQTJYU5tc567pQZTGetxOQzVNntzpBh7OiQkf+7geaxUuRlj25RT
         TiTgPxKW5SJo/7LCs5CEXAm89h8mO2K2ricVrcNE707LHvLrL3WMYGeFJwXGYoriRhuG
         nr4N9aOLB/qfB6IhqwtoTffoHwOjos3E0VkWyRoPCznp0m6sfkJuexQ4HD6pPMR0dVfI
         yY0w==
X-Forwarded-Encrypted: i=1; AJvYcCXzGX9nUbNrmRuUr38iN4nCpDWCId/KbN4TZEQ2j2+1x4OzW0u75wkoSY+WWztxf4VpfSO5CWi/V/O6@vger.kernel.org
X-Gm-Message-State: AOJu0YwvTvwpKm9aVPBzibAm48CWQyya+8ym4qi/Vp1Ib0AqjwUqL01+
	rpg9/MLIQXLKajzRzXI3prNOcCpY7jzRpYwLmcRtgqT5p4QG1O+jJzt4V04qus0=
X-Google-Smtp-Source: AGHT+IEnyVMVMVovD1SpLXlITpOz9B+vw+4OVj2eErOENJuaMQDX6+YxMtNJWzrTNlQPhyr22K3vdw==
X-Received: by 2002:a2e:82c9:0:b0:2fb:5504:7966 with SMTP id 38308e7fff4ca-2ff202e134fmr74057081fa.30.1731476604048;
        Tue, 12 Nov 2024 21:43:24 -0800 (PST)
Received: from eriador.lumag.spb.ru (2001-14ba-a0c3-3a00--7a1.rev.dnainternet.fi. [2001:14ba:a0c3:3a00::7a1])
        by smtp.gmail.com with ESMTPSA id 38308e7fff4ca-2ff179d43f2sm22795291fa.95.2024.11.12.21.43.21
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 12 Nov 2024 21:43:22 -0800 (PST)
Date: Wed, 13 Nov 2024 07:43:20 +0200
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
To: Ekansh Gupta <quic_ekangupt@quicinc.com>
Cc: andersson@kernel.org, konradybcio@kernel.org, robh@kernel.org, 
	krzk+dt@kernel.org, conor+dt@kernel.org, cros-qcom-dts-watchers@chromium.org, 
	linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
	srinivas.kandagatla@linaro.org, quic_bkumar@quicinc.com, quic_chennak@quicinc.com
Subject: Re: [PATCH v1] arm64: dts: qcom: sc7280: Make ADSP a secure fastrpc
 domain
Message-ID: <5oqzxppquoeppt6xnjfm2rdwm23hbui5k3caz5v5ffqzizepob@dz5ikvzgbd4x>
References: <20241113050042.181028-1-quic_ekangupt@quicinc.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20241113050042.181028-1-quic_ekangupt@quicinc.com>

On Wed, Nov 13, 2024 at 10:30:42AM +0530, Ekansh Gupta wrote:
> FastRPC framework treats ADSP as a secure domain on sc7280 SoC
> which means that only secure fastrpc device node should be
> created for ADSP remoteproc. Remove the non-secure-domain
> property from ADSP fastrpc node.

If this prevents the non-secure devices from being created, isn't that a
regression from the userspace point of view?

> 
> Signed-off-by: Ekansh Gupta <quic_ekangupt@quicinc.com>
> ---
>  arch/arm64/boot/dts/qcom/sc7280.dtsi | 1 -
>  1 file changed, 1 deletion(-)
> 
> diff --git a/arch/arm64/boot/dts/qcom/sc7280.dtsi b/arch/arm64/boot/dts/qcom/sc7280.dtsi
> index 3d8410683402..c633926c0f33 100644
> --- a/arch/arm64/boot/dts/qcom/sc7280.dtsi
> +++ b/arch/arm64/boot/dts/qcom/sc7280.dtsi
> @@ -3852,7 +3852,6 @@ fastrpc {
>  					compatible = "qcom,fastrpc";
>  					qcom,glink-channels = "fastrpcglink-apps-dsp";
>  					label = "adsp";
> -					qcom,non-secure-domain;
>  					#address-cells = <1>;
>  					#size-cells = <0>;
>  
> -- 
> 2.34.1
> 

-- 
With best wishes
Dmitry

