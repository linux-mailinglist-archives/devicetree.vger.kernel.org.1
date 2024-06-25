Return-Path: <devicetree+bounces-79730-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 99FBE91689F
	for <lists+devicetree@lfdr.de>; Tue, 25 Jun 2024 15:11:44 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id BA7621C222B3
	for <lists+devicetree@lfdr.de>; Tue, 25 Jun 2024 13:11:43 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 7EF95158D97;
	Tue, 25 Jun 2024 13:11:38 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="ROgwgD6a"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-f52.google.com (mail-lf1-f52.google.com [209.85.167.52])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B66BA156C72
	for <devicetree@vger.kernel.org>; Tue, 25 Jun 2024 13:11:36 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.52
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1719321098; cv=none; b=a8TBsI88QIosjqw1hm7spME0w/irUKSRoPzz0FUncA7O9IYHmHgqVvapfyZ209ESHITBDmjte/fpSsJiCYA2YIlMMcVMM8j7mdsgcm9LbibC1aepkaIv+/XuE3mVlkBlIH0k01YKfJqxFT1YDAADW93QjG2jeZsrXvc5zEqW9RI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1719321098; c=relaxed/simple;
	bh=VbQnEp1ZoteiVkv5PV7u0Hd2hXgmdWHNO9m/YGJqimQ=;
	h=From:To:Cc:In-Reply-To:References:Subject:Message-Id:Date:
	 MIME-Version:Content-Type; b=NBFG+5fAG98jP+ySYWivuSmnXRsQg+fRRoy1Cq6+IHqrel+OEWwemayc2ZsCLYTFX0aTp67y4H8K+D/i7ZqF59te/Az0/QeyvwHNeChZUTr847+vtO36MoAdCJC9MIJqdeA4av3+dXZVemD/wucwmUY1ZsqrZteUOVToBaQnFfI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=ROgwgD6a; arc=none smtp.client-ip=209.85.167.52
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lf1-f52.google.com with SMTP id 2adb3069b0e04-52cdd893e5cso3435431e87.1
        for <devicetree@vger.kernel.org>; Tue, 25 Jun 2024 06:11:36 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1719321095; x=1719925895; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:date:message-id:subject
         :references:in-reply-to:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=IIrvv9/kgtl+q9BfLGhefIkibZLSWIG4PIciMEcuwN0=;
        b=ROgwgD6aRTU9WV3pHixAjh83ZrFcmslMfusqhOK/1tOks7UBsq4PXbpNAc6UOhmGfh
         4X1nNuuuasp4kH8gbu8qQp40RYwNx+Ncp6+tv+jLj7ELq5FTxtD8VFtwZ9CtVRcirfuF
         HI3NN8e87vJxC9XXpc/+4gFF5lrSdzww7ay1SH3Dybi7N5WWw3cs4Cu3wp7sJayaTeTi
         99qBIp7qwi/XXG/0KaMQS6FY+n4Lv1FFwkHSj/hZ1A0oekgFRRJojJ+BBjDJ4/dhIX7U
         V89n60nMxTpqyNpNNW6xxsKWtHwna2VckzUO24YxR6hGg3UAzv/zNeXIG6wlk6Tj4s2y
         w9Gg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1719321095; x=1719925895;
        h=content-transfer-encoding:mime-version:date:message-id:subject
         :references:in-reply-to:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=IIrvv9/kgtl+q9BfLGhefIkibZLSWIG4PIciMEcuwN0=;
        b=mETF+2DXCyM0zfGLj1IauxihQMA2uSTW8ylKJVpxIJMgO9QauaiyMJ6b26X1LpO9oy
         5aEZXIAVtadGr1CvD62dNUFyfNv20KhNhlJcJCLgFdtOrZdlemUN42Rq9sLHgsz4UGoJ
         EkCG5sVz++iI/rFADBlP6DZ6iUkeUN+UUTXgIgaA7QkbP0mJyroeAb8Jj3VsV4HcIYHp
         QCi9Mhh8cB5P5bOOmnBSCgFvXw4IB1bk0yQySTgRP65SdpNSxNPXOVn6a/KxuvKPzk9Q
         azkur1oU5fLzX6PdgSPN1v05wIBbzcnDSOmHslHKTQ/zCttmYAPs0Y3GHWdqryfesl4P
         saYw==
X-Forwarded-Encrypted: i=1; AJvYcCVAfmbb1wQHYV49RaJW070i8DE9gVlOe1D5tDmOzfQJbewxZPqLTvDKrPIAseAbMn8iskKBjMfNrfgxyIm2o7iIXe5wEsgDc4kL6g==
X-Gm-Message-State: AOJu0Ywapxpn7dWRT0I75rM9yChfeKQu+647BiLzfOr9+EsSUoP9FWfX
	86yQ2EDBDmKx5m85T5qjB//QLJMhkLOJExNVbiMuWhS/yNVeJvG/a/fiCVckplsnKxShudtpeJr
	ek8Y=
X-Google-Smtp-Source: AGHT+IHzlTnRQJf2hehRs+SAvaVmz31wHZ2bP1o/glDmxazjuRiH2gBo9PGqG3oH4PdEOEf5iSt3Lg==
X-Received: by 2002:a05:6512:3054:b0:52d:215b:9028 with SMTP id 2adb3069b0e04-52d215b914dmr63320e87.60.1719321093032;
        Tue, 25 Jun 2024 06:11:33 -0700 (PDT)
Received: from arrakeen.starnux.net ([2a01:e0a:982:cbb0:52eb:f6ff:feb3:451a])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-4247d0b62basm216005375e9.8.2024.06.25.06.11.32
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 25 Jun 2024 06:11:32 -0700 (PDT)
From: Neil Armstrong <neil.armstrong@linaro.org>
To: Jerome Brunet <jbrunet@baylibre.com>
Cc: Kevin Hilman <khilman@baylibre.com>, linux-kernel@vger.kernel.org, 
 linux-amlogic@lists.infradead.org, devicetree@vger.kernel.org, 
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>
In-Reply-To: <20240625115443.934763-1-jbrunet@baylibre.com>
References: <20240625115443.934763-1-jbrunet@baylibre.com>
Subject: Re: [PATCH] arm64: dts: amlogic: g12: bump spdif output drive
 strength
Message-Id: <171932109224.875193.12156641833117245401.b4-ty@linaro.org>
Date: Tue, 25 Jun 2024 15:11:32 +0200
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

On Tue, 25 Jun 2024 13:54:41 +0200, Jerome Brunet wrote:
> Spdif output currently uses a 0.5mA drive strength by default.
> While the result depends on how the spdif output is hooked to
> rest of the system, this is a bit weak and signal quality
> may be poor. This was reported on the vim3l for example.
> 
> Increase the drive strength to 3mA, as used for TDM, to be on the
> safe side.
> 
> [...]

Thanks, Applied to https://git.kernel.org/pub/scm/linux/kernel/git/amlogic/linux.git (v6.11/arm64-dt)

[1/1] arm64: dts: amlogic: g12: bump spdif output drive strength
      https://git.kernel.org/amlogic/c/84f6ab5fedf735a447080e2fd286eff9859cd199

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


