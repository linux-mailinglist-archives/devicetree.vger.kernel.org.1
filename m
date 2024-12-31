Return-Path: <devicetree+bounces-134942-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id B36D09FEFDD
	for <lists+devicetree@lfdr.de>; Tue, 31 Dec 2024 14:55:29 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 8F7EF3A2B08
	for <lists+devicetree@lfdr.de>; Tue, 31 Dec 2024 13:55:23 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 96E9219D06E;
	Tue, 31 Dec 2024 13:55:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="hbs3+i4q"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6AB432D7BF;
	Tue, 31 Dec 2024 13:55:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1735653322; cv=none; b=oEmB5/hH+OutpYhNOQZFTHbpRajGeXfqqnNq7M5fRfB0uh/CPb0r0hlv58RFVeskQtq13d9TNUTt6ipjWm7/yNY/L6BS7/bnVeFBut9U1hHmjl5AOg8eG1Y+lQPbxow9sNmgN68UZc6Ld0CuokysWrux0Nd+rgQq+s45h5dIXTM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1735653322; c=relaxed/simple;
	bh=CH5DN9pGB40ns4Y3FHoPd6Ard85s7turC5S+djiLoD4=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=FznHmPOFfkqHjes7mO/tEie7TCxEtTi0JLDtdxw5GrO5BikV8L9IEQcPO+qhiyI/wZD1bWywVvV8r+dsBnOieNOZnPso+sl7Y4IOTYgcuP907oWpWxkZ1L5REQMVmJlgmLX0sy+1J3k8r58EPoEJX8/jqLRwDcJZoQl5Ol6qCL0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=hbs3+i4q; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id BCBD0C4CEDD;
	Tue, 31 Dec 2024 13:55:21 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1735653322;
	bh=CH5DN9pGB40ns4Y3FHoPd6Ard85s7turC5S+djiLoD4=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=hbs3+i4qWW4G2sloB+6iqPuneMHaK/KffY7n/tX5Cx0NlYiEtWlWSMSXOtq7b+DcC
	 eXLB0asrUwQ7Z+pp+F+lwuMsj7l+niyJr6zVaNHU86MlP714kLZN4MqA/6yArBDE5K
	 4Yq+AsrPcxyjuqnG26YU4mJ657/QpVTU4JwB7ldE/bFpMpIefKUa4IUg68h4hpzCSF
	 q3DTiuzAVHGwzI7WTkamhdv9H2x8O9TxCahpAFIVKp7i2fWEc9pvGW1mxZHoOUpnWU
	 2m+XtSxnVAntMeYMOVEuD/SazdhX74GZuneNv6iygW4KWk769Rrkg5WdZS3/uMC0xX
	 nf3KCyBwRlElg==
Date: Tue, 31 Dec 2024 07:55:19 -0600
From: "Rob Herring (Arm)" <robh@kernel.org>
To: Thomas =?iso-8859-1?Q?Wei=DFschuh?= <linux@weissschuh.net>
Cc: devicetree@vger.kernel.org, Saravana Kannan <saravanak@google.com>,
	linux-kernel@vger.kernel.org
Subject: Re: [PATCH] of: Constify 'struct bin_attribute'
Message-ID: <173565331750.97002.3949816867688807771.robh@kernel.org>
References: <20241222-sysfs-const-bin_attr-of-v1-1-99cc2e8c2a55@weissschuh.net>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20241222-sysfs-const-bin_attr-of-v1-1-99cc2e8c2a55@weissschuh.net>


On Sun, 22 Dec 2024 21:30:25 +0100, Thomas Weiﬂschuh wrote:
> The sysfs core now allows instances of 'struct bin_attribute' to be
> moved into read-only memory. Make use of that to protect them against
> accidental or malicious modifications.
> 
> Signed-off-by: Thomas Weiﬂschuh <linux@weissschuh.net>
> ---
>  drivers/of/kobj.c | 4 ++--
>  1 file changed, 2 insertions(+), 2 deletions(-)
> 

Applied, thanks!


