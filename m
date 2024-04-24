Return-Path: <devicetree+bounces-62184-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id B77A58B0363
	for <lists+devicetree@lfdr.de>; Wed, 24 Apr 2024 09:43:15 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id E8ACF287E55
	for <lists+devicetree@lfdr.de>; Wed, 24 Apr 2024 07:43:13 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 17E05158A03;
	Wed, 24 Apr 2024 07:42:21 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="MiKB/SB3"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-yb1-f173.google.com (mail-yb1-f173.google.com [209.85.219.173])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8D6371581E4
	for <devicetree@vger.kernel.org>; Wed, 24 Apr 2024 07:42:19 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.219.173
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1713944541; cv=none; b=Q6wdgN5Ars9lF0+ifYfXOIH/vF+SVukqmX30SCWJYKXSXSsJKcmat6JKI14bBCife0eOf04qjb5Gq8+Jn9nEVeWqNDiiRiOt2WL+UGaT1lLeS4VN6DMLli0PMWp+zOKXSFvnTdx5BjfhujLwUcXwBHm9jcYabzckqQcsw+ou9Io=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1713944541; c=relaxed/simple;
	bh=TssNSTkU02ETewXf57xR48AQxgqalns/Ypi0mRbyXZo=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=NwgpLK+okdhFWRL8JfjOYiEE6n5Ho5QuDRzUxAB3WwLw/wVyWq94tbx+UZcvRlETjJDEFnZDR7Js9bbNiK/NFDkrywAWXHzYzCHuvu8BmD0q67Sm10pRgODadZyOsVXYKjcyCJQ/PQ3iBP+jg0JrLUmfUotcwJG/R9x4UY4HncY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=MiKB/SB3; arc=none smtp.client-ip=209.85.219.173
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-yb1-f173.google.com with SMTP id 3f1490d57ef6-dbed179f0faso492074276.1
        for <devicetree@vger.kernel.org>; Wed, 24 Apr 2024 00:42:19 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1713944538; x=1714549338; darn=vger.kernel.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=/mRvWwbSTRSDRgquyaPNgxSn6K2zSKXHfiHyv/56g4k=;
        b=MiKB/SB3Mwv5nPYtT7f+Bs1S+U3tSVMkMh+EGAmpB8IWUPjW+r0VLmacU6e1lYXiBS
         TZ/Ca1s7dugjaEQuDXuYkgsfoHHXdVwHk7FGrXuZP9OdlZ+BQstx7BHfRbAswuO1rLeH
         uBXoT7GSjMDPJuR2iTLLuoo/CtGHxaf2/OBt+UIfFJZvp0fzLSTyw8gWcPtgS7Yrih8X
         J+4LfrHdyqIfMgT1eVvalyGQE+73bjtAQM+018WNS1RPXeCn1mhbxomCb9SwrwJI1UdW
         QySYNUT8xBzT+lCRyJ39/ZodrqDnD1dVcGGklgB9JaDgAYIBnUtLksy54q13wbMY7VVu
         io+g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1713944538; x=1714549338;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=/mRvWwbSTRSDRgquyaPNgxSn6K2zSKXHfiHyv/56g4k=;
        b=CTnObplRGO2oDdfaEb7IcmkKDcFHhZCSgMlo5nqYmEwZkpeV2Y8RGZx9HuyRsIAf4j
         WiiAd0F6JP3cqrsGhdtk6RZR6CSdNyK27UWf4psb/dXrB1ctwtZ6+MGgK+xjPhgTA1l8
         S4sohl0qK+DWF/BesX+3TV+Xzt/ErnGA6zQQw5Kb12pJoDm4xCZCVsyJk0NU2pv9I/S2
         cQwds4tEX46fzf6lT1XOhseI+z0Uta85lktNFxuN+7zoN9w87jrGHex6R0b9+pl9cYOv
         P80E8NrRuM/9k2GSS1NWgIiLhdD2E4QmF0svLoGCYvREC6jX7ttUUgMdc+ayqG6SB5hv
         kwGA==
X-Forwarded-Encrypted: i=1; AJvYcCV31ee0fA7Ez7Xip5c3oOoACv56MaC/jGSRLjxVmHHYZsausKEP8c7OWkWosC4PG3ZOJrgE5gYGP9+aRV/nz0JQ4963p/lWVdmgAw==
X-Gm-Message-State: AOJu0YxfD1u7luMc4uI6W2unjEDsj0TSUOnc5fCqIuZvH1G3RzcAuTXp
	J5M3+iAO/qaVL1kStDIlJXDGMIgQrpqkom7ysj1GGAA6zdj750Mj0/WZMLenPklZfoJFzWV+kx+
	axDmDrb4m4oytrONFCdn2Svp3hi2X8qYpL4wdUg==
X-Google-Smtp-Source: AGHT+IHuKrJVNbPoqLVP80XtcoLq178rizYtPSbNTv7J9WOJxPTl8IY09CYRGmbED2RPK3HREQNd2sXZrcy4rzMQj8I=
X-Received: by 2002:a25:ac63:0:b0:de0:cd0f:e9ac with SMTP id
 r35-20020a25ac63000000b00de0cd0fe9acmr4086794ybd.31.1713944538616; Wed, 24
 Apr 2024 00:42:18 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20240424054602.5731-1-quic_vdadhani@quicinc.com>
In-Reply-To: <20240424054602.5731-1-quic_vdadhani@quicinc.com>
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Date: Wed, 24 Apr 2024 10:42:07 +0300
Message-ID: <CAA8EJppoW9k835oRZxQ2q03-m3uVOc4QfjwLWvNvfjF-jiDavQ@mail.gmail.com>
Subject: Re: [PATCH v2] arm64: dts: qcom: qcm6490-rb3: Enable gpi-dma and qup node
To: Viken Dadhaniya <quic_vdadhani@quicinc.com>
Cc: andersson@kernel.org, konrad.dybcio@linaro.org, robh@kernel.org, 
	krzk+dt@kernel.org, linux-arm-msm@vger.kernel.org, conor+dt@kernel.org, 
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
	quic_msavaliy@quicinc.com, quic_anupkulk@quicinc.com
Content-Type: text/plain; charset="UTF-8"

On Wed, 24 Apr 2024 at 08:46, Viken Dadhaniya <quic_vdadhani@quicinc.com> wrote:
>
> Enable gpi-dma0, gpi-dma1 and qupv3_id_1 nodes for
> buses usecase on RB3gen2.
>
> Signed-off-by: Viken Dadhaniya <quic_vdadhani@quicinc.com>
> ---
>
> v1 -> v2:
> - Move gpi node to correct place.
> - Update commit log.
> ---
>  arch/arm64/boot/dts/qcom/qcs6490-rb3gen2.dts | 12 ++++++++++++
>  1 file changed, 12 insertions(+)

Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>



-- 
With best wishes
Dmitry

