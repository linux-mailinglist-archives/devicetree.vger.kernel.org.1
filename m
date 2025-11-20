Return-Path: <devicetree+bounces-240772-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from dfw.mirrors.kernel.org (dfw.mirrors.kernel.org [IPv6:2605:f480:58:1:0:1994:3:14])
	by mail.lfdr.de (Postfix) with ESMTPS id AA7D6C755C4
	for <lists+devicetree@lfdr.de>; Thu, 20 Nov 2025 17:30:16 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.mirrors.kernel.org (Postfix) with ESMTPS id 005F54E1B07
	for <lists+devicetree@lfdr.de>; Thu, 20 Nov 2025 16:24:08 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 6E14333C534;
	Thu, 20 Nov 2025 16:24:03 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="fGfUdH4N"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 43FC03043BC;
	Thu, 20 Nov 2025 16:24:03 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763655843; cv=none; b=CbbS8PtkAxxhbKtikGtxmZhfAVQNQkcKDxsB6DbGfd0mYg1HzqgcuzDReOuxkYnjlYQgw+0Gv2WWnQz7FfDax8+v1YXBf3NstphHo/0rxy3LBNjd+seXQqUKbiBXisJAUisdYxXIbTuFztCwFlnTeX9rxJHFDnF1wrb0L7ot4PQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763655843; c=relaxed/simple;
	bh=yE0HGlgQMyWuwGMkFr6IkxtA9ubA8hTIp9QK5QW4fME=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=QGVrKdNTAEHJRUKTXHdg8Isq5D/FTjH4V9qArrkRmk+lif4HQce6yg7fkTN7Q9AKPHYd9vv+asv4PtgrvA1DIEKHByWSDHZZLTjpXn5F/fgdAnj6v7dUGdvBTpKLH+O2iv6QSktkN7r68N6njH/e7KlXbMungSWKbMsQZZa4Ldk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=fGfUdH4N; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id B2303C4CEF1;
	Thu, 20 Nov 2025 16:24:02 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1763655843;
	bh=yE0HGlgQMyWuwGMkFr6IkxtA9ubA8hTIp9QK5QW4fME=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=fGfUdH4N8DBhfHMzjUXtnDrndgpJLKWpXH2M3I3XWXHFybjcnAn7THGLEi3MYw+sX
	 ACYKPl5rrenNysrfVwAxeBgtqYzw999iEX8IR2j9NYaqxSzfEE8R2VdZQwXRFxxix+
	 VEZM9ub/Q1aD9E2/1+wM9opZjOy8bED6AJGBbdmHV3Qhvy0O/FdaFZKfGibktmyicX
	 wrb/ZotulBGSZ1kiE+/8SnZmyurulCCjHUgb5mrH9j9sa2K15Wwg1ifgZ0vzNZgn8r
	 1eSOikdPs29MFFovDEq4cQQ0AjxEGiOcnRXNTGH8urada9d02J2jS0S08iJw+hoo5Y
	 EIYPA9L/s0YBg==
Date: Thu, 20 Nov 2025 10:24:01 -0600
From: "Rob Herring (Arm)" <robh@kernel.org>
To: Hal Feng <hal.feng@starfivetech.com>
Cc: E Shattow <e@freeshell.de>, devicetree@vger.kernel.org,
	Viresh Kumar <viresh.kumar@linaro.org>,
	Krzysztof =?utf-8?Q?Wilczy=C5=84ski?= <kwilczynski@kernel.org>,
	Manivannan Sadhasivam <mani@kernel.org>,
	Lorenzo Pieralisi <lpieralisi@kernel.org>,
	Emil Renner Berthing <emil.renner.berthing@canonical.com>,
	Heinrich Schuchardt <heinrich.schuchardt@canonical.com>,
	Palmer Dabbelt <palmer@dabbelt.com>,
	linux-riscv@lists.infradead.org,
	"Rafael J . Wysocki" <rafael@kernel.org>,
	linux-kernel@vger.kernel.org, Conor Dooley <conor+dt@kernel.org>,
	Paul Walmsley <pjw@kernel.org>, Albert Ou <aou@eecs.berkeley.edu>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Bjorn Helgaas <bhelgaas@google.com>
Subject: Re: [PATCH v3 2/5] dt-bindings: riscv: Add StarFive JH7110S SoC and
 VisionFive 2 Lite board
Message-ID: <176365584062.1484282.2905349748406374384.robh@kernel.org>
References: <20251120082946.109378-1-hal.feng@starfivetech.com>
 <20251120082946.109378-3-hal.feng@starfivetech.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20251120082946.109378-3-hal.feng@starfivetech.com>


On Thu, 20 Nov 2025 16:29:43 +0800, Hal Feng wrote:
> Add device tree bindings for the StarFive JH7110S SoC
> and the VisionFive 2 Lite board equipped with it.
> 
> JH7110S SoC is an industrial SoC which can run at -40~85 degrees centigrade
> and up to 1.25GHz. Its CPU cores and peripherals are the same as
> those of the JH7110 SoC.
> 
> VisionFive 2 Lite boards have SD card version (default) and eMMC version,
> which are called "VisionFive 2 Lite" and "VisionFive 2 Lite eMMC"
> respectively.
> 
> Reviewed-by: Heinrich Schuchardt <heinrich.schuchardt@canonical.com>
> Signed-off-by: Hal Feng <hal.feng@starfivetech.com>
> ---
>  Documentation/devicetree/bindings/riscv/starfive.yaml | 6 ++++++
>  1 file changed, 6 insertions(+)
> 

Acked-by: Rob Herring (Arm) <robh@kernel.org>


