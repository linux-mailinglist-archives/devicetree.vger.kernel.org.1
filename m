Return-Path: <devicetree+bounces-154122-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 28614A4EEC3
	for <lists+devicetree@lfdr.de>; Tue,  4 Mar 2025 21:50:10 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id DF7F71714B7
	for <lists+devicetree@lfdr.de>; Tue,  4 Mar 2025 20:50:08 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 9739725FA0A;
	Tue,  4 Mar 2025 20:50:07 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="V8zfqJ4q"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lj1-f178.google.com (mail-lj1-f178.google.com [209.85.208.178])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9A6AD25F794
	for <devicetree@vger.kernel.org>; Tue,  4 Mar 2025 20:50:05 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.178
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1741121407; cv=none; b=rNPuXQr8bNTDwXXvT4goQZ5nPSawsb3IRWLcesOEt0R0OgW6NPzqwOe7RkaTwIYONq8LLYWV0elpJQAYXeEPauDmI1BpHhRAsgDG+CCI+GHwxe7h+qGw17IvyZH4N67Qhq1hatGvtiQAdhgnmOMRQBCxQvSxT//1nhzZpdfdphk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1741121407; c=relaxed/simple;
	bh=AUy+E93hBDfp1QQ9XBtieTyISjX8gZ+rOKyZCe83rmA=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=cIfovwBlhcQM+/9ov/vnSOCKG58ggOFKBzyUnJBTaj/lCHoTsRd4mQaNpAvd4co30lPmGqfQN93BOMyWuZl1xg1YFoleef0LtoI6LEtWZdpqprdA/pRccP95Eg1QFEgD3TsHuYLExiQQXTzJMDwO+R5pTaZDA0nMcEa7c2MBqiA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=V8zfqJ4q; arc=none smtp.client-ip=209.85.208.178
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lj1-f178.google.com with SMTP id 38308e7fff4ca-30b8f0c514cso44483711fa.2
        for <devicetree@vger.kernel.org>; Tue, 04 Mar 2025 12:50:05 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1741121404; x=1741726204; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=6+8xJkKmffRJjtrj2WXNchE+pdpnApmZslDny4m5HHQ=;
        b=V8zfqJ4q40uYrC/Iy6PkKJ+6Y6KmcQ8CXu9gda+d4z30oltGuhSC/RVnAXMWzpu2Td
         5f+1xrv5NRC350yMWcnutVHMU6bD18zpYEQCaYRKU/+9qk60CjwfABOiq/XppFxtQgpL
         9qYzHk8C+pJoyuXiDtAiRKa8K6P1AtnRq4e2Ib8R+21rQYLnvc0PHtCr7mVH61NYUyEb
         zI8lJMga31y8heT5aN02lvIjiyoxsCqdeschbn/E2kbA1FrTa94mNKA3Hcou3LF5cJ+w
         qVQPGwaCFS61CdU/jQeREwffudvKY1WKSIWsww+pa5Mn0v8ZftJj4d7cAgCm/313aIUQ
         w9LA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1741121404; x=1741726204;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=6+8xJkKmffRJjtrj2WXNchE+pdpnApmZslDny4m5HHQ=;
        b=nkkVtHExi5pOnJ10XfY/LR5K8U+sdaLOaOI/xrIe6TbSn8/M2O/6ktKrFd93L7626M
         GV3RcAx1ydQuw2NAWVKGrcJlepQ85/TcvxAujhvsRr/wrnZgp2dkYMSSytnH00x9pxdt
         Ais5JoD8AwDY3ECXPXLMN1e2b/TyBLM0f8lGoso4H9Zm50mHdjb/WsZA9mdtp0EWOoWQ
         /27hkaPQHsnuSSNs2IJAcuNl6J6R72tf8TUq8H2C5fuH4IiCKbU4rtw/REDjFNoobP2d
         afR1jMLPLqJ1EDf3/ttacNYjlD763mWpEzR/eQaT9IyRbkHwfVPEjLKYUE2ti7Wt8QQM
         4UtQ==
X-Forwarded-Encrypted: i=1; AJvYcCXaWLsg5WNfx1WTxqvBSQr32ll6QZnJdlTjImNI1wmstGAi1W23W19K1j6qTPi64EB7yLht4QK61Dup@vger.kernel.org
X-Gm-Message-State: AOJu0YwBc2VYLHwvzjGkT0RakLHYrQ2eYzU5Kp1PwT7DV0iMDhUl7cD+
	fssku6u+FGBASun9AZ7HOhBc4H9qD0IqC7x1IfNmlmptdpcxGQxmwqP06Y1jSa4=
X-Gm-Gg: ASbGncuBp/sOGBHsCnDPRgZC3tg9oSj7oZyxb9JykOCDH5UcFjkv1NdpY+nyV+MjSGH
	D7SPIg13ig/+GQ/t4HXBbGl6fRv/hiInFk2T7l2ynbxyuB+82NMa4Z8NNxE0TW9BudJUf4sPMTG
	NLoX8D71gYNBls27E88tnXNt+Jeryqr6qRu7FFQElzS6jvsoowNbtJ530rDEIxFN3geg9v+SaM3
	053lL/1K/yniQh2bDcbSmKQKph2w0/7Bo8wGSY2qV0QH798crAIepKMhU3rWnZD3KuT+whIVXW0
	zCPTPerwreecEWVwdHYUoKeNBKfDePKuq+r0PP5T525KX7YOKJWSZQQF9bTl3ir0BHKPX/jQXpB
	/FjRpfof94Zy/pcs+uYrokn/X
X-Google-Smtp-Source: AGHT+IHsBrs5ioabAc31dpnSyx7hazkHbyjctje4OLtGuxaZbJAk2S7peIsw10Fb7Bpx+VEkVrVVlw==
X-Received: by 2002:a05:651c:1994:b0:30b:9813:b002 with SMTP id 38308e7fff4ca-30bd7ae537amr1894951fa.30.1741121403498;
        Tue, 04 Mar 2025 12:50:03 -0800 (PST)
Received: from eriador.lumag.spb.ru (2001-14ba-a0c3-3a00--7a1.rev.dnainternet.fi. [2001:14ba:a0c3:3a00::7a1])
        by smtp.gmail.com with ESMTPSA id 38308e7fff4ca-30baa56823bsm10610791fa.15.2025.03.04.12.50.02
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 04 Mar 2025 12:50:03 -0800 (PST)
Date: Tue, 4 Mar 2025 22:50:00 +0200
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
To: Bjorn Andersson <andersson@kernel.org>
Cc: Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	cros-qcom-dts-watchers@chromium.org, Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>, 
	linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH RFC 00/13] arm: dts: qcom: Switch to undeprecated
 qcom,calibration-variant
Message-ID: <d5l3bsozn2sauenlyjolb45hqgiiachixxycziuyfsxch3ypvd@mjb6whdyjztw>
References: <20250225-dts-qcom-wifi-calibration-v1-0-347e9c72dcfc@linaro.org>
 <174110761299.741733.15423494263862521182.b4-ty@kernel.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <174110761299.741733.15423494263862521182.b4-ty@kernel.org>

On Tue, Mar 04, 2025 at 11:00:10AM -0600, Bjorn Andersson wrote:
> 
> On Tue, 25 Feb 2025 10:58:57 +0100, Krzysztof Kozlowski wrote:
> > Dependency
> > ==========
> > RFC, because this should be merged release after driver support is
> > merged:
> > https://lore.kernel.org/linux-devicetree/20250225-b-wifi-qcom-calibration-variant-v1-0-3b2aa3f89c53@linaro.org/T/#t
> > 
> > Change will affect out of tree users, like other projects, of this DTS.
> > 
> > [...]
> 
> Applied, thanks!

Applying it too early might break WiFi on those boards. I think
Krzysztof explicitly asked for it to be merged in +1 release, when the
driver changes are in.

> 
> [01/13] ARM: dts: qcom: ipq4018: Switch to undeprecated qcom,calibration-variant
>         commit: adbbdcf4b2d6556721b580385ba387baca5c26ee
> [02/13] arm64: dts: qcom: msm8998: Switch to undeprecated qcom,calibration-variant
>         commit: f1bf8a943bea70c7432731c11761d161882aeedc
> [03/13] arm64: dts: qcom: qrb2210-rb1: Switch to undeprecated qcom,calibration-variant
>         commit: 41eeff2fc2292c56592206741b05fde63acef4f0
> [04/13] arm64: dts: qcom: qrb4210-rb2: Switch to undeprecated qcom,calibration-variant
>         commit: a83356f7ba575f536dd2bf2338cafd0d1d2d51ec
> [05/13] arm64: dts: qcom: sc7180: Switch to undeprecated qcom,calibration-variant
>         commit: 4f8fc2038b3ce9fa1fd52491e774e43bf5e67547
> [06/13] arm64: dts: qcom: sdm845: Switch to undeprecated qcom,calibration-variant
>         commit: 218718e0c2536bc17c1a10eed35e99100bed5b46
> [07/13] arm64: dts: qcom: sda660-ifc6560: Switch to undeprecated qcom,calibration-variant
>         commit: 020ec05884e97175a181b33eb60d556ceaa32de8
> [08/13] arm64: dts: qcom: sm6115: Switch to undeprecated qcom,calibration-variant
>         commit: d39d4fd49337be1e8f6c28e4d31344a2124acb57
> [09/13] arm64: dts: qcom: sm8150-hdk: Switch to undeprecated qcom,calibration-variant
>         commit: b187df5a0224d2e1b5ab8ea19c98d6ebbe554fe8
> [10/13] arm64: dts: qcom: qcm6490: Switch to undeprecated qcom,calibration-variant
>         commit: cfbcd6d483dc7203db230cb24c9ee286033682fa
> [11/13] arm64: dts: qcom: sa8775p-ride: Switch to undeprecated qcom,calibration-variant
>         commit: fda76284e9b4c4606758fb62cfd81dd57e8f2516
> [12/13] arm64: dts: qcom: sc8280xp: Switch to undeprecated qcom,calibration-variant
>         commit: d12ce84c88013cd4ea770d244d44362f691e1690
> [13/13] arm64: dts: qcom: sm8250-elish: Switch to undeprecated qcom,calibration-variant
>         commit: 37eb85ae550004790c98605762c2e0326a82e160
> 
> Best regards,
> -- 
> Bjorn Andersson <andersson@kernel.org>

-- 
With best wishes
Dmitry

