Return-Path: <devicetree+bounces-9872-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id CFEE57CEE8A
	for <lists+devicetree@lfdr.de>; Thu, 19 Oct 2023 06:06:43 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id F40ED1C208EB
	for <lists+devicetree@lfdr.de>; Thu, 19 Oct 2023 04:06:42 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 890F346669;
	Thu, 19 Oct 2023 04:06:39 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="YSo4ZV9w"
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E2DC8EDC
	for <devicetree@vger.kernel.org>; Thu, 19 Oct 2023 04:06:35 +0000 (UTC)
Received: from mail-pf1-x432.google.com (mail-pf1-x432.google.com [IPv6:2607:f8b0:4864:20::432])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id DDEB5AB
	for <devicetree@vger.kernel.org>; Wed, 18 Oct 2023 21:06:33 -0700 (PDT)
Received: by mail-pf1-x432.google.com with SMTP id d2e1a72fcca58-6b7f0170d7bso4868136b3a.2
        for <devicetree@vger.kernel.org>; Wed, 18 Oct 2023 21:06:33 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1697688393; x=1698293193; darn=vger.kernel.org;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:from:to
         :cc:subject:date:message-id:reply-to;
        bh=eQIMJ/nxxafee7WyxE0d+o9+7mfW1f+sldaH4ghTpNo=;
        b=YSo4ZV9wRaNJO23IHnuJg4u2Agufp6YcnLHU0i288i0/ihlyPExBf8C8zhXl/0P1nm
         QD6yQ0naylX/wcb2ViIKhnuXzOBYr1TbdEmAihVIdkXp3hFeBsQcNEj6HjueCCdOYMey
         UXLCYN23HyOthNPi4ou5gWv5eDhHtaXbGZyszzGF+Xwt+nk3DbSfkztBzPXu4xtWG9Wp
         3sLKGF5LV9ZlvvkU8EGaCVHFjw4swssEkCSajhASFcik4TTyqiXVNi7D7NpouLQKU/EU
         yZPc8RsL/7LhVhFtyTdU0nT6d4CP1Iy06ljeBq/RPeFcndhrlvEhdIs4CkLkrZ3lOxms
         lU/A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1697688393; x=1698293193;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=eQIMJ/nxxafee7WyxE0d+o9+7mfW1f+sldaH4ghTpNo=;
        b=OFq2XLUbL5Nt4N99VMJYD6+N9RhN0D365OLtX9axT4HD+wluO6LwD4ZfZ3DczdQ6/9
         gVPyO/J66KTbp4QJ4QgwnTDDES1BuEpWLcjlU+Oy5kDlUbkju9tUH/KEVIBYRsGx6SVM
         OvHLrI1OA5atY7f3vVUGosjXyL+5rh+rdh53lBAwA5pzZo1t8JBrZwisaaRcqY2aSNXJ
         pwC37dW+H7zMRTS8ZO/+02UN4yUiUgTBaMPnraKbfplyYwYBDXINp+jhzpmZY5BVi+ID
         zFwLskPwBOTBx2mstRu4aP/o4rPFwFFx5ks0LNmOJ7AbWXC8hHatQDNM7PIm6XmLoglV
         1/zw==
X-Gm-Message-State: AOJu0YwtFKMJuJVgF9az3a+/h6YYCjcEotN+gwlofB3hTR75NKU18IgQ
	R71rvHzXi7xtg6YMZlqmsDZ0
X-Google-Smtp-Source: AGHT+IGP8RYAqcC88qwdKj5FydUxjIzvKQRY7eQzz8t/NsXRcn/MCN9hzfd2K6b1Dw4tL9sPvOVWrQ==
X-Received: by 2002:a05:6a21:7742:b0:16b:977d:f7cf with SMTP id bc2-20020a056a21774200b0016b977df7cfmr1127597pzc.36.1697688393183;
        Wed, 18 Oct 2023 21:06:33 -0700 (PDT)
Received: from thinkpad ([117.202.186.25])
        by smtp.gmail.com with ESMTPSA id x19-20020a1709027c1300b001c3721897fcsm717665pll.277.2023.10.18.21.06.25
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 18 Oct 2023 21:06:32 -0700 (PDT)
Date: Thu, 19 Oct 2023 09:36:23 +0530
From: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
To: Konrad Dybcio <konrad.dybcio@linaro.org>
Cc: Nia Espera <nespera@igalia.com>, Andy Gross <agross@kernel.org>,
	Bjorn Andersson <andersson@kernel.org>,
	Jonathan Cameron <jic23@kernel.org>,
	Lars-Peter Clausen <lars@metafoo.de>,
	Rob Herring <robh+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Kees Cook <keescook@chromium.org>, Tony Luck <tony.luck@intel.com>,
	"Guilherme G. Piccoli" <gpiccoli@igalia.com>,
	Vinod Koul <vkoul@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>,
	linux-arm-msm@vger.kernel.org, linux-iio@vger.kernel.org,
	devicetree@vger.kernel.org, phone-devel@vger.kernel.org,
	Rob <Me@orbit.sh>, Clayton Craft <clayton@igalia.com>,
	Caleb Connolly <caleb.connolly@linaro.org>,
	Luca Weiss <luca.weiss@fairphone.com>,
	~postmarketos/upstreaming@lists.sr.ht
Subject: Re: [PATCH v2 4/6] arm64: dts: qcom: sm8350: Fix remoteproc
 interrupt type
Message-ID: <20231019040623.GA5142@thinkpad>
References: <20231018-nia-sm8350-for-upstream-v2-0-7b243126cb77@igalia.com>
 <20231018-nia-sm8350-for-upstream-v2-4-7b243126cb77@igalia.com>
 <6ac842b8-5fcb-4094-8488-4d6e250bf102@linaro.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <6ac842b8-5fcb-4094-8488-4d6e250bf102@linaro.org>

On Wed, Oct 18, 2023 at 10:17:15PM +0200, Konrad Dybcio wrote:
> 
> 
> On 10/18/23 16:25, Nia Espera wrote:
> > In a similar vein to
> > https://lore.kernel.org/lkml/20220530080842.37024-3-manivannan.sadhasivam@linaro.org/,
> > the remote processors on sm8350 fail to initialize with the 'correct'
> > (i.e., specified in downstream) IRQ type. Change this to EDGE_RISING.
> > 
> > Signed-off-by: Nia Espera <nespera@igalia.com>
> > ---
> Hm, apparently 8250 and 7180 have the same thing.
> 
> Mani, could you elaborate on this?
> 

So the remoteproc driver expects the wdog interrupts to be edge triggered as the
rest of the interrupts, but DT specifies them as level triggered. This won't
cause any issue during the first instance of the probe as the driver requested
trigger will be given precedence. But if the probe defers for some reason and
during the next try, request_irq() will fail with error similar to below:

irq: type mismatch, failed to map hwirq-x for interrupt-controller@xxxxxx!

This error is often confusing and I tried to fix it. But Maz didn't agree with
me, so I just ended up fixing the DTs for some platform I have access to.

So ideally, DTs of all platforms should be fixed to pass correct trigger type.

- Mani

> Konrad

-- 
மணிவண்ணன் சதாசிவம்

