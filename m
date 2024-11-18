Return-Path: <devicetree+bounces-122529-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id 2A7EA9D0F62
	for <lists+devicetree@lfdr.de>; Mon, 18 Nov 2024 12:14:57 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 1708BB24644
	for <lists+devicetree@lfdr.de>; Mon, 18 Nov 2024 11:00:42 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D7CE91946A8;
	Mon, 18 Nov 2024 11:00:36 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="QUdew4si"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lj1-f173.google.com (mail-lj1-f173.google.com [209.85.208.173])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 041ED152166
	for <devicetree@vger.kernel.org>; Mon, 18 Nov 2024 11:00:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.173
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1731927636; cv=none; b=CMMPXTL2+knBewZ704spbGtYGlXDK7xJ7UVZDbCxHXDC+Oy5YMUa2txNyB+s+BM2gx5AvoT2dANUE+V0o96Mhqif0x2/h0A5v2Uz9AglNNXme0y+TvRGRy6oy4XgVaz9gfVF+1JKYPADhP58luGOZq1NY627UIl/Vk73W9tdvVI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1731927636; c=relaxed/simple;
	bh=VJvuF7SBVNs8klphpPE9k1L/tXRRQqdZWZIsf70UmxI=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=BlYMJ2thmG8DxaEChoEoTReUEsFROaTO36NH7ObyDOTMN03zpi3DqgfYIwafpLjxfKr78HogCGU1z1mkF+QQ0bG/HA1VWzTTGpXGsapkgaROrsTk+wabViksochq2xULTLMQlRV2rN9wmJUQdIzyMsUcKEEQV67ooz/3L5Wzvq8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=QUdew4si; arc=none smtp.client-ip=209.85.208.173
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lj1-f173.google.com with SMTP id 38308e7fff4ca-2fb50e84ec7so29582761fa.1
        for <devicetree@vger.kernel.org>; Mon, 18 Nov 2024 03:00:34 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1731927633; x=1732532433; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=/+qxRVlwU99jdO72TMXnMzWfyKpW+x3AZmsGZ6Fs4eM=;
        b=QUdew4sidz/LtFQ0C/smCLssAcdtwD06kEsMxFHugMzQsqR9q1SL1O29jc3cM+VxdQ
         cscW9Qj+/Ns0nn00ukjFj/ZFMhZpVqmvqFvv0pvlz37arwuunbZUOYDRe398kVrFccUG
         NK66RKpTiNpsg6DxWg924E1wc4aX13zT6NjI4v1KOWXgWZ3oZVBEyMC3KvmLHbK3QR0d
         ZMH3fhSGErnh41id0kOaUYOdDLo9NEUzP5guIh+MyWRICcD85n8LpW0u1JtIo4tnUIf4
         t9xjEnvPn/9kKLphwVWFMBtpftqLBO6nO4x1nPYzezAcbOmPqEkACSp1ZnT+Tz9OtYTK
         oX/w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1731927633; x=1732532433;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=/+qxRVlwU99jdO72TMXnMzWfyKpW+x3AZmsGZ6Fs4eM=;
        b=pI8xO4aAo/HI8VpSQHteo/5BqLv+NHw8EhAFdEenf52btfEAItLLC8sZ4kJ5GP32jo
         OoPPwPOo0Z3Y3UsJVBL06cht0B0rviLN7asW+exOZ7xbP/zwd1yjJR7MuCwAM6dVEsSb
         LNtrgYJAo6F1dEq+hq2V8zRQShQ9PXhYKu5P+HEznT2LkepSaZlCWAKZHTJDCQ5jgmBY
         eXCJ9tng6RQrHoHyp34HRfUTL/SdHJbivpHpsZPuhpSzQIY6ne9nwQ3IsZgUVmP8QUvK
         BBtRqvWW0Caiuy0SYzvBqz4UmkAyPl1NFeHlUPgUIzBkAlqZzPXAsL8JkAorMBPZgGaq
         0e0w==
X-Forwarded-Encrypted: i=1; AJvYcCXckqvgxMFOcEWGbkj95cF1x4ueTe26wELlCHcAovfdwi27kLu48AREyUYrdpnvjR+QLqDup19SLiLj@vger.kernel.org
X-Gm-Message-State: AOJu0YxBsBDzx1bt9gwYIyPro2aHpPvZUzr1JJqjELrhea77gtQEVwVL
	BGPTW/uFtvTjK60iOKudSxbwrCfMwnWEt+V6MoLEsE5SebCA40tejtY3PhB1mcoQKVaxiwr3E3Y
	w
X-Google-Smtp-Source: AGHT+IHgBjzO0bYRymV00U269jkhlwnbzUI5K4iYYfXbN3cZHW+Pwz1T7tfP5PHVJf3EORkPXLCIsQ==
X-Received: by 2002:a05:651c:243:b0:2fb:4ff6:eb0d with SMTP id 38308e7fff4ca-2ff6095e985mr43909861fa.22.1731927633080;
        Mon, 18 Nov 2024 03:00:33 -0800 (PST)
Received: from eriador.lumag.spb.ru (2001-14ba-a0c3-3a00--7a1.rev.dnainternet.fi. [2001:14ba:a0c3:3a00::7a1])
        by smtp.gmail.com with ESMTPSA id 38308e7fff4ca-2ff69ae7f35sm9042351fa.91.2024.11.18.03.00.31
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 18 Nov 2024 03:00:32 -0800 (PST)
Date: Mon, 18 Nov 2024 13:00:30 +0200
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
To: Ziyue Zhang <quic_ziyuzhan@quicinc.com>
Cc: vkoul@kernel.org, kishon@kernel.org, robh+dt@kernel.org, 
	manivannan.sadhasivam@linaro.org, bhelgaas@google.com, kw@linux.com, lpieralisi@kernel.org, 
	quic_qianyu@quicinc.com, conor+dt@kernel.org, neil.armstrong@linaro.org, 
	andersson@kernel.org, konradybcio@kernel.org, quic_shashim@quicinc.com, 
	quic_kaushalk@quicinc.com, quic_tdas@quicinc.com, quic_tingweiz@quicinc.com, 
	quic_aiquny@quicinc.com, kernel@quicinc.com, linux-arm-msm@vger.kernel.org, 
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, linux-phy@lists.infradead.org, 
	Krishna chaitanya chundru <quic_krichai@quicinc.com>
Subject: Re: [PATCH 1/5] dt-bindings: phy: qcom,sc8280xp-qmp-pcie-phy:
 Document the QCS615 QMP PCIe PHY Gen3 x1
Message-ID: <b4srulghkbgrx65n64tsyhbdhn6xqv6gjhmovtozc5hjzmq2nm@aq5onb5fv3ks>
References: <20241118082619.177201-1-quic_ziyuzhan@quicinc.com>
 <20241118082619.177201-2-quic_ziyuzhan@quicinc.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20241118082619.177201-2-quic_ziyuzhan@quicinc.com>

On Mon, Nov 18, 2024 at 04:26:15PM +0800, Ziyue Zhang wrote:
> From: Krishna chaitanya chundru <quic_krichai@quicinc.com>
> 
> Add dedicated schema for the PCIe controllers found on QCS615.

In which sense using qcom,sc8280xp-qmp-pcie-phy.yaml is considered to be
a dedicated schema?

> 
> Signed-off-by: Krishna chaitanya chundru <quic_krichai@quicinc.com>
> Signed-off-by: Ziyue Zhang <quic_ziyuzhan@quicinc.com>
> ---
>  .../devicetree/bindings/phy/qcom,sc8280xp-qmp-pcie-phy.yaml     | 2 ++
>  1 file changed, 2 insertions(+)
> 
> diff --git a/Documentation/devicetree/bindings/phy/qcom,sc8280xp-qmp-pcie-phy.yaml b/Documentation/devicetree/bindings/phy/qcom,sc8280xp-qmp-pcie-phy.yaml
> index dcf4fa55fbba..d13eb46adbbb 100644
> --- a/Documentation/devicetree/bindings/phy/qcom,sc8280xp-qmp-pcie-phy.yaml
> +++ b/Documentation/devicetree/bindings/phy/qcom,sc8280xp-qmp-pcie-phy.yaml
> @@ -16,6 +16,7 @@ description:
>  properties:
>    compatible:
>      enum:
> +      - qcom,qcs615-qmp-gen3x1-pcie-phy
>        - qcom,sa8775p-qmp-gen4x2-pcie-phy
>        - qcom,sa8775p-qmp-gen4x4-pcie-phy
>        - qcom,sc8180x-qmp-pcie-phy
> @@ -168,6 +169,7 @@ allOf:
>          compatible:
>            contains:
>              enum:
> +              - qcom,qcs615-qmp-gen3x1-pcie-phy
>                - qcom,sc8280xp-qmp-gen3x1-pcie-phy
>                - qcom,sc8280xp-qmp-gen3x2-pcie-phy
>                - qcom,sc8280xp-qmp-gen3x4-pcie-phy
> -- 
> 2.34.1
> 

-- 
With best wishes
Dmitry

