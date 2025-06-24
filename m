Return-Path: <devicetree+bounces-188875-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 2D957AE5DC6
	for <lists+devicetree@lfdr.de>; Tue, 24 Jun 2025 09:31:57 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id B6DB4163E7C
	for <lists+devicetree@lfdr.de>; Tue, 24 Jun 2025 07:31:57 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E68FA1C5D72;
	Tue, 24 Jun 2025 07:31:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="oi5wy9uL"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C2D8F1B0402
	for <devicetree@vger.kernel.org>; Tue, 24 Jun 2025 07:31:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750750313; cv=none; b=lB7D074JVTUr3J6XEgBjjBjD4h0o6bjE7GFl051ihD19+FTI4ZbWeoimoDB3HLNt3dHM+J4UUvGLDK4q2ejOxcK5T4WZxFccuL0KfdbvpfmWuJ20qTsPsFcCugvW98vihxPtYpA3az/6QKNRORSw44uhKfdA1PJ8Tfn9Moad9l8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750750313; c=relaxed/simple;
	bh=3YAK/qk4yuySRIsV3wFA0Cx471RJytwVzR+EDcMhfZg=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=WuxCZRPyfWJksOY9JfErooJYuo5smztDO61w80U73yCk0SIT45fKnBDIZJ/bIQhXLLtvjQIM07QfKlggaImXpJnicu0PiHASobzcSXa7UvtU41F++ogPStUq3jF7P0KaV+0KKXo7irV48zrslQt206212lByY7mN+VGVoy8Y+UI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=oi5wy9uL; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id B9C45C4CEE3;
	Tue, 24 Jun 2025 07:31:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1750750313;
	bh=3YAK/qk4yuySRIsV3wFA0Cx471RJytwVzR+EDcMhfZg=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=oi5wy9uLtV30vQlecFuneOTnn2hvW6/87CkkDi2KHNQOyv8+n71D5D0oJeKzPRPSr
	 nYSOVq2MTP+w5QOtg0mKkhHqCkAgtNM3uAXDzHt2ENPOTLYN5Us6+PBnM+He1SrEns
	 pE441jK+rfeq4I8Zjn6N1/Rm8YiNzjTMChsBGMeKlYduAKhHHsKp188JDmlIYS0nWy
	 hlQs2P3wbncbclMHvtYyOKXThQnksF5XahQzfLSk3/J94s34G3Qww9IYn34xlo5pCb
	 zvR2+JG+P0HkoXJ9lDDMiMsvHowQUIykSQIMPDxbkxlFjWyVU/g9YRHJvTcgXfBNH/
	 3uVL1bGdcSsjQ==
Date: Tue, 24 Jun 2025 09:31:50 +0200
From: Krzysztof Kozlowski <krzk@kernel.org>
To: Shankari Anand <shankari.ak0208@gmail.com>
Cc: devicetree@vger.kernel.org, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Matthew Gerlach <matthew.gerlach@altera.com>
Subject: Re: [PATCH v6 3/3] dt-bindings: memory-controllers: Convert Altera
 SDRAM EDAC .txt to YAML
Message-ID: <5qalnvnxhocj3sjrxqqe6i4zaugjz73f6pjkq4j7od2ovsraqr@tpwvjw2x5w7w>
References: <20250623195741.300644-1-shankari.ak0208@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
In-Reply-To: <20250623195741.300644-1-shankari.ak0208@gmail.com>

On Tue, Jun 24, 2025 at 01:27:41AM +0530, Shankari Anand wrote:
> Convert the Altera SOCFPGA SDRAM EDAC devicetree binding from the
> .txt format to a YAML schema.
> 
> Added a 'reg' property as dt_binding_check flagged its absence.
> Dropped it from required as it causes warnings in altr,socfpga-ecc-manager.
> The controller is memory-mapped; address is confirmed from Intel's manual.
> 
> Also added two strings: altr,sdram-edac-a10 and altr,sdram-edac-s10,
> compatible with altr,sdram-edac but use two interrupts;

Why?

> Schema enforces interrupt count per variant.
> 
> Signed-off-by: Shankari Anand <shankari.ak0208@gmail.com>
> ---
> v5 -> v6: 
> - Drop dummy intc/sdr/model/compatible from examples
> - Make reg optional to fix warning with ecc-manager binding
> - Reduced the examples to one

Never tested.

Best regards,
Krzysztof


