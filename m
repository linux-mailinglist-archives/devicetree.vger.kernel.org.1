Return-Path: <devicetree+bounces-276499-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id KBi1MpMCuWmEnAEAu9opvQ
	(envelope-from <devicetree+bounces-276499-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 17 Mar 2026 08:28:19 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [172.232.135.74])
	by mail.lfdr.de (Postfix) with ESMTPS id 70F692A4CB4
	for <lists+devicetree@lfdr.de>; Tue, 17 Mar 2026 08:28:19 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id BCE77301BABF
	for <lists+devicetree@lfdr.de>; Tue, 17 Mar 2026 07:28:18 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 1622238E5D6;
	Tue, 17 Mar 2026 07:28:15 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="FLzwbd9y"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E6E5038C41D;
	Tue, 17 Mar 2026 07:28:14 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773732495; cv=none; b=r1PPfzAAcFQzmQZnnfY/HK9H4zRUZyenHUMFDcIMGxqc7s8PRbtTlWLmify8wvTde0kR5viRM8qbGrmr3PiYuvmDRDdCmaKxXfmlPtcyVRKvsCcIQ/uxHsbh1c6ucwfl1ciZCMDLla58MizNUDAQlL11mA1rodkPlEy0UeCGQ/g=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773732495; c=relaxed/simple;
	bh=NjGzHFjKUHuiUZKS0Lr/kCHqpo7qJibwQZUqWulau+w=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=M8zavMx9+Wz1WCq0QDdUu23GsuHNH48DeWjRxYf0Ecjns01BniDaz6Fvo9iKawZBCEfD/Ks4qy7F2hKObn1C7jdInsgtVMqvFN0bHHFeOsVBdGO/FWVmuyusVnKkquGI9RlEzhvAEpn05v/zWxWndNoS+jzJZUA2penOyoGAEmY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=FLzwbd9y; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 02764C4CEF7;
	Tue, 17 Mar 2026 07:28:13 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1773732494;
	bh=NjGzHFjKUHuiUZKS0Lr/kCHqpo7qJibwQZUqWulau+w=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=FLzwbd9y5QlK3icBAIQ4a7ER2JpeNFWJpS9C9x3mTWyrPZOD4wuSwbalBxUFSvTIT
	 /osEuNnM9dSXF537vDO88+7gqH8wBEEi6TToRVvUQYvltHO1f+WYQ2x6OQO+2Mekg3
	 zYzK9jxe3mkF96GByayueOa+pig1wL5I+yez0KFsUKIFD4EQPDU5llc0ww+WA22Vn3
	 i26pyOMUtR0s40rZ3NU6PBfc/YncrHVFQ/1T3NyWHRaLkihoukavI/i/KruT41FzsK
	 rphrRINjpENTrmX574t9DztS3z/4xOHdvatJ0nupb2R9HJAJa84xaLnfq0UD0kzIv2
	 6F40KpgWN9FdQ==
Date: Tue, 17 Mar 2026 08:28:12 +0100
From: Krzysztof Kozlowski <krzk@kernel.org>
To: Piyush Patle <piyushpatle228@gmail.com>
Cc: lars@metafoo.de, nuno.sa@analog.com, lgirdwood@gmail.com, 
	broonie@kernel.org, robh@kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org, 
	linux-sound@vger.kernel.org, devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH v2] ASoC: dt-bindings: adi,ssm2305: Convert to DT schema
Message-ID: <20260317-cassowary-of-authentic-agility-05dec5@quoll>
References: <20260316211348.230923-1-piyushpatle228@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
In-Reply-To: <20260316211348.230923-1-piyushpatle228@gmail.com>
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
	FREEMAIL_TO(0.00)[gmail.com];
	MIME_TRACE(0.00)[0:+];
	TAGGED_FROM(0.00)[bounces-276499-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	FREEMAIL_CC(0.00)[metafoo.de,analog.com,gmail.com,kernel.org,vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[krzk@kernel.org,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[kernel.org:+];
	RCPT_COUNT_SEVEN(0.00)[11];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MISSING_XM_UA(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.232.128.0/19, country:SG];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sto.lore.kernel.org:helo,sto.lore.kernel.org:rdns,bootlin.com:url]
X-Rspamd-Queue-Id: 70F692A4CB4
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

On Tue, Mar 17, 2026 at 02:43:48AM +0530, Piyush Patle wrote:
> Convert the SSM2305 speaker amplifier binding from text format to
> YAML schema to enable dtbs_check validation.
> 

Missing DCO. Apply your patch and check yourself.

Also, you ignored my review, without explanation. But since you will
have to send new version, then s/YAML/DT/. There is no such thing as
YAML schema.

<form letter>
This is a friendly reminder during the review process.

It looks like you received a tag and forgot to add it.

If you do not know the process, here is a short explanation:
Please add Acked-by/Reviewed-by/Tested-by tags when posting new
versions of patchset, under or above your Signed-off-by tag, unless
patch changed significantly (e.g. new properties added to the DT
bindings). Tag is "received", when provided in a message replied to you
on the mailing list. Tools like b4 can help here. However, there's no
need to repost patches *only* to add the tags. The upstream maintainer
will do that for tags received on the version they apply.

Please read:
https://elixir.bootlin.com/linux/v6.12-rc3/source/Documentation/process/submitting-patches.rst#L577

If a tag was not added on purpose, please state why and what changed.
</form letter>

Best regards,
Krzysztof


