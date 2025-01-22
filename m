Return-Path: <devicetree+bounces-140189-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 96D95A18D28
	for <lists+devicetree@lfdr.de>; Wed, 22 Jan 2025 08:55:03 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 72A3018845BA
	for <lists+devicetree@lfdr.de>; Wed, 22 Jan 2025 07:55:07 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 979351C1F23;
	Wed, 22 Jan 2025 07:54:58 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="PulrbTE6"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6EA7533E4;
	Wed, 22 Jan 2025 07:54:57 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1737532498; cv=none; b=s2CK0KQ4rwF2wDMFLDinbZABG6+1qpZh1awaTz9fCsoDd94SQT6VclFiVBYP26Py5n8FdntuxGdUZ4LSipbl92SLEmM+X2zTtSJTw11N1AdkgACLgBQN3m6EHi3BlWAFToUtu2d90kee9yhuJztx2m4OKC8qzhPEvBzrjiKWvqk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1737532498; c=relaxed/simple;
	bh=DS6LctAEbb86wdU+xIObFSbsxNIQXD0zFVuUopbBhSU=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=W8sLQuedkHJvU4D5eoJmbH9xtvOnhP4w5MkiXtSn3YPlRkKnY9fNYsduOYt9TA7P9SfQwDXkaB4LRccTMXwO95d0QVOvCks3mDxEdMpn5Mew2wCK3C0WRg87Xy4H1yAuUBK2Kxu9c7Lfsz6LZHGKXRQF1eypa0l2L0C7Hz519yw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=PulrbTE6; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 4CEB8C4CED6;
	Wed, 22 Jan 2025 07:54:57 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1737532497;
	bh=DS6LctAEbb86wdU+xIObFSbsxNIQXD0zFVuUopbBhSU=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=PulrbTE6g2iDQO3tZkVzV6r9hofz+rdLvtPZoXz/HqrSx8WreicvBiya25B2KD2XV
	 8QjKtbeqVyF8EuKFyjQzlqP3OflmIEuBWBi1a2zXerqtfstshGa63g5XsGxlKpI5bA
	 4JX3y6Zc5vTD6tGYRchqvSCMRMa3KwbFSdoEQwIBSgb1CG00rWRAL0LmZbfTzLqL5Z
	 gTnwg4R5Iya1CoOYWCz5pvBxsA0T4OzdlMw0L7kkHekJS+wsJIjN0hIxyGak2PZ7Tu
	 wQ783czlWRQ7c+CG614lqSxuX4uP8X9+DLeGG7tl/lxeO+XTEcP+GXbCVwu2dcbgc7
	 cS8OB41qVUQYQ==
Date: Wed, 22 Jan 2025 08:54:54 +0100
From: Krzysztof Kozlowski <krzk@kernel.org>
To: Marc Kleine-Budde <mkl@pengutronix.de>
Cc: Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Maxime Coquelin <mcoquelin.stm32@gmail.com>, Alexandre Torgue <alexandre.torgue@foss.st.com>, 
	kernel@pengutronix.de, devicetree@vger.kernel.org, 
	linux-stm32@st-md-mailman.stormreply.com, linux-arm-kernel@lists.infradead.org, 
	linux-kernel@vger.kernel.org, Leonard =?utf-8?B?R8O2aHJz?= <l.goehrs@pengutronix.de>
Subject: Re: [PATCH stm32-next v3 2/2] ARM: dts: stm32: lxa-fairytux2: add
 Linux Automation GmbH FairyTux 2
Message-ID: <20250122-thoughtful-starfish-of-grandeur-ee7919@krzk-bin>
References: <20250121-lxa-fairytux-v3-0-8d42d7d232fb@pengutronix.de>
 <20250121-lxa-fairytux-v3-2-8d42d7d232fb@pengutronix.de>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
In-Reply-To: <20250121-lxa-fairytux-v3-2-8d42d7d232fb@pengutronix.de>

On Tue, Jan 21, 2025 at 12:14:06PM +0100, Marc Kleine-Budde wrote:
> From: Leonard G=C3=B6hrs <l.goehrs@pengutronix.de>
>=20
> The Linux Automation GmbH FairyTux2 is a small Linux device based on
> an Octavo Systems OSD32MP153c SiP, that occupies just two slots on a
> DIN rail.
>=20
> The device contains an eMMC for storage, a gigabit Ethernet
> connection, a CAN bus and a RS485 transceiver.
>=20
> Add support for the lxa-fairytux2 generation 1 and 2 boards based on
> the STM32MP153c.
>=20
> Signed-off-by: Leonard G=C3=B6hrs <l.goehrs@pengutronix.de>
> Signed-off-by: Marc Kleine-Budde <mkl@pengutronix.de>
> ---
>  arch/arm/boot/dts/st/Makefile                      |   2 +
>  .../boot/dts/st/stm32mp153c-lxa-fairytux2-gen1.dts | 103 ++++++
>  .../boot/dts/st/stm32mp153c-lxa-fairytux2-gen2.dts | 147 ++++++++
>  .../arm/boot/dts/st/stm32mp153c-lxa-fairytux2.dtsi | 397 +++++++++++++++=
++++++
>  4 files changed, 649 insertions(+)

Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>

Best regards,
Krzysztof


