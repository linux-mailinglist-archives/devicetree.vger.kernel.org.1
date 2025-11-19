Return-Path: <devicetree+bounces-240273-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from dfw.mirrors.kernel.org (dfw.mirrors.kernel.org [IPv6:2605:f480:58:1:0:1994:3:14])
	by mail.lfdr.de (Postfix) with ESMTPS id ADAD5C6F83A
	for <lists+devicetree@lfdr.de>; Wed, 19 Nov 2025 16:04:55 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.mirrors.kernel.org (Postfix) with ESMTPS id 787C54F0B21
	for <lists+devicetree@lfdr.de>; Wed, 19 Nov 2025 14:51:29 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 83708296BA5;
	Wed, 19 Nov 2025 14:48:31 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="Cw0UF1CQ"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f41.google.com (mail-wm1-f41.google.com [209.85.128.41])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C348132FA12
	for <devicetree@vger.kernel.org>; Wed, 19 Nov 2025 14:48:29 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.41
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763563711; cv=none; b=adlxLUeBSUMMMSu8mhJfS+3NM5SmCneNmwCVZvZ+rktksG7maoJWn52RGU7W1gDiCaWxHKhbhhestjD/rdQRoRsAzbvx25bPlVyo7tpdRW4zoUxDRnvUc8w6fgl3VGMGOO6/sKiiAmQRSeiywuF3R+cuWu3KgXAoETK6gMvsAVE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763563711; c=relaxed/simple;
	bh=LsdlzNEqNOcsomi5SfM+OmnGYfXQ9+G7JTobhKXRoww=;
	h=From:To:Cc:In-Reply-To:References:Subject:Message-Id:Date:
	 MIME-Version:Content-Type; b=bJnCbSTwlY5iee5djWpwuVfaOj+YjmeoE0mfNgSIyL0DnquTdBvAsNnKzBhZwskdm9sx3FARTt9KnXNnmwcapOHOo2cy6Ac0k9peJb+Irru+f+bkf3gCiCGoVgVzU7yy9PeJHDLXqpRAT74Vu/WFejNbrOYlbKJ6HlVEBjmT6YE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=Cw0UF1CQ; arc=none smtp.client-ip=209.85.128.41
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wm1-f41.google.com with SMTP id 5b1f17b1804b1-47118259fd8so50827335e9.3
        for <devicetree@vger.kernel.org>; Wed, 19 Nov 2025 06:48:29 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1763563708; x=1764168508; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:date:message-id:subject
         :references:in-reply-to:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=AAvWWiQSPgIYwk1AWP8/6DiVxFM2G8tlxz+0kwoYwpY=;
        b=Cw0UF1CQB8LaNLJjz4RrnDOeSuu/LE/pgRggKOQvBCh4cyml+yCMTLkdjT7rVWX1B/
         1Ld3lnlZ25PEq7vG7uQN6GpdU27NoOCipyIfEIAUrwnijiYqSq7xl9yMUdGP9isSn14t
         o2pnGAAO3i085qJmI0+A+Y9A4Ui5S9TwkhZLRCLQLMoNMUhiBTJOWPtO5korGiPUpyKl
         H2FC9tE0l8DUQ5qlda+tLzyXcPU2g4pQtfC5q0MEWJRqXB9T/6LOigReHGK9OkvwK4CV
         9aWi+X+HPlPfX14mMU/PPQymFaPG0Ez7QZfAu++BJYG+GZlLrBznUIvx0WH47BJsV+PN
         YSPA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1763563708; x=1764168508;
        h=content-transfer-encoding:mime-version:date:message-id:subject
         :references:in-reply-to:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=AAvWWiQSPgIYwk1AWP8/6DiVxFM2G8tlxz+0kwoYwpY=;
        b=Yn+JEa31ZAZ3Hh1QFH1E5OQ/RhxbKcW9qRURHhAdBsOiMx4MIRUSr2bDWt3L4uRFO+
         fRTzgn+cmwwvP/u7bet9O4Vj7a1R22PX23NRCSWrzohqpoiOhIf5gE6UiZA4YdSOmIXc
         5c81hYvJeQoJrjedCRj0BFoGoFre2qoHJKg/siNb2CgCWZIkdPOntD+qBfXbF+DE+LPE
         u20G7IM2DDHDLLt/4ILn7x3xyrhvxx/ni6eR7P72PHZZPxiDxqjdIs+JLwZy+5OY/rPh
         QqyeMheDCe3CzBqgpqfzYOY5mO7O2dkoRoCjA6HEDLBNFZuOx6mOg6f0N7qk0a+3nhDS
         slag==
X-Gm-Message-State: AOJu0YyFawt0CeXfGIxMZWlg2RdjSO3Br++YGk63QcEejZzm2JxK+2bv
	9kBpARIJKa1SAMQSRedv48j8yNG/hNB03djtj/jbmi3Fs2mKr5HlQJSN+i3rIFrxk84=
X-Gm-Gg: ASbGncu3vWFylkgAjdWMdcAzkEh6t3bfnD2TEInJgl4BxlVcAD9Wk+Ry7LiN/m85MnA
	45YZXMR3/a085QaqWbUSskRooFWPISMyiBEAZemvRLZFKerJKrKxQ+2+lXpkzKwj7zT0YQp1SQL
	GYV3wjim/dA+Mr2/LrRXDzK+5FdgYcgpTQzi8WKEgn9qV0A9McYg86D47CAjTOT8t6Kiq43C68J
	Eeum+D+DdFtvzarxHmBTUSiHih5gQZBPRfUwH0k2GmjMoA/4ESgCiDRTBwxVLJ8OPEEiGZmuZiq
	GLj5x5FQt3ZK9qozyxJwsf1zTIwq+5/QVzBBe+Z+Xa9+KO7G/499rjvd6umG7NpICNTLZ2/5Z43
	Xs4/ONyMyd3ujkI0E7nGNuiTmDs/F4vqy3ezDpuOiPZeRDRx/jTJFVh0VzbnJv3vV8/9dYmhqyy
	Q+D0LNj87Rpj71rODFdCwvc/eg4dgeDSI=
X-Google-Smtp-Source: AGHT+IEwXhf12WmwbkhOzW6haSCLFbfitinhCu11eBWyJ+4WomkGncN25OlqCSrNETzoBABx8qeaPA==
X-Received: by 2002:a05:600c:a49:b0:477:73cc:82c2 with SMTP id 5b1f17b1804b1-4778fe6822fmr186919395e9.9.1763563708133;
        Wed, 19 Nov 2025 06:48:28 -0800 (PST)
Received: from arrakeen.starnux.net ([2a01:e0a:3d9:2080:52eb:f6ff:feb3:451a])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-42b53f206e2sm39187174f8f.41.2025.11.19.06.48.27
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 19 Nov 2025 06:48:27 -0800 (PST)
From: Neil Armstrong <neil.armstrong@linaro.org>
To: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Kevin Hilman <khilman@baylibre.com>, 
 Jerome Brunet <jbrunet@baylibre.com>, 
 Martin Blumenstingl <martin.blumenstingl@googlemail.com>, 
 Xianwei Zhao <xianwei.zhao@amlogic.com>
Cc: devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
 linux-amlogic@lists.infradead.org, linux-kernel@vger.kernel.org, 
 Conor Dooley <conor.dooley@microchip.com>
In-Reply-To: <20251119-soc-info-s6-s7-s7d-v3-0-1764c1995c04@amlogic.com>
References: <20251119-soc-info-s6-s7-s7d-v3-0-1764c1995c04@amlogic.com>
Subject: Re: (subset) [PATCH v3 0/5] soc: amlogic: Add new Amlogic SoCs
 info defines
Message-Id: <176356370742.79050.14585932686305193943.b4-ty@linaro.org>
Date: Wed, 19 Nov 2025 15:48:27 +0100
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

On Wed, 19 Nov 2025 10:52:21 +0800, Xianwei Zhao wrote:
> Add more Amlogic SoCs info defines, include S6, S7, S7D.
> 
> 

Thanks, Applied to https://git.kernel.org/pub/scm/linux/kernel/git/amlogic/linux.git (v6.19/arm64-dt)

[3/5] arm64: dts: amlogic: s6: add ao secure node
      https://git.kernel.org/amlogic/c/fe85b8876768496196108a4c5199d084a6dc0036
[4/5] arm64: dts: amlogic: s7: add ao secure node
      https://git.kernel.org/amlogic/c/070fcd4448a1d49ddbebfb63c681766f75cd90ed
[5/5] arm64: dts: amlogic: s7d: add ao secure node
      https://git.kernel.org/amlogic/c/e490b52477b85ffc5bc8ae7124415345fb6a3f4e

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


