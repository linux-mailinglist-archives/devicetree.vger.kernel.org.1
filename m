Return-Path: <devicetree+bounces-155249-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id 9E3A0A5604E
	for <lists+devicetree@lfdr.de>; Fri,  7 Mar 2025 06:49:26 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id BB7AE7AA6F8
	for <lists+devicetree@lfdr.de>; Fri,  7 Mar 2025 05:48:24 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D36B3199EBB;
	Fri,  7 Mar 2025 05:49:05 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="NWxqQWM6"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lj1-f180.google.com (mail-lj1-f180.google.com [209.85.208.180])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DE71F194A66
	for <devicetree@vger.kernel.org>; Fri,  7 Mar 2025 05:49:03 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.180
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1741326545; cv=none; b=Iqz3gB5dT678kKwb+wbljPgPtU0HlZt0zrEequUTCrzKNSJHz7YSiBAveaWFm7ZS2taBilt0m/7ckWEn6Lnejdq+BRDNLeK2eGKBo8VcJzYOemmmnZHtF+8ivKnJKYFqHT+XZ0d7tZOeWG8iOFtX5zvLF3kZbEfuayHMxlKHE/8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1741326545; c=relaxed/simple;
	bh=cqj6ewJym1miHgUZm8iH3RiovqQFuy/3bRNULbbMasU=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=LUBhq4ev0uP2Ga91nlk1WxgTtkNolbZruP7vqO3pZfkP19Sx+YW9TdA7gL80yERGh4cArpJ2YSh+zXJCxW7u87gAyiV1fb1DKN9QOBAmhD9f9RDRPaqUwxgoQjyQUH4UqgdtSIJJo9n3BMjY8uIxktX1qu0hTxfQDjCAeO7pYbo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=NWxqQWM6; arc=none smtp.client-ip=209.85.208.180
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lj1-f180.google.com with SMTP id 38308e7fff4ca-307bc125e2eso15572621fa.3
        for <devicetree@vger.kernel.org>; Thu, 06 Mar 2025 21:49:03 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1741326542; x=1741931342; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=ddZoIefzqan5unLa1d6QbkepNMobkeXSFMsHFbEyBPg=;
        b=NWxqQWM6YG8OVHHmKHX7IVQHC7xeBlj51ltje4EYuxLu5RzF5furpRRIWYpbCzeOmg
         9x41xRCNLY30pvK05qs9XuhqdtgWukdb8uVR6zdYPz/Il3R4zzSzzypLiIiE5zKNUxRS
         j1SyRkoExLEblfB/2WHoQe8o8b8sBmYJcy2UCdXULTEOKYLewZOqV1piigT7VrDVXZ51
         JaYJ+BnCSdhwabeuinA8y/JV0VDr1Own2VmF6/eowK9w01JxgIvffOwraixjsuE4Yx0E
         mWsfrXDscjYYvkxZsnyR9q8GE3WuNyLCxxhaI9cOmmxUF707shkEVDtbKpJUhrnevUEK
         CR5g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1741326542; x=1741931342;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=ddZoIefzqan5unLa1d6QbkepNMobkeXSFMsHFbEyBPg=;
        b=VkfzyeGywYfRhJ3R72j9cn/3aWYyakol2CzA17OuKAmpqS81YOXKymcqwH9MEWgLmj
         5UTsiUWPeaUJ8O5lnOzGELoxoF4z1A+u832J3tVXd8/LFu/ICBkpuf2r/X0C5auwS0+O
         NkIt9upneX61sUK4gkvHmxQ0RE0FyPz5h87I0xc7uj16Xja+1UlcQ5LJzD5PPJ9XyLBL
         /2bRXrpBovBiwfdP0UlLnJ7ESsOj9ZBOnzR841EShOkMwlmIYjqYCfWx1e7y0L6bHphx
         KDrmQhvtYjUZZRUUBguVxBUfgcFQLAzFPLD4J/2dTrRDWMdQjXMG3Z8oVGiiwmTjrQY6
         Qt7g==
X-Forwarded-Encrypted: i=1; AJvYcCXWUni6CjTVGK6HGSOE/+RukyjyAYnfr+yMjHByAwUFmqu51fmdSL1SDstVKZpOYowET829hhjIy/rP@vger.kernel.org
X-Gm-Message-State: AOJu0YwU+pEL50PdDZitJrsVbvB+6zZabLe5QKMyzR5MDia6eRwJTtD9
	o6kkgmq10autvukvjeeqW4uoN1m7KzjyWC0/OYTIIukdUzGufXMjWsUSQIuGmm4=
X-Gm-Gg: ASbGnct+qxd+mvMrlGolLOHToKsdKR2zm9DAjuvc7edTHJqAzzwD9agJ9gcs92PFy0d
	jXDMITkspgGaRMgD0kVUlOBh6nOz29RHBkYWv/hnbRxvQZO9uQnPw/Rp04LnPNo5QoBVW9thhbK
	qyXC38eE7fUCceSDUOGYCqKfMcVvv6QOPEVexbgYKnzQHmyNzj//v1s/2yCcscK3QU3ol5pK4sA
	aMdYJbkjrLyppb5hU3dKT3jr/7YmYXD8wBYT6h9d/tW7dxXu3QkMJy+g9Rmc/5pfkOA6rrbD5MZ
	P+NzpX0jhaNoJFgoi769tzwdnAZneIhXUZSbgs30SYAUXTMRWBGZCKb1D2uHbjRZd+qXPBAkHMC
	QdjJsMnTlkgosmiW16zfAgJ17
X-Google-Smtp-Source: AGHT+IEQXgwPTN0zWE14o/eWd+esiKQ+JOKkgZz1V9e0jKN/Xjh/s0kS262qvqbdXkWzD17f+19+eQ==
X-Received: by 2002:a2e:b88b:0:b0:30b:cceb:1e9a with SMTP id 38308e7fff4ca-30bf451104amr5734371fa.14.1741326541966;
        Thu, 06 Mar 2025 21:49:01 -0800 (PST)
Received: from eriador.lumag.spb.ru (2001-14ba-a0c3-3a00--7a1.rev.dnainternet.fi. [2001:14ba:a0c3:3a00::7a1])
        by smtp.gmail.com with ESMTPSA id 38308e7fff4ca-30be98ec3f5sm4209511fa.28.2025.03.06.21.48.59
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 06 Mar 2025 21:49:00 -0800 (PST)
Date: Fri, 7 Mar 2025 07:48:58 +0200
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
To: Konrad Dybcio <konradybcio@kernel.org>
Cc: Joerg Roedel <joro@8bytes.org>, Will Deacon <will@kernel.org>, 
	Robin Murphy <robin.murphy@arm.com>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Rob Clark <robdclark@gmail.com>, Abhinav Kumar <quic_abhinavk@quicinc.com>, 
	Sean Paul <sean@poorly.run>, David Airlie <airlied@gmail.com>, 
	Simona Vetter <simona@ffwll.ch>, Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, 
	Maxime Ripard <mripard@kernel.org>, Thomas Zimmermann <tzimmermann@suse.de>, 
	Robert Foss <rfoss@kernel.org>, Greg Kroah-Hartman <gregkh@linuxfoundation.org>, 
	Wesley Cheng <quic_wcheng@quicinc.com>, Christian Marangi <ansuelsmth@gmail.com>, 
	Bjorn Andersson <andersson@kernel.org>, Rohit Agarwal <quic_rohiagar@quicinc.com>, 
	Kyle Deng <quic_chunkaid@quicinc.com>, Vinod Koul <vkoul@kernel.org>, 
	Marijn Suijten <marijn.suijten@somainline.org>, linux-arm-msm@vger.kernel.org, iommu@lists.linux.dev, 
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, dri-devel@lists.freedesktop.org, 
	freedreno@lists.freedesktop.org, Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>, 
	linux-usb@vger.kernel.org, Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
Subject: Re: [PATCH 08/11] arm64: dts: qcom: sc8180x: Rename AOSS_QMP to
 power-management
Message-ID: <6fqpulpczqnzabdnpckd2rtrcdhxryydhkuou7vdhmsftquckt@wzuoxvhyep5d>
References: <20250306-topic-dt_bindings_fixups-v1-0-0c84aceb0ef9@oss.qualcomm.com>
 <20250306-topic-dt_bindings_fixups-v1-8-0c84aceb0ef9@oss.qualcomm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20250306-topic-dt_bindings_fixups-v1-8-0c84aceb0ef9@oss.qualcomm.com>

On Thu, Mar 06, 2025 at 07:11:20PM +0100, Konrad Dybcio wrote:
> From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
> 
> The node is currently named power-controller, which requires the device
> underneath is a power domain provider. Rename it to align with other
> SoCs and resolve this sort of warnings:
> 
> power-controller@c310000: '#power-domain-cells' is a required property
> 
> Fixes: 8575f197b077 ("arm64: dts: qcom: Introduce the SC8180x platform")
> Signed-off-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
> ---
>  arch/arm64/boot/dts/qcom/sc8180x.dtsi | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 

Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>

-- 
With best wishes
Dmitry

