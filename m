Return-Path: <devicetree+bounces-297711-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 8N7mA+rzBWq3dgIAu9opvQ
	(envelope-from <devicetree+bounces-297711-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Thu, 14 May 2026 18:10:18 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 95F97544808
	for <lists+devicetree@lfdr.de>; Thu, 14 May 2026 18:10:17 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id D8030300E703
	for <lists+devicetree@lfdr.de>; Thu, 14 May 2026 16:10:14 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 1C84A32AAB2;
	Thu, 14 May 2026 16:10:14 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="iRtvAuYU"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EDF56318EC5;
	Thu, 14 May 2026 16:10:13 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778775014; cv=none; b=JvrtvF1qj+1Uu48R9NNFINkkPUmm408/h4/qH/XUtUIUUarprjiAk4PSLPT2oNZ+/fFTOEvq+kosteW/p/7CHYvmeW7Bn3C8qNojxr2aMKKS8OS1OWyZ4TSF5m3mo+CFtaQH0gkjbly27RiMrIKL48bnw2Kdft3HzoJLs4rkenU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778775014; c=relaxed/simple;
	bh=uKZ1Dtp/YG08FQiXlmJoAu8fRy0zw6TyjB7UZNNgOcU=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=G/YxdPpYYHnhAo9WI4815NGdjYYwQHPKZxdNHQI0pF0fVbiMAUk+cQO6wamOqOdqxqq9bV62MydtRnKfJ/ZCVMFV1PPOHiSlNIEyesV4BbXZW7PH7IKfXze/JecccO/fbciuWADet/cizKdKQs3V4TyvikR3W9Rbw5dbaxUZdPo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=iRtvAuYU; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 6CDD0C2BCB3;
	Thu, 14 May 2026 16:10:12 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778775013;
	bh=uKZ1Dtp/YG08FQiXlmJoAu8fRy0zw6TyjB7UZNNgOcU=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=iRtvAuYUQqTbbarsEnHMKPp0gBasHGDWlFMydasGspbba9ZAHXPBwy/6YIMFKrbBx
	 afAwbIabNmX8ElXiKIdJBIUZc9AGazVz9x1BXRY4JHFjO/cGuOhgukJu5v0xZhxLLt
	 75GSBa8nau04OV9ZBf4OgSMV0fHDmqYlGKTJn8Gr6D0PAxyMzojdTz5sCjnma3D4WV
	 eiVUQQRUJYbJjX26FTTwKYwE0L37b4YTA36PNRRC8iQChKYyTXHSg27vQ2GbfbC8wX
	 6GS00hXqEkNUf8F9iRkYW4kivaWiOWE05X/U1zh8nerABY11RkilpqrQGA9oKNQL83
	 Ju5ZYzmwjK6fg==
Date: Thu, 14 May 2026 11:10:08 -0500
From: Rob Herring <robh@kernel.org>
To: Sander Vanheule <sander@svanheule.net>
Cc: Wim Van Sebroeck <wim@linux-watchdog.org>,
	Guenter Roeck <linux@roeck-us.net>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Rustam Adilov <adilov@disroot.org>, linux-watchdog@vger.kernel.org,
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH v2 0/2]  watchdog: realtek-otto: add fallback compatible
Message-ID: <20260514161008.GB841147-robh@kernel.org>
References: <20260512204854.8931-1-sander@svanheule.net>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20260512204854.8931-1-sander@svanheule.net>
X-Rspamd-Queue-Id: 95F97544808
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [0.34 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	MID_CONTAINS_FROM(1.00)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20201202];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-297711-lists,devicetree=lfdr.de];
	FROM_HAS_DN(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	RCVD_TLS_LAST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	DKIM_TRACE(0.00)[kernel.org:+];
	MISSING_XM_UA(0.00)[];
	TO_DN_SOME(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[robh@kernel.org,devicetree@vger.kernel.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCPT_COUNT_SEVEN(0.00)[9];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns]
X-Rspamd-Action: no action

On Tue, May 12, 2026 at 10:48:52PM +0200, Sander Vanheule wrote:
> Like for the GPIO hardware of the Realtek Otto platform, add a fallback
> compatible for the watchdog hardware.
> 
> For backward compatibility, the binding will still allow current
> single-compatible devicetrees to work, but new devicetrees, including
> new compatibles, should use a two-component compatible.
> 
> This series serves to address comments regarding the device compatibles
> for the patches adding RTL9607C watchdog support [1].
> 
> [1] https://lore.kernel.org/lkml/20260509163101.722793-1-adilov@disroot.org/

You misunderstood the discussion (though some came after this). The 
fallback should be one of the existing compatibles (the oldest one), so 
there are no driver changes needed for the OS. Creating a new fallback 
completely misses that point.

Rob

