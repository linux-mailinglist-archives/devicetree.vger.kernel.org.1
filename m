Return-Path: <devicetree+bounces-259559-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id QN9VK1aMd2m9hgEAu9opvQ
	(envelope-from <devicetree+bounces-259559-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Mon, 26 Jan 2026 16:46:30 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [IPv6:2600:3c04:e001:36c::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 40A8E8A4E1
	for <lists+devicetree@lfdr.de>; Mon, 26 Jan 2026 16:46:30 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id BBC3C3015A65
	for <lists+devicetree@lfdr.de>; Mon, 26 Jan 2026 15:46:28 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 26F37340A69;
	Mon, 26 Jan 2026 15:46:28 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="lNaDdeL1"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0362C33F378;
	Mon, 26 Jan 2026 15:46:27 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769442388; cv=none; b=pm7ARN9KRAZky4UxCriUKwhJT26CHCrbnVK8qAs7391cf1i54SfNGpZpaslT1h/zZPMF0xJK6vhD6MWyqxDG7uMFWtzodjd/yJmDOkTF+3hI9DKWo6b/Dgco5chRZUvbvODliSOBtW3p8mYrGeXrVMHNDiIzmWGSot/AAAmOiL8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769442388; c=relaxed/simple;
	bh=m6VOqcjWo8tBPOpuIjMbZOW9+OCdo4xNj+P8hCC75V0=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=FZf+AbdwYVhsKegHUKEvGGNCp8xSoSIhGnPaA7DYta4FIINoDKju1ujGKXeU6UJLELlODKLBRLGXPSbt3hlUwEVvG7SeUVkStJG1bkmlkD+dDWCIjNmReTD3TR/XT68YheRjVUQutUvI1s3Z7TrQlDK744xePXj0t1fhtDzlDB0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=lNaDdeL1; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 8A986C116C6;
	Mon, 26 Jan 2026 15:46:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1769442387;
	bh=m6VOqcjWo8tBPOpuIjMbZOW9+OCdo4xNj+P8hCC75V0=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=lNaDdeL11OUsF5viXYL1IwouUgB7VrFTpZR2gPfGWMq0brhySedMJCXAUKkL1oM39
	 wP9HoCEuEoEyiQokQwoD8h1Ebr+/enmhJawsrqOb/aQxJMo/mcXnygnaC/uxH8R8RQ
	 I1i5cd3s1dtD543imMLHEYolPzQ1yf+jOUuSsZ8s287o7fJbymp4/NbTgzuLbgL2gR
	 7XQ+e3TfGW6SHV1wPPrJ9l7j9YaCjCBXFPu/DC6CLtivPyQrw70SJ7PyxXuEYWLrk2
	 Hf4BoExjxNrK/KedQ4c97DLN7eVS8+jTasjSfPZAGCrmkwLRaX7jo+GEOFtGMtg3MR
	 L8vd0QHndqhkQ==
Date: Mon, 26 Jan 2026 09:46:26 -0600
From: "Rob Herring (Arm)" <robh@kernel.org>
To: Debbie Horsfall <debbie.horsfall@arm.com>
Cc: Lorenzo Pieralisi <lpieralisi@kernel.org>, devicetree@vger.kernel.org,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	linux-kernel@vger.kernel.org, Conor Dooley <conor+dt@kernel.org>,
	Liviu Dudau <liviu.dudau@arm.com>,
	linux-arm-kernel@lists.infradead.org,
	Sudeep Holla <sudeep.holla@arm.com>
Subject: Re: [PATCH 1/2] dt-bindings: arm: Add Zena CSS compatibility
Message-ID: <176944238565.2471673.8283438877437876056.robh@kernel.org>
References: <20260123-zena-css-v1-0-34adb95cdf89@arm.com>
 <20260123-zena-css-v1-1-34adb95cdf89@arm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20260123-zena-css-v1-1-34adb95cdf89@arm.com>
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-1.16 / 15.00];
	MID_CONTAINS_FROM(1.00)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20201202];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c04:e001:36c::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-259559-lists,devicetree=lfdr.de];
	FROM_HAS_DN(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	RCVD_TLS_LAST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	DKIM_TRACE(0.00)[kernel.org:+];
	ASN(0.00)[asn:63949, ipnet:2600:3c04::/32, country:SG];
	MISSING_XM_UA(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[robh@kernel.org,devicetree@vger.kernel.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCPT_COUNT_SEVEN(0.00)[9];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	TO_DN_SOME(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[tor.lore.kernel.org:helo,tor.lore.kernel.org:rdns,arm.com:url,arm.com:email]
X-Rspamd-Queue-Id: 40A8E8A4E1
X-Rspamd-Action: no action


On Fri, 23 Jan 2026 17:37:46 +0000, Debbie Horsfall wrote:
> Add compatibility to Arm Zena CSS Fixed Virtual Platform [1].
> 
> [1] https://www.arm.com/products/automotive/compute-subsystems/zena
> 
> Signed-off-by: Debbie Horsfall <debbie.horsfall@arm.com>
> ---
>  .../devicetree/bindings/arm/arm,zena-css.yaml      | 31 ++++++++++++++++++++++
>  MAINTAINERS                                        |  5 ++++
>  2 files changed, 36 insertions(+)
> 

Reviewed-by: Rob Herring (Arm) <robh@kernel.org>


