Return-Path: <devicetree+bounces-136547-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 86629A058DB
	for <lists+devicetree@lfdr.de>; Wed,  8 Jan 2025 11:57:54 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 186371884205
	for <lists+devicetree@lfdr.de>; Wed,  8 Jan 2025 10:57:57 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id EDBFC1F890C;
	Wed,  8 Jan 2025 10:57:50 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=sntech.de header.i=@sntech.de header.b="uChUI2wJ"
X-Original-To: devicetree@vger.kernel.org
Received: from gloria.sntech.de (gloria.sntech.de [185.11.138.130])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 58DA81F8900;
	Wed,  8 Jan 2025 10:57:49 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=185.11.138.130
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736333870; cv=none; b=S8eISvtooINLG99yiyydeCGqBbxd3x9NkIYm5qrJ9DUFUDjmZMgZjdqmyFAWiAzAiGcq3FJPNHmyU9WmH/P92zPvfLWDqb/sTZonUBX423m+Li/PJBQlWFiyQ8wQlunfNKPdpFCs1qNmwdiLnXiiySi5O0Et0mjxcDE6nCwE5to=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736333870; c=relaxed/simple;
	bh=O4AD4QgqGBLgZPFu0ph4g6ZZZp03qAQf9VkU6O77iaQ=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version:Content-Type; b=p+xqgLi2sGJXO5s3OVwxmUA/+w0roWq1CzkupROv2zooghLkpCfnA5f+8G9bEfzom/v1EzNQ9exvwSMMomC6NQQPA28myUyhnafpPWKGgPq0jcTEa47P1xsLjGsLQNzzbGdPuzjVT3HTqlHadxGYGLV2L6hD9uetUeInbhHHC4k=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=sntech.de; spf=pass smtp.mailfrom=sntech.de; dkim=pass (2048-bit key) header.d=sntech.de header.i=@sntech.de header.b=uChUI2wJ; arc=none smtp.client-ip=185.11.138.130
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=sntech.de
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=sntech.de
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sntech.de;
	s=gloria202408; h=Content-Transfer-Encoding:Content-Type:MIME-Version:
	References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Sender:Reply-To:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
	List-Subscribe:List-Post:List-Owner:List-Archive;
	bh=/v21PJ92BLiZLaAmySzflUsqw2duXejF1cLmBsDVtgo=; b=uChUI2wJmVcPzZGKbM1an/vu2x
	6hxl3i197uqlHZcgIguTOlS0VPQ9NvVaGnCBoJvCWtb9wA5NxEexO+5ZNt4FZFyRD3L2OEPKPgY/m
	LmKvG/VfGpeQ9HBAqHI65auUkT2sK5X2L8KaWQ4po0psz3qEaqeLfq2IcHCyO/ZvKyl4rz8cqaDHV
	5HpA21AIuTSeZzPFoAm4u4BTGjWsJ/VVUH18A7AWr8f+fjhM618FHAm6vJnzngTAb3mDhDA/o/k2b
	vfWqlBftJWv8mzzuBvjrrc/prYcqlY1Bt2o52KW6QTXwgLjY3ecCYk9ueSQ7PwSMGxkPqrpJGUSPb
	ZTOioeng==;
Received: from i53875aad.versanet.de ([83.135.90.173] helo=localhost.localdomain)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1tVTku-0004wu-FB; Wed, 08 Jan 2025 11:57:44 +0100
From: Heiko Stuebner <heiko@sntech.de>
To: Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Alexey Charkov <alchark@gmail.com>
Cc: Heiko Stuebner <heiko@sntech.de>,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Subject: Re: (subset) [PATCH v2 0/3] arm64: dts: rockchip: Add H96 Max V58 (RK3588 based TV box)
Date: Wed,  8 Jan 2025 11:57:33 +0100
Message-ID: <173633124859.2752317.14863192546901710024.b4-ty@sntech.de>
X-Mailer: git-send-email 2.45.2
In-Reply-To: <20250108-rk3588-h96-max-v58-v2-0-522301b905d6@gmail.com>
References: <20250108-rk3588-h96-max-v58-v2-0-522301b905d6@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit


On Wed, 08 Jan 2025 13:09:05 +0400, Alexey Charkov wrote:
> Add support for H96 Max V58: a compact TV box based on Rockchip
> RK3588 SoC [1] that ships with Android by default.
> 
> Note that there is no publicly available hardware documentation,
> nor vendor sources to be used as a reference, so this implementation
> is best effort based on poking around my board and staring at the
> decompiled stock DTB. It works for me, but improvement suggestions
> are very much welcome.
> 
> [...]

Applied, thanks!

[1/3] dt-bindings: arm: rockchip: Add H96 Max V58 TV box
      commit: 6e9efe826b02ccd68700be691ce9addbd5c81e40
[3/3] arm64: dts: rockchip: Add H96 Max V58 TV Box based on RK3588 SoC
      commit: b53864811b35247193856a45567d416b8341ae7d

I've just dropped the spdif bits from the board in patch3 to be
handled separately. (And moved the status in spi2 at the end of
the property list)


Best regards,
-- 
Heiko Stuebner <heiko@sntech.de>

