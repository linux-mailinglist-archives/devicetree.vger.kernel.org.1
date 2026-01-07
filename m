Return-Path: <devicetree+bounces-252201-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 4387ACFC552
	for <lists+devicetree@lfdr.de>; Wed, 07 Jan 2026 08:26:50 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 6EC97304355A
	for <lists+devicetree@lfdr.de>; Wed,  7 Jan 2026 07:25:14 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A101F279DC0;
	Wed,  7 Jan 2026 07:25:13 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Ut3g99LY"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 790852765F8;
	Wed,  7 Jan 2026 07:25:13 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767770713; cv=none; b=mmQNxkt+WaeLFVqUskTFisZxP2i+q6FAr5YffBhtIKPtq+0dGq/Azfg/w++WtZRhaBG8pw0OkN2fxPInpUYDdmnGtdFIe56tSh91j6Yh04l/tMrMrPf3vpVUIfkchFQ5/GVV3686S8qGAjSG2d3U2VP9JjNBPfoOWVPKcucgkxc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767770713; c=relaxed/simple;
	bh=41tZ/S53+mZM0u0Z6M4D9mtLc8wJjKP6ggDmKps9V0g=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=Z9aJGTq/yNkt8E/mcHYcK4w03iaN21ts6834B1saYX/QXRclkBcPJJygB+Rswfyh+aFGyjuDh4vxz5mBx5Zf6DPvl/Q412wl8y+CCs22iWfbsJ4pxjZQqSMftVYSNxHq07jecugHL43NAi1G6R+G2LjvReMxtKYwurYNGCIDaC0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Ut3g99LY; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 62B11C4CEF7;
	Wed,  7 Jan 2026 07:25:12 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1767770712;
	bh=41tZ/S53+mZM0u0Z6M4D9mtLc8wJjKP6ggDmKps9V0g=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=Ut3g99LY948ToCwtx4/i8dq69ztNWfeB3fv8p5zZ7MbmEuAdLr03peimtuLhqZFrk
	 iKLdgz9/bpMhK66hQAV2W5P6/YM7oBcV7d+Ws3ddnG7ADZa4Z+hwdndcnggoojYpMo
	 r4auM1l0z2we4pKBUOq/KJbyGZBcQj6xGqEtKh+PDO2pHo1NtQapGXtXVZ0dkp85+a
	 L8RCl9HVYc+P8O1GvkPvq2vaVOhY707/HRKRrgqoJjQ7p8Sv4q8E7dTI5xTjDNEaXM
	 jnilHXdVzeDBwynfQNSHO8G94lxA40t3+a/wqnhE/+a2RcZ7GAD4ti/Ukk9u9PadvI
	 wbHRfln0Y1U9g==
Date: Wed, 7 Jan 2026 08:25:10 +0100
From: Krzysztof Kozlowski <krzk@kernel.org>
To: Timothy Pearson <tpearson@raptorengineering.com>
Cc: devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
	robh+dt@kernel.org, conor+dt@kernel.org, krzysztof.kozlowski+dt@linaro.org, 
	lee@kernel.org, Georgy.Yakovlev@sony.com, sanastasio@raptorengineering.com
Subject: Re: [PATCH v6 1/4] dt-bindings: mfd: Add sony,cronos-smc
Message-ID: <20260107-spotted-swan-of-sufficiency-1bfc03@quoll>
References: <20260107002136.3121607-1-tpearson@raptorengineering.com>
 <20260107002136.3121607-2-tpearson@raptorengineering.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
In-Reply-To: <20260107002136.3121607-2-tpearson@raptorengineering.com>

On Tue, Jan 06, 2026 at 06:21:33PM -0600, Timothy Pearson wrote:
> From: Shawn Anastasio <sanastasio@raptorengineering.com>
> 
> The Sony Cronos Platform Controller is a multi-purpose platform controller
> that provides both a watchdog timer and an LED controller for the Sony
> Interactive Entertainment Cronos x86 server platform. As both functions
> are provided by the same CPLD, a multi-function device is exposed as the
> parent of both functions.
> 
> Add a DT binding for this device.
> 
> Signed-off-by: Shawn Anastasio <sanastasio@raptorengineering.com>
> Signed-off-by: Timothy Pearson <tpearson@raptorengineering.com>
> ---
>  .../bindings/mfd/sony,cronos-smc.yaml         | 128 ++++++++++++++++++

How this can be a v6 with no changelog at all and still not tested?

What happened with this patchset? Where is it explained?

Best regards,
Krzysztof


