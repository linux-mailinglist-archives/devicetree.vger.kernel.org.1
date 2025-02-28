Return-Path: <devicetree+bounces-152430-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 36D9FA4913E
	for <lists+devicetree@lfdr.de>; Fri, 28 Feb 2025 06:59:28 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 1BCA43B6F1C
	for <lists+devicetree@lfdr.de>; Fri, 28 Feb 2025 05:59:17 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 7496F1C1F05;
	Fri, 28 Feb 2025 05:59:24 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="bv81uUQi"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lj1-f171.google.com (mail-lj1-f171.google.com [209.85.208.171])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9B403276D08
	for <devicetree@vger.kernel.org>; Fri, 28 Feb 2025 05:59:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.171
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1740722364; cv=none; b=lY/VST916L93tPIapHw/g6dQxX6ZFBhOnmO1UsQumSKyrhEJ7NUKzef7khNxrlbVLV5Wt/gWaxMoMYJ7mSrcjNLxodLCvirL2gFZiK+zCCEzRq9paVmNMYK2bPj/alr0urMVNP9u3qvCEPEvGoDG0Icub7f9jy+T07I2EDq7Oys=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1740722364; c=relaxed/simple;
	bh=btPvsDquHHB+QW57XVbJyyust/qFlxWOqT8A+x/aOCQ=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=gsoJnKZpHJURrxNetR45QNw9otk3aQ92aeJ+Zbd1mnHWs0531NTIAgQ3rqOtUmboc4SyUBzghNEp26Tu5CHfDH0egDqSxt4sTDWiFmM0lbF8hxSKqiSkkZXq10HnXXiBFV9VaMIMmRbotDXHV0s5+yj3Ni9xoW+kjjxzqTtWDIQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=bv81uUQi; arc=none smtp.client-ip=209.85.208.171
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lj1-f171.google.com with SMTP id 38308e7fff4ca-30b936ffc51so3643361fa.2
        for <devicetree@vger.kernel.org>; Thu, 27 Feb 2025 21:59:22 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1740722361; x=1741327161; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=PriYakVb+c1J8nOvCrogaGJFCt/pnunKJ29UwQZ0vI4=;
        b=bv81uUQisnQkP4+Lf4pua3ph3YVU8icPsGQlZZsglZ9i03bobJcQ3+NOZmDJDnhLzs
         wTcpL0JCz8c/zfy5Sk6jSFIw86nIeIsKIwprlvOC55KX3ZulhI882LkoypllX4mwGdHy
         LDKrCrp4B77G8ymNrz63/X0ZlM1MaeeYs3eS1XyRhiMQ49W53ImwPbRourySo/S6Sokc
         fC5cBHmCHbR7RDbJ01ngboUSdXhUDTy20K8kojXA812wO3J3haGqZV37Fb6wl80f2Y43
         i+FSkbiE13lCg8CG+q6NISi3luR/gQ5aSGoJDgPuSljC7qkLRpaYkmWFANXiX+DMRRQu
         tn2w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1740722361; x=1741327161;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=PriYakVb+c1J8nOvCrogaGJFCt/pnunKJ29UwQZ0vI4=;
        b=MnA8HC1ETNQLDVY1+EgIjGfczHrhyfV/m+wh8IsF9AYUTqPHjh029/v7hhzNoscgaX
         ER69qn9Une40SBApNHAXD2sUVCCfuwChU7b69RFFEVgk0MfdmjrI6lHxkqj4BdNGGaR+
         dJbAiul5FYN9Q7Ozx98aG6bS4eC3Z6KKJJ/7Hd0jCWSpXlisYG5HVJAJVznQZpIk+fss
         jr98WtkMGwUObysjZQZsQgYA1LJh5+gNy/boAXcfaYq5YpVGbC+bZgHqZzuPFkRG1PqS
         xONinM5vM++hmENaeL55PjcwGutIxve3UgowLLLveD1uphLAC1xn/8++fnRH3p99aQ23
         iqTA==
X-Forwarded-Encrypted: i=1; AJvYcCVmqa6FJAnjs3OTW3WMV4feXf5O1wMv/xV2qegc51DCgYdyXvg0W4gh/MropRgGgio7zogaesIfhgG4@vger.kernel.org
X-Gm-Message-State: AOJu0YzPEZqr/2ZOX5uihC4twoQPzLLimXfusKeoGf1JW68rZb5Yix/e
	MzOmCrYs3TN6q/p9LREWDa3tCzH8jzCabMPmrUDOAUJigykNsKAqtL6pspRo2bo=
X-Gm-Gg: ASbGnctk0sX/EmbgpI3YCRWvZLE/OkcTDNsvJfs0aGT7TcjoZQMEK5n3bQ0xTbCFDtN
	Nj65FBa4rX5LTSoTVITfotuue3hhQab1IF5Wi5K2YapBLOKfqUzoMW42mD1FOBr2UXvZMbdnf3l
	5fJvWvDVkxyzlHCDuEJPZ+wnsakd+2T+VnpWlis3L7qZnMFEDvGe9INP3FK7bm15BPcA1DEPTcK
	MhO/mIagzSzddnqXq0bV37U95DJTBvnao/3HWKLeAVPX4Pj1KVmz7JGvjix/mSsBF8nU2GwtE2D
	40rQfIJJkPAV6ZFZ4rvoZjTOBIZhpdrdu/Y8bYRHYoeAVf0z/iliU7Jscq9bBXUj7ki1too1eLp
	DJfeX+Q==
X-Google-Smtp-Source: AGHT+IG9PoCaCD9US/sZ8xzPdrqNXv1OAhd20a6O6eJB66JwvP1sBoQa9RCne5WE85it4rhFDzdVDg==
X-Received: by 2002:a05:651c:400f:b0:30b:906f:47e8 with SMTP id 38308e7fff4ca-30b9331a6e6mr4657411fa.34.1740722360736;
        Thu, 27 Feb 2025 21:59:20 -0800 (PST)
Received: from eriador.lumag.spb.ru (2001-14ba-a0c3-3a00--7a1.rev.dnainternet.fi. [2001:14ba:a0c3:3a00::7a1])
        by smtp.gmail.com with ESMTPSA id 38308e7fff4ca-30b867ca299sm3909921fa.61.2025.02.27.21.59.18
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 27 Feb 2025 21:59:19 -0800 (PST)
Date: Fri, 28 Feb 2025 07:59:17 +0200
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
To: George Moussalem <george.moussalem@outlook.com>
Cc: linux-arm-msm@vger.kernel.org, linux-pm@vger.kernel.org, 
	devicetree@vger.kernel.org, daniel.lezcano@linaro.org, rafael@kernel.org, amitk@kernel.org, 
	thara.gopinath@gmail.com, robh@kernel.org, krzk+dt@kernel.org, quic_srichara@quicinc.com
Subject: Re: [PATCH v9 4/6] thermal: qcom: tsens: add support for tsens v1
 without RPM
Message-ID: <f7kgyr4oaftjofo67kl5ihn4yzjf5nrzi6n6cc742sae23ujqd@q5klfmyd22lx>
References: <20250228051521.138214-1-george.moussalem@outlook.com>
 <DS7PR19MB8883C5D7974C7735E23923769DCC2@DS7PR19MB8883.namprd19.prod.outlook.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <DS7PR19MB8883C5D7974C7735E23923769DCC2@DS7PR19MB8883.namprd19.prod.outlook.com>

On Fri, Feb 28, 2025 at 09:11:37AM +0400, George Moussalem wrote:
> Adding generic support for SoCs with tsens v1.0 IP with no RPM.
> Due to lack of RPM, tsens has to be reset and enabled in the driver
> init. SoCs can have support for more sensors than those which will
> actually be enabled. As such, init will only enable those explicitly
> added to the hw_ids array.
> 
> Co-developed-by: Sricharan Ramabadhran <quic_srichara@quicinc.com>
> Signed-off-by: Sricharan Ramabadhran <quic_srichara@quicinc.com>
> Signed-off-by: George Moussalem <george.moussalem@outlook.com>
> ---
>  drivers/thermal/qcom/tsens-v1.c | 48 +++++++++++++++++++++++++++++++++
>  drivers/thermal/qcom/tsens.c    | 14 +++++++---
>  drivers/thermal/qcom/tsens.h    |  1 +
>  3 files changed, 59 insertions(+), 4 deletions(-)
> 

Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>

-- 
With best wishes
Dmitry

