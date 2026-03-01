Return-Path: <devicetree+bounces-269712-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id gIqNF1oxpGnZaAUAu9opvQ
	(envelope-from <devicetree+bounces-269712-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Sun, 01 Mar 2026 13:30:18 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id DAFB61CF973
	for <lists+devicetree@lfdr.de>; Sun, 01 Mar 2026 13:30:17 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 56DFE3010B83
	for <lists+devicetree@lfdr.de>; Sun,  1 Mar 2026 12:30:16 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A5CEE2E65D;
	Sun,  1 Mar 2026 12:30:15 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="WFxOJiJB"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 821B1430B8D;
	Sun,  1 Mar 2026 12:30:15 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772368215; cv=none; b=AxygIkAxaQiRn8J/e4sFF8j4HL0PsvmaPIUPJYqEgCX1xyoCJAmF0U/Yg/qNSITvouLHZcobAJZYIbKgNlGox34XynFBh76KeG+YRo6h2DVbZ+e0d34gLdocG6hWd4oOz1/12+QN4F6nUfAwRQjvh9IaIIX+vWxxgM8w4EqP/iw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772368215; c=relaxed/simple;
	bh=qkvXeu6vxwUNubbeEVE+fYKgnj7V5TO8EAshvRW5RW0=;
	h=Date:From:To:Cc:Subject:Message-ID:In-Reply-To:References:
	 MIME-Version:Content-Type; b=BfZIazKSY9AkkEj/KJedbxfnUzjsJ36QyAXeGP8L8dLJCf1YIRFJZlyrVPhEcmYg8VMbdOwjn9fcK9faT/ou58eA+zXZgUPCbxaG2Wm8MOeywee2YfckEKewYQ37pkmdGYAnKSUbLLz48AdZ8cozrVnrb0sP9328UhNcuMjt2Vs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=WFxOJiJB; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 56A80C116C6;
	Sun,  1 Mar 2026 12:30:12 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1772368215;
	bh=qkvXeu6vxwUNubbeEVE+fYKgnj7V5TO8EAshvRW5RW0=;
	h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
	b=WFxOJiJBRGaaSsqioLOcbapTTZsX4KmD6d7E3+xnKyvMIOX86KI2A2Wnw47kUrFi8
	 rwo+I7MgrAfaMl1ri8k3fLLzhGJUIKN9qid9Ky1B8iiixMMDrEe/OfWZV0ceYx77ey
	 6+ny6lnOc1I9Bw08IrjqhW6gz773Y+lQ9mVCSWlBH7nHmUXeeHTiWu3HrBonMqqHnW
	 HGXuhSA1iGmyj/Yo1KgTLqN2WR+QyM/7BXEjc7zgBtF52O7F/sBKO4E8AGxvaW3S3o
	 U6TpwgAn2uIHbp4p4vRD+bw4ZzLQnaNn5cXO22qf9X4bw+q2OS3KZJvp49KqOo+u2g
	 tj4ttQFPtJLxQ==
Date: Sun, 1 Mar 2026 12:30:07 +0000
From: Jonathan Cameron <jic23@kernel.org>
To: Jun Yan <jerrysteve1101@gmail.com>
Cc: conor@kernel.org, devicetree@vger.kernel.org, hns@goldelico.com,
 linusw@kernel.org, linux-iio@vger.kernel.org, stephan@gerhold.net
Subject: Re: [PATCH v4 0/3]  iio: add support for Bosch BMX055 IMU
Message-ID: <20260301123007.4312e9d1@jic23-huawei>
In-Reply-To: <20260224141142.225317-1-jerrysteve1101@gmail.com>
References: <20260207151207.0df7493d@jic23-huawei>
	<20260224141142.225317-1-jerrysteve1101@gmail.com>
X-Mailer: Claws Mail 4.3.1 (GTK 3.24.51; x86_64-pc-linux-gnu)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII
Content-Transfer-Encoding: 7bit
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-1.66 / 15.00];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	MID_RHS_NOT_FQDN(0.50)[];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20201202];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	FREEMAIL_TO(0.00)[gmail.com];
	TAGGED_FROM(0.00)[bounces-269712-lists,devicetree=lfdr.de];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	FROM_HAS_DN(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[jic23@kernel.org,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[kernel.org:+];
	RCPT_COUNT_SEVEN(0.00)[7];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree];
	TO_DN_SOME(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns]
X-Rspamd-Queue-Id: DAFB61CF973
X-Rspamd-Action: no action

On Tue, 24 Feb 2026 22:11:42 +0800
Jun Yan <jerrysteve1101@gmail.com> wrote:

> > On Thu, 5 Feb 2026 18:39:18 +0000
> > Conor Dooley <conor@kernel.org> wrote:
> >   
> > > Acked-by: Conor Dooley <conor.dooley@microchip.com>
> > > pw-bot: not-applicable  
> > 
> > Applied to the testing branch of iio.git
> >   
> This patch series commit was not found in the testing branch.
> 
> could it have been missed?
Good catch. I clearly messed something up here :(

Applied and pushed out now.

Jonathan
> 
> Best regards,
> 
> Jun Yan
> > 
> > Thanks,
> > 
> > Jonathan  
> 


