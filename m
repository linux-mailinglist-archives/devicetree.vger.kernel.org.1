Return-Path: <devicetree+bounces-103506-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id 013F797B10C
	for <lists+devicetree@lfdr.de>; Tue, 17 Sep 2024 16:06:53 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 83011B22C09
	for <lists+devicetree@lfdr.de>; Tue, 17 Sep 2024 14:06:50 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id BDEF9174EEB;
	Tue, 17 Sep 2024 14:06:43 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="ExNUDci8"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lj1-f176.google.com (mail-lj1-f176.google.com [209.85.208.176])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E6EE51662FA
	for <devicetree@vger.kernel.org>; Tue, 17 Sep 2024 14:06:41 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.176
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1726582003; cv=none; b=joh2mtvs9H1E6oHpbAODqxBINXiu2w6rv60F94Pwj0Clzk+jJ3PZg7cowiTIPtPMyWUcH+JiaUzizPOgE/KJCiTDRbGBKeRQmCGoAUxfM31fl9VT3oPRxyUfADdCqFNe/12sdzQxQzK+XHZjZiONRH6Y7L+yenOxEtk1ASep7o8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1726582003; c=relaxed/simple;
	bh=T1fbGCPWhQTMc2ds84cJIDmVKbIUxTcWTVyoeXm/q08=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=h1N4kGy/yEOHD7W3n2Y0N2PCZQAZDGLAVdDb1EsAiDM2k+qfUNiL4VqQIom1n0V/eaq8yFU17jGR+v3cRVt2i5cmB1y9Ts1+JUzLkZdhISgwpk5Q8mxZzOnJ9b5cFUEXMDMNDeZD/yFR/tsgzIS6P0OlAXWtV2NzeNUAHPteC5M=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=ExNUDci8; arc=none smtp.client-ip=209.85.208.176
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lj1-f176.google.com with SMTP id 38308e7fff4ca-2f75d044201so57150071fa.0
        for <devicetree@vger.kernel.org>; Tue, 17 Sep 2024 07:06:41 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1726582000; x=1727186800; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=e3VqCwJoNraqawyxrMvuXWNHXBSF9eIrcmWFKjZa7aQ=;
        b=ExNUDci8xTPxlpzXR9TZcuD5VM4XLpnrOGPjQJ5HUVilbGDuFTdAPr9webCdabjIoT
         JBJ23bZc77RWINCIO8O3hTflR4ij0MBfB1SCzWqWeBYw9mlpO9tWPQcslePg5hwckOO3
         4zAi/sRgq+XP7wSAcA8kYdwHN7d6RtybXmbfnvHn2rdzaBKGaN4DzABhnhpLO3lxLElU
         RVYkB46hdUB7dwxsMUqp1+JguC5OvAArUQdXRmL9wuWZIgEuwptad+20YDOaig1LwfVG
         F0khcdu/zdrc5Z4HcaPET62VIGOM4/1bxBC8eHROG0x6q8v2R5ZFYbE5O9F7QJvnOf74
         uP+w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1726582000; x=1727186800;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=e3VqCwJoNraqawyxrMvuXWNHXBSF9eIrcmWFKjZa7aQ=;
        b=D6DXj86jI7PQvCpcM8qpUKI0e7RmcwtmkiQ1Yn92bBI8auu0zu4M9ftBlvWMbWZz7I
         dLtfzEOAHXXm/hulJhxvBIB7hVYlBj2+IsWuXYl4ibYGOeAe4JujsMC6+oR2DD0QWlMp
         R9pBtOxDvJsiCrJYQPYnJkWME1o50NJMCer3CIW1cE4AkSLtPRsnDCw0tBuhmBk6qXGE
         rxK3piMjbxhSCcJZUvEFMouxGGfJVRL99Lu2f5t/M94k+O64gih5W+TGLcyFXecZ68EV
         kEe87ozBJ48SCTh8gpydF571TS7P0MdnOrLYys4tOrtr6ZurBYc33c0WhnBGasnrW9pp
         QphQ==
X-Forwarded-Encrypted: i=1; AJvYcCVf53DMHV7//YwmxYhkSPWeixyRNH4q2ilmJawLTNUV407f2FXYW8s6uv/qZ8l+LFhxZiFk8YwCI9+h@vger.kernel.org
X-Gm-Message-State: AOJu0YwN28fVpXt1h4MVjfRLosX7E0XGx+XYWYWiipuy09tzqOop+HQc
	jEwEQLGOCKu5FwyEm6EVUTl8RBJr3rHTBJUhde4nHE4hAcEgfg/2LEG6MyijUw0=
X-Google-Smtp-Source: AGHT+IG6aNuAURHRTSsm3TSfe1rxuQWJil3WUMVpaQOmq8kaPdwBxfbyRKDasQb44N87rlFO2iNLxg==
X-Received: by 2002:a2e:b889:0:b0:2f6:6074:db9a with SMTP id 38308e7fff4ca-2f7726199abmr93412081fa.7.1726581999899;
        Tue, 17 Sep 2024 07:06:39 -0700 (PDT)
Received: from eriador.lumag.spb.ru (2001-14ba-a0c3-3a00--7a1.rev.dnainternet.fi. [2001:14ba:a0c3:3a00::7a1])
        by smtp.gmail.com with ESMTPSA id 38308e7fff4ca-2f79d1f1254sm11036491fa.0.2024.09.17.07.06.39
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 17 Sep 2024 07:06:39 -0700 (PDT)
Date: Tue, 17 Sep 2024 17:06:37 +0300
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
To: quic_vnagar@quicinc.com
Cc: Bjorn Andersson <andersson@kernel.org>, 
	Konrad Dybcio <konrad.dybcio@linaro.org>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH] arm64: dts: qcom: qcs6460-rb3gen2: enable venus node
Message-ID: <t7r46onezqkksdvk3i26fzreqxgwvyh32bebwysaxzl5pn642m@6m2kmbsh42pg>
References: <20240917-venus_rb3_gen2-v1-1-8fea70733592@quicinc.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20240917-venus_rb3_gen2-v1-1-8fea70733592@quicinc.com>

On Tue, Sep 17, 2024 at 02:54:31PM GMT, Vedang Nagar via B4 Relay wrote:
> From: Vedang Nagar <quic_vnagar@quicinc.com>
> 
> Enable the venus node on Qualcomm Rb3gen2 so that the
> video decoder will start working.
> 
> Signed-off-by: Vedang Nagar <quic_vnagar@quicinc.com>
> ---
>  arch/arm64/boot/dts/qcom/qcs6490-rb3gen2.dts | 4 ++++
>  1 file changed, 4 insertions(+)


Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>

-- 
With best wishes
Dmitry

