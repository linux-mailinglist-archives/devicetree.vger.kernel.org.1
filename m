Return-Path: <devicetree+bounces-34351-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id CC823839788
	for <lists+devicetree@lfdr.de>; Tue, 23 Jan 2024 19:21:05 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 678821F2E143
	for <lists+devicetree@lfdr.de>; Tue, 23 Jan 2024 18:21:05 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 6B4E281AC3;
	Tue, 23 Jan 2024 18:20:47 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="IhR/gBIh"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-vs1-f42.google.com (mail-vs1-f42.google.com [209.85.217.42])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CBFDB81AA8
	for <devicetree@vger.kernel.org>; Tue, 23 Jan 2024 18:20:44 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.217.42
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1706034047; cv=none; b=eGT/ixKQVxAeILR/vQG81zaJA4cmTIyqUtWme8vRnWpik4sWhAhHOU6ZbP0isOkjVMagCXOJAoKCTTSEToXNOyZWixaiZqJ66WfokwnMijeOCGiHrKI0PFzdznR+HkmmK4Fil/5z2lThdDXhufi487pPz1DDEl1CGG1DFQY43g4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1706034047; c=relaxed/simple;
	bh=USIEsJ/MK/XnJIFgdS/GdFEdoheNScUhLt3v98sSC10=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=JiVPtq4M6PH5pvRND4rrCC9mvEPjIPOCrBTex7xmWg5r/4PzaHeiqEd5lQ3vnSVWvxAJjGHYT09hC3dfZ+jyqLPF1akGAtZvxNeJzXcHKmXqT4P1SKg5pYXYBVkqkA4pBoL5rfpqELI6FVDqlw7AaUOD2VT5ScYoJ7xdXY2Q/Bc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=IhR/gBIh; arc=none smtp.client-ip=209.85.217.42
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-vs1-f42.google.com with SMTP id ada2fe7eead31-46aff024f0aso138007137.3
        for <devicetree@vger.kernel.org>; Tue, 23 Jan 2024 10:20:44 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1706034043; x=1706638843; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=OB7jjC2EZYwUeHhQPxwFxVrh4egi4HfWvlhEcHneyE0=;
        b=IhR/gBIh3TjzC3+xOWdGu4KvCTYY3B8NvbIIbjmhanuAhLTNMTgRnLdbaciRb08hJr
         mSozoj/lDQaMqu1VQ7luQ5fH6uYLOD7hG+7pLi5FgRhUzVBrtni1DmrdQyPprDzqXJ20
         /Oyv+qTLVCb3mrE9oM+MXuddt4G6dqH+eRvVlYI3Xesq+yu7g3zRl89+pd7Ua+aQNmiR
         yn00c7K7QbJ2OqUs4gE1QC6VXCIslLD86FY02K+E6oSqPzc4QUnZKxjhjAn5uArUEas4
         0mSKuNx1+YPraQj1QxIFixISnHBT6nUsVGegQV/obUODnB5kYb1Xd7v/wV0V+2d6/MHt
         jPrA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1706034043; x=1706638843;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=OB7jjC2EZYwUeHhQPxwFxVrh4egi4HfWvlhEcHneyE0=;
        b=el3TjqZ2BlGEJIxTrhK/m2S3XYrpENcGATkf9XTYQviVL9IHkUyd1ZnNY8nR4HU113
         wE4VGQJYGFhqGtQXdCtisTb1eJ3K0EzrKep/rRKYDeUBpJ0ikMO7cGZb4RRmVIh7VegG
         DBYsvuFL3GmnDNfKpaI5SxRHHxeCfWb5tluj1+5ByU/ZJXDuW0e8TolhOdvOXKSSevtV
         y/Zfez8APtm90gN5q3OnHnhorucDQ8vehM9JRkmG0jp7laOioity2K+KD/YGmhZAIx5B
         suIWhguVqGxLnTVR8wKOpyKSqCBEG6or+gryNi+BDBjK2XlmL5dqy47jT9cKRlWMFnos
         xMDw==
X-Gm-Message-State: AOJu0YyUMr+AOG1Q/Xe39q7xEzYUrjRR9r6xjKu8w8LGnW8NIZoQJnaH
	hzai4iA1OJg514VZkp6pWrTwVi4Pf5a1l6Gkj+ulpWUtnIGxTzdm/XyjJ669/D0=
X-Google-Smtp-Source: AGHT+IFCVWWTCP0nN5IbtxjseLprIcS4GMBKsW24BjxmhjMZW0fOgS3rDMCu9S0nZMRuNl+zWKp4CQ==
X-Received: by 2002:a05:6102:30a1:b0:468:151d:13a4 with SMTP id y1-20020a05610230a100b00468151d13a4mr3187736vsd.27.1706034043696;
        Tue, 23 Jan 2024 10:20:43 -0800 (PST)
Received: from [172.30.205.123] (UNUSED.212-182-62-129.lubman.net.pl. [212.182.62.129])
        by smtp.gmail.com with ESMTPSA id 36-20020a9f22a7000000b007ce1febd008sm1658773uan.34.2024.01.23.10.20.40
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 23 Jan 2024 10:20:43 -0800 (PST)
Message-ID: <3d029d7c-7efb-42bb-a16d-30cf965f410b@linaro.org>
Date: Tue, 23 Jan 2024 19:20:38 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v4 07/11] arm64: dts: qcom: x1e80100: Add PCIe nodes
Content-Language: en-US
To: Abel Vesa <abel.vesa@linaro.org>, Andy Gross <agross@kernel.org>,
 Bjorn Andersson <andersson@kernel.org>, Rob Herring <robh+dt@kernel.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
 Conor Dooley <conor+dt@kernel.org>, Sibi Sankar <quic_sibis@quicinc.com>,
 Rajendra Nayak <quic_rjendra@quicinc.com>
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org
References: <20240123-x1e80100-dts-missing-nodes-v4-0-072dc2f5c153@linaro.org>
 <20240123-x1e80100-dts-missing-nodes-v4-7-072dc2f5c153@linaro.org>
From: Konrad Dybcio <konrad.dybcio@linaro.org>
In-Reply-To: <20240123-x1e80100-dts-missing-nodes-v4-7-072dc2f5c153@linaro.org>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit



On 1/23/24 12:01, Abel Vesa wrote:
> Add nodes for PCIe 4 and 6 controllers and their PHYs for X1E80100 platform.
> 
> Co-developed-by: Sibi Sankar <quic_sibis@quicinc.com>
> Signed-off-by: Sibi Sankar <quic_sibis@quicinc.com>
> Co-developed-by: Rajendra Nayak <quic_rjendra@quicinc.com>
> Signed-off-by: Rajendra Nayak <quic_rjendra@quicinc.com>
> Signed-off-by: Abel Vesa <abel.vesa@linaro.org>
> ---

[...]

> +
> +			interrupts = <GIC_SPI 773 IRQ_TYPE_LEVEL_HIGH>;
> +			interrupt-names = "msi";

You may want to add ITS MSIs too

[...]

> +
> +			resets = <&gcc GCC_PCIE_6A_BCR>,
> +				<&gcc GCC_PCIE_6A_LINK_DOWN_BCR>;

The second entry is misaligned

Konrad

