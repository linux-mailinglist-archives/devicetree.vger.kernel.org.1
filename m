Return-Path: <devicetree+bounces-256312-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id F3596D38AB4
	for <lists+devicetree@lfdr.de>; Sat, 17 Jan 2026 01:27:47 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 1304D30DB49F
	for <lists+devicetree@lfdr.de>; Sat, 17 Jan 2026 00:25:55 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D95721A23B6;
	Sat, 17 Jan 2026 00:25:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="S/ED+WLy"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-dl1-f68.google.com (mail-dl1-f68.google.com [74.125.82.68])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 83FE87E0FF
	for <devicetree@vger.kernel.org>; Sat, 17 Jan 2026 00:25:49 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=74.125.82.68
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768609554; cv=none; b=FyOrUzgktiWmr5Snfpt9IBVrq6RRGwbdFy3FCqN4f+yD0yNVzzq24Ei5rDW8BsIW+nEtyUzDIBv19XjyTiLztRpSd0T1/S2QSXP8G3pV8lqjaQ+AtuLze6+wqq6rWdb8Gk4K+A1fdu7ZI+RV/DC+F/dQsaGUquxL9qKPtzt0P5M=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768609554; c=relaxed/simple;
	bh=1Pihf5lbWkVay8sxliYYrZJf63s7eUo9QUF0VnXRwZg=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version:Content-Type; b=lN9SCe7tl8n+te2/uuGylkF7z25vZsyHvjUUi42lBlx9iRwvC8TLkLVnRYx3mHfe+2e1sosqm35QXNLP5k1R2AkZ8zDgslGqrdNOlCiTkeOhw3Ho0J0/N6qB8XJFM1ARy2a8fjCZYqcc5rkp+VfLaMbMjanaaYZVwYKZQuKKmAc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=S/ED+WLy; arc=none smtp.client-ip=74.125.82.68
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-dl1-f68.google.com with SMTP id a92af1059eb24-121a0bcd376so1789597c88.0
        for <devicetree@vger.kernel.org>; Fri, 16 Jan 2026 16:25:49 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1768609548; x=1769214348; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=uWRJQTsxOUHCUsanLD6DVdXRUIeel0Iya9VReAfc2Qw=;
        b=S/ED+WLyi6Ifea4YMgL6aCaXSr62rPh5qfim40Ish5OTcoOW4qS840IZUQoelgmxP6
         tVKIcr2fYdR3xuBd7FgHDyFW50FPrD75F9i0mJdsOpHyFDeX/HVgYIZZJmoWzMT8wbrH
         oT+kRMLe9vyLXxbUO/moHVSyA12HHJRAPH03H16YkrjshWkKoJWJI7riZVOoAfhgDCVU
         MC5/kmM/xrzbbYorHT9eQP3ARw4/qm1V02T0o0HNBmvpkdAGnIvIJlk+NLZf7DCeDxl2
         XpIttv+8BEelQDtfi67rdir1A/15itJ1I5LUApgojSLBp4sWaIkDrXYFfbLcTw6f3sPV
         Kodg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1768609548; x=1769214348;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=uWRJQTsxOUHCUsanLD6DVdXRUIeel0Iya9VReAfc2Qw=;
        b=iXX4Z7wj0wPhBYuigxaKZ+RGc5+ruIuQyFd+QA6epCWSqrF1lJ4jVtrrsxxc8VZX0d
         c+fFTmxpaGTSIYg+s1o9Zkwb1kigGPTnuq+lTENOMPMz8keeuV+1PsA2mvWp+ihwiM4O
         RkbCijdX4C4IDEnuJaFSv70RrXyq++7AXEddE2dPUZjkAPop7fCGnNBPz8pk/0Nj6cqy
         tu2lwkeSorow9UnnZ2ewrBSatnAN2OrjlV23P644m/dQeluIPWCJDcg/Gnci8hj3cENH
         Xg/tJjSQ0LD/DPJKJ2y79t/Zg0qSTfzEvXfRExI4PtiD7svedeZUAsYkwOPTaECavdg5
         UelQ==
X-Gm-Message-State: AOJu0Yzvwt+EgLhVqerwGId5XULV4ra0pQNfvZfinmkTrpdM4QUiBxtt
	C+OwUEu3KV2xnNunLsy7dfMjfC8ygP3g+dTT8ikqCzZgqptOUwjDr5MF
X-Gm-Gg: AY/fxX5khn8G06C1p0Z8NTyjxP2BXwOdyiKIGWNEqgTZKXkTnSVawFVsZp5/Dh4qzJS
	GpaaIxv5c2armIfIHQOALCfFRAUdOKwlS675PKM7ugp6ALgGusaEmo+QgQV3Tx+OJmZ2fhLU7HM
	bydSKomfO/8hUHC8/zxLrDpy/EfJk/c20TRPvFNRCS5w8m2uQF/U8IGvxqWa6ovixbKYgunt7aj
	ET32+t3Qvr2OBXakny/ZW6UwLQ1N4f18OoJc0LTZ0Rw0Z5CW65pzr9JPfXSQowmZRbbHtO0inRe
	BOIKd7zQlgr0V+7GCDtxINee/9lTplnaF5R0uEh3HIF6ljSdUlkahTWZ0gpAsjTwrfiaqkmtFyp
	WLa3Bn8kCns+DwiCeXXVakpe/0+f/kGmpf7tH/Kp//KznIaVyiGVEzoHNsX5A9VMJIe0typAAGo
	kZYlOpuhg+/LR18ugohaPaBonrhbD619GiiBrhtIdSelsaWHHwxclVMxYQq8je//TnSiksROPsq
	nSOnH4=
X-Received: by 2002:a05:7022:4396:b0:119:e56b:c75c with SMTP id a92af1059eb24-1244a74ca46mr4331442c88.33.1768609548597;
        Fri, 16 Jan 2026 16:25:48 -0800 (PST)
Received: from localhost (p200300e41f0ffa00f22f74fffe1f3a53.dip0.t-ipconnect.de. [2003:e4:1f0f:fa00:f22f:74ff:fe1f:3a53])
        by smtp.gmail.com with ESMTPSA id a92af1059eb24-1244af10c3csm4418791c88.15.2026.01.16.16.25.47
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 16 Jan 2026 16:25:47 -0800 (PST)
From: Thierry Reding <thierry.reding@gmail.com>
To: Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Thierry Reding <thierry.reding@gmail.com>,
	Jonathan Hunter <jonathanh@nvidia.com>,
	Diogo Ivo <diogo.ivo@tecnico.ulisboa.pt>
Cc: devicetree@vger.kernel.org,
	linux-tegra@vger.kernel.org,
	linux-kernel@vger.kernel.org
Subject: Re: [PATCH] arm64: tegra: smaug: Enable DisplayPort via USB-C port
Date: Sat, 17 Jan 2026 01:25:34 +0100
Message-ID: <176860947659.1613073.1005694583898145248.b4-ty@nvidia.com>
X-Mailer: git-send-email 2.52.0
In-Reply-To: <20251226-smaug-typec_dp-v1-1-7eabcd59da4c@tecnico.ulisboa.pt>
References: <20251226-smaug-typec_dp-v1-1-7eabcd59da4c@tecnico.ulisboa.pt>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit

From: Thierry Reding <treding@nvidia.com>


On Fri, 26 Dec 2025 12:17:32 +0000, Diogo Ivo wrote:
> Enable both SOR and DPAUX modules allowing the USB-C port to transmit
> video in DP altmode. Tested on several monitors with USB-C to HDMI
> adapter.
> 
> 

Applied, thanks!

[1/1] arm64: tegra: smaug: Enable DisplayPort via USB-C port
      (no commit info)

Best regards,
-- 
Thierry Reding <treding@nvidia.com>

