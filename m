Return-Path: <devicetree+bounces-76494-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 97D0790AA8C
	for <lists+devicetree@lfdr.de>; Mon, 17 Jun 2024 12:02:20 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 3CBD51F23394
	for <lists+devicetree@lfdr.de>; Mon, 17 Jun 2024 10:02:20 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id EC43919047F;
	Mon, 17 Jun 2024 10:02:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="nOdXaef5"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lj1-f174.google.com (mail-lj1-f174.google.com [209.85.208.174])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5BFA9188CD0
	for <devicetree@vger.kernel.org>; Mon, 17 Jun 2024 10:02:15 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.174
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1718618536; cv=none; b=QutmpnLbfBF6B2UvyCsrEd/drQkvBghwy/jJR9soaVSmYxED6BaJ4eFDQ4Nhld2n1Q9ck/O7DCOA24BVp7iUR5xm75KEC72yDyw0SaaFPE1cEgrgovfOujWZhH5CjOdl6+WRoioRFrFpEQiaRCY47cAWiGdI3+XD8Tk20naH0zI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1718618536; c=relaxed/simple;
	bh=qtA4vdLpStckZ4K+HJdtG+Yn+DDVup8OpUIHT1OfTTA=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=EE/H59TvEmxM1+xEn+nZRKmMtwFwM6QqISEITEgvH1Nrlk4pERVmzqq8niO9s47U6S2/SPiXJNzFtVulhdtYNrbKRjCg/WdnmUK2UIKUe3p7QIj/Iduq340jXMUNeHMTIquzXdVq/6E/WDkHHpe8fkuXcQTLPFaBqEGxI7SPhYM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=nOdXaef5; arc=none smtp.client-ip=209.85.208.174
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lj1-f174.google.com with SMTP id 38308e7fff4ca-2ec1ac1aed2so28218521fa.3
        for <devicetree@vger.kernel.org>; Mon, 17 Jun 2024 03:02:15 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1718618533; x=1719223333; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=Ej4HKaTXNbtrLZvPteJwUzGUeQdd3JpTOE58bTuRP4g=;
        b=nOdXaef53XeEmVn3q8HDoZ9MFOhX4JF9mJ3/7uU/HWs/gkNi1Ron/Fvz/1kJd3PhTA
         4ZC93SVl93LuXk5eW3978yTgo5UBLAk7+J6453tR5CkiSqkIOWSeeKEp3TA4Do6+9nvf
         ZPLdzsto2icMJ0/IazAB+R8n9zLnQVHjTAgKyCvJSBjeXqU9RZDHLG45qTUhSjxcZ2/f
         RXfj7IAPZobrnFR1F9Xo/KEiM742SUofrv3BEh7Vm6GdQHMHQ8z/apWD/puasXPncybJ
         TXYxb24V8SxnKbfu2mVMcWKRC4a+8Q/jNHJWIZSFCuvMd+KY+olsrs3pUBl2f/mHIs9u
         A1sw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1718618533; x=1719223333;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=Ej4HKaTXNbtrLZvPteJwUzGUeQdd3JpTOE58bTuRP4g=;
        b=BF6gXsLx/XC0P9pm8pWDgf4SoZp6ovStOiSxS32pC35RPwR5kbq7mjupeZbxIZ17qV
         DQDDO8zihWDQ2YRZfd3OLAIjdaP5CEVgQCS7WRPjADHJ/6/GGUq2NaWv7pvbVQXVFUhj
         6ZqzbgPQ41beiZrBszL7H6flMhqqHRKDSJVoIURnuW3Qawg18Wf60GX3c1j4jhFr8rX3
         QE8wSYFsovnvC557toQL/ZgdjnxsBydxcCJir8wkdKYRo+Qz5FMyeA/TEcxR8s3rtKZC
         RLGURwOosJhfxgmt4m7eHoEmQY32UQeppLXG8wXAQgQDcRJ1SB0LkGSFSoS/uUgiz035
         WegQ==
X-Forwarded-Encrypted: i=1; AJvYcCWyqJ3EjfO215IX5fLXbzE5Y9cPtRseJf1lSmCak/9Mf9Qfj07cB0i2eBKmoN1Vr55uViLYnj5FQjwNDbiofysL+7xBm70Z7G1SJg==
X-Gm-Message-State: AOJu0Yx+QAiMyY8y6RUM4trLdYAnlxXwypWNZhrKQkeqo0ulEV9oW/GX
	METXV6CWxPCv/GGhpjpM+Y2lYKvKtH7ir9RUYSOaAQ0Y6g1gjaqmPxrvnv9/2UA=
X-Google-Smtp-Source: AGHT+IH7zs1ElNWSLauUoxe6oUcxbMknt8N4yLuI0xWzD1LWnvcGVtunFezu9q6l/fZs7aoYPEqeug==
X-Received: by 2002:a2e:2e0f:0:b0:2eb:e840:4a1b with SMTP id 38308e7fff4ca-2ec0e5b5e75mr59433771fa.7.1718618533565;
        Mon, 17 Jun 2024 03:02:13 -0700 (PDT)
Received: from eriador.lumag.spb.ru (dzdbxzyyyyyyyyyyybrhy-3.rev.dnainternet.fi. [2001:14ba:a0c3:3a00::b8c])
        by smtp.gmail.com with ESMTPSA id 38308e7fff4ca-2ec05c16c91sm13197401fa.63.2024.06.17.03.02.12
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 17 Jun 2024 03:02:13 -0700 (PDT)
Date: Mon, 17 Jun 2024 13:02:11 +0300
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
To: Naina Mehta <quic_nainmeht@quicinc.com>
Cc: andersson@kernel.org, mathieu.poirier@linaro.org, robh@kernel.org, 
	krzk+dt@kernel.org, conor+dt@kernel.org, konrad.dybcio@linaro.org, 
	manivannan.sadhasivam@linaro.org, linux-arm-msm@vger.kernel.org, linux-remoteproc@vger.kernel.org, 
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH v2 4/5] arm64: dts: qcom: sdx75: Add remoteproc node
Message-ID: <mkthvgckbcttjh5d6ikv2tgmxyix6au4vcqobrcy7ukf3rtyn2@yyg2tvfkoawo>
References: <20240617093428.3616194-1-quic_nainmeht@quicinc.com>
 <20240617093428.3616194-5-quic_nainmeht@quicinc.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20240617093428.3616194-5-quic_nainmeht@quicinc.com>

On Mon, Jun 17, 2024 at 03:04:27PM GMT, Naina Mehta wrote:
> Add MPSS remoteproc node for SDX75 SoC.
> 
> Signed-off-by: Naina Mehta <quic_nainmeht@quicinc.com>
> ---
>  arch/arm64/boot/dts/qcom/sdx75.dtsi | 47 +++++++++++++++++++++++++++++
>  1 file changed, 47 insertions(+)
> 


Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
> 

-- 
With best wishes
Dmitry

