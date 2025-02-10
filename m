Return-Path: <devicetree+bounces-144836-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id A14F6A2F6AF
	for <lists+devicetree@lfdr.de>; Mon, 10 Feb 2025 19:18:03 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 0A39D1888BCA
	for <lists+devicetree@lfdr.de>; Mon, 10 Feb 2025 18:18:09 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id F28EC2566F4;
	Mon, 10 Feb 2025 18:17:41 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="PsQprjGz"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ed1-f49.google.com (mail-ed1-f49.google.com [209.85.208.49])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1941B2566C2
	for <devicetree@vger.kernel.org>; Mon, 10 Feb 2025 18:17:39 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.49
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1739211461; cv=none; b=b3oVK5qND8SNG3GhscB3Dxicl7J02WvD4OgSHktaH5JN4Ge1zPlGC7D9zfCZbkwJVASfgplCLWe6AulEU3w1WSonpfi1BLpgN07c6MztEw/bD/Gm9/ZfVwoAJEQldyU4f2hT5sEWbkFv+KOdScc3MftcO4UhcqLDJPD4f+rLcYk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1739211461; c=relaxed/simple;
	bh=Wh5yx6BMUnphP2RVBhvJu+atXSSYBvxEAcLfKspktSE=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=XGJENo0Dlu9bQU8E1cfPUXBAcKtWZ6AcoOix1qWYZoxqM1sRKanyAiVX06AH3s5IaFWPBdPSGe4LKRzOUGAKMTJUWr+qwDOqAQdZ/gYNIq3BRFejc6guvetcvCym5+kv8/itsgIYC0p7rowoHeBTZdpKq6X0Kwodc7UzTKCEZM0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=PsQprjGz; arc=none smtp.client-ip=209.85.208.49
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-ed1-f49.google.com with SMTP id 4fb4d7f45d1cf-5de849a0b6cso2298999a12.2
        for <devicetree@vger.kernel.org>; Mon, 10 Feb 2025 10:17:39 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1739211458; x=1739816258; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=qHaDIsqj34B8usesjY16LwOg4JnnE1Cbsm7V9RJsdE4=;
        b=PsQprjGz3ROFlSIQZf+hdQLGtFdi6zZZR9+GIGFv2lB6OQyU6mrcFoC60ODFSq74PW
         oBSuTWodn50rcSzX/+F+W3s69hs66SENM9HFRmd3NHK2jdkimURKnlJ264OE9oHxRlB5
         NutwbHN641OhEOxVfLRLLsoyI08JD7/IJNGrpd4/rufdwH+dTW08pdv4z1J5isqAuGcf
         PNSbvRoKIxkht7ggH2D8JDtwmGDhK7nHZjwwpgunWIpqcoNodRIMZTsCiC0TJve6GQXr
         7Fd4THN2slCEQdeOJHR+AkyOMtp+OCDxPhkdf4SKmA6IF3tfoIQbg1Db7uKS63oSjWqQ
         dHhw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1739211458; x=1739816258;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=qHaDIsqj34B8usesjY16LwOg4JnnE1Cbsm7V9RJsdE4=;
        b=VRXY4yeNur99M6Q3ZMFvbs6gbfIBm4T/VbLKlxLQJUVEjIIKGy/m9nLQB3j1rtD0XS
         QJYwfF8+vMqkX0zaiSEDTh1pcTAtNLmhy/v3m5IrGbazWRR+u2z2oG7zKHvVR28Svwig
         SncJJNBElRNnasLqHy/yjCE3N5JzTo7v/xMM8dm2UHxycGEnQuykiqZZNHQoDiqkt6LD
         QVptapHvfRSwLYQdvVekQlhtdRJNtb6aZkXWmgvgPqtWW5NhRvI+KfZIshduZwhlR/Kb
         OU6hVgWoAqeRkxrzGE1z+ID1f2yHXp2hFljKObRb4tt8lrz9g5WoBdIGzt6p8y7FPCjc
         2diQ==
X-Forwarded-Encrypted: i=1; AJvYcCXWq/RXc9BPK/sYvjGQNLbG8ySIv5+6KI0+g51tXTvBsKx99tlunfxZs/07B2mAkIrqrhftQokSSFx4@vger.kernel.org
X-Gm-Message-State: AOJu0YzsWMnmIN0gtoRSOCk4jcJj7r/hQmDBa5yYETIhYI/iRkQCp/1l
	4d4VaSqKmmrh/y4SokJ488MEEfLR4g7TXgJenhsn8s/nBamCABuo0XflG+88UuM=
X-Gm-Gg: ASbGncuAIQXL8hfzTSIauP5hw1wxGQZB065PkbtSRix7oJShRww/xl/iai+PJIPqhM8
	/wi3A9Hq3MLMj0seQboqcHLbWkkF2rHqEB4narkFs4nvUbpp1g7ZADesJUNazJU5iv20WfcQMHy
	SFFIlyU/Kv14htbrYnWebfq5M8Inbf7wNcB98DGE6ezLrwvp/rnMtf74gQziG+1kfEbp+av+gV9
	UY/CYGHTKUXLOizuVOhncw36CNpxBpJvOnHCsoTOonCdAWV1xkJ+0KebcZK5au2jkN/gJ2lJRcf
	kjPvHPHBSw/Cx++1bj+b41U2
X-Google-Smtp-Source: AGHT+IE17precGVn60p0mKS1K0f7v1etGQpp1R/N00rlHb4aVUugfxbIzoj2Q7spw41fxBN5V9dokA==
X-Received: by 2002:a05:6402:5290:b0:5d9:a62:32b with SMTP id 4fb4d7f45d1cf-5de4503ff1emr15027701a12.7.1739211458355;
        Mon, 10 Feb 2025 10:17:38 -0800 (PST)
Received: from [192.168.0.14] ([79.115.63.124])
        by smtp.gmail.com with ESMTPSA id 4fb4d7f45d1cf-5de4690311csm7037457a12.60.2025.02.10.10.17.35
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 10 Feb 2025 10:17:37 -0800 (PST)
Message-ID: <88c69965-ed8b-4895-ac99-11a6cddd1a42@linaro.org>
Date: Mon, 10 Feb 2025 18:17:34 +0000
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v4 0/4] arm64: exynos: gs101: add ACPM related nodes
To: "Rob Herring (Arm)" <robh@kernel.org>
Cc: linux-kernel@vger.kernel.org, Jassi Brar <jassisinghbrar@gmail.com>,
 daniel.lezcano@linaro.org, devicetree@vger.kernel.org,
 Alim Akhtar <alim.akhtar@samsung.com>, peter.griffin@linaro.org,
 vincent.guittot@linaro.org, Conor Dooley <conor+dt@kernel.org>,
 linux-arm-kernel@lists.infradead.org,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, willmcvicker@google.com,
 linux-samsung-soc@vger.kernel.org, andre.draszik@linaro.org,
 Catalin Marinas <catalin.marinas@arm.com>, ulf.hansson@linaro.org,
 Will Deacon <will@kernel.org>, arnd@arndb.de, kernel-team@android.com
References: <20250207-gs101-acpm-dt-v4-0-230ba8663a2d@linaro.org>
 <173920411592.476427.15574016492470186426.robh@kernel.org>
Content-Language: en-US
From: Tudor Ambarus <tudor.ambarus@linaro.org>
In-Reply-To: <173920411592.476427.15574016492470186426.robh@kernel.org>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit



On 2/10/25 4:22 PM, Rob Herring (Arm) wrote:

cut

>> Bindings for google,gs101-acpm-ipc are proposed at:
>> Link: https://lore.kernel.org/linux-samsung-soc/20250207-gs101-acpm-v7-0-ffd7b2fb15ae@linaro.org/T/#mb557ee342de628b1a8e462d4fb7c3ac6eb8be4e4

cut

> New warnings running 'make CHECK_DTBS=y for arch/arm64/boot/dts/exynos/' for 20250207-gs101-acpm-dt-v4-0-230ba8663a2d@linaro.org:
> 
> arch/arm64/boot/dts/exynos/google/gs101-oriole.dtb: /firmware/power-management: failed to match any schema with compatible: ['google,gs101-acpm-ipc']

Thanks for the report. The bindings are proposed at the link above.

Cheers,
ta

