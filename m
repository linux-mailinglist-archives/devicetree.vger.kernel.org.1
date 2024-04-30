Return-Path: <devicetree+bounces-64122-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 661AB8B800D
	for <lists+devicetree@lfdr.de>; Tue, 30 Apr 2024 20:48:05 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 27DB7280BED
	for <lists+devicetree@lfdr.de>; Tue, 30 Apr 2024 18:48:04 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 815A1190679;
	Tue, 30 Apr 2024 18:47:55 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="OIPhQ9br"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ed1-f43.google.com (mail-ed1-f43.google.com [209.85.208.43])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D5D6117F38A
	for <devicetree@vger.kernel.org>; Tue, 30 Apr 2024 18:47:52 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.43
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1714502875; cv=none; b=DXusvaoVgOhWpmxF/U1B72j4GRsSjKbFdbcFH6CjfoZf+QsAAHzoIl7E56MPFRoA96xuiPFXalbl8A+c9TJhnhMoIFu7UphXMvUDjaBKR7J8w3Vlr8rkkcdJr+cOSinVAPm85jeSo3jZz0Swl1cuReloLw+jVOFhpOsHx8xHwjM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1714502875; c=relaxed/simple;
	bh=kGD5LDeSbcCCWAZ6A/xTsiTIRSiUSuZbqr6vAjxd3Cw=;
	h=From:To:Cc:In-Reply-To:References:Subject:Message-Id:Date:
	 MIME-Version:Content-Type; b=iXbplXgmhNUDDCOR8NaOvYWuLDXrPTsZKvKhNAUmKookjR2PH7qP2C/QTFlVbyLuBJAA2tLZ1jlqRbk/B31RNUwyu+Z5wVp6PDgGmoQWLvheg+Sf0yfOpUUb2lZ4JVzSvDu+KUa/Dk4u/m0/LjN6dLUCctEzMsi7oT9mMiKPv64=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=OIPhQ9br; arc=none smtp.client-ip=209.85.208.43
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-ed1-f43.google.com with SMTP id 4fb4d7f45d1cf-56e477db7fbso10480552a12.3
        for <devicetree@vger.kernel.org>; Tue, 30 Apr 2024 11:47:52 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1714502871; x=1715107671; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:date:message-id:subject
         :references:in-reply-to:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=maRahzj8h5WVnvC+mJW92etfXWS9KKobW2gRJpAJKic=;
        b=OIPhQ9brVvcrUCrjPLZwRiUAcc//4HY18rBPHNyAB/zeZvdewEWQpWlU3H+PkLi8Bh
         1iOc+su9uPMdSyhi5IxzKaBD6m8oIRUFZ1zopP2AwOpCnGGkhxUdEVZr7TJcuH2kASUW
         I6m2KwyN/9WNjrqnDSfXP5YcPxdqi6CIw9UkEUXAi3LROu9FoSP97rL4V1u4RvaE6wkw
         1/KlfMHmR69+Xvafn/jIaBX6cz0ZaVWV3cTIHGPDCEnyenZSdhoR9YRb2bgi8q2jEbNB
         B4J2v2iEPdsCmEHtSlD5i2BjuJWVaSNL4kOuZJwhAO6MJ93zRyJ+zmealJEEI4QVHJeK
         UpQA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1714502871; x=1715107671;
        h=content-transfer-encoding:mime-version:date:message-id:subject
         :references:in-reply-to:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=maRahzj8h5WVnvC+mJW92etfXWS9KKobW2gRJpAJKic=;
        b=j5V0sa/jw3Io4R7ffzw2EpNjBJSsUPelvc13pb9xErVwZW8vMnp9dTIii2LiX7USm6
         A7FwqgjPP0MadEj3euuPs/e37rh6tRF17w/G1qosMHzZrJ58oIkIzw4IHe4ybdlgKRyz
         e3044VHPPiiQFZdOrS7Ugwwzm+qJceIExmR69RL5qTSmb3v5WBR0rCh4LkfrmJiINR2M
         hHO/NhrCISuiJaE4kgGuc3NHIVdT5rQpEMZsc/HgXKreouwy1p5S867jLjk/R/QRV2mp
         Azs12APC0i1mx/SLxAkB9ZIMj53x4eZxJwG59d/x8Sg6E9tRNa4oUUxiE39fGG2F5w3v
         Sk6Q==
X-Gm-Message-State: AOJu0YyDZuD4A6gJEG5QaG74JAO5ZPyxQwvajMwoEkMtQLv1VkkdzbWa
	g1VS6V62rGKUcgZu/V20VtCeGVK1dic+1OtgDai6L9rzIDSzI3olTvfKlanKR1U=
X-Google-Smtp-Source: AGHT+IGJbfmzfuk/vn40VU5LkNZp8KDxHuOXhqtzXfBuMgXu9HJtS1cNimFP4kK9KcbpUyPCXPodzw==
X-Received: by 2002:a50:99d1:0:b0:572:9f40:514d with SMTP id n17-20020a5099d1000000b005729f40514dmr458430edb.29.1714502871081;
        Tue, 30 Apr 2024 11:47:51 -0700 (PDT)
Received: from [127.0.1.1] ([178.197.223.16])
        by smtp.gmail.com with ESMTPSA id b10-20020aa7dc0a000000b0056fe755f1e6sm14333569edu.91.2024.04.30.11.47.49
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 30 Apr 2024 11:47:50 -0700 (PDT)
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
To: robh@kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org, 
 alim.akhtar@samsung.com, Peter Griffin <peter.griffin@linaro.org>
Cc: devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
 linux-samsung-soc@vger.kernel.org, linux-kernel@vger.kernel.org, 
 tudor.ambarus@linaro.org, andre.draszik@linaro.org, saravanak@google.com, 
 willmcvicker@google.com, kernel-team@android.com
In-Reply-To: <20240430141445.2688499-1-peter.griffin@linaro.org>
References: <20240430141445.2688499-1-peter.griffin@linaro.org>
Subject: Re: [PATCH v5 0/3] Enable UFS on gs101 / Pixel 6 (Oriole)
Message-Id: <171450286905.358014.14131394137410804196.b4-ty@linaro.org>
Date: Tue, 30 Apr 2024 20:47:49 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.13.0


On Tue, 30 Apr 2024 15:14:42 +0100, Peter Griffin wrote:
> This series contains the dts, dtsi that enables UFS on Pixel 6 (Oriole).
> From v3 onwards it has been split into separate series as you requested.
> v5 has been rebased on next-20240430, to avoid the conflicts with Andre's
> USB enablement work that was recently queued.
> 
> Along with the various driver code UFS is now functional, the SKhynix
> HN8T05BZGKX015 can be enumerated, partitions mounted etc.
> 
> [...]

Applied, thanks!

[1/3] arm64: dts: exynos: gs101: Add the hsi2 sysreg node
      https://git.kernel.org/krzk/linux/c/b5f5fe4b317c0fbda725a44d9c92d97930ad68e9
[2/3] arm64: dts: exynos: gs101: Add ufs and ufs-phy dt nodes
      https://git.kernel.org/krzk/linux/c/4c65d7054b4ce8ceb30ba2b8aed90ceff6158d73
[3/3] arm64: dts: exynos: gs101: enable ufs, phy on oriole & define ufs regulator
      https://git.kernel.org/krzk/linux/c/aaafb21e8190cd2bc8cadf3e0f017bc5c11bb109

Best regards,
-- 
Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>


