Return-Path: <devicetree+bounces-80735-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id 759A691A4AE
	for <lists+devicetree@lfdr.de>; Thu, 27 Jun 2024 13:11:20 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 0ADC2B20FF5
	for <lists+devicetree@lfdr.de>; Thu, 27 Jun 2024 11:11:18 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 9CDA914884D;
	Thu, 27 Jun 2024 11:11:05 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="vDXML3od"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-f51.google.com (mail-lf1-f51.google.com [209.85.167.51])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C5A121459F6
	for <devicetree@vger.kernel.org>; Thu, 27 Jun 2024 11:11:03 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.51
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1719486665; cv=none; b=LmUcfuIw4aG93m4CAc384c2EvQQvGRSkUHqShBMpahMa9fZ9lJLovORA2iVo5HWW/3jzO7XbUWevCjW1tApWw7gH1ZRClrCt9OmgVBD1xib6JbJS/s711IFhvCHs+reNTAZO3iNfl2Ov8VZ8WVHbADmfbBHnEe/f5P6x68lj6z0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1719486665; c=relaxed/simple;
	bh=YLQmrm8y/W5mPh+g+lIdFwGDKORoD4GdmpQzNghV7C8=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=oHvWESrVhPJqlFvWBIANP78X1gCCj0zMQM7kYtxqR8Gg8pynf/R3q54eb0+gNpmI+fgODgO+CI4fa8FTC8MGf7GQXxeLr9j38/WrJ3HKw8SDs0af25Q0lgqOe1arElQtcX3f1bt9VroYgvTle5p1VzejMLcIm37gFYMgtbZfu0A=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=vDXML3od; arc=none smtp.client-ip=209.85.167.51
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lf1-f51.google.com with SMTP id 2adb3069b0e04-52ce01403f6so5135162e87.0
        for <devicetree@vger.kernel.org>; Thu, 27 Jun 2024 04:11:03 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1719486662; x=1720091462; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=JZfwnwILao9DSqYa7qrxNn8B+UNfyRNRyM9k2v0B2c0=;
        b=vDXML3odhUfbWErKYJnvfT6zGHcrHZuyyayMLsCokDB8ZnvOwfUlXJ3xcC9Icedx/I
         wC8GeLNs6/Hzg+FN5sQSJdSl6CbuX0kSTvkSlTd6VgToAdByusRayKdrc8Am8qHEvrq3
         m4b9824kzzBnuNcpmnxfkE6m2jFgAd2eJYIQTLwC4nV1aaJGjsiRl9Jp8ojSfLvVLlZp
         JDH3sO2xe3Mab2tA+K8hunaYqTxZf4ZNgX3rrfoLNHZzWu72zHfTvL7sNxBwtJY4kZNp
         OD76D9699m5dvty8+7vTZuKjSO54wrpeamV/Xys1Q4FuXoG4GIKYo9sVyeaSCZ+/atKa
         4JIg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1719486662; x=1720091462;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=JZfwnwILao9DSqYa7qrxNn8B+UNfyRNRyM9k2v0B2c0=;
        b=EtEbygrwGytMdCOxiQUu+LQt3MNKTlfJhil26EvAKw6VbHKJxPTHshmHmEGai0GGxu
         T1PjCk/4g8OkjUS/ocmohCtcJ2X3Xu+RpX6ck26ywbk3eCJxqPsvjoFIw0xEFKn1qqiu
         ogBeu0meOsnDkrRRPEVTiqt1M4lfkDwceIHo6APiJwvxKfNybG5wTOp40A8QI0tnoZ4s
         4meOfe8tFp6BCdtpkQt3w6Uft9nr0mikRu5wSoIkir5YxoVMJDqmMl+DVh/8Fa/KDdhw
         PEuLVpqhdHrgVgCTNhTiQYYVY/lVMJRLcH8aJib67OyGaumj1os093FRKb2SQA0IsEp0
         W4wA==
X-Forwarded-Encrypted: i=1; AJvYcCU0rggUp8oWZJXR4Jh+GaD8VkHu81KsmCviReyRPydwXo9jPSs3WHn/W9G0s/xkyUBNgjpj/5IYh0Qq93jp4y3Ok7Da05XFEWc/og==
X-Gm-Message-State: AOJu0YyOOG9Zv+WgR+SuPAs0CucHpr5TCXV5Om5SvvORZfsw92wGWBDe
	Dpx7OwXCSdcNj7pS//cakxwpQevLAYNN0zB8HEJXk9Idg29rPQp0zm41SlIrm58=
X-Google-Smtp-Source: AGHT+IHLeNWA6STAmK002F9rrUHbw0peSq+8PW3/5EwME76N2y206FiddtnUjwpWsm/CEzvzo9JdcA==
X-Received: by 2002:a05:6512:3ef:b0:52d:582e:8093 with SMTP id 2adb3069b0e04-52d582e817dmr3573310e87.23.1719486662015;
        Thu, 27 Jun 2024 04:11:02 -0700 (PDT)
Received: from eriador.lumag.spb.ru (dzdbxzyyyyyyyyyyybrhy-3.rev.dnainternet.fi. [2001:14ba:a0c3:3a00::b8c])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-52e765d8552sm6637e87.59.2024.06.27.04.11.01
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 27 Jun 2024 04:11:01 -0700 (PDT)
Date: Thu, 27 Jun 2024 14:11:00 +0300
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
To: Gokul Sriram Palanisamy <quic_gokulsri@quicinc.com>
Cc: sboyd@kernel.org, andersson@kernel.org, bjorn.andersson@linaro.org, 
	david.brown@linaro.org, devicetree@vger.kernel.org, jassisinghbrar@gmail.com, 
	linux-arm-msm@vger.kernel.org, linux-clk@vger.kernel.org, linux-kernel@vger.kernel.org, 
	linux-remoteproc@vger.kernel.org, mark.rutland@arm.com, mturquette@baylibre.com, ohad@wizery.com, 
	robh@kernel.org, sricharan@codeaurora.org, gokulsri@codeaurora.org
Subject: Re: [PATCH v9 3/8] remoteproc: qcom: Add support for split q6 + m3
 wlan firmware
Message-ID: <ea526b4je6jtgzo6udc6nd2vbro6apbdiloevltxiuk5vtlx63@nk3so7uiiiin>
References: <20240621114659.2958170-1-quic_gokulsri@quicinc.com>
 <20240621114659.2958170-4-quic_gokulsri@quicinc.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20240621114659.2958170-4-quic_gokulsri@quicinc.com>

On Fri, Jun 21, 2024 at 05:16:54PM GMT, Gokul Sriram Palanisamy wrote:
> IPQ8074 supports split firmware for q6 and m3 as well.
> So add support for loading the m3 firmware before q6.
> Now the drivers works fine for both split and unified
> firmwares.

Right now linux-firmware ships both q6 and m3 firmware files. The driver
loads just the q6 firmware. Is it enough for the hardware to get working
WiFi?

> 
> Signed-off-by: Nikhil Prakash V <quic_nprakash@quicinc.com>
> Signed-off-by: Sricharan R <quic_srichara@quicinc.com>
> Signed-off-by: Gokul Sriram Palanisamy <quic_gokulsri@quicinc.com>

Who is the original author of the patch?

> ---
>  drivers/remoteproc/qcom_q6v5_wcss.c | 33 +++++++++++++++++++++++++----
>  1 file changed, 29 insertions(+), 4 deletions(-)
> 


-- 
With best wishes
Dmitry

