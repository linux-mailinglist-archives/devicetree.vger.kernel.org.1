Return-Path: <devicetree+bounces-152596-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id E74DCA498FB
	for <lists+devicetree@lfdr.de>; Fri, 28 Feb 2025 13:16:17 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 9A559174143
	for <lists+devicetree@lfdr.de>; Fri, 28 Feb 2025 12:15:35 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 08D1526B2B1;
	Fri, 28 Feb 2025 12:15:26 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="QuuHrE+m"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-yw1-f178.google.com (mail-yw1-f178.google.com [209.85.128.178])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3D9A526B098
	for <devicetree@vger.kernel.org>; Fri, 28 Feb 2025 12:15:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.178
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1740744925; cv=none; b=Z3Pe+G2oVogRofDWVvIY7gZpXuxmBiVq6ncHn9kof0GKugBYsVTtMyKqrd2kOHhxGmJxhjakHEkmGCFH6QUaXMaJkDIZebMThH/3W4ZS+HvL11aZpwMkGlMmXBAQq9WSo8TlYqUKGNSu2BPZbII/KcXSYOp9v8gH5z0KKgATPq4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1740744925; c=relaxed/simple;
	bh=jUNIrARAbtbTs0tlrP0Tn9FLBSgxnIB4tXATcm2ewZk=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=YEknVjzaHZkbyEpvRorP8OH3hphOZ1vwEEAHLGEGshTdvmCKAEKqQbq41J5uT7myCHLw5rHPcpv8gT/t1/N0kPIMsGNKrn5zrhzDHZZm7ikqfn5M3iU0VW09p4VkNT+HMkzDzcml9bxemwOZUaSy3ztP4xawjW1KO1aa4mes7c0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=QuuHrE+m; arc=none smtp.client-ip=209.85.128.178
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-yw1-f178.google.com with SMTP id 00721157ae682-6f4434b5305so18091947b3.3
        for <devicetree@vger.kernel.org>; Fri, 28 Feb 2025 04:15:23 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1740744923; x=1741349723; darn=vger.kernel.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=jUNIrARAbtbTs0tlrP0Tn9FLBSgxnIB4tXATcm2ewZk=;
        b=QuuHrE+mpQ/NoTWgX7ZAEzezNs+vN6gNvLOcqVVEKYYrdNQeOUjuZuSQCzUDbUIqjp
         UzSlYXbZDIOLJpD/E1Kx4svNG2JWP5HpevbzWm1fSjVUAgrA4e2U9qJDjwYxpfB8hV1V
         tcJagQAH30HXsaIKpyw+4jFu2PNDuQ7rfnGHABCx2B+7EYFTA45H/mA3Q9fDnAtDX0E7
         232ru8SSxbyvw3/Jccu8oMpTT8Q+iQe2dM9jSXthoDyUFqJc+vqlGrN+av38Tnbn8Kfx
         iBFyZ1zSnVHP5T4LXbci5VDQzRDmlx8bxqebZAWbLyfwAn9+sSqrkJ3q6raUiES6w7Y+
         Ukzw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1740744923; x=1741349723;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=jUNIrARAbtbTs0tlrP0Tn9FLBSgxnIB4tXATcm2ewZk=;
        b=JX9H13UOJeZsw7POMUbplze/Zf/VeP/pXkjL08H6jtWBbICEEvohzC3PIkulcInNhW
         Ai3FAIVQ3vgln3/bdIbbCt5nZOkp2ffxnb41cGcyLW4/nl0XfDYh/03FW558ZOgh4J1Q
         /65Jb+UgmXz4RfpS4yDux11G3U6X8CVtSMDKUOa+mrrXaXmEIWYyT1WyH6A8npWNgfGo
         n5EPNXtaAv/ZHrcuCl6h+G7Epgt+rpiHmDDvkc7q68d52FymYEbNjqwpoY6wYe6z91Mv
         OTgx6HEx/ulXT2CRjKXcRI3a2HgjLw7o20nMkmhfePMUYUZUW65g7qdDhnpg+n0Owbsg
         y+xg==
X-Forwarded-Encrypted: i=1; AJvYcCXXtaxEP4l5OJ+6qeMeYG6KBFhGVeJ2kAdFds6JvPcrJnYI6vE1euY7m6weqlGCEVxtYiqsKfLx9UTN@vger.kernel.org
X-Gm-Message-State: AOJu0YwiySUVX2vIXx37Jv6HFbib5oW0RVhSrIrOAOJRB6a9kqkLQLvX
	rV/JJI9WXeAOo07zPpQ5XMKKswaTVqbor7/4vxlOnNwrMAgsghm7sLW6KtnEhE8vfYaTO/AweWv
	HWfo6FSPGPxrFLHfaAHhDNsRkfxYFKop3HOdXow==
X-Gm-Gg: ASbGncsbK8D0eZt4FMmaTHTKkiyCOXlBcsR1gwOq72NRz45ep32IVi+LHG7eJciO8Bm
	CPOqwAQghFn1BVXGoNXxCtDBCrPAnmW64GIZinYWid4toIxFgZPUv+ODWO+2V5RNnPG0QYc+s8e
	ggSMHA8npL
X-Google-Smtp-Source: AGHT+IHT7obeRQVC5jfTWOVMXwZbo8MvDy1vz1fLAzz3uGYU/jwe30ZeBEtELX2ss/DGYLXh7XY0o+RqytL8ARTZDYA=
X-Received: by 2002:a05:690c:4a0e:b0:6fb:1c5a:80fc with SMTP id
 00721157ae682-6fd4a0c405amr41901307b3.26.1740744923010; Fri, 28 Feb 2025
 04:15:23 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20250220-rk3588-gpu-pwr-domain-regulator-v6-0-a4f9c24e5b81@kernel.org>
In-Reply-To: <20250220-rk3588-gpu-pwr-domain-regulator-v6-0-a4f9c24e5b81@kernel.org>
From: Ulf Hansson <ulf.hansson@linaro.org>
Date: Fri, 28 Feb 2025 13:14:47 +0100
X-Gm-Features: AQ5f1JrDK1Y4U3HrAxZBGp7DwLtxTGI5xNt7avBzml29SRZW6KdhhTSUIQ_s8IE
Message-ID: <CAPDyKFpQaX8nUt_OQ-hwB+zYqWVCLKci2BmhrBOYUTcrkOMv9g@mail.gmail.com>
Subject: Re: [PATCH v6 0/8] Fix RK3588 power domain problems
To: Sebastian Reichel <sebastian.reichel@collabora.com>
Cc: Mark Brown <broonie@kernel.org>, Heiko Stuebner <heiko@sntech.de>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Liam Girdwood <lgirdwood@gmail.com>, Elaine Zhang <zhangqing@rock-chips.com>, 
	=?UTF-8?Q?Adri=C3=A1n_Mart=C3=ADnez_Larumbe?= <adrian.larumbe@collabora.com>, 
	Boris Brezillon <boris.brezillon@collabora.com>, Peter Geis <pgwipeout@gmail.com>, 
	Tomeu Vizoso <tomeu@tomeuvizoso.net>, Vignesh Raman <vignesh.raman@collabora.com>, 
	linux-kernel@vger.kernel.org, linux-pm@vger.kernel.org, 
	linux-rockchip@lists.infradead.org, devicetree@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"

On Thu, 20 Feb 2025 at 19:58, Sebastian Reichel
<sebastian.reichel@collabora.com> wrote:
>
> Hi,
>
> I got a report, that the Linux kernel crashes on Rock 5B when the panthor
> driver is loaded late after booting. The crash starts with the following
> shortened error print:
>
> rockchip-pm-domain fd8d8000.power-management:power-controller: failed to set domain 'gpu', val=0
> rockchip-pm-domain fd8d8000.power-management:power-controller: failed to get ack on domain 'gpu', val=0xa9fff
> SError Interrupt on CPU4, code 0x00000000be000411 -- SError
>
> This series first does some cleanups in the Rockchip power domain
> driver and changes the driver, so that it no longer tries to continue
> when it fails to enable a domain. This gets rid of the SError interrupt
> and long backtraces. But the kernel still hangs when it fails to enable
> a power domain. I have not done further analysis to check if that can
> be avoided.
>
> Last but not least this provides a fix for the GPU power domain failing
> to get enabled - after some testing from my side it seems to require the
> GPU voltage supply to be enabled.
>
> This introduces devm_of_regulator_get without the _optional suffix, since
> that is more sensible for the Rockchip usecase. Longer explanation can be
> seen in patch 6, which adds the handling to the Rockchip driver. My merge
> suggestion would be that Mark provides an immutable branch to Ulf.
>
> The last patch, which updates the RK3588 board files should cover all RK3588
> boards that are currently in Heiko's for-next branch. Any board missing the
> update will behave as before, so it is perfectly fine not to update all DT
> files at once (in case I missed any).
>
> This is based on Heiko's for-next branch. Also it's probably worth mentioning,
> that mesa CI is carrying this patchset for quite some time now.

[...]

I have pulled patch 1 from Mark's tree and applied patch 2 -> patch 7 for next.

Note that, patch6 (the DT patch) is also available on the immutable dt branch.

Thanks and kind regards
Uffe

