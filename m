Return-Path: <devicetree+bounces-151363-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 1689CA458CC
	for <lists+devicetree@lfdr.de>; Wed, 26 Feb 2025 09:49:55 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 3021F3AAC7C
	for <lists+devicetree@lfdr.de>; Wed, 26 Feb 2025 08:49:44 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 1057A20E302;
	Wed, 26 Feb 2025 08:49:49 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="AInarJXT"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lj1-f175.google.com (mail-lj1-f175.google.com [209.85.208.175])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A88CC20AF73
	for <devicetree@vger.kernel.org>; Wed, 26 Feb 2025 08:49:45 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.175
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1740559789; cv=none; b=NC6ZkWPPXxzgIZVbXIprnP0KE7lZykhjnmm6w5WHfW1GT3nLW5MnpYjkP2bbrDIkre5phul6+WLSeC8LPwNQmLtgfvqPPHLol6XXC4JibCHU7CQNA9IGV2BjCt34ZOAoqyXf4x69HXPKlhHSXqzPg8H08+HzNIlNZnKzqCrKf7Y=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1740559789; c=relaxed/simple;
	bh=gFxUO1ZJeey5NNh3RZFFk7xhQJI5Unus4snehkjECRI=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=NAVakHyULgWj34uTa4XVUlt4n4yf7qk8q4tlriRAwKdlICea4Zge7XsaOZeuawySlP4aLUliAAjCpbWlKbv6aWAZhiIdn1HlFRHuQptUkNtW/I7j48+CBtfea1AKcQqPmOpCz/QOKqg1vDpbR69BNt4NIMCfGC4xlJNSxNYd2EE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=AInarJXT; arc=none smtp.client-ip=209.85.208.175
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lj1-f175.google.com with SMTP id 38308e7fff4ca-30613802a59so67949951fa.0
        for <devicetree@vger.kernel.org>; Wed, 26 Feb 2025 00:49:45 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1740559784; x=1741164584; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=iBWsqS/whIX9PLa8T/uKhxlw/cCkygdxChh7NsPf6v4=;
        b=AInarJXTMZDxDBEo2U6x70mCtm7WS2qwMXaab7xlEhkpkixqPPBkLrm1yifdtnHhYr
         5QNqFigmaxtiBaJc+Ll7gKvPUlSmt5CfGCJV5B+jgbz57QH4PNguoYvNCQE3K4KaPLRY
         Yzxi/xICFTvH2zhvmU6tGHkP/5XN3VqMUBgF2gD+jEla/uqxevJC+xQpGQoiy6UH2Awo
         Vxj5Kt3GJOxscsQCvTYzXLE9xTppQ5nW9h3SHhaIEnV42wIk2i8G84p3qGWUrFSqtEHn
         QCOnbGjNKW6DWPA8bHcvrPR8ufG0fKeH1wWqxeN9/RBa1Ltrtkz5WzhBWjzE3NTavwd6
         W4/Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1740559784; x=1741164584;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=iBWsqS/whIX9PLa8T/uKhxlw/cCkygdxChh7NsPf6v4=;
        b=nWaAbw3zlaJUxVjYKV53j8r6u26M44+83WXwOBRpAkptIbmliJLxYXxXLTYMVBAlLP
         tCuFghf6aT7IlvmVA1qjoImSbC/yjY+yMhLG4pTJvuWfBrC8oqEpkOgqc0bIbAPLyFbJ
         3xKclfZBVF1uhWN6Y7ZXKItIjnl7KhuRFkdQ9XP9pSJMdkZf4I8xHx0CKFCOtRUP91Qj
         RNbL68LsXjk59NzhO558frvgau7T51NeYmKxJwkUrezCF5HAdP+XdwY4d/8iVJMK0MjF
         xIyLbXbx+zCFsnyDxt+VOOyKwiJqDb75hzKJ+iQaaKMb/bve41s2VcQQ6ap7Hmv1IPvS
         vapA==
X-Forwarded-Encrypted: i=1; AJvYcCVOpZioqapcsqKVGKQFtx5oUEBHxT2QXj/Zq1rpLjftbRWluSL2wmHpsCpl0Dl9wrZp1+7BsZVca/20@vger.kernel.org
X-Gm-Message-State: AOJu0Yw6K5Ek1l/u7gesHlHfjslbkkg7a4ZzmT5+OD2Sm5iN25JGQzNo
	vG04Qv3CDXJmwwuU4KhC5lEK8ksMPBG6pDQRuG3dEbUCYT1jN3iGsA0XbP28NrQ=
X-Gm-Gg: ASbGncuAyOZrlfSt3h/q2FskpdYzO6UAlaIU7FeBnygBWLaSfXU3G+j2FxS2t4CpDGc
	vO/2TLspBDzwbvptij/uv3MDH+mhabMZFN7zu95blOGBzS1pyImnR/TCm9lC28QDv7QprRLnWrl
	mW/x/F3u+TWiyzuJaiKHC1fj6w6MStuu7tDrP6YJ3Pb1r/FsRE37yeb8G5B1JJR55fF0MKX7eyR
	GvBzgDOFRolzf3yAoOE7v3M6Xy4XbhZJP4+l9QUKsBpeMxZHnjNwJ9RMdxjAehoapQGsitl3QqC
	e/4iaPDxJsFjNzVFOyDcWeCndmtOdpZNm6Qe0r3PRTPQTBj6iVc8r/tfFrRazH5i/GJEi6RA2qZ
	zaZQG7g==
X-Google-Smtp-Source: AGHT+IFmNXDufx/J57BTLJkr+VSf9kHXFB6UwcnIhCd9d3vLZPOjvq5ZmG+p9/djmOEH4ULjuzqc/g==
X-Received: by 2002:a05:6512:39c9:b0:545:e2e:843a with SMTP id 2adb3069b0e04-5493c5b85e0mr2175585e87.38.1740559783671;
        Wed, 26 Feb 2025 00:49:43 -0800 (PST)
Received: from eriador.lumag.spb.ru (2001-14ba-a0c3-3a00--7a1.rev.dnainternet.fi. [2001:14ba:a0c3:3a00::7a1])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-548514f724csm380300e87.207.2025.02.26.00.49.41
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 26 Feb 2025 00:49:42 -0800 (PST)
Date: Wed, 26 Feb 2025 10:49:40 +0200
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
To: Rudraksha Gupta <guptarud@gmail.com>
Cc: Bjorn Andersson <andersson@kernel.org>, 
	Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Srinivas Kandagatla <srinivas.kandagatla@linaro.org>, linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org, wctrl <wctrl@proton.me>
Subject: Re: [PATCH v2 2/2] ARM: dts: qcom: msm8960: Add tsens
Message-ID: <yuabzxapfn3xshnzicrgndcw4xnsgofpwfhqmzurhnfzeyjjbs@4awiletaxsna>
References: <20250226-expressatt-tsens-v2-0-7a4ce3a91f27@gmail.com>
 <20250226-expressatt-tsens-v2-2-7a4ce3a91f27@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20250226-expressatt-tsens-v2-2-7a4ce3a91f27@gmail.com>

On Wed, Feb 26, 2025 at 12:11:09AM -0800, Rudraksha Gupta wrote:
> Copy tsens node from ap8064 and adjust some values

Which values?

> 
> Co-developed-by: wctrl <wctrl@proton.me>
> Signed-off-by: wctrl <wctrl@proton.me>

This doesn't look like a name.

> Signed-off-by: Rudraksha Gupta <guptarud@gmail.com>
> ---
>  arch/arm/boot/dts/qcom/qcom-msm8960.dtsi | 59 +++++++++++++++++++++++++++++++-
>  1 file changed, 58 insertions(+), 1 deletion(-)
> 

-- 
With best wishes
Dmitry

