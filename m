Return-Path: <devicetree+bounces-176764-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 37B23AB5725
	for <lists+devicetree@lfdr.de>; Tue, 13 May 2025 16:29:44 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 84B8B3A7EFE
	for <lists+devicetree@lfdr.de>; Tue, 13 May 2025 14:29:24 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D6D3F2BE0E3;
	Tue, 13 May 2025 14:29:40 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="UUcAa+Qk"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f44.google.com (mail-wr1-f44.google.com [209.85.221.44])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1178128DF0B
	for <devicetree@vger.kernel.org>; Tue, 13 May 2025 14:29:38 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.44
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747146580; cv=none; b=hkoDQ1p5sbdMVXM36x5YRNqqP8u1rPLTE7BAExyUXAkYIbqmP6MuTVEOUIO+i5Ec9Xu11p1MEdwbRJfDDBsVSF4+ulIUmVJZNqR2ErtxAViQci5t2hQx5TgGizUwmSCyIwV4WB9pUBm8NGfzPJv4O3Pize4UnEHquK5QmmfQbjQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747146580; c=relaxed/simple;
	bh=3r6EFmRwIAg4Ct9GeTXJ9nBhaVARUyeX0iflKOCi8wY=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=OSfrlobkHCWeJd1kqkGOPoVe9Zn0q/2MwYo5dwHwA4Pf/z10szurLFwlXGX+E9g/L6ue97674sOXvsR0IA7FYbMoy8b7LlmIF2ef3rVvDCu5K7IP7la+SrKrGNKHnLRzUWD2uciMTEOcoiku7+OU6t+6zsZ4r1o8PaGMYPDCc28=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=UUcAa+Qk; arc=none smtp.client-ip=209.85.221.44
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wr1-f44.google.com with SMTP id ffacd0b85a97d-3a0b9af89f2so3435572f8f.3
        for <devicetree@vger.kernel.org>; Tue, 13 May 2025 07:29:38 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1747146577; x=1747751377; darn=vger.kernel.org;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:from:to
         :cc:subject:date:message-id:reply-to;
        bh=5T5EVqvVCDoHXLH6Qk0C5AKC1Zmg5QpTMVhHdRjdkFc=;
        b=UUcAa+QkCp+fZPLlvv7OIr5fbXBFHoMrmO7NVPxyGuZBdlK29VO8ZL2CGQj3VU6YHj
         9HKVKeDCmtaBunrunEXcHrxxKSvKQDaw7DEogOOvxvjeQtseua4ghGwH2I28cVWGR0KA
         VmDkp0EuZj82xiRaFc2wi5ElZyF5akhnR5dqeUSiMZUrAJC4v4aX8m60QZLmlWP6C/DH
         OP82jZcNYfK+0+xn3rM90zwc6yIN9BVbAaSFTTNr835PV/xP6WZbBtHNBNlJ2mRxXh2i
         SkvaD1Bt+sU/mlpM4jmkXnpdgLxKyYP6tb7B6V9MrX0DMwUB9e3uA1lotMUeuU3V0Yjd
         IqNQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1747146577; x=1747751377;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=5T5EVqvVCDoHXLH6Qk0C5AKC1Zmg5QpTMVhHdRjdkFc=;
        b=HlhOJ9JmzjJDnN5XsE3jTEJBYEHtqnKJXNJdFAU+Lz9SHjhfPOCG66c24hzIs3CBhA
         IZ5vx/+7GOfWM7oxDZKt2EQ6LO2i6dYknTfWc4I3ZL7v2fOAGt+6Eag2C8C1uCcQgIit
         +ejIX15zG+IK1PUdHqwP1/ESo4opKH1Dg3W5ijrRL0RwKHZ+wqvF1ibh2ZSXMBNlHR1w
         zl9KszyxY3hksGiPmQHp0UrS1qItS/otGllDcnlqkJBW5iNSw353Dkk4uEsTG0bhIgNt
         s+Tg+uwq2tyfd63KvJ3pbv3TeKEgxMlE9pPA2P3yocMMLEOPmLqmfeLosjyYtwAG+wco
         2Ivw==
X-Forwarded-Encrypted: i=1; AJvYcCUYCf6466QC29VoeeVRSVeDBCoZLYMK6m4bVAshONnK7UrvOAocu1LBoSZVCJ4UPu0akdBH1boVer6I@vger.kernel.org
X-Gm-Message-State: AOJu0YxIgya3JqMbkaKXkb3LPi3jpKH5YggfRRd4hwznzN25wUc/z+Nq
	ZdDv8Ml1k1GSouZLeE2mPsoME9AQpakmFmmRHvMNxeTUkAUTRb4S9xJogTr1bx8=
X-Gm-Gg: ASbGncsYJpzlokg4qhHNF/IYtAMcY2dMeTvACghrpqsrhjCkFE4ZZcFLufIFNCcrhZs
	JrWDccs+VMz8ba3me/4dsF5ba/q+GxdcXyyuOav/9TgEMMxo0+/3rMUeKvjUGCVVI5bhOOHwNVR
	2Ubs9WTdr3mrDa4GqpH6ZAqhTo14tshlZ9wmHVgen+jTOB1/ZOTFKLc4fXy/+OgNEBoC8/jQtCA
	Vc3wax1mJaaNZtZXEn4MR2wmMc/Vb4F2jJX/4kMtXZB865AisH/KowiFauKgZwAPbgZiav6vZ+e
	BRHCbqAvkNI45OJgcFxfKPJ68AH9seJcgXEwGRt7rb8Ba5JYhD2KDngeBAB8KD6D3PZDdR+ZH3m
	4AR6bVyrx3y4sOm2sOCWfQZB+
X-Google-Smtp-Source: AGHT+IHNQc8VSkvMb+be4xShmhohsEns4BbUI6HrioDELteMpaN+j7jH2OMJqSpLg6IVq7ISGUZrlg==
X-Received: by 2002:a5d:5f82:0:b0:399:71d4:a2 with SMTP id ffacd0b85a97d-3a1f6430752mr14506029f8f.14.1747146577463;
        Tue, 13 May 2025 07:29:37 -0700 (PDT)
Received: from mai.linaro.org (146725694.box.freepro.com. [130.180.211.218])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-3a1f58ecadfsm16347307f8f.22.2025.05.13.07.29.36
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 13 May 2025 07:29:36 -0700 (PDT)
Date: Tue, 13 May 2025 16:29:34 +0200
From: Daniel Lezcano <daniel.lezcano@linaro.org>
To: "Rob Herring (Arm)" <robh@kernel.org>
Cc: Thomas Gleixner <tglx@linutronix.de>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>, Guo Ren <guoren@kernel.org>,
	linux-kernel@vger.kernel.org, devicetree@vger.kernel.org,
	linux-csky@vger.kernel.org
Subject: Re: [PATCH] dt-bindings: timer: Convert csky,gx6605s-timer to DT
 schema
Message-ID: <aCNXTvpa-R6S1LZZ@mai.linaro.org>
References: <20250506022224.2586860-1-robh@kernel.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20250506022224.2586860-1-robh@kernel.org>

On Mon, May 05, 2025 at 09:22:23PM -0500, Rob Herring wrote:
> Convert the C-SKY gx6605s timer binding to DT schema format. It's a
> straight-forward conversion.
> 
> Signed-off-by: Rob Herring (Arm) <robh@kernel.org>
> ---

Applied, thanks!

-- 

 <http://www.linaro.org/> Linaro.org │ Open source software for ARM SoCs

Follow Linaro:  <http://www.facebook.com/pages/Linaro> Facebook |
<http://twitter.com/#!/linaroorg> Twitter |
<http://www.linaro.org/linaro-blog/> Blog

