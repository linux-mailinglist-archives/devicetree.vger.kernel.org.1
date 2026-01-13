Return-Path: <devicetree+bounces-254313-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [IPv6:2600:3c04:e001:36c::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 25861D1722F
	for <lists+devicetree@lfdr.de>; Tue, 13 Jan 2026 08:58:49 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 33274301E688
	for <lists+devicetree@lfdr.de>; Tue, 13 Jan 2026 07:58:48 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 712B130FF2E;
	Tue, 13 Jan 2026 07:58:45 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="I4ZTpJxy"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4DE4626F2B9;
	Tue, 13 Jan 2026 07:58:45 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768291125; cv=none; b=c/7H3hAyzZf6t3nCWmGE58SX6NrJfK0CxHmkQaynahbrl4VF8hT3iSRPtT5rm26zMp7YHvA6bT4vvWV5MmD0GWvoauReEdu8e1TZDHx0HrXkiO2Fyg3cVjDQvOUGNEO0a0D4Grb6zAujzKepjnwBD5A5x8n/9tNl8I64cWlgkNE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768291125; c=relaxed/simple;
	bh=3lXAgY/S95JPbtfa3piTX96xIrT9coW1vZhiDkowGIE=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=AeKblQ0FN8d9xDUql1/35k8ashgw2wHf59+XW2d703hxqZ+wWlh/XbrxJOGtqZpgNpHKuEp/5gt+89K/5faPgj0s4xmMaKLwwXdOwV6vWXn0KIwRD6+gCCg63IkKPm+pD7Nedn9ii8MQpzFL+f5FvdOBWV1Hs/T4YQnQX9YAOwc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=I4ZTpJxy; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 730F9C116C6;
	Tue, 13 Jan 2026 07:58:44 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1768291125;
	bh=3lXAgY/S95JPbtfa3piTX96xIrT9coW1vZhiDkowGIE=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=I4ZTpJxy5sukEisu2/F6nxdjmlQMYMKB07601B+sXZYup51yVfBRBEptmT4q8xKYt
	 bKzrM1QWX1/hQQB6L6Il1B6IthUHCJ3Osa54LOetCgBmrPqRQaQ9KEtOL6rmBRFsWA
	 Ss8ia8LioYltC2zZmRrhMmhKsyLWi8g+8VKFPpmCd0rUsFywe5Du+4jBggBei/lMOK
	 d65s7Hz62kSHTaL/t6uXeJqbISMdD1v7AF86VLbYFUkBZpXpu0wtzt4TOKi+SkPvSY
	 AdD6BDWJEsdSZTiCki4VC+sQsch4YWExR8dQrDTrQae4gIRrgUNuRowaDm6Oo9z+86
	 V7+wm7kCH3geA==
Date: Tue, 13 Jan 2026 08:58:42 +0100
From: Krzysztof Kozlowski <krzk@kernel.org>
To: Joseph Chen <chenjh@rock-chips.com>
Cc: Conor Dooley <conor+dt@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Lee Jones <lee@kernel.org>, Liam Girdwood <lgirdwood@gmail.com>, 
	Mark Brown <broonie@kernel.org>, Rob Herring <robh@kernel.org>, Heiko Stuebner <heiko@sntech.de>, 
	devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
	linux-kernel@vger.kernel.org, linux-rockchip@lists.infradead.org
Subject: Re: [PATCH v3 1/3] dt-bindings: mfd: Add rk801 binding
Message-ID: <20260113-funny-utopian-doberman-1a55b7@quoll>
References: <20260112124351.17707-1-chenjh@rock-chips.com>
 <20260112124351.17707-2-chenjh@rock-chips.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
In-Reply-To: <20260112124351.17707-2-chenjh@rock-chips.com>

On Mon, Jan 12, 2026 at 08:43:49PM +0800, Joseph Chen wrote:
> Add DT binding document for Rockchip's RK801 PMIC
> 
> Signed-off-by: Joseph Chen <chenjh@rock-chips.com>
> ---
>  .../bindings/mfd/rockchip,rk801.yaml          | 197 ++++++++++++++++++
>  1 file changed, 197 insertions(+)
>  create mode 100644 Documentation/devicetree/bindings/mfd/rockchip,rk801.yaml

Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>

Best regards,
Krzysztof


