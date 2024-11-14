Return-Path: <devicetree+bounces-122002-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id EE78F9C955B
	for <lists+devicetree@lfdr.de>; Thu, 14 Nov 2024 23:49:15 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 1A567B20BA3
	for <lists+devicetree@lfdr.de>; Thu, 14 Nov 2024 22:49:13 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 636631B0F2C;
	Thu, 14 Nov 2024 22:49:04 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="r3Mkiw4D"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-f46.google.com (mail-lf1-f46.google.com [209.85.167.46])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DE2361ABED8
	for <devicetree@vger.kernel.org>; Thu, 14 Nov 2024 22:49:01 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.46
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1731624544; cv=none; b=FjAaLyNYuONHlTaxivq71LlsecJsGDpH5YQ6bX2Dh8hrPtwmj5YpbLdCDl0RLNiTyA3I9wMluuvMW+IwkooOJzo6Qe2/vQQD25ujUg29YOuLckKa/ZAhUZU2RUvFYkZfYxg8gw9faOvjfHVGnc/0HRbSvbny69ukaJJNL9gKQIY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1731624544; c=relaxed/simple;
	bh=nw6VoUZvZNkdUACTTIdXm7iGFjKeQXD96Z3wjmO7E0E=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=UWr/gbEbBlBCJc1qctxoy0QxnrYR2a8bUx7mjNsTfznl9bCAPk/y2uaf4HshuQVRs1SdyLO1Fgjf4bNI3xp1g+r+iub2QLDKp0+IEI3b/9xRmkUCkyuyqcGIRMgm0ZrqvRDiSEW2PXO4ghV5ghiKbCKLm9AqFshe3C+OTDsZl24=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=r3Mkiw4D; arc=none smtp.client-ip=209.85.167.46
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lf1-f46.google.com with SMTP id 2adb3069b0e04-539f76a6f0dso80449e87.1
        for <devicetree@vger.kernel.org>; Thu, 14 Nov 2024 14:49:01 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1731624540; x=1732229340; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=y+li1obQZDvHKH1dQ4Z+Cz98Hc0DiodhU7YwjL0CPgQ=;
        b=r3Mkiw4DfNsvSchnyij6eK9tzqSgXetX8yAZa5otp2hWljvJ9iBbw59RhVAh+ts5uP
         7+ERMi6FCxDhdmisJ1bYP3vtD8/5DGsi/bRIGwvg6+ivarwVC0c2R5zxLCJFDd5/O/V5
         8R7UlEyeFsLifdc2iIn5qIBIIBVZ4ICiURXkoj0Z6J7PaM/S5p+ifNiG0MGjGdvMgNF/
         Prj+HAfSbP4YQRlTuyQNoE3yW8E5kFCx9ib2Be+4xIr6R329MF0xedYv98BwWOjKofil
         NrX+uv3uyXJm9Fkdv8qOS1qSZnhUFR9AUv9Z3p656YPU7twbQ1BgDuRNlok678S0rqyk
         WzoQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1731624540; x=1732229340;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=y+li1obQZDvHKH1dQ4Z+Cz98Hc0DiodhU7YwjL0CPgQ=;
        b=O08eQuFpaZoSdAPzzNB8vTHNh1s5JS/rRc/VS/AvcH5KZCxAaQDyINCuB3GH9vz2Ln
         +31fRlc5TnV2ULkSzNx5XbdFQT7jX8ue2QIHwKJFwSV6Wj7Hzfo+f3Ucfrfuytd++Cte
         iuEA2f1uFK4M1Gor33FnVqUGdvzzmnjGMU7YfXAm7YJo97nJdwdzXUk5PGyz3vx0z1Mx
         EJpQFHR+QEopMqSHbU6zq9tlcItJfD3scZX1hYup/IYjAp6QV3UVUH6BF+xU7gyiDO5X
         6ftq8wUGLtQs0nPMdcIlw3jUlKDbSvvzLrTZYjeEa4JziFWlof68mB1qlQmqAoe+kT2B
         p3JQ==
X-Forwarded-Encrypted: i=1; AJvYcCUtpDnKlytOdcA9nPGMM3KtYk+3V+dJOBSN8U96J8XVLh9iY+L67sgGP8Y8vF8nZ3z0Q10uZyTA4l2N@vger.kernel.org
X-Gm-Message-State: AOJu0YywGxVSYEXB/64u5Uyg47PJHVCd4D2nl/W6zsqY41TpXhSYGl+U
	SIlkz+NnK1fQBjhXV9ntYqxkBtrTVUE7IV50NJluTyUI9qdpJNJPzrfZ06sXL+Y=
X-Google-Smtp-Source: AGHT+IEciwhn6WNJsfswVN08/jxN2a5HA4mqW9TSwasMhjNmEK4pBMTbGoHEAgA+zAKx/x+31BOCNw==
X-Received: by 2002:a05:6512:e95:b0:53c:761c:2a14 with SMTP id 2adb3069b0e04-53dab2a9191mr155211e87.29.1731624539902;
        Thu, 14 Nov 2024 14:48:59 -0800 (PST)
Received: from eriador.lumag.spb.ru (2001-14ba-a0c3-3a00--7a1.rev.dnainternet.fi. [2001:14ba:a0c3:3a00::7a1])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-53da65000a7sm332985e87.76.2024.11.14.14.48.57
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 14 Nov 2024 14:48:58 -0800 (PST)
Date: Fri, 15 Nov 2024 00:48:55 +0200
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
To: Jagadeesh Kona <quic_jkona@quicinc.com>
Cc: Brian Masney <bmasney@redhat.com>, 
	Bjorn Andersson <andersson@kernel.org>, Konrad Dybcio <konradybcio@kernel.org>, 
	Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
	Conor Dooley <conor+dt@kernel.org>, linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org, Ajit Pandey <quic_ajipan@quicinc.com>, 
	Imran Shaik <quic_imrashai@quicinc.com>, Taniya Das <quic_tdas@quicinc.com>, 
	Satya Priya Kakitapalli <quic_skakitap@quicinc.com>, Shivnandan Kumar <quic_kshivnan@quicinc.com>
Subject: Re: [PATCH 2/3] arm64: dts: qcom: sa8775p: Add CPU OPP tables to
 scale DDR/L3
Message-ID: <daqa3krsp6emdha6h7tlcelsggb6qeilnojgtfxjbp5zw4n6ow@xzwdmu55ygjf>
References: <20241017-sa8775p-cpufreq-l3-ddr-scaling-v1-0-074e0fb80b33@quicinc.com>
 <20241017-sa8775p-cpufreq-l3-ddr-scaling-v1-2-074e0fb80b33@quicinc.com>
 <ZxEwVShJuMH4J1Hp@x1>
 <9179759d-7af1-409f-8130-1136c9ae4ecd@quicinc.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <9179759d-7af1-409f-8130-1136c9ae4ecd@quicinc.com>

On Mon, Nov 11, 2024 at 06:39:48PM +0530, Jagadeesh Kona wrote:
> 
> 
> On 10/17/2024 9:12 PM, Brian Masney wrote:
> > On Thu, Oct 17, 2024 at 02:58:31PM +0530, Jagadeesh Kona wrote:
> >> +	cpu0_opp_table: opp-table-cpu0 {
> >> +		compatible = "operating-points-v2";
> >> +		opp-shared;
> >> +
> >> +		cpu0_opp_1267mhz: opp-1267200000 {
> >> +			opp-hz = /bits/ 64 <1267200000>;
> >> +			opp-peak-kBps = <6220800 29491200>;
> >> +		};
> >> +
> >> +		cpu0_opp_1363mhz: opp-1363200000 {
> >> +			opp-hz = /bits/ 64 <1363200000>;
> >> +			opp-peak-kBps = <6220800 29491200>;
> >> +		};
> > 
> > [snip]
> > 
> >> +	cpu4_opp_table: opp-table-cpu4 {
> >> +		compatible = "operating-points-v2";
> >> +		opp-shared;
> >> +
> >> +		cpu4_opp_1267mhz: opp-1267200000 {
> >> +			opp-hz = /bits/ 64 <1267200000>;
> >> +			opp-peak-kBps = <6220800 29491200>;
> >> +		};
> >> +
> >> +		cpu4_opp_1363mhz: opp-1363200000 {
> >> +			opp-hz = /bits/ 64 <1363200000>;
> >> +			opp-peak-kBps = <6220800 29491200>;
> >> +		};
> > 
> > There's no functional differences in the cpu0 and cpu4 opp tables. Can
> > a single table be used?
> > 
> > This aligns with my recollection that this particular SoC only has the
> > gold cores.
> > 
> > Brian
> > 
> 
> Thanks Brian for your review. Sorry for the delayed response.
> 
> We require separate OPP tables for CPU0 and CPU4 to allow independent
> scaling of DDR and L3 frequencies for each CPU domain, with the final
> DDR and L3 frequencies being an aggregate of both.
> 
> If we use a single OPP table for both CPU domains, then _allocate_opp_table() [1]
> won't be invoked for CPU4. As a result both CPU devices will end up in sharing
> the same ICC path handle, which could lead to one CPU device overwriting the bandwidth
> votes of other.

All of this should be a part of the commit message.

> 
> [1] https://git.kernel.org/pub/scm/linux/kernel/git/next/linux-next.git/tree/drivers/opp/core.c#n1588
> 
> Thanks,
> Jagadeesh
>  

-- 
With best wishes
Dmitry

