Return-Path: <devicetree+bounces-79390-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 1E7269151D2
	for <lists+devicetree@lfdr.de>; Mon, 24 Jun 2024 17:16:57 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id CD52228795A
	for <lists+devicetree@lfdr.de>; Mon, 24 Jun 2024 15:16:55 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E36C419D8AB;
	Mon, 24 Jun 2024 15:15:27 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="D5HhcE4r"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-f41.google.com (mail-lf1-f41.google.com [209.85.167.41])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2179619DF4A
	for <devicetree@vger.kernel.org>; Mon, 24 Jun 2024 15:15:25 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.41
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1719242127; cv=none; b=riWqpHQ9KfYoOWFTpPOVuYZVeq4DrzaPH+p4NRXmVIlbvHVUJySLEermw+9L3pWQKxUsJS+oEclp4Dfg7U6vwVOAZYH3EcwvmNUZ6PGMYObDyVeaJ9xDE1mu8QwvhADsgPttTcWpOa/gzlxzID6sWRrEGEuNw1LFHIZGYAJXJOc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1719242127; c=relaxed/simple;
	bh=GAsy1hrmvNMsy+al1UKDpEJrsqmugZd4+qdldQYyXSA=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=bVCj6kDWYLOlv907RLWpUY25EZO305Fst5fMLcX1giIkS6QgSu1XCi2WbpXZU9YQ9omIVODYcxX90Ctrj8Dyye6ggAEgFNgdrGhazFUV8GqZPI6b7F8CNl48cwk1q3Tf2HxTMqAnnrSANNdN5EKDKGchs6cE23BSzdB6JsXZSko=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=D5HhcE4r; arc=none smtp.client-ip=209.85.167.41
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lf1-f41.google.com with SMTP id 2adb3069b0e04-52cdfb69724so2073582e87.1
        for <devicetree@vger.kernel.org>; Mon, 24 Jun 2024 08:15:25 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1719242124; x=1719846924; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=9gDB4H9hEb1ddKk08sFFh7SUVmxRRs8hMx/zYwxqCrw=;
        b=D5HhcE4rUbkgNTrPuWdRxMLlER6URmvc3dLoO6U6qqBUQwnNhdG7kSwtyAt/NQhF1C
         QExawB1ot4Y2idWTFDFCKFGRdFZuJgiuIaE9ztLe4ypsdUIjltLvofV3oCz0uCoacJLF
         ml9Tp0ex1SJJtM7P+KA0N+Kqe7N1OJkwo0WzqDDrUz+0ewnxMvn40QnIAzK1Kqa3+aJL
         M2Ki/dSRqgfgf/0qlhga0fPGrnQCHs1f2ec/omb3UaH1VXN3/Z34uVVvznJAdT3XZ5MR
         wvUGILo5/ZhJhPT8P0eK2jYrwozzp9KjKg7U4GcY/8FFN2t8Hn04QRr2ONMH64VitNtj
         HwsQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1719242124; x=1719846924;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=9gDB4H9hEb1ddKk08sFFh7SUVmxRRs8hMx/zYwxqCrw=;
        b=LFuxxGcGJJ5JSjQ6mHqABu20vzhcQXVRDzoVJAxWhLW5/i5CbDsGAtbLokAG+Qw8GK
         UmdHGJQ4Z4yAQdCoS+qTp93VcFhlZh7RApXZb/uhPF+cTaGzmeiY/Oc30RjkwVIP3/1S
         xTJihOudOYTxWeL/Aj+qGZNas7bzpjxiXOmsPP/hlo30zlLECZQMAv0yXCDZCVsYofQz
         3DC/xv70hBgjnPJTV62xKQjymugi5hcAddPpeBrqDumdRH+uArAWM4XMIA2UMFABktS1
         FeOvEXhmqYfgZhH8xhNbVRKQIefPqDtDAo1AhJg5xDg19SArmBHUEpS/U9COGSKRuYLh
         2aVA==
X-Forwarded-Encrypted: i=1; AJvYcCVp7UyxNq1cgmD9foH9Jt0fQcojBlCHkKJ3sMFrozDMew5VHIo5VGkwLQ4VWc2nZSma4SITTYv4VmOZVELJqIWC1lfM+7iB7QokwA==
X-Gm-Message-State: AOJu0YxXuKWqqoosaP23tN2MsGi8EfyWxW+0JMCWyIUHbvdNNXkpffog
	PnZFbzKdolz930uEr+VnIwdHHgauR8lWmtFZQ/yxvf/lfEbfTv6CgERr7VIzKzU=
X-Google-Smtp-Source: AGHT+IGewbbtNYBe9HGO4cnqDGWmxOyzFNvsNZLeojJsAjYmh08AcYDCbzTBurLxo6pTj/6Sf3tmPg==
X-Received: by 2002:a05:6512:55c:b0:52c:d9c6:f934 with SMTP id 2adb3069b0e04-52ce18356e5mr2814162e87.18.1719242124247;
        Mon, 24 Jun 2024 08:15:24 -0700 (PDT)
Received: from eriador.lumag.spb.ru (dzdbxzyyyyyyyyyyybrhy-3.rev.dnainternet.fi. [2001:14ba:a0c3:3a00::b8c])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-52cd63b46ecsm1004471e87.10.2024.06.24.08.15.23
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 24 Jun 2024 08:15:23 -0700 (PDT)
Date: Mon, 24 Jun 2024 18:15:22 +0300
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
To: Srinivas Kandagatla <srinivas.kandagatla@linaro.org>
Cc: Bjorn Andersson <andersson@kernel.org>, 
	Michael Turquette <mturquette@baylibre.com>, Stephen Boyd <sboyd@kernel.org>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Konrad Dybcio <konrad.dybcio@linaro.org>, linux-arm-msm@vger.kernel.org, linux-clk@vger.kernel.org, 
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH v2 0/3] arm64: dts: qcom: x1e80100: Add soundwire
 controller resets
Message-ID: <2lnbogqx2mxgyn47vgnbp4ameydjq6ajuauklgzslmfinpmnk5@ez2sz3nyd3wj>
References: <20240624-x1e-swr-reset-v2-0-8bc677fcfa64@linaro.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20240624-x1e-swr-reset-v2-0-8bc677fcfa64@linaro.org>

On Mon, Jun 24, 2024 at 02:32:35PM GMT, Srinivas Kandagatla wrote:
> Soundwire resets are missing in the existing dts, add resets for all the 4
> instances of Soundwire controllers (WSA, WSA2, RX, TX).
> 
> Signed-off-by: Srinivas Kandagatla <srinivas.kandagatla@linaro.org>
> ---
> Changes in v2:
> - fixed dt bindings.
> - Link to v1: https://lore.kernel.org/r/20240624-x1e-swr-reset-v1-0-da326d0733d4@linaro.org

Thanks!

Acked-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>


-- 
With best wishes
Dmitry

