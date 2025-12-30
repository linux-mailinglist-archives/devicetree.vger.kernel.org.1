Return-Path: <devicetree+bounces-250544-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 81067CE9E1D
	for <lists+devicetree@lfdr.de>; Tue, 30 Dec 2025 15:11:55 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 9E9283016CD0
	for <lists+devicetree@lfdr.de>; Tue, 30 Dec 2025 14:11:35 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 0FA5E1E5B9A;
	Tue, 30 Dec 2025 14:04:26 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="KzGOQz/P"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D7DE617C77;
	Tue, 30 Dec 2025 14:04:25 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767103466; cv=none; b=NQQEw31xtXaG/eTNgTGOkOrDhq/lGB9ePjF/1JUyy/ABJ3qXUQj7MTeNtpYF4ZMJZhviazNu/6pqfAbXWsDkkYKIeNhmoyI5LZnvNSAMPman4ZEv26CQqDswyvce+zqqAPSkgdoYGcLE/4F0Ll65wibsAFjQXRJbw5s66J3E66g=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767103466; c=relaxed/simple;
	bh=Mmt0uCsWzDFQCwyCperldqiej6BGHm3coCvPMoSehHU=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=P+EmhmrAN1sC4s+MS8WjY21JAnGnqKDK8hcwKhmHXwVrNXbvlL+0eFF5odXE0+XNjj5x6C1StMSwC2oUghmtXRLsWPjt7pb3aVihrgrWoWuiy1iuo1TZcxwaLu9B/ANlA8zBeG4zMki3JN9QGq7+lukaWCCWPIJZhsc2duqjLFw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=KzGOQz/P; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 874A2C4CEFB;
	Tue, 30 Dec 2025 14:04:20 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1767103465;
	bh=Mmt0uCsWzDFQCwyCperldqiej6BGHm3coCvPMoSehHU=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=KzGOQz/PUXCcMsyjqPFy/fjPWTbA4VPlxFw2z4zZzc8o+VCV1w2gJwK2iOlWyFtv4
	 +T0w9dJD0Uc4V3iSYm2dXCe7pth4xwb8tBqSpdFT8/hI6m2g+aNONXZFO1RN3zYGeF
	 +1Go9dv2o6EuC7BGXPwGuC7CVjtXwiB6CqBbLDRhnQ9oSd79XJF4QipsvDqd4ZrcZv
	 rr+mFkB92Q+OAVqVGrEh9ol6qbNzmCgEUOpwyZsz+O+gSjuU8mgPDFTydpPU8U/fW8
	 b/mWpL8zcASsDnklPYyuL/CNM6mSjHjAdZiZCEre+zX4xy9jLaI39Z5MGUAyIltkPH
	 v3YxWagHnxMPw==
Date: Tue, 30 Dec 2025 22:04:17 +0800
From: Shawn Guo <shawnguo@kernel.org>
To: Andreas Kemnade <andreas@kemnade.info>
Cc: robh@kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org,
	s.hauer@pengutronix.de, kernel@pengutronix.de, festevam@gmail.com,
	devicetree@vger.kernel.org, imx@lists.linux.dev,
	linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH] ARM: dts: imx: imx6sl: fix lcdif compatible
Message-ID: <aVPb4UNGgrc5qzlD@dragon>
References: <20251223222435.538096-1-andreas@kemnade.info>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20251223222435.538096-1-andreas@kemnade.info>

On Tue, Dec 23, 2025 at 11:24:35PM +0100, Andreas Kemnade wrote:
> Fix lcdif compatible according to bindings doc.
> 
> dtbs_check tested only, a glance at the datasheet shows that it should be
> the correct fallback compatible.
> 
> Signed-off-by: Andreas Kemnade <andreas@kemnade.info>

Applied, thanks!

