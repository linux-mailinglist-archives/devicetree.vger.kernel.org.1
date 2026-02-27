Return-Path: <devicetree+bounces-269206-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id sIgILWCFoWlEuAQAu9opvQ
	(envelope-from <devicetree+bounces-269206-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Fri, 27 Feb 2026 12:52:00 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 1316B1B6C01
	for <lists+devicetree@lfdr.de>; Fri, 27 Feb 2026 12:52:00 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 29B3C3033FB4
	for <lists+devicetree@lfdr.de>; Fri, 27 Feb 2026 11:51:58 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A13AF2749CF;
	Fri, 27 Feb 2026 11:51:57 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="rLbPbzSL"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7EAB331D381
	for <devicetree@vger.kernel.org>; Fri, 27 Feb 2026 11:51:57 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772193117; cv=none; b=NLch9spnkFH1zRcLgYHpYoHlMXdZDN2BbNIQieA5zVJjG5DmxI7yKRNDlSYqF+HcNsoU5QuUdK1i068DSeIg9zNlGI6jewDSq0Cam/2tyGYMmuyViUB8Hyzm+ZIumedF3QeFFoRyleqxevEAe9a3esNdnhfyib+7MK0+6oBoHBk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772193117; c=relaxed/simple;
	bh=vFsmgta4ZnRTtu2MFeSjWMK72KsVbzkMGVMs7W4iI5Q=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=j77YEdbXC90eQnVIFMi4WafTO6mu89ZDfrGgGOfy8IJ6dIleb0YKgUDgumlGGbeFBTmRrqQY8/3yyqHRjV8RPPYYrm+SklLh+zRVFECPEJ9v8lojogWP/8v3Yw4EsIu+f3WsVNcf/HK0xT9BEgFQ2m+lvhvGC8e7aSmwWqeQ9fc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=rLbPbzSL; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 72A15C116C6;
	Fri, 27 Feb 2026 11:51:56 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1772193117;
	bh=vFsmgta4ZnRTtu2MFeSjWMK72KsVbzkMGVMs7W4iI5Q=;
	h=Date:Subject:To:Cc:References:From:In-Reply-To:From;
	b=rLbPbzSL8/KU7du4vMmmSgWgbxX1PM7FkxdqDD45lhkx2kQCfzzrktWsUOZZOseYF
	 vAWkNV9el84qRbl31eeZ8KEfKstrGCuUGnwyHQplj3m9pMS9+cBpx424wCDmqoC4tq
	 /zdbkm9xIq/58tWgopYOtkXdHbreCxxuoSok591gcPlC41RtMKuvEBXvfuq+yBtKXc
	 a6rEj3CPWyCPdQ9ePL5GE4hdsCd/M3cA599xOOEUWjjG1PdRkTx0YRSrLkzonMRRxf
	 +0ICk1AkxWNQkc5Q99rCsHA0fUim+bb9DyqtGObiZZjxPJoOuwaY/N1MHkPb7A9ZzW
	 KoAotfjePSQwg==
Message-ID: <12344826-df13-4738-8790-6d4082ec9241@kernel.org>
Date: Fri, 27 Feb 2026 05:51:55 -0600
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH] dt-bindings: intel: Add Agilex5 SoCFPGA modular board
To: Krzysztof Kozlowski <krzk@kernel.org>
Cc: robh@kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org,
 devicetree@vger.kernel.org,
 Niravkumar L Rabara <niravkumarlaxmidas.rabara@altera.com>
References: <20260226052145.75639-1-dinguyen@kernel.org>
 <20260226-fascinating-vicugna-of-typhoon-ffd29c@quoll>
Content-Language: en-US
From: Dinh Nguyen <dinguyen@kernel.org>
In-Reply-To: <20260226-fascinating-vicugna-of-typhoon-ffd29c@quoll>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20201202];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-269206-lists,devicetree=lfdr.de];
	RCVD_COUNT_THREE(0.00)[4];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	FROM_HAS_DN(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-0.997];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[dinguyen@kernel.org,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[kernel.org:+];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	RCPT_COUNT_FIVE(0.00)[6];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns]
X-Rspamd-Queue-Id: 1316B1B6C01
X-Rspamd-Action: no action



On 2/26/26 02:20, Krzysztof Kozlowski wrote:
> On Wed, Feb 25, 2026 at 11:21:45PM -0600, Dinh Nguyen wrote:
>> Add compatible for Agilex5 SoCFPGA modular board.
> 
> Which is what?
> 
> And why do we want it? There is no user of it here or you forgot to
> explain WHY you are doing things.

This is for the socfpga_agilex5_socdk_modular.dts board. When I did the 
merge of the intel bindings into the altera file, somehow I left this 
binding out. [1]

> 
> ... and why you did not include my tags?
> 

I treated this patch as a new patch since the change is going into a 
different file so I didn't add your tag.

I will respin a v2 with a reason for this patch.

Thanks,

Dinh


[1] 
https://git.kernel.org/pub/scm/linux/kernel/git/dinguyen/linux.git/commit/?h=socfpga_dts_for_v6.20_v3&id=1cb8486ac5f3adc0a4f38e8b59962c2314fc2ca5

