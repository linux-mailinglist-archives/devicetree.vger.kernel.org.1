Return-Path: <devicetree+bounces-304588-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id eE16JNKrGmqa7AgAu9opvQ
	(envelope-from <devicetree+bounces-304588-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Sat, 30 May 2026 11:20:18 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 1C42560BD40
	for <lists+devicetree@lfdr.de>; Sat, 30 May 2026 11:20:17 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 0E38E300C936
	for <lists+devicetree@lfdr.de>; Sat, 30 May 2026 09:19:54 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 8B2DB3932C0;
	Sat, 30 May 2026 09:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="P5BWGGyx"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9D4E5381B01;
	Sat, 30 May 2026 09:19:52 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=100.103.45.18
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780132793; cv=none; b=uYBrtMJ7CAZ0e4bBhjAY6Cap01QGpEwn17kOZEfY42iRS2w1EI4J9/1jjCb4uBnGNXQfnizXv+D/ZYh9uqRlGrwcIWbvltU4Pi9EPB3Yjw9Z5ZsNk5rdlnYLmsaBg3h5gKhaTU2VR57D1OQt4Beo/6ETI6MUIUQMYnqp3L6C70s=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780132793; c=relaxed/simple;
	bh=LSgZxKJCwYcrNJBxIvgfD2PKLJy/abW+DMcjYMcA+Z0=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=Jh9frLxvSVtG9XtTU6ybbHMZdOyVrCDbENXDR869kq9zMTRVMfXBi/zbQh5e+FlGvJcl/kNCV08NrWbTn9ftGzNzgwcd+DfiD/R6RhLq7ZdqENmUtTFMo3TXlUu7YWLH2acBswmuVhfL/qFFaUu0EB/REho4r6wW5ZUmnOGQpZY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=P5BWGGyx; arc=none smtp.client-ip=100.103.45.18
Received: by smtp.kernel.org (Postfix) with ESMTPSA id B76701F00898;
	Sat, 30 May 2026 09:19:51 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1780132792;
	bh=LSgZxKJCwYcrNJBxIvgfD2PKLJy/abW+DMcjYMcA+Z0=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To;
	b=P5BWGGyxBf1LxydwUUou67cEm72xD6zbqiE72wQHLbsoqBhbRBmi2Y/YA2nKv+Di2
	 DBJilYSQqjZkujmSpqLgYJ0Ja5bxAdk79f8r5kU3Sa/3buAKKPQl/gnA2WRqpWccU7
	 RNC6gBjtOV0gmzUaVGSWs8uXEosOOjOVuvRvFaL8+fWOqQpSD5m5NuBfQ05Sxinc2A
	 M4lM6baiBumInh3PnPPQW3a0oO+sokxMVuCEnLrYGWDa68atDJbdqSBJXL7A/QmyYx
	 X1ebspGj6UdkfMVXpK9QHEoZ38LRMmX/uLRcQAtkCzL6wXfo0stWNa5ocsLQmjx3Hv
	 Kmd6TxegBeE9A==
Date: Sat, 30 May 2026 11:19:50 +0200
From: Krzysztof Kozlowski <krzk@kernel.org>
To: Manish Baing <manishbaing2789@gmail.com>
Cc: ulfh@kernel.org, robh@kernel.org, krzk+dt@kernel.org, 
	conor+dt@kernel.org, kblaiech@nvidia.com, linux-mmc@vger.kernel.org, 
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH v2] dt-bindings: mmc: mellanox,bluefield-dw-mshc: Convert
 DT schema
Message-ID: <20260530-crystal-asparagus-saluki-8dcdd5@quoll>
References: <20260524111528.107251-1-manishbaing2789@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
In-Reply-To: <20260524111528.107251-1-manishbaing2789@gmail.com>
X-Spamd-Result: default: False [-0.16 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	MID_RHS_NOT_FQDN(0.50)[];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20260515];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-304588-lists,devicetree=lfdr.de];
	RCVD_COUNT_THREE(0.00)[4];
	FORGED_SENDER_MAILLIST(0.00)[];
	FREEMAIL_TO(0.00)[gmail.com];
	MIME_TRACE(0.00)[0:+];
	FROM_HAS_DN(0.00)[];
	MISSING_XM_UA(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[krzk@kernel.org,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[kernel.org:+];
	RCPT_COUNT_SEVEN(0.00)[9];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	TO_DN_SOME(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:rdns,sea.lore.kernel.org:helo]
X-Rspamd-Queue-Id: 1C42560BD40
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

On Sun, May 24, 2026 at 11:15:28AM +0000, Manish Baing wrote:
> Convert the Mellanox BlueField SoC extensions for the Synopsys
> Designware Mobile Storage Host Controller from text format
> to YAML schema.

There is no YAML schema. It's second such I see today... from where
do the people take it?

Same comments as for all your other patches.

Best regards,
Krzysztof


