Return-Path: <devicetree+bounces-235065-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 5B417C34380
	for <lists+devicetree@lfdr.de>; Wed, 05 Nov 2025 08:26:33 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 39CF8464540
	for <lists+devicetree@lfdr.de>; Wed,  5 Nov 2025 07:26:06 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C4B152D77E3;
	Wed,  5 Nov 2025 07:25:31 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="KkF6f+vx"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ej1-f51.google.com (mail-ej1-f51.google.com [209.85.218.51])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F17E72D5C8E
	for <devicetree@vger.kernel.org>; Wed,  5 Nov 2025 07:25:29 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.218.51
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762327531; cv=none; b=Av/ulxomZhVT6/gQ5upmY7i34JhdsTWzjvi9lWBrr8BT7laPLcjC03Lk+7IfMZj4vWLA+QMEo76Cvs8q7Q7ctyt9FSNozianXauwkpthXHtevydcPzcQujlDI4vOJ2kcPUr7V1r4LNdAuQN5BQmhA6MXVbWkW1sDodpZTzN0G34=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762327531; c=relaxed/simple;
	bh=MtDMcwiPMAuijfhsyZaI92s4cW9X8rbO7d13jBc597M=;
	h=From:To:Cc:In-Reply-To:References:Subject:Message-Id:Date:
	 MIME-Version:Content-Type; b=q443W3/Ep/farSKafg97e7A/QR6crnp+l9qOHTd1kOVm5m4dEhagChDlTBeWWFjRBisu83IaTE26ikPDgBh7tVErIB54erUUrbm2tjcqfaVUHMzjF3tPJUBHWYo++gEQcjCDXWkofFsjNnNA5AsZ9SlYb0GT2dn+gDgx4Vt070U=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=KkF6f+vx; arc=none smtp.client-ip=209.85.218.51
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-ej1-f51.google.com with SMTP id a640c23a62f3a-b70b40e0321so30396066b.1
        for <devicetree@vger.kernel.org>; Tue, 04 Nov 2025 23:25:29 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1762327528; x=1762932328; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:date:message-id:subject
         :references:in-reply-to:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=rY8qDK38lNCOQgDsv3kjC81fEngfx/ZqaQmDfuHd82E=;
        b=KkF6f+vx2HTVZ7f3a0kWOyRh9PxaETXu+TZA327encs4ih6xXpbfqxMHoYcXUxZnMu
         n/R7CV98PmpzkMMzTk9WWPM1PJ31rkuWcoVw+LVBRTIodmIaZP3xJUApxGkMOpMHMKCx
         1stdfqFXrvGhVSIKeKF6JIla6hWSsi+Oy7i/hZ2MdH9D+eZ6Y3eJqIo5/uyK/JBrqQt4
         N44aAsM1PTCL8MBIIqFoMwMiDuMFOvoOiGNtUykzeSRO8Jc6d5OmWcZEnCDk1aYjyNll
         UCU7mrDoxYJBeAUSEXeltzOxYmkkcmxfK9qt57QapaswdQqqhvthb5Ww6euUDGfPjjC8
         bYvw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1762327528; x=1762932328;
        h=content-transfer-encoding:mime-version:date:message-id:subject
         :references:in-reply-to:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=rY8qDK38lNCOQgDsv3kjC81fEngfx/ZqaQmDfuHd82E=;
        b=K7dqTEnIR44p4so++/kAFlpRja4LNBSg1jNJjfyRnIRyenqSJ6ATW3SDl6H3Vb3kqW
         /AGqwYpQjEIlNfYB7CHGb50Q9q4Rduodv5sSkEHXmVdrCmO1VbyyRPEobfTUoqie3TnF
         I19AcQ9WAld4C1KPMYp3Nk9WhLco9YS/NVD5JuGQzBluMZLkNMlz5h42ZRlce4sDjWSU
         ZVlDqSjEfRIeZC3C5Wg3tNHtyiBGRJPSH74+IyeQf8KJkPX0iFo2E75Hd9hQLILeaFVV
         Yz3zxMRCnftv6fpBWpLa+U6y33a2XHM51q1q7UZTVXffyVDTusXNerzFZYukMN4kbNTm
         c80g==
X-Forwarded-Encrypted: i=1; AJvYcCXD7NSdmbKtL/6tUxU+8gO7Qy4BhQ4VUVsiYaK7MQi5MTzAy7hHp0zPP574oFvugI3I1ChbVVXB1uBZ@vger.kernel.org
X-Gm-Message-State: AOJu0Yz78IVT1Hr8X+YT7a0rH6tJ4L/H7ko3Ic78TQrj/ic/FUluTvuQ
	FAdhWo79nSMQo75Ud7FRwNWfD1YecZZEg2iVXMkRTOlU6YydlY2stTAyWpBKQ59do18=
X-Gm-Gg: ASbGnctr0xNeHjFfITY53v1Npus8993313ffOzVsTCrO07HTHXWb0anjjO+xWvSnm86
	XSKLO5x2LmfKgqYTXFCCS6XVuaVbnPdUcyNOvOHwNSz9NoiWg3kTtiC51qb932Otgb5E+YP9TmA
	Z5rD540t7bA6RkH+o5FNLgevJD1CWn6GDf1EFpJBiDPb3jPVl0F3CjUIKfC/9iKwMeAu+88ApnW
	9CCncmARXVcIgjhkoEGvkPTtwPlKYfm8Oyp4vNvxgTZRZJJtlzacdRttU7HmhnkIT1O5EC8/8YT
	giXGsu9d8lZ2v6G1v47aB0MQKiGtBy7ZnzB2EvGcpILsKGUF0jLT7vktRUL1v1uYq/dmx3zbfr/
	fRH31euKqceLDC5CdhRyYrovzTAxJGAtoAIxm5bC8uf2mhXB5sCul7A5BQnR22FT/xJSqU4S5AI
	lAG0d3FQ4Nd2z7bCEd
X-Google-Smtp-Source: AGHT+IFDmGcn05NWaAreeMUhIBohR2NC9khjvwR0aTsIxLFrJ5oJ/5mfubvbfEmAQ7WyS1CMvUR+Bw==
X-Received: by 2002:a17:907:9628:b0:b72:7761:1049 with SMTP id a640c23a62f3a-b72776157b0mr13498866b.8.1762327527943;
        Tue, 04 Nov 2025 23:25:27 -0800 (PST)
Received: from [127.0.1.1] ([178.197.219.123])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-b723d6f8c5bsm411534866b.20.2025.11.04.23.25.26
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 04 Nov 2025 23:25:27 -0800 (PST)
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
To: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Alim Akhtar <alim.akhtar@samsung.com>, 
 Kaustabh Chakraborty <kauschluss@disroot.org>
Cc: Krzysztof Kozlowski <krzk@kernel.org>, devicetree@vger.kernel.org, 
 linux-arm-kernel@lists.infradead.org, linux-samsung-soc@vger.kernel.org, 
 linux-kernel@vger.kernel.org
In-Reply-To: <20251031-exynos7870-drm-dts-v4-5-c1f77fb16b87@disroot.org>
References: <20251031-exynos7870-drm-dts-v4-0-c1f77fb16b87@disroot.org>
 <20251031-exynos7870-drm-dts-v4-5-c1f77fb16b87@disroot.org>
Subject: Re: (subset) [PATCH v4 5/5] arm64: dts: exynos7870-j6lte: enable
 display panel support
Message-Id: <176232752674.13426.8964418397433880549.b4-ty@linaro.org>
Date: Wed, 05 Nov 2025 08:25:26 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.14.3


On Fri, 31 Oct 2025 00:50:19 +0530, Kaustabh Chakraborty wrote:
> Enable DECON and DSI nodes, and add the compatible display panel and
> appropriate panel timings for this device. Also, remove the
> simple-framebuffer node in favor of the panel.
> 
> This device has a 720x1480 AMOLED Samsung AMS561RA01 panel with
> S6E8AA5X01 controller.
> 
> [...]

Applied, thanks!

[5/5] arm64: dts: exynos7870-j6lte: enable display panel support
      https://git.kernel.org/krzk/linux/c/cad767a9af055c921e29b7b268f99e83c82baab3

Best regards,
-- 
Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>


