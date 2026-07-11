Return-Path: <devicetree+bounces-324776-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id oR9TC5obUmo8MAMAu9opvQ
	(envelope-from <devicetree+bounces-324776-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Sat, 11 Jul 2026 12:31:54 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 63CB2741398
	for <lists+devicetree@lfdr.de>; Sat, 11 Jul 2026 12:31:53 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=geanix.com header.s=protonmail3 header.b=j53sk1Z8;
	dmarc=pass (policy=quarantine) header.from=geanix.com;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-324776-lists+devicetree=lfdr.de@vger.kernel.org" designates 172.234.253.10 as permitted sender) smtp.mailfrom="devicetree+bounces-324776-lists+devicetree=lfdr.de@vger.kernel.org";
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 0E1D8300F5CE
	for <lists+devicetree@lfdr.de>; Sat, 11 Jul 2026 10:31:52 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 809AE3B7B84;
	Sat, 11 Jul 2026 10:31:51 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from mail-08.mail-europe.com (mail-08.mail-europe.com [57.129.93.249])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E0D7C353A61
	for <devicetree@vger.kernel.org>; Sat, 11 Jul 2026 10:31:48 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783765911; cv=none; b=ZRnsCy0qMeRpHIERFYgXLpZaPY++NSZ9FDm/Au1f9S+o3t3HZ5Tyxcv27Gzw9UpXadUdbi1Onl1MDISxKFLB6RJNzVZ8mMiP1DBgYz6IIouJtZ1IqVS6SW/aSG5mNU5HbPIiCCzbznas5/M8k8+ku03iR8hHXz7Z+qOeqZ0qVa8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783765911; c=relaxed/simple;
	bh=UcrPwjleYOJgTRCrEQFOiFPMRIAmirHboh5hjApdo34=;
	h=From:To:Cc:Subject:In-Reply-To:References:Date:Message-ID:
	 MIME-Version:Content-Type; b=RTGfkART4GnXeU0LaxldZDZNQhEJjeTkP/edWX+Sh04RIb8I1AeEKfSfRYTfLUKPL2gVIik3gByOBur2DwdDyXo9lQX+BDWz2xLEn1HqLT76Bjk2Uvnd+RMEHvHXuIHYgOljROZLnDvi6Ic0QHUtJBMR3x01OpHvv81tbb7oK3M=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=geanix.com; spf=pass smtp.mailfrom=geanix.com; dkim=pass (2048-bit key) header.d=geanix.com header.i=@geanix.com header.b=j53sk1Z8; arc=none smtp.client-ip=57.129.93.249
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=geanix.com;
	s=protonmail3; t=1783765898; x=1784025098;
	bh=CAr/fKi5/LA7pN+4fry0IljwDp0zJrV9bzcJxHbBrak=;
	h=From:To:Cc:Subject:In-Reply-To:References:Date:Message-ID:From:To:
	 Cc:Date:Subject:Reply-To:Feedback-ID:Message-ID:BIMI-Selector;
	b=j53sk1Z8BCBT0JaWNBmDkBmhVzVt2scS0S9lTygAWUmdjhHAnQumSoe8wGzqvvlyh
	 3DK6hh3zAI5KLFaeVratreLsORFP9IDSO3nOD47C6N59f9LVhKDjzvq+HPSSl0vneE
	 oaboup5OMxwtTOQqq0KRxsptDXYOvr92afH/eRHiSKWBmJgX7rIkQ/bv0Aw69Zf2rC
	 tXQ43ycYnZqHNm1oxMLA9g2cxj6LGSCpwGRy1Cia4UJjQmnNgmfJ4v6MYgVoNVRM5O
	 QzXhdr6OUb5ukqtYdmlL/lm2NJr0Wqk+URBd6Yo1ldJdSZnq5cLhZRrZ0YwKoH7nvf
	 cBb+hZry7cmCw==
X-Pm-Submission-Id: 4gy4kK6mcgz1DDLC
From: Esben Haabendal <esben@geanix.com>
To: <sashiko-bot@kernel.org>
Cc: <sashiko-reviews@lists.linux.dev>,  <conor+dt@kernel.org>,
  <Frank.Li@kernel.org>,  <devicetree@vger.kernel.org>,  <robh@kernel.org>,
  <imx@lists.linux.dev>
Subject: Re: [PATCH] arm64: dts: imx8mq: Add dcss node
In-Reply-To: <20260710095211.6BE9D1F000E9@smtp.kernel.org>
	(sashiko-bot@kernel.org's message of "Fri, 10 Jul 2026 09:52:10
	+0000")
References: <20260710-imx8mq-dcss-device-tree-node-v1-1-fc724dfd574e@geanix.com>
	<eQdptVZkkupu8jyArfhLV_zAdXoQ3HJb0IsarA60euM68FAWXbTrtljsPnGROjwCVAirW-eB13e6B7vNsN5g-g==@protonmail.internalid>
	<20260710095211.6BE9D1F000E9@smtp.kernel.org>
Date: Sat, 11 Jul 2026 12:31:37 +0200
Message-ID: <87o6gdes1i.fsf@geanix.com>
User-Agent: Gnus/5.13 (Gnus v5.13)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain
X-Rspamd-Action: no action
X-Spamd-Result: default: False [-1.66 / 15.00];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[geanix.com,quarantine];
	R_MISSING_CHARSET(0.50)[];
	R_DKIM_ALLOW(-0.20)[geanix.com:s=protonmail3];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	PRECEDENCE_BULK(0.00)[];
	TAGGED_FROM(0.00)[bounces-324776-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_THREE(0.00)[3];
	FORGED_RECIPIENTS(0.00)[m:sashiko-bot@kernel.org,m:sashiko-reviews@lists.linux.dev,m:conor+dt@kernel.org,m:Frank.Li@kernel.org,m:devicetree@vger.kernel.org,m:robh@kernel.org,m:imx@lists.linux.dev,m:conor@kernel.org,s:lists@lfdr.de];
	FORGED_SENDER(0.00)[esben@geanix.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	FORWARDED(0.00)[lists@lfdr.de];
	FORGED_SENDER_MAILLIST(0.00)[];
	DKIM_TRACE(0.00)[geanix.com:+];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[esben@geanix.com,devicetree@vger.kernel.org];
	ALIAS_RESOLVED(0.00)[];
	TO_DN_NONE(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCPT_COUNT_SEVEN(0.00)[7];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MID_RHS_MATCH_FROM(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	MIME_TRACE(0.00)[0:+];
	DBL_BLOCKED_OPENRESOLVER(0.00)[vger.kernel.org:from_smtp,sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 63CB2741398

<sashiko-bot@kernel.org> writes:

>> +			compatible = "nxp,imx8mq-dcss";
>> +			reg = <0x32e00000 0x2d000>, <0x32e2f000 0x1000>;
>> +			interrupts = <6>, <8>, <9>;
>
> [Severity: High]
> If power-domains = <&pgc_disp>; is omitted, the generic PM domain framework
> won't track the dependency between this device and the DISP domain.
>
> If no other active devices claim pgc_disp, the PM core may disable the
> domain during late_initcall.
>
> If a board enables this node and the driver subsequently tries to access the
> memory-mapped registers of the unpowered peripheral, it will trigger a
> synchronous external abort and panic the kernel.
>
> Is this node missing the power-domains property?

As the bindings for it does not include a power-domains property, I
don't think it is missing.

/Esben

