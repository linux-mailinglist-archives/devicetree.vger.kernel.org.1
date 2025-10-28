Return-Path: <devicetree+bounces-231891-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 73C1CC12937
	for <lists+devicetree@lfdr.de>; Tue, 28 Oct 2025 02:43:11 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 30AE418904AB
	for <lists+devicetree@lfdr.de>; Tue, 28 Oct 2025 01:42:16 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 0073624169F;
	Tue, 28 Oct 2025 01:41:48 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=linux.spacemit.com header.i=@linux.spacemit.com header.b="kGlVSUEO"
X-Original-To: devicetree@vger.kernel.org
Received: from smtpbgau1.qq.com (smtpbgau1.qq.com [54.206.16.166])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F2258137932
	for <devicetree@vger.kernel.org>; Tue, 28 Oct 2025 01:41:44 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=54.206.16.166
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761615707; cv=none; b=rvt3tOg5I0MaqDqu9/FUv+p1RbrefenZcVFbUcvyTA0NkRvEsNNTodqgQ7YNL1peWoJZ9THS0FoppoRVvW/U9R+z9RuXPh7twKnRyTMKSx1JY2wTWifCWEvWdfYIJjtqqLIgqRc+AVk+fryP2PIbRmis6AOW1EfxTPTtNMSiAZU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761615707; c=relaxed/simple;
	bh=EcrCH7gbIe4tGzJmOJrNzXrhbMMcFGwWbnUNw4n4WrA=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=ejOFil88LD4U5xqemsKR2qepaLjO63aybzMoOKiF71QAxcYxi1aSss5bOV7Nu9V7QfFDILqnLxoZWnGb+DP5kpN8B5KFES8EFJTySRZVZPCRSOYm+Vg1gTmTRPu/wTDqlras6mNZoXswk3o0j8LkSmm5HwiUpFWlxUxvqn1Lx4k=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=linux.spacemit.com; spf=none smtp.mailfrom=linux.spacemit.com; dkim=pass (1024-bit key) header.d=linux.spacemit.com header.i=@linux.spacemit.com header.b=kGlVSUEO; arc=none smtp.client-ip=54.206.16.166
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=linux.spacemit.com
Authentication-Results: smtp.subspace.kernel.org; spf=none smtp.mailfrom=linux.spacemit.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linux.spacemit.com;
	s=mxsw2412; t=1761615638;
	bh=+mEBbpFiHX0B6MrOl3zAV3KNKguB1G+AXghB9W8we/8=;
	h=Date:From:To:Subject:Message-ID:MIME-Version;
	b=kGlVSUEOrGkDFXHO5ca/aZBuFV2DoicFq7oU2X3RM3HVJmtaqI0SOj8DsibtNBrEZ
	 /0loprYQvfoqKUZFAtsYVsCto5r5hqoEcWVOjVsVvmbkyCoQ58fwWlm/Z2njdFchfW
	 iOCBNSosCSu+Y0cGcD0I9HzQMcKhoVcf61PQCjMs=
X-QQ-mid: zesmtpgz5t1761615636t467ae7ec
X-QQ-Originating-IP: SsILZdTTgN0uFTzov6mmR6/vmW89qEWwT3QwJkaNYT8=
Received: from = ( [183.48.246.218])
	by bizesmtp.qq.com (ESMTP) with 
	id ; Tue, 28 Oct 2025 09:40:34 +0800 (CST)
X-QQ-SSF: 0000000000000000000000000000000
X-QQ-GoodBg: 0
X-BIZMAIL-ID: 2958071386083091418
EX-QQ-RecipientCnt: 13
Date: Tue, 28 Oct 2025 09:40:34 +0800
From: Troy Mitchell <troy.mitchell@linux.spacemit.com>
To: Alex Elder <elder@riscstar.com>, broonie@kernel.org, dlan@gentoo.org
Cc: robh@kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org,
	devicetree@vger.kernel.org, linux-spi@vger.kernel.org,
	spacemit@lists.linux.dev, linux-riscv@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	Conor Dooley <conor.dooley@microchip.com>,
	Troy Mitchell <troy.mitchell@linux.spacemit.com>
Subject: Re: [PATCH v6 1/3] dt-bindings: spi: add SpacemiT K1 SPI support
Message-ID: <3B5AA5AFF5C53D64+aQAfEn1OBGmevjfS@kernel.org>
References: <20251027125504.297033-1-elder@riscstar.com>
 <20251027125504.297033-2-elder@riscstar.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20251027125504.297033-2-elder@riscstar.com>
X-QQ-SENDSIZE: 520
Feedback-ID: zesmtpgz:linux.spacemit.com:qybglogicsvrgz:qybglogicsvrgz3a-0
X-QQ-XMAILINFO: OSUW9vQLVhiZfSwad4tKpijbLwrG30Nc4mGcj11SCsM4vcbhjeTSl6kb
	/89I5oFsVGC3gdawGeVu3D0lMOUEpK4kogHl3m4ULQlZLi85ICM3ZCqThBOWgDt6acitykJ
	hGoBcNdB44Oi4tBST+BU3aPGmXZ7Hmd9ShMzTpx0nioFjvNoqqn2vWfvEI4TmiztHp+qF3i
	F+mQtCNmI706RtJbGYx1/PFN6hZ+3qBBV6QiSf53JHZMXwWCETlApbl0kwIq9f9uGlcBB4h
	qS/2XdAa92tv2yStZ5xkzJYyfTfll/EdU4rgonwupf2DVBoJjfteB9DF5RlpwWS+6dEQA+h
	xvh8FIHu0+TOkeKJhkA5VbxvRELF0mok3wEWU0Mi4h+dVkxYSw+pvDuYYtBaImTD3A6c1am
	W7A67T03CaiJGFu8Tm220uLS93kZpK0E1y3wAeKMOldvMwYAkIEUMDIqkCUrV7AkHsC3Yf8
	lyrZorBS3ZiHKb6XELTKJWo+7dlzW75ivXqzYsdWxkgX+JLuv1hTalA3uE/Zpj1FmTV17+p
	Tg44rhAAqWJ3PtK27EQFlDz2mL/s2oy6WN8PJCjEk1zb5o9r0CjXnhnz8/zUjAdypcovJwH
	WKoK7h+BGxFGs8IBVAY8L4+fsvibvqzRv8Zq6K1yGcX64eK7gVWV1d/c1Rix8713IBIrHsM
	RS9x7TxkyeDm7F4Kl46KYCg7WT/dDgTiGsO086DJddw/Sfm2npfQMmVJcb7SyS3zO3BLHZp
	UcWoNixF7NDAfAGbM2J68wfZXbjbjAouiOzWSpdsbZThjMMiNbEyWvWBmuYqXKQFX2hHUr0
	hndcwZenD0Y1ID+UUn8YZVMWRTE67hq3Ry7BlsS4ZV8zJeog3jni55ZWPxEb7KQnjTf0A6Y
	iY/KPrmtty2BzLcGYlLswmDH4p8n7es66fJIigDtI0TdchM+W7fgfSHTu7PPTR7TASC7HqI
	2bZ1MmUefpdltgHCpYhxMkQpecCrgZlovfDsPfiFZa00uwMEOqom9dsoSg6nyDYgIfc+eua
	nobrIqjkq3W6v5rm1wS3Dov48iWCIyoz5R0fVa2g==
X-QQ-XMRINFO: MPJ6Tf5t3I/ycC2BItcBVIA=
X-QQ-RECHKSPAM: 0

On Mon, Oct 27, 2025 at 07:55:01AM -0500, Alex Elder wrote:
> Add support for the SPI controller implemented by the SpacemiT K1 SoC.
> 
> Acked-by: Conor Dooley <conor.dooley@microchip.com>
> Reviewed-by: Rob Herring (Arm) <robh@kernel.org>
> Signed-off-by: Alex Elder <elder@riscstar.com>
> ---
Acked-by: Troy Mitchell <troy.mitchell@linux.spacemit.com>

