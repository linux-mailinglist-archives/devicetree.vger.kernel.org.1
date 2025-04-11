Return-Path: <devicetree+bounces-166187-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id CA596A868BF
	for <lists+devicetree@lfdr.de>; Sat, 12 Apr 2025 00:10:31 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id C6726171CCF
	for <lists+devicetree@lfdr.de>; Fri, 11 Apr 2025 22:10:31 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 7046029CB58;
	Fri, 11 Apr 2025 22:10:28 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="p7NPOfUe"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 47BD529C320;
	Fri, 11 Apr 2025 22:10:28 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744409428; cv=none; b=TgLuUzcKAMzJBU4fHSAsQWaI3M7lfTeZHJreJDov1mkaAhdbRblKxkd17mzv8tRIVFIUIvzXwMdO4pCQE6v2Yzu7ui1DvTdvm526a0iusltKs0L3PAW4iHbH2gG/PgvUxkSLc7eAnwd4XBBzUg9leu7oJwAVz6kP5DCOfdNqXq4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744409428; c=relaxed/simple;
	bh=UJuUS3ZwnRhVWccPq8AGbrKlwXgGsF2aXK8qD21Xf5k=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=IHnVp0MaMdOTXcpzItM8q0TM/D8Y/nFmiHqi1BvlGG0iDmiRq4qPDbLl/T2OnoEh5VALBdFNXGyFrKKchOTSuHOWz9b3x1g5alqz6alrVSyZd4dWcORiw8hJlN0FV6WImkqkRpj6yUujjo83sDEgFDl6559DogAoy0qRbeDvnk4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=p7NPOfUe; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id D0241C4CEE2;
	Fri, 11 Apr 2025 22:10:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1744409428;
	bh=UJuUS3ZwnRhVWccPq8AGbrKlwXgGsF2aXK8qD21Xf5k=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=p7NPOfUea8jv83jq4+7z5baLlJMjCJskDikDm5NmrMSFz9Jbw8mDQyPxBpHCYTGzy
	 GRaaSishr20IB77AJbKN3Nm9mDUMNJH4boyEFR9FFgmczfAgqClNU4uFmrp47y9CI1
	 7i+fLkNWvOf9b/n0eGDJMgYXawxOh3XEPbRu2WzLGSTzWYxMy6jNgdGIo6TLGoaCuc
	 nYqxKu1TPrd9QBSr0vvNTaIveMKXvgti/t0aUKYU5Vl0wB0jk02NaTjZnowcXztdbq
	 A7rHydjbJgZjZ0dZ1CAizwIv0MfhmYSl9ow0e/BcaLyubVzY9BBexx2xT9a+P0cFBV
	 Kd1mbkhGgpfyg==
Date: Fri, 11 Apr 2025 17:10:26 -0500
From: "Rob Herring (Arm)" <robh@kernel.org>
To: Frank Li <Frank.Li@nxp.com>
Cc: masahiroy@kernel.org, vigneshr@ti.com, nicolas.schier@linux.dev,
	conor+dt@kernel.org, miquel.raynal@bootlin.com, richard@nod.at,
	krzk+dt@kernel.org, nathan@kernel.org,
	linux-mtd@lists.infradead.org, imx@lists.linux.dev,
	devicetree@vger.kernel.org
Subject: Re: [PATCH v2 1/1] dt-bindings: mtd: convert vf610-nfc to yaml format
Message-ID: <174440942625.14813.14783153638505828749.robh@kernel.org>
References: <20250411200858.3266447-1-Frank.Li@nxp.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20250411200858.3266447-1-Frank.Li@nxp.com>


On Fri, 11 Apr 2025 16:08:58 -0400, Frank Li wrote:
> Convert binding doc vf610-nfc to yaml format.
> 
> Additional changes:
> - ref to nand-controller.yaml.
> - include arm-gic.h and vf610-clock.h in examples.
> - add clocks and clock-names description.
> - remove #address-cells, #size-cells assigned-clocks and
> assigned-clock-rates.
> 
> Signed-off-by: Frank Li <Frank.Li@nxp.com>
> ---
> Change from v1 to v2
> - add blank line
> - remove accident change makefile
> - correct head file name in commit message
> ---
>  .../bindings/mtd/fsl,vf610-nfc.yaml           | 89 +++++++++++++++++++
>  .../devicetree/bindings/mtd/vf610-nfc.txt     | 59 ------------
>  2 files changed, 89 insertions(+), 59 deletions(-)
>  create mode 100644 Documentation/devicetree/bindings/mtd/fsl,vf610-nfc.yaml
>  delete mode 100644 Documentation/devicetree/bindings/mtd/vf610-nfc.txt
> 

Reviewed-by: Rob Herring (Arm) <robh@kernel.org>


