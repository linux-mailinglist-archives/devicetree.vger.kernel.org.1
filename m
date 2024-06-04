Return-Path: <devicetree+bounces-72189-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 712058FB18A
	for <lists+devicetree@lfdr.de>; Tue,  4 Jun 2024 13:56:53 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 1167E1F23362
	for <lists+devicetree@lfdr.de>; Tue,  4 Jun 2024 11:56:53 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 9C84C145B1B;
	Tue,  4 Jun 2024 11:56:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="PjeqMhKn"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ej1-f45.google.com (mail-ej1-f45.google.com [209.85.218.45])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E75F4145A17
	for <devicetree@vger.kernel.org>; Tue,  4 Jun 2024 11:56:32 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.218.45
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1717502194; cv=none; b=Olvv01dq79aTk34UAB4UjY5KJmtxwQezje3kluMQhtZR9qPDVYJQZkXTj1PrengFFVMPrY2nyqLiHWWuc61BJRUYERyIwnj2c6pY6rU27vteNSfTttbEp8qRj1qgqpOH4xRqDq9MRrlq844KaQQyO9yIE/jjGI0Gu1NYCpXAL/8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1717502194; c=relaxed/simple;
	bh=WSiabmZiPb5SL1hbkSXdP1+e7Ad1uHfhxRB4tWveGA0=;
	h=Message-ID:Date:MIME-Version:Subject:To:References:From:
	 In-Reply-To:Content-Type; b=uFYk3TCyaYPa9LJMCErSYDeK90h6wzZEjYdmjc902jpb/rXUmWIBfU+5ME/LzHT+ZH4/KF3HvLhZ9y3SBXKnZwG4o/sjTbAxU4C/8Et71jNZqgQDGwWk3l38lkcgELX8G5Ly9PNFhVAYMthgNrBKnNMt748zzSLJstyu0XN4a80=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=PjeqMhKn; arc=none smtp.client-ip=209.85.218.45
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-ej1-f45.google.com with SMTP id a640c23a62f3a-a68a4a9946cso334153666b.1
        for <devicetree@vger.kernel.org>; Tue, 04 Jun 2024 04:56:32 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1717502191; x=1718106991; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:to:subject:user-agent:mime-version:date:message-id:from
         :to:cc:subject:date:message-id:reply-to;
        bh=IlxQpEl9GwYRWbsz3F/VhoHqrB46zrMMPBzYj2DcSkU=;
        b=PjeqMhKnRIXgCPHFOwqMElhSCRZcvzZ9BJ/igAjFMCqo2YkzoMj5OQ561O8a7LThLW
         qMpTj8XKYuLCdSeoSRGUEEt56pcmGXpCysUMKOyL4Z4IhkznipxPmJ7py/jLa3g4MmXZ
         dkZDMvjU7ZVj0ElqOF1t9vvJ4MfSo78r8c0YQflYA+kIVSeiIsWlA+Lr1LFzjNU+8o/R
         CzESSz7CAofae33gCT7dZ2YDQXtSzpl9DlzIh5R64xvLj69jLjOFuI+XGhmr0Q2kqeVM
         UOAqnVjTwwMA3YVxhNYCyKH9pCoPRUMJNgjGEGCK+Tzf3B0vxZVL0en9LAseN9y5YxN3
         oONA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1717502191; x=1718106991;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=IlxQpEl9GwYRWbsz3F/VhoHqrB46zrMMPBzYj2DcSkU=;
        b=gnPVZRSB/zYvyWLTSpVBT5vqW7scqalM7WLDR48wG3ZLm7Sbc0BFabr/akgvdComow
         tgDH4OSEy094pqCC8FrSpSGyONFddAfcCo35MOL7zK5iqoyrjm3PGxciEbfQ5SUCgcZt
         GNjgEdxAhRqM6yKZHov6YShlSfvcIfvGqvmJPxoLu9kuVd9pTYAhF7dLnKu4+kypSyC0
         C7BtLzmM0gFIrA24Dpg6bx7vny5veTxjQXgKP/F3GdHaEv0sQs73TLwLE6/CeF99tPnx
         QfR6iO8TXYowRQGw1OWufAXhsanqU4SBj/EUdm2aF/HeMg4l5hgWD2QHsuqSr1PVMsz5
         5DhA==
X-Forwarded-Encrypted: i=1; AJvYcCX8A70CeVh0Fkv4G5I/kvd0M76FC8NdeSnTrIOI/8YXzUsFUChTTPgn3d1keq8krBHdOUM5//MlvrLfuQxBwUJugs38iyxa53iEZw==
X-Gm-Message-State: AOJu0YwV/bIVlV2XZx1ovPouHpBp6/rrGiwgqm1nirw6fR7yxy1Fty7t
	HwF1Ftdr8asMotjHTxQbSyeWR5jYI2bP3CN52Ks2+pCIQXJVY8VvXWs+dKCU6VN/RiE7cHkc9Hu
	kzI8=
X-Google-Smtp-Source: AGHT+IFC4ZEOeRR+G/N2/nkWfd500F8oJTkhhtC2Oqw82+b4cCdnJ7sQhzorOM1l4IvQwgpYEEg7rQ==
X-Received: by 2002:a17:906:cd10:b0:a59:a356:3f6d with SMTP id a640c23a62f3a-a6822049b1dmr694154166b.54.1717502191240;
        Tue, 04 Jun 2024 04:56:31 -0700 (PDT)
Received: from ?IPV6:2a00:f41:909a:a11e:a035:2af2:8d85:1f72? ([2a00:f41:909a:a11e:a035:2af2:8d85:1f72])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-a69043af942sm310073666b.72.2024.06.04.04.56.24
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 04 Jun 2024 04:56:30 -0700 (PDT)
Message-ID: <c3a922e4-0b34-4b53-bdbd-a62817a68db2@linaro.org>
Date: Tue, 4 Jun 2024 13:56:21 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH] arm64: dts: qcom: x1e80100-crd: add USB DisplayPort audio
To: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>,
 Bjorn Andersson <andersson@kernel.org>, Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley
 <conor+dt@kernel.org>, linux-arm-msm@vger.kernel.org,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
References: <20240604094947.98191-1-krzysztof.kozlowski@linaro.org>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@linaro.org>
In-Reply-To: <20240604094947.98191-1-krzysztof.kozlowski@linaro.org>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit



On 6/4/24 11:49, Krzysztof Kozlowski wrote:
> Add support for playing audio over USB DisplayPort (the two left USB-C
> ports on the CRD device).
> 
> Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
> ---

Looks sane. Are any UCM changes necessary?

Konrad

