Return-Path: <devicetree+bounces-154246-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id DC175A4F789
	for <lists+devicetree@lfdr.de>; Wed,  5 Mar 2025 07:59:52 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id D7C353ABDD0
	for <lists+devicetree@lfdr.de>; Wed,  5 Mar 2025 06:59:40 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 173421E5B98;
	Wed,  5 Mar 2025 06:59:48 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="sQzjRI0J"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E67FD1E5B77
	for <devicetree@vger.kernel.org>; Wed,  5 Mar 2025 06:59:47 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1741157988; cv=none; b=dp9FIgvhmlcj2SCLNpIbZwCkSY+AM72RFx2xlxJkv2ihdQZLMXlP7L9CZkO9c80wJfWk6tWUMoRoODmRnVT/k8JAW8oa4C5aiM0qvMK/KErL3MyAuAPaw82Uq/Tne7x6pfFHxCwkNQ1zX7jetRr1TzNGB86F+PQobZXyncFJyOc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1741157988; c=relaxed/simple;
	bh=UnMrf3hwWP656jVdFqfjePZCqUTf7O+8jLhTLHLlQCY=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=mtFmvWpqp7w5+J+eekU9BU3hq2tibFK6GqXN+9tIZgyP8rLoDalxXD7ldtuoOxSI4gRxM+UCJS9H+300s6HK9qeGe3J7EF42BpZVr0thBv2LHRpqIMeBqlev7MYg4+W06kzTOs2XJF2vmY149CzIPAwFA1jA7zIJAcsq1aDW0EQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=sQzjRI0J; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id D64C8C4CEE2;
	Wed,  5 Mar 2025 06:59:46 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1741157987;
	bh=UnMrf3hwWP656jVdFqfjePZCqUTf7O+8jLhTLHLlQCY=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=sQzjRI0JKfGv7ExdP8oZzO3kvepg23+XABIl3jd0Qcb1XfnZbHYZXmnsNIgEFNZsM
	 TAjv+zLnt3ggQTcmrQ0OpyMyyNkutIBib0nb3yFLqeqJeUT6miFONmaPAkcoyIpxM9
	 E5nuaaj4Te12OVjZIqNVzgur5iir+OFoV8efPrPdyNSmHfXLe9rZm74Yqt8ijDMf7a
	 bNNDHObiy3WQLnHwzGSSkMrwTBaMkLhf70Si4OU5bGp48gto9FnhcJzPU3/Iz1jtDn
	 GtHsNRfoK5SebKHlwWJcdhYrvnPMrD/dRsFSXQEFT973t83waP9kQ8341/CvDEXp78
	 3w+e8bVjRljUQ==
Date: Wed, 5 Mar 2025 07:59:44 +0100
From: Krzysztof Kozlowski <krzk@kernel.org>
To: Zhang Yi <zhangyi@everest-semi.com>
Cc: alsa-devel@alsa-project.org, broonie@kernel.org, 
	devicetree@vger.kernel.org, tiwai@suse.com, amadeuszx.slawinski@linux.intel.com, 
	robh+dt@kernel.org, krzysztof.kozlowski+dt@linaro.org, conor+dt@kernel.org
Subject: Re: [PATCH v4 2/2] ASoC: dt-bindings: Add Everest ES8389 audio CODEC
Message-ID: <20250305-quiet-upbeat-chamois-5e5ce2@krzk-bin>
References: <20250304114751.54635-1-zhangyi@everest-semi.com>
 <20250304114751.54635-3-zhangyi@everest-semi.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
In-Reply-To: <20250304114751.54635-3-zhangyi@everest-semi.com>

On Tue, Mar 04, 2025 at 07:47:51PM +0800, Zhang Yi wrote:
> Add device tree binding documentation for Everest ES8389 which
> is different from ES8388
> 
> Signed-off-by: Zhang Yi <zhangyi@everest-semi.com>
> ---
>  .../bindings/sound/everest,es8389.yaml        | 83 +++++++++++++++++++


NAK, you just ignored entire feedback.

Best regards,
Krzysztof


