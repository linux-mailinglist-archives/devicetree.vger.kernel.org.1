Return-Path: <devicetree+bounces-134880-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id F38359FEDF7
	for <lists+devicetree@lfdr.de>; Tue, 31 Dec 2024 09:27:26 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id EAC6218813EC
	for <lists+devicetree@lfdr.de>; Tue, 31 Dec 2024 08:27:28 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 1DED818C004;
	Tue, 31 Dec 2024 08:27:21 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Bs7F/8y9"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E91BA2A1D7;
	Tue, 31 Dec 2024 08:27:20 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1735633641; cv=none; b=P1asZcW7TYU3Z1/MWtizLiuRp3Qzjd9RoIbevnVwmXlXCQsRxFCNo11YO2aeWgA/Wf3SWQwL4H+psMVUPJ8PelEb1hjMSVZHgySsr3luVN5C7bj4P8egVOx65GRH0P7zJb03mfqslv2y2dUrp20oEcTapW/W9TUnD+Xlzm9qbwY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1735633641; c=relaxed/simple;
	bh=7dMKvb0VzM45X+Diev04KcZdImkN8+DaAtfIWIBVlfk=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=oTKi3gKv5HLPKY885jl/zTs5c+NyIDs0cwsI5A/iG6gHK+IAhC2gymrs1rxXzb+zClyraH4/vT98wNrDZgANMRcalSMDqTy5Hw5Mm2BjT1OdjynRglgpyOCJrgrPZRT1PZBva8rrBQceXFrMDmTOFiY1vrc8dXZMQG0eOYxpDOM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Bs7F/8y9; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 9800AC4CED6;
	Tue, 31 Dec 2024 08:27:19 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1735633640;
	bh=7dMKvb0VzM45X+Diev04KcZdImkN8+DaAtfIWIBVlfk=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=Bs7F/8y9eqcrDElleyJUV5huGjXwKC4uv46mKq+8LmkjDFhIwpd6c7voh+t3hao4U
	 fjvz89apgRyeriA49YajwyP5kgP9bPbXGAb6/8m8KkpZgVed/qO6Sw1kWxiQDQScm9
	 OXeQs14OTP5wN26C6nF2ju7DLEcZyZM9oLUy8vP85s9LjLnOAzqY/955W4tI7hk2Wq
	 8TvEIyskjPp0qzrqjAvLN2df0ZasJNK6Y4kgrMvfwHc4LkmuzC08H7Mx+t9IrWurMh
	 AchYD2Q/xvEYQT0Osi3/8uJyoJfeCqndxRTawKgMUwCU2kKVueFaWwbF/VUHhKr4C2
	 C3OT348bBwu7g==
Date: Tue, 31 Dec 2024 09:27:16 +0100
From: Krzysztof Kozlowski <krzk@kernel.org>
To: "Karl.Li" <karl.li@mediatek.com>
Cc: Jassi Brar <jassisinghbrar@gmail.com>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Matthias Brugger <matthias.bgg@gmail.com>, 
	AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>, linux-kernel@vger.kernel.org, devicetree@vger.kernel.org, 
	linux-arm-kernel@lists.infradead.org, linux-mediatek@lists.infradead.org, 
	Chungying Lu <chungying.lu@mediatek.com>, Chien-Chih Tseng <Chien-Chih.Tseng@mediatek.com>, 
	Andy Teng <Andy.Teng@mediatek.com>, Chen-Yu Tsai <wenst@chromium.org>, 
	Project_Global_Chrome_Upstream_Group@mediatek.com
Subject: Re: [PATCH v2 1/3] dt-bindings: mailbox: mediatek: Add apu-mailbox
 dt-bindings
Message-ID: <vsdkjbedy5zm6iz6jtjgoynove2u6tgd4al3b6v5xzvrr3twm6@cmy6poq3le53>
References: <20241230034446.1195728-1-karl.li@mediatek.com>
 <20241230034446.1195728-2-karl.li@mediatek.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
In-Reply-To: <20241230034446.1195728-2-karl.li@mediatek.com>

On Mon, Dec 30, 2024 at 11:43:35AM +0800, Karl.Li wrote:
> From: Karl Li <karl.li@mediatek.com>
> 
> Add devicetree binding for apu-mailbox.

A nit, subject: drop second/last, redundant "dt-bindings". The
"dt-bindings" prefix is already stating that these are bindings.
See also:
https://elixir.bootlin.com/linux/v6.7-rc8/source/Documentation/devicetree/bindings/submitting-patches.rst#L18

I already asked for this.

> 
> MediaTek APU (AI Processing Unit) is a microcontroller unit
> designed for AI acceleration tasks. The MediaTek APU-Mailbox
> facilitates communication with the APU microcontroller.

Please wrap commit message according to Linux coding style / submission
process (neither too early nor over the limit):
https://elixir.bootlin.com/linux/v6.4-rc1/source/Documentation/process/submitting-patches.rst#L597




> 
> Signed-off-by: Karl Li <karl.li@mediatek.com>
> ---
>  .../mailbox/mediatek,apu-mailbox.yaml         | 60 +++++++++++++++++++
>  1 file changed, 60 insertions(+)
>  create mode 100644 Documentation/devicetree/bindings/mailbox/mediatek,apu-mailbox.yaml
> 
> diff --git a/Documentation/devicetree/bindings/mailbox/mediatek,apu-mailbox.yaml b/Documentation/devicetree/bindings/mailbox/mediatek,apu-mailbox.yaml
> new file mode 100644
> index 000000000000..fdb0dec5fb78
> --- /dev/null
> +++ b/Documentation/devicetree/bindings/mailbox/mediatek,apu-mailbox.yaml


Use compatible as filename.


Best regards,
Krzysztof


