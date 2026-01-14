Return-Path: <devicetree+bounces-255054-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [104.64.211.4])
	by mail.lfdr.de (Postfix) with ESMTPS id 55688D1F48F
	for <lists+devicetree@lfdr.de>; Wed, 14 Jan 2026 15:04:36 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id 59F3E301FAEC
	for <lists+devicetree@lfdr.de>; Wed, 14 Jan 2026 14:02:07 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 9E9E22C032C;
	Wed, 14 Jan 2026 14:01:50 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Ujjep2On"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7C0D92C0270;
	Wed, 14 Jan 2026 14:01:50 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768399310; cv=none; b=rXhxNxEkUp1hAAZf7koLnUc+CyondoE+rx8pAtE1OT7ZhVfFum04nthjR/medWSPS4/rodXFqpgnKzwWhniwMJrqdYwxhzdWbVMAAilXc7XTF7OTN/Ch/DNUAHpK6j6ZGRIlo3r+SNu1+3xXOKRHG/Cj0du44/dfVIrbmzUZfPc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768399310; c=relaxed/simple;
	bh=JhUn9TqR1P15NoVS+X8zJgLMi4jcAWVe91/hg+g8+XQ=;
	h=From:To:Cc:In-Reply-To:References:Subject:Message-Id:Date:
	 MIME-Version:Content-Type; b=M/NnmRoPDypLoksbyONzyAiCcTkGu0X8Y2ksEFGSwcFHZmpZRhxBXGGcB1Y4f4bmZ9+0S/LFv+YThT08ZK6btdwvoJ0A6XRyV3aYvgNmxgHCHvRgxB6n/AOxUgmLLvKuma7yNujxJ+r0Ng+SZHrw8BBQY7tKUyohlQEzjNKAb/s=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Ujjep2On; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 7D78FC4CEF7;
	Wed, 14 Jan 2026 14:01:46 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1768399310;
	bh=JhUn9TqR1P15NoVS+X8zJgLMi4jcAWVe91/hg+g8+XQ=;
	h=From:To:Cc:In-Reply-To:References:Subject:Date:From;
	b=Ujjep2OnS5oFpyvmoHdhTj2gamsTcVSU4u2dMzbdeUj9Ames4AbCRjiZ4scWPntoO
	 Mr62FQH2GPiYqNOj+b3PT2JKHlzOajo7w/EHzRhcbQKb0QW0sWPzveOlisNjhliRu5
	 NWXSv7F1APi52affZvTC4Wl9DKUWiSuSun7USJu7tNwhw6P4nKHuShoVePZlgFl/Qs
	 5/vuIHzt1xrDvuN0r9ngeUiDmL8W7rLbsHLG6vctEdtcomKytQOPrShFx0sBtAn7/O
	 EkOnt4lY4E80bInnl5tZZwvWdV/lgDv5+IRxDyqLQz5nLckFYMo7DaVVI3NuRCeTA8
	 nysyN2h98geGQ==
From: Vinod Koul <vkoul@kernel.org>
To: neil.armstrong@linaro.org, robh@kernel.org, krzk+dt@kernel.org, 
 conor+dt@kernel.org, sjakhade@cadence.com, rogerq@kernel.org, 
 thomas.richard@bootlin.com, Siddharth Vadapalli <s-vadapalli@ti.com>
Cc: andrew@lunn.ch, linux-phy@lists.infradead.org, 
 linux-kernel@vger.kernel.org, devicetree@vger.kernel.org, 
 linux-arm-kernel@lists.infradead.org, srk@ti.com
In-Reply-To: <20260112054636.108027-1-s-vadapalli@ti.com>
References: <20260112054636.108027-1-s-vadapalli@ti.com>
Subject: Re: [PATCH v3 0/2] Cadence: Torrent: Enable PCIe + XAUI multilink
 configuration
Message-Id: <176839930614.937923.15521389501056523456.b4-ty@kernel.org>
Date: Wed, 14 Jan 2026 19:31:46 +0530
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.13.0


On Mon, 12 Jan 2026 11:16:29 +0530, Siddharth Vadapalli wrote:
> This patch series adds the dt-binding for PHY_TYPE_XAUI and adds the
> driver support for enabling PCIe + XAUI multilink configuration.
> 
> Patch series is based on linux-next tagged next-20260109.
> 
> v2 of this patch series is at:
> https://lore.kernel.org/r/20260104114422.2868321-1-s-vadapalli@ti.com/
> Changes since v2:
> - Collected Acked-by tag from Rob Herring (Arm) <robh@kernel.org>
>   https://lore.kernel.org/r/176772419699.2512006.6478554353373580831.robh@kernel.org/
> - The commit message in the second patch has been updated to explain the
>   changes made to the LINKx_MASK/SHIFT and REFCLKx_MASK/SHIFT macros to
>   address feedback from Andrew Lunn <andrew@lunn.ch> at:
>   https://lore.kernel.org/r/7fd42221-d602-4ce4-9f7f-6754ed91e7aa@lunn.ch/
> 
> [...]

Applied, thanks!

[1/2] dt-bindings: phy: Add PHY_TYPE_XAUI definition
      commit: a632a2a0db8b4d24076a03889efa25c6058d0746
[2/2] phy: cadence-torrent: Add PCIe + XAUI multilink configuration for 100MHz refclk
      commit: 02cf3710c55d55d956f080e6610b841e2b6ddca0

Best regards,
-- 
~Vinod



