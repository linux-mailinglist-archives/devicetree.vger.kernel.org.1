Return-Path: <devicetree+bounces-242309-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from dfw.mirrors.kernel.org (dfw.mirrors.kernel.org [142.0.200.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 104FEC89115
	for <lists+devicetree@lfdr.de>; Wed, 26 Nov 2025 10:48:12 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.mirrors.kernel.org (Postfix) with ESMTPS id F07FA4E3E9B
	for <lists+devicetree@lfdr.de>; Wed, 26 Nov 2025 09:48:10 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 2ECB7302776;
	Wed, 26 Nov 2025 09:46:06 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="EM7GrPJJ"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 06CD4302749;
	Wed, 26 Nov 2025 09:46:06 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764150366; cv=none; b=eHILpL8lffDtx7RGjvHF0Vg5UWGVYl3e9OJbiSEXU3KmkUKMPAoNUqUFu2BuRqLyK8+0qL/T6KyzqRWIfNU73iehRY9FNrZHkLScm4eZz25pEZt0ZrC3WhkMdHcDdj+77TQtMx7WKYDUYCf8iZCZMpPmruU2/4HfFM+jhbZY00k=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764150366; c=relaxed/simple;
	bh=X6qkzqaXQI/KkAAHlHlB/r6Tagz+lhkEfW+0hrQWkqw=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=llrKDJTDyenPItxqSMUb88C3d9Wmdki6wteJFkuFMzfCz/RGtU4YyUkZ60qtq4xoXmuzGhP88w7EXbc0egd3BA8qD6SEXanGarY7j42MWC6JBM25Ak9ftKu3fduml0Z2Pb3NCG4g+CSipdYMC15kgA0UuhbqY9XMeAipQ4di3XA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=EM7GrPJJ; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 430C5C113D0;
	Wed, 26 Nov 2025 09:46:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1764150365;
	bh=X6qkzqaXQI/KkAAHlHlB/r6Tagz+lhkEfW+0hrQWkqw=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=EM7GrPJJbfIrNTaChPf+kWkgYLcYcTBmrhs2zLYiLHBFy9dwCQHB9cg9hujy2jO/H
	 8fY2ujZK7CFs6upLFMTn/SvKAF6wm2fPq1TZMjvwEj5RqEbaGI71DbhpHrCRq9mwJs
	 Yt6lCpIFBtWpD87OAw1rcA1oVSZ6gOZWCu2T1eN3zs/IbQanemDOdWgoUVaXsWgQQ0
	 K7B/h0nhec+wFp7c0yjzrmknqyd7pi1c4/XB9wHEWCAYnIyF2hPokJJCSIrsRpu0IL
	 8OsKy2RG6yvpGMlsp5d196oSHYcUcPIJwU+TXLU4ueQjoqxLm9U7jnx+PaT5c1LUqN
	 sVckPehExIsQA==
Date: Wed, 26 Nov 2025 10:46:03 +0100
From: Krzysztof Kozlowski <krzk@kernel.org>
To: Dinh Nguyen <dinguyen@kernel.org>
Cc: robh@kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org, 
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Subject: Re: [RESEND PATCH 1/2] dt-bindings: soc: altera: Move altera.yaml
 from arm to soc
Message-ID: <20251126-flat-fennec-of-charisma-ba8dc1@kuoka>
References: <20251125134004.261165-1-dinguyen@kernel.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
In-Reply-To: <20251125134004.261165-1-dinguyen@kernel.org>

On Tue, Nov 25, 2025 at 07:40:02AM -0600, Dinh Nguyen wrote:
> All Altera boards can hosts soft core CPUs like NIOS V or a RISC V, so

Please send it with the user of this change, so with DTS for RISC-V or
NIOS-V.

This alone is not really correct, if all compatibles here are for ARM
and nothing in commit msg said that any compatible is not for ARM...
unless you claim that each of these SoCs are multi-arch?

Best regards,
Krzysztof


