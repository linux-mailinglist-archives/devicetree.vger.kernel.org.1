Return-Path: <devicetree+bounces-197259-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id E1747B08A08
	for <lists+devicetree@lfdr.de>; Thu, 17 Jul 2025 11:57:58 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 128DD4A42C2
	for <lists+devicetree@lfdr.de>; Thu, 17 Jul 2025 09:57:59 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id DD711291C3A;
	Thu, 17 Jul 2025 09:57:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="m005fpLc"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ej1-f54.google.com (mail-ej1-f54.google.com [209.85.218.54])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1D5FD28936D
	for <devicetree@vger.kernel.org>; Thu, 17 Jul 2025 09:57:51 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.218.54
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752746273; cv=none; b=SP72lfD9PV39rx/yPt3+KR7IAero1sLqjEEwYLGIyuMbZzb//pYJtgStxPi0ytxkUx5SrD12pLPEC3BlVftV0ikYZOZG3L8qInk7QIp/HgtFUzByXtuxdtedwNlbD3/rjOEWtWe0hJjP9EHxWF/snqHNSUFOpAA9Re7N2dnjzV4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752746273; c=relaxed/simple;
	bh=C5c7x2+5FmrN92Gtg4+eigW/yNecgUmNAwgsD6/1sDo=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=SHns7ko8xwTSLBK4jYCEBlamiKwvDp1MVnL7dej8SeMRohaWPMpetQ7A8jG6oAaAYUyDejOilqrBmLQUeJP47Xgs1bxjYbiQtEI+aTfW8YIxVlppX1MI8BdHPFMvrOUFT40YPBOO++oXwHXxxs355Qd2Wpm+8mKYJWPhZCXFAWk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=m005fpLc; arc=none smtp.client-ip=209.85.218.54
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-ej1-f54.google.com with SMTP id a640c23a62f3a-ae0ccfd5ca5so109330866b.3
        for <devicetree@vger.kernel.org>; Thu, 17 Jul 2025 02:57:51 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1752746270; x=1753351070; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=A9sprcw+FL+M/3WWYR2avdQL7tHTil5o2+4ysJZAMdQ=;
        b=m005fpLcWnAvz0JjkEffvSN+/hoEF9efLY4NGGZa4QIIjkqdTs7VODtbCSKCjqMWW6
         lgaeZhLmotaL897hwGqK5UT2DtrafSo2tocknaatWcJMQFCVlc7C5qfmmpAyg81ttVQ/
         Pw63quyidt44Jmq0Lq9QFxuGMX2NmIgx55Ibz409wa74gN8YQpk84YrXGuwmrmxB/MDA
         K6fRpaFGszLJaShnOKD1573GuGQyMYHlY4bpSDNAI0mDwQmWYrFNc10BYLB356kjTxWS
         aq+dy7hCmn8ZsKY1cpCAD64TBmDST26CC05dpiNRYkBWfNra55254x4B/XJqVeqoS2ZV
         gXxA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1752746270; x=1753351070;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=A9sprcw+FL+M/3WWYR2avdQL7tHTil5o2+4ysJZAMdQ=;
        b=tfMB9M+IJnixn+GWpMZMvWpnWYdI/HF9E0WGdpfJvfePu/FQq7H0p56xF/UktXizL8
         N1i0iC03vaVk3pqrZNLvTfV6MWByByzOT8WOoIWYsEa/ZzrRUj7xbYxPNUdfjpwOMhg2
         2PoOuEL7Fw6fLQwTezKNpEta4Nmfcv2Y8dC3CS9V8vcG6s//8mWgMXZWufmmdQTyhfbz
         oOc/3hBkBc0GJhHZYwY72FmSTErCFfZk54hlFDy9vnwU9LBwqsfSURPdUIyCj9X4Fkba
         +0AYccoZVH6jo0vPx0+I2yxFCXmJWKFHHqpUQnWQzIZn0wDaV7JUyPB0SHHZPk3F3EVv
         CNYQ==
X-Forwarded-Encrypted: i=1; AJvYcCVq2TQBuPioHbzbbneYuqZeudWOyRQpqubYpb0xdDQD6SR/cEdgC/YjNK19DUvbQS6a+LhabBnpEK3+@vger.kernel.org
X-Gm-Message-State: AOJu0YwtapFxc0MMBZajdSbdAfsi0uCoY3zlL78HgaFyYtz6ZJYddmP+
	i6TUlamhUO/gLoeaGYYlr1nVoeP61Qu4/3gEgXothrVk4KjqA2Vu2lEWx61zwDjGM0o=
X-Gm-Gg: ASbGncugwCmQroj19fwefwnxgYFONsFoVj7tdHJm0MzQmAkUkapdUF/OhRdxoUZjbYP
	GUMyx92E7KPOONaVfDyI+uqbIyxd1Vx120s7+ALFBRSjd2bkEGWR70WjJSQZjuAno8iMEEwaqI5
	54viHsKeOWdzZFklKL3prWjECs9oopouRQWEIhnVVs5DtMhwxBPvdP+YPdgPrDz8EnXQLytilNl
	pkMVsh8G9Jh3Q9IPej6Bdu7ivwmuxDeVPpb4lxjX8T7lePsvYjS+sxDWNYU2gq+L6Rt7xV4D6pS
	HUdmbJBGxmKG8jS3cyMGkfzQDjhyX9U4UnVtbeSESSGb7yHdUfoW/haTbfbV75Dy7upSUcZvhGA
	l1PmxgZ06NT8HeC/COOA=
X-Google-Smtp-Source: AGHT+IF2F1sezQkalvkubfc1kydTpgVG5QuWYuPnjDm/LqI0gsy0QRNYJ/pRxI93KXsHSADKAggVsw==
X-Received: by 2002:a17:906:fd84:b0:ae3:63fd:c3af with SMTP id a640c23a62f3a-ae9cddf1080mr542887866b.16.1752746270277;
        Thu, 17 Jul 2025 02:57:50 -0700 (PDT)
Received: from linaro.org ([82.79.186.23])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-ae6e82dee16sm1337846666b.152.2025.07.17.02.57.48
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 17 Jul 2025 02:57:49 -0700 (PDT)
Date: Thu, 17 Jul 2025 12:57:47 +0300
From: Abel Vesa <abel.vesa@linaro.org>
To: Pankaj Patil <pankaj.patil@oss.qualcomm.com>
Cc: sboyd@kernel.org, mturquette@baylibre.com, andersson@kernel.org,
	robh@kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org,
	quic_rjendra@quicinc.com, taniya.das@oss.qualcomm.com,
	linux-clk@vger.kernel.org, linux-arm-msm@vger.kernel.org,
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH 7/7] clk: qcom: gcc: Add support for Global Clock
 Controller
Message-ID: <aHjJG2nrJJZvqxSu@linaro.org>
References: <20250716152017.4070029-1-pankaj.patil@oss.qualcomm.com>
 <20250716152017.4070029-8-pankaj.patil@oss.qualcomm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20250716152017.4070029-8-pankaj.patil@oss.qualcomm.com>

On 25-07-16 20:50:17, Pankaj Patil wrote:
> From: Taniya Das <taniya.das@oss.qualcomm.com>
> 
> Add support for Global clock controller for Glymur platform.
> 
> Signed-off-by: Taniya Das <taniya.das@oss.qualcomm.com>
> Signed-off-by: Pankaj Patil <pankaj.patil@oss.qualcomm.com>
> ---
>  drivers/clk/qcom/Kconfig      |   10 +
>  drivers/clk/qcom/Makefile     |    1 +
>  drivers/clk/qcom/gcc-glymur.c | 8623 +++++++++++++++++++++++++++++++++
>  3 files changed, 8634 insertions(+)
>  create mode 100644 drivers/clk/qcom/gcc-glymur.c
> 
> diff --git a/drivers/clk/qcom/Kconfig b/drivers/clk/qcom/Kconfig
> index 051301007aa6..1d9e8c6aeaed 100644
> --- a/drivers/clk/qcom/Kconfig
> +++ b/drivers/clk/qcom/Kconfig
> @@ -645,6 +645,16 @@ config SAR_GPUCC_2130P
>  	  Say Y if you want to support graphics controller devices and
>  	  functionality such as 3D graphics.
>  
> +config SC_GCC_GLYMUR

Wait, are we going back to this now?

X Elite had CLK_X1E80100_GCC, so maybe this should be CLK_GLYMUR_GCC
then.

