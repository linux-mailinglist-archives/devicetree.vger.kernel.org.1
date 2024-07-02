Return-Path: <devicetree+bounces-82212-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 5261D91EEE3
	for <lists+devicetree@lfdr.de>; Tue,  2 Jul 2024 08:24:32 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 855741C21A23
	for <lists+devicetree@lfdr.de>; Tue,  2 Jul 2024 06:24:31 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id CFCA77B3FD;
	Tue,  2 Jul 2024 06:24:28 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="b2N1lwNs"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-f50.google.com (mail-lf1-f50.google.com [209.85.167.50])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F04195A7A0
	for <devicetree@vger.kernel.org>; Tue,  2 Jul 2024 06:24:26 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.50
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1719901468; cv=none; b=eRc//gFVVWDbrvtnOOIuogCbHJucP8fAx07GC0sClOkjs6kEnyc/BenNdWAu+vADPrtzgLurQhCfYHtfB/kzoZaI9c6L+Rq4qeYJjtlrRy+dV/5gVcfuw6rrH8fRNIDzrGG72XGQZb1q5aje5zhipwhCtwLMzpTZB7jjvXga8UA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1719901468; c=relaxed/simple;
	bh=InAhoUN8tcseJPMHm9g66x74qz1q4L1w7tnrp4q2JsE=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=pjQxrud9paPccUgjO2dddjyiP7T/Au7pgH6vDbxCDAlC4JiIyTQ4IQdPLm3XUeaC8B3FLl9kqky2ODWR0N+q5SmAD/VMTo69O+kbFl8qHXzpLmyAWx26nmeNYlmm5AVfxLRUt9V9FV8DPjFKWZcly2o8pzVG5rvLiIQug982E7w=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=b2N1lwNs; arc=none smtp.client-ip=209.85.167.50
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lf1-f50.google.com with SMTP id 2adb3069b0e04-52cf4ca8904so6147631e87.3
        for <devicetree@vger.kernel.org>; Mon, 01 Jul 2024 23:24:26 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1719901465; x=1720506265; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=bDo5IygLtEAB+cPD4fX0+9qX3XWf/HFh9CkZqeTvO3k=;
        b=b2N1lwNsdAc6F2kYGz5Kme/belkl+xxHosId+dCCZfnbeqzjBc5HNCZUelmLQMT/hS
         Ni40G36hsDBEQsn14C6iT/HJeEgbDM9YwVzNQpiQQAAEtHTSsXw4xjPc+SnU4QhSWk+q
         O1N6oWY3pQy9dTzCJxNNhzQccafc9BnvMncJHc8RYVDWRRG+qJS9FuWEqft1AvRSIuJ9
         2Eqp6iYm3b60mwYZn+rqnGPE3jPP2b9nkZqYNOwJrwgXBJpazOj1PobvOCtpL5h4dgii
         /ouHcvqwcpwc6WCZk/WOATRb/QhvblBirL75SrLr1uylXOj5tG1toDo/VkyGmofKnaGn
         ER6w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1719901465; x=1720506265;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=bDo5IygLtEAB+cPD4fX0+9qX3XWf/HFh9CkZqeTvO3k=;
        b=rz87gswyMAdutt+2tZpPiWNb8b2VpxmdUYXnD5/Al47/L0dbSpsFtZHcqvqYy4bIsr
         6HQP4H6DZ3feXavBYfRQerCSnf0T4487TwYRBSWjnnCFYgsa2kAyskXfiOvWqFMW762t
         nLA/4u1PxFVypmFme7mOQuRwUAYI4UvLrwAkb4M12c0uD2c+RsPeptTQIugiWSnvmGhu
         jpXwar24jVlsDE6Q+4q+1FX3YH+OOy2P03EMiC61RjlvcIEuYUuKeGVNM/U4/IMEnh4M
         b2K1jlNtHQjyT8Hg+jiMaPUEGnxo9Wn9WpAjr81Xsb+AUubC0SCRawW1QWNn7svhuNBt
         UQGA==
X-Forwarded-Encrypted: i=1; AJvYcCVRpWidU3ir0g7T20MBnR4z3UAUA5kBkxFnmQH2Ql3nIctOQ/CK/Vr71UkchwYh2Yx220CFIw7LosMW6rQAH67qd+vbDcxwD0OPRA==
X-Gm-Message-State: AOJu0YztEq4lgfbyIJd+YMwPLytbLvNxm9MDgso9Hi41NuplZswbq8ck
	qhjZ3E+0edPCa7syehSDFKyTx+XG2SbUbN4DTR1tgUvacOUyPeZVSDnbAZXj7lM=
X-Google-Smtp-Source: AGHT+IF75P/sOWPMtLxALLKSe++8Cf/2bVEGI3L9gmOs0TCyDPgWQ2uHOuklB9AeLyumfAx+WoRHcQ==
X-Received: by 2002:a05:6512:10d0:b0:52c:ab83:d783 with SMTP id 2adb3069b0e04-52e8264c68emr4508470e87.6.1719901465067;
        Mon, 01 Jul 2024 23:24:25 -0700 (PDT)
Received: from eriador.lumag.spb.ru (dzdbxzyyyyyyyyyyybrhy-3.rev.dnainternet.fi. [2001:14ba:a0c3:3a00::b8c])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-52e7ab0b840sm1665664e87.11.2024.07.01.23.24.24
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 01 Jul 2024 23:24:24 -0700 (PDT)
Date: Tue, 2 Jul 2024 09:24:22 +0300
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
To: Dang Huynh <danct12@riseup.net>
Cc: Bjorn Andersson <andersson@kernel.org>, 
	Konrad Dybcio <konrad.dybcio@linaro.org>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Luca Weiss <luca.weiss@fairphone.com>, linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org
Subject: Re: [PATCH v3] arm64: dts: qcom: qrb4210-rb2: Correct max current
 draw for VBUS
Message-ID: <ql24nvbdqfzhtogocmsh2xm2wkjfddfcvoxnzbzvjgcucy7gyz@hqgvr4oul7pb>
References: <20240702-qrd4210rb2-vbus-volt-v3-1-fbd24661eec4@riseup.net>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20240702-qrd4210rb2-vbus-volt-v3-1-fbd24661eec4@riseup.net>

On Tue, Jul 02, 2024 at 01:01:19PM GMT, Dang Huynh wrote:
> According to downstream sources, maximum current for PMI632 VBUS
> is 1A.
> 
> Taken from msm-4.19 (631561973a034e46ccacd0e53ef65d13a40d87a4)
> Line 685-687 in drivers/power/supply/qcom/qpnp-smb5.c
> 
> Fixes: a06a2f12f9e2 ("arm64: dts: qcom: qrb4210-rb2: enable USB-C port handling")
> Reviewed-by: Luca Weiss <luca.weiss@fairphone.com>
> Signed-off-by: Dang Huynh <danct12@riseup.net>
> ---
> In previous patch series, there's a suggestion to correct maximum
> current for PMI632 VBUS.
> 
> Unfortunately it didn't make it and probably forgotten.
> 
> Link to the suggestion mentioned:
> https://lore.kernel.org/linux-arm-msm/CYMDEAJZ0TJK.K31XZB3E9QOG@fairphone.com/
> 
> Signed-off-by: Dang Huynh <danct12@riseup.net>
> ----
> Changes in v3:
> - Fixed wrong usage of electrical units.
> - Link to v2: https://lore.kernel.org/r/20240701-qrd4210rb2-vbus-volt-v2-1-b7bcd2a78c8b@riseup.net
> 
> Changes in v2:
> - Fixed typo (voltage -> ampere)
> - Link to v1: https://lore.kernel.org/r/20240701-qrd4210rb2-vbus-volt-v1-1-5c06f8358436@riseup.net
> ---
>  arch/arm64/boot/dts/qcom/qrb4210-rb2.dts | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 

Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>

-- 
With best wishes
Dmitry

