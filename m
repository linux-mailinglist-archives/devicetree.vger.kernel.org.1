Return-Path: <devicetree+bounces-255710-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 0E8E7D268F0
	for <lists+devicetree@lfdr.de>; Thu, 15 Jan 2026 18:38:08 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 9C2C030E8A4F
	for <lists+devicetree@lfdr.de>; Thu, 15 Jan 2026 17:16:21 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 223C33BF2FE;
	Thu, 15 Jan 2026 17:15:41 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="QPT7BmI3"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F39A83A1E86;
	Thu, 15 Jan 2026 17:15:40 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768497341; cv=none; b=Z98uMPPq2k+KC1yZAU3fJ3hNE6fX+VWIUbKdXYkodBwtPJiRzeA0nOmBZWq8zUGMRljGEISsjewYK54WkLio+kTou7sQSmPjUsU2LlrVPZc/f2nCRxef0+NTNScpPqWYhAvSTWGA/PtqJtroRBIf3z1PM61Z8/8Jiho8HmwMmHo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768497341; c=relaxed/simple;
	bh=CFLpU1u38GKle+C6cYpgJnNkEttUIxUtdzGLXnMkwoE=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=gvh8KwEjmYgpyIyk1hBXfkQ6DcsH8jU4p3VU0SKqjcYaCZS5GQO7dSude8a8sKGGdpJWIlWt1xGz7rUZIQe1og14RADL/GVVBiqRWjYWyL2T3MEnAYCU4wybspaTpMCNHFnFHoOF9BRUBG36X9shRgZPmP16vjW282svJGsEo+4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=QPT7BmI3; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id A0FB9C116D0;
	Thu, 15 Jan 2026 17:15:40 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1768497340;
	bh=CFLpU1u38GKle+C6cYpgJnNkEttUIxUtdzGLXnMkwoE=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=QPT7BmI3hr3HpXbL2GjektmaUijlaMge7GpIuQ1nUd1mTH84Gp3H91+6WRdqQRZ5N
	 YEHo/OXexrrLLsKgC36K96sf+lNY0UlQHT5ANyfiGz537WZzF9JDD8Bs9mhYwbAhJn
	 ty48Np6w9ZYTvg0cGtrOY+Jgm15FapQYDYh1xnsFhasqJpzX97flRkIUpVSyXMLXhY
	 NjsEHUgbVaR7uq9r7BJewYKkVrmpw5FxBkNi4lnR2r5YifbCtRdogijiCbBw77DtH/
	 SYGOgsGpPlwzDN8nl6DbfhROfl1j6b3bW+cMcaqqlj1XQ5Av/gLzdkJX8UAasAxyvQ
	 CGn9iTFMcPRpA==
Date: Thu, 15 Jan 2026 11:15:39 -0600
From: "Rob Herring (Arm)" <robh@kernel.org>
To: Harini T <harini.t@amd.com>
Cc: krzk+dt@kernel.org, linux-kernel@vger.kernel.org,
	devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
	jassisinghbrar@gmail.com, shubhrajyoti.datta@amd.com, git@amd.com,
	michal.simek@amd.com, conor+dt@kernel.org
Subject: Re: [PATCH V2] dt-bindings: mailbox: xlnx,zynqmp-ipi-mailbox:
 Document msg region requirement
Message-ID: <176849733940.905812.13413704726753399789.robh@kernel.org>
References: <20260109062259.1769305-1-harini.t@amd.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20260109062259.1769305-1-harini.t@amd.com>


On Fri, 09 Jan 2026 11:52:59 +0530, Harini T wrote:
> Add description clarifying that for Versal IPI mailboxes, both host and
> remote agents must have the "msg" register region defined for successful
> message passing. Without both, only notification-based communication
> works.
> 
> Signed-off-by: Harini T <harini.t@amd.com>
> ---
> Changes in V2:
> - The description regarding the "msg" register region requirement for Versal IPI
> mailboxes was moved from the conditional schema section to the main description
> block at the top of the YAML file.
> 
> V1 link: https://lore.kernel.org/all/20251222044653.1757886-1-harini.t@amd.com/
> ---
>  .../bindings/mailbox/xlnx,zynqmp-ipi-mailbox.yaml     | 11 +++++++++++
>  1 file changed, 11 insertions(+)
> 

Acked-by: Rob Herring (Arm) <robh@kernel.org>


