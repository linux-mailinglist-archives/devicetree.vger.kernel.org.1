Return-Path: <devicetree+bounces-117014-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 2D8A69B4A6D
	for <lists+devicetree@lfdr.de>; Tue, 29 Oct 2024 14:01:15 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id E6A36284633
	for <lists+devicetree@lfdr.de>; Tue, 29 Oct 2024 13:01:13 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 07EC0206E69;
	Tue, 29 Oct 2024 13:00:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="oW2lHViS"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-yw1-f177.google.com (mail-yw1-f177.google.com [209.85.128.177])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CBC39DF78
	for <devicetree@vger.kernel.org>; Tue, 29 Oct 2024 13:00:30 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.177
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1730206833; cv=none; b=MTSgaKX3hrHi8sJG+loTIyIF0RHndCUYvTIhAP/Yb25nTu4iPqpJd3I6+JHQChQDTLslTqE522nwTgwE7LbRzju82BcGf5zj2QDYBRr5j+i1ZA72NPR2agxDQK642jKNOTnMEyhwrrmjU5FaVJQZd9NSlaMY9iXTB4MlLD5c61I=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1730206833; c=relaxed/simple;
	bh=YmsNP2KTqCdcVBZwhpdMQVUtMGwCTgWv9lgMj09bDmQ=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=lzN/na2ucDpwZ42PNfNHZjq/BovuNFRYMnPnOebqYpZrPKeTl7reSFF+Mod21iphwST3XB+scn95AdW1oDNxotOLIFKV+D+ifaxmXXCRiwla2RYE3v2LDQDc+R0amkSv/JpPEzReT233KjPeqBBw7em4BYPLt2TesqW2SmnCyHs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=oW2lHViS; arc=none smtp.client-ip=209.85.128.177
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-yw1-f177.google.com with SMTP id 00721157ae682-6e5ef7527deso59277547b3.0
        for <devicetree@vger.kernel.org>; Tue, 29 Oct 2024 06:00:30 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1730206830; x=1730811630; darn=vger.kernel.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=9olNTqPKz+laBr1M4W4FfYgdBmMaq3StAwgPxtx+j7k=;
        b=oW2lHViSpLynLEx+DitscPf9Awes0YbKqNwqtqR/JTXe4OTxJb7JgCTIfG7OZ23Omj
         rjnS5WBGNLja1aidolRbxoanaVTp49MfZcW6jHt5cf8blSuRa4tio2UoUSMVy4EZEyrG
         PBwopp7xYG4gSaTFRBDsBg63xj+YqbBmU2xbeYRWy/BgXcX112T7h4rF7doBakpZB6OA
         3dq2f2nwSeznfZu/kmD+ju1+0k4VctpkCUO6cxb7qtImXiDCwUOkey/SNaNCgryQ2PcI
         hkfDWGVT+rOsQxqE70sepG335ypXklUwQVoHUVCusb2lcihEL9Hu3859tW39mMWx0gtf
         ynTQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1730206830; x=1730811630;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=9olNTqPKz+laBr1M4W4FfYgdBmMaq3StAwgPxtx+j7k=;
        b=rtsu+gzNOpSh8AvdI8sXFddafU0FZUwoM//216paeEy3QTnvqVRcu9Bm4p+aR7WH7C
         fyhZ9YVmJV6z9l9nn2ein+T57RbQLp0yzHDYW1Gv24xl4LKZmKHSwdSDbPYORHmMhoGj
         gg8nAQL+H5WbRE5yVHaPOXqhnTx54cgMLvt/mYtQUwcjMntYIGsAnXaa+hv/2IkvhS4T
         xABgilx8rDcte0x1ZyIBHI/OOpmPyqSgcYaeEpJXxAaEtjZ4H1LHZrTzNja/5mxSE9Ap
         JNpJyejfPWUtcxxR5cCkX0wwwHnfbufkFtJwnV4CeFhEZ50T44xGYZh9kvCm/yqimluZ
         zGOA==
X-Forwarded-Encrypted: i=1; AJvYcCXijB2c3dyQXhDKPx8THPhfzeOVfEruTUlaP+d+q5AkWvIRAYACVkbZj/ypgBpgrEPnJu8zozQfHJOJ@vger.kernel.org
X-Gm-Message-State: AOJu0YzffFJDarIlNm4nY7D+J3VS8pGjPdM28QnMYIGYc0Wb+YpW9xGk
	67QYewNhlx6AQRHK3G8mDYb5m6IlM1vOisUbDr0QPK2kptHYrEjWGmmFLp2RKs30hpmI/DLVSjI
	BXc227wGYSx4/BBHXPsKLikC2nTWMi+EssHp9iA==
X-Google-Smtp-Source: AGHT+IFbKndRQHp+7RzFAeO0rylRtbyrpK9kh0Zw4o5eR2NycLUcgLYSm3N60gfqGUIcaqo/gsLqHGbK1ZMtf/8ZCd0=
X-Received: by 2002:a05:690c:385:b0:64b:5cc7:bcbc with SMTP id
 00721157ae682-6e9d8aa8014mr135400007b3.32.1730206826513; Tue, 29 Oct 2024
 06:00:26 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20241008112516.17702-1-quic_mukhopad@quicinc.com>
 <20241008112516.17702-3-quic_mukhopad@quicinc.com> <zluuezrywecffsh3f7yzrtvd2sa3nyzl52sk6bluvjch5icvuu@noecozosseko>
 <e7543055-316e-447e-ab0e-15d2fdd19dca@quicinc.com> <CAA8EJpqcnxbZAUJm0fdbQNjZ3Dw189oDMkC+0pMLz1XGO7HhnQ@mail.gmail.com>
 <fad3508a-bb02-4162-8803-fba5de25e752@quicinc.com>
In-Reply-To: <fad3508a-bb02-4162-8803-fba5de25e752@quicinc.com>
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Date: Tue, 29 Oct 2024 15:00:11 +0200
Message-ID: <CAA8EJprTc=kviF=MYQFqnE4g0Xk+jmT96=ihm3D75Me1Yw-WQA@mail.gmail.com>
Subject: Re: [PATCH v2 2/2] arm64: dts: qcom: sa8775p-ride: Enable Display Port
To: Soutrik Mukhopadhyay <quic_mukhopad@quicinc.com>
Cc: andersson@kernel.org, konradybcio@kernel.org, robh@kernel.org, 
	krzk+dt@kernel.org, conor+dt@kernel.org, linux-arm-msm@vger.kernel.org, 
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
	quic_riteshk@quicinc.com, quic_vproddut@quicinc.com, 
	quic_abhinavk@quicinc.com
Content-Type: text/plain; charset="UTF-8"

On Tue, 29 Oct 2024 at 08:08, Soutrik Mukhopadhyay
<quic_mukhopad@quicinc.com> wrote:
>
>
> On 10/28/2024 3:15 PM, Dmitry Baryshkov wrote:
> > On Mon, 28 Oct 2024 at 10:49, Soutrik Mukhopadhyay
> > <quic_mukhopad@quicinc.com> wrote:
> >>
> >> On 10/8/2024 5:46 PM, Dmitry Baryshkov wrote:
> >>> On Tue, Oct 08, 2024 at 04:55:16PM GMT, Soutrik Mukhopadhyay wrote:
> >>>> Enable DPTX0 and DPTX1 along with their corresponding PHYs for
> >>>> sa8775p-ride platform.
> >>> What is connected to those DP lanes? If they are routed directly to the
> >>> DisplayPort connectors, please add corresponding devices (see
> >>> dp-connector).
> >>
> >> We are defining the functionality of gpio101 and gpio102 as "edp0_hot"
> >> and "edp1_hot"
> >>
> >> respectively. This ensures that the hot plug will be directly routed via
> >> the display interrupt
> >>
> >> line "mdss0" to the display port driver and no external dependencies on
> >> dp-connector is
> >>
> >> necessary.
> > Please describe the hardware, not the driver necessities.
> > If the board has a DP connector, please add the node. E.g. it allows
> > one to specify the label and the type used by the connector.
> >
> > Also could you please fix your email client so that you don't have
> > strange/unnecessary line wraps and empty lines?
>
> Addition of DP connector node with the hpd-gpio property does not allow
> hpd to be detected since the gpio
>
> 101/102 have the "edp0_hot" as function. If the hpd-gpio property is
> removed from the DP connector node,
>
> the probe of DP connector will fail.

No, it wont. It uses devm_gpiod_get_optional(). And if it does fail,
it is a bug which needs to be fixed.

And please, fix your email client so that it doesn't insert stray empty lines.

-- 
With best wishes
Dmitry

