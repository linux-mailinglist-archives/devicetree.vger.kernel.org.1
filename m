Return-Path: <devicetree+bounces-154587-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 2845EA50CA8
	for <lists+devicetree@lfdr.de>; Wed,  5 Mar 2025 21:39:30 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 7030918832CE
	for <lists+devicetree@lfdr.de>; Wed,  5 Mar 2025 20:39:37 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 24B9B254B10;
	Wed,  5 Mar 2025 20:39:26 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="V5yW/C3g"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lj1-f175.google.com (mail-lj1-f175.google.com [209.85.208.175])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 47273253344
	for <devicetree@vger.kernel.org>; Wed,  5 Mar 2025 20:39:24 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.175
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1741207166; cv=none; b=asBH3vjAKIcev6zIozSjI5/6TKuuquQD1mV5sJ1uHOLX6CLkvQgBOw8DBO3gK5WLo9ccxKjn/BEI9rtAl5+qODEBeCXb/Bl+MOY4BVN83iYAJg+VBtiQqJMGPrDDZ+HsQqL43L06xBA/pyDcjR2KOTN6p0kjLLp/GOTJSjKRsfI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1741207166; c=relaxed/simple;
	bh=OOdcGVb9J/2+PQH2L2EJo4drk+rT60VmQIudXxz2zS8=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=tTU9RuKeZJPJZ2Aw52/N9Jf2j1mVcpp2Uu0vuhdK/KKautjf3VUNLvq0uj9vR3JNiL3UCAGvbD5lVNsJVFsm2Na+uyFkXJKfouI0jgDjkfvAna5Wdjla49XmPJYTq3Pp/7apFPOgtKT9tHIA0rKCLs43G26mLdvu8y46TJRCsyU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=V5yW/C3g; arc=none smtp.client-ip=209.85.208.175
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lj1-f175.google.com with SMTP id 38308e7fff4ca-30b8f0c514cso53923851fa.2
        for <devicetree@vger.kernel.org>; Wed, 05 Mar 2025 12:39:23 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1741207162; x=1741811962; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=nfcoSxpPFiFuUn8/1PBHFRFeN5zz8LwDXafFbEhPVL4=;
        b=V5yW/C3gtv77+9LuT6pw5yMMjUnHpzsMQyEObUuDzGhbRiGniega86NL+WpapVNide
         peWR+q1NIZluJ80DP/FXDqsdKjHSNM2cP1OMkMGHvpod0Fx1kEzp07osK0xKSsHIaBMZ
         Hbg9KB6/dLauJQdg+o7PvSxLHRcfjJjyB1iihUWOaPxgYEyYxp0W8Zvech94KiAvcA2F
         QeMbppTuEJ+waVg1dS4R7oDzroV+kyipB9ycviEEv1Fh36cEHIr717NhzWp4Vpg+cMii
         hVvOtPGIFOGJM8sYUKTXdDxYWxz6EHHmKmxzOpcqXYua7XLQs2Y8Sw3RkNyye2FVadVh
         7zAw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1741207162; x=1741811962;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=nfcoSxpPFiFuUn8/1PBHFRFeN5zz8LwDXafFbEhPVL4=;
        b=j0Vyv8obf17KRCmQ2VJk1W0uer/RyQX7W0V0InIeWl6YV57txQrIT1ilWC1Mct8mV2
         wD4FB1c8rM64GGZ8bz+95CRUD4TA4osaDO3a0rsFRjvvyx/74fzx9AOO/sC71X3LIb7d
         qTMI0k/vVYnp4Qxnz3gPUJOW0vX4rrnFowI1Ah7pbsidpiaNXhzmqMvUEvs5bH3IBvvd
         MI95+h9jyXvR/h67vqqQIBDOmFoCH/Cq5jll4UYdrFHJasbb1tTU4/RLBjsx3bwLlJAt
         qsd6PVn7dKMISLlFjLx6EXbhQLXSIL7vKdx/a6e9nSXuqx0PmOqdHuKI8FpFdB/DVYDr
         AQOQ==
X-Forwarded-Encrypted: i=1; AJvYcCUCD582ShkUZoJ6xyZQcypuDJn6Zx6X+Sjrl7pqGdzCSh4/gVPcwqFlejoAjCofu5DE3hys/Cc969Hz@vger.kernel.org
X-Gm-Message-State: AOJu0YzUxRaObhEVjusJppwY08jSRl1ax9v7yvJ8yo/oNdz/0IOzPaLl
	6ZJB5ntwB2mtNMG20hZuCz87QIZXt0+MV4TocOvWIIr+8mQb8FhfAzeq0vfI2BU=
X-Gm-Gg: ASbGncsE4pMZi5tSyMjAFz05U2hgbBuroQSytF8d+xE9l3yymGuSbny0vq1nJsVMJbU
	spneVDajIn8zR7IuL9NMV13iz+PQXy302XN6/4I7Os7P1X3LYG22fTzLPBsCz9haQmSmdvBmCps
	BpxzyOkSXe+qphdbMH+DhJYJQZD/DX6FBprXGc5918FtEZKouqkAT3cm8BmRx4QpgSSaX+2m0/1
	B9HkT94fMp0FhxonIwMppC1ponxm7LQ61jvCFgAWruKzS5vsabhmhIyYAqVlzyyxh/hhwllyvp3
	LcbnoXosdL6HYnSko0rAGaz4yj29v53FXHsRN9tUT9XsAVZKL84nu2XGEPbz0wQ+m9y29BgKqOq
	v8xDWeIBvxsINCCiBKP+r4hF8
X-Google-Smtp-Source: AGHT+IEbTbwWMOL7YUjwBALdMqyrxkNiXMKt6dO7bGnM96j30pIhXzA/HZiAODGdLHzT7qmpsh6SMw==
X-Received: by 2002:a2e:b1cf:0:b0:302:48fd:6922 with SMTP id 38308e7fff4ca-30bd7b324c0mr16257451fa.37.1741207162209;
        Wed, 05 Mar 2025 12:39:22 -0800 (PST)
Received: from eriador.lumag.spb.ru (2001-14ba-a0c3-3a00--7a1.rev.dnainternet.fi. [2001:14ba:a0c3:3a00::7a1])
        by smtp.gmail.com with ESMTPSA id 38308e7fff4ca-30bc2ad651bsm9041781fa.20.2025.03.05.12.39.20
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 05 Mar 2025 12:39:21 -0800 (PST)
Date: Wed, 5 Mar 2025 22:39:19 +0200
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
To: George Moussalem <george.moussalem@outlook.com>
Cc: linux-arm-msm@vger.kernel.org, linux-kernel@vger.kernel.org, 
	linux-pci@vger.kernel.org, linux-phy@lists.infradead.org, andersson@kernel.org, 
	bhelgaas@google.com, conor+dt@kernel.org, devicetree@vger.kernel.org, 
	kishon@kernel.org, konradybcio@kernel.org, krzk+dt@kernel.org, kw@linux.com, 
	lpieralisi@kernel.org, manivannan.sadhasivam@linaro.org, p.zabel@pengutronix.de, 
	quic_nsekar@quicinc.com, robh@kernel.org, robimarko@gmail.com, vkoul@kernel.org, 
	quic_srichara@quicinc.com
Subject: Re: [PATCH v3 2/6] phy: qualcomm: qcom-uniphy-pcie 28LP add support
 for IPQ5018
Message-ID: <oeu6wkfhx2masvendoweoufzit6dcwwer5bakzvg75dz3uc4bj@bwuj4slnb24e>
References: <20250305134239.2236590-1-george.moussalem@outlook.com>
 <DS7PR19MB8883A6C7E8FA6810089453149DCB2@DS7PR19MB8883.namprd19.prod.outlook.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <DS7PR19MB8883A6C7E8FA6810089453149DCB2@DS7PR19MB8883.namprd19.prod.outlook.com>

On Wed, Mar 05, 2025 at 05:41:27PM +0400, George Moussalem wrote:
> From: Sricharan Ramabadhran <quic_srichara@quicinc.com>
> 
> From: Nitheesh Sekar <quic_nsekar@quicinc.com>

Something is wrong here. There can't be two authors for the patch.

LGTM otherwise

> 
> The Qualcomm UNIPHY PCIe PHY 28LP is found on both IPQ5332 and IPQ5018.
> Adding the PHY init sequence, pipe clock rate, and compatible for IPQ5018.
> 
> Signed-off-by: Nitheesh Sekar <quic_nsekar@quicinc.com>
> Signed-off-by: Sricharan Ramabadhran <quic_srichara@quicinc.com>
> Signed-off-by: George Moussalem <george.moussalem@outlook.com>
> ---
>  .../phy/qualcomm/phy-qcom-uniphy-pcie-28lp.c  | 45 +++++++++++++++++++
>  1 file changed, 45 insertions(+)
> 

-- 
With best wishes
Dmitry

