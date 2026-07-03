Return-Path: <devicetree+bounces-319841-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id /CYDAxxhR2q/XQAAu9opvQ
	(envelope-from <devicetree+bounces-319841-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Fri, 03 Jul 2026 09:13:32 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 790F46FF73D
	for <lists+devicetree@lfdr.de>; Fri, 03 Jul 2026 09:13:31 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=kernel.org header.s=k20260515 header.b=dEKE7dek;
	dmarc=pass (policy=quarantine) header.from=kernel.org;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-319841-lists+devicetree=lfdr.de@vger.kernel.org" designates 172.234.253.10 as permitted sender) smtp.mailfrom="devicetree+bounces-319841-lists+devicetree=lfdr.de@vger.kernel.org";
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 5F4D0305116E
	for <lists+devicetree@lfdr.de>; Fri,  3 Jul 2026 07:10:32 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 1C24F385D9F;
	Fri,  3 Jul 2026 07:10:31 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1CC7C369992;
	Fri,  3 Jul 2026 07:10:29 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783062631; cv=none; b=uiqY9G1JEWG2K+2DRxqlHjqRNuSshwaDPqnT49bjKa6IegMSnacUe0bA3f9UXkqep2F4S8LhYLNLVyzzH/0XL1bTcKjg11hSgtwJqfyFWNTvhyFXWSlOMrarwlxwJZzlKFIGAzqVPq5XamPAXC6ph/z6tktqNyFI8X27TrMttj0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783062631; c=relaxed/simple;
	bh=39XzhC4ykdw67rth2VjOVEFcvKjlfSXZH4eRgUPDvaQ=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=q9ouLB3hgQgqBlZziNmh9qets95zai4oT+xGnLECIWIGYAhsyhrhozLeA/e4LxrNsc1Kv9DFE09cXLy9U5tbAiwFYFU1Dokw082jSkigV66n3oEsOSLFh5dcWYyVR6UD3GkkjVfgySfnYr9Phlyi5TQ+ah8GCqNJDPX0SnyUMD0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=dEKE7dek; arc=none smtp.client-ip=100.103.45.18
Received: by smtp.kernel.org (Postfix) with ESMTPSA id D15111F000E9;
	Fri,  3 Jul 2026 07:10:28 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1783062629;
	bh=wbg23lDohpWZKmydl0fmRL1BlNrOGXoDBHaseZ0HPMQ=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To;
	b=dEKE7dekIeg3PlgwAJVZlzZEEqPb9R7IeHEXN5d8CcGy9qCX7LJ2ygBQr0XixhiMX
	 kvtWDW4O1PQy8ampolqdiT8L2B/4l8wULaVJLRvwGwjO8H3c1x/79ogPP9XcwAJ802
	 LOJ0+HeceevFzYClu/+GQ1nD8H2vDATQ7EceaGXXRLN8dEwpIWxv8fNIGaW+zES4Tm
	 /t0iWOimuA2C5FRSFAes0W/c+VLS63ap5KyOVK9i2BOodnZ9S9kKI+oTjvXIFMEveq
	 /j6ZFBzpmivjaYye/zVAhNvql/bxrqJ+sicnT/bEtaR8rAfEMdiANpZDPq7aeiLBm+
	 6OrpdOcN8FKxQ==
Date: Fri, 3 Jul 2026 09:10:26 +0200
From: Krzysztof Kozlowski <krzk@kernel.org>
To: Monish Chunara <monish.chunara@oss.qualcomm.com>
Cc: Bjorn Andersson <andersson@kernel.org>, 
	Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Nitin Rawat <nitin.rawat@oss.qualcomm.com>, Pradeep Pragallapati <pradeep.pragallapati@oss.qualcomm.com>, 
	Komal Bajaj <komal.bajaj@oss.qualcomm.com>, Sachin Rathore <sachin.rathore@oss.qualcomm.com>, 
	linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH V2 2/4] dt-bindings: mmc: sdhci-msm: Document the Glymur
 compatible
Message-ID: <20260703-loutish-stimulating-hummingbird-aada5e@quoll>
References: <20260702094056.3755467-1-mchunara@oss.qualcomm.com>
 <20260702094056.3755467-3-mchunara@oss.qualcomm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
In-Reply-To: <20260702094056.3755467-3-mchunara@oss.qualcomm.com>
X-Rspamd-Action: no action
X-Spamd-Result: default: False [-4.66 / 15.00];
	WHITELIST_SPF_DKIM(-3.00)[kernel.org:d:+,kernel.org:s:+];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_RHS_NOT_FQDN(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20260515];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FORGED_RECIPIENTS(0.00)[m:monish.chunara@oss.qualcomm.com,m:andersson@kernel.org,m:konradybcio@kernel.org,m:robh@kernel.org,m:krzk+dt@kernel.org,m:conor+dt@kernel.org,m:nitin.rawat@oss.qualcomm.com,m:pradeep.pragallapati@oss.qualcomm.com,m:komal.bajaj@oss.qualcomm.com,m:sachin.rathore@oss.qualcomm.com,m:linux-arm-msm@vger.kernel.org,m:devicetree@vger.kernel.org,m:linux-kernel@vger.kernel.org,m:krzk@kernel.org,m:conor@kernel.org,s:lists@lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	FROM_HAS_DN(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[13];
	FORGED_SENDER(0.00)[krzk@kernel.org,devicetree@vger.kernel.org];
	MIME_TRACE(0.00)[0:+];
	FORWARDED(0.00)[lists@lfdr.de];
	TAGGED_FROM(0.00)[bounces-319841-lists,devicetree=lfdr.de];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	ALIAS_RESOLVED(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[krzk@kernel.org,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[kernel.org:+];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MISSING_XM_UA(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,vger.kernel.org:from_smtp,qualcomm.com:email,quoll:mid]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 790F46FF73D

On Thu, Jul 02, 2026 at 03:10:54PM +0530, Monish Chunara wrote:
> From: Monish Chunara <monish.chunara@oss.qualcomm.com>
> 
> Document the Glymur-specific SDHCI compatible in the sdhci-msm binding.
> Use "qcom,sdhci-msm-v5" as the fallback compatible for the MSM SDHCI v5
> controller used on Glymur.

I do not see improvements.

Best regards,
Krzysztof


