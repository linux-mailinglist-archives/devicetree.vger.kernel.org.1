Return-Path: <devicetree+bounces-39771-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 8418784E164
	for <lists+devicetree@lfdr.de>; Thu,  8 Feb 2024 14:07:03 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 210641F28EBE
	for <lists+devicetree@lfdr.de>; Thu,  8 Feb 2024 13:07:03 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 67D1E768E1;
	Thu,  8 Feb 2024 13:05:41 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="Te/+rAPn"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-yw1-f171.google.com (mail-yw1-f171.google.com [209.85.128.171])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C70E7763FB
	for <devicetree@vger.kernel.org>; Thu,  8 Feb 2024 13:05:39 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.171
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1707397541; cv=none; b=RhF5/TjWQ+7Dq5f9Sd3gMGqW8S7i3B4rCcgxWWorLzFdNIYYgVfwD50/HsU68XAgd01yeyAlpJW+AjxS7QscUKrbK1eVMZvNSSQWWP1k3JJDs4VTTBV8vb+TIF1tIyN6dtgUXTiSqwWPUi+CZrxMEHLY3WqO1Izrm82PQ1hcqX4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1707397541; c=relaxed/simple;
	bh=OOm3KwQlSkpx/aQ0RD1Q/n3/Iu+q+deGUZmDwakoQcE=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=oMzOrbYR2H6yEqxVhxXiKca6uJy5TFHmutJIJcWNJJS7KmPCiZVo9vXnthnESFfiLYll2tvThAdFOOB2leXYWA16vkHQiv3DN/2j0ILcEYO+MtHOD4ycWjwE1SYGEMnLNY8NWhqOe5xj48D/HLDqts3pXp4Y2z7iE+zdNzdubpA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=Te/+rAPn; arc=none smtp.client-ip=209.85.128.171
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-yw1-f171.google.com with SMTP id 00721157ae682-60492a2593fso17291097b3.2
        for <devicetree@vger.kernel.org>; Thu, 08 Feb 2024 05:05:39 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1707397538; x=1708002338; darn=vger.kernel.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=yaonEZUtkmkL4+4T+nM7QfSGszePSMsGy31jLocXPig=;
        b=Te/+rAPnwX88eKPsw+alKjdBZYCeoe8J0KHRMKLgAHAwhZxVinM0ID5JbJOpjT8zR3
         UHYIXdwQNBNhN6ZuYWalk3qx1b3q6WyVyXA4ttlxOIziwgPxkQTd+l/GcStwqVm9G5IB
         A5kIbLXp1FmmzLaDvY7aO7Fd/kYlrNSbElathT/zTr3wkhdxTMFEDRDLiQHaXtgap0ha
         Y/AQHE4wuDnQ6V9pjr/1epMNhblnGN3UldUd0NVHTts022hVf4qgIQRgTXIoAmAvz1xE
         x+zSpIz0NRupYcofLP54syOFAhnxVLq2i+YLPVBkkVK66YwEDTVq84TtEDE3k3QoUKQ1
         D0NA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1707397538; x=1708002338;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=yaonEZUtkmkL4+4T+nM7QfSGszePSMsGy31jLocXPig=;
        b=HdtQq4TnAd3CmXQcwKfGjYd5WIM2AFsGdkDavNeoYr72+L4cfq6bhrlZnaksObiSMh
         JQ2ZhaLOjTZxjaBDVtLQgFa2EY2Nx/JAc9oOsvujiI8gFAw3W4oam/veqD0EDC+4NLbJ
         Xd3q1SI53iFt9D6uJ0EigX2StZEc5tlb4YjeSn8hMghNJkzqiOTRtQUp7m63kKK/QlPU
         RxoZRvdCTzioy7BlVcGMpD/HtJXPNx93Uap3vSYoFi/NP20rKYrmEdLIpC5I6jLsa78/
         dMjXBcUVqjb16rLFZIoJ79XQprM/cmNoz/qTXuF4sgCfuxok+EwPn4wf2WQQp525uLdO
         PcuQ==
X-Gm-Message-State: AOJu0Yw3si3A7uqsWD8h5m1HksnlPwvdqYAqN+0nw3H6PZKCNlUOQnrx
	bcwkHO3ShO08jPO9PYS77nEBonXmsdDK/610IBB9j2aWh+WoGVXrFp4uqkJvwPVsZ1mpFQjq97W
	fwjPNWFR/nHvjeJkmbrS2VMg26Fk30AAKL9C/ug==
X-Google-Smtp-Source: AGHT+IGfphzyQv/EWtNvXSUhZkKTokLhrAXhw2QIgrex5Lkm5/2iiFvKEz8iowkI5t4PsE48NVTAvoH79ulzgHlzIPY=
X-Received: by 2002:a0d:c545:0:b0:604:71b3:2021 with SMTP id
 h66-20020a0dc545000000b0060471b32021mr8488916ywd.3.1707397533831; Thu, 08 Feb
 2024 05:05:33 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20240130-pmi632-typec-v3-0-b05fe44f0a51@linaro.org>
 <20240130-pmi632-typec-v3-3-b05fe44f0a51@linaro.org> <CAA8EJpqhfWsmUxwmBLtdtx-aFOmTo24erdNfRyz2ymi_y=yidw@mail.gmail.com>
 <ZcTA5hbcladmKuLh@kuha.fi.intel.com>
In-Reply-To: <ZcTA5hbcladmKuLh@kuha.fi.intel.com>
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Date: Thu, 8 Feb 2024 15:05:22 +0200
Message-ID: <CAA8EJpqf_iQz5JWwEsZmUOV=VSY5y_RrO6JqEztr9Q2Fc2J-FA@mail.gmail.com>
Subject: Re: [PATCH v3 3/6] usb: typec: qcom-pmic-typec: add support for
 PMI632 PMIC
To: Heikki Krogerus <heikki.krogerus@linux.intel.com>
Cc: Bjorn Andersson <andersson@kernel.org>, Konrad Dybcio <konrad.dybcio@linaro.org>, 
	Liam Girdwood <lgirdwood@gmail.com>, Mark Brown <broonie@kernel.org>, 
	Rob Herring <robh+dt@kernel.org>, 
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, Conor Dooley <conor+dt@kernel.org>, 
	Wesley Cheng <quic_wcheng@quicinc.com>, "Bryan O'Donoghue" <bryan.odonoghue@linaro.org>, 
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>, Guenter Roeck <linux@roeck-us.net>, 
	linux-arm-msm@vger.kernel.org, linux-kernel@vger.kernel.org, 
	devicetree@vger.kernel.org, linux-usb@vger.kernel.org, 
	Luca Weiss <luca.weiss@fairphone.com>
Content-Type: text/plain; charset="UTF-8"

On Thu, 8 Feb 2024 at 13:54, Heikki Krogerus
<heikki.krogerus@linux.intel.com> wrote:
>
> On Wed, Feb 07, 2024 at 11:54:50AM +0200, Dmitry Baryshkov wrote:
> > On Tue, 30 Jan 2024 at 21:33, Dmitry Baryshkov
> > <dmitry.baryshkov@linaro.org> wrote:
> > >
> > > The PMI632 PMIC support Type-C port handling, but lacks USB
> > > PowerDelivery support. The TCPM requires all callbacks to be provided
> > > by the implementation. Implement a special, 'stub' Qcom PD PHY
> > > implementation to enable the PMI632 support.
> > >
> > > Acked-by: Bryan O'Donoghue <bryan.odonoghue@linaro.org>
> > > Acked-by: Heikki Krogerus <heikki.krogerus@linux.intel.com>
> > > Tested-by: Luca Weiss <luca.weiss@fairphone.com> # sdm632-fairphone-fp3
> > > Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
> >
> > Heikki, Gunter, Gret, is there anything left on my side to get these patches in?
>
> Nothing from me. Do you want Greg to pick these?

Yes, please.

-- 
With best wishes
Dmitry

