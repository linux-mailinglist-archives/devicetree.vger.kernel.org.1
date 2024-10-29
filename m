Return-Path: <devicetree+bounces-117019-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 075E19B4A9C
	for <lists+devicetree@lfdr.de>; Tue, 29 Oct 2024 14:08:06 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 38E411C225FE
	for <lists+devicetree@lfdr.de>; Tue, 29 Oct 2024 13:08:05 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 8ABE21EE017;
	Tue, 29 Oct 2024 13:08:01 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="ypGWqM0X"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-yb1-f181.google.com (mail-yb1-f181.google.com [209.85.219.181])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 70A06C2ED
	for <devicetree@vger.kernel.org>; Tue, 29 Oct 2024 13:07:59 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.219.181
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1730207281; cv=none; b=MTJPSbyseyRGY+4MRfphnP1kjXtaMYonCw/AL7PyfiECIn7EpLlWi4MvaeS5/S5giFG6XW9WF/BNchvBiaG7dA4m6/V5U6OFgFdzrEgNOF0tDEcgyO6YF0z057FizzmhqydyQefplE7y5HOTerD0/OJ9saHIhBqmCmbz+gYUx/8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1730207281; c=relaxed/simple;
	bh=85Ye0r9TZOBVlQMo4R1ybVd4JlhVObsGwckkiekjpnM=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=M97nCyTR0H0FX9NJNxJZ1qa+pfrLxIEJykwiYe0bHtjm/3zEAxFxSEefonMJxoM6UJfLyvyeQTwIwo5vypSJk8HM7c8D6YV0zsKtkKhEXKWkHaQWFlfb8ArNio1wM2rgS9B0M6k6hGAEZwtyrbFjmfSK+3yhufyS18nMhhv8kAQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=ypGWqM0X; arc=none smtp.client-ip=209.85.219.181
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-yb1-f181.google.com with SMTP id 3f1490d57ef6-e2e444e355fso4816115276.1
        for <devicetree@vger.kernel.org>; Tue, 29 Oct 2024 06:07:59 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1730207278; x=1730812078; darn=vger.kernel.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=KXHekSwgT6SRlnWvXoVmeTYgjWGAZcjIx97S+vgepj0=;
        b=ypGWqM0X/r6N9XIEbO8nAzX9LxzWTJZ5r3QZ8F72pI/0qhlx2sh26kzvz4NFNpOcts
         gQVwkNROD4du3bvfYAFb7v/xLHd0OKRKKMziqjv+G/E+zmT5yJBY46SqhZiED5MTtszT
         aGMW6CSNnk8dWBbrCdPu5L9Cn4y4jiGd0a1iAsdghVtLWSLWfq5oSiI1H97V9cBxS6qv
         e4dD3KJMd6ZuOjA1Zvj8k5CCN1S1edOYpNjfcXEU9GE3n7ccnEAuODgSraa/z9Hp/zf0
         u+MttfZRf5AOVxQrO3++8MFwpNsBz0N3nRUdrM5k8CIQ/QHe0TodqJOb+RpF7aFX0p8g
         Ce/Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1730207278; x=1730812078;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=KXHekSwgT6SRlnWvXoVmeTYgjWGAZcjIx97S+vgepj0=;
        b=VaMJYhld/mgq53x7KkSEHAz7HwrZqtukeq3ygrzwSzxwyXS4itHEP2Lf8PgyGQWJnI
         Dpbp9o6q8pOc/bNdt6G44GA+XC/wYnLNY2fesnp8msTnwN5E3ARJ44S4wkdxt6IiMV4V
         8u/y6Mft3JplHa4W9Wg8s16lLd+R5uqwTVPMLCddViD+4eHGcMxfACwcLDfPUbgcdTsv
         YGXBON3hILJuVeMRqzyJMg1GAQ+SdZT3aVdWOEOizf+77Spvc9FKvwhJug5BNRfDo5aH
         0AB12+FUJbfs08spf4QWZgAiy9KlFWHyKLMA3l4kPX1V6mw4BxOTwJLMT/HUgTOljU3v
         H/Yg==
X-Forwarded-Encrypted: i=1; AJvYcCUauNSFl1PGCFVPOzg/IWSLtCOfpyMyusB/ovqIQ3uTqsAqyePGav86yswWbLbN0ox/7Mao58d/5GT+@vger.kernel.org
X-Gm-Message-State: AOJu0YyngmaKL1cIKLiFNFJ/38nSqB7o0EfUVtx/ubdc/VlM6WbKvF8m
	9ZHgzZ8DhTEZ0N5b4YOipOr23bTciR5j5+c7EOeDDOSAi5Z9pw9VqWPsZNVy7kdjyxzKMAWkN+q
	psp8nWzit53wi/QZhV2DKfLzTy8tHJXSEXODCFw==
X-Google-Smtp-Source: AGHT+IHj9OTlxdJR8GjjT0lj9iYWjEfWV85e5BvOY8AhmVekrLVQxaevX3rMPvyJoLnemY99zIOi0kIpjYdxeNaL9eA=
X-Received: by 2002:a05:690c:488a:b0:6e3:c92c:1d57 with SMTP id
 00721157ae682-6ea2b66687dmr12809857b3.2.1730207278483; Tue, 29 Oct 2024
 06:07:58 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20241028-adds-spmi-pmic-peripherals-for-qcs615-v3-0-f0778572ee41@quicinc.com>
 <20241028-adds-spmi-pmic-peripherals-for-qcs615-v3-2-f0778572ee41@quicinc.com>
 <j4ggfrynyoriseef5r5x6uwgo6cespll2np7uitc64yagoa6pz@r3ro2cpqrrry>
 <38cceae8-5203-4057-bd8b-f20fe3656474@quicinc.com> <ZyBF3ygQnIdr/k/N@hu-bjorande-lv.qualcomm.com>
In-Reply-To: <ZyBF3ygQnIdr/k/N@hu-bjorande-lv.qualcomm.com>
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Date: Tue, 29 Oct 2024 15:07:47 +0200
Message-ID: <CAA8EJpp27RJa=6s2W6ks0aeaDONkYXq6xetSbepF7zR4zrFnWQ@mail.gmail.com>
Subject: Re: [PATCH v3 2/2] arm64: dts: qcom: qcs615-ride: Enable PMIC peripherals
To: Bjorn Andersson <bjorn.andersson@oss.qualcomm.com>
Cc: Tingguo Cheng <quic_tingguoc@quicinc.com>, quic_fenglinw@quicinc.com, 
	quic_tingweiz@quicinc.com, kernel@quicinc.com, 
	Bjorn Andersson <andersson@kernel.org>, Konrad Dybcio <konradybcio@kernel.org>, 
	Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"

On Tue, 29 Oct 2024 at 04:18, Bjorn Andersson
<bjorn.andersson@oss.qualcomm.com> wrote:
>
> On Mon, Oct 28, 2024 at 04:40:36PM +0800, Tingguo Cheng wrote:
> >
> >
> > On 10/28/2024 4:23 PM, Dmitry Baryshkov wrote:
> > > On Mon, Oct 28, 2024 at 04:03:25PM +0800, Tingguo Cheng wrote:
> > > > Enable PMIC and PMIC peripherals for qcs615-ride board.
> > > >
> > > > Signed-off-by: Tingguo Cheng <quic_tingguoc@quicinc.com>
> > > > ---
> > > >   arch/arm64/boot/dts/qcom/qcs615-ride.dts | 15 +++++++++++++++
> > > >   1 file changed, 15 insertions(+)
> > > >
> > > > diff --git a/arch/arm64/boot/dts/qcom/qcs615-ride.dts b/arch/arm64/boot/dts/qcom/qcs615-ride.dts
> > > > index ee6cab3924a6d71f29934a8debba3a832882abdd..37358f080827bbe4484c14c5f159e813810c2119 100644
> > > > --- a/arch/arm64/boot/dts/qcom/qcs615-ride.dts
> > > > +++ b/arch/arm64/boot/dts/qcom/qcs615-ride.dts
> > > > @@ -6,6 +6,7 @@
> > > >   #include <dt-bindings/regulator/qcom,rpmh-regulator.h>
> > > >   #include "qcs615.dtsi"
> > > > +#include "pm8150.dtsi"
> > > >   / {
> > > >           model = "Qualcomm Technologies, Inc. QCS615 Ride";
> > > >           compatible = "qcom,qcs615-ride", "qcom,qcs615";
> > > > @@ -210,6 +211,20 @@ &rpmhcc {
> > > >           clocks = <&xo_board_clk>;
> > > >   };
> > > > +&pon {
> > > > + /delete-property/ mode-bootloader;
> > > > + /delete-property/ mode-recovery;
> > >
> > > Why?
> > Because boot modes will be supported on PSCI module from another patch,
> > reboot-modes are required to remove from PMIC side.
>
> That implies that the reboot mode implementation is device-specific, if
> so we should probably not define them in the shared file.

Most likely. Let's collect some more data points first. It's probably
not worth doing that just for qcs615-ride, I'd like to check how it is
really handled on the SAR platform.

-- 
With best wishes
Dmitry

