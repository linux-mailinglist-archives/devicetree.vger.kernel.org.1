Return-Path: <devicetree+bounces-253657-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [172.105.105.114])
	by mail.lfdr.de (Postfix) with ESMTPS id D4D14D102F1
	for <lists+devicetree@lfdr.de>; Mon, 12 Jan 2026 01:34:42 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id C9E43301D62E
	for <lists+devicetree@lfdr.de>; Mon, 12 Jan 2026 00:34:41 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 665B91C84A2;
	Mon, 12 Jan 2026 00:34:40 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="mFdlI0x8"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f53.google.com (mail-wm1-f53.google.com [209.85.128.53])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9967E14884C
	for <devicetree@vger.kernel.org>; Mon, 12 Jan 2026 00:34:38 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.53
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768178080; cv=none; b=Qb16sbsN2ICxI0modYtr5hhSQxYF7/Jc5PXFfcpp0wbqN/re3tQL+9rBz4fZLP8d0Hp4QuNmjnao+0qnkkHqoDJjiUf/iXEFnmUEnHjg4x/5ZN9CMHS7wY2qvs1letlXvV2V8VGwduHi3Y1X2koaaPwlP5OmN1s1XmZMOL0uZ8Y=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768178080; c=relaxed/simple;
	bh=+FgYkDoXLXwDLS89Z2WCD3x1bFk4ycg4ykdZSedctBg=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=QR7KOmXpWpmsolSQeTzzl4ARMHTEDMlB3SeOEWEYclbKK8ogdetGnpcvKel8r9dcdWq1VGdNxPiVt+rE4YN8JR3ZjATLthZm03qmqaLiAyj9xaNvLnixWYsZWVCAPV4Lvo3+vdOMr5i/hnF2eCoVyDznOzlbw1LxRc5kFI1ALGM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=mFdlI0x8; arc=none smtp.client-ip=209.85.128.53
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wm1-f53.google.com with SMTP id 5b1f17b1804b1-4779cb0a33fso62895405e9.0
        for <devicetree@vger.kernel.org>; Sun, 11 Jan 2026 16:34:38 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1768178077; x=1768782877; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:content-language:from
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=jFVEfSikl3v/pz3ynBdmhJW4X8roL1IZM3tSP69lPp0=;
        b=mFdlI0x8r0Wvwf9bqXA0jaETcVXpL+9MpKN8k9T0d4CNmGZ6tQtHZxuG0qqHGxzFdi
         Q6I5p/s/WiAf/JRn27b5DOrRTewsIfxqK2dHk9WIXkWzVzMmsaajr58Fk3adTGM6l0Fe
         waY+r8ucyNwySx9DP/Q43oe/4iaAXy4TZp+0xBi5j2PJW2b6Su4bUSbp1g2eT5RQuwiT
         K15GMADGuUKrQ5+qeIbT6EHmbvOJtdRydNIOD2YooYMUifZhJU5ZGM+0iDNdKKH9Cs8N
         3DlaiPnwoXS/gEkOU+Cs2vHHDHaoJUAnoOlHECTf3sxRol0kSHURFFVgpN9uviXBxZez
         ehUw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1768178077; x=1768782877;
        h=content-transfer-encoding:in-reply-to:content-language:from
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=jFVEfSikl3v/pz3ynBdmhJW4X8roL1IZM3tSP69lPp0=;
        b=rEsg3ZpdlcEi1FNLUrr0/RbTD6KgQkYEOEzTk6Pw9D9sCHOfo8DuGNbBQlhuZ1ZGQL
         qeWpqteL1/9uYrvtUVjAZgd/XDRzCJKn8Bh8yeAppjZHoTfeuEXSSDPT67bPHNPRwRtu
         CJ5zfFm0kQx3HMXks+PiOweBslF1nUxNbeNlhcIZ/E7TeUPJvZCHYBfgRDCHnptIy4qg
         HRTpGU82unSLlhAoz/W2V3VQNBo64b3s14xCEAOl8YnI5HDPYzOgxUL5zuSz+0Ca5hSQ
         GVJIHNoVIM9KQvduk1G6WTr8n3UoUflrZX71PYMcD8S6GMZL6IKtJ+/UWDFHhMm+THgI
         44CQ==
X-Forwarded-Encrypted: i=1; AJvYcCVFgqjb7Jo0jjCTLJP+fv/1azIgz6gAHuJkiGTQN5z5JWxTESEJ35C8kfQKIqHhFbqTKdAryZPqFpOw@vger.kernel.org
X-Gm-Message-State: AOJu0YwCdxj6UCP6XdmHfAxxSXvb8LHO9O/iq1V2ewBNq5i4fFkLusVQ
	GOAhLhvxbnh1V3XRPuIkef8Zf0FhXtztO+4jOWizY3pwZGi4yUXpv0lT7vf9QJSku4cLQVGuISd
	KLjfhWNs=
X-Gm-Gg: AY/fxX4zm2wH3zbIEO9080a8H8TR3hODbZr7VIu5EFpnsXCiRmXVd4GsmaJAsW9rXqt
	xPA+IXMzi+nil1EwN+RgKo7xUOw2B/vMs7ZOwjIdMKYc83HilZabocRqpCCQ/DvT6WHQPDG1QTr
	YauZRT+wsDYf6PpXBjVx9pe/6XyUmJ4jPkzkxrfOHjgY/Unr36TOEYFja1q/cfbDdVZLSCU4IpZ
	LdlKPnhsaFopJIQZpUOg9jIBWX1TmkZGrnRmO1Zhu90pPLVZsWW3uQtqZJ4ZAem3duDmvfCWUBi
	aRFNktoTmNgG+fpv1WiLUagYvX3SOmlh50sLmk0fvjlRZZ3oYNjXQs3e+83uQTkgZwk5yL73wGF
	MiL2ymaIgDC/YV9sCLkspxb3JPsRQOTHXjgVyTUQNcMoaWP555mcxLwexA8Xevz554GKA4IcWC+
	F+oQpM+yUrCIcG8vRcB/nfJZunTXv0605PLlgATMOEOL9pFdMbRCZW
X-Google-Smtp-Source: AGHT+IFFzw5ft4LZJe6ydEq5zg5HsTSxL9hjWAIenS++3nN0gcfVNBWLGgF42nlgVI5P7EBGrxlA6Q==
X-Received: by 2002:a05:600c:4747:b0:47b:da85:b9ef with SMTP id 5b1f17b1804b1-47d84b18a7dmr225507215e9.16.1768178076499;
        Sun, 11 Jan 2026 16:34:36 -0800 (PST)
Received: from [192.168.0.40] (188-141-3-146.dynamic.upc.ie. [188.141.3.146])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-47d7f661a03sm341711595e9.13.2026.01.11.16.34.35
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 11 Jan 2026 16:34:36 -0800 (PST)
Message-ID: <63205098-76fd-4a85-b7c7-c0ddfd974693@linaro.org>
Date: Mon, 12 Jan 2026 00:34:34 +0000
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 2/3] media: qcom: camss: add support for SM6150 camss
To: Wenmeng Liu <wenmeng.liu@oss.qualcomm.com>, Robert Foss
 <rfoss@kernel.org>, Todor Tomov <todor.too@gmail.com>,
 Vladimir Zapolskiy <vladimir.zapolskiy@linaro.org>,
 Mauro Carvalho Chehab <mchehab@kernel.org>, Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley
 <conor+dt@kernel.org>, Bjorn Andersson <andersson@kernel.org>,
 Konrad Dybcio <konradybcio@kernel.org>
Cc: linux-media@vger.kernel.org, linux-arm-msm@vger.kernel.org,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
References: <20251222-sm6150-camss-v2-0-df8469a8343a@oss.qualcomm.com>
 <20251222-sm6150-camss-v2-2-df8469a8343a@oss.qualcomm.com>
From: Bryan O'Donoghue <bryan.odonoghue@linaro.org>
Content-Language: en-US
In-Reply-To: <20251222-sm6150-camss-v2-2-df8469a8343a@oss.qualcomm.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit

On 22/12/2025 08:28, Wenmeng Liu wrote:
> +static const struct camss_subdev_resources csiphy_res_sm6150[] = {
> +	/* CSIPHY0 */
> +	{
> +		.regulators = { "vdd-csiphy-1p2", "vdd-csiphy-1p8" },
> +		.clock = { "csiphy0", "csiphy0_timer" },

Not compatible with your own patch...

https://lore.kernel.org/linux-arm-msm/20251114082649.4240-1-wenmeng.liu@oss.qualcomm.com/

Dropping, please rebase, on your own code ..

---
bod

