Return-Path: <devicetree+bounces-169283-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 091F9A963AD
	for <lists+devicetree@lfdr.de>; Tue, 22 Apr 2025 11:11:20 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id DD36F167200
	for <lists+devicetree@lfdr.de>; Tue, 22 Apr 2025 09:09:05 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E98781F03D9;
	Tue, 22 Apr 2025 09:09:01 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="TWcrHETj"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C52C519D8B7
	for <devicetree@vger.kernel.org>; Tue, 22 Apr 2025 09:09:01 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1745312941; cv=none; b=kq1aR+DPKrmcckZEUtiniM7DEGoFWxg7x8nonunJPcOB3ri8E19sR7U/WF7VF0cJtFJpJqnuLG16HTpTFI2z471Blo85SW0nM4wPGAC1OjnAPYBiqe4IEr9pZLLuLFVxLGinJPXB0H4VtBo9irK0xIaHcr6WqVcuadL6BhIRA88=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1745312941; c=relaxed/simple;
	bh=4SxyP4AwtGoYtKvYffseqyjyXt2IPn2EOqtSRYijZhA=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=FR205P2+Y2FjYwWCpNBQj7KgPGWVelbMSDDwX8tOgLE+A7SWLbjNGOKTjYkMfihr+s0Br3U148tuPO0p9pKpqDF2WPQgiPAymuJvZPIHwZRRM96dHeVic1ox+3cPXxDwfDY8fBTXx9/uSy3ZuX4ekjsJeScbLOxh7QXiNwdnlec=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=TWcrHETj; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 6BE33C4CEE9;
	Tue, 22 Apr 2025 09:09:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1745312941;
	bh=4SxyP4AwtGoYtKvYffseqyjyXt2IPn2EOqtSRYijZhA=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=TWcrHETjd8SMiA5Wr5Iisut2TzWYCOMDMJ282aVM27sa2PDmN1axhBXgxcycUaM4j
	 Q69RzaXLb7SknWk7558tn0T/GAUS/JxyoBTAEn6nR8xLcwlWt93J11t9uytrYqqY5J
	 nd/JLXFiNpkOS0AXQTcOnj7wEnQjgfiYvoqcM+HTJGZp92CJn+PFHtKWK6oGNnE84o
	 wjysSvbGqeZ/JQFSG/cRevFu8UOevjQx4SV7VCC/wCYoo7FLnkKWUEUXr8Isogc518
	 HoeidgbNI8ix76y8B4ipYp5oA3ZubFv+AO8tgfdtVdoz3hIfRk601m3DxbafBULraw
	 06xzgMv1IwHjg==
Date: Tue, 22 Apr 2025 11:08:57 +0200
From: Krzysztof Kozlowski <krzk@kernel.org>
To: Dominik Haller <d.haller@phytec.de>
Cc: robh@kernel.org, kristo@kernel.org, krzk+dt@kernel.org, 
	conor+dt@kernel.org, vigneshr@ti.com, nm@ti.com, m-chawdhry@ti.com, 
	devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org, upstream@lists.phytec.de
Subject: Re: [PATCH v3 1/3] dt-bindings: arm: ti: Add bindings for PHYTEC
 AM68x based hardware
Message-ID: <20250422-urban-nocturnal-ocelot-c025bd@kuoka>
References: <20250417125921.100580-1-d.haller@phytec.de>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
In-Reply-To: <20250417125921.100580-1-d.haller@phytec.de>

On Thu, Apr 17, 2025 at 02:59:19PM GMT, Dominik Haller wrote:
> Add devicetree bindings for the AM68x based phyCORE-AM68x/TDA4x SoM
> and the phyBOARD-Izar carrier board.
> 
> Signed-off-by: Dominik Haller <d.haller@phytec.de>
> ---

Acked-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>

Best regards,
Krzysztof


