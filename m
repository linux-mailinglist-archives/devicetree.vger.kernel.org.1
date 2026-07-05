Return-Path: <devicetree+bounces-320655-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id nv2VKlpqSmq7CgEAu9opvQ
	(envelope-from <devicetree+bounces-320655-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Sun, 05 Jul 2026 16:29:46 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [IPv6:2600:3c09:e001:a7::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 369CB70A4CD
	for <lists+devicetree@lfdr.de>; Sun, 05 Jul 2026 16:29:46 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=kernel.org header.s=k20260515 header.b=IpbWHNL4;
	dmarc=pass (policy=quarantine) header.from=kernel.org;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-320655-lists+devicetree=lfdr.de@vger.kernel.org" designates 2600:3c09:e001:a7::12fc:5321 as permitted sender) smtp.mailfrom="devicetree+bounces-320655-lists+devicetree=lfdr.de@vger.kernel.org";
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id C21D93003635
	for <lists+devicetree@lfdr.de>; Sun,  5 Jul 2026 14:29:45 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 0F490384CFA;
	Sun,  5 Jul 2026 14:29:43 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0038030DEB8;
	Sun,  5 Jul 2026 14:29:41 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783261782; cv=none; b=ccAJBv63H2VDYtJP6hHkctKAJCxbcKSITU8FJOdnDcDS4GoQqCGwN9nDruWp+7ETvc5kxMR6PAILZs2dtVwURwjPtcWQw3Lyw+0A3eZq93daP4otpH7spBV1qoZ8FsShd4YzrityqEelWSE6HAqsyc8xsqexGTymbIFFLfTl0+c=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783261782; c=relaxed/simple;
	bh=aTQB9I56qpGc7k2PF7UujZYTkSz/JMzdZU7c0c0lm6E=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version:Content-Type; b=gOF+q0QsjCvVsAON/dMN2VWZMlHTzi02fXYlETQOgj74KA3jOwisQN1U+oA3glt0GzEdE2r1oWRBOOERSLeO9rc7sxJEwuL1202pwpA7eAreLkQ6caLAj/IPcUWFOE85RJdvAZQB+itlLwdgXiM5hP+V/Qm+hO1pkJjz2VOBl2M=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=IpbWHNL4; arc=none smtp.client-ip=100.103.45.18
Received: by smtp.kernel.org (Postfix) with ESMTPSA id C93C81F000E9;
	Sun,  5 Jul 2026 14:29:38 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1783261781;
	bh=ME+6HlD+08OSFpQWIBYN3eSrff9bfZygMLpwYCEDWAo=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References;
	b=IpbWHNL4aDE28VUq7IZtUjfCn/nl9ZeT8TI5RezI4FqO61dP6vpN3LUIztZD5X/Ix
	 JdqMyS3n/L5rY/kTYGAhgsRu+GB4YlQD5QhkGF/3Cg0DjBmlKr+gbudAZfi9/sNRc/
	 52SQQTO/hUuZzMGGipFVTAjJg0zjI1nulzuT8lXYpK/V8n4VO3Rz79FoaW4jowZzZ0
	 CpxilAAHS23Fu4CfTNd05JnzDRPTy15IaWw9vtumtN+pXvRqPgguepv2l/lxqgfH/k
	 4D6OE8qxhfdN94LFaDakfO2GQIbH9pAp3aCqbPtdubX29XemcBUuGxp/RC7PPjDCje
	 Gi90nllJfFWiA==
From: Sven Peter <sven@kernel.org>
To: Janne Grunau <j@jannau.net>,
	Neal Gompa <neal@gompa.dev>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Joshua Peisach <jpeisach@ubuntu.com>,
	Michael Reeves <michael.reeves077@gmail.com>
Cc: Sven Peter <sven@kernel.org>,
	asahi@lists.linux.dev,
	linux-arm-kernel@lists.infradead.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org
Subject: Re: [PATCH] arm64: dts: apple: t8122: Fix I2C resources
Date: Sun,  5 Jul 2026 16:29:27 +0200
Message-ID: <178326164442.9177.5710655356580684765.b4-ty@kernel.org>
X-Mailer: git-send-email 2.55.0
In-Reply-To: <20260629-t8122-i2c-fix-v1-1-cec044001550@gmail.com>
References: <20260629-t8122-i2c-fix-v1-1-cec044001550@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit
X-Rspamd-Action: no action
X-Spamd-Result: default: False [-3.66 / 15.00];
	WHITELIST_SPF_DKIM(-3.00)[kernel.org:d:+,kernel.org:s:+];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c09:e001:a7::/64];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20260515];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_COUNT_THREE(0.00)[4];
	RCVD_TLS_LAST(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:j@jannau.net,m:neal@gompa.dev,m:robh@kernel.org,m:krzk+dt@kernel.org,m:conor+dt@kernel.org,m:jpeisach@ubuntu.com,m:michael.reeves077@gmail.com,m:sven@kernel.org,m:asahi@lists.linux.dev,m:linux-arm-kernel@lists.infradead.org,m:devicetree@vger.kernel.org,m:linux-kernel@vger.kernel.org,m:krzk@kernel.org,m:conor@kernel.org,m:michaelreeves077@gmail.com,s:lists@lfdr.de];
	FROM_HAS_DN(0.00)[];
	FORGED_SENDER(0.00)[sven@kernel.org,devicetree@vger.kernel.org];
	RCPT_COUNT_TWELVE(0.00)[12];
	FREEMAIL_TO(0.00)[jannau.net,gompa.dev,kernel.org,ubuntu.com,gmail.com];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORWARDED(0.00)[lists@lfdr.de];
	TAGGED_FROM(0.00)[bounces-320655-lists,devicetree=lfdr.de];
	DKIM_TRACE(0.00)[kernel.org:+];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	ALIAS_RESOLVED(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[sven@kernel.org,devicetree@vger.kernel.org];
	TO_DN_SOME(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c09::/32, country:SG];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[vger.kernel.org:from_smtp,sto.lore.kernel.org:helo,sto.lore.kernel.org:rdns]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 369CB70A4CD

On Mon, 29 Jun 2026 20:01:01 +1000, Michael Reeves wrote:
> Correct the MMIO ranges and IRQs for T8122 I2C controllers.
> They were mistakenly incorrect in the original commit. This
> fix is required for i2c dependent hardware to function
> correctly, i.e. audio codecs.
> 
> Tested on J613 (MacBook Air M3).
> 
> [...]

Applied to sven/linux (apple-soc/fixes-7.2), thanks!

[1/1] arm64: dts: apple: t8122: Fix I2C resources
      https://github.com/AsahiLinux/linux/commit/09780b4b4bdc

Best regards,
-- 
Sven Peter <sven@kernel.org>


