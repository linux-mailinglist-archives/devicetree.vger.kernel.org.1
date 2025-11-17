Return-Path: <devicetree+bounces-239566-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ams.mirrors.kernel.org (ams.mirrors.kernel.org [213.196.21.55])
	by mail.lfdr.de (Postfix) with ESMTPS id 969EAC667B4
	for <lists+devicetree@lfdr.de>; Mon, 17 Nov 2025 23:52:05 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ams.mirrors.kernel.org (Postfix) with ESMTPS id D770D35D7CB
	for <lists+devicetree@lfdr.de>; Mon, 17 Nov 2025 22:50:01 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 4D5772F39AB;
	Mon, 17 Nov 2025 22:48:38 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="lYSUCP8g"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2546CBA3D;
	Mon, 17 Nov 2025 22:48:37 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763419718; cv=none; b=mLn7wsrkLFywYf8KihSeGhteH4cQPRCs+VHjVd7f+zHoFLHSX8IXx+jeEgveSHvhf1Cx5JpLBx0vSFIilZdP1IuX4nUDZIAMo2Pl49p4Fe3epC3pb8jiJhN3PlQ6/ZgwLz/+1ntwseFqw24dmaITqwzZBJVWu1Nj+j1AveMpUhE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763419718; c=relaxed/simple;
	bh=v6+KaDJ8aMGcLNagNjtxH7djVTSZxKMTFEwO8QFpy+Y=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=nvpSg8jBKviVmkUxSkKiM8A53qr0b4vS3+AsixF54WmilqOqSVwrwxDq0eM2t/8gwRaweqn22VWyQE4cL3K8i52tGoiQyl9GlM7wv7HlMaj6XNvu4w0J1baJEv+ZGsV5QZ2XRZRWs0roZaH2vGYVEju7/UDFuRi+rSi6Z8R4eJs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=lYSUCP8g; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 27672C19424;
	Mon, 17 Nov 2025 22:48:37 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1763419717;
	bh=v6+KaDJ8aMGcLNagNjtxH7djVTSZxKMTFEwO8QFpy+Y=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=lYSUCP8gDQfRP/vBltZLMqzKli+eGo4GDiQccJemqFb8bkGdL2GRcPpJg89bH2YpK
	 l7WVpta6nBNVc4q7RCNN74psm3a5VBY7hUc+03wP8MSLIL/WAZs6IpthDw8MocQgyM
	 pb9hGrFYXMPunFcpW/q9elGb9kb9L65lG02PVMSyyWyxHKEbVx3s3YuaKGiS6NtGjf
	 +/x/XemnNRwelI6tBQnjq1n9AgGfAx/6/Xc1OMoqWaKHgyI2tO0tjlEfihbygNPxFs
	 9B5nZ/a5JMlrFv9aQuBgYvjrOKQ05rKm2sekzIi1m0iOalA5Qdv3MbAn6ToURnxzoe
	 jSWuskhiyHzJw==
Date: Mon, 17 Nov 2025 16:48:35 -0600
From: "Rob Herring (Arm)" <robh@kernel.org>
To: Martijn de Gouw <martijn.de.gouw@prodrive-technologies.com>
Cc: Robin Gong <yibin.gong@nxp.com>, Liam Girdwood <lgirdwood@gmail.com>,
	devicetree@vger.kernel.org, Mark Brown <broonie@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	linux-kernel@vger.kernel.org, Conor Dooley <conor+dt@kernel.org>
Subject: Re: [PATCH v3 1/2] dt-bindings: regulator: pca9540: add debounce
 timer configuration
Message-ID: <176341971477.860979.15549912879191395292.robh@kernel.org>
References: <20251117202215.1936139-1-martijn.de.gouw@prodrive-technologies.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20251117202215.1936139-1-martijn.de.gouw@prodrive-technologies.com>


On Mon, 17 Nov 2025 21:22:13 +0100, Martijn de Gouw wrote:
> Make the different debounce timers configurable from the devicetree.
> Depending on the board design, these have to be set different than the
> default register values.
> 
> Signed-off-by: Martijn de Gouw <martijn.de.gouw@prodrive-technologies.com>
> ---
>  .../regulator/nxp,pca9450-regulator.yaml      | 24 +++++++++++++++++++
>  1 file changed, 24 insertions(+)
> 

Reviewed-by: Rob Herring (Arm) <robh@kernel.org>


