Return-Path: <devicetree+bounces-184463-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id BBE43AD41AA
	for <lists+devicetree@lfdr.de>; Tue, 10 Jun 2025 20:07:40 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 83E5C16EA27
	for <lists+devicetree@lfdr.de>; Tue, 10 Jun 2025 18:07:41 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 0A90223D290;
	Tue, 10 Jun 2025 18:07:32 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="vHUkT6uM"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DA4C21F1527
	for <devicetree@vger.kernel.org>; Tue, 10 Jun 2025 18:07:31 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749578851; cv=none; b=HeLCuzuxIaq08nIIQSN/h/mrr/i9it94/EGxBSV42X8/q1dGgjBVirMpZW464Y5X8J01irbArKl/khAVHRt2ho8DMbzPfMKHR6sx6BQTCQX7H22MZ5iQrE3Eo8BeAR8r1mbh2+gxI+HE6QuJ7Ijdk4sNb0HTqs9H5u/Ncps2ZUs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749578851; c=relaxed/simple;
	bh=qmH2Bvhbdz6HksQ2egSAUBTZkpeANo6MSE5zClk/vUE=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=eS2iZ6om+xuVMVsB4atuWsQ5egQ0U7iKLuzkstfmjFbKu5cbukkqmD4EsYE6AbuIsemh9cGBkqvOfKzRvDtoHHk/oVyH++M+Ua9BhjguXRnq8Ce8s4HYxmCQ2wRq/pU0PSHU5AMLU0rvHrwJNN1ztNsZdxTXIu6fRe9j/XqT7tk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=vHUkT6uM; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 647A3C4CEED;
	Tue, 10 Jun 2025 18:07:29 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1749578851;
	bh=qmH2Bvhbdz6HksQ2egSAUBTZkpeANo6MSE5zClk/vUE=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=vHUkT6uMCXc+CBbbYFnvrJz0S9ZY3GUC3iVjRQ5HWhrBu9OpjaMLNsbqQa/S5qtsT
	 ZJr55OxoYf4ukUU2A6k74iHaMzolQB29d3ur53lIhIY2Zrs/jzkDdLD6fejEv4Q0Au
	 Ts7u6/V+N9bDTW470FOR7g6hCwHDO5q6lJacow85Add6bI5a2Q+JhnVOePl/sCBAod
	 dByBbJlfgBfrl+YmenbIuCr5ZQx9VCySrU1QCkWacAhh3aWQEWI3QSH4w/ivqj4it0
	 5sfyUz8YgI1S6qEr04e/3c1QEBJ9xAq4p5vhNLegztFkOguweOLyr78a2LRbLCY8lP
	 oTcEyrscr+AeQ==
Date: Tue, 10 Jun 2025 13:07:26 -0500
From: Rob Herring <robh@kernel.org>
To: Shankari Anand <shankari.ak0208@gmail.com>
Cc: devicetree@vger.kernel.org, krzk+dt@kernel.org,
	skhan@linuxfoundation.org, conor+dt@kernel.org
Subject: Re: [PATCH v4] dt-bindings: arm: Convert Altera SDRAM EDAC .txt to
 YAML
Message-ID: <20250610180726.GA2390933-robh@kernel.org>
References: <174954801086.147754.9306389006765920749.robh@kernel.org>
 <20250610151105.393011-1-shankari.ak0208@gmail.com>
 <174957433232.1948621.146243109364629093.robh@kernel.org>
 <CAPRMd3nnu9TyQnMNtN6W+PUuZ_q4ZBENWtrf8DLeWt2AH0n91Q@mail.gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <CAPRMd3nnu9TyQnMNtN6W+PUuZ_q4ZBENWtrf8DLeWt2AH0n91Q@mail.gmail.com>

On Tue, Jun 10, 2025 at 11:01:37PM +0530, Shankari Anand wrote:
> > /builds/robherring/dt-review-ci/linux/Documentation/devicetree/bindings/edac/altr,socfpga-ecc-manager.example.dtb: sdramedac (altr,sdram-edac-s10): 'reg' is a required property
> >         from schema $id: http://devicetree.org/schemas/arm/altera/socfpga-sdram-edac.yaml#
> 
> The command ran without any errors for me.
> shankari@shankari-IdeaPad:~/linux$ make dt_binding_check
> DT_SCHEMA_FILES=Documentation/devicetree/bindings/arm/altera/socfpga-sdram-edac.yaml

Because with DT_SCHEMA_FILES everything is not tested. The warning is 
from another example.

Don't send new versions as replies to the prior versions. And slow down 
your rate a bit. We're not all in the same timezone.

Rob

