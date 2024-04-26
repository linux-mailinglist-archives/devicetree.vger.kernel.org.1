Return-Path: <devicetree+bounces-62992-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id A63B08B3621
	for <lists+devicetree@lfdr.de>; Fri, 26 Apr 2024 12:56:57 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 61BC4284E45
	for <lists+devicetree@lfdr.de>; Fri, 26 Apr 2024 10:56:56 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 81EF7144D07;
	Fri, 26 Apr 2024 10:56:50 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="v6r/LC9f"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f48.google.com (mail-wm1-f48.google.com [209.85.128.48])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D3FF61448DA
	for <devicetree@vger.kernel.org>; Fri, 26 Apr 2024 10:56:48 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.48
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1714129010; cv=none; b=Q51fNxWlm/kZ1dk9Hx9jygMwYIpWStrWyGsXkV7DTUbpnd9muqvhLjmBxkY+Qzz/Of0FENGyWQxw7vh0g9GJrjtLLbLE30mD3BcP/CZ7cgToub/RmmP1K9GTlp7NAq56vrQ/uOT8uUFHm2+k2kzhcagDS6pi4ag9v60jN2O7y/A=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1714129010; c=relaxed/simple;
	bh=udxVw+++iagTZz2k70xeWORhBBMM1NSdmmV1VIlzjVE=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=cqKDthOQ1NJfvLBxko+JnM/hy6LEUExZ5xj0KkcWDNOncR9h7JxwbZo81spVb4Q2ygr7XCAdYTDb5XKJ4HC/YDBb7gqfr2/oPha/ETRgZV3PpWrEheDyAEfbncH2rzBnxXtw/1tgyrSEkhY9JOg8nkhrU7w/7IKke1A03JyjQ54=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=v6r/LC9f; arc=none smtp.client-ip=209.85.128.48
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wm1-f48.google.com with SMTP id 5b1f17b1804b1-41b869326daso3635395e9.0
        for <devicetree@vger.kernel.org>; Fri, 26 Apr 2024 03:56:48 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1714129007; x=1714733807; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=aoFcIxQR0t8oCPEZALjo58lCFFW8rW/ix4KBRT7bHB4=;
        b=v6r/LC9fsLJejint+tmI8ixVtC9J04TR25xcGgsSboGkocJh2fvRXvqzWVBr83x/va
         tSmAL+QrEOMOYYAUwzpVPDpgYgnKPDa72yElAlzfpRAHphTySHpuhDErwhrOZ4IvFb6A
         DsQQ9WC+ur1kk9Kx8xoOeIGPjUSzqrB/GjtxgRC+OrtUslX6ak8wHIbCMtpJFIoWrhN+
         oJyYmzyVWafENaLgz3ED56eJTSlWMwa+Ok2yVv9a1qVq5v+gz8R8Mrp6MObi222jLNpx
         tWUPwaZbeZT4xB6vPFuH2RkOuDgSnqampKlnar5FNwz4nTRLHg8YNfK21u5zCQoAWNfT
         F8sw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1714129007; x=1714733807;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=aoFcIxQR0t8oCPEZALjo58lCFFW8rW/ix4KBRT7bHB4=;
        b=jEn4mcqipqYmhSfAu0D2j50bYDGaR72bE6lScILg8sofreE5qxnj34sxUiUDj9UXO4
         Qupalz1pReMVLPpONFMFVIaGUprNdX5C+q+jCGojhtMmB8SOx1QY7xFFZsIZ87sGN1ze
         IhH+TIoPHsxfLwxRxlxOb+kpXYylO3jRFDczU3wdr0ZaA1tkgC2qHKVmUyFG7RLzaiz0
         ZMFpbPT1vjuDOskVR4v17vAnIlomTL0nFCGh14mRKjhwpOljCCPXybcOXzweiCYjveEI
         jyQu9KSZcH5bqMYudOWnsmJwqdfoZAis9qMjfs8Gi9POUk2sCFQIDLYwAPrwq5Aq2vM/
         1RsQ==
X-Forwarded-Encrypted: i=1; AJvYcCWfH0VkdwWoKols+36L2kEC5a7TgaQiwDgnG53C305FE85yb2DKfIEAqGvgrI9fkCYoSNxTK1zF1n4RF/+mzrWinWT3DT6wxj95lA==
X-Gm-Message-State: AOJu0YxH6Uq/i5mEjf9fH/9WAHLRfml2m+3lJ0I3Q/vyfOCGFFevDLdX
	kKy8sSwbCvTQ2IZHUCP0YgCY9j1NUdAprY4GATkMMfnY9co/Mc6QOH9wscyhu/o=
X-Google-Smtp-Source: AGHT+IFH1L79332kHOc1PS5JXFd6A4jTTtznIl2/7hWiWbCz0rliE+qlQeT9xmpERZC+fKb3uldVYw==
X-Received: by 2002:a05:600c:470a:b0:41b:8b3b:7a3e with SMTP id v10-20020a05600c470a00b0041b8b3b7a3emr1669796wmo.22.1714129007204;
        Fri, 26 Apr 2024 03:56:47 -0700 (PDT)
Received: from [192.168.2.107] ([79.115.63.100])
        by smtp.gmail.com with ESMTPSA id hg16-20020a05600c539000b0041aa8ad46d6sm13030298wmb.16.2024.04.26.03.56.45
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 26 Apr 2024 03:56:46 -0700 (PDT)
Message-ID: <e36591a1-8e6c-4fb1-a2c7-d8b161d5fbe9@linaro.org>
Date: Fri, 26 Apr 2024 11:56:44 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 3/5] arm64: dts: exynos: gs101: enable cmu-hsi2 clock
 controller
To: =?UTF-8?Q?Andr=C3=A9_Draszik?= <andre.draszik@linaro.org>,
 Peter Griffin <peter.griffin@linaro.org>,
 Michael Turquette <mturquette@baylibre.com>, Stephen Boyd
 <sboyd@kernel.org>, Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley
 <conor+dt@kernel.org>, Alim Akhtar <alim.akhtar@samsung.com>,
 Krzysztof Kozlowski <krzk@kernel.org>,
 Sylwester Nawrocki <s.nawrocki@samsung.com>,
 Chanwoo Choi <cw00.choi@samsung.com>
Cc: Will McVicker <willmcvicker@google.com>, kernel-team@android.com,
 linux-arm-kernel@lists.infradead.org, linux-samsung-soc@vger.kernel.org,
 linux-clk@vger.kernel.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org
References: <20240426-hsi0-gs101-v2-0-2157da8b63e3@linaro.org>
 <20240426-hsi0-gs101-v2-3-2157da8b63e3@linaro.org>
Content-Language: en-US
From: Tudor Ambarus <tudor.ambarus@linaro.org>
In-Reply-To: <20240426-hsi0-gs101-v2-3-2157da8b63e3@linaro.org>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit



On 4/26/24 11:03, André Draszik wrote:
> From: Peter Griffin <peter.griffin@linaro.org>
> 
> Enable the cmu_hsi2 clock management unit. It feeds some of
> the high speed interfaces such as PCIe and UFS.
> 
> Signed-off-by: Peter Griffin <peter.griffin@linaro.org>
> Reviewed-by: André Draszik <andre.draszik@linaro.org>
> Signed-off-by: André Draszik <andre.draszik@linaro.org>

handling the patch already implies that you reviewed the patch. I'd drop
your R-b tag, but maybe just a matter of preference.

Reviewed-by: Tudor Ambarus <tudor.ambarus@linaro.org>
> ---
>  arch/arm64/boot/dts/exynos/google/gs101.dtsi | 12 ++++++++++++
>  1 file changed, 12 insertions(+)

