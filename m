Return-Path: <devicetree+bounces-146031-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id A99D6A3309A
	for <lists+devicetree@lfdr.de>; Wed, 12 Feb 2025 21:17:43 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 317501889E72
	for <lists+devicetree@lfdr.de>; Wed, 12 Feb 2025 20:17:49 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 6602D201036;
	Wed, 12 Feb 2025 20:17:39 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="yXUfPL4W"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f49.google.com (mail-wr1-f49.google.com [209.85.221.49])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 84ABC200BA1
	for <devicetree@vger.kernel.org>; Wed, 12 Feb 2025 20:17:37 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.49
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1739391459; cv=none; b=l12kcFv2rQSzdv00LD51laFFjB5cVDjDSLp/fe6OCGX5K7JyxPvwYMe8MeWv74pNEBGBlRAzsHN+gJhIRXK/d4relSye69hE45kPR3znLcF12AHnFbx9h/QCnV/sNvjp824u7e29H1YXC8dPSZHqaChiKFpAqRMs5Qab+4oaT4c=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1739391459; c=relaxed/simple;
	bh=5UoI9R/vnHMC/e5ewh7O59UF8eSXn33Jwv18AA32wMo=;
	h=From:To:In-Reply-To:References:Subject:Message-Id:Date:
	 MIME-Version:Content-Type; b=bS3OwJYd62eqJcdFCH3Nf54PAS9Sx1iArN99g2uVznokeSwQqpadetLjQv5i9V+Hye1RZ0EMmeoKc5jvlhT06HYNMvV3BSaOG9jtThBf86x5GsBsqsW1y6EfqW5NysVR/QUvbeUU/CiW/1OPV//GCH2HCgoBXr7twy8sIsGboqM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=yXUfPL4W; arc=none smtp.client-ip=209.85.221.49
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wr1-f49.google.com with SMTP id ffacd0b85a97d-38dc9fc48fdso14379f8f.2
        for <devicetree@vger.kernel.org>; Wed, 12 Feb 2025 12:17:37 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1739391456; x=1739996256; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:date:message-id:subject
         :references:in-reply-to:to:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=AbCZq/KdfJ+rz1uUl+K724BtkWwa151wsTK5+/vxmtI=;
        b=yXUfPL4WImdCKVd1sHNMY2dY3MDlgeG+hEfGI+q9GW3hrf32Yn6xSt+cqF+sfRPtOu
         xvqS+9SQB8vfSuMfmAsbdJvcLq3zHsZISLpad2WnxCzvjeVQhM3CoJJW+SOK+YrDkLBE
         yCa0xGDQe6OJRDtI8DKjPBZuwQsE319eG+a3Tn674BIYMyx/J/Cexsx8K56p4bixe8Ck
         H7aPoWgBkKtrFUZ3lk9fvHNck0lV84R6RCqmicjwLGXDrWIV7eu+EokWy7IqhYVrHOY+
         HqCk+EZ6V/wEGaHsX5wJWIoVCNK+UxCLfwQuoFowGkAL26anvLaR7CeyVZUkZhtR9lY7
         wXqA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1739391456; x=1739996256;
        h=content-transfer-encoding:mime-version:date:message-id:subject
         :references:in-reply-to:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=AbCZq/KdfJ+rz1uUl+K724BtkWwa151wsTK5+/vxmtI=;
        b=GxO7tDlBeF5316vDLQOz6zffiSdEzThpBec0zJIoMHrgZR8R0Aeq6CULLoM3SBr2Y6
         zLkYBeWEJwrPzYtMR3qnjMUxzA0zrt8mvUtQIRT7ewlPWtBoZiutTuENj3V91lhk8hSm
         BNo36A2y/DjX6y6c8KlUU1QyZMTtv6rPCeq4aBJIStE775+bFcB1K/vnJf4IEGPj1Wki
         bxio9YtUkpDmmJJtXGtdn+L4UhSp5JL3JuwEL0NL43cHN+YfjnQEKXOS9Xb/5VIaWY1q
         T4X0QqH+OGg4MYvQILK7Mmbh39vjVETzVLg1NuFpYJg/XFf9cigMfYUdNhOpBtJ7wbcX
         Uqrg==
X-Forwarded-Encrypted: i=1; AJvYcCXmrnnLFox7klb6c+KTJ8UJB4SebxJq3A0hYIyrWUOQBpyx/R5ZriFzOsGGTo32i2mM0D8dG1Kk8xa3@vger.kernel.org
X-Gm-Message-State: AOJu0YzAxwadXcvxzLEwd3/t6TsiT/TvzM3eW//IWh7wEPc5zRCPPCDH
	DpruGhZVKHVYs2VYV5Nw7I4UypQJ7Nt2Mk/VDqgm6uJiyS/D2IAYNhpsIF4neJk=
X-Gm-Gg: ASbGncsoW03mcbz9r7/VGNP3km0Ai4+RjVThTYyNsTuRErxdfMu9sO+HyRTUY7WR8VN
	IOpLL3DYikKHaw2Bp+kdjkrxOYj5ytaNbxcAgufd+2vY5Eka2OSEw6IVDWUEPTHunygfsbdt3YB
	fuwxDp1rSr9y2avaHG/TNsZQV0fCFPvLh8LY1wNlXPzn8FYPm23rS6mR0RjoZBAef6TmRVGdpqV
	4g22N73GyBuF8ngC+XwQactVMZRGm7WX/hsv68EnUqfc788aAD/i1X+LFfgqrG+ikTe7GPv3o/0
	nlFFvz23wyhFNto5pVELOcggtG2wTKE=
X-Google-Smtp-Source: AGHT+IHEzgbSwZhcHl5Unf6X40IETyxliC9eFPUo1deP0nfYqwIuq7PnG2+W9zZlMsgMg2uyJ/GJjg==
X-Received: by 2002:a05:6000:4184:b0:38d:eb4b:f9aa with SMTP id ffacd0b85a97d-38deb4bfccemr1276223f8f.5.1739391455757;
        Wed, 12 Feb 2025 12:17:35 -0800 (PST)
Received: from [127.0.1.1] ([178.197.218.144])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-38e6ccc8c1dsm2386845f8f.101.2025.02.12.12.17.34
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 12 Feb 2025 12:17:35 -0800 (PST)
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
To: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Alim Akhtar <alim.akhtar@samsung.com>, 
 devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
 linux-samsung-soc@vger.kernel.org, linux-kernel@vger.kernel.org, 
 Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20241222145257.31451-1-krzysztof.kozlowski@linaro.org>
References: <20241222145257.31451-1-krzysztof.kozlowski@linaro.org>
Subject: Re: [PATCH] arm64: dts: exynos8895: Rename PMU nodes to fixup
 sorting
Message-Id: <173939145421.15132.11778260219053817821.b4-ty@linaro.org>
Date: Wed, 12 Feb 2025 21:17:34 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.14.2


On Sun, 22 Dec 2024 15:52:57 +0100, Krzysztof Kozlowski wrote:
> Nodes should be sorted by name but it is also nice to have same class of
> devices together, so rename both PMU nodes (A53 and M2) to use "pmu"
> prefix, instead of suffix.
> 
> 

Applied, thanks!

[1/1] arm64: dts: exynos8895: Rename PMU nodes to fixup sorting
      https://git.kernel.org/krzk/linux/c/ee24a95b891a215b5fbd2f6814754301070653c0

Best regards,
-- 
Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>


