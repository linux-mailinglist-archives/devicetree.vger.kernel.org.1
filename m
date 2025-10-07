Return-Path: <devicetree+bounces-224098-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from dfw.mirrors.kernel.org (dfw.mirrors.kernel.org [142.0.200.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 47B90BC0B20
	for <lists+devicetree@lfdr.de>; Tue, 07 Oct 2025 10:38:33 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.mirrors.kernel.org (Postfix) with ESMTPS id 7AC944F4E7E
	for <lists+devicetree@lfdr.de>; Tue,  7 Oct 2025 08:38:18 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 25FC92E1743;
	Tue,  7 Oct 2025 08:34:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="Gznl10my"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f45.google.com (mail-wm1-f45.google.com [209.85.128.45])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E1C072D4B61
	for <devicetree@vger.kernel.org>; Tue,  7 Oct 2025 08:34:13 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.45
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759826055; cv=none; b=JHmECxhhb45s65qQpJD+UFfYP8BSWW5KPZP7xvk7UiZju+BgoxP1Op2fKzRMOMT5lBQy7xh7QOHglehLZvoQDd1ROZPrhEghLyuyx9yig5hNU9am69lvSGyuG1rg+/3NlI6XQJQ/4HYATK2IB3I/rsz5zbbS0K1IMNB2f94p5j4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759826055; c=relaxed/simple;
	bh=hnCPQFDJioFXFqwrcNntVGijjFsq5IgSQsQaRCg8dks=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=H13X9qGEifQd7kPP9AaTUQPHqWdMVYOZmB2pUnhuHhPOalaATtUDTRkuV71ERoOBtmgvs53Z/jV3wvxKTThElWh0poEB7aC/+Drwk0yliFX63B3JEZeDdJbhUt4A/ELNkRkxsjn9sm8q7wWBS4xI9+FpiEWo/KQdIuOcognvhPk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=Gznl10my; arc=none smtp.client-ip=209.85.128.45
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wm1-f45.google.com with SMTP id 5b1f17b1804b1-46b303f755aso45676755e9.1
        for <devicetree@vger.kernel.org>; Tue, 07 Oct 2025 01:34:13 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1759826052; x=1760430852; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=QiLtkw4r+z3ELHzrkww79sYrVN4+kJqV9+CE0aX/r8k=;
        b=Gznl10myooEzq6wPdYbpIgHXK0odaCTNYIKa/UILeJNvFcbdqfxcisLhmRfcfKuOv1
         AByn817tiHfMfr7iGn0vpMzfQqycJ+JHUtPUdgBOqmlPVtUGSnLdZhkZ7aRd7+g0M1CG
         8qb98PRYsvMNbEA6JUM6REunxggElAQUVfjbzqJbiIt3xwmhQWVZexZ9VmXjlLLJFQs/
         fEmAhV+39s5ItYWp4K3G8G2rR5nnpBMgkFtVR179MiCSnu8nZmRn2I/3/PXuhZi2FfVf
         8KefWav68CwdkLTRlteoSRXQaHghVBtbYGpA6mORLMeIis6EsXMZ4Imeyz5Qs/rxeOhH
         tXQw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1759826052; x=1760430852;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=QiLtkw4r+z3ELHzrkww79sYrVN4+kJqV9+CE0aX/r8k=;
        b=jQcZgzxgJZ2QFUG+JdGS/6+M1TLOFtJaSqEEhqUwJXk7Hux9QDIW+rL02HhyL7EWck
         b/n8B8w6ecXi0XonLhyz23l6wPCgWWyNWRwGg7f7d9c/KHC5qR/VJw0gXR+8Nn6pgjkW
         0rnsQEa0M+z9I/DuTE6dzLC2198gnf4KbmqLBl4D7Wi5CySCozf6GNOot4UP+K9OjjH6
         bBQ+b4iiyapoK96tTRlo542OI/hYPKHEOtaOijdVPjGHCMVgux48E9bXk1WZfBNJ6tpu
         MYjH2o+z3nGqOd5uRhCXytALJc8l3qHRkVdN5w3efvej/dUpkEBDIDsaYEl+M8+O0GjP
         mQQw==
X-Forwarded-Encrypted: i=1; AJvYcCVnNYWbJoc4vcAiliu7cmPoCcQv7n8waL/Azy/T+RBd2tDe2no1DgeAeTTZqDEQ/lbjWsKZs8L7C7aV@vger.kernel.org
X-Gm-Message-State: AOJu0YxChPSvKL3ABFcTQ+imU1ciJK5vScXxj4MSC9qSNuNgRSJl7gNk
	GXRgbSaGXxpqLQ6IW+s6u4DSu/wX16NmyiyFjZClH4feija5ZqVyG7XjZKsSWfUwG2w=
X-Gm-Gg: ASbGnctFER6ROExWCJGT2n8Y6HYgw29niJqHk7hNXrCH7pUipyTL4hGc5udHOIa9T7w
	RbiR/5TvlXtuYWdr1rG0ShMhVmPqulJ4ZqJAkSZKrI2Ym8AixOen3JHCmT7db6K2erLcQQcIc4K
	UhjChwz8ZQ280pjxHITOOjqReDsmy1vLZkGZ5DuFWUExQP4j7S2B+HV6LlWQ086siDfMWPtPDQD
	fZApL/cPOvBQQKpAoZS0AxiMjikLhod3kxc4IT1JAtpYB57kahbWK8AB/fSKGGccsc+brdwSmC+
	NHuVmo1lw8l3J4+B5FzGb272g1H8v0A1LII6KgRzh3kSWY6f4xcXFjzadzbkDEsSKu9YDfRsaDz
	2JOKRfmYFyFz1XEDbOK2Ohofw5rQ28Zme9uFqrg9Ml3ArzHo=
X-Google-Smtp-Source: AGHT+IHzRBYvsifqIJW6l/DvFTb1GpI73cPAH1fs6Lrdh2C0kde6p/0HuIOkdP0J3Z8Xj3L4jdedOg==
X-Received: by 2002:a05:6000:2210:b0:3ee:114f:f89f with SMTP id ffacd0b85a97d-4256714faf6mr10470825f8f.15.1759826052003;
        Tue, 07 Oct 2025 01:34:12 -0700 (PDT)
Received: from linaro.org ([86.121.7.169])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-4255d8e960asm24204750f8f.37.2025.10.07.01.34.10
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 07 Oct 2025 01:34:11 -0700 (PDT)
Date: Tue, 7 Oct 2025 11:34:09 +0300
From: Abel Vesa <abel.vesa@linaro.org>
To: Konrad Dybcio <konradybcio@kernel.org>
Cc: Bjorn Andersson <andersson@kernel.org>, 
	Michael Turquette <mturquette@baylibre.com>, Stephen Boyd <sboyd@kernel.org>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Rajendra Nayak <quic_rjendra@quicinc.com>, Wesley Cheng <wesley.cheng@oss.qualcomm.com>, 
	Bryan O'Donoghue <bryan.odonoghue@linaro.org>, Sibi Sankar <quic_sibis@quicinc.com>, 
	linux-arm-msm@vger.kernel.org, linux-clk@vger.kernel.org, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org, Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>, 
	Bryan O'Donoghue <bod@kernel.org>
Subject: Re: [PATCH v2 3/3] arm64: dts: qcom: x1e80100: Extend the gcc input
 clock list
Message-ID: <dz4rjtwdl6gqhn6g5prqvnifrgortzgjpwatbpf3n7kn22tniz@yjteyofk2gtr>
References: <20251003-topic-hamoa_gcc_usb4-v2-0-61d27a14ee65@oss.qualcomm.com>
 <20251003-topic-hamoa_gcc_usb4-v2-3-61d27a14ee65@oss.qualcomm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20251003-topic-hamoa_gcc_usb4-v2-3-61d27a14ee65@oss.qualcomm.com>

On 25-10-03 20:14:40, Konrad Dybcio wrote:
> From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
> 
> With the recent dt-bindings update, the missing USB4 clocks have been
> added.
> 
> Extend the existing list to make sure the DT contains the expected
> amount of 'clocks' entries.
> 
> Reviewed-by: Bryan O'Donoghue <bod@kernel.org>
> Signed-off-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>

Reviewed-by: Abel Vesa <abel.vesa@linaro.org>

