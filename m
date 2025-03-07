Return-Path: <devicetree+bounces-155247-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id A57BCA56047
	for <lists+devicetree@lfdr.de>; Fri,  7 Mar 2025 06:49:02 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 4B84B18965D6
	for <lists+devicetree@lfdr.de>; Fri,  7 Mar 2025 05:48:59 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 0EC5B197556;
	Fri,  7 Mar 2025 05:48:38 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="wA76UBfZ"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lj1-f170.google.com (mail-lj1-f170.google.com [209.85.208.170])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2911C1946A1
	for <devicetree@vger.kernel.org>; Fri,  7 Mar 2025 05:48:35 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.170
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1741326517; cv=none; b=dDqcCempcsnEtGuHzXxum3EUH2QBeAe+b1T6jRrwCUOZi2syps1j6txjSZEQhbuYmp5wIXYmp1KpwQt4IndZhWDKI70e1yv2QcrKxebaE27uEASo4bd42387/w5c1YObe3XpXpq5kXON8jQ1iEBFibH4jtjofqoHLokwLGbbHsM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1741326517; c=relaxed/simple;
	bh=f6dKyFo3BkLrXoBHgGJQ+69N8B1GLf2n1hpUnfgTQTk=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=OQYZyE4OgFwCw38H2sxLoOF3+w+anBm5mvupiAW2vYEG3fqmjDg/879WNb4eTEWvHkrrAySsgmIsr+mlqdK6Y+VKlSgyyY9d9+YVXnavRH2E/3JzI2JCfBQYtD5BcjpcbEeC41ETgW8RuCcgzvfn9lSA4JJ2yfgqhGOwliqt/NI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=wA76UBfZ; arc=none smtp.client-ip=209.85.208.170
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lj1-f170.google.com with SMTP id 38308e7fff4ca-30613802a59so15939391fa.0
        for <devicetree@vger.kernel.org>; Thu, 06 Mar 2025 21:48:35 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1741326514; x=1741931314; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=xIUlPQiEEjx7lB+nUPvIprXpkiiTW4hGNlxewbBn0Vo=;
        b=wA76UBfZpYjk3rMu1lPVCt20u3LkrLhjUqtW/0ulvv1aXaEyt4xK34uptr2jT+wNMF
         XydQjwgtFbYhWqHGaGXns9j49UDtxlpCkYpOVFs0KHPmai0POchOfkAOdrgi4WDyw4zA
         FIFutKWbUYv/XA++uzyM6Ho7K0LLuwk+gNTqVfCuHWSvEQd8mq+TiCwSKZ1bDnh9gl6v
         2lV5gkdQXpqqKocIVfcfTfKe8cX+/HGHQnMATr0uprSfS8NgRPtP0aXt5jD7nfXPLC/o
         tR8n0F+39fxZqYKjpvkv3kkLa9XBRotA2f1kp9LFpYRLk8TozZsJX8ZGdr56CL6LJU7a
         0QnA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1741326514; x=1741931314;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=xIUlPQiEEjx7lB+nUPvIprXpkiiTW4hGNlxewbBn0Vo=;
        b=kVldYaHV8MzW/VqufuAQwcn3+PQxL3AJoAIqpcatpib5zX1m41SaB5HtsXr/Hnilh5
         EFbnbsJGvHH7X7aCgPRTHF/wJ3j6SCdkV9STkqWXkFb8XUmif89By+Las8QEpkWIMegb
         IIZ6xz6u0tRb8tUw4B0RL26Uf2Ir+V78PLZtgyX07h11HEQA3THFRHz5BqIwk60Xd5lW
         Ed/EWpNg0PPd6CNjlhZp8YhLzWRqG9R33DH1s044AIyzNrUYPQQKhzcoCFouXI39g/3x
         wZ5NQ2xEnBRavWPDomsqGasoUz7R9dsdVNvRPlLLri6w8wrsELovjXQ6wPbrql8bZn1m
         5/uQ==
X-Forwarded-Encrypted: i=1; AJvYcCUECYiP9aAglO0sEwwdvJjk5syXff1K32wPgBuTA6FMg5tskNByyjf5kZtVhuwwfiorPlbzSajBHiRQ@vger.kernel.org
X-Gm-Message-State: AOJu0Yw+19G3F8mz9gwSVFW158BiBqkefumdI/IZCWY+PBrKU7QDuKL9
	0UZNN1qa3YO1gQmJc8o0qc72Q+AdI5OmcI9Ly6L9SgBpXr47zoNuyR4G9S2Mw6w=
X-Gm-Gg: ASbGnctFFfYHaMrANbMTyQqY4n6Ii5JluFMTw3WG29w2VagpMB8SZ3YzjhBCEMIWxWt
	YuRGAOQ0uvhqtjKSQrAiq5LAHpe+MFfKrvllrpxVH77eDZP4z1gn4M0eOfaBhs3Y6M/EL2zwQ5V
	CjbFUpl/NDAiBA7z8o1kSKuDmgvVRj4Tpfp9x6+ePQCEEgzfXDffLc9K399R18kB0Wng2ZKvGiR
	ofxmpN3MZsfs13jM7JyWyPRLE/YW17pOs/fSxB07Takf8ki/x8M7FTui6AbfMUlpHaT7uEk8LVz
	7oe5jwDiBZ2b9XKKbFOXzzKKZ8sI+7G0ciTT/g5ldq6LzG/suoThsDUYw8kBxJzUu/TELOzYuIn
	4l7JWroDC9lfCzna6Ud+/hjs9
X-Google-Smtp-Source: AGHT+IFLgCjDUK+ssfV3W8fYXWF3IcyBRSZKJMxl/h3Pqf22SL2LHsOB83+2OXk5a+mSVQE5lVC+4w==
X-Received: by 2002:a05:651c:b2c:b0:300:2a29:d47c with SMTP id 38308e7fff4ca-30bf4606942mr5189011fa.24.1741326514230;
        Thu, 06 Mar 2025 21:48:34 -0800 (PST)
Received: from eriador.lumag.spb.ru (2001-14ba-a0c3-3a00--7a1.rev.dnainternet.fi. [2001:14ba:a0c3:3a00::7a1])
        by smtp.gmail.com with ESMTPSA id 38308e7fff4ca-30be9a07204sm4342721fa.114.2025.03.06.21.48.32
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 06 Mar 2025 21:48:33 -0800 (PST)
Date: Fri, 7 Mar 2025 07:48:31 +0200
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
Subject: Re: [PATCH 06/11] arm64: dts: qcom: sdx75: Rename AOSS_QMP to
 power-management
Message-ID: <zmy54zmhuai5vip7fvdjkf5hr2tsnmmh6ts2labnh3amkg4s2l@6pjfprdfxn56>
References: <20250306-topic-dt_bindings_fixups-v1-0-0c84aceb0ef9@oss.qualcomm.com>
 <20250306-topic-dt_bindings_fixups-v1-6-0c84aceb0ef9@oss.qualcomm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20250306-topic-dt_bindings_fixups-v1-6-0c84aceb0ef9@oss.qualcomm.com>

On Thu, Mar 06, 2025 at 07:11:18PM +0100, Konrad Dybcio wrote:
> From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
> 
> The node is currently named power-controller, which requires the device
> underneath is a power domain provider. Rename it to align with other
> SoCs and resolve this sort of warnings:
> 
> power-controller@c310000: '#power-domain-cells' is a required property
> 
> Fixes: 91f767eb6938 ("arm64: dts: qcom: sdx75: Add AOSS node")
> Signed-off-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
> ---
>  arch/arm64/boot/dts/qcom/sdx75.dtsi | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 

Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>

-- 
With best wishes
Dmitry

