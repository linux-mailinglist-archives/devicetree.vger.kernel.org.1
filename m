Return-Path: <devicetree+bounces-50018-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 875988791C2
	for <lists+devicetree@lfdr.de>; Tue, 12 Mar 2024 11:18:00 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 40B0A282CBB
	for <lists+devicetree@lfdr.de>; Tue, 12 Mar 2024 10:17:59 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id BE7BC78660;
	Tue, 12 Mar 2024 10:17:56 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="dei4+eqv"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-f54.google.com (mail-lf1-f54.google.com [209.85.167.54])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D62A977F34
	for <devicetree@vger.kernel.org>; Tue, 12 Mar 2024 10:17:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.54
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1710238676; cv=none; b=KQ2zCLYeNUhU0d3t+2Ou2H3+mit4zQdZp5Y3Xqt6dcTt2X9OFdWLgKOBfyRLpSbdvm7GHdpDUc6ERcua7GHNBXK6uSYFG+iK55eFa7Hg3Lmr5cZbdBTQOA4R3Q2tCN0Yzjvr1oQK5NxT3RKcZobcTJwY80syy/yNTW4Nx3GCyhA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1710238676; c=relaxed/simple;
	bh=KojB4xkaFuE4MJ9zubYBSac71fPHzJgQlnS7Y+9ruVc=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=LisVRCT11+QB1jrqLdriyqLkKeC3MODsSYvLyLL7zauvASotJf/jvBJ6tx4M/OiwLtewbTuSFOuPmdpmzuHCyStqSf5UfHzIfNw5uqaF4RhWVRrbaZN0jPdisGL331ToX8OEUbvPOXsfjE0LgcP+oIbK7z4z5hZF4CKtxEP6A80=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=dei4+eqv; arc=none smtp.client-ip=209.85.167.54
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lf1-f54.google.com with SMTP id 2adb3069b0e04-51325c38d10so6257760e87.1
        for <devicetree@vger.kernel.org>; Tue, 12 Mar 2024 03:17:54 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1710238673; x=1710843473; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=BZBvJIr7e5TBk4ekhuSghKo9zs3SCMYDyaA6DVacIQs=;
        b=dei4+eqv86X5ThL4BTlULOtVN5qaMi7Hy8d9+TTIBMLPWfqDZubtJsOy4j4k48aV6G
         NjWeVh2ETuHaTBszEchvld1+IsDIbEVFA86usjh6drvV97z90ZI/VLnltUrQDVmse9jt
         h06eD4wJHiH446gY+esRtt2JcnFzdTeuADnoYMfTBbPP5f2mwXz2gez3eQB+uB/ueXL+
         gksnkB3rcNgUglg3ukkqvKQco8fD5XPkp32xEBdODxY8PHyFckGjel3RVM8jjukhUkY1
         xEvEQo54ArTJPmc7NIqEj9NmUm3oNnUyHPAi1vmXACBu6OIgYoFz3EAMCP/RaJjE0E5i
         7KiQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1710238673; x=1710843473;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=BZBvJIr7e5TBk4ekhuSghKo9zs3SCMYDyaA6DVacIQs=;
        b=YlOm9Lhtksin5NJwb98E4j24HDReoiq25XsZcn8X0OYh5MFk+KOlFhDYbGKN+0Ce+X
         yLvNMkKqkZpJfDGKARZ5Np4xSEYYp/Qwg4X1jo7HRGJllErA+EXzy9iMsR+aJSKuEA2Z
         JnwPpZNb3kdlxYeiEnm8JFMS0norsDGodhLPXGLN2QuhKdAfLRuIzf17ofZ8/Em6bXTj
         tQyNE78X3XiP8x2TbZp/7I7pxZZfunQnCOlEXIjbzypWa/yGMyOSUwSVHTkDLpA7B8C7
         2MLaXPiSQVym2jBjhQ9ASEG7obKyzl0tFkKDruzlYTsjedsAeFwpNyPAG5UxXqwW8uKH
         5MSQ==
X-Gm-Message-State: AOJu0YxCEpCuKFD55Ci8bnxxYU+fLFMsBJyQ26yut4ShOu5A7hRVaWmH
	kFxtBaRIs5u81RiseBltFMAnDrc6/I1xTPh/HOct0ZmvH+o+v6QgqVG08OdaaYn4Way9bZg/YmC
	qMf4=
X-Google-Smtp-Source: AGHT+IEdCZYVeqOZ5eSBUGTdFCd0Cu+ATr4HkA4tamaL5IM0hr8UUL7knE8TH6X76Ak+3NGf+LDqZg==
X-Received: by 2002:a19:5f1c:0:b0:513:b9c2:71c0 with SMTP id t28-20020a195f1c000000b00513b9c271c0mr567725lfb.9.1710238672993;
        Tue, 12 Mar 2024 03:17:52 -0700 (PDT)
Received: from [172.30.205.61] (UNUSED.212-182-62-129.lubman.net.pl. [212.182.62.129])
        by smtp.gmail.com with ESMTPSA id b4-20020a056512060400b0051329001f53sm1493941lfe.54.2024.03.12.03.17.51
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 12 Mar 2024 03:17:52 -0700 (PDT)
Message-ID: <dc4d49bf-d644-44b6-8a4d-c5a3062284f0@linaro.org>
Date: Tue, 12 Mar 2024 11:17:52 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH] arm64: dts: qcom: sc8280xp: Add missing hs_phy_irq in USB
 nodes
Content-Language: en-US
To: Krishna Kurapati <quic_kriskura@quicinc.com>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
 Rob Herring <robh+dt@kernel.org>, Bjorn Andersson <andersson@kernel.org>,
 Conor Dooley <conor+dt@kernel.org>
Cc: devicetree@vger.kernel.org, linux-arm-msm@vger.kernel.org,
 linux-kernel@vger.kernel.org, quic_ppratap@quicinc.com,
 quic_jackp@quicinc.com
References: <20240219075720.640529-1-quic_kriskura@quicinc.com>
From: Konrad Dybcio <konrad.dybcio@linaro.org>
In-Reply-To: <20240219075720.640529-1-quic_kriskura@quicinc.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit



On 2/19/24 08:57, Krishna Kurapati wrote:
> Recent binding update [1] indicates that there are hs_phy_irq
> present in primary and secondary usb controllers of sc8280xp.
> 
> Add the missing hs_phy_irq for these controllers. Since the driver
> doesn't use this interrupt, this change has been only compile
> tested.
> 
> [1]: https://lore.kernel.org/all/20231227091951.685-2-quic_kriskura@quicinc.com/
> 
> Signed-off-by: Krishna Kurapati <quic_kriskura@quicinc.com>
> ---

I don't have the docs to back it up, but I trust you do..

Reviewed-by: Konrad Dybcio <konrad.dybcio@linaro.org>

Konrad

