Return-Path: <devicetree+bounces-136210-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 40B7DA04426
	for <lists+devicetree@lfdr.de>; Tue,  7 Jan 2025 16:22:53 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 60D447A0F70
	for <lists+devicetree@lfdr.de>; Tue,  7 Jan 2025 15:22:45 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 6E3231F37AF;
	Tue,  7 Jan 2025 15:22:32 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="HQvZLqfm"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 40C201F37B9;
	Tue,  7 Jan 2025 15:22:31 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736263352; cv=none; b=sGhdpj4smDzqCO3p0Z7DHWJNCvQynPD/nQYoQ+FE5Z3lPbTrBc2pXw8QlI2gquNRRdqnSCajLHsHCfZwU2u7RR6dHVqMFlh8AgvjfhU64T6UAZ50xaDvX7B5S5QX/Wi/yDVdYlYfKj0AEU8Tj3l3oXBoxA80X76MjYiwxSKyE3M=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736263352; c=relaxed/simple;
	bh=X6YuxQ5CeYIDXaS8BjovNWeVxLhi6nAdN1AvmyfWbGk=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=lNisGz7PD8LAL0RkKnVkCjWyG9TLNDVAViGrofstLlGTKzF6eXB3ssp1J9sw1sO+c2w0b4moG2mxvT9QX/mSVK0QFjT81+cl6ysqKYiCwZrn2lE5yKblPYeQSnHRm/RR958vvCSvHmMlKSqEkcDnSxLLEk0RdYbNQ9bZ3k9L6dQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=HQvZLqfm; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 9E766C4CED6;
	Tue,  7 Jan 2025 15:22:31 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1736263351;
	bh=X6YuxQ5CeYIDXaS8BjovNWeVxLhi6nAdN1AvmyfWbGk=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=HQvZLqfmk8JYqtPu/E4CRfE+yGDpCVzfcu4Ic/sTgTVXF+MHpkp/0EvW7WUCZjE7R
	 IF0Pp92kbwp7/ZijNtEqvrJVOP764PDpZZTpPbFLxY21gpRov25KK7biBUSH0//Pbv
	 l35diF5HQBrj0ZJ+Osy2vLcxxnpOpnuiIXuC8Pj9Yg2TSaLsbHuZweLcvLM00l6h4c
	 VLd/a7J3tmXla0Ka271s3uKhOcsE3jacOVMT6FvzuwYW3t++a2Vf1ZxgjJIWzg664X
	 kPg0qEH3iy81x8qBqM+AfIeLRNnhuDQ21gyV17wDDvq+S9Zw5WAr66uMcXLzSCPFfw
	 dpR4FHd7UUTSA==
Date: Tue, 7 Jan 2025 09:22:30 -0600
From: Rob Herring <robh@kernel.org>
To: Philipp Zabel <p.zabel@pengutronix.de>
Cc: devicetree@vger.kernel.org, Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Neil Armstrong <neil.armstrong@linaro.org>,
	linux-kernel@vger.kernel.org
Subject: Re: [PATCH 09/14] dt-bindings: reset: snps,dw-reset: Convert to yaml
Message-ID: <20250107152230.GA3633520-robh@kernel.org>
References: <20220407154338.4190674-1-p.zabel@pengutronix.de>
 <20220407154338.4190674-9-p.zabel@pengutronix.de>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20220407154338.4190674-9-p.zabel@pengutronix.de>

On Thu, Apr 07, 2022 at 05:43:33PM +0200, Philipp Zabel wrote:
> Convert the device tree bindings for the Synopsys DesignWare reset
> controller to YAML schema to allow participating in DT validation.
> 
> Signed-off-by: Philipp Zabel <p.zabel@pengutronix.de>
> Cc: Luis Oliveira <Luis.Oliveira@synopsys.com>
> ---
>  .../bindings/reset/snps,dw-reset.txt          | 30 -------------
>  .../bindings/reset/snps,dw-reset.yaml         | 44 +++++++++++++++++++
>  2 files changed, 44 insertions(+), 30 deletions(-)
>  delete mode 100644 Documentation/devicetree/bindings/reset/snps,dw-reset.txt
>  create mode 100644 Documentation/devicetree/bindings/reset/snps,dw-reset.yaml

In reviewing some unconverted schemas, I found this one is still not 
converted. Can you resend. You can put me if you need a maintainer for 
it.

Rob

