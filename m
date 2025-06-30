Return-Path: <devicetree+bounces-190955-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id E92DEAED541
	for <lists+devicetree@lfdr.de>; Mon, 30 Jun 2025 09:10:08 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id A502D1897EAE
	for <lists+devicetree@lfdr.de>; Mon, 30 Jun 2025 07:10:19 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A7601217704;
	Mon, 30 Jun 2025 07:09:41 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="BO/UiaG5"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f45.google.com (mail-wr1-f45.google.com [209.85.221.45])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BB76721421D
	for <devicetree@vger.kernel.org>; Mon, 30 Jun 2025 07:09:39 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.45
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1751267381; cv=none; b=ixXLZG4qYA7eKVzkwluqiIyM6K86X4eKayMdQ61CjztAg4ElHTN+EVcgsaTbTmwI79Fxf01hzb+oO6eragHIJLvXXyTi0ymS+wYMNylpVtu9CyDuRl290Gape5XxCjW0ak1S47wIw95vj2EnhMoFSIJ5CAI8+7b9nH++TDeLW9I=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1751267381; c=relaxed/simple;
	bh=ddiuvGxz83jlR9YKFCde8sWN22f7FfscTfyjv9iN2aU=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=LKJVun2KOxq12XY7AE0ApI3z6/GvGDh4NcvrSWmahJNmJe2MNcrqy3qENMj3WLUyIkkXTRieOfGP3v/TPqNIWHz7lzdYDYiN26yC3ZoRn+mdZs2heKE7GbTxpw9VMjjCiflqwVQ/UP8AY7jxF8I7dlIV+7y2atMdOgFnsZOw1Q4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=BO/UiaG5; arc=none smtp.client-ip=209.85.221.45
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wr1-f45.google.com with SMTP id ffacd0b85a97d-3a6d77b43c9so1540743f8f.3
        for <devicetree@vger.kernel.org>; Mon, 30 Jun 2025 00:09:39 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1751267378; x=1751872178; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=rL7MI4aiTt6sLWVA1573aHsEQCSTNCPjbPzbUM2vINQ=;
        b=BO/UiaG5MrdIT98UwEzy1UBaDJMj3rC9J1FSJglYBmBMmxYNsKhqHiPuoyvJG2oF5l
         djfNlnLo5lWaC0Sl8jPcgQPt2lumT5J1Qo+pcUpwmAZXRcQ5ndUpb8qZpD/2bvyOMRkP
         3CpkHCZB4Xu2qxtohitW11EXUUyysaXd+pNcSuHe8mpXjUszUGODQCp6rMzj1aqG43l/
         Xs+LDh+3BsbHP8LFwHdRVWm8eYfcEekH8Ysho0Gpjd6yyV8QN38RAYRhGhN5fD8DZJUO
         U4mFCYdZeRVRfd+ummGblsG9dovdo1Gs56M4WX19wqxaYaxl1MO1gjntIgi7IDeOMHOv
         YMeA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1751267378; x=1751872178;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=rL7MI4aiTt6sLWVA1573aHsEQCSTNCPjbPzbUM2vINQ=;
        b=Kq3aCbIf8IoiA+dmAyVqPpeILUZ4fNDU5nhHxaQzmc7Twc6wEcfs8EGcqcYh9llAFB
         8gYX0givkF93A4UJCBcIRiYAiPUU8iokQFVdxTCXcsGw+cPfTTSbEk9gtGf/QotXbwTl
         5AxIbK27Ywcf/3heD7M+Iv7bz8SWM0SwTillT8dgqqxpw//7aD9UJRET320Z4ncUo4ny
         RA2fR+N0tfTCnmPbOSFrHpiNUFc2YTOEHIm2cVSfitsmv5DCmgFtCv/azKewWRYtCSl9
         14dQF6U8fmrXToTEvUjU1P/VX2rmJEbmSNWEm7TyRbVdo2m9wv0kP/LxVJb35rGBfMga
         OO4w==
X-Forwarded-Encrypted: i=1; AJvYcCXJjQu1aot4cLsUtARkF6o6zwgCWjXEuk/C2Ekc74J3550RD1zT4QXzTlFGsmcMbhttSyVs188gLDWm@vger.kernel.org
X-Gm-Message-State: AOJu0Yygd5HYqhMxnX9wdNcsviiQzJAj5vHnz+exb9RgdJoPcOCGdfSO
	6lUJCW/PqKImRTD5VGShF6mvnrt5hEv9j/FZl/qeMNevtEwL5S63HhCH6MAGcgRyemo=
X-Gm-Gg: ASbGncvW4pFCTW8i4Ud5BYcHtBSp+ZqeQJtr2Za+V1j+yZtSsAaH5PE7/iOo5nBvOxc
	7/tlgfkBNt4+dWu7SLcRuWNtagbJpUgzFcqqjm5MgYkJupdAVD7tBP3sre9VFkJ3VPPtl4PMQhk
	EZjo6aTwZrbcIvsoQ8lqyCHV/Nk4X+41o+6pHB1kkSxqwcaq+7Ha17vKxk7slmqIMBJUtkOHW59
	rrNp+JNhoACFFYD7djTYouGR1uuvwnjPj2ZJMJlr+11dsJrOnIXYENvhJ6Mb143QVtS6BJYOxWc
	Yn3zDozdDTpYHSLXKFiWqU1VQu9ql3r3hblEFNUscBcMi3B0gSWgtFPev8v5x+W59rJKtv0wMae
	EBDNYRV6p
X-Google-Smtp-Source: AGHT+IGG2/mG1Wh2790HlDLNzSCGs1iMdSzJdT+7KKDDoR78pqdJxJTRqgq2iXVeOJWxsyzsHUkPZg==
X-Received: by 2002:adf:b649:0:b0:3a4:cf40:ff37 with SMTP id ffacd0b85a97d-3a8f45494cdmr8755726f8f.6.1751267377946;
        Mon, 30 Jun 2025 00:09:37 -0700 (PDT)
Received: from linaro.org ([2a02:2454:ff21:ef30:5b42:ea56:7d4e:16d2])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-453a1914d10sm16366245e9.4.2025.06.30.00.09.37
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 30 Jun 2025 00:09:37 -0700 (PDT)
Date: Mon, 30 Jun 2025 09:09:33 +0200
From: Stephan Gerhold <stephan.gerhold@linaro.org>
To: Casey Connolly <casey.connolly@linaro.org>
Cc: Bjorn Andersson <andersson@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Konrad Dybcio <konradybcio@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Rob Herring <robh@kernel.org>, cros-qcom-dts-watchers@chromium.org,
	devicetree@vger.kernel.org, linux-arm-msm@vger.kernel.org
Subject: Re: [PATCH] arm64: dts: qcom: sc7280.dtsi: prevent garbage on serial
 port
Message-ID: <aGI4LTPmiKxtrStQ@linaro.org>
References: <20250626132333.351351-1-casey.connolly@linaro.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20250626132333.351351-1-casey.connolly@linaro.org>

On Thu, Jun 26, 2025 at 03:23:30PM +0200, Casey Connolly wrote:
> During early boot phases there can be garbage characters on the serial
> RX port unless it is configured as pull-up. Add the pull-up bias and
> mark the rx/tx pinconfs as being necessary for all boot phases.
> 
> Signed-off-by: Casey Connolly <casey.connolly@linaro.org>
> ---
>  arch/arm64/boot/dts/qcom/sc7280.dtsi | 3 +++
>  1 file changed, 3 insertions(+)
> 
> diff --git a/arch/arm64/boot/dts/qcom/sc7280.dtsi b/arch/arm64/boot/dts/qcom/sc7280.dtsi
> index 64a2abd30100..60e4a311405a 100644
> --- a/arch/arm64/boot/dts/qcom/sc7280.dtsi
> +++ b/arch/arm64/boot/dts/qcom/sc7280.dtsi
> @@ -5742,13 +5742,16 @@ qup_uart4_rx: qup-uart4-rx-state {
>  
>  			qup_uart5_tx: qup-uart5-tx-state {
>  				pins = "gpio22";
>  				function = "qup05";
> +				bootph-all;

I'd add bias-disable here to have consistent state applied to both pins
and not just the RX one.

Thanks,
Stephan

>  			};
>  
>  			qup_uart5_rx: qup-uart5-rx-state {
>  				pins = "gpio23";
>  				function = "qup05";
> +				bootph-all;
> +				bias-pull-up;
>  			};
>  
>  			qup_uart6_cts: qup-uart6-cts-state {
>  				pins = "gpio24";
> -- 
> 2.50.0
> 

