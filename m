Return-Path: <devicetree+bounces-80910-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 5452D91AB94
	for <lists+devicetree@lfdr.de>; Thu, 27 Jun 2024 17:39:04 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 08EFC282505
	for <lists+devicetree@lfdr.de>; Thu, 27 Jun 2024 15:39:03 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E4BF01990DA;
	Thu, 27 Jun 2024 15:38:58 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="P6OWiUW1"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lj1-f182.google.com (mail-lj1-f182.google.com [209.85.208.182])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2B1431990C4
	for <devicetree@vger.kernel.org>; Thu, 27 Jun 2024 15:38:57 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.182
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1719502738; cv=none; b=EuGF3+AS1jmpHEyCDhwH3G9XA6VdcNFGYUS532IDM+BZ4dQZ0ryE6gJ0fcQY+cINuoCRVdWFR2YgAuFHQhvDMaewSka7I+dF92FOOhNR51r/f0CsoUxlz1oR/iUwFGJHhDwND28rDnHWCC2XQvTk5rN/k25ePOUw+eq1CN0qOEc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1719502738; c=relaxed/simple;
	bh=X+89KQ9khlo9ksL828oIZjSyJeeMnEedqGr/xgPUG9Q=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=VvXWRy/rP7pFYJk1UDzUXmu9x2w20ZRuDsG150xil6wYQTh+WVhQcVE8LVXxlnrBWzTIGu2vCiMcaU6UsCN7YolqxMu2JEOJo+f6Mc1hFiRhV/vtkmOYw5hSb9+BHdB03dfDMYYjjm8daWQzorisd5X+lt0C28Dy3yY35zHBx0k=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=P6OWiUW1; arc=none smtp.client-ip=209.85.208.182
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lj1-f182.google.com with SMTP id 38308e7fff4ca-2ec002caf3eso123184791fa.1
        for <devicetree@vger.kernel.org>; Thu, 27 Jun 2024 08:38:56 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1719502735; x=1720107535; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=yOY+M7D7TFw/QBtM2TODmhCDgoUDeHoix9fanh2mF/g=;
        b=P6OWiUW1b/zwXdD7JsuwVh9BYBkgOB/Ot4rGyFyBHL8SVU6q4PoZ7B87I+pPls29kH
         AJ/VO+D8xw57Nz2LKJoAyvEx4hoMJHxs5+Aln70I/JpU5iLdSPHUoufNN3L2vjsiMMfl
         TaHhy5NYajcSmkw3lEqg8jdVJZpzAH9URQW022EKBkiC2WbaDMB0SfXRYSwaVUUXtfp2
         6oQtBRpUd3E1kLbsepPrN7TSTbCj1sHttCV+CZpLxlnjSlusolyZlyATd7Vs0RPJu8Je
         ht0mHfbFdiSRwZ92Oc3kqKfioyNqtxrzAc/nqJ5qcqtTEDrzHCybLH9NhPluumhF31Fg
         I7kg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1719502735; x=1720107535;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=yOY+M7D7TFw/QBtM2TODmhCDgoUDeHoix9fanh2mF/g=;
        b=UmY6U5hXHKxZFoj5WcfRNhQ5xDqupPtjQ7EFfLnKwFFtWIxL19UGbLV3mKDzu4eOpi
         s7WE3tsi9pLyBjkLPjZCXfKztgoGkbMcrsWOistUI9bONxHNMoEb8fC0jJNZhBaJGSXX
         ZT5BbBWSsJEhgp5epjKmtArDwtuSwaCn+e8XiCaawdy1uGmo1QarDoqZ9IydbBtmGT9n
         PKy+vBr2fxCtEWLVIsWjEpbkO0ehujwBDiGW5ftNuH7lMmcmYSxyOW9xdgGxavzccbWs
         vJUUkXxxbLI7EJAOF498e8rnKyPWURypNYutcQqKbQeoAa5k/skkDNJDKqSJcNuJAvOQ
         Z+xw==
X-Forwarded-Encrypted: i=1; AJvYcCXj9T4+VC5OSRxNg+J82DY06Yb4n7CaDHNPdrz89F06ZO9Z8qMyKCkIRhO6eaRBxTxSWb972nNAmWEtntdVJeunkhMuY3ZvHOb7lA==
X-Gm-Message-State: AOJu0Ywy2yv3KuqZBNNuGlulQfSuzYg9j85qIetTdYVCRHyB2Mt8o3BM
	qiMnOs15BopzPnLhBI45/T+CiRyMgi7bCnZj+KziA3DDwSmJkQUXFVokesIKqAw=
X-Google-Smtp-Source: AGHT+IGh9tIqwf+68EbyFwi8dvXoQz1bfiDDI0e0sR4vsZ9a1n5GcilbLLPWizzzclE/jI0PC8DApw==
X-Received: by 2002:a2e:9302:0:b0:2ee:4dc6:fe21 with SMTP id 38308e7fff4ca-2ee4dc70073mr10088211fa.3.1719502735341;
        Thu, 27 Jun 2024 08:38:55 -0700 (PDT)
Received: from eriador.lumag.spb.ru (dzdbxzyyyyyyyyyyybrhy-3.rev.dnainternet.fi. [2001:14ba:a0c3:3a00::b8c])
        by smtp.gmail.com with ESMTPSA id 38308e7fff4ca-2ee4a344081sm2886641fa.26.2024.06.27.08.38.54
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 27 Jun 2024 08:38:54 -0700 (PDT)
Date: Thu, 27 Jun 2024 18:38:53 +0300
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
To: Srinivas Kandagatla <srinivas.kandagatla@linaro.org>
Cc: Banajit Goswami <bgoswami@quicinc.com>, 
	Liam Girdwood <lgirdwood@gmail.com>, Mark Brown <broonie@kernel.org>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Jaroslav Kysela <perex@perex.cz>, Takashi Iwai <tiwai@suse.com>, 
	Bjorn Andersson <andersson@kernel.org>, Konrad Dybcio <konrad.dybcio@linaro.org>, 
	linux-arm-msm@vger.kernel.org, Neil Armstrong <neil.armstrong@linaro.org>, 
	alsa-devel@alsa-project.org, linux-sound@vger.kernel.org, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org, Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Subject: Re: [PATCH v2 2/6] ASoC: codecs: wsa883x: parse port-mapping
 information
Message-ID: <grtvmbccqbwwaxftfjg2bh3naumjrsmkd22vjqxwev6vmmgr6y@op5z3i4o2non>
References: <20240626-port-map-v2-0-6cc1c5608cdd@linaro.org>
 <20240626-port-map-v2-2-6cc1c5608cdd@linaro.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20240626-port-map-v2-2-6cc1c5608cdd@linaro.org>

On Thu, Jun 27, 2024 at 03:44:39PM GMT, Srinivas Kandagatla wrote:
> Add support to parse static master port map information from device tree.
> 
> Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
> Tested-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
> Tested-by: Neil Armstrong <neil.armstrong@linaro.org> # on SM8650-HDK
> Signed-off-by: Srinivas Kandagatla <srinivas.kandagatla@linaro.org>
> ---
>  sound/soc/codecs/wsa883x.c | 8 ++++++++
>  1 file changed, 8 insertions(+)
> 
> diff --git a/sound/soc/codecs/wsa883x.c b/sound/soc/codecs/wsa883x.c
> index a2e86ef7d18f..5443a5c4100c 100644
> --- a/sound/soc/codecs/wsa883x.c
> +++ b/sound/soc/codecs/wsa883x.c
> @@ -1399,6 +1399,14 @@ static int wsa883x_probe(struct sdw_slave *pdev,
>  	wsa883x->sconfig.direction = SDW_DATA_DIR_RX;
>  	wsa883x->sconfig.type = SDW_STREAM_PDM;
>  
> +	/**
> +	 * Port map index starts with 0, however the data port for this codec
> +	 * are from index 1
> +	 */
> +	if (of_property_read_u32_array(dev->of_node, "qcom,port-mapping", &pdev->m_port_map[1],
> +					WSA883X_MAX_SWR_PORTS))
> +		dev_dbg(dev, "Static Port mapping not specified\n");
> +

Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>


>  	pdev->prop.sink_ports = GENMASK(WSA883X_MAX_SWR_PORTS, 0);
>  	pdev->prop.simple_clk_stop_capable = true;
>  	pdev->prop.sink_dpn_prop = wsa_sink_dpn_prop;
> 
> -- 
> 2.25.1
> 

-- 
With best wishes
Dmitry

