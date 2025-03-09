Return-Path: <devicetree+bounces-155796-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id AEA63A582A2
	for <lists+devicetree@lfdr.de>; Sun,  9 Mar 2025 10:20:06 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id EAC3A165292
	for <lists+devicetree@lfdr.de>; Sun,  9 Mar 2025 09:20:05 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 29CF1192B71;
	Sun,  9 Mar 2025 09:19:59 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="YNTemn4P"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ed1-f52.google.com (mail-ed1-f52.google.com [209.85.208.52])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 82FD5ECF
	for <devicetree@vger.kernel.org>; Sun,  9 Mar 2025 09:19:56 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.52
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1741511999; cv=none; b=SGiX+PNcbIkoEz22rijoV44Zswf0qt4cWh3QqTUZR68cIYzLJXbRZY5108ep/Wfv7SsNDLX6qr1PSQwMhmjuQYv1oyB42NW3eMjb4oCUwXsNRnNzocAJ4UqfuY8xghS1RNPOeRivYdcDegR0Vr2bvChbM2oiorBV1Uj+XD5HuAk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1741511999; c=relaxed/simple;
	bh=0ZAWAhuxOjxr7u/uIMgJIAn1ABV87XBqdsAnGT+CbhI=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=JQt5Heo4eGMf7VXSQlzWOiZ8LMs/Vcck6ncg7OVwYcuJdNdLgmBhLhDGGTV5jLyHkGxRun0U3Hw5/4hIEgvLzh4MT/DoIXbSZ84d5k3QKhOK+RmkpK6QS9Z9eB1koZQl/VoF6FBikLObqsFjWBD795VtFNsCIifxAoNutwLhNBM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=YNTemn4P; arc=none smtp.client-ip=209.85.208.52
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-ed1-f52.google.com with SMTP id 4fb4d7f45d1cf-5e5e63162a0so3029798a12.3
        for <devicetree@vger.kernel.org>; Sun, 09 Mar 2025 01:19:56 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1741511995; x=1742116795; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=bnawI9gS6q4xXdvkElc3iMq/OS/MAXIzpc5pDsTEkWg=;
        b=YNTemn4PJopHRApEnJeYZceTXrcazCxCAZy3l79zRKKEITAFJtnAYSuZPOZiXvsdfI
         8LsGp2PBp/rrhKJCApfF9h9Z9qao/GbX9J5IJilBHq0HWcY3zXS71jTauM5XULzPcjXa
         BTmoCMlaBijeOdqMjIJZpaSBzxpjVC6d63wo5hQ6Flek6u4Fv6wUj7p2SFbrHlJVn5aR
         fMybUYenFjwfoFUnDxozuEl5yWPYli2VuzkuOwMcgUtfh8kzmMTDPOAhf0YeYUpLPhCU
         02jZ8HSQIiT+sdk8bliVtHztlegJvwVq2Ur78a6NY2uEx22HuVw+fKQqPIGMWTcEnlQe
         T/0Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1741511995; x=1742116795;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=bnawI9gS6q4xXdvkElc3iMq/OS/MAXIzpc5pDsTEkWg=;
        b=sBYYzn669WicMEDUzaUu6uLGEeMfnXLxIaYvXfoHw5WcCYddrJqA6CY9HlN25osMcf
         TVmaX4eaR2qts6HWAesN9IMuOPsIGw+oWubaeigYiOrvMjJrbUIMcm+d2Pl1dXQytQaT
         tW2kqKh/2+OxgJeHbvcEB/pP2ubofFwCAmvuzK3SzFFsWde/u5dxDzXQxXI9bkQDvDXB
         7menIQCj5hEwApnk/eUn/7kU3Vg5ezO58AAblyvb9RsFKIk7owkFmUv+930FzHGPMrq1
         r1q9yQ2/ACtgeJpWFUOLlIR9SQGHQrF0si01gvi8Np1Q48dke8jIbKExRnWL6Qj4RPPF
         m3Iw==
X-Forwarded-Encrypted: i=1; AJvYcCVP+LYgPMPgdWCAVi9kx8RGy/PRnWMwUFgzZBNZSVZo7HKRzetpFJs+WtYBdJkAO4YRwcu9DYeezzw9@vger.kernel.org
X-Gm-Message-State: AOJu0YztauLcjUa7WJ9gCHwtzR6R9xLc6jfbRF9AwiS5GnmtHEURs80O
	NH8NBgQIz7O3FGxPRRFcpbDFpEP/2+ib2Fuc0Pz+N6X7p+SorxeQc/QIr+YlUgADZX7IqqHMvpy
	o
X-Gm-Gg: ASbGncuYkKTpYM250u3pb2hjaGzZcM4gk2TWW5PfqRN1+jNe0l65e0asG6OH5uiPCpP
	h6jpWs/55kwAAqR9B7EEGGOTwV/rLpiaFMS8gHpwFHVlrX99+hFp0dB0QKgkhofrWbZjt/zYFvO
	nFnpVQZ3OMUBxazgy/wSvL3DBTF+UyDbB6lH+qutEX+AOAQeZdXIMG1+l7bkZH3K0JOHK5Fi28C
	KYW4XoDaaWKIxdDEEtC8sJnHaTb7bEyzcpW37KNKpsxpsyO0SAawdl7H7hriFor1PO0cwosweAj
	tK+XrWivA0NFBIddx6h3CrJbOv9r3PffkmZLi9S+uQ==
X-Google-Smtp-Source: AGHT+IESTf6qmdwjvFLe5bEatJncsKdd+wPYuoCmsexsSa74nVUaQPgZY8WN12Uery5ZqyTBxFdohg==
X-Received: by 2002:a17:907:3f2a:b0:abf:5fa3:cf96 with SMTP id a640c23a62f3a-ac252a879d7mr922674666b.14.1741511994860;
        Sun, 09 Mar 2025 01:19:54 -0800 (PST)
Received: from linaro.org ([62.231.96.41])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-ac29cbf128csm9790066b.115.2025.03.09.01.19.53
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 09 Mar 2025 01:19:54 -0800 (PST)
Date: Sun, 9 Mar 2025 11:19:52 +0200
From: Abel Vesa <abel.vesa@linaro.org>
To: Sebastian Reichel <sre@kernel.org>
Cc: Bjorn Andersson <andersson@kernel.org>,
	Konrad Dybcio <konradybcio@kernel.org>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>, Johan Hovold <johan@kernel.org>,
	Dmitry Baryshkov <dmitry.baryshkov@linaro.org>,
	linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org
Subject: Re: [RFC 1/2] arm64: dts: qcom: x1e78100-t14s: Add LCD variant with
 backlight support
Message-ID: <Z81dODU91zDPo/H5@linaro.org>
References: <20250306090503.724390-1-abel.vesa@linaro.org>
 <20250306090503.724390-2-abel.vesa@linaro.org>
 <lolqokpczxdscvgj6xdfyxblmle3csgzje3fgo4itzspgmeriy@7zzx7hg2zfks>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <lolqokpczxdscvgj6xdfyxblmle3csgzje3fgo4itzspgmeriy@7zzx7hg2zfks>

On 25-03-08 01:01:31, Sebastian Reichel wrote:
> Hi,
> 
> On Thu, Mar 06, 2025 at 11:05:02AM +0200, Abel Vesa wrote:
> > Due to the fact that Lenovo Thinkpad T14s Gen6 is available with both
> > OLED and LCD, the backlight control differs HW-wise. For the LCD variant,
> > the panel's backlight is controlled via one of the PWMs provided by the
> > PMK8550 PMIC. For the OLED variant, the backlight is internal to the
> > panel and therefore it is not described in devicetree.
> > 
> > For this reason, create a generic dtsi for the T14s by renaming the
> > existing dts. While at it, add a node name to panel and drop the enable
> > gpio and pinctrl properties from the panel node. Then add the LCD variant
> > dts file with the old name and describe all backlight related nodes.
> > 
> > So the existing dts will now be used for LCD variant while for OLED new
> > dts will be added.
> > 
> > Signed-off-by: Abel Vesa <abel.vesa@linaro.org>
> > ---
> > [...]
> > +	backlight: backlight {
> > +		compatible = "pwm-backlight";
> > +		pwms = <&pmk8550_pwm 0 5000000>;
> 
> I've tried this patch series together with the fix series [0], but
> without the duty cycle calculation change [1]. Instead I changed the
> period from 5000000 to 4266667. With that everything works as
> expected for me.
> 
> [0] https://lore.kernel.org/all/20250305-leds-qcom-lpg-fix-max-pwm-on-hi-res-v4-0-bfe124a53a9f@linaro.org/
> [1] https://lore.kernel.org/all/20250303-leds-qcom-lpg-compute-pwm-value-using-period-v1-1-833e729e3da2@linaro.org/

Yes, I forgot to squash in the correct period.

The period should actually be 4266537. This is because the max PWM value
is actually BIT(resolution) - 1.

Will update in next version.

The [1] patch was basically NACKed by Uwe. It is not needed if we set
the period to 4266537 in DT.

> 
> Greetings,
> 
> -- Sebastian



