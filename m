Return-Path: <devicetree+bounces-136710-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 2E728A05E7A
	for <lists+devicetree@lfdr.de>; Wed,  8 Jan 2025 15:22:20 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id D9BCA1881B52
	for <lists+devicetree@lfdr.de>; Wed,  8 Jan 2025 14:22:22 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 5902214B06C;
	Wed,  8 Jan 2025 14:22:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="QzAwG8Mo"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3176E8F6B;
	Wed,  8 Jan 2025 14:22:15 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736346136; cv=none; b=IXzw6JUadhlIQUik/5ztnVBN2hxwvYRgvaeMNk29ol7/UcEfhqYKWU2pLmS/lqIKhhGCZ+HoyGWj31U3XSyEBdQGP1zd2Du4kbBQXK0G6b9dC9GlGo83yUHSSDuH4VXy/hCKe7QWEifWtOT8gn0+TDuRNbroSfCwYukNNkR6cTM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736346136; c=relaxed/simple;
	bh=iX4lsV9zhOZhqTmXiluc6IMV5lTIKqwzpae/1ZkwS+E=;
	h=Date:Content-Type:MIME-Version:From:Cc:To:In-Reply-To:References:
	 Message-Id:Subject; b=kugJy7728ML5bKi5gemuCLrkdyYll+Sg/KojZp5aqUYfLF8+DB6H6P1KzeAYXyGwELjD6QhBIP8+B6y3IfhKtHO0VVIGQGQXD0zOAJoV4hNhppoJWi/eFcRsOX6lU9r7/Ce2+rM3nx/4O6JNN4xrwiGYaIT9kNH/kLqg07lU8/I=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=QzAwG8Mo; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 92BE1C4CEDD;
	Wed,  8 Jan 2025 14:22:14 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1736346135;
	bh=iX4lsV9zhOZhqTmXiluc6IMV5lTIKqwzpae/1ZkwS+E=;
	h=Date:From:Cc:To:In-Reply-To:References:Subject:From;
	b=QzAwG8MoTHdx7Q7UIx5StaagwtCHwPnyvCRCXhUdoz6SmXTlQoO3+TQENRP6w+yO6
	 KGL1n2i2mRuN2ca5CEjzkTBgfxZNLSqT9YUMU2POk/pZKlzIyzx/GYVfGwwE/24aUV
	 vkCioNwZ4Cqc8m7o+nfAp3/wsRevbFa97OoibXwH6W39nnAAkqOKDeAjmgGh92cpLF
	 96kc6x2/cOMIBFTXqAYuEt+wCshqrUgmgbYIgoY+RSXL7Ot6XCj2mwfn4gaFW186Kg
	 8nNHha0s9zNWgMVF4yXLvlUPvMngc/DNh2anLKxaxIrUnX2VRpde5QU8DSksrHEW1X
	 dOgWDAl57MZ0A==
Date: Wed, 08 Jan 2025 08:22:12 -0600
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
From: "Rob Herring (Arm)" <robh@kernel.org>
Cc: Conor Dooley <conor+dt@kernel.org>, Dinh Nguyen <dinguyen@kernel.org>, 
 devicetree@vger.kernel.org, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 linux-kernel@vger.kernel.org
To: niravkumar.l.rabara@intel.com
In-Reply-To: <20250108112834.2880709-1-niravkumar.l.rabara@intel.com>
References: <20250108112834.2880709-1-niravkumar.l.rabara@intel.com>
Message-Id: <173634584266.4189204.11167110536681373948.robh@kernel.org>
Subject: Re: [PATCH] arm64: dts: socfpga: agilex5: add qspi flash node


On Wed, 08 Jan 2025 19:28:34 +0800, niravkumar.l.rabara@intel.com wrote:
> From: Niravkumar L Rabara <niravkumar.l.rabara@intel.com>
> 
> Add Micron qspi nor flash node for Intel SoCFPGA Agilex5.
> 
> Signed-off-by: Niravkumar L Rabara <niravkumar.l.rabara@intel.com>
> ---
>  .../boot/dts/intel/socfpga_agilex5_socdk.dts  | 33 +++++++++++++++++++
>  1 file changed, 33 insertions(+)
> 


My bot found new DTB warnings on the .dts files added or changed in this
series.

Some warnings may be from an existing SoC .dtsi. Or perhaps the warnings
are fixed by another series. Ultimately, it is up to the platform
maintainer whether these warnings are acceptable or not. No need to reply
unless the platform maintainer has comments.

If you already ran DT checks and didn't see these error(s), then
make sure dt-schema is up to date:

  pip3 install dtschema --upgrade


New warnings running 'make CHECK_DTBS=y intel/socfpga_agilex5_socdk.dtb' for 20250108112834.2880709-1-niravkumar.l.rabara@intel.com:

arch/arm64/boot/dts/intel/socfpga_agilex5_socdk.dtb: flash@0: Unevaluated properties are not allowed ('cdns,block-size', 'cdns,page-size' were unexpected)
	from schema $id: http://devicetree.org/schemas/mtd/jedec,spi-nor.yaml#






