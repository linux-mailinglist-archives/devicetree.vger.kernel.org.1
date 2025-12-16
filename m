Return-Path: <devicetree+bounces-247183-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id D20B4CC5587
	for <lists+devicetree@lfdr.de>; Tue, 16 Dec 2025 23:29:02 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id A0590301A708
	for <lists+devicetree@lfdr.de>; Tue, 16 Dec 2025 22:29:01 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C335D330339;
	Tue, 16 Dec 2025 22:29:00 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="aQXJNsX5"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 98C73247DE1;
	Tue, 16 Dec 2025 22:29:00 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765924140; cv=none; b=CnOaemKc7OSrGFIOEZUcB5SlWYcdXqNjgvm0UDNjnBr9/osrd1qt7zcxajX0MmET6R1k5Dt+0B0zms4X/oXcQbsTjZWmduJYrQkVBMymCn99pavh0y6CViQw5EYMdTrDQGOASfZ4gYHLpZdzW2OJ8E8tK9Qo6hk3aJ9gXeXIdLk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765924140; c=relaxed/simple;
	bh=EL1DAB+aQaWawnqUTU0r/jA74EFo/IqWPPi5ybJq/c8=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=iukDVU8KX0QFjjL/VAnteDTawZWZ2PyfURvSdQC3kOJHgLLhjIRS1oqLl0tW2m7ObteMsOTll4QVetcJlZoxETtoYKeK9DzwvzF4SdymldP8mzV0lCv8K6kKd4Tqi91Wzgo0tWg713D4+2BkSlWWVhMT3UTN66ZZoi/Gwu8T/+0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=aQXJNsX5; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 2FEC2C4CEF1;
	Tue, 16 Dec 2025 22:29:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1765924140;
	bh=EL1DAB+aQaWawnqUTU0r/jA74EFo/IqWPPi5ybJq/c8=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=aQXJNsX5rb0dPNGdTD3o0u+w+T8WwVYm4+XFZmNexoSELyzKK/qM40sLpe5O5N4et
	 QtqrUgX1rBNaUGr2+Stin/j0XetNCrhaUO9nJOIuj0pXA1ch9Re6CR80jET4V1xRCD
	 bqaIFhJZrZRcUFGkmwzMMl8U5bF/OC7jLk0z+n4sHJz0WQNB+VsbgAz2seKpCp+P+j
	 wDoMimToYHhBeA0hLd882Szl34762yptF7gOHPBkhiwf9fDapgz6WPMcEWMr3y39i1
	 Kz1rlyuQvlU9rEzEtWl4L/kC1hntyksv/6sO9DG6zYEJhl6DtCOqCuMvRshx7PLrRF
	 AWuzT8xRP32Dw==
Date: Tue, 16 Dec 2025 16:28:57 -0600
From: Rob Herring <robh@kernel.org>
To: Ronak Jain <ronak.jain@amd.com>
Cc: krzk+dt@kernel.org, conor+dt@kernel.org, michal.simek@amd.com,
	nava.kishore.manne@amd.com, devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH v2 0/2] Update firmware dt-binding
Message-ID: <20251216222857.GA3151380-robh@kernel.org>
References: <20251212100542.2756757-1-ronak.jain@amd.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20251212100542.2756757-1-ronak.jain@amd.com>

On Fri, Dec 12, 2025 at 02:05:40AM -0800, Ronak Jain wrote:
> The patch fixes/enhances below problems,
>     1. Add missing compatible property under the example section for
>     zynqmp_firmware node.
>     2. Add conditional pinctrl schema
> 
> Changes in v2:
> - Added acked-by signature in patch #1
> - Following up on the queries again in patch #2. No code changes in
> the patch itself
> - Dropped off patch #3
> 
> Ronak Jain (2):
>   dt-bindings: firmware: xilinx: Add xlnx,zynqmp-firmware compatible
>   dt-bindings: firmware: xilinx: Add conditional pinctrl schema

Applied, thanks.

Rob

