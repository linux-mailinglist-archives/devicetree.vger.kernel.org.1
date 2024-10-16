Return-Path: <devicetree+bounces-112072-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id 571489A0ECB
	for <lists+devicetree@lfdr.de>; Wed, 16 Oct 2024 17:45:25 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id E2C95B22DB9
	for <lists+devicetree@lfdr.de>; Wed, 16 Oct 2024 15:45:22 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A154920C03D;
	Wed, 16 Oct 2024 15:45:07 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="J865w4As"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f42.google.com (mail-wr1-f42.google.com [209.85.221.42])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BB96F20C034
	for <devicetree@vger.kernel.org>; Wed, 16 Oct 2024 15:45:05 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.42
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1729093507; cv=none; b=fE77MGiKundVBuhiP/vEcswJ5MpPSRvALNUB5CnUwsRSG/lw2S31Wko32hxE2x6xt7A7wvq96JmbFDB4a02EJxVkz2i7PyrWODy5Q3vK9aKgU7n1XIz0sf0BOZMstMPRTbbhxwPRvPqt0QfYbv580b30+SL63Z6F9ZkJFiksT44=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1729093507; c=relaxed/simple;
	bh=TgzrkvgyruSxp/GyWnOJ8vI2zTVE6CXKwpfh2BBM8lA=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=gdWus0JQWZMmftwj8giGRGag0H5wiX7Mgti0vpwbhQnzVLh30yAYbaOgKDgg1qLj3AafpuCkvE26UtwwIx0q8hsqXPh134l5RKEr2bSVc+kSIz/L7OfZS7FUb26ZKYvpit9pRsOkvJTedZpJlwC5WbJMgNppH+uK1C7+CdkJGV0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=J865w4As; arc=none smtp.client-ip=209.85.221.42
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wr1-f42.google.com with SMTP id ffacd0b85a97d-37d3e8d923fso4627067f8f.0
        for <devicetree@vger.kernel.org>; Wed, 16 Oct 2024 08:45:05 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1729093504; x=1729698304; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=anU227wWD5p9c6NGfk2++dpWhZp0Cho/esdFJsOtL3w=;
        b=J865w4AsG0d0Fkcc+tkjjfj4CTuqlWKOkxzqpoVgl4tqcBqTETSLgdVcjVoMq44R7I
         pj3Hpo3/V59fjd88jiMjdoBo4f2QTvE1J8itkr1QkGTQg9P1y8d5LSHc6iFeyW12kY3m
         JXxZH9ewOTy0J+Uu55BqPIVI6nyKhXGymuHxd8DMpxYpQ6bDeB4OroiOna6tYL22n63h
         PTmEHQwHizdWUV6cq2II7XMjBWUxb5ETBcG/7WOkiZX/xBzsqI1r8n8KU6Dqt1LUu9iD
         Gy1TBQcxd6ezYp5C3GefO5mjVI55xtwbrFHTkV+I/ktFa0WS0AlBcvBqXFWW8+HVo+Yi
         USnQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1729093504; x=1729698304;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=anU227wWD5p9c6NGfk2++dpWhZp0Cho/esdFJsOtL3w=;
        b=VpT5W58gRo9S4NZ4LZnKFaM5DoB2iXbXOHD7nj6trisGrueqW3HRsHkSOaPjAPSR8k
         5UJs2Rud5XkXreV7AfmfwsJSGvRevnzYNmcYl06P9f40Lzt8DqESOsgTEgHzqGeTRSFK
         bBsKDI2gxVGINSY/lGmI0wH+GD8JQyHFh1xYaxjD4EsaokDQb0TCuChyz/KXf8C18B/1
         Wv5NiJF9tjc5VzA4RTJ84ehEUNeLSURk6EngdbyxmmD2tqWpQh83ZQ7ypbqm9Q3bAHAs
         PYaKQMLpMvo2w+U2cytuL2kLnH4yAt3OrDWTRCs8RPK1aZilpLXTvLW4XMnkblDDBspV
         5QOA==
X-Forwarded-Encrypted: i=1; AJvYcCU31Kj/QSNO6GmN5kGPSTkl0b73RjZ6m5f1GotlM3Q+R2j9fk3/V5DfebsFj/eDDIJlC5UPIDVCp6H2@vger.kernel.org
X-Gm-Message-State: AOJu0YwALfD8xkB9R4i48t2LCO1U0pcwSs+Fz7/mDp5xPz1/+ZGKG4M3
	vgcdsJK1JdqU9FN8HEf+0Lnqi+d0neNJLOFDliuJ41+mTqT8REzTzBxhoYadSDY=
X-Google-Smtp-Source: AGHT+IGRr+iJ+JXBjhKHnWyJ8btrX2CzaFEg+jEL8fHLi2mI3kdazj2sf5ZCHFXS0FJnqiDhJm6dag==
X-Received: by 2002:adf:ee44:0:b0:37d:52db:a0a1 with SMTP id ffacd0b85a97d-37d86bda4dfmr2927571f8f.30.1729093504072;
        Wed, 16 Oct 2024 08:45:04 -0700 (PDT)
Received: from linaro.org ([2a02:2454:ff21:ef80:a75b:8bbb:91be:de0])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-37d7fc44a84sm4623361f8f.114.2024.10.16.08.45.03
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 16 Oct 2024 08:45:03 -0700 (PDT)
Date: Wed, 16 Oct 2024 17:44:59 +0200
From: Stephan Gerhold <stephan.gerhold@linaro.org>
To: Johan Hovold <johan+linaro@kernel.org>,
	Aleksandrs Vinarskis <alex.vinarskis@gmail.com>
Cc: Bjorn Andersson <andersson@kernel.org>,
	Konrad Dybcio <konradybcio@kernel.org>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Abel Vesa <abel.vesa@linaro.org>, linux-arm-msm@vger.kernel.org,
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH 0/6] arm64: dts: qcom: x1e80100: fix nvme regulator boot
 glitch
Message-ID: <Zw_fe1tN_rdRR659@linaro.org>
References: <20241016145112.24785-1-johan+linaro@kernel.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20241016145112.24785-1-johan+linaro@kernel.org>

On Wed, Oct 16, 2024 at 04:51:06PM +0200, Johan Hovold wrote:
> The NVMe regulator has been left enabled by the boot firmware. Mark it
> as such to avoid disabling the regulator temporarily during boot.
> 
> Johan

These look good to me, thanks!

Can you or Aleksandrs send another one for the x1e80100-dell-xps13-9345
that was applied by Bjorn yesterday?

FWIW, for these patches:

Reviewed-by: Stephan Gerhold <stephan.gerhold@linaro.org>

> 
> 
> Johan Hovold (6):
>   arm64: dts: qcom: x1e78100-t14s: fix nvme regulator boot glitch
>   arm64: dts: qcom: x1e80100-crd: fix nvme regulator boot glitch
>   arm64: dts: qcom: x1e80100-vivobook-s15: fix nvme regulator boot
>     glitch
>   arm64: dts: qcom: x1e80100-yoga-slim7x: fix nvme regulator boot glitch
>   arm64: dts: qcom: x1e80100-microsoft-romulus: fix nvme regulator boot
>     glitch
>   arm64: dts: qcom: x1e80100-qcp: fix nvme regulator boot glitch
> 
>  arch/arm64/boot/dts/qcom/x1e78100-lenovo-thinkpad-t14s.dts | 2 ++
>  arch/arm64/boot/dts/qcom/x1e80100-asus-vivobook-s15.dts    | 2 ++
>  arch/arm64/boot/dts/qcom/x1e80100-crd.dts                  | 2 ++
>  arch/arm64/boot/dts/qcom/x1e80100-lenovo-yoga-slim7x.dts   | 2 ++
>  arch/arm64/boot/dts/qcom/x1e80100-microsoft-romulus.dtsi   | 2 ++
>  arch/arm64/boot/dts/qcom/x1e80100-qcp.dts                  | 2 ++
>  6 files changed, 12 insertions(+)
> 
> -- 
> 2.45.2
> 

