Return-Path: <devicetree+bounces-137230-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id B4B4CA083B1
	for <lists+devicetree@lfdr.de>; Fri, 10 Jan 2025 00:54:47 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id BC1393A6640
	for <lists+devicetree@lfdr.de>; Thu,  9 Jan 2025 23:54:41 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 1F90E2063E2;
	Thu,  9 Jan 2025 23:54:43 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="ci+fUMwT"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-f49.google.com (mail-lf1-f49.google.com [209.85.167.49])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1A7F92063CE
	for <devicetree@vger.kernel.org>; Thu,  9 Jan 2025 23:54:40 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.49
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736466883; cv=none; b=sv9uVZc0md4JCcoYTDBPljpd6Q2bcTrPMR/AaJ+u5tIk4QiVYAxAHiAjhezOmmTd04zzjJPy1Dhh9/9wXadY2NUvAIYs+S+MFtTC4knCgxj7l1XZQ7BDTH/hvN4YpdaYG/ox6w0C+swmfoSFpWVdWuBGedqf2e3KClE8zab8QuE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736466883; c=relaxed/simple;
	bh=FjKK0rI8Ms9lkRFrMPcOVJOxH3kjCjHVUFI2nxmoACo=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=PXEWk68FGk214o32lP6fOzBYVt89E3tc0REKo17sVouywAqvJpnBg3rGkA9U/GUDi7Sa8hJ3I92li9f6AoPwNFY1DAgEu+TksrJPlQD4UtUXQiSueGJKvDC5EUquHhT+QHBHtpolMU5O2++D8Pg/ztJgLpYF+7kx2O0OTS1P/7k=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=ci+fUMwT; arc=none smtp.client-ip=209.85.167.49
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lf1-f49.google.com with SMTP id 2adb3069b0e04-5401e6efffcso1578319e87.3
        for <devicetree@vger.kernel.org>; Thu, 09 Jan 2025 15:54:40 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1736466879; x=1737071679; darn=vger.kernel.org;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:from:to
         :cc:subject:date:message-id:reply-to;
        bh=FRNnDNKo7frSuIUs5Hy6anVWpgbvz5zJrTUHbShG9EI=;
        b=ci+fUMwT5k7py0XlkvsgCOMWoUMhBqFcF1k06fk1yt8cVsapMA0t7C4+QeEZhpkolj
         sJTd3/AoVlL8xXTThlB6sxjZAYWg4Wl5el7bYBklF/8JMwh+Eah+iD0WXFNoiv7CEanp
         7u57eitWdWueothh9oNtG4ekyCo0G+6EsvRtmt/GXqPlh/rgY53NZ9mKDGMTDkal6DdQ
         5xbZtPd/KCU01yauJbog4CQ8O1kx5+sJz/fKYmYV36wMM8BDCyDE9sqUjQ1BNfW+cqMF
         v5ycizIQDTKlOj3FDcTRfnZP16MMJLzxRxT559grO3VsT/dFhOl2mCdTgYWIEY7yT/S0
         UIdA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1736466879; x=1737071679;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=FRNnDNKo7frSuIUs5Hy6anVWpgbvz5zJrTUHbShG9EI=;
        b=XMTkCKisRDyJWOveHB9COLMJj1nxeWvVjFlxbbofQYrJJylk6uo7FKilC/nbz8Zifk
         XFClKiovHQmOSR0Jldz2qki49DrLx0B3/w85zfxRqUWTvfZ4hOCBQGeBMVWRBT8e8Jz/
         EPFYi0jHEBeUQMljNlZZMWND26QJuIB7LH0ImDu4vHmOikAYfYtkQn5xocpuwsJc89tC
         YSRGBHi9fKsU9Zu3CLvSd5OOVxoUyIKDOvAKW8DZL4ZcBA2Z4Pa0PCuwF7+V/0H4BSbW
         0KHbIFGHYXYx0wztKzCgdlkEzfyiPeE+P+Tg80Uzie5ZtyM85Zuw8IHNus9P3XYn8t58
         wczQ==
X-Forwarded-Encrypted: i=1; AJvYcCWh4n/RvD94ZrGmFMNAhnK7w7QjSe25293icY/JQZGGO23kHcHhdOPUUkCttQBqKKgnK2uHyevg3MRd@vger.kernel.org
X-Gm-Message-State: AOJu0YzCgDnJrzkZlaQT+jQXiU/098nDdHhg2Bacl0jiYaYhJIY62So2
	3l9LqfOwOJ4knWiWXEranMpbjkcbLjCCok4ZaDOtQeQynUQzXasF1wyC2A15vNE=
X-Gm-Gg: ASbGncu1bxLe/xJIi8/q6vbUt7oKs2Vb2dl8nXQGzn1qajsmOGdUgD2nYvkg3+GURHo
	ZU5GbkZPAuktZePUbwos4ptTmMbrUwXkAXv+8LPR0T+GiWuLQy6qyuEKrzXhH3Cj+GpHNem3npW
	9OZtp4NOpnvTOGJruJL6iCK4IIK/50tY39H+6zQqgeM6t/ZKksi36GP6crDr6P7Au5unNdILFej
	I9COEhTgBFaDdGv0hOl6nS/g3baC89fcFvozzBjt1tndWaIFFO1b0WyIHrjE8SNoEMKXEWDz8hq
	xCxM7GOXqZ2ymXCiiCXHJKtzLWaeX0n6x2Vw
X-Google-Smtp-Source: AGHT+IHLuIQ06TZzrrj4vtwF/OP2Cww1gDE4ud7HhI0ahmVJGuMiFw0HoTdSaptnu+mwHQq4vYxZvw==
X-Received: by 2002:a05:6512:398c:b0:542:213f:78fd with SMTP id 2adb3069b0e04-54284815fcdmr2023405e87.40.1736466879189;
        Thu, 09 Jan 2025 15:54:39 -0800 (PST)
Received: from eriador.lumag.spb.ru (2001-14ba-a0c3-3a00--b8c.rev.dnainternet.fi. [2001:14ba:a0c3:3a00::b8c])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-5428bec3ee8sm336598e87.226.2025.01.09.15.54.36
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 09 Jan 2025 15:54:37 -0800 (PST)
Date: Fri, 10 Jan 2025 01:54:35 +0200
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
To: Manaf Meethalavalappu Pallikunhi <quic_manafm@quicinc.com>
Cc: Wasim Nazir <quic_wasimn@quicinc.com>, 
	Bjorn Andersson <andersson@kernel.org>, Konrad Dybcio <konradybcio@kernel.org>, 
	Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
	Conor Dooley <conor+dt@kernel.org>, linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org, kernel@quicinc.com
Subject: Re: [PATCH v5 6/6] arm64: dts: qcom: Enable cpu cooling devices for
 QCS9075 platforms
Message-ID: <6zftdu5myuporxsvxlxhojnlhnfa74pjj7nvy3wmiaw7jdsuo2@3ebcpevzvtlc>
References: <20241229152332.3068172-1-quic_wasimn@quicinc.com>
 <20241229152332.3068172-7-quic_wasimn@quicinc.com>
 <zn4uf3mmlmt3who474hwkr44poycfqtjtidshybbg55a3hr63y@zxefqbhiwkbg>
 <d54c6706-3c6b-211c-6acb-fa3984c30c67@quicinc.com>
 <ubasbsyspn5euygihgphyw3xg4ckveytvgnjpwdiyg4pv7degr@6y44ya4gvaqj>
 <07c41571-28ca-6f9e-bcee-899bbf77f687@quicinc.com>
 <sufmykle5inyk73i3qfmy3xqq7plgfr7txiruyahc5wgvvn6uo@kytxtb5zc3tg>
 <cf2ad828-d00d-133b-f310-1688fc0ed59b@quicinc.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <cf2ad828-d00d-133b-f310-1688fc0ed59b@quicinc.com>

On Wed, Jan 08, 2025 at 09:38:19PM +0530, Manaf Meethalavalappu Pallikunhi wrote:
> 
> Hi Dmitry,
> 
> 
> On 1/8/2025 6:16 PM, Dmitry Baryshkov wrote:
> > On Wed, Jan 08, 2025 at 05:57:06PM +0530, Manaf Meethalavalappu Pallikunhi wrote:
> > > Hi Dmitry,
> > > 
> > > 
> > > On 1/3/2025 11:21 AM, Dmitry Baryshkov wrote:
> > > > On Tue, Dec 31, 2024 at 05:31:41PM +0530, Manaf Meethalavalappu Pallikunhi wrote:
> > > > > Hi Dmitry,
> > > > > 
> > > > > On 12/30/2024 9:10 PM, Dmitry Baryshkov wrote:
> > > > > > On Sun, Dec 29, 2024 at 08:53:32PM +0530, Wasim Nazir wrote:
> > > > > > > From: Manaf Meethalavalappu Pallikunhi <quic_manafm@quicinc.com>
> > > > > > > 
> > > > > > > In QCS9100 SoC, the safety subsystem monitors all thermal sensors and
> > > > > > > does corrective action for each subsystem based on sensor violation
> > > > > > > to comply safety standards. But as QCS9075 is non-safe SoC it
> > > > > > > requires conventional thermal mitigation to control thermal for
> > > > > > > different subsystems.
> > > > > > > 
> > > > > > > The cpu frequency throttling for different cpu tsens is enabled in
> > > > > > > hardware as first defense for cpu thermal control. But QCS9075 SoC
> > > > > > > has higher ambient specification. During high ambient condition, even
> > > > > > > lowest frequency with multi cores can slowly build heat over the time
> > > > > > > and it can lead to thermal run-away situations. This patch restrict
> > > > > > > cpu cores during this scenario helps further thermal control and
> > > > > > > avoids thermal critical violation.
> > > > > > > 
> > > > > > > Add cpu idle injection cooling bindings for cpu tsens thermal zones
> > > > > > > as a mitigation for cpu subsystem prior to thermal shutdown.
> > > > > > > 
> > > > > > > Add cpu frequency cooling devices that will be used by userspace
> > > > > > > thermal governor to mitigate skin thermal management.
> > > > > > Does anything prevent us from having this config as a part of the basic
> > > > > > sa8775p.dtsi setup? If HW is present in the base version but it is not
> > > > > > accessible for whatever reason, please move it the base device config
> > > > > > and use status "disabled" or "reserved" to the respective board files.
> > > > > Sure,  I will move idle injection node for each cpu to sa8775p.dtsi and keep
> > > > > it disabled state. #cooling cells property for CPU, still wanted to keep it
> > > > > in board files as we don't want to enable any cooling device in base DT.
> > > > "we don't want" is not a proper justification. So, no.
> > > As noted in the commit, thermal cooling mitigation is only necessary for
> > > non-safe SoCs. Adding this cooling cell property to the CPU node in the base
> > > DT (sa8775p.dtsi), which is shared by both safe and non-safe SoCs, would
> > > violate the requirements for safe SoCs. Therefore, we will include it only
> > > in non-safe SoC boards.
> > "is only necessary" is fine. It means that it is an optional part which
> > is going to be unused / ignored / duplicate functionality on the "safe"
> > SoCs. What kind of requirement is going to be violated in this way?
> 
> From the perspective of a safe SoC, any software mitigation that compromises
> the safety subsystem’s compliance should not be allowed. Enabling the
> cooling device also opens up the sysfs interface for userspace, which we may
> not fully control.

THere are a lot of interfaces exported to the userspace.

> Userspace apps or partner apps might inadvertently use
> it. Therefore, we believe it is better not to expose such an interface, as
> it is not required for that SoC and helps to avoid opening up an interface
> that could potentially lead to a safety failure.

How can thermal mitigation interface lead to safety failure? Userspace
can possibly lower trip points, but it can not override existing
firmware-based mitigation.
And if there is a known problem with the interface, it should be fixed
instead.

> 
> Best Regards,
> 
> Manaf
> 
> > 

-- 
With best wishes
Dmitry

