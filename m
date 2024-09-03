Return-Path: <devicetree+bounces-99250-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 685A796948A
	for <lists+devicetree@lfdr.de>; Tue,  3 Sep 2024 09:03:56 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 1DAC31F23D75
	for <lists+devicetree@lfdr.de>; Tue,  3 Sep 2024 07:03:56 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 002B91D47C0;
	Tue,  3 Sep 2024 07:03:51 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="p6lOhmw6"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CAEA61CE6EA;
	Tue,  3 Sep 2024 07:03:50 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1725347030; cv=none; b=My+j5jiCiKihSKrpge77bw5kr7LE5slixfN5RNSxaEkrQDRub6W961J76GQGhYerzHqpIkLguuZEnAYcwkLzFBjFEzUFPyfG+LqXNr/v+LZ+20wxAQCOzCjXQZU2yIEvcYLc8ww63ERE+jqwsmUGkTmbw9EYlEyEp+bc41hqjjM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1725347030; c=relaxed/simple;
	bh=M8yZOI4ljHQtAYuyJ+dk09AFSTWeKdrHCSuAWizWcPM=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=VqIkA7F3K0CDXdxtQ/drzIRa9hWhXZ+HPME59TuTtGeek6+bGy4XTJ2TV39I3rFegFydTULC4lHPzwK2GK+a+6hvR8KSr3bHg9xrLFrj6FzrRqbK5Bk0psMnwOPlvLQ8yLg7OmdfUY9SPKV7zLVxAer4c9139j+wSKP1CgIMUrw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=p6lOhmw6; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 2930DC4CEC5;
	Tue,  3 Sep 2024 07:03:48 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1725347030;
	bh=M8yZOI4ljHQtAYuyJ+dk09AFSTWeKdrHCSuAWizWcPM=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=p6lOhmw6WTmLY2AT5+w2ujvjMJOinl3VUX//mjFmq2SVoyAlrl4wUHtuTq8toYaGd
	 yG8v4YiuP1xtTX/QqqxFaLCMytY2BDvaQsiRqeVitmK8lpDOLZaMW9oIRVgMClMduI
	 uaXE2q8ZGNXIj6kGH6fHbs/TCWMkNAFg1/06IOHgyBFxH/PZM8dmdbISA6KAJBRYFa
	 jAoC3K59Gfw8zkNuh/Ec5P2ojs/VS2takBXlJXRb70xUZp6TQL15i+61c/cVDAcZ9+
	 iAtOiHXVO+xZ2YmBcxX3rJ1EN3egG9TCtfwXuhM8sGc2GyFji/w5RN/HrjCUzJFzcM
	 1gw+5w67M6ISA==
Date: Tue, 3 Sep 2024 09:03:45 +0200
From: Krzysztof Kozlowski <krzk@kernel.org>
To: Jianeng Ceng <cengjianeng@huaqin.corp-partner.google.com>
Cc: angelogioacchino.delregno@collabora.com, matthias.bgg@gmail.com, 
	robh@kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org, knoxchiou@google.com, 
	hsinyi@google.com, dri-devel@lists.freedesktop.org, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org
Subject: Re: [PATCH v1 2/2] arm64: dts: mediatek: Add MT8186 Ponyta
 Chromebooks
Message-ID: <semedgkhyuapu6c3lpinqqm5iuu6aabhjlr7txran3xnlcupwq@qm6baypqa6oy>
References: <20240902125502.1844374-1-cengjianeng@huaqin.corp-partner.google.com>
 <20240902125502.1844374-3-cengjianeng@huaqin.corp-partner.google.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
In-Reply-To: <20240902125502.1844374-3-cengjianeng@huaqin.corp-partner.google.com>

On Mon, Sep 02, 2024 at 08:55:02PM +0800, Jianeng Ceng wrote:
> MT8186 ponyta, known as huaqin custom lable, is a
> MT8186 based laptop. It is based on the "corsola" design.
> It includes LTE, touchpad combinations.
> 
> Signed-off-by: Jianeng Ceng <cengjianeng@huaqin.corp-partner.google.com>
> ---
>  arch/arm64/boot/dts/mediatek/Makefile         |  2 +
>  .../mediatek/mt8186-corsola-ponyta-sku0.dts   | 24 ++++++++++
>  .../mediatek/mt8186-corsola-ponyta-sku1.dts   | 27 ++++++++++++
>  .../dts/mediatek/mt8186-corsola-ponyta.dtsi   | 44 +++++++++++++++++++

This does not even build... never tested.

Best regards,
Krzysztof


