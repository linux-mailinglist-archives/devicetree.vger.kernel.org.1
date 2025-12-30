Return-Path: <devicetree+bounces-250541-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id BDAB3CE9D7E
	for <lists+devicetree@lfdr.de>; Tue, 30 Dec 2025 15:00:51 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 5CD3D301C948
	for <lists+devicetree@lfdr.de>; Tue, 30 Dec 2025 14:00:28 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 9D86B1FAC42;
	Tue, 30 Dec 2025 14:00:27 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="IBBOhpuF"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6E82C189BB0;
	Tue, 30 Dec 2025 14:00:27 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767103227; cv=none; b=bYOiUNFQbXhr0l5m0cgT3ejouJraS12zPL8aSxbgf+uvz381ifFsxMUXNI/jsFfZieZIcSihbch3zACXvL9+S5CLYGUKfAt6Ch7Q3ST1lNOsEfmTA4tA9Nf14QaCFjrEeDIB1h3l9uZ9XSX8vcBvXgY2B6Eu0Dix0nyV2Xw28Ik=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767103227; c=relaxed/simple;
	bh=EE5y5JDVSHSqsOK4L/74tha1GWgDSbx8+Ze9isvtm7k=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=UXRkvD0rMFD48gioIwJEcSPLXb3LuT10MkgdjSgfulKmyoYexINGQTF3eZ76XoGtNMjY0S81gtdgYSKwRjQsvrvMEDfLnQqlZod6/O/dn1v5PwneTIAOuvFBgDuqQTewtyH3TGMdcp1X8FJTbnZJ17UdORE3e8MbTuTPf3xQEiY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=IBBOhpuF; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 31719C4CEFB;
	Tue, 30 Dec 2025 14:00:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1767103227;
	bh=EE5y5JDVSHSqsOK4L/74tha1GWgDSbx8+Ze9isvtm7k=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=IBBOhpuFJsrfcJe0Qw10GBlUq2s41q5Qyf5bQMhcVjquIqF2a9UdkFpuJfXV4P2aR
	 d2anRRn6JeYDmoe3NMf0ntwz/RatbZkBSDM4eFgTyNYvbDI+hHlI2SjmB8by5SPuvd
	 BpPk+mtzwSc3YV+OvPbKW25cp0Z3n32D0AHTVbHAkLyUp8vwVmd4qbhtl7zVyK0D2o
	 urmpObcF1cusJZEMfvO7HzjnLWg17AlipJdy5Eb+DjTPX3zgcGW7r3XZMfFuEHklZX
	 ozAiIbpyMY4VBmEFFxnGF7g6PenOCSAgLpV6JhTeua0zAd/mVZMpwLJGgZK5RLA02k
	 akOqdHPe65+mA==
Date: Tue, 30 Dec 2025 22:00:19 +0800
From: Shawn Guo <shawnguo@kernel.org>
To: Andreas Kemnade <andreas@kemnade.info>
Cc: robh@kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org,
	s.hauer@pengutronix.de, kernel@pengutronix.de, festevam@gmail.com,
	devicetree@vger.kernel.org, imx@lists.linux.dev,
	linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH] ARM: dts: imx: imx6sll: fix lcdif compatible
Message-ID: <aVPTJTMdMIif83r3@dragon>
References: <20251223204302.519468-1-andreas@kemnade.info>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20251223204302.519468-1-andreas@kemnade.info>

On Tue, Dec 23, 2025 at 09:43:02PM +0100, Andreas Kemnade wrote:
> Fix lcdif compatible according to bindings doc.
> 
> dtbs_check tested only, a glance at the datasheet shows that it should be
> the correct fallback compatible.
> 
> Signed-off-by: Andreas Kemnade <andreas@kemnade.info>

Applied, thanks!

