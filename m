Return-Path: <devicetree+bounces-288992-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id UKRbCiMz52k65QEAu9opvQ
	(envelope-from <devicetree+bounces-288992-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 21 Apr 2026 10:19:47 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 51BDC438094
	for <lists+devicetree@lfdr.de>; Tue, 21 Apr 2026 10:19:45 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 8FC783013D6E
	for <lists+devicetree@lfdr.de>; Tue, 21 Apr 2026 08:19:42 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 7127038758B;
	Tue, 21 Apr 2026 08:19:41 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="HVhF/3I1"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4DEF53806DD;
	Tue, 21 Apr 2026 08:19:41 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1776759581; cv=none; b=egkjJC+zwM2UOEIGtj0WFdEAR3nC/WMxhPeJY3L28Qr2/0jjd87GKJi/akQdKE5kSXIye86aLY56gsc8nxcmpCGjGhuvDOnnbeGJ52AHwrclUgraR4tCC1WZp4JpHKNZgGlTAKtDlhvKG/4SRY9bJ5ZgaVzBjUCvjyewlbGOimw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1776759581; c=relaxed/simple;
	bh=x3FLqMOzm01h7XoAdDrip3GVnx8vRPi8aOzgEXce4/I=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=u2FpCOIoSoeyE8oLnX1k02S518O/0ZZBWrXv6SNwiYyXBlGQNOdYZigayBP7mmWrDDJcSYfu/M+MM6beFODgtTj6jJIRI82iPRzvnYrZYkNnqFgNfHJvFCYqHe2EzyNsAn5B3X7kCCl/pBh8RJYHIXTssdse3UeGDIQaFrMik+k=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=HVhF/3I1; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 95901C2BCB5;
	Tue, 21 Apr 2026 08:19:40 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1776759581;
	bh=x3FLqMOzm01h7XoAdDrip3GVnx8vRPi8aOzgEXce4/I=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=HVhF/3I1ZKV96c+aN+pQ11vEgBoBgYFwGpWPfKPHJbf7DMpQIW2RTObkZCKWp49DR
	 1E+Cy3oIuoV9zPlPXTeB1Ey5DUUzrSS9j+2UebRT9+PI/gvlmWUVEGFkOiIdxgocr8
	 pPmJGgR46vwd4DPxeSYx2iPwkICExC8bZB1DphOGC3Ctv/umWc553s4nyFSDBR2y+h
	 SRvk63Migz8cbK2wSkNWcnm1D7WJdVWEhpOJeG8SmcYx1cqQhMmJhWT+dpgUEKvo4V
	 wxW2lC//mYB7LYSa9Wt+640ovJEvvsq7+wSa5XiO9p8mxsSvpeFfRs1HQiv2jv1QDB
	 YvniKCc8M9zQw==
Date: Tue, 21 Apr 2026 10:19:38 +0200
From: Krzysztof Kozlowski <krzk@kernel.org>
To: Chaitanya Sabnis <chaitanya.msabnis@gmail.com>
Cc: Max Filippov <jcmvbkbc@gmail.com>, Liam Girdwood <lgirdwood@gmail.com>, 
	Mark Brown <broonie@kernel.org>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, linux-sound@vger.kernel.org, 
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH v2] ASoC: dt-bindings: cdns: Convert xtfpga I2S to
 dt-schema
Message-ID: <20260421-mellow-boa-of-control-859a60@quoll>
References: <20260417110410.4482-1-chaitanya.msabnis@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
In-Reply-To: <20260417110410.4482-1-chaitanya.msabnis@gmail.com>
X-Spamd-Result: default: False [-1.66 / 15.00];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	MID_RHS_NOT_FQDN(0.50)[];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20201202];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-288992-lists,devicetree=lfdr.de];
	RCVD_COUNT_THREE(0.00)[4];
	FREEMAIL_TO(0.00)[gmail.com];
	FREEMAIL_CC(0.00)[gmail.com,kernel.org,vger.kernel.org];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	FROM_HAS_DN(0.00)[];
	MISSING_XM_UA(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[krzk@kernel.org,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[kernel.org:+];
	RCPT_COUNT_SEVEN(0.00)[10];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	TO_DN_SOME(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns]
X-Rspamd-Queue-Id: 51BDC438094
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

On Fri, Apr 17, 2026 at 04:34:10PM +0530, Chaitanya Sabnis wrote:
> Convert the xtfpga I2S controller plain-text binding
> documentation to standard dt-schema (YAML).

Drop YAML references.

> 
> The hardware requires exactly one memory region, one interrupt line,
> and one phandle to the master clock. Verified these constraints against
> the driver source in sound/soc/xtensa/xtfpga-i2s.c.

You changed the binding - added sound-dai-cells. This needs short
explanation in the commit msg.

> 
> Reviewed-by: Max Filippov <jcmvbkbc@gmail.com>
> 

There is no blank line between tags. Please use b4 to collect tags.

> Signed-off-by: Chaitanya Sabnis <chaitanya.msabnis@gmail.com>

Subject - s/cdns/cdns,xtfpga-i2s/. And then drop redundant parts. You
are not changing here the cdns (cdns is a company), but a specific ONE
file.

Best regards,
Krzysztof


