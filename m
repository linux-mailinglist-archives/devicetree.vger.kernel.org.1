Return-Path: <devicetree+bounces-77293-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id C497190E047
	for <lists+devicetree@lfdr.de>; Wed, 19 Jun 2024 01:58:17 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id DCE19282139
	for <lists+devicetree@lfdr.de>; Tue, 18 Jun 2024 23:58:15 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 109F71849DE;
	Tue, 18 Jun 2024 23:58:12 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="bDkePBQJ"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f49.google.com (mail-wr1-f49.google.com [209.85.221.49])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6669A15EFA3
	for <devicetree@vger.kernel.org>; Tue, 18 Jun 2024 23:58:10 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.49
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1718755091; cv=none; b=EgXn2Zi5I6bd26AM4NkOXzfn8WD0T2y5SNs1rT1/a3Dhoyh7rxIljhyMBUKZTl1ss5Y+QlUfqZIntgHEilDTdLcOJsKtDAE9ATX4VUDJFd5eicqMqs3iVbVEtGUMmp2ky9KCxyDQ4KxmuixUM4QUSR8z8+WL0KbQMVOf0tCaKE8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1718755091; c=relaxed/simple;
	bh=Av3TTsyP97Equ1dgYMgOqRCJJMpER4XsO+kGCyXEsLU=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=nM+0ZtyfkKFjff92KfWXFzlldJHEA58L7uX5749kqkfJwAekuLqABogBVEA/RslAA3LyCdQGN4Zi0oaglTGwZlrnpNR+zaJRd9U+jVIbmgjQxJA19KbHlo/saZpq9joe5i8D7eb6ySWNRtcGViRAGiEwfM6K+3wQez6K1oayv6I=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=bDkePBQJ; arc=none smtp.client-ip=209.85.221.49
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wr1-f49.google.com with SMTP id ffacd0b85a97d-35dc1d8867eso4764172f8f.0
        for <devicetree@vger.kernel.org>; Tue, 18 Jun 2024 16:58:10 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1718755089; x=1719359889; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=V1xf5EqnHZTHgrB035+MoUK5o/+Iy37BFkV8U6lWAsI=;
        b=bDkePBQJb3YBj2V1K7quFxkU1gEXaBPeteG8Lpu5stsU3xvWx1OedEQCgMWfVTo2fR
         Yd3Xk3YJKIHeH+HS/I+m75RA9Te3SxOHjjksHXmGaTdJr/uL6fc4XrYDMbisXxWXHRlQ
         H3iKixNOGGJRQfPn/bxWNl+wnUpMZwG6hbnOi3d7gR4eA73VotTxjrx4b08mjyxYakCo
         Mzw5tftvREx1y6V3t+xoEXslCEqk3KZihexvr7iMKQ+YPjvAOfjjYroZ5MfWdvFD+0L4
         xPyQAvT3bNDGTHdgXovc02ULIzvBelWG4glsIDOlXLXDnf26D2+VcZT0+zko8ChyrEQZ
         PSBQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1718755089; x=1719359889;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=V1xf5EqnHZTHgrB035+MoUK5o/+Iy37BFkV8U6lWAsI=;
        b=BdYytVzpDMEnlGANQqhav2GjaO6UpLioIYB/mIozYNSc4rj3bFsEfIzq3DAHLVIAHg
         yNots6ww4G3imJdn+Lhur5c/41FZrMkd1gvd2i5HbdwbP8Hxe9lZzfqsSGMI0xhxx7cw
         Euin82ymnIdLzlgHy0srGitUDLItGZVxY9ztircESNPoaOJSmpWjNO8oNsvLJSx75HHJ
         OOWSap4dujNxhkh9ugoQ1lMxRr+WpPhOT5lkJ/iHy965CoxkgGb6v7+jmoWAO/2+759U
         Mu2zC8uqSm6ULZZ0x8vUlqHvOrcI0Ta/XZ1koMQLTY8p5ts/jRGVVGcfBbWSLIP2A4t3
         dnxA==
X-Forwarded-Encrypted: i=1; AJvYcCXVB7/ScDYvebwhFDAl2ibOfBnbQen12IRAlHgpKaU9BddjeWM8J4rDXMyQcuOVrL48fom47dC39Lc+mMZa1YxPw2XfytqNILXqUw==
X-Gm-Message-State: AOJu0YxRzjgqHnyWTKiCCYAHVEk6FyfnwYL3HiTd1IR5thEwHsdXER7L
	nBBV7Q37Ziz3WykyiChrFDdlhO4cU74kaY0kJWlW5jEbb3WonTnZV9N0WDtqBQ8=
X-Google-Smtp-Source: AGHT+IH3SthiBieRBagQGvya+fCbppYDWVdvuwD+iWbpivS/w5xvmwg3ky2tSRJqs4Shme1sR5VGBA==
X-Received: by 2002:adf:ef48:0:b0:362:172a:b156 with SMTP id ffacd0b85a97d-363177a1d38mr821091f8f.28.1718755088764;
        Tue, 18 Jun 2024 16:58:08 -0700 (PDT)
Received: from ?IPV6:2a00:f41:9028:9df3:6f30:7340:4e06:bff7? ([2a00:f41:9028:9df3:6f30:7340:4e06:bff7])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-362e3e1abd5sm1438994f8f.47.2024.06.18.16.58.04
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 18 Jun 2024 16:58:08 -0700 (PDT)
Message-ID: <106cd2a2-42de-41ec-8d2b-f4cd6ff9165c@linaro.org>
Date: Wed, 19 Jun 2024 01:58:04 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v14 0/9] Add support for Core Power Reduction v3, v4 and
 Hardened
To: Varadarajan Narayanan <quic_varada@quicinc.com>
Cc: AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>,
 Andy Gross <agross@kernel.org>, Bjorn Andersson <andersson@kernel.org>,
 Rob Herring <robh+dt@kernel.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
 Viresh Kumar <vireshk@kernel.org>, Nishanth Menon <nm@ti.com>,
 Stephen Boyd <sboyd@kernel.org>, Niklas Cassel <nks@flawful.org>,
 Liam Girdwood <lgirdwood@gmail.com>, Mark Brown <broonie@kernel.org>,
 Conor Dooley <conor+dt@kernel.org>, "Rafael J. Wysocki" <rafael@kernel.org>,
 Viresh Kumar <viresh.kumar@linaro.org>, Ulf Hansson
 <ulf.hansson@linaro.org>, Robert Marko <robimarko@gmail.com>,
 linux-kernel@vger.kernel.org, linux-arm-msm@vger.kernel.org,
 devicetree@vger.kernel.org, linux-pm@vger.kernel.org,
 Jeffrey Hugo <quic_jhugo@quicinc.com>,
 Marijn Suijten <marijn.suijten@somainline.org>,
 AngeloGioacchino Del Regno <angelogioacchino.delregno@somainline.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
References: <20230217-topic-cpr3h-v14-0-9fd23241493d@linaro.org>
 <ZmlUElvlOPBdfn61@hu-varada-blr.qualcomm.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@linaro.org>
In-Reply-To: <ZmlUElvlOPBdfn61@hu-varada-blr.qualcomm.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit



On 6/12/24 09:53, Varadarajan Narayanan wrote:
> Konrad,
> 
>> Changes in v14:
>> - Rebase
>> - Drop cpufreq probing block (merged)
>> - Pick up tags
>> - Drop quotes from CPR3 bindings $id:
>> - Drop useless description: under compatible:
>> - Link to v13: https://lore.kernel.org/r/20230217-topic-cpr3h-v13-0-d01cff1c54cf@linaro.org
> 
> This patch series is needed for IPQ9574 CPR support. Do you plan
> to post a new version or can I try to address the comments and
> post a new version?

I'll resubmit it soon

Konrad

