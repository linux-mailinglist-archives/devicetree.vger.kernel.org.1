Return-Path: <devicetree+bounces-133067-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id EDDA99F9226
	for <lists+devicetree@lfdr.de>; Fri, 20 Dec 2024 13:25:22 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id F3416188C487
	for <lists+devicetree@lfdr.de>; Fri, 20 Dec 2024 12:25:23 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 760982036FF;
	Fri, 20 Dec 2024 12:25:17 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=linuxfoundation.org header.i=@linuxfoundation.org header.b="mfCKoErJ"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4F66513C914;
	Fri, 20 Dec 2024 12:25:17 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1734697517; cv=none; b=BiOOQznM/2LUT+eV178d3IP+si1wgAE1UgMM0F9p48c681whJC2R7yy5dUN1PRKPgD5fpHRKLz5TS60uwn6pXYDuFD8s4q76MwuuCJYTs+qmcIy200mlqi86VpwnmrN+FOqQrz7xzqJpa2Trp6yvXHLuNvevIUK9iSbWpO3m+FU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1734697517; c=relaxed/simple;
	bh=yAuar+s+5vgvIBQ7c+MdOD4jDBVuK3NXXY0LaDj57uM=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=NtWg9P4iRKtefpiQtbjJc+2tycngzOF8oC9cKIerZfSePiXnawRlXWZr2j5XnibVKLzfO7noLSo5EqYmGvXdkgfjmyHc9S2aMUjGUDSLGAiX8ub4USdaV2YIPX35RPeCVQJNG8Pqx6QYj09c7G2wuXmUFhkMZX4BCe+GXfyqefc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (1024-bit key) header.d=linuxfoundation.org header.i=@linuxfoundation.org header.b=mfCKoErJ; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 36FA9C4CECD;
	Fri, 20 Dec 2024 12:25:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=linuxfoundation.org;
	s=korg; t=1734697516;
	bh=yAuar+s+5vgvIBQ7c+MdOD4jDBVuK3NXXY0LaDj57uM=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=mfCKoErJ7V/Zs+NFP8OtJGp7+EkF9whr1af0TyMX8NtrHNr79N3dfZIBzhJ5RSH3R
	 B7btPtZ6hfidRf4EJON2ZZ4O174ut9qFhSC165gHw6Bsk3+6zt1GSyQqtgsUq1G+5i
	 1skxTQwrvJUPitAF0wDB3yA5Z8wL8YzIJYAUK3WA=
Date: Fri, 20 Dec 2024 13:25:13 +0100
From: Greg KH <gregkh@linuxfoundation.org>
To: joswang <joswang1221@gmail.com>
Cc: robh@kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org,
	amitsd@google.com, dmitry.baryshkov@linaro.org,
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
	Jos Wang <joswang@lenovo.com>
Subject: Re: [PATCH 1/2] dt-bindings: connector: Add time property for sender
 response
Message-ID: <2024122046-backstage-laboring-3bcd@gregkh>
References: <20241215124627.70525-1-joswang1221@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20241215124627.70525-1-joswang1221@gmail.com>

On Sun, Dec 15, 2024 at 08:46:27PM +0800, joswang wrote:
> From: Jos Wang <joswang@lenovo.com>
> 
> This commit adds the following properties:
>   * pd2-sender-response-time-ms
>   * pd3-sender-response-time-ms
> 
> This is to enable setting of platform/board specific timer values as
> these timers have a range of acceptable values.
> 
> Signed-off-by: Jos Wang <joswang@lenovo.com>
> ---
>  .../bindings/connector/usb-connector.yaml     | 20 +++++++++++++++++++
>  1 file changed, 20 insertions(+)

Where is patch 2/2?  Oh, I now see it, but our tools do not :(

Please make them properly linked together, normally something like 'git
send-email' will do that for you.

thakns,

greg k-h

