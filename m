Return-Path: <devicetree+bounces-243797-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ams.mirrors.kernel.org (ams.mirrors.kernel.org [IPv6:2a01:60a::1994:3:14])
	by mail.lfdr.de (Postfix) with ESMTPS id 52D3FC9D013
	for <lists+devicetree@lfdr.de>; Tue, 02 Dec 2025 22:04:38 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ams.mirrors.kernel.org (Postfix) with ESMTPS id 92C5E3447E9
	for <lists+devicetree@lfdr.de>; Tue,  2 Dec 2025 21:04:37 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 487D32F260C;
	Tue,  2 Dec 2025 21:04:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="eCWUpeha"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 20BA42882C5;
	Tue,  2 Dec 2025 21:04:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764709474; cv=none; b=tDT9zWTq39S+Fcf2kTeyHYHdwJZbW9aKCl27gmz21C/LGJY6AsdE9kUUNgNEI0prjSrUx2dut8uG/fgYZB4S4vHxKFBzrN7UO1Nu4rEQif7AhYoozPxGXU22ae2AniTfDvd4IZXqC+OCklptxjwQv/6Zdvk/ftw0+8okpWyn4AQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764709474; c=relaxed/simple;
	bh=ELky+m464Hypd+afEu0PoirRm8lFSDeonZaKdyAazxo=;
	h=Message-ID:Date:MIME-Version:From:Subject:To:Cc:References:
	 In-Reply-To:Content-Type; b=ht4PPKEy1GR2vcJ2AEjlaso0T4MiPH0E9NRZFHjADiyjf+oAgDVMSNud/pJW9PNr/UzauKXqSmgBCtOcroR1BoehJfAofyQ4izRnF9Os+G6ceyC1vDPlPPyGu0I7VLitpjh3Wlpvebh7JcPqgwcq2YQM+yKjffYS3C0XtE66o3g=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=eCWUpeha; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 4271AC113D0;
	Tue,  2 Dec 2025 21:04:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1764709474;
	bh=ELky+m464Hypd+afEu0PoirRm8lFSDeonZaKdyAazxo=;
	h=Date:From:Subject:To:Cc:References:In-Reply-To:From;
	b=eCWUpehaOpdFdb2WMkHrFDv1d3GyXprXJdViGfMQfIfVQd9R7N/qji8WOnqOa5qmE
	 DJVfu9FZUOVSzSwZEn7IR/sVlxiCzCXuTY7UY5Kmk6NdfIdyMdyMpq4ZblrAEdYFBv
	 SlMcX3RSMYXktHDors3aFLgoDcRmNZ75G4UBdUN2fVP3DtimQd8Tqqk7QAsxsh9vt5
	 Fi8Ft1MjY6F2tNVdDFfDt9cNoc8EVyGxQ1IHNxGzyP2EU4pj7Ki+H2wynXKu8PCdXO
	 Z+t84nsrX/2ia/KqE0ytDM/uOtf9zpAhzZjlL2dKKqZYA6SWf1AWxGbJasZNZT1+if
	 ickb6flVFhVAQ==
Message-ID: <054158a2-eb47-48a4-ba4c-0bcf7703e0e3@kernel.org>
Date: Tue, 2 Dec 2025 15:04:30 -0600
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
From: Dinh Nguyen <dinguyen@kernel.org>
Subject: Re: [RESEND PATCH 1/2] dt-bindings: soc: altera: Move altera.yaml
 from arm to soc
To: Krzysztof Kozlowski <krzk@kernel.org>
Cc: robh@kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
References: <20251125134004.261165-1-dinguyen@kernel.org>
 <20251126-flat-fennec-of-charisma-ba8dc1@kuoka>
Content-Language: en-US
In-Reply-To: <20251126-flat-fennec-of-charisma-ba8dc1@kuoka>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit



On 11/26/25 03:46, Krzysztof Kozlowski wrote:
> On Tue, Nov 25, 2025 at 07:40:02AM -0600, Dinh Nguyen wrote:
>> All Altera boards can hosts soft core CPUs like NIOS V or a RISC V, so
> 
> Please send it with the user of this change, so with DTS for RISC-V or
> NIOS-V.
> 
> This alone is not really correct, if all compatibles here are for ARM
> and nothing in commit msg said that any compatible is not for ARM...
> unless you claim that each of these SoCs are multi-arch?
> 

The SoCFPGA devices can house both the hardened ARM cluster running 
simultaneously with a number of soft Nios V cores in the FPGA fabric. 
They may be running independently or working together through shared 
memory or shared peripheral IO. I think that would be a qualify as a 
multi-arch device.

 From what we've seen of multi-arch use cases, there are separate DTS 
files for the soft-core CPU unit. Can you elaborate by what DTS you'd 
like to see to accomodate this change?

Thanks,
Dinh

