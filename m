Return-Path: <devicetree+bounces-229355-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 16D7EBF675A
	for <lists+devicetree@lfdr.de>; Tue, 21 Oct 2025 14:32:05 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 818FA3BF1B7
	for <lists+devicetree@lfdr.de>; Tue, 21 Oct 2025 12:30:01 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A11FB32ED21;
	Tue, 21 Oct 2025 12:29:49 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="hnhackCI"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f50.google.com (mail-wm1-f50.google.com [209.85.128.50])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CA0B12EE5F0
	for <devicetree@vger.kernel.org>; Tue, 21 Oct 2025 12:29:46 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.50
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761049789; cv=none; b=OK2ZDYz+l6P9dKDTQ0Wre6TrVWmJrr35H2kN2ZhIcyiMu1DvWn5GdgAuOej6SuE7IWJd0qfR6Q+rkKBfMcwt0W6gHQG3k9oVGbj1fAA0hve7Qw7H6Uo3p8RpDso5T2fm6uQcZYlEikgwYxkuyZWg4Ly+B1a228Bi6MaGSTyu9bw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761049789; c=relaxed/simple;
	bh=uGirs23txhAenKHXdCP7WExbbtewFPdCzpQHrSYHZmo=;
	h=From:To:In-Reply-To:References:Subject:Message-Id:Date:
	 MIME-Version:Content-Type; b=jlVmo2tfnYAt7kXzjimtTvpP6C1QBQycr3ydSW5xvENiU6Kwm4bCMiaJCHm20WugExa6vEEhZdaHLWRcHjC5m7xIbyh6su7rw3HCg+ub987tB2H20L49fhlsK726RCJvtN9Esjh2e1siQBIONJRdzFYoEm8OGYS7GPSujRVR3Kk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=hnhackCI; arc=none smtp.client-ip=209.85.128.50
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wm1-f50.google.com with SMTP id 5b1f17b1804b1-4711810948aso38028185e9.2
        for <devicetree@vger.kernel.org>; Tue, 21 Oct 2025 05:29:46 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1761049785; x=1761654585; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:date:message-id:subject
         :references:in-reply-to:to:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=Nw12B7KdWN/wbxxijDvUQZ5OrO1aWstBkEoWMIB2hXM=;
        b=hnhackCI8DWY/JOyDCX2YU4+rlT7U+7200sc30r5TwKxgoXeagKYMPvo5LgD7Z+qE6
         zrYLf9tWoePQny+CBxsTKXoebraDQYfieA8sS4au/UvKuptyBrXjdWE7DDybpcL/BqMc
         85gfMKRBESEFmPWA0EpVZ0jKzLnf+dFYHOH8FQ8VwICYRtLu1SFbpc7KBsKO8RTU7tzP
         wlwClJdoUieXQRhSgXOmBDcEAffIgb70u4MBGGFpu0Jr21MlZbka+jcz3lAwZJdx79G1
         n9KgFNuB0z2eOJ7ib++ubY5BTizH7plMIfo1yfmUZWassECQfQy3KdsvYR/NOUTjfxZH
         wYSQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1761049785; x=1761654585;
        h=content-transfer-encoding:mime-version:date:message-id:subject
         :references:in-reply-to:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=Nw12B7KdWN/wbxxijDvUQZ5OrO1aWstBkEoWMIB2hXM=;
        b=s31qe0UQLIK1ca9S8YM3/XwXK3//aLo48WuajTkVqZZ5RxAP0/5VFjZLAIDVGYbCpw
         Cpt8QQSmqCnSPV0KntOAUgrkN5O3r9PGVCykNUBQZKMnchZiwuo3UY/rqUfStx8x6gD0
         GtBNt8GjHkgIXq7FpIgB+MnHcPncTH2DAulKytl0qt3HRaH1y8wbNEisSncqBM0ypuxK
         CfRHHRXeLMT+I/LnyGktaSxGLGXhCf+DGXzNEHuZV+PFgrSo1R/pUd2AtdSHLiC7tSbA
         3FQAz9IClSw96B/7g/SjlUxRsief9/CTk4UctQSkdHIqoBnrrknhJdp1BaQJe5Etz+Eu
         ikBg==
X-Forwarded-Encrypted: i=1; AJvYcCWiqzwqBNBWZOcSR5NvXht9Ctx805NKQl7NqhFz8nfZxr/T+4SMN9LuiZETdm97dv1DTa8aFkxAxIdn@vger.kernel.org
X-Gm-Message-State: AOJu0YzJtChzkqmn/0gOCnD2IPNcT9rGuSw5eLsYOZ/aAMHBaj44QYrO
	PbaL3No99IiL5bOyxXWPumsXqP/X0VGTY2h2gBEclnCZ3GV1MWKwMZ7Rm9mnvQK4FpR9JS2t42g
	Y+xjU
X-Gm-Gg: ASbGnctIghiBEqVRfp2eZMI2LUdSfNKAZm6bHTY2oM034kdiUXeT+trgzu9LbdPHyQB
	JutskJg+a+//KG7H+hWi4BVj+PAbR2VOHF00EJGjms2HIVGyHANGdmCErSYRIORgjq9hnYOQCzp
	nAdXxPVRbd4B8Kzmzjx5CG1+00Yi2pvrxyGpubTAfrktJ8gBWa/jK/Z8F2YInTC0hbeEFGzT6E5
	Blrh/ES8Ix0V8Z+d1XGgOEqbLczKSYXN4uD8CBWjGh8HLlchBJPwE3JsMpl8A0TIl18G0FwWVp+
	cHKWj/bb/euJglKWIbSHdNI0BvkyQ3K+ZUbmXKaKFwPqDUO0+vMdg5HCWxRwOG8DVY69spgR/2K
	mMTXtH4yAkTujiaaKpaterGZRnq259w3JuMi03cLNJBlyyJmKucOzXzYGNizJ82UnZEhrB61l21
	0D1SUyihC6wUBSozNk8whZIyDPdlEcd8A=
X-Google-Smtp-Source: AGHT+IGetap4T/Eh1Z+oljdXnfqlancpgAhNO6qspGOxItJqX1hECPXKuLsbg0/AZayCnBvDbJQ07A==
X-Received: by 2002:a05:6000:4a09:b0:427:62b:7f3 with SMTP id ffacd0b85a97d-427062b07f9mr13782919f8f.33.1761049785129;
        Tue, 21 Oct 2025 05:29:45 -0700 (PDT)
Received: from arrakeen.starnux.net ([2a01:e0a:3d9:2080:52eb:f6ff:feb3:451a])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-427ea5b3c34sm20057043f8f.17.2025.10.21.05.29.44
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 21 Oct 2025 05:29:44 -0700 (PDT)
From: Neil Armstrong <neil.armstrong@linaro.org>
To: Kevin Hilman <khilman@baylibre.com>, 
 Jerome Brunet <jbrunet@baylibre.com>, 
 Martin Blumenstingl <martin.blumenstingl@googlemail.com>, 
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, devicetree@vger.kernel.org, 
 linux-arm-kernel@lists.infradead.org, linux-amlogic@lists.infradead.org, 
 linux-kernel@vger.kernel.org, Christian Hewitt <christianshewitt@gmail.com>
In-Reply-To: <20250927125006.824293-1-christianshewitt@gmail.com>
References: <20250927125006.824293-1-christianshewitt@gmail.com>
Subject: Re: [PATCH 1/2] dt-bindings: arm: amlogic: add support for Tanix
 TX9 Pro
Message-Id: <176104978445.3075289.8934335794181531302.b4-ty@linaro.org>
Date: Tue, 21 Oct 2025 14:29:44 +0200
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

On Sat, 27 Sep 2025 12:50:05 +0000, Christian Hewitt wrote:
> The Oranth Tanix TX9 Pro is an Android STB using the Amlogic S912 chip
> 
> 

Thanks, Applied to https://git.kernel.org/pub/scm/linux/kernel/git/amlogic/linux.git (v6.19/arm64-dt)

[1/2] dt-bindings: arm: amlogic: add support for Tanix TX9 Pro
      https://git.kernel.org/amlogic/c/beaea75ddc2a483e7b2b08a040d418f323510316
[2/2] arm64: dts: meson: add initial device-tree for Tanix TX9 Pro
      https://git.kernel.org/amlogic/c/afd1e16c6d3f53810ea29b5269dfcfc233e9b6b9

These changes has been applied on the intermediate git tree [1].

The v6.19/arm64-dt branch will then be sent via a formal Pull Request to the Linux SoC maintainers
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


