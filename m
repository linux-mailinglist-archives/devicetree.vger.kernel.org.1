Return-Path: <devicetree+bounces-40045-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id B7F7C84F0C2
	for <lists+devicetree@lfdr.de>; Fri,  9 Feb 2024 08:29:43 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 6B6CB1F261FD
	for <lists+devicetree@lfdr.de>; Fri,  9 Feb 2024 07:29:43 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 950F8657D6;
	Fri,  9 Feb 2024 07:29:36 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="pYskFGxJ"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f47.google.com (mail-wr1-f47.google.com [209.85.221.47])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3D32D57312
	for <devicetree@vger.kernel.org>; Fri,  9 Feb 2024 07:29:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.47
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1707463776; cv=none; b=l0HF9HicGZr9lArwqZG5vTgfWie2+z+3UdQA/ZlnTSfhYBBAFGOZS0vaiwccHMrSOcNigPAs0+MYOJoFkipzxed7zW5HUuE3MiYNzOpWE97pEFhR1OOqtLr6pCnGuaHQZx82cqwxYuczntl2chb0PNxTdzf6w9i7kd/RcRkz3dU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1707463776; c=relaxed/simple;
	bh=AgbsIvu0jxBk2WSTp2ODk82zoG3G2bVRhIz8ZYaly6s=;
	h=From:To:In-Reply-To:References:Subject:Message-Id:Date:
	 MIME-Version:Content-Type; b=cuYDEbQyd6U334/8jJnSo/sDxcM3+VwhEp0ZvJExRC+V2iLT6hVTowhd6tAWGxhVtxdPkZZoa1acPYTtwq01ZhiiB+gjOSc+Ayf8Jl90TY5RtlW2MLhC2/I/FXuMwXHJfNMHIsCreIp8a29CMMzT5paAwYKZI2x7fWIvTgXNAcY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=pYskFGxJ; arc=none smtp.client-ip=209.85.221.47
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wr1-f47.google.com with SMTP id ffacd0b85a97d-33b671ed002so58091f8f.2
        for <devicetree@vger.kernel.org>; Thu, 08 Feb 2024 23:29:33 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1707463772; x=1708068572; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:date:message-id:subject
         :references:in-reply-to:to:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=2o+G27tuHSzFtV1VEFRsDJZj27f9BKeouixsOON0/Pw=;
        b=pYskFGxJlu5Q3nsJovmMyZbOraB8ugWibJPCP+YC9F3Z2j0e0EaNau9lAy3XP28czg
         ukt0S46It75D6bJGuz3rJlE2Hql/OoWGAEe4wQq0uRL8LbO50UBxPe1fhBPV9gUH8G3A
         FJHtW11W1lkK4HWMwGG7dybWaz1jG0gR/fgEk6bXgHtCRu6V+OLl9BOhOaL70x79IYFM
         GixjR8t9YGpmjsTD1xchPzp1fqWhWidy2AWBQvBb1O0uDPjDjrZqcv3vTnbmOVG8PS4p
         8JQfPhre2CY7vQtW6YI2xs1YM0SBZ3NEBWn0DfDf6m0DI/X4GZMMtpWSxtmQ8M09Ppe8
         96NQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1707463772; x=1708068572;
        h=content-transfer-encoding:mime-version:date:message-id:subject
         :references:in-reply-to:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=2o+G27tuHSzFtV1VEFRsDJZj27f9BKeouixsOON0/Pw=;
        b=p97WTJMFUt7CzE4QYY//15y91u5Og002DS2oYq7xImw2S9E/vCSa4RTPYiHMYN/Wp2
         eCGQbT//yri1g292LV7/EHHtOHaqHtD9hlgAFN4nONlaJeXQTS82C6ddgS/t6kYIvT+C
         aMdJbX6VgHPQUOD0utUI1c4MEnU1uGA0rJ4A3qcHjdwA16FNU4bHJGtAcG0Kg+QfcFQW
         ZEgCQMw9XOAQRGh2rRSbLQJkBhyDSte8A7r+oO2+PYGdJGIgIGNEBNfaFyShcclhMArO
         kozw58GO7/8+ND7vHnN4h65YoJ7O5S6RWeJyOWb5dU/N+mCIopf0PGCHzN5/fHap7P/X
         6K0g==
X-Gm-Message-State: AOJu0YypEEqpzFAJznGyNDGklFt2zHM+rrel5efbcS4a/oJDyOx5eW5i
	6tfcebnXYHOXGr8QGxF9liLzqXEHULvI+VYPFsEp4R5QuZNHcw4vwp5hzsJ/Sa4=
X-Google-Smtp-Source: AGHT+IGiPc5nkM2zPWLY107xKsup1vFnqdp30R3I78ncJp8MnFC+VkECVuUw6DhGBKujEcyWHh8z0w==
X-Received: by 2002:a5d:64cd:0:b0:33b:65f9:20ec with SMTP id f13-20020a5d64cd000000b0033b65f920ecmr465290wri.21.1707463772444;
        Thu, 08 Feb 2024 23:29:32 -0800 (PST)
X-Forwarded-Encrypted: i=1; AJvYcCW/4sNXwo6KngFY+PAeu0oNwTHReu0pXi2BI6qhTwQTKj2hhZbDAjijWlYCn399BtQ3uFGZ1DPf8RF/C3YgEhvfAF0Zf8ddyWINZeblrODAiNZqSrqpjXC3yWjyMeLBbNUoouNKiDhIwHXefRiIKjgj4ZWMfDlunmo1CyQn9neFkCMLHrAgIogxKo6fVGkKjXWDYmmJjuMU/SKmo4TaO46p/XhYMtScpOrgIumaty1zqCra8BCZzWVmrGuh+OcNbvZDAH8isVM+oprB0qnLBK7VmJBiA90VcUdzaCTAsJXnUXJaZVCoeHdJzfeb12ujpLxItC8vq8CLrzkIJ7xAypKiyKsAayHxf8tpjLcWvE/e7F1nI2hnAZ0uwJ2fmLIACtrliCIE0vu3wrEqJ5EAu5Eb2qnL
Received: from [127.0.1.1] ([178.197.222.62])
        by smtp.gmail.com with ESMTPSA id c5-20020adfef45000000b0033b4719eb6esm1084936wrp.27.2024.02.08.23.29.31
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 08 Feb 2024 23:29:32 -0800 (PST)
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
To: Peter Griffin <peter.griffin@linaro.org>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, 
 Conor Dooley <conor+dt@kernel.org>, Alim Akhtar <alim.akhtar@samsung.com>, 
 linux-arm-kernel@lists.infradead.org, linux-samsung-soc@vger.kernel.org, 
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
 Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20240208105243.128875-1-krzysztof.kozlowski@linaro.org>
References: <20240208105243.128875-1-krzysztof.kozlowski@linaro.org>
Subject: Re: [PATCH] arm64: dts: exynos: gs101: minor whitespace cleanup
Message-Id: <170746377133.4997.4404186295778440756.b4-ty@linaro.org>
Date: Fri, 09 Feb 2024 08:29:31 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.12.4


On Thu, 08 Feb 2024 11:52:43 +0100, Krzysztof Kozlowski wrote:
> The DTS code coding style expects exactly one space before '{' and
> around '=' characters.
> 
> 

Applied, thanks!

[1/1] arm64: dts: exynos: gs101: minor whitespace cleanup
      https://git.kernel.org/krzk/linux/c/28fafd554d233ef2344ee4a8709175b69bc93787

Best regards,
-- 
Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>


