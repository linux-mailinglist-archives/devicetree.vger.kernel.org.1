Return-Path: <devicetree+bounces-89862-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id DA1A3943107
	for <lists+devicetree@lfdr.de>; Wed, 31 Jul 2024 15:35:42 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 953F9281E59
	for <lists+devicetree@lfdr.de>; Wed, 31 Jul 2024 13:35:41 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id EF1B91B1424;
	Wed, 31 Jul 2024 13:35:18 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="urG+oKL4"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lj1-f177.google.com (mail-lj1-f177.google.com [209.85.208.177])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1B7381AD9CB
	for <devicetree@vger.kernel.org>; Wed, 31 Jul 2024 13:35:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.177
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1722432918; cv=none; b=TaUAtd3MWifI1FfTruL21DpURY9ZqikXEASUOoWGPRiTmpTm8HhS5MfluRJOgAW/SvQSCt+FrwnVvx85KrAusO51Az4CeEvTIJjzubIpHJKDjYce0wPhLdBnUbEdmrHisXjdtu8fsjZk+yJG2+RMwEWHPBoenvF505Z3nNv6hdI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1722432918; c=relaxed/simple;
	bh=UyKFMFScKLIP8IpKBhj7u4hVpC3HT4sM6sX6xd4Lh5Q=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=SHYhAUg/ehi5ilL6G08Wfkv6OCCFmN60uQGXyr058rp8GALLlKU2Hb3eFQMaQ6c6hF0HlEQpGEZJ5onUdsx/Y3im6nIBLqtH8NTHZ2qRwyVRv1uH/PrZGZEAhhIerJZH1mzU4y8fWSjFvPPR2AsjKBOUsyjSvlP9pEvpIIqyTNU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=urG+oKL4; arc=none smtp.client-ip=209.85.208.177
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lj1-f177.google.com with SMTP id 38308e7fff4ca-2ef23d04541so69654781fa.2
        for <devicetree@vger.kernel.org>; Wed, 31 Jul 2024 06:35:16 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1722432915; x=1723037715; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=2nuFog//dQJyQDurmfY02l3W/M3VEET6dFsY5XpmaxY=;
        b=urG+oKL4wvrzFVUgZ7GEdpLfrFmh8ahYUvx2gUhO64UWg6xPFQRDMAjIe/nfJFNT71
         0MB//04EjOeK49sN9DdawTrLIPHwctESYlkdMXc/uazZ8m65B/KGnnpoOsZsD3bXTLfP
         FR/3591LGYXCAozBMHGY+pSrx6LksV59V9gwzuDcgDQKc2DNDiRaSb8++eGk6domTX+K
         caT9Sel0yXMmTFCHtT7Ftk7fugmKiZ4Fzk+SWn2GKAJxkzpmAKEK+wihBgQdseDn4UYg
         qojiaSVrMxTG7j5utPtKB4C7mvlYlars352QJP1sHdnJJIJlvD+I23tm2V658h0WVb2U
         ouOA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1722432915; x=1723037715;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=2nuFog//dQJyQDurmfY02l3W/M3VEET6dFsY5XpmaxY=;
        b=B+QrNt6/ls6LAcGk/hiTBVsMjduY1wRm8uXjJjA97zEAQMZoAwmXMJGV6kmW7E8GLo
         8gssjfwVcrn4QBriqsB6Ss+jzuhm/00iT2WHTLfGWn8CQAPjl5y6IMuVk91M9nOOgN/f
         vI/ZSS+GC4Kiq8I+ECjPoaAaHHXRFXr36Aqt29IzJt+6m3yvmO0/pegdCW9p49d7xap0
         4Zp1U29p/uZg1huzIooZLlKRk/rQMjLBJPSsTNVXrTBbwt/s707prA+aWbRmlfOUChQJ
         bXuqZ5x81UBy6uI8mSzYSASdbHvi5hY3sGSOkUBRgjuU+nXa5fGRKvTBaVjuH8zR+xnt
         8T+Q==
X-Forwarded-Encrypted: i=1; AJvYcCWwmdnPMIs/XFJKRIgMYuPlOQzJOOktl6L8qWiMndlVafgYhL1BEg2l9jwsjNSBWf85qwpTfSO7Xa/+VRcB3/lncSBBFSKDXHRRdA==
X-Gm-Message-State: AOJu0YyCkYbQdArt6UctOhLZeaQAJ/QXGueDkNqpgrd+q9mf633CMU3C
	t/GFkL0F7ZBCe96ti09Ek4I4RHnrI5I4TlLY5pGP3iJVJktFsn1HwEp8x5o8IoQ=
X-Google-Smtp-Source: AGHT+IGK97ZT6lgO5zmLXsUMfHQ0g2+ejUm5/06nq2BG7Njg79hsOrPZXa8iT9IXsNx5sVJEXLv2jw==
X-Received: by 2002:a2e:9608:0:b0:2ef:2443:ac8c with SMTP id 38308e7fff4ca-2f12ee422eemr90180411fa.31.1722432915136;
        Wed, 31 Jul 2024 06:35:15 -0700 (PDT)
Received: from eriador.lumag.spb.ru (dzdbxzyyyyyyyyyyybrhy-3.rev.dnainternet.fi. [2001:14ba:a0c3:3a00::b8c])
        by smtp.gmail.com with ESMTPSA id 38308e7fff4ca-2f03cf30a74sm19598871fa.41.2024.07.31.06.35.14
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 31 Jul 2024 06:35:14 -0700 (PDT)
Date: Wed, 31 Jul 2024 16:35:13 +0300
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
To: Richard Acayan <mailingradian@gmail.com>
Cc: Rob Clark <robdclark@gmail.com>, 
	Abhinav Kumar <quic_abhinavk@quicinc.com>, Sean Paul <sean@poorly.run>, 
	Marijn Suijten <marijn.suijten@somainline.org>, Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, 
	Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
	Conor Dooley <conor+dt@kernel.org>, Bjorn Andersson <andersson@kernel.org>, 
	Konrad Dybcio <konrad.dybcio@linaro.org>, linux-arm-msm@vger.kernel.org, dri-devel@lists.freedesktop.org, 
	freedreno@lists.freedesktop.org, devicetree@vger.kernel.org, Maxime Ripard <mripard@kernel.org>, 
	Thomas Zimmermann <tzimmermann@suse.de>, David Airlie <airlied@gmail.com>, 
	Daniel Vetter <daniel@ffwll.ch>
Subject: Re: [PATCH 3/4] arm64: dts: qcom: sdm670: add gpu
Message-ID: <l7qdl43tyrdw6yuupd2ym47ztmb2jhb5tzswme4yoitipsqrai@qalxt7hjmt4c>
References: <20240730013844.41951-6-mailingradian@gmail.com>
 <20240730013844.41951-9-mailingradian@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20240730013844.41951-9-mailingradian@gmail.com>

On Mon, Jul 29, 2024 at 09:38:48PM GMT, Richard Acayan wrote:
> The Snapdragon 670 has the Adreno A615 GPU. Add it along with its device
> tree dependencies.
> 
> Signed-off-by: Richard Acayan <mailingradian@gmail.com>
> ---
>  arch/arm64/boot/dts/qcom/sdm670.dtsi | 168 +++++++++++++++++++++++++++
>  1 file changed, 168 insertions(+)

> +
> +		gmu: gmu@506a000 {
> +			compatible = "qcom,adreno-gmu-615.0", "qcom,adreno-gmu";
> +

[...]

> +
> +			status = "disabled";

Probably no need to. The rest LGTM.

> +
> +			gmu_opp_table: opp-table {
> +				compatible = "operating-points-v2";
> +
> +				opp-200000000 {
> +					opp-hz = /bits/ 64 <200000000>;
> +					opp-level = <RPMH_REGULATOR_LEVEL_MIN_SVS>;
> +				};
> +			};
> +		};
> +

-- 
With best wishes
Dmitry

