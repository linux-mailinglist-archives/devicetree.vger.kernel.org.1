Return-Path: <devicetree+bounces-79729-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 8AA2091689E
	for <lists+devicetree@lfdr.de>; Tue, 25 Jun 2024 15:11:44 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id D5F4BB212A0
	for <lists+devicetree@lfdr.de>; Tue, 25 Jun 2024 13:11:41 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 19E45158D75;
	Tue, 25 Jun 2024 13:11:38 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="WFXMpgCS"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f53.google.com (mail-wm1-f53.google.com [209.85.128.53])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 636B914D45E
	for <devicetree@vger.kernel.org>; Tue, 25 Jun 2024 13:11:36 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.53
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1719321098; cv=none; b=lTSAzdojDG+rnXDKR+TWlkksAP1YfgvQac5LJQFYHZPFAe2y75EnNFpbMTbi3TbsxbsLKX/qAUsRS0qJv1b1g8zImettkVCqDVKEJlje6ipd/CiedN7X4uYbekNr6Okrl2HcfzH2y9q37O/u7we522udqU1q/IoQGEJ/oqcf/q0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1719321098; c=relaxed/simple;
	bh=7l4Uime447ech62qmw3e1+CoLS03F5S+sN0ntrzvEbs=;
	h=From:To:Cc:In-Reply-To:References:Subject:Message-Id:Date:
	 MIME-Version:Content-Type; b=PM7ntCcP1B6dSSlh0ivOP4Glh6ufe9i/DnfndUK13y2SWeRXYagt87L1CIgl4WStALBJ/cmVC3NLsPXpRIyUwOcS2+kBwIzsVHtZ4+0HTnK/gKMJIPx1oiHoIqLwZv26mKklpc/hl70L9uN/f0hQ55uJUUsnw2ss8zC86n+Sa4A=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=WFXMpgCS; arc=none smtp.client-ip=209.85.128.53
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wm1-f53.google.com with SMTP id 5b1f17b1804b1-42179dafd6bso38782145e9.0
        for <devicetree@vger.kernel.org>; Tue, 25 Jun 2024 06:11:36 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1719321095; x=1719925895; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:date:message-id:subject
         :references:in-reply-to:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=EWdwFGLisZTjIZj5f6mqYa4O5wFiRQ0vmR5lx8cA8wI=;
        b=WFXMpgCSWug6jpE7OTEl1G5vwUM1qJSZWKA1ZOE6/Bn3reE1jy9+XeDdJoYMWF4EwJ
         uuF1kZq/pcNopLP4KBFV48mNL1JRmTbaIttpMe5csd3xP0l0HsXxcOqXNsN/ZWto3NsA
         sounLQ1l+kMRIMqmKDMBdAXm71MEzA6QiAUdBDcQeJBKnhUyKgsWqN4f3LzDE+V4BCcP
         bxIkTnKLRn4956I6/iaBPUsdcD2zCF43GlsoNX6SNSamy0NgL6NsxvXcSMNwGuePGwJz
         Z5lkmigS2N+Ap4r7d8za5Psi56rrYFzEIaa4WVxK4WaenbjiQWxyGRy0nggPQvH9p2S4
         xpDA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1719321095; x=1719925895;
        h=content-transfer-encoding:mime-version:date:message-id:subject
         :references:in-reply-to:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=EWdwFGLisZTjIZj5f6mqYa4O5wFiRQ0vmR5lx8cA8wI=;
        b=EATcTb9/Gxsy2Eqq3T6PBuCnZT6iwMNEKEuyXQMqlZwyccrUpR7FcFpmz6IpTFqLdR
         lxbjAcEaXbFWHZckBMUIxNvZumTapolyMUAhyBo17GUrs8Qf0FxpBPUs+SItXE0uyCwa
         NicNkIpG2FXr51UwmW1HJ7RTSfH/R+Cb7KlqOy5kY9zBtm3wr32kgnl7LaPbxA6AM+lP
         uEUFQr19gMqT70spZo+d8t/Fhh1/j96hsteD12lMifCvq3917BnmkSytlYgwBXmQDPQs
         SPDeSzh8PRqIskWMa2lbfRCjjveyqW/BzkHSXG9yuQvJGzpi3KtC7UedPxW8UpSxlLY/
         3UxQ==
X-Forwarded-Encrypted: i=1; AJvYcCXJYsJCQPICma1pmOdqrQgaeA2MXau4W3Sww5IqO2u0eq7y/bVTRfufe4UHuKbicY4dTB1pxu5qiUI/7W9wavAf7b76l/QqcKtqBw==
X-Gm-Message-State: AOJu0Yz333Iv8sdifu/y6aK8zmHmbzt836KajOmyo67w50juC0JVh4Wy
	fScdGg0mi2UBaiAROUVO5rlCZ9TtRVMuVU1lXYkeG2M12g/K4R8T+uCCK6sE5fA=
X-Google-Smtp-Source: AGHT+IHMvZCbIGUwTjA6XAJc7GaXn40HqxJWlWqt76/dBBaT8glx/jIewK3UrGIK55zvb4ODd+CG6A==
X-Received: by 2002:a05:600c:56d6:b0:424:8acb:7d53 with SMTP id 5b1f17b1804b1-4248acb7f20mr72630725e9.1.1719321093913;
        Tue, 25 Jun 2024 06:11:33 -0700 (PDT)
Received: from arrakeen.starnux.net ([2a01:e0a:982:cbb0:52eb:f6ff:feb3:451a])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-4247d0b62basm216005375e9.8.2024.06.25.06.11.33
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 25 Jun 2024 06:11:33 -0700 (PDT)
From: Neil Armstrong <neil.armstrong@linaro.org>
To: Jerome Brunet <jbrunet@baylibre.com>
Cc: Kevin Hilman <khilman@baylibre.com>, linux-kernel@vger.kernel.org, 
 linux-amlogic@lists.infradead.org, devicetree@vger.kernel.org, 
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>
In-Reply-To: <20240625111845.928192-1-jbrunet@baylibre.com>
References: <20240625111845.928192-1-jbrunet@baylibre.com>
Subject: Re: [PATCH] arm64: dts: amlogic: sm1: fix spdif compatibles
Message-Id: <171932109316.875193.8293227942667432366.b4-ty@linaro.org>
Date: Tue, 25 Jun 2024 15:11:33 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.13.0

Hi,

On Tue, 25 Jun 2024 13:18:43 +0200, Jerome Brunet wrote:
> The spdif input and output of g12 and sm1 are compatible but
> sm1 should use the related compatible since it exists.
> 
> 

Thanks, Applied to https://git.kernel.org/pub/scm/linux/kernel/git/amlogic/linux.git (v6.11/arm64-dt)

[1/1] arm64: dts: amlogic: sm1: fix spdif compatibles
      https://git.kernel.org/amlogic/c/b0aba467c329a89e8b325eda0cf60776958353fe

These changes has been applied on the intermediate git tree [1].

The v6.11/arm64-dt branch will then be sent via a formal Pull Request to the Linux SoC maintainers
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


