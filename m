Return-Path: <devicetree+bounces-91051-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 1D9529479E3
	for <lists+devicetree@lfdr.de>; Mon,  5 Aug 2024 12:33:21 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 96F8DB210A9
	for <lists+devicetree@lfdr.de>; Mon,  5 Aug 2024 10:33:18 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id CA48415442D;
	Mon,  5 Aug 2024 10:33:13 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="LzscwnAe"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-yw1-f181.google.com (mail-yw1-f181.google.com [209.85.128.181])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2851714EC42
	for <devicetree@vger.kernel.org>; Mon,  5 Aug 2024 10:33:11 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.181
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1722853993; cv=none; b=M6xgq0XC1+U3c6bUQIaKjyYQQIvl3O7p4PDf4ZzmTLUGr+iZKLfPE6ZfRzXEEj1+darPzqgJI2YVZWeGAULN1E5nfaDvoyiwPYsXDQ1qoBG08csyq2SNdVTezCR48MXn+JFH2OoH/OvFgXgd1d4D9U+UJIxQGfTYAsCOkcuKAA4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1722853993; c=relaxed/simple;
	bh=aCg8Y7NDdsxbBmImd9uRerZmF7tRLZUEY04gUZ817ow=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=RM+43zcS3GU9Z7jiolTGI0vfpwupG3seUxA925kguY9gjFJLBn+ymNdUda8MzP6tzf+gevzMAVSlcEKXroE3+mZd2t5jTfIXfQ1AOOCFHw+VSr64ZWEIQb+dSGs7whTWctLbc0SVNYJ12sdieRgsW4srCYdrsu7tkM3kaizfnmg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=LzscwnAe; arc=none smtp.client-ip=209.85.128.181
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-yw1-f181.google.com with SMTP id 00721157ae682-66a048806e6so87667297b3.3
        for <devicetree@vger.kernel.org>; Mon, 05 Aug 2024 03:33:11 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1722853991; x=1723458791; darn=vger.kernel.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=aCg8Y7NDdsxbBmImd9uRerZmF7tRLZUEY04gUZ817ow=;
        b=LzscwnAeCjD4FYkC5yo3LvvbRDw+wo9vP077qbgTn6BJHnl/wGemPeZbcXWul3tdgb
         Zi+cwUTLpe3StbSpVbBOa5cYXi+xqy8+eSFZZS7LOSIJo/jbBNyA/P8wMeU262S5uZc+
         25uxquCylRTBEmhn+PSL9HIcGbiYTtXTq7tFSLaHBQe0g9GFR1O3mLDv90aKyWG9d8xX
         ycV0fr1+CU8ArmionVbWTxjPKAMigIasC9eIov63Imjn0+dC1pAqA4mhcRfHpQhCRunu
         CePEvUpOBQSXyWKCjtCzjl4lGJ5SrSuTKhrtmAZUvJPLssGA8EhPQJ/nV2aeIbJ4unVt
         Xrcg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1722853991; x=1723458791;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=aCg8Y7NDdsxbBmImd9uRerZmF7tRLZUEY04gUZ817ow=;
        b=YobZHKhuJfJZ06nuBrtHar5yh7RWnohVcYUYVP5qYpfRzISkIOkF4SBU1UB2RNbg/0
         fAi2KM9rzFS/rnc/QzFBraXhx+oTQEwRuGh6KkhwH4WbemP2UaPZS2qgu/t0zdqJ9ZxU
         MTBz4ePM8N7OHkkkOxJzizQlL9txdOOa/900g+geHc2QAXF7Gv1xDHdruAaLSKXUBLLC
         KCn6l7+Sr7Hv4nSnYWKArHoYK4eDi1I1Y6E6pkvc2wHYUyuaCCJuSPFKLYFFBrCLMHcL
         DC4h+j46DnA8l7e5hRNJWYfyT01Uh1FBTjC0pfzv1dE8BpnX58OTVrLtYTO4TESV5fW3
         3hYw==
X-Forwarded-Encrypted: i=1; AJvYcCVINJIyeinbsU5mvyaaZBViY0XMIS3gtS9HhTse/SLlEbpXnl3MU0A5FPilhxiF+E30dhpLsUn4ojlpS2G5wZo7M3MXRBDuwSpvSA==
X-Gm-Message-State: AOJu0YwNcLySvPongAbFgN3Urtff7F+5u4ezBUHE18SvQDSk/rLPQjqP
	cFeOzZgfXtGKKPiGTbzntccmxTHKe7PKZo+IBDyhUdKUkNlNM/N+yNnLLtAH4OvAr09KwW1pcNm
	vIRkwJL3Fcat3LxroYrJLdSAFmoNiT2wmjP1XFw==
X-Google-Smtp-Source: AGHT+IGGEv61lZA9mh+6DUS9SFPSvDLpedgHfe82sAKsqEu8+0Y0OH2Uh3V5PtPQFVyIyuu+NY/A4IbZiEUJ+kCoNoQ=
X-Received: by 2002:a05:6902:1441:b0:e0b:4e20:b592 with SMTP id
 3f1490d57ef6-e0bde21a393mr13367382276.6.1722853991091; Mon, 05 Aug 2024
 03:33:11 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20240710061102.1323550-1-quic_varada@quicinc.com>
 <20240710061102.1323550-6-quic_varada@quicinc.com> <d454e01f-3d6b-4a02-87cf-3d289bc6957c@linaro.org>
 <ZpeLYG6vegJYZ5Rs@hu-varada-blr.qualcomm.com> <ZqCD3xtkLHbw9BHN@hu-varada-blr.qualcomm.com>
 <iy3l3ybmvllqxtyqq7fifiokxaaedrs22davveel4ikjoqivdm@dinswoc52qpz>
In-Reply-To: <iy3l3ybmvllqxtyqq7fifiokxaaedrs22davveel4ikjoqivdm@dinswoc52qpz>
From: Ulf Hansson <ulf.hansson@linaro.org>
Date: Mon, 5 Aug 2024 12:32:34 +0200
Message-ID: <CAPDyKFoSK4_gRtOY2_pZhT7AytZ4qpZpRTzg5cOrqJj7A22b6A@mail.gmail.com>
Subject: Re: [PATCH v6 5/9] pmdomain: qcom: rpmpd: Add IPQ9574 power domains
To: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Cc: Varadarajan Narayanan <quic_varada@quicinc.com>, Konrad Dybcio <konrad.dybcio@linaro.org>, robh@kernel.org, 
	krzk+dt@kernel.org, conor+dt@kernel.org, andersson@kernel.org, 
	mturquette@baylibre.com, sboyd@kernel.org, ilia.lin@kernel.org, 
	rafael@kernel.org, viresh.kumar@linaro.org, quic_sibis@quicinc.com, 
	quic_rjendra@quicinc.com, danila@jiaxyga.com, neil.armstrong@linaro.org, 
	otto.pflueger@abscue.de, abel.vesa@linaro.org, luca@z3ntu.xyz, 
	geert+renesas@glider.be, stephan.gerhold@kernkonzept.com, 
	linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org, linux-pm@vger.kernel.org, 
	linux-clk@vger.kernel.org, Praveenkumar I <quic_ipkumar@quicinc.com>
Content-Type: text/plain; charset="UTF-8"

On Wed, 24 Jul 2024 at 19:26, Dmitry Baryshkov
<dmitry.baryshkov@linaro.org> wrote:
>
> On Wed, Jul 24, 2024 at 10:02:31AM GMT, Varadarajan Narayanan wrote:
> > On Wed, Jul 17, 2024 at 02:44:08PM +0530, Varadarajan Narayanan wrote:
> > > On Tue, Jul 16, 2024 at 02:15:12PM +0200, Konrad Dybcio wrote:
> > > > On 10.07.2024 8:10 AM, Varadarajan Narayanan wrote:
> > > > > From: Praveenkumar I <quic_ipkumar@quicinc.com>
> > > > >
> > > > > Add the APC power domain definitions used in IPQ9574.
> > > > >
> > > > > Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
> > > > > Signed-off-by: Praveenkumar I <quic_ipkumar@quicinc.com>
> > > > > Signed-off-by: Varadarajan Narayanan <quic_varada@quicinc.com>
> > > > > ---
> > > >
> > > > Could you please confirm [1]?
> > > >
> > > > Konrad
> > > >
> > > > [1] https://lore.kernel.org/linux-arm-msm/57dadb35-5dde-4127-87aa-962613730336@linaro.org/
> > >
> > > The author is off for a few days. Will get back to you once he is in.
> >
> > Have responded to that query. Please see https://lore.kernel.org/linux-arm-msm/ZqCCpf1FwLWulSgr@hu-varada-blr.qualcomm.com/
>
> If it responds to voltage values, please model it as a regulator rather
> than a power domain.

Just wanted to give my brief opinion around this too.

I agree that it seems to make sense to model it as a regulator, but
that doesn't necessarily mean that we shouldn't model it as a
power-domain too.

If it is a power-domain it should be modelled like that - and then the
power-domain provider should be assigned as the consumer of that
regulator.

Kind regards
Uffe

