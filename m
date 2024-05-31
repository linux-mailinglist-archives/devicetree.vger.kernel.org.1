Return-Path: <devicetree+bounces-71178-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id D788F8D5F4C
	for <lists+devicetree@lfdr.de>; Fri, 31 May 2024 12:11:05 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 0F0181C221CA
	for <lists+devicetree@lfdr.de>; Fri, 31 May 2024 10:11:05 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 8A46C14532C;
	Fri, 31 May 2024 10:10:59 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="Uj65dYsm"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lj1-f174.google.com (mail-lj1-f174.google.com [209.85.208.174])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E8013142642
	for <devicetree@vger.kernel.org>; Fri, 31 May 2024 10:10:57 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.174
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1717150259; cv=none; b=IlxxVz+gem00yBZEOWEZHU4iKtgqzweK3ArHi/fgt5Iiv3unpe1UjmifTrcGefARWYvzOJ51W/0wWlfEbn8bql4j1FYdZTJv/Fl3PDL7L2tXsNMpm0scWOwpetdr/fciw06u3oIIroV1eP1NFW2gYXjxcsBvQsL14NBfVxWc4lo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1717150259; c=relaxed/simple;
	bh=tnRD7sL9e/kA8XGuXCsaCtTyUUayesmk1ggXHAKXSkM=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=F3EuUcor2qzPPncFLyPUY9zNOXIqqyA1vI+1Vtztl6z6QtPPwdrj3/u+NTQ/FTWdoiZlHBjuvnPlCT4LOZLp6UGo5mz9Mh39DBDPhqgxj/WXbdsLHpVGqQcl4RKcrAzgQ+wLB9f88xgIGF2JRaTZn8len9htmTLToI/srf7Pn6I=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=Uj65dYsm; arc=none smtp.client-ip=209.85.208.174
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lj1-f174.google.com with SMTP id 38308e7fff4ca-2ea9afcb22aso1455271fa.1
        for <devicetree@vger.kernel.org>; Fri, 31 May 2024 03:10:57 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1717150256; x=1717755056; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=EV11PW9DzxNQQ9z9HVdv2A7IUH6ENmQkq+xllevX5g4=;
        b=Uj65dYsm8x7E9KDiZgCNWkbeWgvatir0FTHH0GhGUg5hxpBRyXgEIOjggHuYgLzXmW
         JQHDggYTOEy33vIZDlvvpN6rIWdPDZDB00zAwpg8a98NodRBteLxF+NDWOMN0oa3F9mF
         VFL44gMHM/02Pg5fe8Tl3+AceeQNYV8s/0y9EH1JbgUOnFtwiAx6+MYCMjAayDqCJyK+
         3gfMqpD1vRn9VtRKnQEBP1w9XngB2fFgZGVtsAf7EUVWEIR7WmkCtu3aZQsEmiogN7oF
         2DQFklb5oCH8gbTKYDH6mmqt8XoYl9ciwyrkqEpUJDCcRo8nleDRmOZ1d7wPPHvP6J3p
         6ioQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1717150256; x=1717755056;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=EV11PW9DzxNQQ9z9HVdv2A7IUH6ENmQkq+xllevX5g4=;
        b=u/6hfjRbgTN0cy7URV2Cq3OS4z6BIU+VBmy7BSYNKm03kwRfqgRgSd+OZE25s0Ngru
         /9ZhiDda2Jc/5cqyCgt8S2gB+b1qoeCaL9gOhMqnItjNARTihmAD2nrqkNYR6x/xw/PY
         LTZYLOLJm/68/68RgeCVKwwwfSmunzWrDBi5rCiwb/z4FDVF8Lz3hqQEEuT0ImyP+ocp
         rVGI1g55oWggpxGSc776AHo9kQ9bakAuxNzM/kNsMq4nhiHpWXMYfsEsEOeS8+CRm9Bj
         zcx3Js+PvMQJy5DxxmSL8EBa7J77zt3SWSO9oypNOM3YVbYzI3pJYoBDXeBhcX1zK04K
         UYmA==
X-Forwarded-Encrypted: i=1; AJvYcCXu0OxMz4ZMEOU9MuBn3TvmRqL1hjY+C7FYSEBORNu1/XWwRJCq3q+Tg0vFxI9ZEzKw60fpQZvCwbmFBh4B957WPMgETBJiaTFlYw==
X-Gm-Message-State: AOJu0YxBRpFs9VuDzoJ4fpHOY00k42/sP2l3+ASJMx0pRtdkfGXzyoxO
	fTjairokMd+sT1aEN9ugNjAxGr+U3rJLJvP9ojocSOXL7EKurt9IKjqApvahKG0Mj5F1uApRqZd
	X
X-Google-Smtp-Source: AGHT+IFwjLSq1dXXqxotR6iHo+8QNGAtdre+h/pLfoYmjU3NH6ag4dyD7Am7zOIX7WhJBsQ7bdeVuw==
X-Received: by 2002:a2e:b619:0:b0:2e9:714a:ef43 with SMTP id 38308e7fff4ca-2ea950c7ff6mr9040081fa.8.1717150256149;
        Fri, 31 May 2024 03:10:56 -0700 (PDT)
Received: from eriador.lumag.spb.ru (dzdbxzyyyyyyyyyyyykxt-3.rev.dnainternet.fi. [2001:14ba:a0c3:3a00::227])
        by smtp.gmail.com with ESMTPSA id 38308e7fff4ca-2ea91b9db52sm2596171fa.26.2024.05.31.03.10.55
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 31 May 2024 03:10:55 -0700 (PDT)
Date: Fri, 31 May 2024 13:10:54 +0300
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
To: Tengfei Fan <quic_tengfan@quicinc.com>
Cc: andersson@kernel.org, konrad.dybcio@linaro.org, robh@kernel.org, 
	krzk+dt@kernel.org, conor+dt@kernel.org, linux-arm-msm@vger.kernel.org, 
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, quic_kbajaj@quicinc.com, 
	kernel@quicinc.com
Subject: Re: [PATCH v2 2/2] arm64: dts: qcom: sa8775p: Add IMEM and PIL info
 region
Message-ID: <zbpb2cldfo7lcenqipkdyzgp3hmtsucebf45by2yb7r26uq7uu@uyypbs7ri5pc>
References: <20240531093531.238075-1-quic_tengfan@quicinc.com>
 <20240531093531.238075-3-quic_tengfan@quicinc.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20240531093531.238075-3-quic_tengfan@quicinc.com>

On Fri, May 31, 2024 at 05:35:31PM +0800, Tengfei Fan wrote:
> Add a simple-mfd representing IMEM on SA8775p and define the PIL
> relocation info region, so that post mortem tools will be able
> to locate the loaded remoteprocs.
> 
> Signed-off-by: Tengfei Fan <quic_tengfan@quicinc.com>
> ---
>  arch/arm64/boot/dts/qcom/sa8775p.dtsi | 14 ++++++++++++++
>  1 file changed, 14 insertions(+)
> 

Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>


-- 
With best wishes
Dmitry

