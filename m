Return-Path: <devicetree+bounces-98256-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 2B72B96583C
	for <lists+devicetree@lfdr.de>; Fri, 30 Aug 2024 09:18:12 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 5DC081C223FB
	for <lists+devicetree@lfdr.de>; Fri, 30 Aug 2024 07:18:11 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B94ED15855F;
	Fri, 30 Aug 2024 07:17:57 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="NrE5amNS"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-f45.google.com (mail-lf1-f45.google.com [209.85.167.45])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1FBFF155C80
	for <devicetree@vger.kernel.org>; Fri, 30 Aug 2024 07:17:55 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.45
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1725002277; cv=none; b=pUmRXSlYLqH7Vun+axn5nzbXpcdDIb//4Lgtbjf9dZDWtiBZjzt3qn6tOglGVdzPKnhvWbByIej8QRMoBzObT6alE2kH2lxiQ9Y9/wr0VUzFqpIRKYxwu/5TK+kFPbu14cIo9+GH9MYsUnFh7/dM6UZbKF14IVomSU+rYLVZE1U=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1725002277; c=relaxed/simple;
	bh=Hj7O3fn7LsnB+ScXKkFHRAn9BFQguNH0VHtWrri72AA=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=Bs5JAI8BzV1xBhW43l1OokdmyNCxpaDUXp7hAwLMhnmVlGhSI7J9s/aW0JEWd9pBBUdskPwyzJ70I1n33qTqZsTXYJLkj3tFJjQvizELlnjaFI/twuRpSDKIsX0T7ieb3VBZCHbACZVRU0yAjE/OR4VMSnXHKxVK6WFXWScsvy8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=NrE5amNS; arc=none smtp.client-ip=209.85.167.45
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lf1-f45.google.com with SMTP id 2adb3069b0e04-5353d0b7463so2715043e87.3
        for <devicetree@vger.kernel.org>; Fri, 30 Aug 2024 00:17:55 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1725002274; x=1725607074; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=dUg0V5H1t924JBTmuGBSBlhyIluvyw9yjkWinmsdOTU=;
        b=NrE5amNSjjLk1aCUL+ziEkL1316lK7CqRftOCcGRRRRFrXA7HLtg4TuNEMCsveo9Np
         tJyWo5evk+grLP/L3IUayt05kY3saByhfBhy6/tTO6Ady7DtYuR/XHFdOcX+RTpMyEhf
         qyYRXq8TXoaiZxgFc41TB+ZsfMC1GKul+M/91nejXA+bfa4T0uQM0PrNGBrB+fly7h/E
         n/aGtjC6tkOFK6jC05WGtu6WiT8fO/hiWNPKv47y1Ck5/OXH0kLBCEApSb2TI2vuEjSj
         dAGYyC6YUfu5VFusl6H2doD29wNG/fQh0zOvPnmqrztMItMiI2yFXy0s2N+XfFhVMkWp
         zHig==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1725002274; x=1725607074;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=dUg0V5H1t924JBTmuGBSBlhyIluvyw9yjkWinmsdOTU=;
        b=XnOsUB1ZS31rf56X9XkCBJ1URTvNN+q87GHwecw2XBGzlJ8uPkBHZ2qdBDcNOrzHKp
         Pjxn744V4LuZN2UQMdkqFty4oRwjLpQgeDh+qJuR0aunq3hQxtwogc6WXZX6ruEQcMiN
         jsH/u5MZ98173sD5e9uuRzsQlSHvgvWghGA0mcGRxnwdEX5yoo/u14ywFhOt/YOQQVjc
         xsDqlHUp+5qhUTWwm3XeJa/ApNeHnK3oM0ZNC724ILQgtuBZV9oyDzotgqMnq41BSLOZ
         1KjXsREKMJZybAw9vBC91tA3Y/9TXub6aaogT2XuJJGF+Y7SZDIu6H/E79DCvfazl7mX
         r9Ow==
X-Forwarded-Encrypted: i=1; AJvYcCWyprghJVuuzV9VxOTY5xvSoW5DL4nqWl4KPQqOi5KmAHq0Sg2rw5EScZJy2XS/XoHZyW+NW5vRwPF1@vger.kernel.org
X-Gm-Message-State: AOJu0YyHViACPW3aSkmqW37SvwVqPgQOnzthp3124+QuCyEW8VhMV/xB
	NG++bUPCtx2YVBje0D1k5LUX34bge5U+LrJwne0Gt8U5f8w9mGwif+vRsm6cWns=
X-Google-Smtp-Source: AGHT+IHLpyKzhGXa8aflreXMGMxxXWhUvSYwRpfddmegIAVSkC2C6GCg1+q+ITO/U8ejaqpmrVXchw==
X-Received: by 2002:a05:6512:238d:b0:52c:cd77:fe03 with SMTP id 2adb3069b0e04-53546b32f72mr980860e87.14.1725002273778;
        Fri, 30 Aug 2024 00:17:53 -0700 (PDT)
Received: from eriador.lumag.spb.ru (2001-14ba-a0c3-3a00--7a1.rev.dnainternet.fi. [2001:14ba:a0c3:3a00::7a1])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-535407ac51esm454470e87.80.2024.08.30.00.17.53
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 30 Aug 2024 00:17:53 -0700 (PDT)
Date: Fri, 30 Aug 2024 10:17:51 +0300
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
To: Sachin Gupta <quic_sachgupt@quicinc.com>
Cc: Bjorn Andersson <andersson@kernel.org>, 
	Konrad Dybcio <konrad.dybcio@linaro.org>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
	quic_nitirawa@quicinc.com, quic_bhaskarv@quicinc.com, quic_narepall@quicinc.com, 
	quic_rampraka@quicinc.com, quic_sartgarg@quicinc.com, quic_mapa@quicinc.com, 
	quic_cang@quicinc.com, quic_nguyenb@quicinc.com
Subject: Re: [PATCH V3] arm64: dts: qcom: Add SD Card node for qcm6490-idp
Message-ID: <hlknpxukiqitcyfx5lyxjv6wsnpmyvatrxkgsif66sqruv2c6m@zm4tp7ouoidi>
References: <20240829121225.14184-1-quic_sachgupt@quicinc.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20240829121225.14184-1-quic_sachgupt@quicinc.com>

On Thu, Aug 29, 2024 at 05:42:25PM GMT, Sachin Gupta wrote:
> Add SD Card node for Qualcomm qcm6490-idp Board.
> 
> Signed-off-by: Sachin Gupta <quic_sachgupt@quicinc.com>
> ---
> Changes from v2:
>  - Corrected patch version.

In future: no need to resend for such small issues.

> 
> Changes from v1:
>  - Define sd_cd node. (Thanks Dmitry)
> ---
>  arch/arm64/boot/dts/qcom/qcm6490-idp.dts | 33 ++++++++++++++++++++++++
>  1 file changed, 33 insertions(+)
> 

Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>

-- 
With best wishes
Dmitry

