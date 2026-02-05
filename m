Return-Path: <devicetree+bounces-262981-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 6GvuDSp6hGlU3AMAu9opvQ
	(envelope-from <devicetree+bounces-262981-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Thu, 05 Feb 2026 12:08:26 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [172.105.105.114])
	by mail.lfdr.de (Postfix) with ESMTPS id A0729F1AAB
	for <lists+devicetree@lfdr.de>; Thu, 05 Feb 2026 12:08:25 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 75DF030094CB
	for <lists+devicetree@lfdr.de>; Thu,  5 Feb 2026 11:08:24 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 4B2F73AA1B6;
	Thu,  5 Feb 2026 11:08:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="jR7ve9k6"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 289263921DA;
	Thu,  5 Feb 2026 11:08:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770289703; cv=none; b=dIMUpNRW/5t1oLbt89CitGbsTDmEsVabGjLcf8xy1q4Vm3pABNxOWxaq3kqon1Aj8QCZ/BSmGN+f+wW57Bwa3ATNGaCLzP+dCKTg1jhlNSIBP3myfqX16iO4zbaANI5sHetlAa3Az0Cxr5uoCYKOxstz30lUVLmBnmFP4adDL90=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770289703; c=relaxed/simple;
	bh=KRr5bjxloleM+AjFGvAP5BAhi15uf5B/cBZt51MJT3o=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=NbmRd8GuImIxYtidxqm6eAQUmiLjPzXOwWdAscfDOZwjz2EZcHymKHTthTopEYRsShazAKFvoDLdmd0/fcGoWJu8qGuieBumg1gAg/IhnEv+zAYpxJXLXnZfz18mvfjccnpZiNO5zeyUY8dOjPLUddANcDoiFqmgriCjc3LKgg8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=jR7ve9k6; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id DFD8EC19423;
	Thu,  5 Feb 2026 11:08:20 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1770289702;
	bh=KRr5bjxloleM+AjFGvAP5BAhi15uf5B/cBZt51MJT3o=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=jR7ve9k6a0TtuqoQ3bWHXpWD9u+XVhWUBrE56+vmacl1cQVpOJ9GNIOPvskj0RDDh
	 QHcRGtRnXVmUjazf/jtkjGXsznxKSr/IENSXB2B9f+QYfTN5Hbrkz5SR7eVPtxlpEg
	 TBsDErnK8kc1iWdXBFiBQNpylip4bm+nQN0SzX0VxsbAa0ukcNe55c8yHtJy1cVZ8S
	 Hq3OXx7cKJXXAhmJT03KmmWkZKqG5dz9J58RkSIP2N7azfewAZ0ILSRyNNGg8zdnCd
	 UT5YqwNX29RX5pjsqyr66kHnYeYvykyNeRNTTm/1ZACPnubk4U2eQgHrCBYs7hA9JN
	 ZcvHBJoXdZnsA==
Date: Thu, 5 Feb 2026 11:08:18 +0000
From: Sudeep Holla <sudeep.holla@kernel.org>
To: Cristian Marussi <cristian.marussi@arm.com>
Cc: Andre Przywara <andre.przywara@arm.com>,
	Debbie Horsfall <debbie.horsfall@arm.com>,
	Rob Herring <robh@kernel.org>,
	Sudeep Holla <sudeep.holla@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Liviu Dudau <liviu.dudau@arm.com>,
	Lorenzo Pieralisi <lpieralisi@kernel.org>,
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org
Subject: Re: [PATCH 2/2] arm64: dts: zena: Add support for Zena CSS
Message-ID: <20260205-intelligent-intrepid-robin-df42bd@sudeepholla>
References: <20260123-zena-css-v1-0-34adb95cdf89@arm.com>
 <20260123-zena-css-v1-2-34adb95cdf89@arm.com>
 <20260127132206.036892e4@donnerap.manchester.arm.com>
 <c1259bad-be4d-4489-840d-4ab2f4e466f2@arm.com>
 <8c343e6d-14f8-4f55-8218-bc3f0813e8cf@arm.com>
 <20260130-light-piquant-termite-fcbec4@sudeepholla>
 <aYHmDTboOtkgac00@pluto>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <aYHmDTboOtkgac00@pluto>
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-1.66 / 15.00];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_RHS_NOT_FQDN(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20201202];
	R_SPF_ALLOW(-0.20)[+ip4:172.105.105.114:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_FROM(0.00)[bounces-262981-lists,devicetree=lfdr.de];
	RCPT_COUNT_TWELVE(0.00)[12];
	MIME_TRACE(0.00)[0:+];
	FROM_HAS_DN(0.00)[];
	MISSING_XM_UA(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[sudeep.holla@kernel.org,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[kernel.org:+];
	TAGGED_RCPT(0.00)[devicetree,dt];
	ASN(0.00)[asn:63949, ipnet:172.105.96.0/20, country:SG];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TO_DN_SOME(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[tor.lore.kernel.org:helo,tor.lore.kernel.org:rdns]
X-Rspamd-Queue-Id: A0729F1AAB
X-Rspamd-Action: no action

On Tue, Feb 03, 2026 at 12:11:57PM +0000, Cristian Marussi wrote:
> 
> All of this madness was the best way I could find to address the problem
> of supporting such new unidirectional mailboxes in the SCMI while NOT
> breaking backward compatibility in the absence of mandatory naming from
> the start.
> 

You can attribute this to my expecting an overly ideal scenario with
bidirectional mailbox channels across all platforms using SCMI. At the time, I
did not anticipate the range of configurations that rely on unidirectional
channels.

-- 
Regards,
Sudeep

