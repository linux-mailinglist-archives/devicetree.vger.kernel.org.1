Return-Path: <devicetree+bounces-315240-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id E3AfH5jWO2oNeAgAu9opvQ
	(envelope-from <devicetree+bounces-315240-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 24 Jun 2026 15:07:36 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [IPv6:2600:3c04:e001:36c::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id DA56F6BE6E8
	for <lists+devicetree@lfdr.de>; Wed, 24 Jun 2026 15:07:35 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=kernel.org header.s=k20260515 header.b=orDu5HC3;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-315240-lists+devicetree=lfdr.de@vger.kernel.org" designates 2600:3c04:e001:36c::12fc:5321 as permitted sender) smtp.mailfrom="devicetree+bounces-315240-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=pass (policy=quarantine) header.from=kernel.org;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 4139B307B36B
	for <lists+devicetree@lfdr.de>; Wed, 24 Jun 2026 13:06:26 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 0C0E53B2D0A;
	Wed, 24 Jun 2026 13:06:16 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 09DCE3AA1BD;
	Wed, 24 Jun 2026 13:06:14 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782306375; cv=none; b=cx0rvQj0oOXuCuHICpdHymbvOzkbSP/Y+XUqXmPKehCKTBmaH5sPX1UFo9EMxg9D85fU4Wt/XXFt/Y2d+EQ3Uvzm3ej0BOOTpTUNPgW+VsTaT1xVPqjG5+WChWefhAZdR7jbFi2F5MGMgdwoWjjKcy7xYfQlpcuPzxeyhVd1lNw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782306375; c=relaxed/simple;
	bh=Hhank47ovUYI7MZRBGRz6apro8rD9yCcxqDNjhX43M0=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=jt4rAeEyY2DsX6YuVEOENB2Dsq1zCgg260stUlGznYRuhqb/gUFZV1l4CjjTTObnWdqShrAuk2VqjMOj9OXGO3EESlI7rLaCAVl2NhMJNrzfaHuf/1cgyeE3j+mVFeeDc0d895xdXDvhblBlkbscDdt9L6MsjrrY/a94VVgu/oY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=orDu5HC3; arc=none smtp.client-ip=100.103.45.18
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 97CD71F000E9;
	Wed, 24 Jun 2026 13:06:14 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1782306374;
	bh=n+NuqG/h+06sgb+HCWip0XP/OhMGA85txXcKyLOezUo=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To;
	b=orDu5HC3bU9EZWCMHQgD321fIr6E42JtMvjmw1N1A6NmKImJcvQ8AjOmhXTH+kKC/
	 SstyHKwGhWcCxZyzisNJFKQfwxhLokdvdUEfPYFQNwq0c0ZoHPUEmbZNk+z/w2DRFy
	 ZY1iapMbqvJYPqXSlhYSstmhbjJiVuxepW69IDwT+hU3A3P2Htuy7PpAkP71mFfh9k
	 +n4HgtLO2+sietKLfwpUJlYP94VkPlHAUuDKkwdIvn4tUKwj9j4LpgCtpH1LG0lC/F
	 +LCVki8ANBR3YyBris84ik6rcLF+JVdVIIAc+SPu5HNCjz+ovI2gmPCSUb3wq2dy7+
	 K/9g98NrNiSIg==
Date: Wed, 24 Jun 2026 08:06:13 -0500
From: Rob Herring <robh@kernel.org>
To: Otto =?iso-8859-1?Q?Pfl=FCger?= <otto.pflueger@abscue.de>
Cc: Liam Girdwood <lgirdwood@gmail.com>, Mark Brown <broonie@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Orson Zhai <orsonzhai@gmail.com>,
	Baolin Wang <baolin.wang@linux.alibaba.com>,
	Chunyan Zhang <zhang.lyra@gmail.com>, Lee Jones <lee@kernel.org>,
	linux-kernel@vger.kernel.org, devicetree@vger.kernel.org,
	Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>
Subject: Re: [PATCH v6 1/3] regulator: dt-bindings: Add Unisoc SC2730 PMIC
Message-ID: <20260624130613.GA4054894-robh@kernel.org>
References: <20260620-sc2730-regulators-v6-0-bbd2db395231@abscue.de>
 <20260620-sc2730-regulators-v6-1-bbd2db395231@abscue.de>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20260620-sc2730-regulators-v6-1-bbd2db395231@abscue.de>
X-Rspamd-Action: no action
X-Spamd-Result: default: False [-2.66 / 15.00];
	WHITELIST_SPF_DKIM(-3.00)[kernel.org:d:+,kernel.org:s:+];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_CONTAINS_FROM(1.00)[];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20260515];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c04:e001:36c::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-315240-lists,devicetree=lfdr.de];
	RCVD_COUNT_THREE(0.00)[4];
	MIME_TRACE(0.00)[0:+];
	RCPT_COUNT_TWELVE(0.00)[12];
	FORWARDED(0.00)[lists@lfdr.de];
	FORGED_RECIPIENTS(0.00)[m:otto.pflueger@abscue.de,m:lgirdwood@gmail.com,m:broonie@kernel.org,m:krzk+dt@kernel.org,m:conor+dt@kernel.org,m:orsonzhai@gmail.com,m:baolin.wang@linux.alibaba.com,m:zhang.lyra@gmail.com,m:lee@kernel.org,m:linux-kernel@vger.kernel.org,m:devicetree@vger.kernel.org,m:krzysztof.kozlowski@oss.qualcomm.com,m:krzk@kernel.org,m:conor@kernel.org,m:zhanglyra@gmail.com,s:lists@lfdr.de];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORGED_SENDER(0.00)[robh@kernel.org,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[kernel.org:+];
	TO_DN_SOME(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	ALIAS_RESOLVED(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[robh@kernel.org,devicetree@vger.kernel.org];
	FREEMAIL_CC(0.00)[gmail.com,kernel.org,linux.alibaba.com,vger.kernel.org,oss.qualcomm.com];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MISSING_XM_UA(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c04::/32, country:SG];
	DBL_BLOCKED_OPENRESOLVER(0.00)[tor.lore.kernel.org:rdns,tor.lore.kernel.org:helo,vger.kernel.org:from_smtp,qualcomm.com:email,abscue.de:email]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: DA56F6BE6E8

On Sat, Jun 20, 2026 at 10:54:00AM +0200, Otto Pflüger wrote:
> Add bindings for the regulators found in the Spreadtrum/Unisoc SC2730
> PMIC, used e.g. with the UMS512 and UMS9230 SoCs.
> 
> Signed-off-by: Otto Pflüger <otto.pflueger@abscue.de>
> Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>
> ---
>  .../bindings/regulator/sprd,sc2730-regulator.yaml  | 44 ++++++++++++++++++++++
>  1 file changed, 44 insertions(+)

Applied for rc1 to fix the warnings.

Rob

