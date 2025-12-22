Return-Path: <devicetree+bounces-248856-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 5D900CD62DF
	for <lists+devicetree@lfdr.de>; Mon, 22 Dec 2025 14:38:43 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 2F4BD3042FFE
	for <lists+devicetree@lfdr.de>; Mon, 22 Dec 2025 13:38:42 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id CA6DD313527;
	Mon, 22 Dec 2025 13:38:40 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=sntech.de header.i=@sntech.de header.b="M68rJ7N3"
X-Original-To: devicetree@vger.kernel.org
Received: from gloria.sntech.de (gloria.sntech.de [185.11.138.130])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 988DE30E0EF;
	Mon, 22 Dec 2025 13:38:38 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=185.11.138.130
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766410720; cv=none; b=mGupECq4xnoPcZ0mNn47IHlT34QhAPVI43szVFAqqiL2yMXS2w4SlZQ4E/0LispGfI4UjMbYMNqRAnr6CoJlm3F9dA+6mO6KNXCe9JcIm+sI0oFPW/GZ7hkZkxjNZWgq6SQ0sFOwPoeTtlwLgzQc14kgCJPfwFEjy4RplhkDO4g=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766410720; c=relaxed/simple;
	bh=MN0j3IEMESWZLo69osRPv2oGXeawKGdbzAEdbrdAsf0=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version:Content-Type; b=RRCBOoBWa92/RV2vp0LhMAKlhUMuKRoBNSWfpR/DhbV44bSx+JHxQ15OBCqtDl55NBJb+32oNO3jruo9M8ZbmV/TltDGXC7T7koAntwKcckMSKZ86TXTBoBEYJSPCokLbzibMfp72oqGtde0BqjtzgzutK/QNGP/1rX+1rzLHwQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=sntech.de; spf=pass smtp.mailfrom=sntech.de; dkim=pass (2048-bit key) header.d=sntech.de header.i=@sntech.de header.b=M68rJ7N3; arc=none smtp.client-ip=185.11.138.130
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=sntech.de
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=sntech.de
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sntech.de;
	s=gloria202408; h=Content-Transfer-Encoding:Content-Type:MIME-Version:
	References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Reply-To;
	bh=IgEuAcD0+6Ay73Edf5LnTItfyQ/3fcSTfEnINuf0TSQ=; b=M68rJ7N3PNDLHySBpxN5PAQvoH
	cm+wfEmR8nF7mjoRJ9gboUkBPAosc6YOaICBLYaIXn/S75VAnUtKLlHaUDMbNjr91JVkCpKVLW/1o
	oMj3K0Ay4aCHr6UsjOX5oI3iMa1ndrugdOD/S7VhhDwBxQrxdvE0E5oSt+/GaJBAkwoaTTL29y/b9
	s/YSzgOWWRWHn9WwPRJjQ9v2b/FvKQk4L5TuKVERJ2jjqjKw23CFfdpBaxZ3KII4fkniwVusTl38D
	JFc7rMD3RryDFr2iT43ewOMQuxiZL7MoYUG5oBZTs8crvLTit48sLY0dlxiUTQH6O2RXyLfCXPyqs
	XUqPogMw==;
Received: from [194.95.143.137] (helo=phil.dip.tu-dresden.de)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1vXg7L-0005s2-GI; Mon, 22 Dec 2025 14:38:31 +0100
From: Heiko Stuebner <heiko@sntech.de>
To: Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Hsun Lai <i@chainsx.cn>,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>
Cc: Heiko Stuebner <heiko@sntech.de>,
	stable+noautosel@kernel.org
Subject: Re: [PATCH RESEND] arm64: dts: rockchip: Fix wifi interrupts flag on Sakura Pi RK3308B
Date: Mon, 22 Dec 2025 14:38:25 +0100
Message-ID: <176641067335.1648325.10724252333112097745.b4-ty@sntech.de>
X-Mailer: git-send-email 2.47.2
In-Reply-To: <20251217091808.38253-2-krzysztof.kozlowski@oss.qualcomm.com>
References: <20251217091808.38253-2-krzysztof.kozlowski@oss.qualcomm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit


On Wed, 17 Dec 2025 10:18:08 +0100, Krzysztof Kozlowski wrote:
> GPIO_ACTIVE_x flags are not correct in the context of interrupt flags.
> These are simple defines so they could be used in DTS but they will not
> have the same meaning: GPIO_ACTIVE_HIGH = 0 = IRQ_TYPE_NONE.
> 
> Correct the interrupt flags, assuming the author of the code wanted same
> logical behavior behind the name "ACTIVE_xxx", this is:
>   ACTIVE_HIGH  => IRQ_TYPE_LEVEL_HIGH
> 
> [...]

Applied, thanks!

[1/1] arm64: dts: rockchip: Fix wifi interrupts flag on Sakura Pi RK3308B
      commit: 7c6bbcb010b1b8e4e6452de109f0506bb05d6efb

Best regards,
-- 
Heiko Stuebner <heiko@sntech.de>

