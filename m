Return-Path: <devicetree+bounces-240945-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from dfw.mirrors.kernel.org (dfw.mirrors.kernel.org [142.0.200.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 6F043C77EF4
	for <lists+devicetree@lfdr.de>; Fri, 21 Nov 2025 09:35:58 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.mirrors.kernel.org (Postfix) with ESMTPS id 18F794E82EF
	for <lists+devicetree@lfdr.de>; Fri, 21 Nov 2025 08:34:23 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 7152B33C502;
	Fri, 21 Nov 2025 08:33:49 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="YKYrCbdm"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8BE0A1F5617;
	Fri, 21 Nov 2025 08:33:48 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763714028; cv=none; b=b2h+glVvmn0q7mJ9vosYhNb8WTH6y5jg7/puTOrPJwu7Md5JwDLJ6nvp95vNjZ6IqFi249EKYxLKGshA5Ae+mnmwFZibaYxufIjbw0S+Sq/iVFVC3O1I43X2VisElRtFAMf+RccPL3cF6WlRTaaGq2praWs8+puhRKm7EwTNkyc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763714028; c=relaxed/simple;
	bh=ZPsqcevIgTno6vu61sURJjbVQM3tSWJ1lNvB7e9wHBc=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=CzeVSBAmQQC/ySmKsLKu4623Gw/8Fcfr+rH7EdF6BbY/JpPGAi85TeAaEfHtswmHUl6Gt52YtDQtHM/v4RQ3wlHApZeEgdMg420Yy7PYRSKaQ3O5AHSxr/w/uuBx41DZWHsnr74pr+CN7QMpR7NvAEp0g5jCTuKmJb5rvBjT7J0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=YKYrCbdm; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 148F9C4CEF1;
	Fri, 21 Nov 2025 08:33:46 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1763714027;
	bh=ZPsqcevIgTno6vu61sURJjbVQM3tSWJ1lNvB7e9wHBc=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=YKYrCbdmILd20DSPNECohEACj0WcBraX+chq8+yzib/0dKy0Gq1NkEubAh6fHXnff
	 ijW+rFE1aQ8KsBgPKJ+tOe0NWzwD8aeoVFXyNuLc50nWCHz0VpCr1iCU7X426n2LdT
	 icXUWBeBjedtN79zTrZzdMUK8XyErobP7SPGXQDMm5WYFsYdfjJRG2S5EZ4zxXV7nr
	 SUsSqB5qr2ZDqYZMPbicz8SFyMDpaxV3N59m5AfKld9IAr9JtmX/Ehdx5n7jkq8T6q
	 hEzJa5i4O7Zamk7LtAXKgE49J2H5x0hPhG7LM7FRvDLGg6WgZ4mvFSTDEI1VY6wHqD
	 jOeapskdpqWjA==
Date: Fri, 21 Nov 2025 09:33:45 +0100
From: Krzysztof Kozlowski <krzk@kernel.org>
To: Christian Marangi <ansuelsmth@gmail.com>
Cc: Liam Girdwood <lgirdwood@gmail.com>, Mark Brown <broonie@kernel.org>, 
	Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
	Conor Dooley <conor+dt@kernel.org>, Jaroslav Kysela <perex@perex.cz>, Takashi Iwai <tiwai@suse.com>, 
	Matthias Brugger <matthias.bgg@gmail.com>, 
	AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>, Cyril Chao <Cyril.Chao@mediatek.com>, 
	Arnd Bergmann <arnd@arndb.de>, 
	=?utf-8?B?TsOtY29sYXMgRi4gUi4gQS4=?= Prado <nfraprado@collabora.com>, Kuninori Morimoto <kuninori.morimoto.gx@renesas.com>, 
	linux-sound@vger.kernel.org, devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
	linux-arm-kernel@lists.infradead.org, linux-mediatek@lists.infradead.org, upstream@airoha.com
Subject: Re: [PATCH v2 1/3] ASoC: dt-bindings: Add Airoha AN7581 with WM8960
 YAML
Message-ID: <20251121-hospitable-tacky-cuckoo-b53af2@kuoka>
References: <20251121054537.25796-1-ansuelsmth@gmail.com>
 <20251121054537.25796-2-ansuelsmth@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
In-Reply-To: <20251121054537.25796-2-ansuelsmth@gmail.com>

On Fri, Nov 21, 2025 at 06:44:59AM +0100, Christian Marangi wrote:
> Add documentation for Airoha AN7581 with WM8960 i2c codec YAML schema.

I don't see WM8690 nowhere in the binding, so that's a bit confusing. It
feels like you mention here entire sound card description but binding is
for specific component (AFE).

Well, anyway, probably not worth to resend, so:

Reviewed-by: Krzysztof Kozlowski <krzk@kernel.org>

Best regards,
Krzysztof


