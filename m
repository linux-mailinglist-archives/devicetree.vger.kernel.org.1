Return-Path: <devicetree+bounces-140367-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 32909A19632
	for <lists+devicetree@lfdr.de>; Wed, 22 Jan 2025 17:12:37 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 78D1916584E
	for <lists+devicetree@lfdr.de>; Wed, 22 Jan 2025 16:12:35 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 91E5E214A83;
	Wed, 22 Jan 2025 16:12:32 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="eAkyegvA"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6773D2135B9;
	Wed, 22 Jan 2025 16:12:31 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1737562352; cv=none; b=tLn37lYtzfdITAU+zEm0GxxeKp0EsLlhmk64YNYc3KdaGscQ3xNQA/8Z1tBwy7pmL1PCB/ZN7v6W73whVLtMDa0/xR6zKtf93FwctHGfJjYZ4AQXd2b9FINUp67lWVzeeKwT4FwOpoRUZ2axdYxBBa4U0wYV+TKQ3YdHFkvRHtc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1737562352; c=relaxed/simple;
	bh=0QimwBK0cgXjaimRuuz1Y9NRWVe3Ak2Ys2b42kdgL50=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=jgajxBd3+2ovAqp8rpqTKUpx9jalxDJAfHD9tEU1rtEiDsQM2qFkYGUUowU6Ef5xHMOwlqOV4y8YesHcX771VULdC1V4xIoiF4t4/vgahOO4LUFtG5JjsycGz26FOy15eZ+fdwleP9bOC+QHgyu8dlO/SOr2A7lC3hNW/N2uE1A=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=eAkyegvA; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 45AEDC4CED2;
	Wed, 22 Jan 2025 16:12:29 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1737562351;
	bh=0QimwBK0cgXjaimRuuz1Y9NRWVe3Ak2Ys2b42kdgL50=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=eAkyegvAokUwR3nsoFLgsH1aCXyo/6LYy2MXL6qpKG3JT8SFPCfkovFZLGbDEdzqN
	 4Q60r+Epz91fxYVYEYtdebaXcq+dsy1tRh2dRLECJkykB7Rbqw33y1d4t6vzOgSNMt
	 2DBjjDWE1x/PTNv0lMyHYf3J2e9LxJhR/ox3DdkOWn2VS09J/K4Sp5fAEBJhJ3rNNZ
	 ihwPzcgVWyQ2aA7zdGlUWtH24Tqtutj74PV4NvPLgr20C0Jish1IbxbAiE/vUJDK6e
	 WSKcuG+BMJM5Ap2XbZnWFAB6oK4JRYq6KCS769eMk7QmCxnWkUJQH3mTrE463aOekg
	 Ep0Nq3WeRi6ow==
Date: Wed, 22 Jan 2025 17:12:26 +0100
From: Niklas Cassel <cassel@kernel.org>
To: Quentin Schulz <quentin.schulz@cherry.de>
Cc: Quentin Schulz <foss+kernel@0leil.net>, Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Heiko Stuebner <heiko@sntech.de>, Jagan Teki <jagan@edgeble.ai>,
	Michael Riesch <michael.riesch@wolfvision.net>,
	devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH v2 0/3] arm64: dts: rockchip: minimal support for Pre-ICT
 tester adapter for RK3588 Jaguar + add overlay tests
Message-ID: <Z5EY6uMmDCgfOzGO@ryzen>
References: <20250116-pre-ict-jaguar-v2-0-157d319004fc@cherry.de>
 <6dd64754-fe72-4288-9724-b3cdaf193b3b@cherry.de>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <6dd64754-fe72-4288-9724-b3cdaf193b3b@cherry.de>

On Wed, Jan 22, 2025 at 04:38:16PM +0100, Quentin Schulz wrote:
> So essentially, if SPL_ATF_NO_PLATFORM_PARAM is selected (the default for
> RK356x, RK3588, forced on on RK3308, enabled for the majority of RK3399
> boards, enabled for all RK3328 boards) the DT won't be passed to TF-A so no
> issue in terms of size on that side.
> If it is not selected, for TF-A < 2.4 (released 20201117, 4 years ago), a
> DTB bigger than 64KiB will crash TF-A.
> If it is not selected, for TF-A >= 2.4, a DTB bigger than 128KiB will result
> in TF-A not being able to read the DTB (for Rockchip, that means not being
> able to derive the UART settings (controller and baudrate) to use, and will
> use the compile-time default instead).

Not everyone is using binary blobs from Rockchip.
On my rock5b (rk3588), I'm building the bootloader using buildroot,
which is using upstream TrustedFirmware-A (v2.12).


> In short, I don't know where to go with that additional piece of
> information, but this is a bit bigger than simply moving things around and
> adding compile-time tests for overlay application.

This is significant information indeed.


Kind regards,
Niklas

