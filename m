Return-Path: <devicetree+bounces-216274-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id BD9F0B543AB
	for <lists+devicetree@lfdr.de>; Fri, 12 Sep 2025 09:19:04 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 1F40A1C27089
	for <lists+devicetree@lfdr.de>; Fri, 12 Sep 2025 07:19:26 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A53272BEC45;
	Fri, 12 Sep 2025 07:19:00 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Lrw+AsEq"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7FE502BE62D
	for <devicetree@vger.kernel.org>; Fri, 12 Sep 2025 07:19:00 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757661540; cv=none; b=u3MNNaQhlb1CVkWTfQiVQ58h6aMlxGP9jKs4s+BsTOYxIdQQMKE9VBQPfNo77IgzU0bgxIC4mGmAy8I2UxhNM6NiUzn1S3P1z1r03n0nX/GY4PbiJzYVScd6mGcNmonVECXsBr2fDMBvdAmJx3hMAxYvgqiTJTAY+Wi6YSkzSsM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757661540; c=relaxed/simple;
	bh=i5hTN1rAvm/sbcc9ngdRzcUX07/qc9X4pWe6KU5+yWg=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=RJ1U8yDD6Zd6WWhQYaFaYggGotaSEMpsPm4Rm1MLomOq6tmC4tkiozA7sbp98yveL43Hu1fKC2/I77LIBc8aMewDNv4fjbNLBuUe3gk7yu3yM4EF0YWc4qRh1MmlSUjaegW4KAUtcmQTV9myo+k+pG9vK2x3qay+EvMKKFyT1fM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Lrw+AsEq; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 6EAD2C4CEF4;
	Fri, 12 Sep 2025 07:18:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1757661540;
	bh=i5hTN1rAvm/sbcc9ngdRzcUX07/qc9X4pWe6KU5+yWg=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=Lrw+AsEqcaL+3zjmDBAaEHz+o33gND+24ns/E1XjXsv/mlCcAQaOf5xgFgM/TgcpW
	 ZBsYqjs7ko2/6AWXOzib/k1phAQf9xtPuDbRPvc5ITAxuXz4018oUH3q4Z0xdwa0eA
	 ADlhZzC90DEKzOQIrEibXAxl5oCFIIGGpoD5KgEqwF3TfYMPGBs2lOzF8DeLHALUoH
	 M0yG5SWFWF9ppjqsMvy46KwnY/sJgQ5gCj+da1euSUZioEOU/G5c2JDknIa+45eLVm
	 KAV3lNhT97y70pSJDM0k/ecCGut6pH71ZCL0CmoFh/BJfLAcuuopGFTG9Hwvf2Tjao
	 r43FcIi2EL65Q==
Date: Fri, 12 Sep 2025 09:18:57 +0200
From: Krzysztof Kozlowski <krzk@kernel.org>
To: =?utf-8?B?VG9tw6HFoQ==?= Macholda <tomas.macholda@nic.cz>
Cc: gregory.clement@bootlin.com, devicetree@vger.kernel.org, 
	krzk+dt@kernel.org, linux-arm-kernel@lists.infradead.org, robh@kernel.org, 
	kabel@kernel.org, michal.hrusecky@nic.cz
Subject: Re: [PATCH v3 0/2] Add support for RIPE Atlas Probe v5
Message-ID: <20250912-tricky-remarkable-binturong-d362e7@kuoka>
References: <20250911161308.52876-1-tomas.macholda@nic.cz>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
In-Reply-To: <20250911161308.52876-1-tomas.macholda@nic.cz>

On Thu, Sep 11, 2025 at 06:13:06PM +0200, Tom=C3=A1=C5=A1 Macholda wrote:
> This version changes: armada-3720-ripe-atlas.dts -> armada-3720-atlas-v5.=
dts
>=20
> Adds support for RIPE Atlas Probe v5.=20
>=20
> The hardware is based on Turris MOX, without support for extending with
> board modules.
>=20
> - The first patch adds dt-bindings documentation for ripe,atlas-v5.
> - The second patch adds the device tree file.
>=20


You sent three versions, same time almost, no changelog, no explanations
why.

Give people time to review - minimum 24h between such postings. And
write detailed changelogs for each version. b4 helps you in that, if you
use that to create patches.

Best regards,
Krzysztof


