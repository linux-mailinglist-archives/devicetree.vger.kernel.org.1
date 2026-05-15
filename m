Return-Path: <devicetree+bounces-298520-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id AJ6pF4V2B2pL4QIAu9opvQ
	(envelope-from <devicetree+bounces-298520-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Fri, 15 May 2026 21:39:49 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [172.105.105.114])
	by mail.lfdr.de (Postfix) with ESMTPS id C951B556FF5
	for <lists+devicetree@lfdr.de>; Fri, 15 May 2026 21:39:48 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 735F2309D583
	for <lists+devicetree@lfdr.de>; Fri, 15 May 2026 19:30:10 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D3844413D89;
	Fri, 15 May 2026 19:29:58 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="IbLQmYC6"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B1259413D82;
	Fri, 15 May 2026 19:29:58 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778873398; cv=none; b=kbpaqxELCTAJ3QwcT7kdvLNdDb96mhiLc3wrH278QQLhSnOCZV4eC4KwB8uBru3U7AreoL5erZKVWyv4qQRxS7nUEb5VgQ79VTqiJShoeQmVrmYeIlgy7r2nQjndY1pH/NTKtayx7TAFLdipeg83l3qxb6XrmOhuEpwhwMcCLV0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778873398; c=relaxed/simple;
	bh=UUbgqtv7hJT6lsCumGN5AiSxZyffjnc80/gbNf37Bik=;
	h=Date:From:To:Cc:Subject:Message-ID:In-Reply-To:References:
	 MIME-Version:Content-Type; b=YElxce5v5A1y50iesZ9nRsCLKd9KJJsbWgy6OMZiI30baVwZHS9/IVbkmqSop7u7fswy5c9xpKXVQzJOJDFhfyPPr+JuZXlgqZl+50Nkn5tXT/3mtJJIwGa6rFPXIHInERZ6ujqYCSfcU8GpKcHuNQPusuxVTCiT6WwA4pyF7TE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=IbLQmYC6; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 50E12C2BCB0;
	Fri, 15 May 2026 19:29:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778873398;
	bh=UUbgqtv7hJT6lsCumGN5AiSxZyffjnc80/gbNf37Bik=;
	h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
	b=IbLQmYC6yCf5MZT0oIoJxkdVpNonY2pP2RINCQ9Y4/xoke2daGumq2IEYb2JPyY/r
	 zHWjGs82TTtfaYw/VSZpYc981Nyc7T/Bc9bwW57514OQD2ls9BeZobNS+QpK4F3N8+
	 1Ap3TKalIVv6e2kpuNN5/kgA6yMVZ8YuzGmPrDN3qLcabWgZVqMs/5YZt1d2JkBOz+
	 kcWaY2iLZA1cLOrlm2NcbcTcg0j3k43QfOYCYqcpGHRhaqBgyszFKwb8WBu1r3u0Ec
	 FmJ8531kEd3FlFY5jPHO3TgYgvlNcjJvFgMqEvGsJMDFEpAXqc2v1kh3+LPp+2y2xS
	 hEOvnI3PSn+1g==
Date: Fri, 15 May 2026 20:29:48 +0100
From: Jonathan Cameron <jic23@kernel.org>
To: Chris Morgan <macroalpha82@gmail.com>
Cc: linux-iio@vger.kernel.org, andy@kernel.org, nuno.sa@analog.com,
 dlechner@baylibre.com, jean-baptiste.maneyrol@tdk.com,
 linux-rockchip@lists.infradead.org, devicetree@vger.kernel.org,
 heiko@sntech.de, conor+dt@kernel.org, krzk+dt@kernel.org, robh@kernel.org,
 andriy.shevchenko@intel.com, Chris Morgan <macromorgan@hotmail.com>
Subject: Re: [PATCH V7 08/11] iio: imu: inv_icm42607: Add Accelerometer for
 icm42607
Message-ID: <20260515202948.5b90c2d0@jic23-huawei>
In-Reply-To: <20260515130018.237378-9-macroalpha82@gmail.com>
References: <20260515130018.237378-1-macroalpha82@gmail.com>
	<20260515130018.237378-9-macroalpha82@gmail.com>
X-Mailer: Claws Mail 4.4.0 (GTK 3.24.52; x86_64-pc-linux-gnu)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII
Content-Transfer-Encoding: 7bit
X-Rspamd-Queue-Id: C951B556FF5
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.16 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_RHS_NOT_FQDN(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20201202];
	R_SPF_ALLOW(-0.20)[+ip4:172.105.105.114:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	MIME_TRACE(0.00)[0:+];
	RCPT_COUNT_TWELVE(0.00)[14];
	RCVD_TLS_LAST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_FROM(0.00)[bounces-298520-lists,devicetree=lfdr.de];
	RCVD_COUNT_THREE(0.00)[4];
	FREEMAIL_TO(0.00)[gmail.com];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[kernel.org:+];
	TO_DN_SOME(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[jic23@kernel.org,devicetree@vger.kernel.org];
	FREEMAIL_CC(0.00)[vger.kernel.org,kernel.org,analog.com,baylibre.com,tdk.com,lists.infradead.org,sntech.de,intel.com,hotmail.com];
	TAGGED_RCPT(0.00)[devicetree,dt];
	ASN(0.00)[asn:63949, ipnet:172.105.96.0/20, country:SG];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sashiko.dev:url,tor.lore.kernel.org:helo,tor.lore.kernel.org:rdns]
X-Rspamd-Action: no action

On Fri, 15 May 2026 08:00:13 -0500
Chris Morgan <macroalpha82@gmail.com> wrote:

> From: Chris Morgan <macromorgan@hotmail.com>
> 
> Add icm42607 accelerometer sensor for icm42607.
> 
> Signed-off-by: Chris Morgan <macromorgan@hotmail.com>
Sashiko raised a few things.  Otherwise I don't have any comments.
https://sashiko.dev/#/patchset/20260515130018.237378-1-macroalpha82%40gmail.com


