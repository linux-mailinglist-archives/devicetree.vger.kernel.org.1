Return-Path: <devicetree+bounces-131068-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 0075A9F1E21
	for <lists+devicetree@lfdr.de>; Sat, 14 Dec 2024 11:50:11 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 73F331888E00
	for <lists+devicetree@lfdr.de>; Sat, 14 Dec 2024 10:50:12 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 166FF18D622;
	Sat, 14 Dec 2024 10:49:58 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="yrBqsm5I"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f45.google.com (mail-wr1-f45.google.com [209.85.221.45])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 530FD17CA17
	for <devicetree@vger.kernel.org>; Sat, 14 Dec 2024 10:49:56 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.45
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1734173398; cv=none; b=G85TUxSZK9ynQPhJV0csK+D0DP8V7fTm/MPtGSaBpGRZwWwViASsecJAYXySsJ7IAzTQTf+Y72He2PTRYZPrSvC6okAzh8fj2sahFq2ellC8iVqyU763T//k3dMNsaIMudm3dChkIaHz0DeEXVhbPwEGNznnwujYMozAly23cd4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1734173398; c=relaxed/simple;
	bh=uHmvStd7TL8wNOeQ/8/7MuJ74LQDGzhKKAwzIGLKMGY=;
	h=From:To:Cc:In-Reply-To:References:Subject:Message-Id:Date:
	 MIME-Version:Content-Type; b=E7Nnh1DK5j+TO76Z0/zbDCNL0BXGtapI74qPks+kxIdAKu7CpUIAc5ukSXAObjhXWMzCn4IgclLYiIWjMcaaSGRLvvnfTm6gEJoiudIf7u7JmuFYEhw3NY4AL1H6x2PhZwACvUtvVyV53oTS0V11ZCBH4MR7oriQwV5OV4u2wpE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=yrBqsm5I; arc=none smtp.client-ip=209.85.221.45
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wr1-f45.google.com with SMTP id ffacd0b85a97d-385e0d47720so241809f8f.0
        for <devicetree@vger.kernel.org>; Sat, 14 Dec 2024 02:49:56 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1734173395; x=1734778195; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:date:message-id:subject
         :references:in-reply-to:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=VV5uB4pW3I7PFM+MdqLT3Z46mt4gLHWB+cSrr/zUkkQ=;
        b=yrBqsm5Icw0+3rHxIjSd9pPUUQlg6+ZJC8o331lmhVD/YGM9ntzNDaJKZQyvfWtRB5
         +OJKoBZDvVjt9v2SPjJP8til3ToFVFvveFsy6cb3uwSvKJ1M1KWSJ6Ndisi1gAhOhslD
         Mbz3UIUbQUV79a+A/KE7rY4fP1ZKIszWdmINyFb3jRYk/qSEe9P9BwOUCPOgwUaXmJPM
         amumeOL+WFY9tLQ55124ilp50r7Ehd7l9dqH4LguARr2e0S+bKskukwWLIpwFhjym8Yw
         ZkcmO/zxIC9MfB3zRYVNXnUNgR+I8Zvi8MppZFirgbasaG28g/U7jr4OiMYVMUoRSxy9
         /hrA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1734173395; x=1734778195;
        h=content-transfer-encoding:mime-version:date:message-id:subject
         :references:in-reply-to:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=VV5uB4pW3I7PFM+MdqLT3Z46mt4gLHWB+cSrr/zUkkQ=;
        b=AUbaHjNxmedPQXBI4rumhyWtA0iV7Q8ptd4MqQpZoPqKFPEIU+/sAzj2FdKSox1I3x
         2GQWvApt15g1cwxez1VRzMBC9x2nUqocvZDwnw9uUdj4a0bhm7WpBuWkvZrgwSUZSPsp
         C+jcYlTYnZRy1cK6HqoCaducqCa2lTzzOO0F4OBbplolrZ6V4KpkJ8EyV6gi7pSVQpAG
         BRBlZAZX4XS4Lh+O/sPxvoz2OUbEDgknl/250qLaQF18DOaBrk/bore/Ll3dErpHkjuV
         oDgEfBe2R/BauN4sAmgmYSI49JgUH12QSse1id3+VygbSdLvde/FFb8CwEXoR8vU5zyi
         eSug==
X-Gm-Message-State: AOJu0YzhIYDOrl2b+c4IudoKjh4AcNUNQjkysZomA7qB904TaqyDCRXr
	mJDVsrt9aDV+HMAlbKuc44pzqfkOgMFG6ceSXUYf2jc+NbGtl46uYehgdM6h5Sw=
X-Gm-Gg: ASbGncuaxJcPHRxsZNby6taKdJwYFVv8vwtznittP2rUrpyFRiF90Zsn75gKl7TtInS
	gGAj1kI495m7Ufp/NWq8FKXpMJwGvuBb3YYsY3b392TBPdWhbCyfS2AZkaVjrE3UmQND6VuNdig
	n6U7B5GRR2LIPxZeS5T9zRDSdUY2DCw3OsXJJGlZ8VNtEjDxfZ6OF/KHFt7V3TLKjUjma7SA4wI
	FTEiTDfcpYGbUa7UbtYldj81ttpOVhTV56xosMswNUzmQNBP2Us1PZFGgEd7cfIQuqMMRQS
X-Google-Smtp-Source: AGHT+IHyTzhFYErYVyT7VJHfprfadGDQxildtN+M2wr4sWYswaUikDqlBN7Bu8mHFXxUDCZdzq8sog==
X-Received: by 2002:a05:6000:400c:b0:385:e355:7ba with SMTP id ffacd0b85a97d-3888e0bfa95mr1693389f8f.12.1734173394680;
        Sat, 14 Dec 2024 02:49:54 -0800 (PST)
Received: from [127.0.1.1] ([178.197.223.165])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-388c8049facsm2256481f8f.79.2024.12.14.02.49.53
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 14 Dec 2024 02:49:53 -0800 (PST)
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
To: devicetree@vger.kernel.org, linux-samsung-soc@vger.kernel.org, 
 krzk+dt@kernel.org, robh@kernel.org, Faraz Ata <faraz.ata@samsung.com>
Cc: linux-arm-kernel@lists.infradead.org, alim.akhtar@samsung.com, 
 rosa.pila@samsung.com
In-Reply-To: <20241212115709.1724-1-faraz.ata@samsung.com>
References: <CGME20241212115815epcas5p29fdba4ddb93d08035f422444cb826ec3@epcas5p2.samsung.com>
 <20241212115709.1724-1-faraz.ata@samsung.com>
Subject: Re: [PATCH v2] arm64: dts: exynosautov920: Add DMA nodes
Message-Id: <173417339330.24605.2885183556743988867.b4-ty@linaro.org>
Date: Sat, 14 Dec 2024 11:49:53 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.14.2


On Thu, 12 Dec 2024 17:27:05 +0530, Faraz Ata wrote:
> ExynosAutov920 SoC has 7 DMA controllers. Two secure DMAC
> (SPDMA0 & SPDMA1) and five non-secure DMAC (PDMA0 to PDMA4).
> Add the required dt nodes for the same.
> 
> 

Applied, thanks!

[1/1] arm64: dts: exynosautov920: Add DMA nodes
      https://git.kernel.org/krzk/linux/c/de7a4e01055b040b303d01d709262b7ce9d818ff

Best regards,
-- 
Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>


