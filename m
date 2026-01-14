Return-Path: <devicetree+bounces-255018-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id A0802D1EA9A
	for <lists+devicetree@lfdr.de>; Wed, 14 Jan 2026 13:12:53 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 122E930464E7
	for <lists+devicetree@lfdr.de>; Wed, 14 Jan 2026 12:11:16 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 5C59339525E;
	Wed, 14 Jan 2026 12:11:15 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="S+1V8kJA"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f67.google.com (mail-wm1-f67.google.com [209.85.128.67])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C424A335567
	for <devicetree@vger.kernel.org>; Wed, 14 Jan 2026 12:11:13 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.67
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768392675; cv=none; b=hpj5YEJothF2Rpf1jURu54NkL6bvVs27lCf6Arf4M0Z23GJ4V+HlXyZHy6AkyQQVWqaRok701GqylOJdGNw1ylstYOQUto9K878ecyM0/f0pwWw+BiH6Vp8ABvPu6XsaJhlHVwG2FoCAp7D9Lat3hnz184VBcis3xQ6s4rmdAEQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768392675; c=relaxed/simple;
	bh=SLbmp/DnhxQzq4AS57g2lGVgVpttnHP/X5IjprbgRFA=;
	h=From:To:Cc:In-Reply-To:References:Subject:Message-Id:Date:
	 MIME-Version:Content-Type; b=NtkcWeh1ecW7/a5QV1kJdWkvKV4xZyOL3c32Mv/jUmi/tPPIRB+R/KieNwJoeNldf6uG4XxxcyhU9jRJRG/cXduhslWa+tpXCofD/sG1HXB9posqNp5kTlYMLIFGhx50/CsPfCIrrxQSBs04wNuMttoWMS4qAb32jmZIBjRbYtQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=S+1V8kJA; arc=none smtp.client-ip=209.85.128.67
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wm1-f67.google.com with SMTP id 5b1f17b1804b1-47edd6111b4so13931365e9.1
        for <devicetree@vger.kernel.org>; Wed, 14 Jan 2026 04:11:13 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1768392672; x=1768997472; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:date:message-id:subject
         :references:in-reply-to:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=luE4giNMbRl3MrVhKtHW9mq/sJHuHc9hfzaLz1OXmEk=;
        b=S+1V8kJAeaLcbyN/kY6zJZm+0b5wUVZK9Wzt1egtkt4OXuXPbEho1VVOp5nXznIjP/
         AsjNhUz663ILaDGaCJNZc2Blaj5ihovDUJkq1FRtLm92+QfkonKn+BrEQitpCodJT7LE
         faEjsU/cNT3HaJiBNgq/LdHAR0DvVn+EDLRoTrCsr8q0nZfv9Y++3jiCBW33RNSoC0FY
         zvAVd4HY1v8NW0YvGIF/RKGbZMpiyTx8f3+vfh/aFTwfXM8HT/0RFaPMzwzPEnLj0TBE
         Jl2XOSsLB9ss846fHliLvAumq2BeoH1ogOjAoJDVfF9xiLksvkhnzqJHS1HQjXTyhC2i
         40bw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1768392672; x=1768997472;
        h=content-transfer-encoding:mime-version:date:message-id:subject
         :references:in-reply-to:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=luE4giNMbRl3MrVhKtHW9mq/sJHuHc9hfzaLz1OXmEk=;
        b=YTXZUKSVDsbnq+Ywy3CaUP4nnNpwnHO0J+y9qWUrluuCPcQg8dTWXOABNgCZz/ckjE
         tppjaFUQ40JdBqPz0VDIo5RLDwt38OgSAnot0DQukPij3T+N9t8dm/nOfhiCpAWWsk5V
         Fj3jBMKZGyXZ7yqoLZcneuKajXZaUxRd1Hrd1XaDF8AQyfixHKb6hFkXnnw9o2Ybz55z
         cKXENk61u/dEU1ytxM+dzD8RlqS8ZaWkylit9TA2UgVNFywKwvPQFUD0dGus67JsZB9o
         34R3KHvW4jPd7/iDhWleWJBBKemadL/b4Eu0MHBUQyjcvVUwWFgI6VrG3rEsIs4d/lUV
         h/fg==
X-Gm-Message-State: AOJu0YyOJeOq4TuQuFuWRRvqV7SSLmC8RZxRWQKT2qbP9+kBcWM0A1n9
	NZb/B6Oo/JKjZHy7AjbunQTLyapKKMO3pFBJY+2mpuW0xz2+ka+75lNNSidUgZ61L7s=
X-Gm-Gg: AY/fxX4v1Nyd0xYZk4V7tNUbwGYO8HTDFcIhSaUSjmsMLvp0LSL3CWmQLKyzgGUFo2X
	4s7dHnZeNJZrahsH7o5XQHUQkmTkayOhaDZkzbTz9cypgUGtKiNlUWpW0YX+x+N93sNsgxBrvS1
	J/83zaQX2hFpQBE4KuSUUwuCPFwoJAW44tveYcKCuFI9nJ00k4m4+Ro8VNAblTNolg/qEckvthy
	FLyHyiz7czbVBV+Jd6UZASx2W6MY9zT5am/rCFz1ScjvtJaRP3MvwdTZUzahryr00Syu01Sr1Tk
	mAfzJ7k3N7BrTSWpuZyxedlpayoZg0qOg93GuIrBbT7VBoGzXFTKOOpH82JsR4k1F3rJE7yO/jw
	t1dxHtZUyBpF8cJDfSyyMf+O6ymKJNvu8a5J1suqsxfudpYu+otCLM/WOVBeNTk3PG7/ue1K+1g
	0FKXCaWFG6HBkBZVEIizKImpOqiz2XbG8=
X-Received: by 2002:a05:600c:3b9f:b0:471:13fa:1b84 with SMTP id 5b1f17b1804b1-47ee47c9411mr21009765e9.12.1768392672151;
        Wed, 14 Jan 2026 04:11:12 -0800 (PST)
Received: from arrakeen.starnux.net ([2a01:e0a:3d9:2080:8261:5fff:fe11:bdda])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-432bd5fe83bsm50158222f8f.38.2026.01.14.04.11.11
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 14 Jan 2026 04:11:11 -0800 (PST)
From: Neil Armstrong <neil.armstrong@linaro.org>
To: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Kevin Hilman <khilman@baylibre.com>, 
 Martin Blumenstingl <martin.blumenstingl@googlemail.com>, 
 Xianwei Zhao <xianwei.zhao@amlogic.com>, Nick Xie <nick@khadas.com>, 
 Jerome Brunet <jbrunet@baylibre.com>
Cc: devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
 linux-amlogic@lists.infradead.org, linux-kernel@vger.kernel.org
In-Reply-To: <20260113-amlogic-s4-mmc-fixup-v1-0-1ab1fca0fb2f@baylibre.com>
References: <20260113-amlogic-s4-mmc-fixup-v1-0-1ab1fca0fb2f@baylibre.com>
Subject: Re: [PATCH 0/2] arm64: dts: amlogic: s4: mmc clock fixups
Message-Id: <176839267143.2837299.3084525146366465270.b4-ty@linaro.org>
Date: Wed, 14 Jan 2026 13:11:11 +0100
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

On Tue, 13 Jan 2026 11:39:51 +0100, Jerome Brunet wrote:
> The patchset aims to address the issue raised here [1] for MMC B.
> 
> While checking this, I've found that MMC A and C also appear to be
> improperly described in this platform's DT. The 2nd change fixes that.
> 
> I do not have an s4 platform available with me, so these changes have only
> been compile tested but assigning the clock was actually tested on sm1.
> 
> [...]

Thanks, Applied to https://git.kernel.org/pub/scm/linux/kernel/git/amlogic/linux.git (v6.20/arm64-dt)

[1/2] arm64: dts: amlogic: s4: assign mmc b clock to 24MHz
      https://git.kernel.org/amlogic/c/86124a8becb43eed3103f2459399daee8af2c99d
[2/2] arm64: dts: amlogic: s4: fix mmc clock assignment
      https://git.kernel.org/amlogic/c/3a115d42922cffc91b303992eadf220111d66c31

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


