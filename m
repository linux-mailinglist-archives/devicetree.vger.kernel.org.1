Return-Path: <devicetree+bounces-34186-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id E4CDB838F67
	for <lists+devicetree@lfdr.de>; Tue, 23 Jan 2024 14:09:07 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 2415A1C273DC
	for <lists+devicetree@lfdr.de>; Tue, 23 Jan 2024 13:09:07 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 9DB565F858;
	Tue, 23 Jan 2024 13:07:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="B3hjJOW7"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-yw1-f177.google.com (mail-yw1-f177.google.com [209.85.128.177])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1DE775F865
	for <devicetree@vger.kernel.org>; Tue, 23 Jan 2024 13:07:52 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.177
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1706015274; cv=none; b=TMFC2V6RUVXo3F/v5ztsRFTUWwGWBaDt/9ki03rUyjgQ2GVbe8OPBDoW9Gk/4qmYRQNO9ZipW8i3XVl6xUlc0Bjt+qyJNWNY3XWy+vPBOncCCCYo81wQbVebieFndRp+kNe9vw3yePqFD+ck5StX+Gb1ze/3fGWwSjl3zgiWX2Y=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1706015274; c=relaxed/simple;
	bh=nENCJzfg8kLaw+xOwN6nVFSakH5k6qwqeLnp2qI/5W8=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=NiT4XTx8yZO/iQTYHQZ59+6WceVH5pg1C6/z0ugHi1B/UH9NdEqpRcLEBQbRTf+LCQ+3mTrBGEj1beX112TH+5xvgF9FJrqB6k90LZ681BWW1gmgV0HCL3gV3BBQ7r7LSbJ5qtT1swIJB0xsrJOHJMMUabWuQc9aBU7Y08w4xbo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=B3hjJOW7; arc=none smtp.client-ip=209.85.128.177
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-yw1-f177.google.com with SMTP id 00721157ae682-5f0629e67f4so44594387b3.3
        for <devicetree@vger.kernel.org>; Tue, 23 Jan 2024 05:07:52 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1706015272; x=1706620072; darn=vger.kernel.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=0h+KxHo6zyFelz9bwRo7wSwVd6I2bFGua0EClSwuRfg=;
        b=B3hjJOW7By6jVRqpTYX8c/q92zWdSmFRr60FkRvBBPQoXrV//LmUOjR24RiNJGhObj
         xIvxR2T5MyAj5tPZvDLisOGI7c8dvi1M34QPDKiTEBwiJftl0OcCybpQAPNjPyRWDrhJ
         LrlfHomCjxSCo/T8q2AdXXJXwjRNCR0UOmk5hK18NcV+ElFAgISAt35fICWg6e5e6p53
         xEDhNj97v4/YnMaJJ0aEN3aJtnLNkC7tOyXKIa9h5nUbncYeYZl/5iFc6BgzM3/7YJHC
         pc6Ey+skJeFKkgu4aYsWKzs279hqnuy6ocBtIaz39Y2yQXnAg18rqObS1eWOxJxfDhI6
         F/Vw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1706015272; x=1706620072;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=0h+KxHo6zyFelz9bwRo7wSwVd6I2bFGua0EClSwuRfg=;
        b=sWam0Bv3VRP1gzKRxhC7SnNWrvlT2MVIgdxGfPUaGhVZ3M9x4sFF70qiBfjRDSrfk2
         +Fy1n6MlSm9uOOU8tApPxpAZ1Mvno9O1gRpUOhTJoXq3fhrTStf8EPFppXNDi7jegu9T
         6/e2HDY5kFvk3sIa5KR51AJKSDh3/JA8L5Chywq6bkH4pzD7MPmexukvZLhZk5WGBhYg
         Tb/NLEa+gconYLJWB2N28zWI3GDMXuocxSbUj01Cs/ERNmHqOugJaueiop+e5Q5+ENT4
         6rexzS2jPIW05Bmb/9V9vDqSHllRmitRws8QM7kxAhO+TwI0Sui91yeIMFc6q44Ab9WQ
         Sh9g==
X-Gm-Message-State: AOJu0Yzq2rJiiUw087tF7/yYu1hMYyDpa8o6lohivvHbDr4QQPRvNNAZ
	eoIvamntP5fGAXMfVdBukKRhcXlE0j3ApSHEh2NRrWUdcxu3yG1FuqbhShOBZJ6Psd9WKY9X3Ge
	wTQKiIkYlOonGHJOp8jtyTqHLOHJpSi+hAmVuWA==
X-Google-Smtp-Source: AGHT+IH40SsVqCfKV7MCl5J25tlYVLHihl6geu98LpF3DgLOVi45HGE/066ut55wd5gnxEztUyh8umbJBgplDyJU0jA=
X-Received: by 2002:a0d:e647:0:b0:5e9:dca:1b14 with SMTP id
 p68-20020a0de647000000b005e90dca1b14mr5063978ywe.7.1706015272184; Tue, 23 Jan
 2024 05:07:52 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20240116094935.9988-1-quic_riteshk@quicinc.com>
 <20240116094935.9988-3-quic_riteshk@quicinc.com> <CAA8EJpp3WJ8132aB-tyzJPXsdczvQC+TvKemm9NvUNYNrEntow@mail.gmail.com>
 <b9012927-b357-4875-9e8e-90df5cc8d8bb@quicinc.com>
In-Reply-To: <b9012927-b357-4875-9e8e-90df5cc8d8bb@quicinc.com>
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Date: Tue, 23 Jan 2024 15:07:41 +0200
Message-ID: <CAA8EJprdCdTVbL_vXWhcEVKgOwZHNCPfg8DPz8Ob01hnVcHRtg@mail.gmail.com>
Subject: Re: [PATCH 2/2] arm64: dts: qcom: qcm6490-idp: add display and panel
To: Ritesh Kumar <quic_riteshk@quicinc.com>
Cc: andersson@kernel.org, konrad.dybcio@linaro.org, robh+dt@kernel.org, 
	krzysztof.kozlowski+dt@linaro.org, conor+dt@kernel.org, 
	catalin.marinas@arm.com, will@kernel.org, quic_bjorande@quicinc.com, 
	geert+renesas@glider.be, arnd@arndb.de, neil.armstrong@linaro.org, 
	nfraprado@collabora.com, m.szyprowski@samsung.com, 
	linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
	quic_abhinavk@quicinc.com, quic_rajeevny@quicinc.com, 
	quic_vproddut@quicinc.com
Content-Type: text/plain; charset="UTF-8"

On Tue, 23 Jan 2024 at 14:43, Ritesh Kumar <quic_riteshk@quicinc.com> wrote:
>
>
> On 1/16/2024 3:28 PM, Dmitry Baryshkov wrote:
>
> > On Tue, 16 Jan 2024 at 11:49, Ritesh Kumar <quic_riteshk@quicinc.com> wrote:
> >> Enable Display Subsystem with Novatek NT36672E Panel
> >> on qcm6490 idp platform.
> > Is this panel always present on the IDP board or is it an optional
> > addon, like the panels for all the RBn boards?
>
> This panel is always present on the IDP board.

Ack, please drop the gpu chunk, fix other review comments and send  v2.

>
> >> Signed-off-by: Ritesh Kumar <quic_riteshk@quicinc.com>
> >> ---
> >>   arch/arm64/boot/dts/qcom/qcm6490-idp.dts | 100 +++++++++++++++++++++++
> >>   1 file changed, 100 insertions(+)
> >>


-- 
With best wishes
Dmitry

