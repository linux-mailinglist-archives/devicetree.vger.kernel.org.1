Return-Path: <devicetree+bounces-171871-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 18553AA069D
	for <lists+devicetree@lfdr.de>; Tue, 29 Apr 2025 11:06:49 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 3E1003A8A2D
	for <lists+devicetree@lfdr.de>; Tue, 29 Apr 2025 09:05:56 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id EC6B629DB96;
	Tue, 29 Apr 2025 09:06:04 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="rZxufACr"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ej1-f51.google.com (mail-ej1-f51.google.com [209.85.218.51])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2964929290D
	for <devicetree@vger.kernel.org>; Tue, 29 Apr 2025 09:06:02 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.218.51
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1745917564; cv=none; b=oJh1I45lJ8h55QcKOD/mancNj74nC00bdhbkXv4+zPFcz1fD2ls424Jr6OHntSI6XvjDRgLg5jgQJWY364ZdoeZx+Ph1044qFuGOamcEXD+T+TWeMJcJgaRv0d1JY71qm8bJpv2fmuS0ZPSddWmtyGKhvqVLBDf/ZVYHXkAz6ak=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1745917564; c=relaxed/simple;
	bh=qkRHa501eVnNgHsKBEHeYXm/l1LwtCxMPaoCXH+474k=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=ogHSTL8Ojo4UQftM+TUYGYlFFSBflHhKX2ksn5NQVpBGlSOlixpNkzKeccLjv4kiQz7V6/QPGzS7uJeFOLJP6o36lnLJqkEbj/UvQztcxiAXyu38e4Yicx7FqV+1vaCTt9Kw58rcCNlo3K4fX4wvL8eFHCri2QZ75X0g9YdYwIk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=rZxufACr; arc=none smtp.client-ip=209.85.218.51
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-ej1-f51.google.com with SMTP id a640c23a62f3a-ac25520a289so910252266b.3
        for <devicetree@vger.kernel.org>; Tue, 29 Apr 2025 02:06:02 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1745917561; x=1746522361; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=St34CXEhhvs84MHtoWjKg9uUjbKo8QcnXhc2ZI3qO8s=;
        b=rZxufACrhzIDoeAlm2hInizgikdWFKt2H+5b7wFu3x6isHDaTLC3FZumxVDz2dRxhQ
         YcpoSU/+3WZmuOnuqGPro5UN3J+8QFntUTMALCl1i3LH5W7VeBAdozReG8ZJKKSbL33z
         wwpDZDdSrffaAL5xdWb8/NQdmyKyJNDpNjGNu04kOjJV2pv1tVp48nh9ApY5YEBK8Snk
         xWStwit8ubaiLFey/ImZCFEaVWo73gpf8H6o6TIAYtMBF1QzMyYesMta9nxSBTW1731R
         TDsCZZLd38mFHZ3sHJQCoXEQkne+8nV83RfAU++LB0ACOvg7rbaAAbyQZGaPMklX1cyv
         mS1Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1745917561; x=1746522361;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=St34CXEhhvs84MHtoWjKg9uUjbKo8QcnXhc2ZI3qO8s=;
        b=SsU4WR1WTBeD5dslqE9Le6Y7VEWjRLtNkgQ4efqTE4pCtnkUT1ac+JiK+1PKK0EOKE
         UBrnionvUzvU/ZXsg8BZM5Iew8lA6YvvI52GWGyHLMGp80tdOQFNhKva2ryovYFcUS53
         RaHOZW4bPCE2r0Xcz/vdTQBBj1yv7UJ1f9Txpua1RUfutYOaoT0q1kHoEiNkTgcVcagT
         H2vF3nO+xV9HG27kiwprpvMF1cm47VFGW0Txoq7IUaa8FsTObPNJlPQFoD44u4ITxu+i
         nKG7TJgLWJ48de+PP9jcLPFIli0wWedmWLTqWId/t0z8SL+LuBLeLQeUGymPeoYDMmKz
         pcFQ==
X-Forwarded-Encrypted: i=1; AJvYcCUotKs37fTSCc6V+l8kqvz53815rM81acgiUF8vkMfGK+NaeimSeDjF8HRxYuw+6/5DQOEx+XtDntT9@vger.kernel.org
X-Gm-Message-State: AOJu0Yw1AfzNWAAqHlpcO6PLBnu1erUbzvZD8Y4en50hbJSAbtxrbre1
	oMlMK6gdo0ByLyG8ydKVvLqxRzRBtyc96flr7H7hEyWC2ZG1zD3MOR4i5b7tCR4=
X-Gm-Gg: ASbGncsyOIhjgJCSO1hx+ymu+nxOHjvDvOxj0EB19FowqV4VSMhKNXcJYQsUmzn96oy
	pyADg+LHHoz1wj12aAVRojO9zTNtseKjJ0XlWwmBfAU7z8xpjDzlfBxU19hUwqW5Ee2Nac1g/S7
	T6/W4Mx+22fh5ENcmUsnhagvyDd1Wf92+WtPy/LnOZj42g3brPnk/MtYaE8nvgvZb95qBxV9wOi
	iGhV3UGlVcvUZVuQPu3bhMNGM7xulzZrunwQT0bIvcmJSeL8A/B2bdkGn7WWn8emwdp3ypD+PFq
	kyy2y/xtXAfnP5c3MSV9PZNmNIhg5ksddo6MwA==
X-Google-Smtp-Source: AGHT+IFmI25gdGUDFX+EYL8wwESKP6CDqL7XcjLVoi/vRf53apyrXKNyCcwgIrqiDFdc//uuYfkUpg==
X-Received: by 2002:a17:906:6a21:b0:ace:7be1:1434 with SMTP id a640c23a62f3a-acec4cecc3fmr281782466b.30.1745917561077;
        Tue, 29 Apr 2025 02:06:01 -0700 (PDT)
Received: from linaro.org ([62.231.96.41])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-ace6e41c934sm743471266b.8.2025.04.29.02.05.59
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 29 Apr 2025 02:06:00 -0700 (PDT)
Date: Tue, 29 Apr 2025 12:05:58 +0300
From: Abel Vesa <abel.vesa@linaro.org>
To: Johan Hovold <johan@kernel.org>
Cc: Bjorn Andersson <andersson@kernel.org>,
	Konrad Dybcio <konradybcio@kernel.org>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Sibi Sankar <quic_sibis@quicinc.com>,
	Rajendra Nayak <quic_rjendra@quicinc.com>,
	Xilin Wu <wuxilin123@gmail.com>,
	Jens Glathe <jens.glathe@oldschoolsolutions.biz>,
	Srinivas Kandagatla <srini@kernel.org>,
	Johan Hovold <johan+linaro@kernel.org>,
	linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>,
	Konrad Dybcio <quic_kdybcio@quicinc.com>
Subject: Re: [PATCH 0/7] arm64: dts: qcom: x1e80100-*: Drop useless DP3
 compatible override
Message-ID: <aBCWdpk2HXPaJPlH@linaro.org>
References: <20250429-x1e80100-dts-drop-useless-dp-compatible-override-v1-0-058847814d70@linaro.org>
 <aBCUiIrg3oehMVjx@hovoldconsulting.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <aBCUiIrg3oehMVjx@hovoldconsulting.com>

On 25-04-29 10:57:44, Johan Hovold wrote:
> On Tue, Apr 29, 2025 at 10:42:28AM +0300, Abel Vesa wrote:
> > It all started with the support for CRD back when we had different
> > compatibles for eDP and DP. Meanwhile, that has been sorted out and it
> > is now figured out at runtime while using only the DP compatible.
> > 
> > It's almost funny how this got copied over from CRD and spread to all
> > X Elite platforms.
> > 
> > TBH, the best reason to drop it ASAP is to make sure this doesn't spread
> > beyond X Elite to newer platforms.
> > 
> > Functionally nothing changes.
> > 
> > Signed-off-by: Abel Vesa <abel.vesa@linaro.org>
> > ---
> > Abel Vesa (7):
> >       arm64: dts: qcom: x1e-crd: Drop useless DP3 compatible override
> >       arm64: dts: acom: x1e80100-qcp: Drop useless DP3 compatible override
> >       arm64: dts: qcom: x1e80100-t14s: Drop useless DP3 compatible override
> >       arm64: dts: qcom: x1e80100-s15: Drop useless DP3 compatible override
> >       arm64: dts: qcom: x1e80100-hp-x14: Drop useless DP3 compatible override
> >       arm64: dts: qcom: x1e80100: Drop useless DP3 compatible override
> >       arm64: dts: qcom: x1e80100-romulus: Drop useless DP3 compatible override
> 
> Since this is essentially a clean up perhaps you should have squashed
> these into one patch.

I was actually thinking that before sending, but then I decided to add
the Fixes tag to each one. Since it's such a trivial worthless cleanup,
I wasn't sure if the Fixes tags were worth it either.

I can squash them if the consensus is that it's not backporting.

> 
> Either way:
> 
> Reviewed-by: Johan Hovold <johan+linaro@kernel.org>

Thanks!

Abel

