Return-Path: <devicetree+bounces-79267-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id D99EB914813
	for <lists+devicetree@lfdr.de>; Mon, 24 Jun 2024 13:08:51 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 95E572841AA
	for <lists+devicetree@lfdr.de>; Mon, 24 Jun 2024 11:08:50 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 13388137C33;
	Mon, 24 Jun 2024 11:08:29 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="ko4Ls5uf"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lj1-f174.google.com (mail-lj1-f174.google.com [209.85.208.174])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id AD47C137760
	for <devicetree@vger.kernel.org>; Mon, 24 Jun 2024 11:08:26 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.174
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1719227309; cv=none; b=apfmvH1OQmvpUwx2TplN5qDu6QA2tIkohVEz18jAaD/UMtze+XJflVWGAQ8rXYEXUL6ON0n1JG6NHIR7eTfyT/fI46Hu3tl8RGZ2cX0aMB23aZ1XCKGASHApFNY0cKwapokwftVlfI3r/OzQ369smBA2R4EXx8SGKUU9G8zDk7A=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1719227309; c=relaxed/simple;
	bh=nRT7ZGm58wGoEypzFl//fJhXIDLeznBnwPBvoMnL0IQ=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=EUOI6bLuVAmhYxy77X32KixbB3Gqh7aaBSMwDSCca9IR0jqEokOe06QcckSDOvkCxTEw+icoJuP2LiOdKc8vgxqfu1zVbeIupMRNMeqpGKQ3KpzEqZ2oyQR1nCkSlOmKNH8jIule8dxTIBXVxi1jq/7yGgDv75eYyBGNmuLnu1I=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=ko4Ls5uf; arc=none smtp.client-ip=209.85.208.174
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lj1-f174.google.com with SMTP id 38308e7fff4ca-2ebe0a81dc8so52901851fa.2
        for <devicetree@vger.kernel.org>; Mon, 24 Jun 2024 04:08:26 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1719227305; x=1719832105; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=wPvm4lJx3Y3Rkllox7KVCNLAkZq8ExREmWQiAi70uaI=;
        b=ko4Ls5ufG+2jfj+biz4ehTxoqX7PvEFoSNaKCx8ZN7bHx4Ig66vBuR9udTdo9uTFHX
         CM00h2CJae4jtg/SwK3NtAIlZXddVZK/Idb2NdNBuur5IPjIUQi73yrRfkYuFgaB1moz
         j+JMZI3b7oBXxOOmvP8Sf4SU1g9QjTCVaiZiPefati/8ctv0ElocpSRPb/nXU4RL28by
         7tAAOW4u6nXgCm1U8qlOaX+SV6egfBl695mPWwjeykPOS5QeQh7ZBkTtlLkZhYO6m3Na
         ziuuzan3Jz+Jj0KQVX8kKJ5YLZFqZDKrqtzUA3Bfel3WQ8amiqw4A0vvzjKinJ8iFMmm
         mQ5w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1719227305; x=1719832105;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=wPvm4lJx3Y3Rkllox7KVCNLAkZq8ExREmWQiAi70uaI=;
        b=DoEDeSJNAGilr/2s/olwEsDf/MNvfAosNXNo9LD0WKZITUXaugjlvD/DLMY4sXfuz8
         HuvdT8m7syyl9MFX1KJVGtcNDT4zuc+KfOIS2o6nWGDS4KUvYfn43bX+eA6AE2tC02zg
         y0368zJu6yN+yU74MZiG6GZFBX8SApDhvn/YMaCkC5cRt3C/r0U+KcLFVJsiXz+D9Zzq
         HNKyLPfcMWG8NBEtZarqhvoq4ela4dgKioVmjv/IzK8PrvFqlUNc/9M2u3eCMhNLpPgu
         dWspk3b/yyfUua+JBXz/IsxE8DhN7tY306VvodM4iaEa43Cx1jtdZ4v2M5ncCrQLlMpq
         WMDA==
X-Forwarded-Encrypted: i=1; AJvYcCUf1CNixgtBCUmOMKcCfKZfQir2lvYNnYwR15/RrjwSpo+JhQwKMsyb1wz6Zin/36xBtcvCV+P+0G+2Saohif+iv8YH+rftfAaUaA==
X-Gm-Message-State: AOJu0YwDWLN9zMoerxrI6oclu0qoIHHtip6ihbf970QyDtTLSarkJgru
	LLY1wnGuSGETlEW4/QHH+W18g4dsrbNpJ+cQJDjyVXGDX2nIGQzJTJe/gGrDnY8=
X-Google-Smtp-Source: AGHT+IFV8ttiZXZMs08z80WjYeaqP6Xm/Gjtumc4Wzne7zwY6tB6Xa1nJSC2UrM3dBloRJCTESbcig==
X-Received: by 2002:a2e:b0f5:0:b0:2ec:53fb:39c8 with SMTP id 38308e7fff4ca-2ec5b2fc2a4mr34842691fa.10.1719227304839;
        Mon, 24 Jun 2024 04:08:24 -0700 (PDT)
Received: from eriador.lumag.spb.ru (dzdbxzyyyyyyyyyyybrhy-3.rev.dnainternet.fi. [2001:14ba:a0c3:3a00::b8c])
        by smtp.gmail.com with ESMTPSA id 38308e7fff4ca-2ec4d7090cfsm9639631fa.41.2024.06.24.04.08.24
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 24 Jun 2024 04:08:24 -0700 (PDT)
Date: Mon, 24 Jun 2024 14:08:22 +0300
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
To: Srinivas Kandagatla <srinivas.kandagatla@linaro.org>
Cc: Bjorn Andersson <andersson@kernel.org>, 
	Michael Turquette <mturquette@baylibre.com>, Stephen Boyd <sboyd@kernel.org>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Konrad Dybcio <konrad.dybcio@linaro.org>, linux-arm-msm@vger.kernel.org, linux-clk@vger.kernel.org, 
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH 0/3] arm64: dts: qcom: x1e80100: Add soundwire controller
 resets
Message-ID: <p6ooqgfwld7stzevozs7huztputc7vpc7652wx6rvg4cly5mj5@fwrzeu6alhgq>
References: <20240624-x1e-swr-reset-v1-0-da326d0733d4@linaro.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20240624-x1e-swr-reset-v1-0-da326d0733d4@linaro.org>

On Mon, Jun 24, 2024 at 11:55:29AM GMT, Srinivas Kandagatla wrote:
> Soundwire resets are missing in the existing dts, add resets for all the 4
> instances of Soundwire controllers (WSA, WSA2, RX, TX).
> 
> Signed-off-by: Srinivas Kandagatla <srinivas.kandagatla@linaro.org>

Could you please point out the driver changes?

-- 
With best wishes
Dmitry

