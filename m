Return-Path: <devicetree+bounces-26528-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 335A5816D24
	for <lists+devicetree@lfdr.de>; Mon, 18 Dec 2023 12:58:27 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id C7A241F22C4A
	for <lists+devicetree@lfdr.de>; Mon, 18 Dec 2023 11:58:26 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 9A92E1CAAC;
	Mon, 18 Dec 2023 11:49:09 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="C80ZJkxi"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pg1-f169.google.com (mail-pg1-f169.google.com [209.85.215.169])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 31D2637142
	for <devicetree@vger.kernel.org>; Mon, 18 Dec 2023 11:49:08 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-pg1-f169.google.com with SMTP id 41be03b00d2f7-5c673b01eeeso977953a12.1
        for <devicetree@vger.kernel.org>; Mon, 18 Dec 2023 03:49:08 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1702900147; x=1703504947; darn=vger.kernel.org;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:from:to
         :cc:subject:date:message-id:reply-to;
        bh=WFiECuxQKf4bQHzOWrQB9O9iOx/6SZrLhJKr/Z2J67E=;
        b=C80ZJkxiwR9Zm0ZsEKM8BmKcnvSLYCkhtK1dQvnDmoi9wbVvIeHxftsgmgH0afTE7u
         tv86Bo8M8rIqdWJYLKfhlF5aJeO4RaxULPRK75GlvL7OpGIe7LDthzkcV6e73mekVU+K
         eG0YxNCQ7FYoSsNsMCb41ntmlKlvGjbHxQM/W0tDIxGbG/wYPKt380CkOa1ZGzZkJu6P
         yqa73Vg7lgWCGGbwj8f3fEOTg8Y8lEhhERQSkXuIB6xlzRlXrXNec9PpvtVmP9U7r6LO
         EqEawO8Cry1p56dNMBPbO31C9vlWGCiOn/NA7T4Lid2Pi+4cJCeM0Q3VGXhWAqyPgGuw
         pBLA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1702900147; x=1703504947;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=WFiECuxQKf4bQHzOWrQB9O9iOx/6SZrLhJKr/Z2J67E=;
        b=ARDEVLQSArayCaGi2ZxNKdAFNLIwNaOtilCqnx0ZSkaGzNblRam8THdyJW4IPlznd1
         0yAQBG/DRGCiYCRbHXxAUfEpSL2a61HnSksR03aLnnAVu/yx7lGB9vnisaiJTE98vZA+
         gVL3Nh7u3thJGkr6pKnliEFeTbwhzKCO4/uEpFWAeE6lKgyvSDRfQWZoe6umCLz4Xkyu
         Ttykw9ZyNaYWPAiao3WEs5K2P5PwbxB3cVWDoOVjoBiAbKnstSE6L8gJsgsa3cGAOzid
         XnlBURjxSLIxsMQc1j+UYqt4zQUu1g10GtnF9kMhu93FsxgxgmDwAjKyC5EnxXiKp48d
         R58A==
X-Gm-Message-State: AOJu0YyV5QUjlqREXF9aC19gAR5RwJho1JQ2DV7kw1caiQpK8xP82WT7
	8FUu91JJPpfYV1g70rCZ+KRP
X-Google-Smtp-Source: AGHT+IFNm7vnn6dj9ZJCS5JUQjewTTJwImMcXsK4yzYDnO65BIHPMtdEVIr3bR2Db4u/3gv4EFWJDQ==
X-Received: by 2002:a05:6a20:3d81:b0:190:c314:35f8 with SMTP id s1-20020a056a203d8100b00190c31435f8mr7847690pzi.46.1702900147590;
        Mon, 18 Dec 2023 03:49:07 -0800 (PST)
Received: from thinkpad ([117.207.27.21])
        by smtp.gmail.com with ESMTPSA id ha9-20020a17090af3c900b0028b8bb9e5cbsm1526025pjb.25.2023.12.18.03.49.02
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 18 Dec 2023 03:49:07 -0800 (PST)
Date: Mon, 18 Dec 2023 17:18:58 +0530
From: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
To: Rob Herring <robh@kernel.org>
Cc: andersson@kernel.org, konrad.dybcio@linaro.org, vkoul@kernel.org,
	sboyd@kernel.org, mturquette@baylibre.com,
	krzysztof.kozlowski+dt@linaro.org, conor+dt@kernel.org,
	linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
	linux-kernel@vger.kernel.org, linux-clk@vger.kernel.org,
	devicetree@vger.kernel.org
Subject: Re: [PATCH 01/16] dt-bindings: phy: qmp-ufs: Fix PHY clocks
Message-ID: <20231218114858.GA2900@thinkpad>
References: <20231214091101.45713-1-manivannan.sadhasivam@linaro.org>
 <20231214091101.45713-2-manivannan.sadhasivam@linaro.org>
 <20231214172051.GA611674-robh@kernel.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20231214172051.GA611674-robh@kernel.org>

On Thu, Dec 14, 2023 at 11:20:51AM -0600, Rob Herring wrote:
> On Thu, Dec 14, 2023 at 02:40:46PM +0530, Manivannan Sadhasivam wrote:
> > All QMP UFS PHYs except MSM8996 require 3 clocks:
> > 
> > * ref - 19.2MHz reference clock from RPMh
> > * ref_aux - Auxiliary reference clock from GCC
> > * qref - QREF clock from GCC or TCSR (since SM8550)
> > 
> > MSM8996 only requires 'ref' and 'qref' clocks. Hence, fix the binding to
> > reflect the actual clock topology.
> 
> Breaking the ABI is okay because...? Please explain in the commit msg.
> 

I will update the commit message in v2.

- Mani

> Rob
> 

-- 
மணிவண்ணன் சதாசிவம்

