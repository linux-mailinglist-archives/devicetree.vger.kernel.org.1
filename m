Return-Path: <devicetree+bounces-138292-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 06A9CA0C5BA
	for <lists+devicetree@lfdr.de>; Tue, 14 Jan 2025 00:32:40 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id C3B6F3A207A
	for <lists+devicetree@lfdr.de>; Mon, 13 Jan 2025 23:32:33 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 106B31F9A93;
	Mon, 13 Jan 2025 23:32:35 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="rsG8uBGS"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D9D391EE7B3;
	Mon, 13 Jan 2025 23:32:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736811155; cv=none; b=KyALryvzUjt3nXlSlFeSrIecTyDukRFoJxeV45wA4mq2ahtlgrXjUea5bNuGX3LrJEWs7Vz1LLzt6FvcOji4Uce+syHluuscvsUEHVeqmEc9uWzBzdz7g/ucVoyCEAvEa94XBqCxgV9yaqlKdEqSuZY+OBcAeKFGpaNbGKnad0o=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736811155; c=relaxed/simple;
	bh=fvcEIXjdhHdU5HJN4WHPOfSpcrVfiVu2g4Ub1Y5Qnm0=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=RrVuMQuC+mV+GgiTkFWSl7D/Da0OWYu39Ufrz4AhmX+Ve9IAkW5H8KN6MY2KURXv/WlszcWG0/WW7gUdLqXEkJ5G8lxkRaHLKu3amDFWIMIp03R7rPqp0Qdov8F4olZcAeF5gQ+ZpnpCajDZbthePYGxJEi6pjQqZXIYbmktr8M=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=rsG8uBGS; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 8C13BC4CEE2;
	Mon, 13 Jan 2025 23:32:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1736811154;
	bh=fvcEIXjdhHdU5HJN4WHPOfSpcrVfiVu2g4Ub1Y5Qnm0=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=rsG8uBGSaFWbDfzQFe/pPnf/1Js5O5A7SBAlwRTzIEcTRy/I9eDtf4qQGuAl6jE9p
	 toBjpO1Op7L1cYrL/v0DeRdQjRnUglMlY2PhWkfefyhz35mAAWY3APrNzLQvZ1/yaD
	 oGWfJvljZ8scBDNhALt487NxOMe+zRBpElCLdGEMEK3UVDA/lO1HMEwvvVPLzoBWFN
	 rPG9ueqbfLCClkQ5RY2P9IyGZEokCMpbg6JtDQGwazl+GfPRQ2YD5DsFoSWFaj3voN
	 iE1mUHYQ6MzPZgzQbEr9AwPtRzw9d9RZINKnj2v7gYfHX3LP//RJcCO4CU8YQI/oZ/
	 xZp2JcIGJPf8A==
Date: Mon, 13 Jan 2025 17:32:33 -0600
From: "Rob Herring (Arm)" <robh@kernel.org>
To: Zijun Hu <zijun_hu@icloud.com>
Cc: Catalin Marinas <catalin.marinas@arm.com>,
	Mike Rapoport <rppt@kernel.org>,
	Grant Likely <grant.likely@secretlab.ca>,
	Marek Szyprowski <m.szyprowski@samsung.com>,
	Maxime Ripard <mripard@kernel.org>,
	Andreas Herrmann <andreas.herrmann@calxeda.com>,
	Marc Zyngier <maz@kernel.org>, Robin Murphy <robin.murphy@arm.com>,
	linux-kernel@vger.kernel.org,
	Saravana Kannan <saravanak@google.com>,
	Oreoluwa Babatunde <quic_obabatun@quicinc.com>,
	Zijun Hu <quic_zijuhu@quicinc.com>, devicetree@vger.kernel.org
Subject: Re: [PATCH v4 13/14] of/fdt: Check fdt_get_mem_rsv() error in
 early_init_fdt_scan_reserved_mem()
Message-ID: <173681115175.3630879.12415941975692508036.robh@kernel.org>
References: <20250109-of_core_fix-v4-0-db8a72415b8c@quicinc.com>
 <20250109-of_core_fix-v4-13-db8a72415b8c@quicinc.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20250109-of_core_fix-v4-13-db8a72415b8c@quicinc.com>


On Thu, 09 Jan 2025 21:27:04 +0800, Zijun Hu wrote:
> From: Zijun Hu <quic_zijuhu@quicinc.com>
> 
> early_init_fdt_scan_reserved_mem() invoks fdt_get_mem_rsv(), and it will
> use uninitialized variables @base and @size once the callee suffers error.
> 
> Fix by checking fdt_get_mem_rsv() error as other callers do.
> 
> Signed-off-by: Zijun Hu <quic_zijuhu@quicinc.com>
> ---
>  drivers/of/fdt.c | 7 ++++++-
>  1 file changed, 6 insertions(+), 1 deletion(-)
> 

Applied, thanks!


