Return-Path: <devicetree+bounces-140932-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 43C9EA1C78B
	for <lists+devicetree@lfdr.de>; Sun, 26 Jan 2025 12:39:17 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 689241887CD0
	for <lists+devicetree@lfdr.de>; Sun, 26 Jan 2025 11:39:21 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 2D01F14AD20;
	Sun, 26 Jan 2025 11:39:13 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="XSJTIfQO"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-f41.google.com (mail-lf1-f41.google.com [209.85.167.41])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2C02284D29
	for <devicetree@vger.kernel.org>; Sun, 26 Jan 2025 11:39:10 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.41
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1737891553; cv=none; b=QEZqUUlPm0W4B/AhFq+c4m14KSIKF2kiBv2W64TfSIK60Fu2U7peWk7NNRCM26N375vk2Wn8lI80RxHW6MWWUNKfsC6p+5HYQrtjdZBh6e2ORHszrMM6GjPJDATMjT5bAwCjNl8Zb6qj93mtm3OETRmz8fREAqGR5bzpiLQ7h6c=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1737891553; c=relaxed/simple;
	bh=Vcvl+jjlmmvw9f0BXdc7GAb6boRiVFapSbGNQ8KJ43E=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=aEk4VpIWINHh7O02+HHgR7+DlgmHwV+KvZkzyuFN+LatJEuAEj5gWQ34SWbSQzdKJlgMRG25CXuA4smSAEM5TSelGgUNRhBW71+bA/SyFgxXXTzOujfiChZPYEc2Vfj9+YkP3DRqAeI8yxuHaH+T9qAyiNnxJghbw4JIpA6AqSo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=XSJTIfQO; arc=none smtp.client-ip=209.85.167.41
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lf1-f41.google.com with SMTP id 2adb3069b0e04-5401e6efffcso3940848e87.3
        for <devicetree@vger.kernel.org>; Sun, 26 Jan 2025 03:39:10 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1737891549; x=1738496349; darn=vger.kernel.org;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:from:to
         :cc:subject:date:message-id:reply-to;
        bh=m3Z4T8xpTA0ju5YKhedGkcsXKqlbXo5WcnVj25PggZw=;
        b=XSJTIfQOGoaBU3VjLRxOQ5DB4FSeBrDdRkFWLK73nzfiSWFdQwOFoOun79NjN2nFmN
         2VxahfHLmDto3VyInagU9TMOgirldZ1X4q4KcEte7/IcwdpMx5zTSZ9Z2MUv/PxmnfMV
         YkeHJ4nD4wljAQvw9CK5aB4cfqxQKSxz7eLQVOmk9wXiWYHOW07cU5gTvVa2+N0eWqNx
         6XILaIod74PIq/wdGZ6FvBuBGFrJWZWfRnsonAjsaUFhZgWi2bc+r7AvXVLHxatFGaqL
         j0ac7oXbU3er8G4qtE5B60Wx7kO2KFU0AqzTemtiyA5CbRaQ0V0JpYcSkZwAfUBgeC0w
         Ko+Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1737891549; x=1738496349;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=m3Z4T8xpTA0ju5YKhedGkcsXKqlbXo5WcnVj25PggZw=;
        b=vdfThamUViM8KMT1nYLEdHr3XhPIUIRsN2kbCQZzRvhN3YaxJI9vfOl/omtakGD/nV
         6P7f3FhehufGrjzKjYaVqxRWf9VcFWB4rEGGtzP6/JdygKSp+R7mgMkoea8FnpXu8N6o
         5GOVdrTo6n53tiWYhoESOPBI7jUjbHfDqUwsM5y3r9blpEwziepQqjfZyIdeA7R+kXyu
         PtMv0uyaJ6ZdCMt/vjn0af60n89rcVEKHyHnN0764wN9wyZyLptCtQSiHmSFy0pdLdVc
         XBECtg0CONDltqSauQkJXJ4PrEE1v123U5bJ9uym+viBGDFmHMNhVSFBp3y7j7d29Lm3
         dM9w==
X-Forwarded-Encrypted: i=1; AJvYcCU2SXM0HV80IWvU6JC4Lze4J91+VUwUakaj2nErk7ZgAzJ5SiH6icVTN7VgdRIKF8sLpK16VlQ0Egc2@vger.kernel.org
X-Gm-Message-State: AOJu0YxE0Ym+gToqJ2gZirMyfvPQC2eLcLcM/iPMqBiknlJ35Ai+j1oJ
	R5bH35vTn4NondsSUJeaQgoD2VEVDYXGp7Um0yAGZXckgC5hX+KwGAvsyrGVFEI=
X-Gm-Gg: ASbGncufcBeEbguNdtLHr9Jr5eV+/dqF/2RoekK+zaXIafQhJUXheojn5uFZsp72mYO
	qzGh8rccpWtw4h6IDoUd/xM6ZFMIU7Q2PT28PC+28KVFT/HKWF1asEv/uTlsRsN/furGBLTMh6g
	7t2yOlJi99f0EW1krMetrGR+uLpWpPebzYLYsh6YnuIVfBgOVuitMiNvzHYjJl/JjqIWMEkk+/p
	Ow7/BlePY6sey1Okyhpr5uk2JonDqySXoQzJ4YfWAAFKpRAALZWfBGqDhjVdp5i3ylIVoG2Yxi5
	JnpIh3v/eSdB3u7AXbC12r89k8Q+TL1hKhTsy9cdoCpTaDj72ootWFtCTHV1IIrn2byHfYg=
X-Google-Smtp-Source: AGHT+IGMHz3yK8zw+JbmUqjlC1MUV7n1Bow+QOgrcHWxA5uT+4qGx15AKrfg0wrgyvIOzYzTx823pA==
X-Received: by 2002:ac2:5225:0:b0:542:241e:75ae with SMTP id 2adb3069b0e04-5439c22d82emr10805896e87.9.1737891549075;
        Sun, 26 Jan 2025 03:39:09 -0800 (PST)
Received: from eriador.lumag.spb.ru (2001-14ba-a0c3-3a00--b8c.rev.dnainternet.fi. [2001:14ba:a0c3:3a00::b8c])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-543c822f785sm910462e87.75.2025.01.26.03.39.06
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 26 Jan 2025 03:39:07 -0800 (PST)
Date: Sun, 26 Jan 2025 13:39:05 +0200
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
To: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
Cc: Konrad Dybcio <konradybcio@kernel.org>, Vinod Koul <vkoul@kernel.org>, 
	Kishon Vijay Abraham I <kishon@kernel.org>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Bjorn Andersson <andersson@kernel.org>, Marijn Suijten <marijn.suijten@somainline.org>, 
	linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org, Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
Subject: Re: [PATCH 3/6] phy: qcom: qmp-pcie: Add X1P42100 Gen4x4 PHY
Message-ID: <cy3x35h4id3gegwb23j6rwblx2pecpw7ffjpri5ddqdd35kzrt@bxdmaumb6bbp>
References: <20250125-topic-x1p4_dts-v1-0-02659a08b044@oss.qualcomm.com>
 <20250125-topic-x1p4_dts-v1-3-02659a08b044@oss.qualcomm.com>
 <h6zfhxkc4dj2ueaxipha6prbvmv7pnqglghtjs7vkhlc2s7ndi@vhbj4uojlzwd>
 <A64B8332-78F2-4B76-908E-4119E4A54BAE@linaro.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <A64B8332-78F2-4B76-908E-4119E4A54BAE@linaro.org>

On Sun, Jan 26, 2025 at 12:59:52PM +0530, Manivannan Sadhasivam wrote:
> 
> 
> On January 25, 2025 11:00:23 PM GMT+05:30, Dmitry Baryshkov <dmitry.baryshkov@linaro.org> wrote:
> >On Sat, Jan 25, 2025 at 04:31:19AM +0100, Konrad Dybcio wrote:
> >> From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
> >> 
> >> Add a new, common configuration for Gen4x4 V6 PHYs without an init
> >> sequence.
> >> 
> >> The bootloader configures the hardware once and the OS retains that
> >> configuration by using the NOCSR reset line (which doesn't drop
> >> register state on assert) in place of the "full reset" one.
> >
> >I know your opinion, but my 2c would still be for not depending on the
> >bootloader. I think that was the rule for ages for many possible
> >reasons.
> >
> 
> But if Linux or other OS can trust the bootloader, then it makes perfect sense to rely on them. Obviously, the question here is that on which platforms this level of trust should be established. And the answer I got was starting from the compute platforms (atleast X1E).

Is there any way how those values can be lost that we still might want
to support ? The GDSC going to the OFF state? Some deep sleep state or a
power collapse? Actual suspend to RAM (instead of current S2Idle)?

> 
> So let's take it on an experimental basis and see how it goes? If at all any problem arises, we can always resort to in kernel sequences.

Sounds like a good proposal. Can possibly have a corresponding 'do not
merge' patch with actual init tables?

> 
> - Mani
> 
> >> 
> >> Use this new configuration for X1P42100's Gen4x4 PHY.
> >> 
> >> Signed-off-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
> >> ---
> >>  drivers/phy/qualcomm/phy-qcom-qmp-pcie.c | 18 ++++++++++++++++++
> >>  1 file changed, 18 insertions(+)
> >
> 
> மணிவண்ணன் சதாசிவம்

-- 
With best wishes
Dmitry

