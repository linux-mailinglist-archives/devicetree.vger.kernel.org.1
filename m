Return-Path: <devicetree+bounces-292824-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 4ILOBadm+Wmi8QIAu9opvQ
	(envelope-from <devicetree+bounces-292824-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 05 May 2026 05:40:23 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [IPv6:2600:3c04:e001:36c::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 704804C6317
	for <lists+devicetree@lfdr.de>; Tue, 05 May 2026 05:40:21 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id A6730300F1BB
	for <lists+devicetree@lfdr.de>; Tue,  5 May 2026 03:40:20 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 62E8D3A7825;
	Tue,  5 May 2026 03:40:18 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="oaEt8NuM"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3FD5C392C52;
	Tue,  5 May 2026 03:40:18 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1777952418; cv=none; b=iAkradHdsHzU566nsCpT/itElYQQLs0xKZs4oggS3HA+gKqdVQFgSWQJVs/OI5eM7ad4mPwvLuvb+dGkLfvdOw/WgXJpEuk78Zkd8eRm1eEYR7QChCZfCPpTX6FcenPm9YegjeHOPPORFAH4NRAnp26jgf5wcipSfXJjlb8kYQk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1777952418; c=relaxed/simple;
	bh=csWnQpidmPrKGdDUUZaNm+ctkleqb00qfe9TAInxaSc=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=H+LPR+Dr5nLMN6MqW4f62fHdDdHZEad89pzqN/QAw0wqSeLpAeqzAGsc6mIl3GbGGqeXK90QbSEb4aZ0L6q5sP9ENR9Laj+M65FkPvugVkd0l4F/Y+o/VtlnJFAR/VjHyOvTkvFb+f9+qFwI05x5AZ9MPONKj21xuNz/xCHx/mQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=oaEt8NuM; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 49FC0C2BCB4;
	Tue,  5 May 2026 03:40:17 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1777952417;
	bh=csWnQpidmPrKGdDUUZaNm+ctkleqb00qfe9TAInxaSc=;
	h=Date:Subject:To:Cc:References:From:In-Reply-To:From;
	b=oaEt8NuMl9PUli8jKGjqqA0JQSsu9nbwxtni84SqU5gK4xNYBakxN12/ff8diI0+J
	 dbPVQEQ96SH8mqEmARkFLm3hG//bcBxadroK62uDAOvsFgBSWYV0lfV4s2EISJyrhJ
	 +N2avSs0NLnUN2mcLTG0K6NKU2CoNVzFm2o38LI+OMq/C5L8o34l8ef3vlcdFrmGzt
	 wmMg6hNzIsNMJtrZSbaF7Aps46lmjgltG+FG1Yt6icyx97U0MCouGgharlJNo+9tl2
	 9nV4S++LKrJARRDtSp1aUvjZffz4M5Jyt8MNXLi2SIsGXuWPwUkqbuDYjkPSaspaDh
	 yoRG/QWBkhC1g==
Message-ID: <f9dd23a7-8795-49ec-a653-61eabf42218e@kernel.org>
Date: Mon, 4 May 2026 22:40:16 -0500
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 2/2] arm64: dts: intel: set alias for i3c controllers
 for agilex3
Content-Language: en-US
To: Adrian Ng Ho Yin <adrian.ho.yin.ng@altera.com>,
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
 Conor Dooley <conor+dt@kernel.org>, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org
Cc: Adrian Ng Ho Yin <adrianhoyin.ng@altera.com>
References: <cover.1777951738.git.adrian.ho.yin.ng@altera.com>
 <b83be9e6a3ea0c15c7032856cc6e67f3185ad613.1777951738.git.adrian.ho.yin.ng@altera.com>
From: Dinh Nguyen <dinguyen@kernel.org>
In-Reply-To: <b83be9e6a3ea0c15c7032856cc6e67f3185ad613.1777951738.git.adrian.ho.yin.ng@altera.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-Rspamd-Queue-Id: 704804C6317
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-2.16 / 15.00];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c04:e001:36c::/64:c];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20201202];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-292824-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	FORGED_SENDER_MAILLIST(0.00)[];
	DKIM_TRACE(0.00)[kernel.org:+];
	MIME_TRACE(0.00)[0:+];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FROM_HAS_DN(0.00)[];
	TO_DN_SOME(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[dinguyen@kernel.org,devicetree@vger.kernel.org];
	ASN(0.00)[asn:63949, ipnet:2600:3c04::/32, country:SG];
	MID_RHS_MATCH_FROM(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	RCPT_COUNT_SEVEN(0.00)[7];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[tor.lore.kernel.org:helo,tor.lore.kernel.org:rdns,altera.com:email]

Please use this commit header:

arm64: dts: socfpga: agilex3: set alias for i3c controllers

On 5/4/26 22:30, Adrian Ng Ho Yin wrote:
> From: Adrian Ng Ho Yin <adrianhoyin.ng@altera.com>
> 
> Agilex3 SoCFPGA have 2 i3c controllers, a main master and a secondary
> master. Setting the alias for both i3c controllers to prevent bus id
> contention when both controllers are enabled which results in driver
> probe failures.
> 
> Signed-off-by: Adrian Ng Ho Yin <adrian.ho.yin.ng@altera.com>
> --

Dinh

