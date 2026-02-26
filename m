Return-Path: <devicetree+bounces-268964-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id OPcrNpOToGllkwQAu9opvQ
	(envelope-from <devicetree+bounces-268964-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Thu, 26 Feb 2026 19:40:19 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 3C99B1ADD55
	for <lists+devicetree@lfdr.de>; Thu, 26 Feb 2026 19:40:19 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id A4F59339A93D
	for <lists+devicetree@lfdr.de>; Thu, 26 Feb 2026 17:45:16 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 4EBA735A38F;
	Thu, 26 Feb 2026 17:45:05 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="HtMjet7g"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ed1-f43.google.com (mail-ed1-f43.google.com [209.85.208.43])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D5BB5355F51
	for <devicetree@vger.kernel.org>; Thu, 26 Feb 2026 17:45:03 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.43
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772127905; cv=none; b=nJ5a81LqRQ7PSIRVx+bnphcfuTSyO+PL0R60bn1EPbSGy5iBqZNfLLvmqT5ShunVpHNMLrEbxtiXtTaReHRNICSlTaPd0UFKvuqHMxTY1K+Hb1dkCYxw83kXa150x5cGlqfWzmH9ig3vvevbFhdWQx/bEBKZLuCQMyPH3vGSBYE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772127905; c=relaxed/simple;
	bh=kweqCw7nmF7ZNGp7vL1pa93p5Vo7GbVX5Lf9kd9JOhQ=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=cJkQzCRMzmZKFNZk0q0Nk9lWow1txFuKq/4MxrUKU3dmlJqfMmXqWf+E6Wuy2QTWLQriGoa6fQdX3wyvd+j+iVi7qSBn6V3buUO6KlqJ11hrCpKvIF5zqB9CKFF0QcZnCoEVhXv/jZXhjCZWaMgI02XmuJAxCKm8LyFXB2SFOjI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=HtMjet7g; arc=none smtp.client-ip=209.85.208.43
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-ed1-f43.google.com with SMTP id 4fb4d7f45d1cf-65b9d8d6b7dso1889991a12.2
        for <devicetree@vger.kernel.org>; Thu, 26 Feb 2026 09:45:03 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1772127902; x=1772732702; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=lwTJv9LGSAlffYlkadnvjA+g9OCfZ1CRMJttWHSXLMM=;
        b=HtMjet7go47zsjfGUVmO5SWfA2szX8fmoIwIWng0Qw1RmJyU60r7Zt+z1F2Td6e2Pz
         Z2UqlTaMDiMkd0t0HuVa/2jOP1q2jwmpbtZ/XieMqGfjk7skhC0dKBsXCIqDH8V7l3PM
         jEdU8EMelQH8UnWrqCuCbNMGw51tNzurR2IF/3TFdtPi84HBSwCTPdvVI2NLIsJWF2cb
         hQnzPArpVwmI0SuSCmcOqBJ9vp38CuCJEXYlPi6QQaQzAbDIdI8TpK9n0Ef0z0VVg+Z1
         yE4vKaZ1j8TKetM6PIojhFkDx5nqiGGMluy0QWTrpTTLltpMUaBlEaWBw4mhL9Ysjl0v
         TzXA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1772127902; x=1772732702;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=lwTJv9LGSAlffYlkadnvjA+g9OCfZ1CRMJttWHSXLMM=;
        b=fkO8mEtQ5gumbg2ldpv+XL5xb3IY8y/eoELjVzuj8nKO1jyC60GV9GMFrIKRQVsvkx
         +btbT1dH61P8mNTYpELyfJnZPdQ3+xIAv0BwTMBRU0WHoG/pZ/xIyDiwbdUh/nFD9xr1
         NJpxRroUX6pTCpXZMnPhYipHtsUj1EBUQlLYNyPYmj/X5JKjMbluKHcFIy5mWnRe7wO4
         p5XtfvkG3VUScwZSMY4pibRmZv4jMi3GioL0v+5zwNWkr+2onDTn145PcUSb6winSfBS
         22Ijl+ttxujpuyC7QbqmgE6+90twBcM5eTOmqjoh4LYUytD5X2Y0a4qMZoKTlGhS7hBC
         musw==
X-Forwarded-Encrypted: i=1; AJvYcCX0ofQ7Iui6mvzOFyFmA2NPdXTeuVSZL/PFVm4vFsTC+o00Z2N/A9bTrP5jGRMei7Tbr4NHzkprkmx3@vger.kernel.org
X-Gm-Message-State: AOJu0YxKYvPg4ykDIX/CQuh3uHJeabOzePHAXoxTESHhL9rsJgKLe/L0
	K4LOsO408sx0JEEOFTl1D17QBUwv8TLwaeASrdWhKysie3T25tNBwXct+akIzw==
X-Gm-Gg: ATEYQzxeGwltonkclqnElVYIE1vRqEGom5D/7qchgK6aeAwHS3yjRRjaIZyIspSS5tM
	v0Eajpqsakm7bwPPToGXzb2GKP2Jfw3DqSJKDLFpmqg35+iCbKDOG1JLwUMyGftiIxk/3TbkAhN
	2aYe8w1olx7+oanQaO3LeWD29Y+kRsdWfBXCvLauxJlRxb0QFjmflL43+D0QLZO5DV7yTBSv6kx
	2atK30mIsklAdD8IwgQ4BdRqjlJCK/bZrS6p+xvxxB/kQJ17byOjOjZqfjE97CRUEzAxk3Cn9Kh
	01GG2He2ihSvyYGtA4dnCAACoVOhCpavKn9e1uH2qWyCBIlhzx1yIYVWYgzbMRGrqED3OQau9sT
	FKnrNdiB9sluvtoyGxc7SEwzcquRZ7GYhPsVrNwXDsnw11jK3jX4k3ReU3Ou+2CtacvzLAJQrrt
	mKIkA4CWngf97XApJOJ8T2QRaIROoLSAAti0LLTyHo91Iwtc9i8bIlVav404tpBU3UQ/UZQpv9Z
	VXf8Sa9uwm6YTUviLdABhXXWZBbY1VQONIZYL0bH1DDHJA=
X-Received: by 2002:a17:907:f497:b0:b83:32b7:21b0 with SMTP id a640c23a62f3a-b935b502ecamr191281066b.17.1772127901905;
        Thu, 26 Feb 2026 09:45:01 -0800 (PST)
Received: from Lord-Beerus.station (net-188-152-100-94.cust.vodafonedsl.it. [188.152.100.94])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-b935ab13564sm81364866b.9.2026.02.26.09.45.01
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 26 Feb 2026 09:45:01 -0800 (PST)
Date: Thu, 26 Feb 2026 18:44:59 +0100
From: Stefano Radaelli <stefano.radaelli21@gmail.com>
To: Frank Li <Frank.li@nxp.com>
Cc: Fabio Estevam <festevam@gmail.com>, linux-kernel@vger.kernel.org,
	devicetree@vger.kernel.org, imx@lists.linux.dev,
	linux-arm-kernel@lists.infradead.org,
	Stefano Radaelli <stefano.r@variscite.com>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Sascha Hauer <s.hauer@pengutronix.de>,
	Pengutronix Kernel Team <kernel@pengutronix.de>
Subject: Re: [PATCH v1 06/11] arm64: dts: freescale: imx8mm-var-som: Update
 WiFi/BT configuration
Message-ID: <aaCGmyqONKj7GoOy@Lord-Beerus.station>
References: <cover.1771353301.git.stefano.r@variscite.com>
 <3e79c4d806b8b8024b71bc99c36b09a2fbb90a65.1771353301.git.stefano.r@variscite.com>
 <CAOMZO5CAb8738HdH49WcY-JPTzQ90n4Bnmyn96_3jfw47mxOug@mail.gmail.com>
 <aZTEm8nUUVcKZH0v@Lord-Beerus.station>
 <aZXqSz_OsCC64P7i@lizhi-Precision-Tower-5810>
 <aZX0WB_6qPoCYVvC@Lord-Beerus.station>
 <aZ28RtuAWcatyVAf@Lord-Beerus.station>
 <aZ4YdCIG2JIT6BQS@lizhi-Precision-Tower-5810>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <aZ4YdCIG2JIT6BQS@lizhi-Precision-Tower-5810>
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20230601];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-268964-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FREEMAIL_CC(0.00)[gmail.com,vger.kernel.org,lists.linux.dev,lists.infradead.org,variscite.com,kernel.org,pengutronix.de];
	FREEMAIL_FROM(0.00)[gmail.com];
	RCPT_COUNT_TWELVE(0.00)[12];
	FROM_HAS_DN(0.00)[];
	MISSING_XM_UA(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[stefanoradaelli21@gmail.com,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[gmail.com:+];
	NEURAL_HAM(-0.00)[-0.999];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	TO_DN_SOME(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,Lord-Beerus.station:mid]
X-Rspamd-Queue-Id: 3C99B1ADD55
X-Rspamd-Action: no action

Hi Frank,

On Tue, Feb 24, 2026 at 04:30:28PM -0500, Frank Li wrote:
> 
> If can't auto detected, I think keep old dts, use overlay change to new
> one.
> 
> For example, board.dtb
> 
> you can rename board.dtb to board-revA.dtb
> new board.dtb, by apply verb.dtso to board-revA.dtb.  Or you direct use
> board-revb.dtb.
> 
> If change is big, you can create new one.
> 
> Frank

Thanks for the clarification, I understand that the preferred approach
would be to keep the existing Broadcom-based DTS unchanged and add a
separate description for the IW612-based revision.

My only concern is avoiding confusion in mainline.

The Broadcom-based SOM revision is obsolete and no longer manufactured.
All currently produced VAR-SOM-MX8MM modules use the IW612 module, and
this will remain the only production hardware going forward.

I would like to avoid giving the impression that we are actively
supporting two parallel SOM revisions in mainline, while in reality
only the IW612-based hardware exists in production.

For this reason, would it be acceptable to:

  - move the Broadcom-based description into an explicitly legacy
    revision-specific DTS (kept unchanged for existing users), and
  - update the main imx8mm-var-som DTS to reflect the current
    IW612-based hardware?

This would preserve compatibility for older boards, but ensure that
the primary DTS in mainline represents the hardware that is actually
produced and aligns with the rest of the VAR-SOM family.

Thank you again for your support and your patience!

Best regards,
Stefano

