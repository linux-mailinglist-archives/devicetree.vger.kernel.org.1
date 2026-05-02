Return-Path: <devicetree+bounces-292285-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id EJGrJrrg9WmxQAIAu9opvQ
	(envelope-from <devicetree+bounces-292285-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Sat, 02 May 2026 13:32:10 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [IPv6:2600:3c15:e001:75::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 9746D4B1CDA
	for <lists+devicetree@lfdr.de>; Sat, 02 May 2026 13:32:09 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id 64A693003BF5
	for <lists+devicetree@lfdr.de>; Sat,  2 May 2026 11:32:06 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 7C30533438F;
	Sat,  2 May 2026 11:32:04 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="uDLo3XuN"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5790032A3E1;
	Sat,  2 May 2026 11:32:04 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1777721524; cv=none; b=flTqpYrRlqr6VnwLfQYXOh3pZH8md4e54m6pwQmqRLXglDfrO5LFPPnnsU8b9wgNiyaVh3UPwkzjsMWfaTwE8/95ctqYDyvqBl8561BawEDW5fG2kUVcjm6uD6EeJJFfUQsBUMN8xcJwa5/BW0x4q3KCmu1Qcfkn7BHcDDIWUsw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1777721524; c=relaxed/simple;
	bh=9D6m49EpCS2agbuFMF6TMaS57eerDfloBvYKv2rxZNo=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=kuYYtsAbhNVnPke8unFRc3SVoMx/FZ6hpl86lT4ElCXGChr/YAP5A63Zl45Whqdj2+QHSYVldTD8Zl1jWlB/rV3YgRjfg5gx+AGwYcgq5WqSgQrE2KaQFcTJ20Zz7QKCpTF7wwbAYg9pf47Yj5W7lL7OOl+/6O7wVy1AEf+p70k=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=uDLo3XuN; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id F03E3C19425;
	Sat,  2 May 2026 11:32:02 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1777721523;
	bh=9D6m49EpCS2agbuFMF6TMaS57eerDfloBvYKv2rxZNo=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=uDLo3XuNIlDMqMtt7vkRuIvt0FEhRxZ8JHg4wZ+qEg3QbyeiuFibOhXsuvm1sS3Y+
	 rn7AKd+EcHl8033XvY5fQ7/BouDkCLv9ZIMZ4NgGVH99PxThqvyqBMiMogPtwk7gSV
	 9rmiQ7qxE9SYdpXWOvmI5UCOZFlS9nd8mPPIR54gHAhFYEHTuN7mDRgGVky9CTup8Y
	 ys0am7iqd8/Wex442QdGtpgh11LBJuMMn+ponirVZCWa3HqI3oomEeEG/+Vdbno/dH
	 RACWiYxCedxmlu1Zxewp/6dTdyV/ADiXVPsxDNNbCM+Jq3fsDM8SOra06Is3FiFNZZ
	 XhC17t05Ezypw==
Date: Sat, 2 May 2026 11:32:01 +0000
From: Yixun Lan <dlan@kernel.org>
To: Conor Dooley <conor@kernel.org>
Cc: Stephen Boyd <sboyd@kernel.org>,
	Michael Turquette <mturquette@baylibre.com>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Inochi Amaoto <inochiama@gmail.com>,
	Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>,
	linux-clk@vger.kernel.org, linux-riscv@lists.infradead.org,
	devicetree@vger.kernel.org, spacemit@lists.linux.dev,
	linux-kernel@vger.kernel.org
Subject: Re: [PATCH 1/4] dt-bindings: soc: spacemit: k3: Add PCIe DBI clock
 IDs
Message-ID: <20260502113201-GKB3266396@kernel.org>
References: <20260430-06-pci-clk-fix-v1-0-32fdc77c02ab@kernel.org>
 <20260430-06-pci-clk-fix-v1-1-32fdc77c02ab@kernel.org>
 <20260430-plug-bolt-8ff9137717fa@spud>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20260430-plug-bolt-8ff9137717fa@spud>
X-Rspamd-Queue-Id: 9746D4B1CDA
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20201202];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c15:e001:75::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-292285-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	FORGED_SENDER_MAILLIST(0.00)[];
	FREEMAIL_CC(0.00)[kernel.org,baylibre.com,gmail.com,oss.qualcomm.com,vger.kernel.org,lists.infradead.org,lists.linux.dev];
	RCPT_COUNT_TWELVE(0.00)[13];
	MIME_TRACE(0.00)[0:+];
	FROM_HAS_DN(0.00)[];
	MISSING_XM_UA(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[dlan@kernel.org,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[kernel.org:+];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	TO_DN_SOME(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c15::/32, country:SG];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sin.lore.kernel.org:helo,sin.lore.kernel.org:rdns]

On 19:55 Thu 30 Apr     , Conor Dooley wrote:
> On Thu, Apr 30, 2026 at 10:30:26AM +0000, Yixun Lan wrote:
> > Add clock IDs of PCIe DBI (Data Bus Interface) clock.
> > 
> > Fixes: efe897b557e2 ("dt-bindings: soc: spacemit: k3: add clock support")
> 
> Why is this a fix? As-is, this looks like you're abusing the Fixes tag
> so that this gets backported alongside things that are a fix that depend
> on it.
Ok, will drop the Fixes tag, since the PCIe isn't actually activated yet

-- 
Yixun Lan (dlan)

