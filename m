Return-Path: <devicetree+bounces-250487-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 2B5E4CE9946
	for <lists+devicetree@lfdr.de>; Tue, 30 Dec 2025 12:53:21 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 43BAD301A1AD
	for <lists+devicetree@lfdr.de>; Tue, 30 Dec 2025 11:53:13 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 802972D063E;
	Tue, 30 Dec 2025 11:53:12 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="qe31WcST"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5B7B6239E9B
	for <devicetree@vger.kernel.org>; Tue, 30 Dec 2025 11:53:11 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767095592; cv=none; b=amh4JUu/gs5FBLX69oppPCvTPXZUNOeu3zeBveZx8PzKu4Vn5lOeGySdNn6uiVKoLU5j4otBq7YZSwOQNqeg7rpQgewqIOOA4nwGGfdKcKiyIpd3ShA8Qt3Jdwa3Y6ntUSf092Pv5YO5hz3h9g50Ubz2gYoca8T1CRoLsaY4XgI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767095592; c=relaxed/simple;
	bh=0bKkiZu0E9vOgxpsH04eNxNQbEKsC5OplfSWDSdhahs=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=cmaBuNiZGb4MOrzP3xQhoQSdLiYftkdXf/QbTYmg/grG64kiicqixd4ZVGsASVVmaRVrobEeUvRs0bOWUcpTkcIVaWIpiobFV1Zl09dlgZ+N3KsgSgXv9zSY3frmo7MR9Z8IU6asGyXNz4c8Dx/ssibNBOSY7LeM5stqIvryzUY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=qe31WcST; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 5B0C4C4CEFB;
	Tue, 30 Dec 2025 11:53:10 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1767095590;
	bh=0bKkiZu0E9vOgxpsH04eNxNQbEKsC5OplfSWDSdhahs=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=qe31WcST1ijFMfVC8XmgRUbkEszxhuagzgdp7ld05TdBtJIdC/lZOgEax5DuohZUU
	 VkwcQ6WFNqLJ9TSBwIV0VRpsXLf84JQttxan3zVsM+PaxMiDNzER4U9/yhHoa5Adlw
	 anNtdeHFrGRao5JrvUcFbMjQTEQJkPMuXsxYlO9pkKYRt/af8AhqQF2oWH0V4l8tdT
	 vLQ6sC1QculPeVUUwZPuwyt5MaW2UdenPgkE0AB2FVvf0hDcFPBHouSg5V7dqnJHfz
	 fgAwuNGRw5orddtyrtt8lovFJ7XrowcV5wyjrvkZIGmTMKDY8SsdR0UADh84qxTdsK
	 Tjdqt1/Tu3fQw==
Date: Tue, 30 Dec 2025 12:53:08 +0100
From: Krzysztof Kozlowski <krzk@kernel.org>
To: Dinh Nguyen <dinguyen@kernel.org>
Cc: robh@kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org, 
	devicetree@vger.kernel.org
Subject: Re: [PATCH 1/5] dt-bindings: fpga: altera: fix dtbs_check warning
 for fpga-bridge
Message-ID: <20251230-spiffy-meaty-warthog-fceee5@quoll>
References: <20251228221846.863904-1-dinguyen@kernel.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
In-Reply-To: <20251228221846.863904-1-dinguyen@kernel.org>

On Sun, Dec 28, 2025 at 04:18:42PM -0600, Dinh Nguyen wrote:
> Document the nodename with a regex pattern. This change fixes this
> warning:
> 
> fpga_bridge@ff400000 (altr,socfpga-lwhps2fpga-bridge): $nodename:0:
> 'fpga_bridge@ff400000' does not match '^fpga-bridge(@.*|-([0-9]|[1-9][0-9]+))?$'

I don't understand how enforcing node name fixes warning of incorrect
node name in DTS.


> 
> Signed-off-by: Dinh Nguyen <dinguyen@kernel.org>
> ---
>  .../devicetree/bindings/fpga/altr,socfpga-hps2fpga-bridge.yaml | 3 +++
>  1 file changed, 3 insertions(+)
> 
> diff --git a/Documentation/devicetree/bindings/fpga/altr,socfpga-hps2fpga-bridge.yaml b/Documentation/devicetree/bindings/fpga/altr,socfpga-hps2fpga-bridge.yaml
> index d19c6660d6c9..36732cb2446e 100644
> --- a/Documentation/devicetree/bindings/fpga/altr,socfpga-hps2fpga-bridge.yaml
> +++ b/Documentation/devicetree/bindings/fpga/altr,socfpga-hps2fpga-bridge.yaml
> @@ -13,6 +13,9 @@ allOf:
>    - $ref: fpga-bridge.yaml#
>  
>  properties:
> +  $nodename:
> +    pattern: "^fpga-bridge(@.*|-([0-9]|[1-9][0-9]+))?$"

Best regards,
Krzysztof


