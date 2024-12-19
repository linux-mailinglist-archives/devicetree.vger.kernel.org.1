Return-Path: <devicetree+bounces-132685-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 1F7279F7C1F
	for <lists+devicetree@lfdr.de>; Thu, 19 Dec 2024 14:14:43 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id D4ECD7A0FE0
	for <lists+devicetree@lfdr.de>; Thu, 19 Dec 2024 13:14:36 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 926822236E4;
	Thu, 19 Dec 2024 13:14:35 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="qSpLqMu8"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-f44.google.com (mail-lf1-f44.google.com [209.85.167.44])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CBBD11BC5C
	for <devicetree@vger.kernel.org>; Thu, 19 Dec 2024 13:14:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.44
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1734614075; cv=none; b=LMPf1uOHOrvmS9tuG+6h4f1tzB2RryHtgzft/ISGHrRDNTgYO/2tAvX1KfzEhkFPt6yfsHG9kzScTT7GPCwczNtRHmpMDSrFyDHYDTXY2ZM3J0PVIibLpIjeEGeGJYerxwSUa4eNJO14NNeDkodbXIh7/Ih6brPLnq3Bzl6rsbg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1734614075; c=relaxed/simple;
	bh=GW2/KJjN04w8khdOlzLuwqCJRH59oP9AEwB8kVbiqqQ=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=hTr2hsZBqJ00J8ESBkCZLm5FYXtz3RKCtUqxfZQDnBqPSh8u3bvP6WtVPGM5Q05vi7aYuuFhkT/aIbPatC43IbB5HyQG/sek9kfHJJPFPru5iIiRaqgEpI5ij7CgK3HS73IlUW7sUJgvPVKFMIg+j1KzWsLyxRcXpjgHFZpLNH0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=qSpLqMu8; arc=none smtp.client-ip=209.85.167.44
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lf1-f44.google.com with SMTP id 2adb3069b0e04-53e384e3481so597792e87.2
        for <devicetree@vger.kernel.org>; Thu, 19 Dec 2024 05:14:33 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1734614072; x=1735218872; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=wDxskw9f45RUSU86hbyjLbbAWKLThzhhQcb+B0wtv7M=;
        b=qSpLqMu8K4IG49Cq9tmONZQmOXmc0VEzoFZ64LDz+k9QI2YtWIz1sAABaBYnEfggNH
         65hWNmxd9NQ6LTN6U5pIh3LFMu3F5vLGu8+YhkWLmX/Wbv6gnXj4g13jOWLuyvJf2LtY
         9ikj031oAUHyY+2phUM94wxKAxSN7DhgZJWc73cpoLsoRck5Bc+BMv7/a//UuAex0CAb
         HyemzHzxNpW4Y493bW1IAr2QG3dAPjRcAFvIxIbSpMaO6yRp524WaEbzCbt3BUOhSl78
         aPTXk6Fk+7QHRyVJoY13XDV7eAwHdCCDkW/kHG5hzTdekjNTLCdtaaJKOG0l1hVs0v3D
         rZMQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1734614072; x=1735218872;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=wDxskw9f45RUSU86hbyjLbbAWKLThzhhQcb+B0wtv7M=;
        b=YCaUUJwPLcbb2EFFM3VYGpFn5wUjDBVmfBf4NtldtKpXuAAMukmibxJdSfYoiK2YE+
         m2P25TjOmTqFMROq/n30IJTJu9yeBhmY9wJy9QZA9glifmCcjMZE85fziYSR2U6TX9av
         Ayf/MoinYvIk+aPH1/g29fHRqYCCeBw7I/RnSmNvvkUNNrBFTyiUsrPazR2ll5tVulTK
         vDJky9sbItTuBh4tFSD7i9aB5nAtlqKrb6u43mPnflUrqCFmmzf8UNWsQ2Kb6S7VUEbZ
         D1qOY4cry8YDZbiOw2lJofCAGq6SgvpKK8Lvc6wV6bSUjWWgiyhHq7ThYgRnI9N2cwRA
         3LJQ==
X-Forwarded-Encrypted: i=1; AJvYcCVy25AIVdFbye0RGyw59VwB/VaYFfxHgZipGOMhtNpc7TpQPcRLr+iY0RWPTh3OKfSbxroKHqirHiRD@vger.kernel.org
X-Gm-Message-State: AOJu0YyT+Kwas7ZGGqIn6aTNHViOr/h+0SCcQYfGqKx4aDBK/U2FMSo8
	Z4DFbHtWrlAg7QCK3QNpOSxZ6ExZLn232PeQIaO3jIazHTuo+GYJ9pzEw3SUmRI=
X-Gm-Gg: ASbGnctx1HVgipyC6uI+sIKAKfNememYJKkHsWtGHFXK/94M0YR/L3cDxfuHyp29DZz
	AcgAbjcMZC8IwpYvjd55HLHnOADoNVPO1neztfqXpQo4UAXPsjrmt9ftEYVYY9qxIOp6nk2UvVe
	3EuBYuneBx7mR6l+2Q34t0z3frg6wVfZt4U6kPvATJ7LWX1Fm0HfKfPY6thU6DFciltqYjZwzVo
	QBjKOgd20IEOyuJNiTuHgQ3XKGIeKRxltFaCNefO9E8me6Mn2leH30F+3kk0LswMrCEmqjkOTaR
	bkhpSFYKp5OIISO0059Qq5ieB9FmO9ngmB5x
X-Google-Smtp-Source: AGHT+IF8AisnJgwFnkXU6DRymHTDSjq7pbCiGElXFGrbjnm7/GAEX/1jFZfMnRkeNxN9xRJqY8ZIsg==
X-Received: by 2002:a05:6512:1281:b0:540:3566:9744 with SMTP id 2adb3069b0e04-541e674c7f4mr2120568e87.21.1734614072005;
        Thu, 19 Dec 2024 05:14:32 -0800 (PST)
Received: from eriador.lumag.spb.ru (2001-14ba-a0c3-3a00--b8c.rev.dnainternet.fi. [2001:14ba:a0c3:3a00::b8c])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-542238216b5sm168924e87.182.2024.12.19.05.14.29
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 19 Dec 2024 05:14:30 -0800 (PST)
Date: Thu, 19 Dec 2024 15:14:28 +0200
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
To: Prashanth K <quic_prashk@quicinc.com>
Cc: Bjorn Andersson <andersson@kernel.org>, 
	Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Krishna Kurapati <krishna.kurapati@oss.qualcomm.com>, linux-kernel@vger.kernel.org, linux-arm-msm@vger.kernel.org, 
	devicetree@vger.kernel.org, cros-qcom-dts-watchers@chromium.org
Subject: Re: [PATCH v3 00/19] Disable USB U1/U2 entry for QC targets
Message-ID: <h4e5jmbglic5aa5e3fyqr3elvso2lotekafqhu7v3h56nbfwf2@qq7lqpptyrai>
References: <20241218102707.76272-1-quic_prashk@quicinc.com>
 <nvhrhnfls2i4sb6rrlax2dh3hf5thfttrq54bgug2jc7ol26rj@cnk5dtampfes>
 <e15bc97d-eef3-4e49-badf-5b3afbc113d9@quicinc.com>
 <3h2ur3wv3tso3qxv4ws2af4vmvdjdpvhax5smngszaaaotvgku@bo2q5cmhds2z>
 <d6d176ac-e08a-4877-a5de-83e8b070fe47@quicinc.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <d6d176ac-e08a-4877-a5de-83e8b070fe47@quicinc.com>

On Thu, Dec 19, 2024 at 09:47:12AM +0530, Prashanth K wrote:
> 
> 
> On 19-12-24 08:37 am, Dmitry Baryshkov wrote:
> > On Wed, Dec 18, 2024 at 05:18:50PM +0530, Prashanth K wrote:
> >>
> >>
> >> On 18-12-24 04:57 pm, Dmitry Baryshkov wrote:
> >>> On Wed, Dec 18, 2024 at 03:56:48PM +0530, Prashanth K wrote:
> >>>> Enabling U1 and U2 power-saving states can lead to stability and
> >>>> performance issues, particularly for latency-sensitive or high-
> >>>> throughput applications. These low-power link states are intended
> >>>> to reduce power consumption by allowing the device to enter partial
> >>>> low-power modes during idle periods. However, they can sometimes
> >>>> result in unexpected behavior. Over the years, some of the issues
> >>>> seen are as follows:
> >>>>
> >>>
> >>> [..]
> >>>
> >>>>
> >>>> This series was earlier started by Krishna Kurapati where he disabled
> >>>> U1/U2 on some SM targets. I'm extending this to more devices including
> >>>> Auto, Compute and IOT platforms. On a side note, this quirk has been
> >>>> already included on some mobile targets like SM8550/8650.
> >>>
> >>> Why are you resending previous patches rather than adding another series
> >>> on top of it?
> >>>
> >> Hi Dmitry,
> >>
> >> RFC had only one patch with quirks (to disable u1/u2) only for few
> >> targets (SM8150, 8250, 8350, 8450). It was later decided to split it
> >> into per-file commits as per the review comments. Hence I clubbed
> >> Krishna's changes along with few more targets. Let me know if this needs
> >> to be changed.
> > 
> > No, it's fine. The text in the commit message lead me to a wrong
> > conclusion.
> > 
> Ok sure.
> >>
> >>>>
> >>>> Changes in v2:
> >>>> - Removed the wrongly added quirks from tcsr_mutex node.
> >>>> - Link to v2: https://lore.kernel.org/all/20241213095237.1409174-1-quic_prashk@quicinc.com/
> >>>
> >>> What was changed in v3?
> >> It was supposed to be "Changes in v3" instead of v2.
> > 
> > Then where is a changelog between RFC and v2?
> > 
> > Please consider switching to the b4 tool, it handles such issues for
> > you.
> > 
> Ok, Should I send a new version updating the cover letter?


For now you can provide data in the reply. Just make sure to include it
in the cover letter if the patchset gets reposted.

> >>>
> >>>>
> >>>> Link to RFC:
> >>>> https://lore.kernel.org/all/20241107073650.13473-1-quic_kriskura@quicinc.com/#Z31arch:arm64:boot:dts:qcom:sm8250.dtsi
> >>>>
> >>>
> >> Regards,
> >> Prashanth K
> >>
> > 
> 

-- 
With best wishes
Dmitry

