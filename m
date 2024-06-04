Return-Path: <devicetree+bounces-72345-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id AFC708FB68E
	for <lists+devicetree@lfdr.de>; Tue,  4 Jun 2024 17:06:19 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 03CC5B26397
	for <lists+devicetree@lfdr.de>; Tue,  4 Jun 2024 15:06:12 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 993FC13D607;
	Tue,  4 Jun 2024 15:06:00 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="gEFNSrwK"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ed1-f49.google.com (mail-ed1-f49.google.com [209.85.208.49])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E02D913CA9A
	for <devicetree@vger.kernel.org>; Tue,  4 Jun 2024 15:05:57 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.49
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1717513560; cv=none; b=U3Q+OR4PJ4xaV46sge3FSt5ePTGwBcfeE2E96f1makt7nbBjO7CzdUyA8UYGB+8Sjwgyjjk6ozxGfoNDM5w6sGfIVr6MMARr4IC+crIGF6lSGga9ro+kgMlC63Cv+Z/2Wc2ByObFArMLVHxXZ7uuitknnkA5VOzzL9tNDTWGdic=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1717513560; c=relaxed/simple;
	bh=ro445i7VHeW4uYqUrduMUsb3oj6AuWo1wqWAZgg/XQ8=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=rpBwYcYUTAIfBXeRiNS1YQZB+h4JZlTrybQu376VGN10VAJ4o5hJyxuGJPIESHof7G9YOY/PDw94s5mBs36/4zw5T1KnSDbwKv1uZOLnVRYA+YXb0wAkoCzLtPsQStgRieSRwg6LKAxOfkfzkN0CvUOCYfd1NcGOJa6xL7rPhsI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=gEFNSrwK; arc=none smtp.client-ip=209.85.208.49
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-ed1-f49.google.com with SMTP id 4fb4d7f45d1cf-57a4ea8058bso3799453a12.1
        for <devicetree@vger.kernel.org>; Tue, 04 Jun 2024 08:05:57 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1717513556; x=1718118356; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=7i7GhF6dlRREfvJkAzXH+kI3G+fzObsSDo4YlfDK3J0=;
        b=gEFNSrwKDtsNE4NgIesXAeDB/vEFq1XxZILC0YpL8wypgR7/X04D2b/hz2bFKL0VOH
         kdsHJ4exCYcH1TfF2wwoq0sXFW5ejz7k0ABGYdIy1Sep8AzZwB0AF7wFhWPJOMteJOol
         IUDeHqUS5UmXYb+BLfBy4+WMAJf8kdhsob/G+Z3kWyv9ejg9d5CKfczcTupF16T1YPQN
         PmdeBNckH7ptTYP4fOssNDcP7lUUDplDIulOOeH1W2SvyJKmWdBiqiIxAOVM20Zozvhq
         /0Qtpvrce5w+vCuXA9/54EmukmoDJ7NqHKhhqXj1PbntSEUGPcWoZUsalxH00Z8TzxaR
         /+NA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1717513556; x=1718118356;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=7i7GhF6dlRREfvJkAzXH+kI3G+fzObsSDo4YlfDK3J0=;
        b=wr9cMCxxffh1+ix1dKxP/m2N1CrZ15tBW8iMdK/tjg3ip6wAf5P9t8cMbTx9ulJimI
         FWxZ0K+NqlCsGajPzArBAYD9UIt0EyayvACZaHtcMT4dKY5/g61zK8rYzaG0CN5iX+4r
         TxKMzJ950b0LKx6i0ZNngTk5dOX81J0qZQx7Dl5NgCAGIHp1niUx9D1f9H18bxopmUO+
         9vR4Oq45sjJyB1onh3AYvvraDJMzs7to9ucVvSCaSymDWgoDT6mg93hHmO4kAFSHvuKX
         5Vgy8An20hEA79nicGuVhuO41/+f7O+3n0sRX1SAU+rRDutvF27lG3CIB7Yo2EG3vz+d
         odKg==
X-Forwarded-Encrypted: i=1; AJvYcCU7wiTwoMhyw1KKcYUKdqjE6NlOSEXL44CIU04vdtY6lL9Fp1QCXRQPn4hUZAzwlronnvvJqdAy4MO+QPjjauGdDkhwPBdSELujuw==
X-Gm-Message-State: AOJu0Yw0vuFSjwgUs66ctGLIbeuaDypnnuyT2rOdsYBcVzoMbQsygS6w
	Nh7OX7rQMQAc2VJOXAYlpvu8hwp0yJjdmoe+W0wnm3uY+HuG1rA28Wv0TiFZMd4=
X-Google-Smtp-Source: AGHT+IGHlq8e17y+3YCHVKE24FcpXnHf5Vb2Kosie/7mCqEOX2TFC+ggm5U4vZqBl1jL5xdJIrHEYw==
X-Received: by 2002:a50:9b43:0:b0:57a:23eb:13b3 with SMTP id 4fb4d7f45d1cf-57a363713eemr8130395a12.12.1717513555940;
        Tue, 04 Jun 2024 08:05:55 -0700 (PDT)
Received: from linaro.org ([188.27.161.69])
        by smtp.gmail.com with ESMTPSA id 4fb4d7f45d1cf-57a31b98e0csm7473460a12.13.2024.06.04.08.05.54
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 04 Jun 2024 08:05:55 -0700 (PDT)
Date: Tue, 4 Jun 2024 18:05:54 +0300
From: Abel Vesa <abel.vesa@linaro.org>
To: Konrad Dybcio <konrad.dybcio@linaro.org>
Cc: Bjorn Andersson <andersson@kernel.org>, Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>, linux-arm-msm@vger.kernel.org,
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
	Johan Hovold <johan+linaro@kernel.org>,
	Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Subject: Re: [PATCH v2] arm64: dts: qcom: x1e80100: Disable the SMB2360 4th
 instance by default
Message-ID: <Zl8tUr+r423Tbw6l@linaro.org>
References: <20240603-x1e80100-dts-pmics-drop-4th-smb2360-from-crd-v2-1-fb63973cc07d@linaro.org>
 <4c1d77e3-3fe7-4ee6-8872-3924a1b2ef9f@linaro.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <4c1d77e3-3fe7-4ee6-8872-3924a1b2ef9f@linaro.org>

On 24-06-04 14:01:11, Konrad Dybcio wrote:
> 
> 
> On 6/3/24 10:17, Abel Vesa wrote:
> > The CRD board doesn't have the 4th SMB2360 PMIC populated while the QCP
> > does. So enable it on QCP only. This fixes the warning for the missing
> > PMIC on CRD as well.
> > 
> > Fixes: 2559e61e7ef4 ("arm64: dts: qcom: x1e80100-pmics: Add the missing PMICs")
> > Reviewed-by: Johan Hovold <johan+linaro@kernel.org>
> > Tested-by: Johan Hovold <johan+linaro@kernel.org>
> > Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
> > Signed-off-by: Abel Vesa <abel.vesa@linaro.org>
> > ---
> > Changes in v2:
> > - Fetched all R-b and T-b tags
> 
> Almost..
> 
> gotta do it twice to make sure it's posted

Actually you sent your R-b tag to v1 exactly one day after v2 was
already sent. :)

But I think b4 would've picked up the one from v1 anyway.

> 
> Reviewed-by: Konrad Dybcio <konrad.dybcio@linaro.org>
> 
> Konrad

