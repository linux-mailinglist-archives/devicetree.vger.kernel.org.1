Return-Path: <devicetree+bounces-240740-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from dfw.mirrors.kernel.org (dfw.mirrors.kernel.org [142.0.200.124])
	by mail.lfdr.de (Postfix) with ESMTPS id CF8AAC74BC6
	for <lists+devicetree@lfdr.de>; Thu, 20 Nov 2025 16:05:39 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.mirrors.kernel.org (Postfix) with ESMTPS id EBD744E4C51
	for <lists+devicetree@lfdr.de>; Thu, 20 Nov 2025 14:57:17 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 8A55034573C;
	Thu, 20 Nov 2025 14:57:04 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="a31r7nz5"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5FC603451AA;
	Thu, 20 Nov 2025 14:57:04 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763650624; cv=none; b=bIUEnqiL0XlvsxGGbGUaCraaYOpqvFkm0bZIiPpy2Kmt1Q0AhLjj2x0Lg5TMQBMcTJsciTBbw+yYNk2Z2BDGCdqd37zeHDPB5V1B2tzrSvTGIdnjmtDpRoAm22qWfcg+OQN7UM3yi+vYgVYYiq43SlTdrChXCPMGJmcjJWO8EK0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763650624; c=relaxed/simple;
	bh=ZAWEhvuGNxLW528zSSPNsK40qVVkeMvPLNo31hKx7FU=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=NhUKTm7SIwF97mYiAs6pvRIHTVI51qaBO+FS1kk39PRRGfIyfP1unUjbY+Gd+rjXaqqqOmlCJNlBe9fq7UbS9YAiVv5eP5FGlPGpCIrsk4yh8q/aToFURWlE03ljO+tarDUy25P6iuxqArhgMeT6jLuuNuktRVt9cmYbBT9F+h8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=a31r7nz5; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id AFAC8C113D0;
	Thu, 20 Nov 2025 14:57:03 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1763650623;
	bh=ZAWEhvuGNxLW528zSSPNsK40qVVkeMvPLNo31hKx7FU=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=a31r7nz53cyUEYwpuoTtq+Q9RJYSZkSl1zEN4oG+lYTBthELcNwkHF7oYMp0iZgPz
	 K88gFCg+CatZvxK+BzgIPfiOswIfy+KVLcs/lFE/G7r65lmxzKy9UToz1njvtoY+nM
	 eMdTTNSMrPVqi62uPPoN/gR2WltIcHPC9o2dexHw+EK85Lde0F/atyDeor5sbtBZML
	 CLzPqRnpxk7bLY7/AcbMm0VVwI3AnqcNO9CQoZEw98KFHeEqoCo9695+2IeO0nnIRr
	 jDkX4Brb7LKk9Z+a5mkoI2hAmLg2tGunwQOFV7C/H2HjK1gsfw0KehB2tgd2fo06Ar
	 BCJLlF+filw1Q==
Date: Thu, 20 Nov 2025 08:57:02 -0600
From: "Rob Herring (Arm)" <robh@kernel.org>
To: =?iso-8859-1?Q?Cl=E9ment?= Le Goffic <legoffic.clement@gmail.com>
Cc: linux-arm-kernel@lists.infradead.org,
	Maxime Coquelin <mcoquelin.stm32@gmail.com>,
	linux-stm32@st-md-mailman.stormreply.com,
	Conor Dooley <conor+dt@kernel.org>,
	Alexandre Torgue <alexandre.torgue@foss.st.com>,
	Julius Werner <jwerner@chromium.org>, linux-kernel@vger.kernel.org,
	Krzysztof Kozlowski <krzk@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	devicetree@vger.kernel.org,
	=?iso-8859-1?Q?Cl=E9ment?= Le Goffic <clement.legoffic@foss.st.com>
Subject: Re: [PATCH v9 2/7] dt-bindings: memory: introduce DDR4
Message-ID: <176365062162.1254978.3113045721070075271.robh@kernel.org>
References: <20251118-b4-ddr-bindings-v9-0-a033ac5144da@gmail.com>
 <20251118-b4-ddr-bindings-v9-2-a033ac5144da@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20251118-b4-ddr-bindings-v9-2-a033ac5144da@gmail.com>


On Tue, 18 Nov 2025 16:07:58 +0100, Clément Le Goffic wrote:
> From: Clément Le Goffic <clement.legoffic@foss.st.com>
> 
> Introduce JEDEC compliant DDR bindings, that use new memory-props binding.
> 
> The DDR4 compatible can be made of explicit vendor names and part
> numbers or be of the form "ddrX-YYYY,AAAA...-ZZ" when associated with an
> SPD, where (according to JEDEC SPD4.1.2.L-6):
> - YYYY is the manufacturer ID
> - AAAA... is the part number
> - ZZ is the revision ID
> 
> The former form is useful when the SDRAM vendor and part number are
> known, for example, when memory is soldered on the board.
> The latter form is useful when SDRAM nodes are created at runtime by
> boot firmware that doesn't have access to static part number information.
> 
> Signed-off-by: Clément Le Goffic <clement.legoffic@foss.st.com>
> Signed-off-by: Clément Le Goffic <legoffic.clement@gmail.com>
> ---
>  .../memory-controllers/ddr/jedec,ddr4.yaml         | 34 ++++++++++++++++++++++
>  1 file changed, 34 insertions(+)
> 

Reviewed-by: Rob Herring (Arm) <robh@kernel.org>


