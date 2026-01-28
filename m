Return-Path: <devicetree+bounces-260397-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id qEt/IxIFemlg1gEAu9opvQ
	(envelope-from <devicetree+bounces-260397-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 28 Jan 2026 13:46:10 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [IPv6:2600:3c09:e001:a7::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 2A703A17EC
	for <lists+devicetree@lfdr.de>; Wed, 28 Jan 2026 13:46:10 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id ACE8F3004F39
	for <lists+devicetree@lfdr.de>; Wed, 28 Jan 2026 12:46:09 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 8521F33D51D;
	Wed, 28 Jan 2026 12:46:08 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="JMkQOxJG"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6198C32BF43;
	Wed, 28 Jan 2026 12:46:08 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769604368; cv=none; b=q9tY0WPLa/yGX/IKH8FuohyByR0746W0xvZsZM3Iwpavth4yYx5uULjKLHiIGDYTwC7QTgvsmquz/Mfl/Z8fQ0WyoFy+AZSVFJ+B9GXE/ZnTKkTKYc2sn4J0XEmu+J+LL364SP6SGTVTRY+PpbjCXmx06wrVHVvaq6bzD2To6So=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769604368; c=relaxed/simple;
	bh=p/W6X8zBFCy3zqsriEE2F8BFuBBNIx2YRXMEdQK4D+w=;
	h=Message-ID:Date:MIME-Version:Subject:To:References:From:
	 In-Reply-To:Content-Type; b=H9aDhLrV/67f4EyGJanThu9y5DmjpdbhRGabk/oeC57Xr4DAzKx+3CSwTb4kftI2o74yvZGD94XhnJRgVEvy8aRNZS15aJOd3JGYWN6Vcd82BCkcRB7by4W4H5pjmQiRh0Z+mfyV+SLHQBQBWu/ZRFtwMVVke7B9j1hRAWKbHy8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=JMkQOxJG; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 7DBECC4CEF1;
	Wed, 28 Jan 2026 12:46:07 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1769604367;
	bh=p/W6X8zBFCy3zqsriEE2F8BFuBBNIx2YRXMEdQK4D+w=;
	h=Date:Subject:To:References:From:In-Reply-To:From;
	b=JMkQOxJGxE6dG7vC9VqErqm5iKHvg5NDIVQB9zD9TSWbP5b+cFqjdo70KhSX0RQT+
	 VsKx3YV8Ph8dOfsG8/QV6kVqq9MVWOO08DXv0y7Xwq3IYfy4xexSsyfE/UiTWgM8FJ
	 rv8JyYhi33+OcdOlQDTa15uO6wYajoz+lvbc0SwbhXeC//7ngeJDMvCp6HKcVlqPkP
	 LqCCb+wfTvOWE+bPmm/nb62aUpjO4h/x3ttDche7LVkjDSREp9UdVkoqgKzSNGthCU
	 /DYCLZJRxi64u/OUEEv4Ip+NmsIk/xNRAgfHoJXpCBbP4EXP5KZhf8KpxaOSEgjHJI
	 bTh5jgYzDiq8w==
Message-ID: <3da7378b-9e56-4e94-9c97-e41143a71b36@kernel.org>
Date: Wed, 28 Jan 2026 06:46:06 -0600
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v1] net: stmmac: Disable queues before tx_disable
Content-Language: en-US
To: muhammad.nazim.amirul.nazle.asmade@altera.com,
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
 Conor Dooley <conor+dt@kernel.org>, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org
References: <20260128002739.3590-1-muhammad.nazim.amirul.nazle.asmade@altera.com>
From: Dinh Nguyen <dinguyen@kernel.org>
In-Reply-To: <20260128002739.3590-1-muhammad.nazim.amirul.nazle.asmade@altera.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-2.16 / 15.00];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c09:e001:a7::/64:c];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20201202];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-260397-lists,devicetree=lfdr.de];
	FROM_HAS_DN(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	DKIM_TRACE(0.00)[kernel.org:+];
	ASN(0.00)[asn:63949, ipnet:2600:3c09::/32, country:SG];
	RCPT_COUNT_FIVE(0.00)[6];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[dinguyen@kernel.org,devicetree@vger.kernel.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sto.lore.kernel.org:helo,sto.lore.kernel.org:rdns,altera.com:email]
X-Rspamd-Queue-Id: 2A703A17EC
X-Rspamd-Action: no action



On 1/27/26 18:27, muhammad.nazim.amirul.nazle.asmade@altera.com wrote:
> From: Nazim Amirul <muhammad.nazim.amirul.nazle.asmade@altera.com>
> 
> Disable all queues and disconnect before tx_disable in stmmac_xdp_release
> to prevent a corner case where packet may be still queued at the same time
> tx_disable is called resulting in kernel panic if some packet still has to
> be processed.
> 
> Signed-off-by: Nazim Amirul <muhammad.nazim.amirul.nazle.asmade@altera.com>

You've sent this patch to the wrong people. Please run get_maintainer on 
your patch next time! Refer to the submitting-patches documentation in 
the section  'Select the recipients for your patch'

Dinh

