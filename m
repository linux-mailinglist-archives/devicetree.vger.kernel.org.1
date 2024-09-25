Return-Path: <devicetree+bounces-105261-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id D7ECF986089
	for <lists+devicetree@lfdr.de>; Wed, 25 Sep 2024 16:26:07 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 9F11728B79C
	for <lists+devicetree@lfdr.de>; Wed, 25 Sep 2024 14:26:06 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 516FC1AC437;
	Wed, 25 Sep 2024 13:08:55 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="QGr41tm3"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-f44.google.com (mail-lf1-f44.google.com [209.85.167.44])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A316E1AC432
	for <devicetree@vger.kernel.org>; Wed, 25 Sep 2024 13:08:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.44
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1727269735; cv=none; b=s5S+4Kdo3wa/JbDR1pSiv2cE9xsx83QS/xLK7hcGrZHcSE2o+EGFXFxAl9mhObUHjS1DxDGBT2BaA1NRkCRtHkz1f6sL+pasgP9R5d/rxMnkI3DwEJn90oQlAfxqAat++gDUawShxgre+O6FwetIibMKzp7+Q2z/hJx9XrupUrY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1727269735; c=relaxed/simple;
	bh=WR5AnzJF93Qx9LVa6e4GL1bUJ/gZyTq7uc9OMyhdOFQ=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=EPWqTMoSRbKsbqIqJrUTD5VmaX5g7oc4ZdEPF0ILq0ZD8j+1T+ophSbRbOzWGa/CLuTudFo8cFR3nJSNJ4VvRzNhmm2sHZrM3Nslt+qXnr0KxmPDXrJI0BV1vbDYeej++A9UX0KqFF9rGfK2zgsU57ROlR79CY8j0Hu4oNs/jhI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=QGr41tm3; arc=none smtp.client-ip=209.85.167.44
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lf1-f44.google.com with SMTP id 2adb3069b0e04-5365c512b00so1525592e87.3
        for <devicetree@vger.kernel.org>; Wed, 25 Sep 2024 06:08:53 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1727269732; x=1727874532; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=GfIe+0A9/iwZ9+ASBT3gHE6aur04dE6S65bt24Jbj2A=;
        b=QGr41tm36dzqyVeTbv90aKDJ+Vv+51ygVKoY5PPZNEKFrEelKv2w9e67Bu7Z83diPI
         1B9xYoJaHzSSmnfDr6nGMgQadeog+YKlS2rXeV+OpCkpAwTUP6eZJPOrIzi/ZC4bH5lh
         q3uBzQ8eMBLLd+ohjNIqTrpRP3HYyZ2xCagTQrfmmnOfE7KmVRInuycVHL/cdYrJe4Ov
         eQkx+lcZF41ZJBpR3QBLUIRE9xcVYzZ52MfkM4BzMHcqFQTPFLgSxpC8y7jZ6kGfksu9
         JhEe3r7yKYNTxEoQTKEaU4SF+iPNNZQZU2RfXuy94gVbQNUka2C9utTuCfImtWPDs0JK
         97Og==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1727269732; x=1727874532;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=GfIe+0A9/iwZ9+ASBT3gHE6aur04dE6S65bt24Jbj2A=;
        b=Y/YgJLMFNN7w+O2aV9Tqe5VJs6uAnlyCtp7lO8dAywX3bj0I2bEGTaCPMeMV2zQJSG
         b6lfc0zDk/bbErtfK3ve59koaGX1rqR4USdAkLVmCx77jOb6RGz5txDOOc8xsCkDu/MW
         JQ0+Ej1b2Sf1qsigcFnSiCLXFw94xtawCUGXTSHegauypai9CT7FBvj1APtWi6wp+hwW
         t1HtuI+XZ8QQKXIcpnLkfP5zd6hqn0XwQgHZ3U9LuzvA1FlQdkVDE28aYjdeKprDqI6A
         iqP13R6OBgtlLdqxhX/n2j6E7NmIApdfGsl1FVY3UAE3CfP0qNiercYCoDjyhhOmdZnL
         0j9g==
X-Forwarded-Encrypted: i=1; AJvYcCUFRqcMWFlZFboaTe1uZTtn5JDnqd3BFA7jCwyHRHdbBi6Yt0OkrmCLztL/8Hk8/XwDfpqpT4LJMdJ2@vger.kernel.org
X-Gm-Message-State: AOJu0Yyx+D58G8FY+5AqBGZ1s21kbsWr5VzSqXaIabhNVAkn3quFwCeM
	XILR8tpy5jxIU0SMZ7qxFSO5zXUfDFshzKoqrdX611h+GcCIin4Hu/jH4UO5GGU=
X-Google-Smtp-Source: AGHT+IGDlc38qNmQApA7G1CZmAUwKPhj6Dzr+UVWgNKV7XNIVs+fN9df6yglg61dDNAhSR3WZLlEBw==
X-Received: by 2002:a05:6512:1313:b0:536:568f:c5ed with SMTP id 2adb3069b0e04-53873455efemr1670045e87.1.1727269731620;
        Wed, 25 Sep 2024 06:08:51 -0700 (PDT)
Received: from eriador.lumag.spb.ru (2001-14ba-a0c3-3a00--b8c.rev.dnainternet.fi. [2001:14ba:a0c3:3a00::b8c])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-537a8640abasm519642e87.177.2024.09.25.06.08.50
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 25 Sep 2024 06:08:50 -0700 (PDT)
Date: Wed, 25 Sep 2024 16:08:48 +0300
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
To: Balaji Pothunoori <quic_bpothuno@quicinc.com>
Cc: andersson@kernel.org, konradybcio@kernel.org, robh@kernel.org, 
	krzk+dt@kernel.org, conor+dt@kernel.org, linux-arm-msm@vger.kernel.org, 
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH] arm64: dts: qcom: qcs6490-rb3gen2: Enable wifi for
 qcs6490-rb3gen2 boards
Message-ID: <v2bgxmp6khrrxnpzgwcow6dymwzdil7yfjt7xwnq5xmgda4gor@vt3cj4jgwylu>
References: <20240925090650.26314-1-quic_bpothuno@quicinc.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20240925090650.26314-1-quic_bpothuno@quicinc.com>

On Wed, Sep 25, 2024 at 02:36:50PM GMT, Balaji Pothunoori wrote:
> Enable the 'wifi' node for qcs6490-rb3gen2 boards.
> 
> Signed-off-by: Balaji Pothunoori <quic_bpothuno@quicinc.com>
> ---
>  arch/arm64/boot/dts/qcom/qcs6490-rb3gen2.dts | 1 +
>  1 file changed, 1 insertion(+)


Please take a look at the mailing list ([1]) before posting.

[1] https://lore.kernel.org/linux-arm-msm/20240907-rb3g2-fixes-v1-4-eb9da98e9f80@linaro.org/

> 
> diff --git a/arch/arm64/boot/dts/qcom/qcs6490-rb3gen2.dts b/arch/arm64/boot/dts/qcom/qcs6490-rb3gen2.dts
> index 0d45662b8028..21bcfcdb5e46 100644
> --- a/arch/arm64/boot/dts/qcom/qcs6490-rb3gen2.dts
> +++ b/arch/arm64/boot/dts/qcom/qcs6490-rb3gen2.dts
> @@ -792,6 +792,7 @@
>  
>  &wifi {
>  	memory-region = <&wlan_fw_mem>;
> +	status = "okay";
>  };
>  
>  /* PINCTRL - ADDITIONS TO NODES IN PARENT DEVICE TREE FILES */
> -- 
> 2.17.1
> 

-- 
With best wishes
Dmitry

