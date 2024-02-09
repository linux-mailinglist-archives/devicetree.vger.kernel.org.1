Return-Path: <devicetree+bounces-40286-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 69D4C850005
	for <lists+devicetree@lfdr.de>; Fri,  9 Feb 2024 23:34:01 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 1CEFC1F21C82
	for <lists+devicetree@lfdr.de>; Fri,  9 Feb 2024 22:34:01 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 5E24739FCD;
	Fri,  9 Feb 2024 22:31:03 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="EpfmhWfH"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-yb1-f171.google.com (mail-yb1-f171.google.com [209.85.219.171])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id AAD7739FC3
	for <devicetree@vger.kernel.org>; Fri,  9 Feb 2024 22:31:01 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.219.171
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1707517863; cv=none; b=GtA2wjPQ1PXc6BaKCd0TE2X0tT/mTTGGt3dUVbpF2eLnMVLHcj4Ycjj6vVViQbnubbreZ3oDNhpGUO8NIXPJue1xMQ9aCthKRL1EZZluJnH+M0/hSVPAFrFQXlma27TksOAgqiI6CaHcFJ42megdZ3z5AFTXLYlrSDTUzfn7R0g=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1707517863; c=relaxed/simple;
	bh=QVarPAYcC5n7oy6ys/7qfQ0UVMQyXIdvToF2ttVkyE8=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=g3f6QwISPAQKAzr4y3zCJ2Yb99IaVUHgqjaPnUeA01kDQ6OFr2ib7wvblI46k01qWvU2id52nWnYB8bULBfaH/zcL/FtN7uG5B7KLOYyde3gsTb37XQvczMVGXHq41A9jah73xdAbNfK99Ut+dV+kSrkok7Sb8eOdoc3FpIhako=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=EpfmhWfH; arc=none smtp.client-ip=209.85.219.171
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-yb1-f171.google.com with SMTP id 3f1490d57ef6-db4364ecd6aso1429278276.2
        for <devicetree@vger.kernel.org>; Fri, 09 Feb 2024 14:31:01 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1707517860; x=1708122660; darn=vger.kernel.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=628t97wrZYyhnBGa6SPfseRS05OEREwisnOmsVjSZHs=;
        b=EpfmhWfHIGEW5MVFZQZIgIWLqmUuz0BmZKxHv1KZAQ5mgjh4LxjBzfLCnIGmmjl3H6
         jC6nAaNhDaA2pLzWiJnFp8AZDCNF8SDeolGJgIXD1ZKkCi1bLFvN0ybmYFxD3DTrefJD
         /8JrsXyDY6jAZaEXAen94iWv07JCZD+lcrx4lyXamrsIRrjj+HcKanuIFAx76cSYl3J+
         t41URjn69nzfK4l2Zf1LQVK12+MciUJ7yIg47u+nV3XJxgvz+jk/l05X3JmGExzj8Ywy
         sXJpeXdCGSABJjfUYoJdzNKdwk7mG0o0/3fDsJNaR3JFKtvmJ/8Y+zqoKRHXsE6AR5n8
         F/nA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1707517860; x=1708122660;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=628t97wrZYyhnBGa6SPfseRS05OEREwisnOmsVjSZHs=;
        b=RfK8UPNZLLnj5kquaov4qn18dg+3GVidovGx7FY6Ilid+ODpO8J2YdzPUd8YS2YrNJ
         7R0p2djeFTBU89gjtw921dQxh+GhNRty5uEyD5k36n2bQAtC/pIEnn9yHhncrPj75rfb
         tXcLHzj9qKTNPrINsic4457NpqA6hhCxsNOEACkIp0I/WYgHsFVyKFewGu+lDqL6H0Gk
         gdTqC6SWY+eTSwABK7No+9niySeFpq2ea+HEYQOoDMEaSEY8JuY2ztUajjnpZiHoo7fe
         1lVAydCE0Th5hjYgqmts3iFKt1iyuX/Oz4rNTQ8nw7PI8lWexo3VUoaylmPPKo2gCPdb
         irgg==
X-Forwarded-Encrypted: i=1; AJvYcCWyVVsWK6xz2nk4z2pho9a7aGXyo0Lu4o7fs8vAjdCKP5mnDvYqKvDdcAX8eJY8prCKlbj4LfmrlGvnEPQdRDXA3czo2pOFx8XD7g==
X-Gm-Message-State: AOJu0YxGOGLDVaL5eHGA/qzrn3Re63QmLw6zS7Z056GBCEg4+FuZhmuh
	cmigTp6rx3dGofPN2XnPmswv4sczI8Vs/nAemiEEx2x5HsMgb8e2pduhCGTvcC6HZ7GsvomoH14
	qyKAYjKgTYaPNH872Paws1i6pHLQl12F4LmGf7w==
X-Google-Smtp-Source: AGHT+IE2UidT0dSQEZFl/DBrLVMTcv/V7Hyr4NbaAg4ASho6vcCFOa1CL/uvwz6IzvxMyHtF7OCOB/UJYOqtx3M8f3U=
X-Received: by 2002:a05:6902:230b:b0:dc2:6496:f41a with SMTP id
 do11-20020a056902230b00b00dc26496f41amr694217ybb.28.1707517860682; Fri, 09
 Feb 2024 14:31:00 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20240209-msm8996-fix-ufs-v1-0-107b52e57420@linaro.org>
 <20240209-msm8996-fix-ufs-v1-4-107b52e57420@linaro.org> <1d67b626-12ef-484b-99e1-d5d6d3571d74@linaro.org>
In-Reply-To: <1d67b626-12ef-484b-99e1-d5d6d3571d74@linaro.org>
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Date: Sat, 10 Feb 2024 00:30:49 +0200
Message-ID: <CAA8EJpo2NpiVz3b7PAPsTYRJDnXwLtYX9=kHgj8Sk99dzmh1fA@mail.gmail.com>
Subject: Re: [PATCH 4/8] arm64: dts: qcom: msm8996: specify UFS core_clk frequencies
To: Konrad Dybcio <konrad.dybcio@linaro.org>
Cc: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>, 
	Bjorn Andersson <andersson@kernel.org>, "James E.J. Bottomley" <jejb@linux.ibm.com>, 
	"Martin K. Petersen" <martin.petersen@oracle.com>, Nitin Rawat <quic_nitirawa@quicinc.com>, 
	Can Guo <quic_cang@quicinc.com>, 
	Naveen Kumar Goud Arepalli <quic_narepall@quicinc.com>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, Conor Dooley <conor+dt@kernel.org>, 
	Andy Gross <andy.gross@linaro.org>, Alim Akhtar <alim.akhtar@samsung.com>, 
	Avri Altman <avri.altman@wdc.com>, Bart Van Assche <bvanassche@acm.org>, Andy Gross <agross@kernel.org>, 
	linux-arm-msm@vger.kernel.org, linux-scsi@vger.kernel.org, 
	devicetree@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"

On Sat, 10 Feb 2024 at 00:29, Konrad Dybcio <konrad.dybcio@linaro.org> wrote:
>
> On 9.02.2024 22:50, Dmitry Baryshkov wrote:
> > Follow the example of other platforms and specify core_clk frequencies
> > in the frequency table in addition to the core_clk_src frequencies. The
> > driver should be setting the leaf frequency instead of some interim
> > clock freq.
> >
> > Suggested-by: Nitin Rawat <quic_nitirawa@quicinc.com>
> > Fixes: 57fc67ef0d35 ("arm64: dts: qcom: msm8996: Add ufs related nodes")
> > Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
> > ---
>
> 3.18 says the clock can even go as high as 240000000

Yeah. I just copied the core_clk_src specs. We can bump the clocks
when this gets rewritten to use OPP tables.




-- 
With best wishes
Dmitry

