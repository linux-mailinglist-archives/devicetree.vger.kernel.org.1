Return-Path: <devicetree+bounces-135005-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id CEE4C9FF6C8
	for <lists+devicetree@lfdr.de>; Thu,  2 Jan 2025 09:22:18 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 9EF57160BCF
	for <lists+devicetree@lfdr.de>; Thu,  2 Jan 2025 08:22:16 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 8964C192D84;
	Thu,  2 Jan 2025 08:22:14 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="GteS3qox"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5F368191F8C;
	Thu,  2 Jan 2025 08:22:14 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1735806134; cv=none; b=CmAOOTuwdzVv1IQEGSEUNozap7Shne/tP1zZSpOQ+5cYoqecGkI3qUkonqDB8y1EFeCr0gCXAhjBzhtYDFzEBp1zA2i5YpzhaIZOko8tpHChYRMaA/ShL5YBuWIkwj6DZVyAucnhBPr+FWmlmTwVOnz1HqkGOsKJFB02flJl7a8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1735806134; c=relaxed/simple;
	bh=msN4as29mKxk7DUjz/+TMM5v7m3GXDPe+X4uz2SOAjY=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=THU+jS9XFQULwPeDKaq/9Tff1hv9DVe6k53Z5pqrV9zqvUgbUj9PBF2qDpon4la4h557I/FPZTJbMEc4UvzOXfPmRG1BbgV4nPYHeU8mzEsn8BS/FwD29+eYUWcpTuTjqqfNqDY9qHBU74ooGtkrmfCouyMz1JcVb6sUC/hQ3vU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=GteS3qox; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 4C37DC4CED0;
	Thu,  2 Jan 2025 08:22:13 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1735806133;
	bh=msN4as29mKxk7DUjz/+TMM5v7m3GXDPe+X4uz2SOAjY=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=GteS3qox4OIUc9PXK+t3pRoR5Nxw6DkZAwHA2TTWhgtHS2p2CXin6mjAAK/1yBiag
	 KyGVuietYvvaO3UkqOQAbTmZy1/3O86uYwAR6E/ljS9b/zaBXkVLsCa+YFPZtV7smS
	 IQf2rv8wwvxNI5cKOV0ME3L2IG2GOWWrbwZBgDHh8EUGnV+yrSPna876+rKq8VYRwV
	 xy1snUiv/H/lMv6V8Fu7hBLOfNRILfJ4eGJlFFxQ5Gxybl1R8nl7QUxG0q2Fdlp9na
	 EBCpjd7o7DWkyWrfzPO5nUDhBuep7OxX6CbGGFWtGNDAXNxwc3NHd1ApbwUIwt/1B5
	 P3wPgNNgBFWNQ==
Date: Thu, 2 Jan 2025 09:22:10 +0100
From: Krzysztof Kozlowski <krzk@kernel.org>
To: Devarsh Thakkar <devarsht@ti.com>
Cc: jyri.sarha@iki.fi, tomi.valkeinen@ideasonboard.com, airlied@gmail.com, 
	maarten.lankhorst@linux.intel.com, mripard@kernel.org, tzimmermann@suse.de, 
	dri-devel@lists.freedesktop.org, simona@ffwll.ch, linux-kernel@vger.kernel.org, 
	devicetree@vger.kernel.org, robh@kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org, 
	praneeth@ti.com, vigneshr@ti.com, aradhya.bhatia@linux.dev, s-jain1@ti.com, 
	r-donadkar@ti.com, j-choudhary@ti.com, h-shenoy@ti.com
Subject: Re: [PATCH 1/2] dt-bindings: display: ti,am65x-dss: Add support for
 AM62L DSS
Message-ID: <tq3s2ssbp3yypzff66qzagd3bmx2eat24dzwddzppttijhsquj@mgbc36we7nrg>
References: <20241231090432.3649158-1-devarsht@ti.com>
 <20241231090432.3649158-2-devarsht@ti.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
In-Reply-To: <20241231090432.3649158-2-devarsht@ti.com>

On Tue, Dec 31, 2024 at 02:34:31PM +0530, Devarsh Thakkar wrote:
> The DSS controller on TI's AM62L SoC is an update from that on TI's
> AM625/AM65x/AM62A7 SoC. The AM62L DSS [1] only supports a single display
> pipeline using a single overlay manager, single video port and a single
> video lite pipeline which does not support scaling.
> 
> The output of video port is routed to SoC boundary via DPI interface and
> the DPI signals from the video port are also routed to DSI Tx controller
> present within the SoC.
> 
> [1]: Section 11.7 (Display Subsystem and Peripherals)
> Link : https://www.ti.com/lit/pdf/sprujb4
> 
> Signed-off-by: Devarsh Thakkar <devarsht@ti.com>
> ---
>  .../bindings/display/ti/ti,am65x-dss.yaml     | 25 ++++++++++++++++++-
>  1 file changed, 24 insertions(+), 1 deletion(-)

Reviewed-by: Krzysztof Kozlowski <krzk@kernel.org>

Best regards,
Krzysztof


