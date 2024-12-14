Return-Path: <devicetree+bounces-131093-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 186DD9F1F09
	for <lists+devicetree@lfdr.de>; Sat, 14 Dec 2024 14:39:46 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 22AAE16724F
	for <lists+devicetree@lfdr.de>; Sat, 14 Dec 2024 13:39:43 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 800DC193070;
	Sat, 14 Dec 2024 13:39:35 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="iEfcoWpE"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lj1-f181.google.com (mail-lj1-f181.google.com [209.85.208.181])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D31D3191F9E
	for <devicetree@vger.kernel.org>; Sat, 14 Dec 2024 13:39:32 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.181
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1734183575; cv=none; b=Bbir7mHf//YKVLqMOLeTerYAlCqCaTqO/fnT8PjX3Z6wLwKfo3t73eMh3yw0oZvc1ZZV8jIZNMZWrLd5/kKQkUmYO4jDTqa+PncWVJzQVlmAABSftwIJCiDLBqiV7Qy3hn6FArVhNxpd3nz8iX5e+MRptKOLPYnF+/4k0TKjgB8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1734183575; c=relaxed/simple;
	bh=uCCTyowJytqPjeU0yepVW6ZTRMX3ONlee0DNAXnNUZo=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=Zqn1jbLupSv7i2U72yN86zycnpqZ5z0rOOTNXEUAIbT0oCYvTangclEJ9exfNmQ9xzlNYBkpH2+u9gsMc4FnBlDhbw4bfwe8kZS9z9+aCFcUf40Js3m2fvxlismZ16gMP0enF0g8tKgfjHcvyiccoBAq8UuzbNXq57xo9LvvBlg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=iEfcoWpE; arc=none smtp.client-ip=209.85.208.181
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lj1-f181.google.com with SMTP id 38308e7fff4ca-30229d5b229so24857231fa.0
        for <devicetree@vger.kernel.org>; Sat, 14 Dec 2024 05:39:32 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1734183571; x=1734788371; darn=vger.kernel.org;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:from:to
         :cc:subject:date:message-id:reply-to;
        bh=PyYLiYc+Kz4TS/e32iRPlnuJpX7Gz5eKbfwdorLaoU4=;
        b=iEfcoWpEi74xTB9YuVx+oaXlc510z+LughYijBiQc41m8PHiJISfTuaJSPaugpVuiH
         /MFfAkXV663Fr86vxeS9aEUiAavuAakOLIvek3kTF3sKCGnG3HQb45lh6wcEwEEgwDNW
         Fw/EYfU0tOwfNuNKRZDPapEeQKx1UbpXHNU11GRnGQvxMxsaqApzxsDyw8l9aaBHpMeV
         nVwLmS1aACTuoRBCoMIKG39N1Yv11Xp0Htnd2fndyBHy9zEKvPSA5fjXS4PbqkDnZb9b
         XyrQjcQ5zJBbaDxYdCBMjDtx/R79Ze5gB0ib3H5qXHNGO0xVXmPSrfJlHzJZVxUUJC/B
         x6kw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1734183571; x=1734788371;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=PyYLiYc+Kz4TS/e32iRPlnuJpX7Gz5eKbfwdorLaoU4=;
        b=FQcBT23BjoMZnVkl/+apA9HuW8sexOWQtQm5Vz/pnrR2h1VgwH9X4x6f0lsAtDgzPy
         v9UYDiDeXAHBSzHCBIfV6cS7XJaye00vfHaUyJiW55kD2Yo0QHpDTsJy/VD+Dpk7WGDY
         n0tHjoRvEjqMA/I9PNnQbGAH0IxUkrvGufuizrz2BA440giMTRctPUf7IuPNF07Mxv/N
         SVOKKGptnzB1YHbFxWpKwTA89yKyzjMGt21chJT9fzFGbRaU1srnBYkOP+j4yqcoghOC
         3Npf+1WOmIAvmq4DQpFJjIDCB3tP/sevzGMtAGoZyyi5x4AgLgXPPl5F66NCrND8woFU
         xUiQ==
X-Forwarded-Encrypted: i=1; AJvYcCVDqy9CPx1HRrty7+615uCNelg/sYqvGgtAtIiLaYDDC788oCXJ7s8KRJzLmLteziyg934e2LIHtHpm@vger.kernel.org
X-Gm-Message-State: AOJu0Yy3faT2svOFddP8GULbXHyRuSsZDUXY5SBf3JzKGZFCVvVXS4b3
	j2fgY0vX/oInKG54s0vDOPmpCaGla8qWN5ikQ7j5m/P+/rWff5lkBkornZ8haa4=
X-Gm-Gg: ASbGncslxdRB5qW5U4qOetB5V2yQFohrTD0ZP1MyrmZSnJ8GdVuY2cSOQKdzbr8BQoM
	I/znduBdTI7gCtgU5Nc//3L009Ah2N1lJR5fa8S6pWDqxCiW9pLzjwd70Ds86xnYXX1jJq37tLR
	4oVeyQQSVoxLhlLRmKUnx6od137R62tjd+Dp3JyKcyO7AKVhUk8K+32pRV0lwZzLZYpjH1sZLBM
	LxhIecD6JK9HQ5rTHVHCJ9zBnuxV1DQc+CO8oJium1/DmvNQ2ArURufmySZwK8VHDRHR++S7Cvz
	TAYejijN+wv5eorX+BeAAoUFdiaT/B6s1xPP
X-Google-Smtp-Source: AGHT+IFiGcfkBdkpjQAPcZxAxvnDue49Lcam66Ov/sQHEPWgB+rp6vC1TwupJiCBCPo5zIatJCwGYw==
X-Received: by 2002:a05:651c:1544:b0:2ff:d83d:9155 with SMTP id 38308e7fff4ca-302544f9757mr21690611fa.27.1734183571029;
        Sat, 14 Dec 2024 05:39:31 -0800 (PST)
Received: from eriador.lumag.spb.ru (2001-14ba-a0c3-3a00--b8c.rev.dnainternet.fi. [2001:14ba:a0c3:3a00::b8c])
        by smtp.gmail.com with ESMTPSA id 38308e7fff4ca-30344061e1bsm2427441fa.51.2024.12.14.05.39.28
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 14 Dec 2024 05:39:29 -0800 (PST)
Date: Sat, 14 Dec 2024 15:39:27 +0200
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
To: Pengyu Luo <mitltlatltl@gmail.com>
Cc: andersson@kernel.org, chenxuecong2009@outlook.com, conor+dt@kernel.org, 
	devicetree@vger.kernel.org, gty0622@gmail.com, johan+linaro@kernel.org, 
	konrad.dybcio@oss.qualcomm.com, konradybcio@kernel.org, krzk+dt@kernel.org, 
	linux-arm-msm@vger.kernel.org, linux-kernel@vger.kernel.org, robh@kernel.org
Subject: Re: [PATCH 3/3] arm64: dts: qcom: sc8280xp: Add Huawei Matebook E Go
 (sc8280xp)
Message-ID: <lwhell4z72srw67gj6gpt2uyqzx4k5dzjw5xs7dab6lbya7soi@tsoh2bcn2gwc>
References: <20241213085100.564547-1-mitltlatltl@gmail.com>
 <20241214122303.653935-1-mitltlatltl@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20241214122303.653935-1-mitltlatltl@gmail.com>

On Sat, Dec 14, 2024 at 08:23:00PM +0800, Pengyu Luo wrote:
> On Fri, Dec 13, 2024 at 1:13 AM Konrad Dybcio <konrad.dybcio@oss.qualcomm.com> wrote:
> 
> [...]
> 
> >> +
> >> +		/* /lib/firmware/ath11k/WCN6855/hw2.1/board-2.bin
> >> +		 * there is no calibrate data for huawei,
> >> +		 * but they have the same subsystem-device id
> >> +		 */
> >> +		qcom,ath11k-calibration-variant = "LE_X13S";
> > 
> > Oh, this can be taken care of! See [2], [3].
> 
> [...]
> 
> Hi, Konrad
> 
> I want to distrub you again.
> 
> Finally, I found something, after I enabled ath11k boot dbg, I got my
> id_string='bus=pci,vendor=17cb,device=1103,subsystem-vendor=17cb,subsystem-device=0108,qmi-chip-id=2,qmi-board-id=255`
> 
> With qca-swiss-army-knife (see [1])
> 
> $ ./ath11k-bdencoder -e board-2.bin | grep -i "$id_string"
> bus=pci,vendor=17cb,device=1103,subsystem-vendor=17cb,subsystem-device=0108,qmi-chip-id=2,qmi-board-id=255.bin created size: 60048
> 
> It have already been here. So that means I don't need to extract from
> Windows. I just extract it from linux-firmware then give it a variant
> name and send patches to ath11k, right?

No. Usually 255 is an ID that is used by a variety of boards. So,
basically, you have to extract board data from Windows, add a proper
calibration variant that is specific to your board and then send the
resulting data to the ath11k mailing list.

> 
> Pengyu
> 
> [1] https://github.com/qca/qca-swiss-army-knife

-- 
With best wishes
Dmitry

