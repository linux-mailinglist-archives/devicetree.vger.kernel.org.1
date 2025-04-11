Return-Path: <devicetree+bounces-165778-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 2CDE2A856BF
	for <lists+devicetree@lfdr.de>; Fri, 11 Apr 2025 10:39:09 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 72CD83BFFAA
	for <lists+devicetree@lfdr.de>; Fri, 11 Apr 2025 08:37:47 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B475829614A;
	Fri, 11 Apr 2025 08:37:57 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="dy+fjYOl"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f45.google.com (mail-wr1-f45.google.com [209.85.221.45])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B01F2293B4B
	for <devicetree@vger.kernel.org>; Fri, 11 Apr 2025 08:37:55 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.45
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744360677; cv=none; b=M54e7lks2z2UqVHg16GkigbqG6L9TBKy0corxIzQyxa5JzpC9mgcGSDusB7kT5AvV2BMg7kZcAZq+bzcp/s1Vo4xUDXUgYIXtfhuyB1fy+3esDUDvtgkkpBZHuAgGoTN9z+WYepC1LkT7HZUnGj0DVnyiADSZBlecUg8+xgqvps=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744360677; c=relaxed/simple;
	bh=5kt3MWtin3KNwdzDbJU//7Uxuz+S1QGZ/maTZ/hrbSs=;
	h=From:To:Cc:In-Reply-To:References:Subject:Message-Id:Date:
	 MIME-Version:Content-Type; b=qQmXJWPnh9tkZBDq+8k1orfjmpAoP3FEq98HkRMYS4cdOBL2RDO9dhxYapXkAHs6RrkWyzHPJSYGdxAbOXaBdf1nzEWpp2b9KXBFdiuqC6OGlJwIp4d5AEOnERcnYNQUUjx4DDQC+ZguRp2nwM8aofR5nqxH3uLgvauB75TXAaM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=dy+fjYOl; arc=none smtp.client-ip=209.85.221.45
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wr1-f45.google.com with SMTP id ffacd0b85a97d-39c13fa05ebso1000891f8f.0
        for <devicetree@vger.kernel.org>; Fri, 11 Apr 2025 01:37:55 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1744360674; x=1744965474; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:date:message-id:subject
         :references:in-reply-to:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=wH2ZPuzfR/sU9gtELQf1xx9ouW+DErODBwUT5LwG1mM=;
        b=dy+fjYOl2NWtqXJHHd4H+Tpo9L+/m3lsuYvwRfy7cD+16NN+q8tvv5gyAlQ0ra23IO
         0C98gB9Qk4qsQXQfsD3sRaiVfwIoa64x0I/ZKzJsNADmHD9OfLWgy7apo4hEn2PEWWg9
         zJ/s2Ceme8nWBZ4R6ljHMBWREuI5HZqI/Z00u20fltn6RwNN64mweBGMGSThN4Goureo
         aSwEoq15ptQnQZ6pwArHiL4cz9QwxQbPuYz2J1dg+V8q4Cgt8bPcj20M7gH7pGlbSbVU
         /olenrBVqU5Smru3g91jmBiFa9msCGO+1nblQGmsJKojRvQLNUorj7flEXND1KBhwNJT
         S46A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1744360674; x=1744965474;
        h=content-transfer-encoding:mime-version:date:message-id:subject
         :references:in-reply-to:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=wH2ZPuzfR/sU9gtELQf1xx9ouW+DErODBwUT5LwG1mM=;
        b=GlYRI/dDx1SQJVP+TZ/5DY+c997ZP23dytfa8IqWH8lBP9K6uf/cE/c1BUXoaOZ6Pm
         c/Z9epDx0Ekc7u3zp+HCDBEWROnpqoHwmmOq2FKPcow+klfEgOSxAvFcV+2rjNAlTF/p
         fFsZWCNW6+qKpxnLzasnMkthLj8r5pIpCO9PiZt/1Z491U1OoVY2lrtdCA/ozO7YsubP
         lbKP8FM+X3q6U+lB7eiXAZNJ82RXLUth40/WJ/mWdbrTUNyjqnAWx0mdEUVahkzBTCHX
         SAREUgpB6ZRz/57tMvCJ7DiXCHIFZ0rolT6C20KpXGjP1ydM5YOj2eW4q4K4OJyqX4LC
         igPQ==
X-Gm-Message-State: AOJu0YyJ7tXybxedWsyHPDY+vFHwJR/jKikW0aozZvtxUM/GZObLMu2/
	t7pkPbhsxdpbtZCtgTocZvJaTcAA+OelkfhIRy+b41wGKdYUBCVWnEb/f23BKVA=
X-Gm-Gg: ASbGnct40ztGEH0pMdvn8mOCvK/XkZwVglXG1a+0hVbBSeh60JCmoZ6wLNfp2Y9hyra
	uUHOUq8gzIzjaVEaLUKl0wNzsyktZ0hC8xqmBzn/e60vca00xIeprhGI6HSZpsJ4eUjyYEf4oDn
	1V9hJgaDHQxT/FmgSKNfJSFRtMeIp1PiHw6ooGj+uceQpq5iodhabJ1S3GomxxzmRprAfGy+fxO
	tm7+zx/39O57a/gpy0SpxoJtJY4yYIPUIPRI4Hap8wJsXEl/UUc2FpLotf9UgLeGQtiO8B1K3Kj
	mZwiF6FM2fxFNfqzqc0abvlJ5aYNOqr+dKiCWFQR+nEr0u84NLKjMrFEdUN6wg==
X-Google-Smtp-Source: AGHT+IESQEmfqjjVD+jC6dd63FDfAGrpItTMGFb0BJ+4OP4VGIDucBWUqxZDD69YlSOe5qeibdfp9g==
X-Received: by 2002:a05:6000:2c5:b0:38f:3224:65ff with SMTP id ffacd0b85a97d-39ea51ecb8bmr1357243f8f.5.1744360673907;
        Fri, 11 Apr 2025 01:37:53 -0700 (PDT)
Received: from arrakeen.starnux.net ([2a01:e0a:3d9:2080:52eb:f6ff:feb3:451a])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-39eae9777a0sm1326282f8f.43.2025.04.11.01.37.52
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 11 Apr 2025 01:37:53 -0700 (PDT)
From: Neil Armstrong <neil.armstrong@linaro.org>
To: Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Chen-Yu Tsai <wens@csie.org>, 
 Jernej Skrabec <jernej.skrabec@gmail.com>, 
 Samuel Holland <samuel@sholland.org>, Conor Dooley <conor@kernel.org>, 
 Nicolas Ferre <nicolas.ferre@microchip.com>, 
 Claudiu Beznea <claudiu.beznea@tuxon.dev>, 
 Steen Hegelund <Steen.Hegelund@microchip.com>, 
 Daniel Machon <daniel.machon@microchip.com>, UNGLinuxDriver@microchip.com, 
 Bjorn Andersson <andersson@kernel.org>, 
 Konrad Dybcio <konradybcio@kernel.org>, Shawn Guo <shawnguo@kernel.org>, 
 Sascha Hauer <s.hauer@pengutronix.de>, 
 Pengutronix Kernel Team <kernel@pengutronix.de>, 
 Fabio Estevam <festevam@gmail.com>, Heiko Stuebner <heiko@sntech.de>, 
 Kevin Hilman <khilman@baylibre.com>, Jerome Brunet <jbrunet@baylibre.com>, 
 Martin Blumenstingl <martin.blumenstingl@googlemail.com>, 
 Geert Uytterhoeven <geert+renesas@glider.be>, 
 Magnus Damm <magnus.damm@gmail.com>, 
 Lorenzo Pieralisi <lpieralisi@kernel.org>, Andy Gross <agross@kernel.org>, 
 Thomas Bogendoerfer <tsbogend@alpha.franken.de>, 
 Viresh Kumar <vireshk@kernel.org>, Nishanth Menon <nm@ti.com>, 
 Stephen Boyd <sboyd@kernel.org>, zhouyanjie@wanyeetech.com, 
 Matthias Brugger <matthias.bgg@gmail.com>, 
 AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>, 
 "Rafael J. Wysocki" <rafael@kernel.org>, 
 Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>, 
 Stephan Gerhold <stephan.gerhold@linaro.org>, 
 "Rob Herring (Arm)" <robh@kernel.org>
Cc: devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
 linux-sunxi@lists.linux.dev, linux-kernel@vger.kernel.org, 
 linux-arm-msm@vger.kernel.org, imx@lists.linux.dev, 
 linux-rockchip@lists.infradead.org, linux-amlogic@lists.infradead.org, 
 linux-renesas-soc@vger.kernel.org, linux-mips@vger.kernel.org, 
 linux-pm@vger.kernel.org, linux-mediatek@lists.infradead.org, 
 Andre Przywara <andre.przywara@arm.com>, 
 =?utf-8?q?Philippe_Mathieu-Daud=C3=A9?= <philmd@linaro.org>, 
 Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>, 
 Sudeep Holla <sudeep.holla@arm.com>, Viresh Kumar <viresh.kumar@linaro.org>, 
 Ulf Hansson <ulf.hansson@linaro.org>
In-Reply-To: <20250410-dt-cpu-schema-v2-0-63d7dc9ddd0a@kernel.org>
References: <20250410-dt-cpu-schema-v2-0-63d7dc9ddd0a@kernel.org>
Subject: Re: (subset) [PATCH v2 00/17] Arm cpu schema clean-ups
Message-Id: <174436067236.3436338.6767561918297500530.b4-ty@linaro.org>
Date: Fri, 11 Apr 2025 10:37:52 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.14.2

Hi,

On Thu, 10 Apr 2025 10:47:21 -0500, Rob Herring (Arm) wrote:
> The Arm cpu.yaml schema fails to restrict allowed properties in 'cpu'
> nodes. The result, not surprisely, is a number of additional properties
> and errors in .dts files. This series resolves those issues.
> 
> There's still more properties in arm32 DTS files which I have not
> documented. Mostly yet more supply names and "fsl,soc-operating-points".
> What's a few more warnings on the 10000s of warnings...
> 
> [...]

Thanks, Applied to https://git.kernel.org/pub/scm/linux/kernel/git/amlogic/linux.git (v6.16/arm64-dt)

[11/17] arm64: dts: amlogic: Drop redundant CPU "clock-latency"
        https://git.kernel.org/amlogic/c/4bc28af2da876531e5183d25ae807e608c816d18

These changes has been applied on the intermediate git tree [1].

The v6.16/arm64-dt branch will then be sent via a formal Pull Request to the Linux SoC maintainers
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


