Return-Path: <devicetree+bounces-255019-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id A888AD1EAA0
	for <lists+devicetree@lfdr.de>; Wed, 14 Jan 2026 13:13:06 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id DFFA23052A86
	for <lists+devicetree@lfdr.de>; Wed, 14 Jan 2026 12:11:16 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 56E30396D22;
	Wed, 14 Jan 2026 12:11:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="xBrCOh+p"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f65.google.com (mail-wm1-f65.google.com [209.85.128.65])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B197235BDD9
	for <devicetree@vger.kernel.org>; Wed, 14 Jan 2026 12:11:14 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.65
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768392676; cv=none; b=Vrhog07x9U0/RtUpStA8herHfWwNlmcraR/U7Jol+9hH4b5Qj9/xCfBBiQYnnIayVvMxZ6pPNjtu4V6BakS7v/rtuVkSfvUuTy9X71/KtzkwbCjMrsJkoabnCtdqWsyAYxRFbNAVpfi2KulmJzd2fVr42gggX78wWE94wrkSt58=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768392676; c=relaxed/simple;
	bh=+dLcgwgSVPSlsUsJW5q2wgeHkPsfModCoYH6OgkMPRA=;
	h=From:To:Cc:In-Reply-To:References:Subject:Message-Id:Date:
	 MIME-Version:Content-Type; b=pwo/wcUvcTOUFs4GT4KMxJgelc/nNQa2rPNk5q8mq1sWXS781SxfL7fDTIm0ccrDPtlW5d4sr26ZfLpwXxx7pGQHzwEpi6teAP+PBonBuYQQbXV5Ku4b4vXc3XWbwAMDWDG7+vzLG0txHD8s/ozgOl+YnCOJ1jRIFZJkAA8uWL0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=xBrCOh+p; arc=none smtp.client-ip=209.85.128.65
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wm1-f65.google.com with SMTP id 5b1f17b1804b1-47ee0291921so10830605e9.3
        for <devicetree@vger.kernel.org>; Wed, 14 Jan 2026 04:11:14 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1768392673; x=1768997473; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:date:message-id:subject
         :references:in-reply-to:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=ZV3yspuFeXD2fTCOA+EG8wDsgm3hE+MlvzRhyE8iDHU=;
        b=xBrCOh+pOQH/0xP3M7VJWSf64yUx6y/gSDdx1MQ2z9JyU5rZHid4FkXSHNlJlpNkrr
         DxcN399gRzXcRZ9hP7rDNsLegsEFJb2GGjaY6M6UpXh024iaJQiczMNQfoBQtqO+fOeN
         KHLPaJZQz1QUa1S60c0IoLEoNTn9oLOqIA9zOrCXw3KLoRVGBIROeZdjFKnV7oZRYPgr
         sgDMIPjLZu7X2s5UXm+EfbF4XGDcCPciIXtNsDD+XvUrw04x6Publ1oU9EeJU2ZxrET6
         TvdlrrQznnMRKz+W8BrLFEiBcb8xK0oHoZK7phOOn/szun3Zj3bkeyA3qzF8e9xY/+NE
         HCDw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1768392673; x=1768997473;
        h=content-transfer-encoding:mime-version:date:message-id:subject
         :references:in-reply-to:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=ZV3yspuFeXD2fTCOA+EG8wDsgm3hE+MlvzRhyE8iDHU=;
        b=mM4mAN4Xn/IsiuzytAFV/wjjqQLNHQHKZz+UxjsuoZ9RTbzWwC+xhHW7EzfZuASayw
         2+f28EqIeWryHhiN/8pNFYefICC4OTdGe4Uf8rWTgGDYe4knayawkeDSBBPkykjBkCNG
         HLXx/bCYEPxbjNYIxvDuNaspwzulGxRTok93eX/6hQT1LTAWMMKoeroUn671Luzu6QmW
         /qbNaQFhc/VjnGB3G0Wpi6ULcT73nX7DFBIbZsnuSKvGjBLI1DnUZIAne4IpYQMaqck/
         IjJ6o1rPI2oXq7OkXyCKiFSkplDfqKljrZ4Ypl1Ve6YCO2sdxPxY9P88iauAuFtshUfA
         zUcw==
X-Gm-Message-State: AOJu0YwwrQZeBZgoXMaPYw+a0TIHAvC+cAAyhVwyb1Lso255lglhUltd
	lL3RF6AcWO08VQv8pCmrBqY2V0fJnOK7Fe9nppvFK5xvBWKg/jvYRaoCv308GL/rEhc=
X-Gm-Gg: AY/fxX7+LgloT4lx6V07IpIUrRhfgNLWiVVZcySHsPmjRKmDcslm9uP/DN+eYZyVdsY
	+IHwMQ1NwIhw20Y5L32T3btRf7Q5M9PMiXfsDE88WiX5AGCd/Nl/gLhOJkA6TdpLJE4wgVnPBCK
	atzekYCCyZcOvdR02EwROiEZZwl/vch2dd9mQn1r0w0Db8IEuerOqraUTreP2lxeu6gwMTdPFSz
	fd9bfBIEkdtXjX7YEpITs8a+0G7tpEbdAk9l+LLHOMqN6TeSbqkcVuI5tdg6QqewZFW4fWyLwGD
	dE1YoYp/VmgG4A3OJLvrL90tYJ3OYTQm4EmMq7iUNsuMy0IWQ2xatE/opuZhP6/t8YqqdKEu7Tu
	/qOsvCMyCVMjKtFAn/QSdkly+DR3g9toQ0OtMjZJa767N8x6PlyOHA124jCiNjxU11my+u/NRtj
	waxy+sij3llHBKWBzcZdZ8t1Gt5Uh3vGlJ6/1dgfoWyg==
X-Received: by 2002:a05:600c:4515:b0:45c:4470:271c with SMTP id 5b1f17b1804b1-47ee339455dmr25970885e9.18.1768392672997;
        Wed, 14 Jan 2026 04:11:12 -0800 (PST)
Received: from arrakeen.starnux.net ([2a01:e0a:3d9:2080:8261:5fff:fe11:bdda])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-432bd5fe83bsm50158222f8f.38.2026.01.14.04.11.12
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 14 Jan 2026 04:11:12 -0800 (PST)
From: Neil Armstrong <neil.armstrong@linaro.org>
To: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Kevin Hilman <khilman@baylibre.com>, 
 Martin Blumenstingl <martin.blumenstingl@googlemail.com>, 
 Jerome Brunet <jbrunet@baylibre.com>
Cc: devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
 linux-amlogic@lists.infradead.org, linux-kernel@vger.kernel.org
In-Reply-To: <20260114-amlogic-parent-clock-cleanup-v1-1-31078b1e4a2c@baylibre.com>
References: <20260114-amlogic-parent-clock-cleanup-v1-1-31078b1e4a2c@baylibre.com>
Subject: Re: [PATCH] arm64: dts: amlogic: drop useless
 assigned-clock-parents
Message-Id: <176839267224.2837299.13824498685588807202.b4-ty@linaro.org>
Date: Wed, 14 Jan 2026 13:11:12 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.14.3

Hi,

On Wed, 14 Jan 2026 11:57:40 +0100, Jerome Brunet wrote:
> Amlogic sound card assigned-clock-parents only have <0> and are useless.
> Remove them.
> 
> 

Thanks, Applied to https://git.kernel.org/pub/scm/linux/kernel/git/amlogic/linux.git (v6.20/arm64-dt)

[1/1] arm64: dts: amlogic: drop useless assigned-clock-parents
      https://git.kernel.org/amlogic/c/126058f8d80aa7176bb230ca03ec939a70435177

These changes has been applied on the intermediate git tree [1].

The v6.20/arm64-dt branch will then be sent via a formal Pull Request to the Linux SoC maintainers
for inclusion in their intermediate git branches in order to be sent to Linus during
the next merge window, or sooner if it's a set of fixes.

In the cases of fixes, those will be merged in the current release candidate
kernel and as soon they appear on the Linux master branch they will be
backported to the previous Stable and Long-Stable kernels [2].

The intermediate git branches are merged daily in the linux-next tree [3],
people are encouraged testing these pre-release kernels and report issues on the
relevant mailing-lists.

If problems are discovered on those changes, please submit a signed-off-by revert
patch followed by a corrective changeset.

[1] https://git.kernel.org/pub/scm/linux/kernel/git/amlogic/linux.git
[2] https://git.kernel.org/pub/scm/linux/kernel/git/stable/linux.git
[3] https://git.kernel.org/pub/scm/linux/kernel/git/next/linux-next.git

-- 
Neil


