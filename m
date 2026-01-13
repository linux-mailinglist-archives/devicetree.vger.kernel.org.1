Return-Path: <devicetree+bounces-254757-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [172.105.105.114])
	by mail.lfdr.de (Postfix) with ESMTPS id EA64AD1BA26
	for <lists+devicetree@lfdr.de>; Tue, 13 Jan 2026 23:53:49 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id C47FE303364B
	for <lists+devicetree@lfdr.de>; Tue, 13 Jan 2026 22:53:48 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 200A530EF65;
	Tue, 13 Jan 2026 22:53:48 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="eDqGCxra"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F0D6E2E7F3A;
	Tue, 13 Jan 2026 22:53:47 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768344828; cv=none; b=IfpTwL8lEvf4/WZkc/sDI4DgTUwUABG2q6K60hEkcEHVvBJw7Ug9FvVmaaM+f1BJYU4+Ddoi0RPHR+J2O7SvUWU9X1UeIrll6uVl2p4rRybP0Ixi7JC3fD4vVkxjk1k2bB+h+9kDELo/WDLZ9K+Qj/FWxRd5BWHTPLYmE9uaRZA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768344828; c=relaxed/simple;
	bh=2MHv5Sgc3pFqXVzbcr112eYhr4dz8zmnuSF9FChDKqc=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=MfIScYD5HU6j6Edg691rBdXmuOtCpTCJIXgK9D5J48Hd246CUftcqtnXFuzy7KM+OxfoLQ8fVeot9X2AEoA0IsqEifiZSJZAs2Uc9ZCwncnj6s1P/B1xgBK/SJdabjLxQqMDluzbeRG1bHR3LFB6+1WHOZMTIRmGrLez0hNMHGY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=eDqGCxra; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id EBDD9C116C6;
	Tue, 13 Jan 2026 22:53:46 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1768344827;
	bh=2MHv5Sgc3pFqXVzbcr112eYhr4dz8zmnuSF9FChDKqc=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=eDqGCxraARN2E4kq9xiAODfNysntzYgLFvVCreFPo/qN0DvAqziIxJwnH5briFYcq
	 DtZg8c0OBejyMyBZR61bDYz+gMViYisessBIZn62p21dHScGPcHsy0saZwlfJxtMgB
	 Q5EEGXKgy2/OtH1EjvdvvGzyLce/0radOLE6Hrya6bnJdc+670c1yJb9UmRv1Y3mYq
	 9ik0mXibfa82PYbau9buuGRe1dwXPlfDHczLjrQTiqsCDHo7DN4jm1ft1Ij3hUpuBP
	 f+/gWYdkl2h2mAJcOeqp7R1niAyPqm5TZUtbC9iYzWD5EdOFbb55CdPNlBLfeiENy7
	 MvV8u58hsgx6Q==
Date: Tue, 13 Jan 2026 16:53:46 -0600
From: Rob Herring <robh@kernel.org>
To: AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>
Cc: krzk+dt@kernel.org, conor+dt@kernel.org, matthias.bgg@gmail.com,
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-mediatek@lists.infradead.org, kernel@collabora.com
Subject: Re: [PATCH 1/3] dt-bindings: arm: mediatek: mmsys: Allow single
 vdo/mmsys endpoint
Message-ID: <20260113225346.GA367211-robh@kernel.org>
References: <20260108143934.69634-1-angelogioacchino.delregno@collabora.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20260108143934.69634-1-angelogioacchino.delregno@collabora.com>

On Thu, Jan 08, 2026 at 03:39:32PM +0100, AngeloGioacchino Del Regno wrote:
> The hardware supports using just a single output while leaving all
> of the others unconfigured (disabled), but the binding did not
> really allow specifying a single endpoint@0, because in this case
> one must either:
>  - Call the subnode `endpoint` and not declare any address and/or
>    size cells; or
>  - Call the subnode `endpoint@0` and have at least one more other
>    endpoint(@1 or @2), and declare address/size cells.
> 
> Allow specifying a single `endpoint` subnode, without the `@0`
> implicit suffix to suppress warnings happening on this kind of
> valid usecase.

This series isn't needed. We've dropped this check from dtc. I'll do a 
sync with upstream.

In any case, it's also a W=1 warning which wouldn't be my top priority.

Rob

