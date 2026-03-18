Return-Path: <devicetree+bounces-277007-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 2EYoJzJfumnFUgIAu9opvQ
	(envelope-from <devicetree+bounces-277007-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 18 Mar 2026 09:15:46 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [172.232.135.74])
	by mail.lfdr.de (Postfix) with ESMTPS id 7DC822B7ACD
	for <lists+devicetree@lfdr.de>; Wed, 18 Mar 2026 09:15:46 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id E136F301EF3B
	for <lists+devicetree@lfdr.de>; Wed, 18 Mar 2026 08:14:18 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E4E863783C7;
	Wed, 18 Mar 2026 08:14:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="SpHpJhBW"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C061F36CE0E;
	Wed, 18 Mar 2026 08:14:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773821656; cv=none; b=Kd87nFLD4CYm7y5GB/nq46U7UiCXGVbGdlJDpRxyI07GK9xHAHT1y6kyVB7VVSZHV0nN6ttf0vIXkU9p9qcprzGYd9MnwA1c1vtydQ0YgbFaR7MYnxupLyg1NKcSh/kExk3oebDiqM+4zvD7dXuO6h9FHr4DhPs94cvYe+TRkX8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773821656; c=relaxed/simple;
	bh=TJmXFfIJfaa6VOTzzmQKFARsgVBOZMjy1CMPytzgCEo=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=sHRfQzQ5FJwUljPIfFJRG7WKEyjleTV/WV1Fb6est5CylhZgQoAVyrs7kvi5EigowMpJ/Q4FX94nbkMLDQkX9Pvv40ENPD4+deTW6CiOoabpAeOtEPge5Hz3TqoPmPalQV+JonhWherZP0VhMKb9k6EQ7ydJRNAdeVH1Ge9RnDY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=SpHpJhBW; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id E3DBFC19421;
	Wed, 18 Mar 2026 08:14:15 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1773821656;
	bh=TJmXFfIJfaa6VOTzzmQKFARsgVBOZMjy1CMPytzgCEo=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=SpHpJhBWEv4EzWWo6op6XaS8chwtMxLg6jYhPsoBD3kRWXx/RnTLHv+HXQte9Zc1r
	 XFvmderltrtB9O9PDsqNqMUke2qlGrIDk6noceCtU65p4gvQikiGern2bIsT8El5zw
	 6z/vcPv5p8X8hErUTsOqmgTFFes4v5vlzevULDI6D8gW/smSQ62bs8DSrc3AoASP+u
	 SR42rlx2lAbL+xbNmuHbbBnJN+G8dwU79Z7r02XhVZQy+USDKkHPmWSjJSMG/CVlqw
	 rbTHIBBrfk6vOLojG6iP4PLTzXMLI0e7a3C9yvF2e5ZeIIoDwhqWMhPagT+7j96k21
	 /XhPyxsrJ8kBQ==
Date: Wed, 18 Mar 2026 09:14:14 +0100
From: Krzysztof Kozlowski <krzk@kernel.org>
To: Andre Przywara <andre.przywara@arm.com>
Cc: Mark Rutland <mark.rutland@arm.com>, 
	Lorenzo Pieralisi <lpieralisi@kernel.org>, Sudeep Holla <sudeep.holla@kernel.org>, 
	Salman Nabi <salman.nabi@arm.com>, Vedashree Vidwans <vvidwans@nvidia.com>, 
	Trilok Soni <trilokkumar.soni@oss.qualcomm.com>, Nirmoy Das <nirmoyd@nvidia.com>, vsethi@nvidia.com, 
	vwadekar@nvidia.com, linux-arm-kernel@lists.infradead.org, 
	linux-kernel@vger.kernel.org, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, devicetree@vger.kernel.org
Subject: Re: [PATCH v2 7/8] firmware: smccc: lfa: Register DT interrupt
Message-ID: <20260318-mighty-handsome-spider-814ff4@quoll>
References: <20260317103336.1273582-1-andre.przywara@arm.com>
 <20260317103336.1273582-8-andre.przywara@arm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
In-Reply-To: <20260317103336.1273582-8-andre.przywara@arm.com>
X-Spamd-Result: default: False [-0.16 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_RHS_NOT_FQDN(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_SPF_ALLOW(-0.20)[+ip4:172.232.135.74:c];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20201202];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-277007-lists,devicetree=lfdr.de];
	RCVD_COUNT_THREE(0.00)[4];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[16];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[krzk@kernel.org,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[kernel.org:+];
	TAGGED_RCPT(0.00)[devicetree,dt];
	ASN(0.00)[asn:63949, ipnet:172.232.128.0/19, country:SG];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sto.lore.kernel.org:helo,sto.lore.kernel.org:rdns]
X-Rspamd-Queue-Id: 7DC822B7ACD
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

On Tue, Mar 17, 2026 at 11:33:33AM +0100, Andre Przywara wrote:
> +	return devm_request_threaded_irq(dev, irq, lfa_irq_handler,
> +					 lfa_irq_handler_thread,
> +					 IRQF_COND_ONESHOT, NULL, NULL);
> +}
> +
>  static int lfa_faux_probe(struct faux_device *fdev)
>  {
>  	int ret;
> @@ -854,6 +893,12 @@ static int lfa_faux_probe(struct faux_device *fdev)
>  		}
>  	}
>  
> +	ret = lfa_register_dt(&fdev->dev);
> +	if (!ret)
> +		pr_info("registered LFA DT notification interrupt\n");

Drop. Drivers must be silent on success (mentioned more than once in
coding docs).
Starting FW update would deserve a comment, but probing a device or its
resource is completely irrelevant for the user.

> +	if (ret != -ENODEV)
> +		return ret;
> +
>  	return 0;
>  }
>  
> -- 
> 2.43.0
> 

