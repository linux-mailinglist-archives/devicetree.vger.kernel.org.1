Return-Path: <devicetree+bounces-76965-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 1209E90CAE4
	for <lists+devicetree@lfdr.de>; Tue, 18 Jun 2024 14:03:04 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 4BB8A292D6B
	for <lists+devicetree@lfdr.de>; Tue, 18 Jun 2024 12:03:02 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E21FC14F11B;
	Tue, 18 Jun 2024 11:55:00 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="XQXv8q7l"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-f52.google.com (mail-lf1-f52.google.com [209.85.167.52])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 29AFA14F100
	for <devicetree@vger.kernel.org>; Tue, 18 Jun 2024 11:54:58 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.52
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1718711700; cv=none; b=CfXPv518svsD+K1a4xHc6KF+JmMcutbs3xUd7j2jtWUoZ83F6jlMw6OBOk8CQFnbIz7u9TBDBD988eqAr5Jmf4W1uyXe5x30yARLyztudhsxRAcWK36XaCo5E85c6F1UzEIp8b2f5oxhpBmofm5rIh70aH9Fj1qi0YC9rquZJb8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1718711700; c=relaxed/simple;
	bh=+RPHdWCuOFGKxKHb3kNZJz5Nok1P5PnRu0jTv0Yjtqw=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=dClagDUM69Ua3IKYJAmPhBQC2eXfmxXhQVfPPpq+PzZJUG+RgLiDls53HIH8dvediXo3sabkApEG2xjTKr/1m8PJN9a5JBIqmMv0dOCQLndrC2m+cvwbwMCMuoQeabM4Wr2MljVDvYs+2TtydqzSDMllzDaAMmf3o8e6j/AB5oo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=XQXv8q7l; arc=none smtp.client-ip=209.85.167.52
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lf1-f52.google.com with SMTP id 2adb3069b0e04-52bc27cfb14so6623719e87.0
        for <devicetree@vger.kernel.org>; Tue, 18 Jun 2024 04:54:58 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1718711697; x=1719316497; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=dT0ZZ+PowY+v9iELFfhytd7yEOVJUW3dNiMcX91s7M0=;
        b=XQXv8q7ladgFdsDmvbOZDbGOMjtTJMCm+jmeX+zd1kI+ZVC9hF2/GdLM/LUSVv5/NU
         W3m7Ng3vRH6PngAhR+cnTDbduaEzCJJiFNPxSd27he7zMbXRJmWon2s9HOHXsyZpEBy0
         Ig8BucK4+nCv2D+vLyEfm0e5FdUbcfGQpkvE09VZ/benigI6IJmJW9n/FZ0gb5E+vcbs
         q8o34Nhwz1P/Ak0FFMFr5JGFWyK+e3UtmSnH8Uvc+BrvsXKefA8UDKdH3wrdruUusK1j
         PMBixvEUf3KDQzGOS4pO4rY3hF9oT3jUBJItP6bwzE0Mmx/dhDJlrL9/xpVJRN/BrG4B
         9i4w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1718711697; x=1719316497;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=dT0ZZ+PowY+v9iELFfhytd7yEOVJUW3dNiMcX91s7M0=;
        b=UKmrXYFvTw5rip9PMqdo41YHZ/NkbmY7EMf1YnqzywjsGKMk8Yk/mS/GWdvCPS6j1p
         vSEmSD330PF0us9w9G9WVhA/u53Q0ZZ7AgVZDeStxo042CEp3og7Hl/iViJ2Iayg275+
         QDyaaM4tV979s+3I9lzehrStVgoE9kEf4izMwRBr69CbIaspAgfdJuNVZzHlq7lOTGr2
         8r7JiXRAFSaoBPcMmdt5RMXyZkWOELQLmL5C1DKA/F4Q5xhv7KpK9WrHMgQj4hFAfhvJ
         5irGH8dOuA6r5BaeZK7ADjqNfGXerjItQMcSEDOU9ndHjb1xF9BwQRqnJdDvCqYomRfe
         az9g==
X-Forwarded-Encrypted: i=1; AJvYcCWBzZ2qxebLlBQqQxKF/MUqjCGHUFNUglhAhY6akkm4rbf8rSsx3aRh7XAEjkWYckCdG+7G5onrGQ4mYN2Oh+bleKX6ju/QVqnvAw==
X-Gm-Message-State: AOJu0YxMd2jNNMjkYHIa4WGfQMs6WRoZwCcu0WT0UzHq6sYvWBNfYNMV
	IZLcGY4Rlt38WvxKNnLRRCegFnMpk9U6veGUsiQeql648MJ8bH70r7QG/CDcVsA=
X-Google-Smtp-Source: AGHT+IFwyKqlRDKeh1hdIaDZfDwv6zE8VqJfCQUflirsO1eqZwtlM3OYLFpWClxeG7+ucwbIfYFaOw==
X-Received: by 2002:a05:6512:3c89:b0:52c:76d:dbb4 with SMTP id 2adb3069b0e04-52ca6e92abbmr11576688e87.49.1718711697428;
        Tue, 18 Jun 2024 04:54:57 -0700 (PDT)
Received: from ?IPV6:2a00:f41:9028:9df3:4fb7:492b:2c94:7283? ([2a00:f41:9028:9df3:4fb7:492b:2c94:7283])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-52ca30928aasm1476984e87.283.2024.06.18.04.54.55
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 18 Jun 2024 04:54:57 -0700 (PDT)
Message-ID: <a8f43e83-c286-4e53-b9e2-988bba9cd85c@linaro.org>
Date: Tue, 18 Jun 2024 13:54:54 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 3/3] ARM: dts: qcom: msm8926-motorola-peregrine: Add
 framebuffer supplies
To: git@apitzsch.eu, Bjorn Andersson <andersson@kernel.org>,
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
 Conor Dooley <conor+dt@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, phone-devel@vger.kernel.org,
 ~postmarketos/upstreaming@lists.sr.ht
References: <20240617-peregrine-v2-0-c8835d2da7af@apitzsch.eu>
 <20240617-peregrine-v2-3-c8835d2da7af@apitzsch.eu>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@linaro.org>
In-Reply-To: <20240617-peregrine-v2-3-c8835d2da7af@apitzsch.eu>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit



On 6/17/24 23:22, André Apitzsch via B4 Relay wrote:
> From: André Apitzsch <git@apitzsch.eu>
> 
> Add regulators used by the framebuffer of Motorola Moto G 4G (2013).
> 
> Signed-off-by: André Apitzsch <git@apitzsch.eu>
> ---

Reviewed-by: Konrad Dybcio <konrad.dybcio@linaro.org>

Konrad

