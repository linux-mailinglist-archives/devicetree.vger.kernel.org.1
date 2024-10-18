Return-Path: <devicetree+bounces-112800-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 28A6F9A38A8
	for <lists+devicetree@lfdr.de>; Fri, 18 Oct 2024 10:35:03 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id DD7782866AC
	for <lists+devicetree@lfdr.de>; Fri, 18 Oct 2024 08:35:01 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 49F0818E77D;
	Fri, 18 Oct 2024 08:34:35 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="JZM/cWlC"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lj1-f179.google.com (mail-lj1-f179.google.com [209.85.208.179])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 91A8918F2FA
	for <devicetree@vger.kernel.org>; Fri, 18 Oct 2024 08:34:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.179
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1729240475; cv=none; b=EHyHSpFfabuEBuGTcg4jyjHIPP6hRvXDcua4/e7vcCB/aSIu53VaB10jHhmQI8rPgQVmLKbISTrRVApRqUZr5wBljGKTGFox1zlZmHdg8NuTBNathEL8WJ/nKT+IqFytd00JSXs5zcYTSSflLh8ICQWyQKrsLCR1G/r+DgvvP/M=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1729240475; c=relaxed/simple;
	bh=0srgTgPU6O9DCPzxjmpwh7gb3TW5F7IfkOw+rxbUXwo=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=bPKtMHx1QT/GeIhOqDQ+hwkGI2n3DA0yOQq/b9Ta4oebGsu8TmGfmvfoAMBBdqoybuxBM9mZsestALxqqa8cIaIS34PLuQvefn6cmJLjuX0FU6pMqHt3HVqT96ckNiXZv8f4bRS2gIO1zpfjT/gY8xno56vRXppRGLKwHOV7apY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=JZM/cWlC; arc=none smtp.client-ip=209.85.208.179
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lj1-f179.google.com with SMTP id 38308e7fff4ca-2fb3c3d5513so20077361fa.1
        for <devicetree@vger.kernel.org>; Fri, 18 Oct 2024 01:34:33 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1729240472; x=1729845272; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=O/E40pYu5N6UUzSC0ykjphENAzLlvZgAB3ZhtJJTml4=;
        b=JZM/cWlCcAUH9pSCDzA0xH7JaMu/ReqEq7VT57BZ35XgrFz8fesaWfzprIvX/7c2vh
         Z3H1UTp/8PPnJ/VE/c3qGaMSe77Ge8LRENGFwzGrtjtwSAQEg1FD0iJjfuyjhJW99/zA
         1BjvhKuwtwsfWmADaIrphkMCuOI+jw5rcNL0RkZx9uHCVTC9jouLA9tr2UEBsAj2L1Mp
         tmmFWw32pl80Xa928eQ5CNE282NlY1hsQP5wYC+LBW2oEXpLNzkB5nFH5YoQ+iZZcSNz
         CWU+Rb7PIdzoGE2mcgfNzklj5gVhFUPebKZ7OExQHpj9gpc4+5WgDwBcg5L6DMZdTesl
         haEQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1729240472; x=1729845272;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=O/E40pYu5N6UUzSC0ykjphENAzLlvZgAB3ZhtJJTml4=;
        b=pmu1X8U/J+IycsbvtwEeJFcf2PclX1SMBDdI4aDHOxViyM2vLNPJnWJ+fGfqtFO9CH
         MfDclC7KiVlrXitt1/Etv+OrjXwFSg725BUSWGfaYzU9H3/hcW6eBj7EYDU/WI4TXQGM
         2iyidFVefxkK+egBnv7LFbWnLwTYyPs3dcW6Fbz87yTfhBIITf2N6+gNbqDiA1Euf5vO
         3HVHLG783kVcZbYmIeDiFal6yPycxEIoUkH8/F6UWzJq3mYNR/en7R7Mu0aFBSVPNSZ3
         mLQ6qKCo6eZARhFVnXMcYRYIA+rbQvjWx2p/uf56W7MJxJ4WlPKkSOe0LtTCdxhZK5Uc
         iIrA==
X-Forwarded-Encrypted: i=1; AJvYcCXPhAojsQvz14g0T0Lg2paW39xtsGv7hSx8CNE6X8lZFzBK9KhAy6NpMTS/Z/7yg9JLVGE0ZhRzILev@vger.kernel.org
X-Gm-Message-State: AOJu0YzJ9lRaePZCs3DkOUaTyfiGkrvmpKJX2hGfLpLohOTcE7+wqW1N
	cZvH7XpT5DCKZ+icYYV5GC1yTyTlwd8jXX5pEwSU47hDjbvYZhXCe/g+e12IrR4=
X-Google-Smtp-Source: AGHT+IEf+JsGSXNlJJL9bn/WcW3dIRijvATttGbycYUvhiOsrdM/RAWzfsgY8sOtZaLsmrksi0/6hQ==
X-Received: by 2002:a2e:e1a:0:b0:2fb:58d1:d9a3 with SMTP id 38308e7fff4ca-2fb82eaadc2mr4804001fa.18.1729240471694;
        Fri, 18 Oct 2024 01:34:31 -0700 (PDT)
Received: from eriador.lumag.spb.ru (2001-14ba-a0c3-3a00--b8c.rev.dnainternet.fi. [2001:14ba:a0c3:3a00::b8c])
        by smtp.gmail.com with ESMTPSA id 38308e7fff4ca-2fb809f99besm1649401fa.83.2024.10.18.01.34.29
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 18 Oct 2024 01:34:30 -0700 (PDT)
Date: Fri, 18 Oct 2024 11:34:27 +0300
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
To: Krzysztof Kozlowski <krzk@kernel.org>
Cc: Bjorn Andersson <andersson@kernel.org>, 
	Michael Turquette <mturquette@baylibre.com>, Stephen Boyd <sboyd@kernel.org>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Taniya Das <quic_tdas@quicinc.com>, Neil Armstrong <neil.armstrong@linaro.org>, 
	Philipp Zabel <p.zabel@pengutronix.de>, Konrad Dybcio <konradybcio@kernel.org>, 
	linux-arm-msm@vger.kernel.org, linux-clk@vger.kernel.org, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org
Subject: Re: [PATCH 05/14] dt-bindings: clk: qcom,sm8450-gpucc: add SAR2130P
 compatibles
Message-ID: <xlpj3oyk7cyteyfsbfz5uccf7qe3icjcgkpyxmrwmlsibadydi@jyrhah5j3nq4>
References: <20241017-sar2130p-clocks-v1-0-f75e740f0a8d@linaro.org>
 <20241017-sar2130p-clocks-v1-5-f75e740f0a8d@linaro.org>
 <lue5xeab77eqnghpnxrhsezymf3e26ii7kccqlcm4fig57f4ug@sauhknjyrqbn>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <lue5xeab77eqnghpnxrhsezymf3e26ii7kccqlcm4fig57f4ug@sauhknjyrqbn>

On Fri, Oct 18, 2024 at 09:10:07AM +0200, Krzysztof Kozlowski wrote:
> On Thu, Oct 17, 2024 at 07:56:55PM +0300, Dmitry Baryshkov wrote:
> > From: Konrad Dybcio <konradybcio@kernel.org>
> > 
> > Expand qcom,sm8450-gpucc bindings to include SAR2130P.
> > 
> > Signed-off-by: Konrad Dybcio <konrad.dybcio@linaro.org>
> 
> Mismatched SoB and from.

Interesting enough, Git history contains correct From, which is then
being manipulated by the .mailmap. SoB isn't. How should I proceed?

-- 
With best wishes
Dmitry

