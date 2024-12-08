Return-Path: <devicetree+bounces-128260-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 8F1A49E83B7
	for <lists+devicetree@lfdr.de>; Sun,  8 Dec 2024 06:45:45 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 7D82A1884861
	for <lists+devicetree@lfdr.de>; Sun,  8 Dec 2024 05:45:45 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id ECB0E40BE5;
	Sun,  8 Dec 2024 05:45:41 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="GPPYQbbr"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lj1-f182.google.com (mail-lj1-f182.google.com [209.85.208.182])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 328E52E3EB
	for <devicetree@vger.kernel.org>; Sun,  8 Dec 2024 05:45:39 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.182
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1733636741; cv=none; b=d9OlfOsoW6IMJCL3y/S9jqfEQAZrvcq3+4Ixc512InVcow0BViJKuwNc0mj2G8tGEGmOM8C/PmcVeMAE/Zs6SNpenf44mFX1dvY/Tjj7fKTKMtR76nxKwHg/wbrjiECEDSV+7nU2Cj92/7/Fob8JSA4TPigEQ7B0ZeswHJRhHFE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1733636741; c=relaxed/simple;
	bh=jQSd9Q6HiFF0J5oME229u0l+WJO4Iu+JBiIo7xSLM9s=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=WIPLADTvN7M9611dyQhbiAyvEL6O8e/O1md56SHUCnJgyHsOpEfEyu5ApE/yfz+2+GuHU8i0KpkcLl0L11jre5f4Osv2MhmY2eNF+lSAKHPFfTe5bwgQu2W4DOZGON67OT5CjWowMShD5qB1E7FXuWfxzGT7Se45GuBKptB5LBM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=GPPYQbbr; arc=none smtp.client-ip=209.85.208.182
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lj1-f182.google.com with SMTP id 38308e7fff4ca-30039432861so15897041fa.2
        for <devicetree@vger.kernel.org>; Sat, 07 Dec 2024 21:45:39 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1733636738; x=1734241538; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=Y1HYv1e1G167UjBW6qsx3MDds+0Rx8yGRk5hPMxbh1c=;
        b=GPPYQbbrJ7bul9vYdgtSISjSDJN7+pS/g7QUBee/YwNeOVpkl41uMe9C2+tuxKAVOx
         UMmCphJ6HCemWzNQFinWVKjWyeSvVvTOFdR6o2ZC5EjRQuCrzddGACxVYwuZV204DAlC
         3u0IeDoRJRix1+6vBUFe5GsSGBbNpiKo+MSCn9JnzsSYq6bEyRLf0owPYUHicrcfpoOk
         ULuzhr9ipZIbO8LavH17JnMihee2+0SJQWU/iH1Pp3tvoIigWfclfI3JKsC/MEA+sii6
         1ciUkFy+12YTyoCgCXhj4k/CnaS6/PTENwPDWsn2pqFT+XQAg3SGJtArA6hvHapctKVI
         MIMg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1733636738; x=1734241538;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=Y1HYv1e1G167UjBW6qsx3MDds+0Rx8yGRk5hPMxbh1c=;
        b=OX/SBVBj4oEWNoVt83P28GtcB20iXveudhf8+g0icMSiPzpiqR94Uf9vIoO1x+vgN9
         wFZkxjzmAr8a5nII7nCQx7senOJAjevrTSBgFeCleDWYVMt5Gh3gkUuXchek7G3CoMiC
         P2/VVnhWfFGu7Vw6KW4JH/RrH+nQwc6MR/s9RF8kdSvZk0aVXpP81hYdeNbcU9Ma7/Pc
         wlhEha1crJ3ls3zQCGPznWCXAGzo8XNfVFhDvMEVwxxo99GB2W75Y1rPYWzvyRMrvE0S
         elJhlB2ItBbV1JiSqutEzXFnM+4M7r8INZfBywMf9I78nKv9TihnDbGciCfu/wHcNaEi
         BPkw==
X-Forwarded-Encrypted: i=1; AJvYcCXUd/GFQtUjCegfXuJdnQpAqrVCQrIFk0SAUL9cOGwfLYMrSRxrvzgsGXh/LZSOP65A+35BdxD+wGlc@vger.kernel.org
X-Gm-Message-State: AOJu0Yy/iCqJgc+ZkdJr0IRmB0Qh2B9JCjG/EhHwIfADlQRVsacRw4NX
	wiLj96A/jDusjab1hurkEhC/QIg7VQSUQzSeAe9GDBr9+nluFj2SbUe1DKrDP90=
X-Gm-Gg: ASbGncsRcRZ+4NtQvekCX0PzvHOQ5L7dQGrMu3hPdPKSY5B3ASFIBgzblw0VoRNHrlC
	p2BxcBFoQZnzJHGGDq4tAFhqFhfngUjL9cPqqv+LX7quJbtWD5x3jFw6kfNgYzL/lzQ3QULAWLg
	Y6CC7wuZkDdLKj0+JJSghIptXq5EgOLIgUzgsZFlc+VZlG9+Qzvnm/Pz4NFGO1Ypb5284SHXZnC
	XscDGArGZaiyzt3c5CU3dB2vB8W3wn/pov5SzyMopanZtSelm9tv4gJILuxO9pLfXxRQysQfgsO
	3JMSlM4cjsvBAUBCWKVOy96ALe/Ryg==
X-Google-Smtp-Source: AGHT+IH1C2lNwnSo3DwPCOigAB6lGnv6/ya51zVyeab7Dq7ZnU+VYU4q8UWGtOmfbv3xMxYL+3XXBg==
X-Received: by 2002:a05:651c:507:b0:2fe:e44d:6162 with SMTP id 38308e7fff4ca-3002fc92bb5mr23529331fa.26.1733636738247;
        Sat, 07 Dec 2024 21:45:38 -0800 (PST)
Received: from eriador.lumag.spb.ru (2001-14ba-a0c3-3a00--b8c.rev.dnainternet.fi. [2001:14ba:a0c3:3a00::b8c])
        by smtp.gmail.com with ESMTPSA id 38308e7fff4ca-3003162f64dsm6112391fa.97.2024.12.07.21.45.35
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 07 Dec 2024 21:45:36 -0800 (PST)
Date: Sun, 8 Dec 2024 07:45:34 +0200
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
To: Abhinav Kumar <quic_abhinavk@quicinc.com>
Cc: Rob Clark <robdclark@gmail.com>, Sean Paul <sean@poorly.run>, 
	Marijn Suijten <marijn.suijten@somainline.org>, David Airlie <airlied@gmail.com>, 
	Simona Vetter <simona@ffwll.ch>, Stephen Boyd <swboyd@chromium.org>, 
	Chandan Uddaraju <chandanu@codeaurora.org>, Guenter Roeck <groeck@chromium.org>, 
	Kuogee Hsieh <quic_khsieh@quicinc.com>, Bjorn Andersson <andersson@kernel.org>, 
	Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Vara Reddy <quic_varar@quicinc.com>, Rob Clark <robdclark@chromium.org>, 
	Tanmay Shah <tanmay@codeaurora.org>, linux-arm-msm@vger.kernel.org, dri-devel@lists.freedesktop.org, 
	freedreno@lists.freedesktop.org, linux-kernel@vger.kernel.org, devicetree@vger.kernel.org, 
	Jessica Zhang <quic_jesszhan@quicinc.com>, Laurent Pinchart <laurent.pinchart@ideasonboard.com>
Subject: Re: [PATCH 20/45] drm/msm/dp: no need to update tu calculation for
 mst
Message-ID: <ycu6maap7jonzybk4spyee5maq4if4eapzs3w4hhdmfzajjbst@5wiax7ve33oa>
References: <20241205-dp_mst-v1-0-f8618d42a99a@quicinc.com>
 <20241205-dp_mst-v1-20-f8618d42a99a@quicinc.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20241205-dp_mst-v1-20-f8618d42a99a@quicinc.com>

On Thu, Dec 05, 2024 at 08:31:51PM -0800, Abhinav Kumar wrote:
> DP stream is transmitted in transfer units only for SST
> case there is no need to calculate and program TU parameters
> for MST case. Skip the TU programming for MST cases.
> 
> Signed-off-by: Abhinav Kumar <quic_abhinavk@quicinc.com>
> ---
>  drivers/gpu/drm/msm/dp/dp_ctrl.c | 3 ++-
>  1 file changed, 2 insertions(+), 1 deletion(-)
> 

Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>

-- 
With best wishes
Dmitry

