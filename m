Return-Path: <devicetree+bounces-247184-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 60C57CC55D5
	for <lists+devicetree@lfdr.de>; Tue, 16 Dec 2025 23:35:17 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 965CD3019892
	for <lists+devicetree@lfdr.de>; Tue, 16 Dec 2025 22:35:07 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B4813322533;
	Tue, 16 Dec 2025 22:35:06 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="hHyYRmgf"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8A8DF1C5D77;
	Tue, 16 Dec 2025 22:35:04 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765924506; cv=none; b=buzByypVYH5/yZcmIJHzeANCVxEIb1WAbrvhlxJGkXeg4jGngJ6rLK7OV7arDkeQg+k9ga99eutf3xC9d+2iCgGImOvoIR1cMyTC7XcB0ZWRNs0kuvwMCmSJ1CwAkLV96e/hT6+8yRnwYQftn7Gj2/HIdmQsP1LLtagcFOpWWnw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765924506; c=relaxed/simple;
	bh=Bn9sSdytmqzw2IsPFuvFcTMtuAc3guBz6pZ8asbkXrQ=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=fobXoDG+YNA5PVaAxQevDmKSuR4FQxlmCFIAFf5k4MgYqk+plIhjx5s7/PhQQYUQ3Ogz+ArCIzf4+UfeWLxN4IFISepkF5npih+qj3bo8RFaKhxKrWwrZ1A3GrignLCQdX2zKVi22+4CiEmYrGH/5lArT6v/7oRp9Tr0I9eedDg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=hHyYRmgf; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id C4495C4CEF1;
	Tue, 16 Dec 2025 22:35:03 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1765924504;
	bh=Bn9sSdytmqzw2IsPFuvFcTMtuAc3guBz6pZ8asbkXrQ=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=hHyYRmgfN/vXayDad54aIDHHAohwGtgtbiScN3oRVaBkYCy+8eGkqyJ/i8lgFkzUZ
	 chXu7EkDOCCemRDdu6VsUMi9Znd3g0tragVQP+nOtlVxD8qEITHkIiACT0zxZXcxjM
	 7OSbJAfBk9M13Q1GdHsn+3e558ibo67tO1v2hk0ak2VtoqEDn41J12DSxB1og7oOVA
	 zyQK7NPU5t4cujbzZyE+v5s1BoGVS0yjuYwdMPGfQIPqmx80JZ4mBOIJXeQoqe/WT7
	 sgssLM0VoM3Y6EZlLDxdqnTXWcIg9AAYggeEFmAzd8TISnRJGSoiA+t0r0Oo+RWuRw
	 6usyPV5C5ycFA==
Date: Tue, 16 Dec 2025 16:35:01 -0600
From: Rob Herring <robh@kernel.org>
To: Ronak Jain <ronak.jain@amd.com>
Cc: krzk+dt@kernel.org, conor+dt@kernel.org, michal.simek@amd.com,
	nava.kishore.manne@amd.com, devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH v2 2/2] dt-bindings: firmware: xilinx: Add conditional
 pinctrl schema
Message-ID: <20251216223501.GB3151380-robh@kernel.org>
References: <20251212100542.2756757-1-ronak.jain@amd.com>
 <20251212100542.2756757-3-ronak.jain@amd.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20251212100542.2756757-3-ronak.jain@amd.com>

On Fri, Dec 12, 2025 at 02:05:42AM -0800, Ronak Jain wrote:
> Updates the Device Tree bindings for Xilinx firmware by introducing
> conditional schema references for the pinctrl node.
> 
> Previously, the pinctrl node directly referenced
> xlnx,zynqmp-pinctrl.yaml. However, this patch modifies the schema to
> conditionally apply the correct pinctrl schema based on the compatible
> property. Specifically:
> - If compatible contains "xlnx,zynqmp-pinctrl", reference
>   xlnx,zynqmp-pinctrl.yaml.
> - If compatible contains "xlnx,versal-pinctrl", reference
>   xlnx,versal-pinctrl.yaml.
> 
> Additionally, an example entry for "xlnx,versal-pinctrl" has been
> added under the examples section.
> 
> Signed-off-by: Ronak Jain <ronak.jain@amd.com>
> ---
> Suggestion from Rob:
> 
> The somewhat preferred way to do this would be to do this in the top
> level:
> 
> pinctrl:
>   type: object
>   additionalProperties: true
>   properties:
>     compatible:
>       contains:
>         enum:
>           - xlnx,zynqmp-pinctrl
>           - xlnx,versal-pinctrl
>   required:
>     - compatible
> 
> Otherwise, the pinctrl schema ends up being applied twice.
> 
> 
> My response:
> 
> In your suggested code, the schema allows either xlnx,zynqmp-pinctrl
> or xlnx,versal-pinctrl on any platform, which is incorrect. This
> means that if a user mistakenly assigns xlnx,versal-pinctrl to a
> ZynqMP platform or xlnx,zynqmp-pinctrl to a Versal platform, the
> wrong reference will be used, but no error is reported. The
> dt-binding check still passes instead of flagging this as an issue.

True, but you can create a whole DT that's just random bindings from all 
sorts of different SoCs and the schema validation would be perfectly 
happy. We can't really ever check everything.

> By using a conditional schema, we can enforce platform-specific
> compatibility, ensuring that the correct compatible string is used
> for the corresponding platform. This would also generate an error if
> an incorrect compatible string is provided, preventing
> misconfigurations.

But what you have is fine too. It will validate the node twice as I 
pointed out and that slows things down some, but it's already slow...

Rob

