Return-Path: <devicetree+bounces-196175-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 6032FB0452B
	for <lists+devicetree@lfdr.de>; Mon, 14 Jul 2025 18:15:26 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id E28C116154C
	for <lists+devicetree@lfdr.de>; Mon, 14 Jul 2025 16:15:24 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B35C425F790;
	Mon, 14 Jul 2025 16:15:20 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="yHMbRUFY"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f53.google.com (mail-wr1-f53.google.com [209.85.221.53])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D32A925F780
	for <devicetree@vger.kernel.org>; Mon, 14 Jul 2025 16:15:18 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.53
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752509720; cv=none; b=V1n8eGa0w8nEyBpHV89RmF8SFPxkA2jaz/uVBblUi55fWvTfozwWJ8sdIOABIfRUGnqbpD6GvmvvlbxJALRA8hq3MMAn/3NXd4CEdsqXvD2SE3JXf0/7HJRr0XwAMqfi7J/QWOBYjywQGL4clnRNHZ/RX1goXahv2neT2y3YKZs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752509720; c=relaxed/simple;
	bh=IjBeInEqaR1AscqLvKgKjS4XTBwWEKh0ri2IaZtcn4s=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=UtFcYk5RG8j54BVwEaby+F8C0PUXcvmmi0TjkxjK0kwVeXTGqmcC5xKPEisWKX5A0z9xu/MkkzjkTWpmPrfav2HfDYSGLp3AoakoczmYIZEy283yTYyCycvr59sWMzhXSZ/Xc0Q2yJMkj3+DNbk/pAFjwMw3pIDMFwelU0qj7ok=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=yHMbRUFY; arc=none smtp.client-ip=209.85.221.53
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wr1-f53.google.com with SMTP id ffacd0b85a97d-3a4e742dc97so3278531f8f.0
        for <devicetree@vger.kernel.org>; Mon, 14 Jul 2025 09:15:18 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1752509717; x=1753114517; darn=vger.kernel.org;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:from:to
         :cc:subject:date:message-id:reply-to;
        bh=3uAikWubYwboCjSRWy3UuVNVoy2pKNWZlPhshgLVbQ4=;
        b=yHMbRUFYaBz3RNIpGguR3WfWlMI6llGgXJPfWH5Wpk+spsP0Z7H3TBF0vuoosFRTU8
         PPn1sSsgHWZuIx4QuWd8FF3oIFVMLt+fnBNnBewu3OGCOOg8ish5nN6Ma7WbkVwPfmua
         QDvAzI3bjMgHxeMuBtY7qvlglEZvinP6C9LtctkFAJZ+F1g9llB3XRCayf3klrIKEIUx
         eH68+o5vyNmhlPOfBFGqOfzlm+Ls/qht/L0tyfiLtK8TKGR7PMQ+jCDLzAuUdm/9pLgS
         gx/oDoOZeMo+SbSl6bGgRgL6kg+UjbO6b/J5MaeTMFpU63kwX87mWg2AxzJ1GZDrax6L
         PsIQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1752509717; x=1753114517;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=3uAikWubYwboCjSRWy3UuVNVoy2pKNWZlPhshgLVbQ4=;
        b=c0nBahy3NhA3C9rYob27GBHMCSWpuoxNRgMcdh8KY7XblRKk106992vV04wfLjMrVt
         S+H++InSq4Rn5NXR1jt9N3f6sxNt4zPYNweVVN2gvXEdYFx1Ofjqi69qWwcc/vOuOFFX
         //9/HK0AlDMPZxbByogs1q/ZmMxVOk+AXpKppgA762DUCfFGpc+38mLUwNORlT53mF5f
         t2peqwXuazdI3MRFKGRHuNu0SA8+qnrUDUhnM/rJ0BuaJukoqb2BoeMQq3kYZbM8osGH
         5tmVsWKqnmwehP8sSa2QUDP5dKoJ+9Xyyf+cYBymiROzYWoUX+xXPHNs8yJmKm9Ltge7
         4pAA==
X-Forwarded-Encrypted: i=1; AJvYcCW6l1qVIhqNRsYIOpNy7H+5X69XrviyUynpUws9V9UDdoGrMbCa/B1HaGQWNbD5uBf0FPyAOroUbjhz@vger.kernel.org
X-Gm-Message-State: AOJu0Yw9Ebd508lASVvKE3hpX4w3eqT+YH26UiSFr6SrCuyM5/8aAqE4
	FAUXDXwLb/+BZqG7DLsU+yMnylPfOGIvEAC479cMSv7d/pvpi3G6p3xhZ4A6/54NZTV5IssL4kQ
	sShZj
X-Gm-Gg: ASbGnctnZ9YSaO/a8sRY+X+WX+dS7UmBWRSrl7QYeG0NDnNURynI05vn4v1WPLm2Zc2
	dWKGTGK6I4LsJ48gp+D90+Hky4z7woigHMVCV6CGBAOIzbCxA2Isa7YTU66JbLtX1tbLijE4tci
	9go+LvY9c21c2JH6siAqiz/Rdj5hn0HNK6yURaAVaKpLvuiOd3RZPVWGA9U/TSzYfj66N0A7HWg
	4O06CVguKzJk/gVZ47aKi/EE+fllmFW6958tn0ORG/vfpnRguONsJKz3lWOjBF/gGjkGH52qRhr
	OKPYUdpRU7lYX57bLIEAkCJtYf65WLQS4Q1e1LbaxTDE9tPVBZc4kk5C2bcNDBGy0s7doY9adAR
	U9gdzNYRCwpS3UrJosonC5fYBW12gBRhqarign+Nj5imTdfkpL4+XTfGMgFdr
X-Google-Smtp-Source: AGHT+IF8Q5A5IBRFKNtkBPYHjR2xPA0d69ZBpYOWGitAoZJklFlZt7awSNWbCXaAjhvDRCs5mvb/WQ==
X-Received: by 2002:a05:6000:2dc6:b0:3a3:64b9:773 with SMTP id ffacd0b85a97d-3b609526044mr126904f8f.10.1752509717039;
        Mon, 14 Jul 2025 09:15:17 -0700 (PDT)
Received: from mai.linaro.org (146725694.box.freepro.com. [130.180.211.218])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-3b5e8e0d5f5sm12914206f8f.56.2025.07.14.09.15.16
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 14 Jul 2025 09:15:16 -0700 (PDT)
Date: Mon, 14 Jul 2025 18:15:14 +0200
From: Daniel Lezcano <daniel.lezcano@linaro.org>
To: Frank Li <Frank.Li@nxp.com>
Cc: Thomas Gleixner <tglx@linutronix.de>, Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Animesh Agarwal <animeshagarwal28@gmail.com>,
	"open list:CLOCKSOURCE, CLOCKEVENT DRIVERS" <linux-kernel@vger.kernel.org>,
	"open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS" <devicetree@vger.kernel.org>,
	imx@lists.linux.dev
Subject: Re: [PATCH v2 1/1] dt-bindings: timer: fsl,ftm-timer: use items for
 reg
Message-ID: <aHUtEgJxDst0il_4@mai.linaro.org>
References: <20250523141437.533643-1-Frank.Li@nxp.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20250523141437.533643-1-Frank.Li@nxp.com>

On Fri, May 23, 2025 at 10:14:37AM -0400, Frank Li wrote:
> The original txt binding doc is:
>   reg : Specifies base physical address and size of the register sets for
>         the clock event device and clock source device.
> 
> And existed dts provide two reg MMIO spaces. So change to use items to
> descript reg property.
> 
> Update examples.
> 
> Fixes: 8fc30d8f8e86 ("dt-bindings: timer: fsl,ftm-timer: Convert to dtschema")
> Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
> Signed-off-by: Frank Li <Frank.Li@nxp.com>
> ---

Applied, thanks

-- 

 <http://www.linaro.org/> Linaro.org │ Open source software for ARM SoCs

Follow Linaro:  <http://www.facebook.com/pages/Linaro> Facebook |
<http://twitter.com/#!/linaroorg> Twitter |
<http://www.linaro.org/linaro-blog/> Blog

