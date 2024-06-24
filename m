Return-Path: <devicetree+bounces-79495-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 8863491582F
	for <lists+devicetree@lfdr.de>; Mon, 24 Jun 2024 22:44:53 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id B3DEC1C2256A
	for <lists+devicetree@lfdr.de>; Mon, 24 Jun 2024 20:44:52 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 31E4F1A070A;
	Mon, 24 Jun 2024 20:44:50 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="jFYUUNwq"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0D9E94437A
	for <devicetree@vger.kernel.org>; Mon, 24 Jun 2024 20:44:49 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1719261890; cv=none; b=DCH5H3pF4rjBMPN4Jry92yheSDk36V1Cak1u51JREi4ui+rlj3bfC290wdPYz0NTqlNwI/kYl22z3KL+KMjl5oEMA9qssODVPVTSXgN8pfST/v7hXUcWb9vJupFA0a/f6iq1Q7UG6RRfQiEjKh6YkQNi8o7SvfyiSlF1nrO3pew=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1719261890; c=relaxed/simple;
	bh=eHfa78mG60gILDC24WGZEF3l8z/sFIEF7Yd38KV/jJg=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=AQerRGkFCL7+Jl9HJca/95VfE7LAKisAqTQLfGUyHz9JYoykMP9ryLqSX5jjkGx9Ax0XLNFs6mR52RAyQe2CkUgI0frDcmUqYDT92AfTV4fsKMIHt1Y4C4DX3sWnAmHcAMt48JKveNtx+fhsNiXcwBcdd0EmU4fYMUfMVzBI+HY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=jFYUUNwq; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 55FD3C2BBFC;
	Mon, 24 Jun 2024 20:44:49 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1719261889;
	bh=eHfa78mG60gILDC24WGZEF3l8z/sFIEF7Yd38KV/jJg=;
	h=Date:From:To:List-Id:Cc:Subject:References:In-Reply-To:From;
	b=jFYUUNwquV08xxBYLYnqwGyFG6YL9GjrtVPj3+Qx8+imSaae7G/4ylO2kX1Vc+Kz1
	 /DWVYQDZ3qUIyd0YSmI/RYYcJcRlPimAqwKxMYYtoBXuTWacp+XQWWHrwtzOcGOEHb
	 Z4s9SJHfWN0+2SGXcYwgbWfdSg+lbRkBaP0QLR5u+FMA0HHYE/MZKJ7YkQFKRCwsLA
	 KmncvggLQbi/HCbH+24HdACu918GxEPO8R0qcWW4TwGt+uw80SadNqNuRdTsbmgvLw
	 kSa9sKvYEkIOhqNK+XLyn31oWtxXDU/SmnD3sH853abfl23eDGUoCRtPGBZqAdtlYy
	 IEFIsXlyhL4zQ==
Date: Mon, 24 Jun 2024 14:44:48 -0600
From: "Rob Herring (Arm)" <robh@kernel.org>
To: Marek =?iso-8859-1?Q?Beh=FAn?= <kabel@kernel.org>
Cc: devicetree@vger.kernel.org, soc@kernel.org,
	Thomas Gleixner <tglx@linutronix.de>,
	Gregory Clement <gregory.clement@bootlin.com>,
	Conor Dooley <conor+dt@kernel.org>, Andrew Lunn <andrew@lunn.ch>,
	linux-arm-kernel@lists.infradead.org,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Sebastian Hesselbarth <sebastian.hesselbarth@gmail.com>
Subject: Re: [PATCH v2 2/2] dt-bindings: interrupt-controller: convert
 marvell,mpic binding to YAML
Message-ID: <171926188565.385337.12451824082953031796.robh@kernel.org>
References: <20240624145355.8034-1-kabel@kernel.org>
 <20240624145355.8034-3-kabel@kernel.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20240624145355.8034-3-kabel@kernel.org>


On Mon, 24 Jun 2024 16:53:55 +0200, Marek Behún wrote:
> Convert the marvell,mpic device-tree binding to YAML. Add myself as
> maintainer.
> 
> Signed-off-by: Marek Behún <kabel@kernel.org>
> ---
>  .../marvell,armada-370-xp-mpic.txt            | 38 -----------
>  .../interrupt-controller/marvell,mpic.yaml    | 63 +++++++++++++++++++
>  MAINTAINERS                                   |  1 +
>  3 files changed, 64 insertions(+), 38 deletions(-)
>  delete mode 100644 Documentation/devicetree/bindings/interrupt-controller/marvell,armada-370-xp-mpic.txt
>  create mode 100644 Documentation/devicetree/bindings/interrupt-controller/marvell,mpic.yaml
> 

Applied, thanks!


