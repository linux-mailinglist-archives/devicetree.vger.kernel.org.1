Return-Path: <devicetree+bounces-10003-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 040F97CF515
	for <lists+devicetree@lfdr.de>; Thu, 19 Oct 2023 12:23:52 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 34FB51C20936
	for <lists+devicetree@lfdr.de>; Thu, 19 Oct 2023 10:23:51 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 53FEA182B3;
	Thu, 19 Oct 2023 10:23:48 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="gpdSxC4X"
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E04A617985
	for <devicetree@vger.kernel.org>; Thu, 19 Oct 2023 10:23:46 +0000 (UTC)
Received: from mail-pl1-x62a.google.com (mail-pl1-x62a.google.com [IPv6:2607:f8b0:4864:20::62a])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 1D90D11D
	for <devicetree@vger.kernel.org>; Thu, 19 Oct 2023 03:23:45 -0700 (PDT)
Received: by mail-pl1-x62a.google.com with SMTP id d9443c01a7336-1ca82f015e4so30852085ad.1
        for <devicetree@vger.kernel.org>; Thu, 19 Oct 2023 03:23:45 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1697711024; x=1698315824; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=O/3xZPvtfr/mVQnjF0aV9JZSvUaXwPGYQtJwXr+UJtY=;
        b=gpdSxC4XEl28o2IF8VPY8+8hvE0vvDvQGkm4Zm1pjipNMCaqq4HE/eZQAzjzKEJJ42
         QT3o/nRMXcaAsan3XeU3CDFpSZItds5CS/w22QXzNynkF+Rpx11FGT9D6wTGvDmetVyh
         XGZjiiiKYWAMWPTuDSXwVIWEfMy2viEfsLH5OIGqBunw5r6jBqBG8iW8qkank9JgNCY7
         naL8eADf1OI8+qKKD8XLXhiSRpuvS5KMqq4ABxd9fGU6ZC4WQPEVZIv50XL99BOd5z+f
         lf6kOShT7Pxs+kG7YsCaXlOz+8U+1psDcJ5CYYbVvtHCJ7fNIiZwguw7c3NT9lcQ/e0L
         kevQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1697711024; x=1698315824;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=O/3xZPvtfr/mVQnjF0aV9JZSvUaXwPGYQtJwXr+UJtY=;
        b=r4JChAFYNki+mYENfRnMl+Ef8R8XgTGHiHDcFr6afwLa+Nzcge1SPIJomO+6xtJGbr
         isJ3PfjKu44uOYz3cw6Hqk0a/GuSZKmFCD5JOvQpIm7bCGzvmGzFeVPRRpoJB0XLCXGK
         p5yP4+f51VkDYHx0g+Gcp1O7h3MB5zPVDuR7bBW2IWH5JRuWRE/8W8cOX8TtUmn25Bby
         5F45LfO2wPTDmwGDHWSAxVuUVLewfESEv8lluy32ess00ouNeTw9CdNDPHnqroEJL8bw
         K1Lk+4+729wqY+TXXpMHv+0zpECFQP3hcrw0yE04+8Xrjrn7DUpvQ2kwe/5M50TdAbeD
         w+kA==
X-Gm-Message-State: AOJu0YyIVByvS6mqdePM4Uv/GQSHhudoc6MWaS0qTmDaMNu7wOJmNW1k
	g7ENpYEELYdgUFx6kxe7XPq0fg==
X-Google-Smtp-Source: AGHT+IGUAjPiZZOm9dg7VwgfsgXj4ik9Y/90jwwsCROkUKLNGl6vWXGCfziiFvgFDewXwyHGK1nb4w==
X-Received: by 2002:a17:903:2443:b0:1c3:83e2:d0a9 with SMTP id l3-20020a170903244300b001c383e2d0a9mr2213230pls.58.1697711024544;
        Thu, 19 Oct 2023 03:23:44 -0700 (PDT)
Received: from localhost ([122.172.80.14])
        by smtp.gmail.com with ESMTPSA id o2-20020a170902d4c200b001c9ba6c7287sm1562203plg.143.2023.10.19.03.23.43
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 19 Oct 2023 03:23:43 -0700 (PDT)
Date: Thu, 19 Oct 2023 15:53:42 +0530
From: Viresh Kumar <viresh.kumar@linaro.org>
To: Stephan Gerhold <stephan.gerhold@kernkonzept.com>
Cc: Andy Gross <agross@kernel.org>, Bjorn Andersson <andersson@kernel.org>,
	Konrad Dybcio <konrad.dybcio@linaro.org>,
	Ilia Lin <ilia.lin@kernel.org>,
	"Rafael J. Wysocki" <rafael@kernel.org>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>, linux-pm@vger.kernel.org,
	linux-arm-msm@vger.kernel.org, linux-kernel@vger.kernel.org,
	devicetree@vger.kernel.org, Ulf Hansson <ulf.hansson@linaro.org>,
	Stephan Gerhold <stephan@gerhold.net>, stable@vger.kernel.org
Subject: Re: [PATCH v2 0/3] cpufreq: Add basic cpufreq scaling for Qualcomm
 MSM8909
Message-ID: <20231019102342.5f4oyxd6hmjcju6g@vireshk-i7>
References: <20231018-msm8909-cpufreq-v2-0-0962df95f654@kernkonzept.com>
 <20231019061608.wjlf4orkdlpnv3a5@vireshk-i7>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20231019061608.wjlf4orkdlpnv3a5@vireshk-i7>

On 19-10-23, 11:46, Viresh Kumar wrote:
> On 18-10-23, 10:06, Stephan Gerhold wrote:
> > Add the necessary definitions to the qcom-cpufreq-nvmem driver to
> > support basic cpufreq scaling on the Qualcomm MSM8909 SoC. In practice
> > the necessary power domains vary depending on the actual PMIC the SoC
> > was combined with. With PM8909 the VDD_APC power domain is shared with
> > VDD_CX so the RPM firmware handles all voltage adjustments, while with
> > PM8916 and PM660 Linux is responsible to do adaptive voltage scaling
> > of a dedicated CPU regulator using CPR.
> > 
> > Signed-off-by: Stephan Gerhold <stephan.gerhold@kernkonzept.com>
> 
> Applied patch 1 and 3. Thanks.

Hi Stephan,

I think your platform has exactly what I am looking for. Can you
please help me test this, before it lands into linux-next :)

https://lore.kernel.org/cover.1697710527.git.viresh.kumar@linaro.org

TIA.

-- 
viresh

