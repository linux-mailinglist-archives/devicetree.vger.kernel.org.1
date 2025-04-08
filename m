Return-Path: <devicetree+bounces-164295-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id EF261A7FC89
	for <lists+devicetree@lfdr.de>; Tue,  8 Apr 2025 12:44:02 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 138D03B7B9F
	for <lists+devicetree@lfdr.de>; Tue,  8 Apr 2025 10:37:56 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 803B8269808;
	Tue,  8 Apr 2025 10:36:56 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="QGbUdO+d"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f52.google.com (mail-wr1-f52.google.com [209.85.221.52])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 92C592690C4
	for <devicetree@vger.kernel.org>; Tue,  8 Apr 2025 10:36:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.52
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744108616; cv=none; b=USA992hekfnYFVLKcfFo55zKZpVRiaBzyiIKfagvIK5MrI8p0sjUfaRAf6XNnkF27cIN5S/7zFZh4rq6dzhpVKl84NhyrWy6h6tNLLHrwkaNdwayF1bbOw18EFZmd0j1ahctZ4JVvOIfSdgtqMWz6mr59RawaytpsnAHGHf/lPc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744108616; c=relaxed/simple;
	bh=wkOLFAUzhjnbM7Ikoz425nbv5U7OazSzqi4J4cwO0c4=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=iidBHau3upeA9Z26/2tbcioqIKixTiQTLnvWsyQBVo2y5m2nditu99ZmsomaBQkWZIcTYnBRW55fwmZ1RBlV0iRQNTKCooISDhhPTkIu+zkjV90K/RlbaMW9uUtlwAukh2092HaDGz6s36x780ANsPE42Ek9DfcQE09q3+RI7uA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=QGbUdO+d; arc=none smtp.client-ip=209.85.221.52
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wr1-f52.google.com with SMTP id ffacd0b85a97d-39ac9aea656so4592624f8f.3
        for <devicetree@vger.kernel.org>; Tue, 08 Apr 2025 03:36:54 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1744108613; x=1744713413; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=+9PU6RaqZLEW0CeiqDaSWQKAtYrOqL2T0FLR0/1tl5g=;
        b=QGbUdO+dSWRXM2e6nVSk+Mwme5UF3zAVge4E5ayQeAYptnv7sRzjgY8OTs5XT9Z14t
         SGmCUWYwmmorT5dCtxvvRM/qRoy6xoIjJa+avOGQsDgmkyko+H7AmuX+tBJuMC1mui2q
         81Ne+U+Qd2J2cpOzTKSag3HyEmWcG5okx2JCX9J1/igCl7kh26aZ/80vMb06p5OQr5v6
         qmqGjFpyfZJ9nj7RBdKxeordFJhqQHMNZ7s55pgmrwdOlpf0/Yhfjr/3wbQQDwHhP4Nc
         XyYQJoZFsOsgnS+uGdyiNuleURlz7A/xsZMmbbmvjjgbqByxvppIu6gpM8RMS7ta+62X
         eGqA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1744108613; x=1744713413;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=+9PU6RaqZLEW0CeiqDaSWQKAtYrOqL2T0FLR0/1tl5g=;
        b=ndoAQq4EwAUZF0ig19wqxb29EIFtv9FpbUx9WlX2E/FODizSuxL0zJDY6gmKy4RDlI
         IdPt6vpsAQpdWDjNM9hWrvxEu3PegGRzVn6kLFHdT0onp088xAsjn+Dovulg7VzdSbVN
         PHgM8UIlqVwZpyHJAH6lN1IkU6g64AEAaQ7aeYrkQjWoYJCz+ifhcenu2DYaiczpvesu
         Dkw3Ck0i/qkUD4Q5O4vgAgnMdgyKwb09gMpTuGMILuWkq7nUTUrpN6FMvNKLHrzTOchv
         TIC5e+BmMnj5TeAdonKgcsBfQ/wjFDfmgGJHGYqh/s0ElrjmsoEqFhzJRRvcRWVTJkWc
         OJpQ==
X-Forwarded-Encrypted: i=1; AJvYcCUk8XQsY2RmLvaNK4YySnau/5WE0I2PTXGtuQVylwKNJDrsOvsSvRXJLAtsFqBFis8b8Y9SvW6t1Bc1@vger.kernel.org
X-Gm-Message-State: AOJu0YztTjWWVMF/27AhB6LAgLGvMKuLLeqi/Zybl33I5nUZtUHUrhtG
	PO4QCzKx2saql1D+Gr99DCdj7xGzEViFrImnuCo3ZsbdsQBJCqDUMiMODtF6jfs=
X-Gm-Gg: ASbGncstDYUrl81xRencbdA8yuKa95j6i1xK6Yqyd5gkcvO14HZNNb+i0gwilMQsV9t
	u2eY7J5qisVAsQk02BKEdnaRdjO/FR19Jkq4sA26dy6StLfxGnbNYTtycryqVqF3G7DPCC1Wi1h
	SZk4HvLJspoWwm+cPZbQtEvpLwP83ke/BD4thlbatxju2OPwQ6A41WKiQjhNV1AlN2JoWtj34oO
	qfjRayH4Xxcrzy+WYo+ObG6gPAz/CzGKHtNPcmjHtohfrZI6YDTGaSQ7B4Q0sSDz/tJnWuzKZ9U
	Xwk83UQsNq4YYjA7ZW5lECngSp4C70tyzJx3tu2TbvlpH2uujQ==
X-Google-Smtp-Source: AGHT+IE5t903o03RamYyBBOUOtT0lEmSesMlodjULwqDkGqsFvnjjqyphRtizxEDeFR7TGxXwDEjLA==
X-Received: by 2002:a05:6000:1863:b0:38d:e6b6:508b with SMTP id ffacd0b85a97d-39d07ad4e86mr13874685f8f.9.1744108612851;
        Tue, 08 Apr 2025 03:36:52 -0700 (PDT)
Received: from localhost ([196.207.164.177])
        by smtp.gmail.com with UTF8SMTPSA id 5b1f17b1804b1-43ec3429f67sm163443095e9.7.2025.04.08.03.36.52
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 08 Apr 2025 03:36:52 -0700 (PDT)
Date: Tue, 8 Apr 2025 12:21:56 +0300
From: Dan Carpenter <dan.carpenter@linaro.org>
To: "Peng Fan (OSS)" <peng.fan@oss.nxp.com>
Cc: Sudeep Holla <sudeep.holla@arm.com>,
	Cristian Marussi <cristian.marussi@arm.com>,
	Shawn Guo <shawnguo@kernel.org>,
	Sascha Hauer <s.hauer@pengutronix.de>,
	Pengutronix Kernel Team <kernel@pengutronix.de>,
	Fabio Estevam <festevam@gmail.com>, Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>, linux-kernel@vger.kernel.org,
	arm-scmi@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
	imx@lists.linux.dev, devicetree@vger.kernel.org,
	Peng Fan <peng.fan@nxp.com>
Subject: Re: [PATCH v4 3/7] firmware: arm_scmi: imx: Add i.MX95 LMM protocol
Message-ID: <b85cd7c9-1747-4f8d-82e5-5bf734263566@stanley.mountain>
References: <20250408-imx-lmm-cpu-v4-0-4c5f4a456e49@nxp.com>
 <20250408-imx-lmm-cpu-v4-3-4c5f4a456e49@nxp.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20250408-imx-lmm-cpu-v4-3-4c5f4a456e49@nxp.com>

On Tue, Apr 08, 2025 at 04:44:27PM +0800, Peng Fan (OSS) wrote:
> From: Peng Fan <peng.fan@nxp.com>
> 
> Add Logical Machine Management(LMM) protocol which is intended for boot,
> shutdown, and reset of other logical machines (LM). It is usually used to
> allow one LM to manager another used as an offload or accelerator engine.
> 
> Reviewed-by: Cristian Marussi <cristian.marussi@arm.com>
> Signed-off-by: Peng Fan <peng.fan@nxp.com>
> ---
>  drivers/firmware/arm_scmi/vendors/imx/Kconfig      |  11 +
>  drivers/firmware/arm_scmi/vendors/imx/Makefile     |   1 +
>  drivers/firmware/arm_scmi/vendors/imx/imx-sm-lmm.c | 262 +++++++++++++++++++++
>  include/linux/scmi_imx_protocol.h                  |  32 +++
>  4 files changed, 306 insertions(+)
> 
> diff --git a/drivers/firmware/arm_scmi/vendors/imx/Kconfig b/drivers/firmware/arm_scmi/vendors/imx/Kconfig
> index a01bf5e47301d2f93c9bfc7eebc77e083ea4ed75..1a936fc87d2350e2a21bccd45dfbeebfa3b90286 100644
> --- a/drivers/firmware/arm_scmi/vendors/imx/Kconfig
> +++ b/drivers/firmware/arm_scmi/vendors/imx/Kconfig
> @@ -12,6 +12,17 @@ config IMX_SCMI_BBM_EXT
>  	  To compile this driver as a module, choose M here: the
>  	  module will be called imx-sm-bbm.
>  
> +config IMX_SCMI_LMM_EXT
> +	tristate "i.MX SCMI LMM EXTENSION"
> +	depends on ARM_SCMI_PROTOCOL || (COMPILE_TEST && OF)
> +	default y if ARCH_MXC
> +	help
> +	  This enables i.MX System Logical Machine Protocol to
> +	  manage Logical Machines boot, shutdown and etc.
> +
> +	  To compile this driver as a module, choose M here: the
> +	  module will be called imx-sm-lmm.
> +

Remind me again what happens if you have both the default and the
extension modules enabled?

regards,
dan carpenter


