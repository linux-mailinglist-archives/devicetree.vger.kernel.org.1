Return-Path: <devicetree+bounces-46406-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id A6B5D86938F
	for <lists+devicetree@lfdr.de>; Tue, 27 Feb 2024 14:46:48 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id D7D471C210A2
	for <lists+devicetree@lfdr.de>; Tue, 27 Feb 2024 13:46:47 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B55B8145FE8;
	Tue, 27 Feb 2024 13:45:07 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="WDasZ0oe"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9063B145FE6
	for <devicetree@vger.kernel.org>; Tue, 27 Feb 2024 13:45:07 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1709041507; cv=none; b=BArTjxIK6h5f8wNvEEJ0c4eZZPNRoyRIPfjS9L4ejuc9KJcFWBCKfcw5cgOokLZI3lfMs8vhL0jY9Aq6Rs5yEh7PArb9dFaYNbAkwLaBgf4wJjwqrs+EQjy0/2wMh4c9ugtzywJN13UrMHpXhLd0luTQnxRQFFhBpxkryuyOPzk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1709041507; c=relaxed/simple;
	bh=RQFlK7I38yLV5P8MnK0KsO0SNeGJ/DT5PWW0DTLUyX4=;
	h=Date:Content-Type:MIME-Version:From:To:Cc:In-Reply-To:References:
	 Message-Id:Subject; b=FmGXLtjiCgdbP5bkiCjEI4MZyJ8MRqM6gzm6FFueig56zIh0DfHdVrAEDndThC6o5eIFpEFBIcQHY/nrQKjGQvEkex+HLy0Fd7FJCb7ecNBVidtWCyNPyV5yQn7leWziK3BJ/oJBY3fJIJHGGDiHZKhcdmqqQKYqFm8+QSZug+4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=WDasZ0oe; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 4BD5DC433F1;
	Tue, 27 Feb 2024 13:45:07 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1709041507;
	bh=RQFlK7I38yLV5P8MnK0KsO0SNeGJ/DT5PWW0DTLUyX4=;
	h=Date:From:To:Cc:In-Reply-To:References:Subject:From;
	b=WDasZ0oeO1jIDjCyMAUtkIw0a5OqnNmD0GA8lSmHvQGvRAOhGo9tyqVW72xKaVdwM
	 CCIjQCg1cDb/QKjsSydo/NFyOk/x3UtFZRYZhvB4M8rIIQs3IwmlGXKFO2kGJg8WMK
	 D1g0wouFAwTHfxFbC7fFSqq5Cxq5GtuK7aa+HLGMCMwxH3o89HmHpicpKQaqOHt7mQ
	 GNfj/++gO1h6IUPeB3+uWm2ALuRGM2C3Ungn3pQdzhtO8KEHntFOMwAEuztcozYt7N
	 qBolgQxIY8U41gs0OJzXM6HlAYQxi3E4Pmu7YqDd2W23JXrOjEcnbHJn57T/odV0dA
	 jVTbr2QAqBo1w==
Date: Tue, 27 Feb 2024 07:45:06 -0600
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
From: Rob Herring <robh@kernel.org>
To: =?utf-8?q?Uwe_Kleine-K=C3=B6nig?= <ukleinek@debian.org>
Cc: Conor Dooley <conor+dt@kernel.org>, Rob Herring <robh+dt@kernel.org>, 
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, 
 Heiko Stuebner <heiko@sntech.de>, linux-rockchip@lists.infradead.org, 
 devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org
In-Reply-To: <cover.1709034476.git.ukleinek@debian.org>
References: <cover.1709034476.git.ukleinek@debian.org>
Message-Id: <170904127405.3703837.16422930909447111254.robh@kernel.org>
Subject: Re: [PATCH 0/2] arm64: Add basic support for QNAP TS-433


On Tue, 27 Feb 2024 12:52:35 +0100, Uwe Kleine-König wrote:
> Hello,
> 
> this is an initial dts to support QNAP's TS-433 NAS. It's enough to
> start the debian installer with a custom built kernel (original Debian
> kernel fails to open a console, didn't debug that yet) and access HD,
> eMMC, RTC and network.
> 
> There are still some missing bits and pieces, but to make people aware
> there are efforts to support this machine and so prevent duplicate work,
> I think it makes sense to add the dts in its current form already.
> 
> Best regards
> Uwe
> 
> Uwe Kleine-König (2):
>   dt-bindings: arm: rockchip: Add QNAP TS-433
>   arm64: dts: rockchip: Add basic support for QNAP TS-433
> 
>  .../devicetree/bindings/arm/rockchip.yaml     |  5 ++
>  arch/arm64/boot/dts/rockchip/Makefile         |  1 +
>  .../boot/dts/rockchip/rk3568-qnap-ts433.dts   | 86 +++++++++++++++++++
>  3 files changed, 92 insertions(+)
>  create mode 100644 arch/arm64/boot/dts/rockchip/rk3568-qnap-ts433.dts
> 
> base-commit: 6613476e225e090cc9aad49be7fa504e290dd33d
> --
> 2.43.0
> 
> 


My bot found new DT warnings on the .dts files added or changed in this
series.

Some warnings may be from an existing SoC .dtsi. Or perhaps the warnings
are fixed by another series. Ultimately, it is up to the platform
maintainer whether these warnings are acceptable or not.

If you already ran DT checks and didn't see these error(s), then
make sure dt-schema is up to date:

  pip3 install dtschema --upgrade


New warnings running 'make CHECK_DTBS=y rockchip/rk3568-qnap-ts433.dtb' for cover.1709034476.git.ukleinek@debian.org:

arch/arm64/boot/dts/rockchip/rk3568-qnap-ts433.dtb: video-codec@fdea0400: 'interrupt-names' is a required property
	from schema $id: http://devicetree.org/schemas/media/rockchip-vpu.yaml#
arch/arm64/boot/dts/rockchip/rk3568-qnap-ts433.dtb: i2s@fe420000: reset-names:0: 'm' is not one of ['tx-m', 'rx-m']
	from schema $id: http://devicetree.org/schemas/sound/rockchip,i2s-tdm.yaml#






