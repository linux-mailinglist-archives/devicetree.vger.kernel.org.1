Return-Path: <devicetree+bounces-76922-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 0F60A90C8B9
	for <lists+devicetree@lfdr.de>; Tue, 18 Jun 2024 13:13:47 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 1FE211C2102F
	for <lists+devicetree@lfdr.de>; Tue, 18 Jun 2024 11:13:46 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 8F0B61AD49B;
	Tue, 18 Jun 2024 10:00:12 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="C9Bfkutg"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lj1-f169.google.com (mail-lj1-f169.google.com [209.85.208.169])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B0ED31AD499
	for <devicetree@vger.kernel.org>; Tue, 18 Jun 2024 10:00:10 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.169
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1718704812; cv=none; b=jNPHEHWW7gHeE1LIWA+eMs+Jf6xMjfBuROHK7awWOxdE5Xn7PlkMoWIqKqnepzdxrY4q/KWSDANvPqTeeE2bEwqO4E4sBc5RYqWxJ81LAagl2KZfocN88rSKIvjySIKfk3X5U/LCi0n4tqASnEvkiiux+8HI0Rw25FVQilx+v4s=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1718704812; c=relaxed/simple;
	bh=aWWT2BtQP7HJiaMGFOBVDWLpLW1OtUGkRwlKM9NdMDI=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=QTLYQqggkiO5bfAwdq8fAl2Oy63vPAJ1N3yx6ID4x9UjJBMug1vZ4GGA6XJlFgCewk3Vnk5p+k12T7idfsWpU/eWqTWWXE3PHXEQayuyMLzzjQXnpN6K1wf6jPwM3Ud3f+galjUXUED5JRFXjkvnX3HOMcObFCsYdPbW0QSJya4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=C9Bfkutg; arc=none smtp.client-ip=209.85.208.169
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lj1-f169.google.com with SMTP id 38308e7fff4ca-2eaa89464a3so59690241fa.3
        for <devicetree@vger.kernel.org>; Tue, 18 Jun 2024 03:00:10 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1718704809; x=1719309609; darn=vger.kernel.org;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:from:to
         :cc:subject:date:message-id:reply-to;
        bh=3EaFvL/kglBgb0ndEbdaou/R+BL7SHB1RSgRjv06fdo=;
        b=C9BfkutgCXlFd52GOCL6B4LPSUVZB4lZ3/LaJ25PXbduL2oTXEjXrEwej8o2bzZZEc
         MmQIMA4BdP924cn7Y/3RIBUN+YBE+DhNAjIvjDu7u7Nvr4HM9u4c5Wak0HW1tmbIdtmB
         mLE6BAJh7au8HwQwg7tnnFOtDwi0fvdsG8+xgO4/em1Y8Vy59nElAquyfy7Vh30Tqlu+
         Ka4Zm2+o+G1JZuM7qYVVpAXlNPuf+OFUDs2mt0ukwYB8nzYXvGpgNd8LaiWS4VMAp4/K
         Kh+bcH5hTlOA2OLvazoQO2PAcqlB8YnamV+seXkrPeigsYwWJfqm3vElnkWd3+pFi8sc
         c2Yw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1718704809; x=1719309609;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=3EaFvL/kglBgb0ndEbdaou/R+BL7SHB1RSgRjv06fdo=;
        b=Cd76UuP+jGW4lJyJLiOGjZ9DDQ6RNz6uNq+iad3rUm7kOzgyeIVF+FWQPWM0Wc+ezi
         PY8ww+6zIvY1+nkp8UiHxNYNJauPrWp4bADGP8jxBfNgOw8T1FRz7adEyAPdSAF2JbI0
         zl0/LnAu2WYESzaU+4Z3ry8gH2wAN2xYBmUy6CHFllTPHeN8dJxBwmETnhcd8C6FgJ9b
         IayWQG7s57GpU0006ZmjlrIZNcMTzhSwgnt2HSd/KKjOiSoRXrUMJoZiCghMhx7HLTTL
         3jl3SgMXG9JfyP4P6RddK5IwRxUoBn76IDcfZXoKGJo1GDjeE9qUxD1IuofKz/nYeVBs
         hJCg==
X-Forwarded-Encrypted: i=1; AJvYcCUk/GlGoFdoXeLQD1X3+DvvEa7KYW/jjY8uy6uG1BuptMaocHv6nSqyOPpdd+qSroUA8AWJcF3eXwW8QqygdFN9jkNEtnNMPbz1eA==
X-Gm-Message-State: AOJu0YxoGxlreoC9xOyn1tt125bR35ZrXWE1cdAyQoHFkzixHfiUgBX9
	femAt/xd9mIKBFKv4xGNmtNfjTo5OBkVMd5un5uKvShC8Nuyc6EMpn3/FIzjmok=
X-Google-Smtp-Source: AGHT+IEr95PWJXiupXHXyk+N1CJu2nYHBDXKxEW7HsrGyxE8qjcCbSq5QaPzVgVe1c2bfYiW5XdoGQ==
X-Received: by 2002:a2e:2e16:0:b0:2eb:d4ea:3c81 with SMTP id 38308e7fff4ca-2ec0e5c6ed6mr85347891fa.22.1718704808767;
        Tue, 18 Jun 2024 03:00:08 -0700 (PDT)
Received: from linaro.org ([82.79.124.209])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-422f6320c21sm188678265e9.34.2024.06.18.03.00.07
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 18 Jun 2024 03:00:08 -0700 (PDT)
Date: Tue, 18 Jun 2024 13:00:06 +0300
From: Abel Vesa <abel.vesa@linaro.org>
To: Johan Hovold <johan@kernel.org>
Cc: Bjorn Andersson <andersson@kernel.org>,
	Konrad Dybcio <konrad.dybcio@linaro.org>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>, linux-arm-msm@vger.kernel.org,
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
	Rajendra Nayak <quic_rjendra@quicinc.com>
Subject: Re: [PATCH v2] arm64: dts: qcom: x1e80100: Enable tsens and thermal
 zone nodes
Message-ID: <ZnFapqOxQBK5YViU@linaro.org>
References: <20240614-x1e80100-dts-thermal-v2-1-4d4f9effacc6@linaro.org>
 <ZnAAxlH6yhlJf6fV@hovoldconsulting.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <ZnAAxlH6yhlJf6fV@hovoldconsulting.com>

On 24-06-17 11:24:22, Johan Hovold wrote:
> On Fri, Jun 14, 2024 at 01:50:07PM +0300, Abel Vesa wrote:
> > From: Rajendra Nayak <quic_rjendra@quicinc.com>
> > 
> > Add tsens and thermal zones nodes for x1e80100 SoC.
> > 
> > Signed-off-by: Rajendra Nayak <quic_rjendra@quicinc.com>
> > Signed-off-by: Abel Vesa <abel.vesa@linaro.org>
> > ---
> > Changes in v2:
> > - Dropped the thermal engine nodes.
> > - Dropped comments from tsens nodes.
> > - Droppd the polling-delay entirely and polling-delay-passive where not
> >   necessary.
> > - Added top/bottom location to all sensors (where applicable).
> > - Fixed trip points with duplicate values for same temp.
> > - Marked as critical the 125°C throughout all trip points.
> > - Link to v1: https://lore.kernel.org/r/20240527-x1e80100-dts-thermal-v1-1-ea13b8fa6ffc@linaro.org
> > ---
> >  arch/arm64/boot/dts/qcom/x1e80100.dtsi | 1176 ++++++++++++++++++++++++++++++++
> >  1 file changed, 1176 insertions(+)
> > 
> > diff --git a/arch/arm64/boot/dts/qcom/x1e80100.dtsi b/arch/arm64/boot/dts/qcom/x1e80100.dtsi
> > index 9944c654851e..df13df7967db 100644
> > --- a/arch/arm64/boot/dts/qcom/x1e80100.dtsi
> > +++ b/arch/arm64/boot/dts/qcom/x1e80100.dtsi
> 
> > +		cpu0-0-bottom-thermal {
> > +			thermal-sensors = <&tsens0 2>;
> > +
> > +			trips {
> > +				trip-point0 {
> > +					temperature = <90000>;
> > +					hysteresis = <2000>;
> > +					type = "passive";
> > +				};
> > +
> > +				trip-point1 {
> > +					temperature = <95000>;
> > +					hysteresis = <2000>;
> > +					type = "passive";
> > +				};
> > +
> > +				cpu-critical {
> > +					temperature = <110000>;
> > +					hysteresis = <1000>;
> > +					type = "critical";
> > +				};
> > +			};
> > +		};
> 
> The CPU bottom thermal zones fail to register with v2:
> 
> [    0.146219] thermal_sys: Thermal zone name (cpu0-0-bottom-thermal) too long, should be under 20 chars

Urgh, did not test after renaming the zones.

Talking to Daniel Lezcano, he seems to suggest that the size can become
dynamic at some point. For now will switch back to
cpu0-0-0-bottom-thermal and cpuss0-0-thermal. So that's O for top and 1
for bottom. TBF, the positions are not really top and bottom on this
platform, but rather left top and right bottom.

> 
> Johan

