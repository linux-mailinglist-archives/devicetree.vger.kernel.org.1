Return-Path: <devicetree+bounces-9925-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 16E8D7CF052
	for <lists+devicetree@lfdr.de>; Thu, 19 Oct 2023 08:47:04 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 3334E1C20BA9
	for <lists+devicetree@lfdr.de>; Thu, 19 Oct 2023 06:47:03 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 3345563D9;
	Thu, 19 Oct 2023 06:47:00 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="cxFHLl2g"
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C9A5663CF
	for <devicetree@vger.kernel.org>; Thu, 19 Oct 2023 06:46:58 +0000 (UTC)
Received: from mail-pf1-x435.google.com (mail-pf1-x435.google.com [IPv6:2607:f8b0:4864:20::435])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 1462C116
	for <devicetree@vger.kernel.org>; Wed, 18 Oct 2023 23:46:57 -0700 (PDT)
Received: by mail-pf1-x435.google.com with SMTP id d2e1a72fcca58-6ba54c3ed97so4535887b3a.2
        for <devicetree@vger.kernel.org>; Wed, 18 Oct 2023 23:46:57 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1697698016; x=1698302816; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=M5ZJsyvfM+Zq9ZLZKJ7GPs5PPw+WA8Q5sgTdxbhgzH0=;
        b=cxFHLl2gYPeArWdD8OdZ4mejp6dc7r3gfj3kn5D0G1algYTxcvkAHOWrjrGPG6ETBx
         J9wxDboo42wHck5krM4EmfLvigMCRwOcAbB4P0piU/sFyylFhkXpz2KpMYP51vcWLj8H
         eDk2lCNmjp6P6zE/yCTWiY6tQfa+b8GFDjVo8jN1qwQZNBCfmoAaNDupYVN8vVQJe/Un
         z3N7vdLp03UAjESWeomWEdaGJQnAFhmQOGiE4NdEvYuSG290mSr+1xFr5U/3AOGaYD0v
         +NYO7o+tCy1MapE75cB8P3o9iaFGcuhwIi50J/KmL8H0RE7BAjd0H96c2M3/ncaInnqg
         0Q5g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1697698016; x=1698302816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=M5ZJsyvfM+Zq9ZLZKJ7GPs5PPw+WA8Q5sgTdxbhgzH0=;
        b=GcYgo820+Mtvf4/CVnLwqHffg6PHm6Hkfx85bDch33ByZQFwlWZ7evNcaYTRIcoiI/
         CSyTJ4QWwTnpuMRGFxmHcgt0VTXD5oijTPsq5UezoC7q0QfLxMZxJnxp5PPqbn1kHh05
         PGnRyPurfztwv0as1Q0I+CAj4a7tADHX+6j+YU6lg6+t5C06OEtGKOrfeXoBPhYfHXu6
         egETzgvpXk0r9bkI1mcNp22+on97ZVx2/GgrBtmTaMEMPze2J1dCCgi1Sh91jiF31uyn
         IZRpWzVCpNrntLkysUuWfoGtLis3rmyOCLpU2PZVyJlns/9zxiK51EhVBvvaUwPBN7KH
         /TJA==
X-Gm-Message-State: AOJu0YyvRKJjpD5veYovMs7+utK0k1Ojg/ZsdcwvKqvKMgVSC+7XixOt
	DF1uitopsLNRu7+MQGqu2BoOoQ==
X-Google-Smtp-Source: AGHT+IFth7U4xLVcr3gM1uaQR6mB4u9ZWR6FF+K5XnVT1FArumGmO27ywj8s+aGrhbgtYNodIWf60A==
X-Received: by 2002:a05:6a21:7741:b0:13a:59b1:c884 with SMTP id bc1-20020a056a21774100b0013a59b1c884mr1325731pzc.40.1697698016581;
        Wed, 18 Oct 2023 23:46:56 -0700 (PDT)
Received: from localhost ([122.172.80.14])
        by smtp.gmail.com with ESMTPSA id v2-20020a170902d68200b001c5f77e23a8sm1071860ply.73.2023.10.18.23.46.55
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 18 Oct 2023 23:46:56 -0700 (PDT)
Date: Thu, 19 Oct 2023 12:16:53 +0530
From: Viresh Kumar <viresh.kumar@linaro.org>
To: Christian Marangi <ansuelsmth@gmail.com>
Cc: Ilia Lin <ilia.lin@kernel.org>, Andy Gross <agross@kernel.org>,
	Bjorn Andersson <andersson@kernel.org>,
	Konrad Dybcio <konrad.dybcio@linaro.org>,
	"Rafael J. Wysocki" <rafael@kernel.org>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>, Nishanth Menon <nm@ti.com>,
	Stephen Boyd <sboyd@kernel.org>,
	Sricharan Ramabadhran <quic_srichara@quicinc.com>,
	linux-pm@vger.kernel.org, linux-arm-msm@vger.kernel.org,
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH v6 0/4] cpufreq: qcom-nvmem: add support for ipq806x
Message-ID: <20231019064653.feqpjdmblm7mmsug@vireshk-i7>
References: <20231013173854.7399-1-ansuelsmth@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20231013173854.7399-1-ansuelsmth@gmail.com>

On 13-10-23, 19:38, Christian Marangi wrote:
> The first patch of this series was split to a separate series as it
> doesn't depend on [1] and can be applied right away,
> [1] introduced some breaking change to function that ipq806x, ipq807x
> patch was dropped to permit an easier rebase and merge of both.
> 
> This small series adds support for ipq806x qcom-cpufreq-nvmem driver.
> Special function are required to make use of the opp-supported-hw
> binding by hardcoding custom bits based on the qcom SoC ID.
> 
> The qcom-cpufreq-nvmem driver had recent changes to also improve
> support for apq8064. Because of this, this series depends on a
> just merged series.
> 
> Depends on [1].
> 
> [1] https://lore.kernel.org/linux-pm/20231010063235.rj2ehxugtjr5x2xr@vireshk-i7/T/#t
> 
> Christian Marangi (4):
>   dt-bindings: cpufreq: qcom-cpufreq-nvmem: Document krait-cpu
>   dt-bindings: opp: opp-v2-kryo-cpu: Document named opp-microvolt
>     property

Applied above two. Thanks.

>   cpufreq: qcom-nvmem: add support for IPQ8064

This doesn't apply/build anymore.

>   ARM: dts: qcom: ipq8064: Add CPU OPP table

-- 
viresh

