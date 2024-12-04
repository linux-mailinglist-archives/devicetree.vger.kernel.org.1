Return-Path: <devicetree+bounces-127129-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 62CA49E4800
	for <lists+devicetree@lfdr.de>; Wed,  4 Dec 2024 23:38:14 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 23649282F6D
	for <lists+devicetree@lfdr.de>; Wed,  4 Dec 2024 22:38:13 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 7FF071F5417;
	Wed,  4 Dec 2024 22:38:07 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="ylRCSmsI"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-f42.google.com (mail-lf1-f42.google.com [209.85.167.42])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 367C71F03E2
	for <devicetree@vger.kernel.org>; Wed,  4 Dec 2024 22:38:05 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.42
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1733351887; cv=none; b=kzi2c4UWPe09u6vynRtrLslzT4zjzrgk341VtgyKhyaMoxC+HW2M8BMwrhtQyG1jFG7JaEajWYxahm7XdpWRMNjaiF/r2udxx92ZyKP2LCdZq2wXVADGhfQry/vtQuFv+P/iZgvxTdNQ4v2ARMps2WnKrYwEWI+idoiMe0tFE8I=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1733351887; c=relaxed/simple;
	bh=xkg4TmuAgcOBlNXpCz+wAftbtt3ceUi42NCmtOro4zk=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=o9y6lSHqJG6eqyQ0xXDMWI7jccks/b+E1soTzW2JMFOjA2CwfOYtMvfNLMu14VEfMhT/yqnR9HhmdUt+j4utlDkjNHwZ6RTtfDmwoZUGLvJwTVQnXIyCbKBU0pLl2bf1lR6Qn5Fv3gnw8SdIGhB41/Pq9qNOPVbzTBaWhEcUu3A=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=ylRCSmsI; arc=none smtp.client-ip=209.85.167.42
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lf1-f42.google.com with SMTP id 2adb3069b0e04-53e1f673ca8so341811e87.3
        for <devicetree@vger.kernel.org>; Wed, 04 Dec 2024 14:38:04 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1733351883; x=1733956683; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=hl9jh+TWg3sLdFu2Nz9fBaQFVbFiJS8tYrgpEHAnTls=;
        b=ylRCSmsIq1iFD6WgDIgutJU7jDSQ0rt9tB7j7hWcADsNAO/vpOBlXOqa7CLMrhZJ1C
         98sl4ivGQmOWfMfix2CeKn9BN4tPH1vO6Z6Ysd+flZZfpwJmYSzL9JsDK9TPIIeMvfFY
         gWuaFWjIJsjquuhf3dMoyMEn7P0bp1HruCSo1YWBWPcP01XStMXT77/zTNM6Y/SKiPH/
         bhfsE4Q8GBGMklqh1QEw2btnVoYDNc9lCY2HuelZcxGg17OmxQo1/sNn7Ve9jK7U7BCf
         UNOCn+2+zi4j31k9sBT2BCAYV/A4jqzsewaze9kCwnziTE+IZppF+IadBfE2bHJy6iRV
         +T8Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1733351883; x=1733956683;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=hl9jh+TWg3sLdFu2Nz9fBaQFVbFiJS8tYrgpEHAnTls=;
        b=LXbg5abGECbVzYmH01RuiLT5w6wg7Iknm9hrA5FUWiGybA8JEiDmji5nOCrIX2vep2
         tCthY3ZW1LTfxy6vZuyafai1B1U2CMOLihvHBCW9ACTvlkXrApNF97v9CzI3crP6HmLO
         MPhAdFa3oXdz628JCuMHpbRbBMAkYOu9nBefNK6YBlOhVLnbB9zFvh8rLvTnm+XQuSP1
         j3yMCTVfJ/iIVwTLtcsMyMheETsMBKKviWabbL4aolKd5pNScaL0i+p8pHXE9HYXPXax
         mXWfMujnsC0qU/1p6/7y59h0g2zG0bS6SktHKUlLb56lGVwx1ZeB/AlSaxZ95ZK32nrV
         cXJg==
X-Forwarded-Encrypted: i=1; AJvYcCXMyDhcLYVJuRA5x0OQzgqO4snRMdGEf7hGNpQ4Qo93mPUymjDLSdYIrUEZokV1qfYQmjUtanlEOcup@vger.kernel.org
X-Gm-Message-State: AOJu0Yzwz7CnSytGkCcNX7ZgBI7NXlTA7uWLDnj7Btr7yWe+JTscIWnF
	11ynaMrchWpKhlsbsvWIXyHOlVxM9XSUwOvfG6KPiy5+Xy0ryBEYnP7uEGd011U=
X-Gm-Gg: ASbGncvhieNzeWSHkZ/t0UUKTsjO6h8rr/mrXbUpr+PUaS7+vKDel2vFAOHrgrOp+Gv
	+hZbaJyaexJfPf1GwXae/6+qJrNHwhLuRL9D4v8Zn7iD6/lvA8BhctcKW+ztlQUaokBID7Cd2qP
	YNepM2rW81/leq3qaaUGa1Jcvb15p+x1OH+OIsIZOC4VCKZlVQfTtdCeN7Y7rugKz3Tu6niFgaI
	18GRHPB9eJuMaTMJw5ADTPiH8UvNdEIVAodJDNdDfcjTrPirI6eRZ1DIeMeGY46PbLZ3wFCFM66
	gh5drWmUX43WqjJ38pX0NSb1RMju+A==
X-Google-Smtp-Source: AGHT+IHRALAbQfybBTi3vgYPJn6lmJUNAP0mUN/xuWtAx3rCNJI5389sVGMg/Z3sKLeIyXa/zOSW+A==
X-Received: by 2002:a05:6512:3a82:b0:53e:1b79:adaa with SMTP id 2adb3069b0e04-53e1b87856bmr2395601e87.9.1733351883289;
        Wed, 04 Dec 2024 14:38:03 -0800 (PST)
Received: from eriador.lumag.spb.ru (2001-14ba-a0c3-3a00--b8c.rev.dnainternet.fi. [2001:14ba:a0c3:3a00::b8c])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-53e229c1fc5sm22370e87.199.2024.12.04.14.38.00
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 04 Dec 2024 14:38:02 -0800 (PST)
Date: Thu, 5 Dec 2024 00:37:59 +0200
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
To: Manikanta Mylavarapu <quic_mmanikan@quicinc.com>
Cc: lee@kernel.org, robh@kernel.org, krzk+dt@kernel.org, 
	conor+dt@kernel.org, andersson@kernel.org, konradybcio@kernel.org, 
	linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
	quic_srichara@quicinc.com, quic_varada@quicinc.com
Subject: Re: [PATCH 2/2] arm64: dts: qcom: ipq5424: enable the download mode
 support
Message-ID: <o2o73f4arkmqyuvzyisxtafqo4wbzkfkdnvd4a336wuwh6idra@x2fqbpgnf35a>
References: <20241204141416.1352545-1-quic_mmanikan@quicinc.com>
 <20241204141416.1352545-3-quic_mmanikan@quicinc.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20241204141416.1352545-3-quic_mmanikan@quicinc.com>

On Wed, Dec 04, 2024 at 07:44:16PM +0530, Manikanta Mylavarapu wrote:
> Enable support for download mode to collect RAM dumps in case
> of system crash, facilitating post mortem analysis.
> 
> Signed-off-by: Manikanta Mylavarapu <quic_mmanikan@quicinc.com>
> ---
>  arch/arm64/boot/dts/qcom/ipq5424.dtsi | 6 ++++++
>  1 file changed, 6 insertions(+)
> 

Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>

-- 
With best wishes
Dmitry

