Return-Path: <devicetree+bounces-102719-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 2BD0897801C
	for <lists+devicetree@lfdr.de>; Fri, 13 Sep 2024 14:35:55 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id E38AA2838EF
	for <lists+devicetree@lfdr.de>; Fri, 13 Sep 2024 12:35:53 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 2116D1DA11B;
	Fri, 13 Sep 2024 12:35:37 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="oN2eFRy8"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-f44.google.com (mail-lf1-f44.google.com [209.85.167.44])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4D4131DA0F5
	for <devicetree@vger.kernel.org>; Fri, 13 Sep 2024 12:35:35 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.44
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1726230937; cv=none; b=oySX1bWFVHTvuus/Bi7e9TCyCM0l44SMUBZ6VmYZGrb0fiyrRSXRE7JF3DTyTvXjOWASbCTVKGOn3w49e9PNDoS32/yuXWXMgKi+9Owm9Xg89VFcJdBIEESgdCvTK1O6q+bUwNVIaLbz+jinSHny8wnm0xhzVm7F6gPRY4J6kco=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1726230937; c=relaxed/simple;
	bh=NGVS6Vkg7fpBgm/3lXqRIBdPrwPvuSL5IBSeL5/syf0=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=aNfiWmmzoLNs363J4irSQRK6P2cuiuI0GWhTHBjQGqG1+V3ajv16u591GMZc1vXIP2KYwPLZ8vQftDKb5HM+p42yXf2gOEkUIuAsE4NE3dXnUb5D0p0VaNqenu5HPb/pPJTarikWg2BkFFNi8kw6doVUZA9933ot1UYxl2QsvX8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=oN2eFRy8; arc=none smtp.client-ip=209.85.167.44
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lf1-f44.google.com with SMTP id 2adb3069b0e04-5365aa568ceso1132179e87.0
        for <devicetree@vger.kernel.org>; Fri, 13 Sep 2024 05:35:35 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1726230933; x=1726835733; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=MjJZ4X98ntqTWPk6LArQGhPHBOzVXOE82z4DS0YRyYA=;
        b=oN2eFRy8QpsAIIMaglmdaQWbp+Ts9+sHMfaj+S3n8Exo7hykZB4dzgG/caI+5M0tk9
         o9Psa4HxYJRqA18wV0MR5+JQQsL4mPjRrbjiMauSM8TaTR8B50P403tomKiq2Qk6uBVD
         RPjopaxiljNA3GQ7/WGjHz/vyUQCgB41vJVmg4/WuY8w4AAZY+VgDtzRZEjNdZRB3p3/
         cqFntOFo022nXAys66IHuWzQTOfQpmRaMfkTCVFQMm1tJFFbb5ItjhZRtszCNjZUgU1V
         aLd1jMqigGPWhAKcq90GT2koN2jQRlXZaHjd0RxBg98Jx3YmapCk7X1Q6IwmFtGvC0HE
         vBCA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1726230933; x=1726835733;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=MjJZ4X98ntqTWPk6LArQGhPHBOzVXOE82z4DS0YRyYA=;
        b=T3QRQZuZZUjA7imII5mgXb9ZkZh27fZsjPEJxl5j4uVmGGFbA/tPx23cwMjcUJnw+7
         XzBvYgwJy47FtyXBrMQHG+70pDXPK26V9Z63ndZ+825/Iub7uD254C05t6U4tIiGvlNf
         rGNXHFqvVzQb4OnRYeIYat0ZZFvtUtgmdE5HXGCbv4kuQDiOkSbu+vDHKgnnE4JRGqZv
         T+bBGTyuqbbWkkm0SYauXpUFvkKTIOjjuWYFnoaVvi3ETbmRuz8Re08kwemItucQuSEx
         AIHD9vSzEcxqj/KRoWnX0lLnSRh/zVz2LTgnZ7LvjNoNGM36eITQeMpa34OxLS26K6ST
         a5dQ==
X-Forwarded-Encrypted: i=1; AJvYcCU65IGZJaqLH86HDYgb1qX14DRIDvBKPa29Hw1iYLZMei8r1HHzGflY5tAl46VncvqVdbiL6BD3a5iS@vger.kernel.org
X-Gm-Message-State: AOJu0Yw1TjxaUOdQb9zDuw81v4Q/6IDHAvV3FKCLUyd/v6hqG+CrU9Mx
	0sNhC6l9z+lxu1YCljaRpKXt8f8RmQ99qki0dPQG5TKMUl0Z91kwQ27RG2q5QWs=
X-Google-Smtp-Source: AGHT+IHX0DyjU76XALWxmWo1rFtyrXa04JOcs287YwEsi4dcvnoaeAHvh4uSkbpFq6zKRGmVBfQSaQ==
X-Received: by 2002:a05:6512:1247:b0:533:c9d:a01f with SMTP id 2adb3069b0e04-5367feb95f5mr2113449e87.4.1726230933059;
        Fri, 13 Sep 2024 05:35:33 -0700 (PDT)
Received: from eriador.lumag.spb.ru (2001-14ba-a0c3-3a00--7a1.rev.dnainternet.fi. [2001:14ba:a0c3:3a00::7a1])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-5365f914c72sm2257748e87.305.2024.09.13.05.35.31
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 13 Sep 2024 05:35:32 -0700 (PDT)
Date: Fri, 13 Sep 2024 15:35:30 +0300
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
To: Qiang Yu <quic_qianyu@quicinc.com>
Cc: manivannan.sadhasivam@linaro.org, vkoul@kernel.org, kishon@kernel.org, 
	robh@kernel.org, andersson@kernel.org, konradybcio@kernel.org, krzk+dt@kernel.org, 
	conor+dt@kernel.org, mturquette@baylibre.com, sboyd@kernel.org, abel.vesa@linaro.org, 
	quic_msarkar@quicinc.com, quic_devipriy@quicinc.com, kw@linux.com, lpieralisi@kernel.org, 
	neil.armstrong@linaro.org, linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org, 
	linux-kernel@vger.kernel.org, linux-pci@vger.kernel.org, devicetree@vger.kernel.org, 
	linux-clk@vger.kernel.org
Subject: Re: [PATCH v2 5/5] arm64: dts: qcom: x1e80100: Add support for PCIe3
 on x1e80100
Message-ID: <bizip6exhqdm34fhdw7dvqws4oqgexp2f2lp2zxoblqu2zfupi@t33svola3tq4>
References: <20240913083724.1217691-1-quic_qianyu@quicinc.com>
 <20240913083724.1217691-6-quic_qianyu@quicinc.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20240913083724.1217691-6-quic_qianyu@quicinc.com>

On Fri, Sep 13, 2024 at 01:37:24AM GMT, Qiang Yu wrote:
> Describe PCIe3 controller and PHY. Also add required system resources like
> regulators, clocks, interrupts and registers configuration for PCIe3.
> 
> Signed-off-by: Qiang Yu <quic_qianyu@quicinc.com>
> ---
>  arch/arm64/boot/dts/qcom/x1e80100.dtsi | 202 ++++++++++++++++++++++++-
>  1 file changed, 201 insertions(+), 1 deletion(-)

I didn't verify the addresses, the rest LGTM

Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>

-- 
With best wishes
Dmitry

