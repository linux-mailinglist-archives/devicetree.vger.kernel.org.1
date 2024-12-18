Return-Path: <devicetree+bounces-132263-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 752AB9F64DE
	for <lists+devicetree@lfdr.de>; Wed, 18 Dec 2024 12:27:57 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id E510F16B4A1
	for <lists+devicetree@lfdr.de>; Wed, 18 Dec 2024 11:27:51 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id AA4901A00FE;
	Wed, 18 Dec 2024 11:27:36 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="UiPQkE0L"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lj1-f179.google.com (mail-lj1-f179.google.com [209.85.208.179])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C46991A00D6
	for <devicetree@vger.kernel.org>; Wed, 18 Dec 2024 11:27:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.179
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1734521256; cv=none; b=DShgDWlRoQUtEgYR9qb431GmQFclv7RnYCHA80+3fQeA+UKMke+jeI09D+62Ix3AOnQFe+ytPJknaUVlva+maqpk7fEnVo6U6UPxkGQ1oNNa4OCQn4/tiY81ZCFgwm4kEVIbtJsd/R3FONkSkvTncfCm9IkQp4VgxM0G3PagD8k=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1734521256; c=relaxed/simple;
	bh=uPI3YGl5Qu5f0BbLY4+s0FGi59w2aTO6gPsqp5rfKZ0=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=qw1//pgJEc6qvY/sjHpyR8taW8jUxmVMpmQtO1depFOFS73vHHPuHzUSK4Z8d62/FEuDgqVhJYRGa2JpQLc4e2eeVMF4XNq7P4NpTkG0NkW8AosITCdqSHD/d0dR8tp2uTdVmmBG9/YfGLpRB7D8wwT1CYYD/Wf7vYCyNw0K7e0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=UiPQkE0L; arc=none smtp.client-ip=209.85.208.179
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lj1-f179.google.com with SMTP id 38308e7fff4ca-3011c7b39c7so69785641fa.1
        for <devicetree@vger.kernel.org>; Wed, 18 Dec 2024 03:27:34 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1734521253; x=1735126053; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=3B1U2oc9z7VH6AtDCT3Knsc6oVzFOjpEkThdlEjEbCA=;
        b=UiPQkE0LYqWj2ONVbQlEILNPZ/MPNTwu3ZM3fcCcwGT36BHgLQ5e1PYBiWhXPpCU4H
         G3y9+6a8HyBCprKk2zWrPFpon7Af+6mo2May+L6yX/u43IYt/6GzicCWPYt/Pj42SN9v
         9/9xPIePFenBXPYbEz5FXbdJspnvY03SPzRdSS5SJ+rBu02i1LArJKP/7p8msL1f7hLB
         ekSsmWRGSHIGmd6gEl6BCh3coVmP6dGHKgRlXnQgjG3d/RHeZthLuiGKPoA12XXOQ/PL
         NiS+X6XkF47CvoaXHE7vtN7QT2ivXCDLzRMl9kzeq3yyInZs1V1vA5IANSPdkCAysvXU
         h+qw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1734521253; x=1735126053;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=3B1U2oc9z7VH6AtDCT3Knsc6oVzFOjpEkThdlEjEbCA=;
        b=vV4iwqi3i7nSdXubsqASg68OicBOBQqufLcMx93VbJguOZZuL2TjytW288kO0l09S8
         4yCUyUXIIyVVNUnrcRZeNc74CkGnND5tWTRXTSZD1PcOLe2uaRnqlU1/Yfeh0vu2sl8R
         lebFlJkSowjN8rSKNjHW1LLyNmQ7ra0mxlw4vQ8uHsItHh00rU9u1nBByCleVJQW+zTu
         3Sy3X+3h9qgwHrYHEglnlUGp1qSVW/WmrZpzURA4Dh380FYSAPUsC79HTyMKht+nkF5M
         3wrF5wYhn1xRysyXCa1C5JHVi+RLPR/mI5PHR16nn2EqGwbDIu9Lg0ECp5/XIKFiOGTr
         WgAQ==
X-Forwarded-Encrypted: i=1; AJvYcCV4fGORoBinJwBsubJiMDUHdgZEYBFVdrh8QjeTg5ydZ/R/my5bjwUIbr9WbyuvSnBVI8TksO3brBEx@vger.kernel.org
X-Gm-Message-State: AOJu0YzuHmpO41t/sIVCe0B10n3lZLgwH7L52jjm4v4PFLrqd1XMcOaS
	xje8ktpCZ06km1MQeO0uiQR6qXMJIIU+uOrRHUVWRE8ffZTBqxkCknEExaXrQ7o=
X-Gm-Gg: ASbGnctaKJyQtW2+7EfyhBG+t65OPqejuCBy+Af411AGrFqSgnjq49fcb7EDhpF9eSV
	dilIC1pqIaZk8HCsUs92gNE3MnSt6Zy81CGrh35O2kQqyJgIzodLjGHgTvPFgVrcL5GFHVKlXTL
	7+x4FKY/CsYro20FzXJGiCa/gG6ol/SJ//QwH1SFb5G4OZNdP/fpDJnkKYRqdZlOLnf6nvfPAk2
	ub/l7r423QX0LrwIMPCDi6TSmO39W3rE+H+IVI8vQMOHQefF0P1eVoEPEToKlhnqvWnAuirzsoT
	9ILTJmVQQtCnN2vUJg2XHBaiJUYZ1EttWwxG
X-Google-Smtp-Source: AGHT+IE2kXzgUUnrRFqPVuLPgXCfNtnW5AHT4UA0KixP5pMWb364WZV2Z0yYHi0Bl46lYtL55FynkA==
X-Received: by 2002:a2e:7d0a:0:b0:300:26bc:4311 with SMTP id 38308e7fff4ca-3044dae0630mr7905231fa.18.1734521252916;
        Wed, 18 Dec 2024 03:27:32 -0800 (PST)
Received: from eriador.lumag.spb.ru (2001-14ba-a0c3-3a00--b8c.rev.dnainternet.fi. [2001:14ba:a0c3:3a00::b8c])
        by smtp.gmail.com with ESMTPSA id 38308e7fff4ca-3034406224fsm15365501fa.57.2024.12.18.03.27.32
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 18 Dec 2024 03:27:32 -0800 (PST)
Date: Wed, 18 Dec 2024 13:27:31 +0200
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
To: Prashanth K <quic_prashk@quicinc.com>
Cc: Bjorn Andersson <andersson@kernel.org>, 
	Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Krishna Kurapati <krishna.kurapati@oss.qualcomm.com>, linux-kernel@vger.kernel.org, linux-arm-msm@vger.kernel.org, 
	devicetree@vger.kernel.org, cros-qcom-dts-watchers@chromium.org
Subject: Re: [PATCH v3 00/19] Disable USB U1/U2 entry for QC targets
Message-ID: <nvhrhnfls2i4sb6rrlax2dh3hf5thfttrq54bgug2jc7ol26rj@cnk5dtampfes>
References: <20241218102707.76272-1-quic_prashk@quicinc.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20241218102707.76272-1-quic_prashk@quicinc.com>

On Wed, Dec 18, 2024 at 03:56:48PM +0530, Prashanth K wrote:
> Enabling U1 and U2 power-saving states can lead to stability and
> performance issues, particularly for latency-sensitive or high-
> throughput applications. These low-power link states are intended
> to reduce power consumption by allowing the device to enter partial
> low-power modes during idle periods. However, they can sometimes
> result in unexpected behavior. Over the years, some of the issues
> seen are as follows:
> 

[..]

> 
> This series was earlier started by Krishna Kurapati where he disabled
> U1/U2 on some SM targets. I'm extending this to more devices including
> Auto, Compute and IOT platforms. On a side note, this quirk has been
> already included on some mobile targets like SM8550/8650.

Why are you resending previous patches rather than adding another series
on top of it?

> 
> Changes in v2:
> - Removed the wrongly added quirks from tcsr_mutex node.
> - Link to v2: https://lore.kernel.org/all/20241213095237.1409174-1-quic_prashk@quicinc.com/

What was changed in v3?

> 
> Link to RFC:
> https://lore.kernel.org/all/20241107073650.13473-1-quic_kriskura@quicinc.com/#Z31arch:arm64:boot:dts:qcom:sm8250.dtsi
> 

-- 
With best wishes
Dmitry

