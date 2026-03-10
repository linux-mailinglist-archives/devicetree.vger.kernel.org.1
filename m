Return-Path: <devicetree+bounces-273380-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 0B3pHkjir2nkdAIAu9opvQ
	(envelope-from <devicetree+bounces-273380-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 10 Mar 2026 10:20:08 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [172.105.105.114])
	by mail.lfdr.de (Postfix) with ESMTPS id E2C58248375
	for <lists+devicetree@lfdr.de>; Tue, 10 Mar 2026 10:20:07 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id B324E30D01B9
	for <lists+devicetree@lfdr.de>; Tue, 10 Mar 2026 09:09:46 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 0241443C07F;
	Tue, 10 Mar 2026 09:09:38 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=thundersoft.com header.i=@thundersoft.com header.b="iNaZVBeb"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-m49244.qiye.163.com (mail-m49244.qiye.163.com [45.254.49.244])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EA58037B024;
	Tue, 10 Mar 2026 09:09:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=45.254.49.244
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773133777; cv=none; b=pDCEfScHBnt5vHUxS1U1a/zLrbkvZ44/hea0ihI0JzBEFG7NsV6wUBe6bJn/fTp947t4J7H04Rj6LaPSl80CwSyiG4Uuy86DyXUYP+lPGAG0XwQ4HTvNrBTiUZ3Acqtwae4w3RcZTi4zN44k9QZWEXZcYNN/ymS2g+gvio8uPug=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773133777; c=relaxed/simple;
	bh=p/JLCo1/JHHROvxagtahzelPUI49QO/6h4MurJynPPw=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=CMyOZ1BOgYTlPOW2tisv1PRovAEWY0UwJXlTo6GFaksQfZpa65Z8ClQVciXMc3tk+bPXCVvmsOi5+afyp673f/XCW0lSsg6PPWCZGOURg3EZ39DeE1z10fM1+jTYrwJRgEBXHfzzUWx2Bl3fENMQrXm218jCxa26QKbXqThHEeY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=thundersoft.com; spf=pass smtp.mailfrom=thundersoft.com; dkim=pass (1024-bit key) header.d=thundersoft.com header.i=@thundersoft.com header.b=iNaZVBeb; arc=none smtp.client-ip=45.254.49.244
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=thundersoft.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=thundersoft.com
Received: from albert-OptiPlex-7080.. (unknown [112.65.126.162])
	by smtp.qiye.163.com (Hmail) with ESMTP id 3664f2b99;
	Tue, 10 Mar 2026 17:09:24 +0800 (GMT+08:00)
From: Albert Yang <yangzh0906@thundersoft.com>
To: Krzysztof Kozlowski <krzk@kernel.org>
Cc: arnd@arndb.de,
	linux-arm-kernel@lists.infradead.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	gordon.ge@bst.ai,
	bst-upstream@bstai.top,
	Albert Yang <yangzh0906@thundersoft.com>
Subject: Re: [PATCH v6 0/2] arm64: dts/defconfig: enable BST C1200 eMMC
Date: Tue, 10 Mar 2026 17:09:21 +0800
Message-ID: <20260310090921.4169475-1-yangzh0906@thundersoft.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <12058c14-67c7-4b43-bbbc-ef0ccb813e61@kernel.org>
References: <12058c14-67c7-4b43-bbbc-ef0ccb813e61@kernel.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-HM-Tid: 0a9cd70218ed09cckunm07955a0de6421
X-HM-MType: 1
X-HM-Spam-Status: e1kfGhgUHx5ZQUpXWQgPGg8OCBgUHx5ZQUlOS1dZFg8aDwILHllBWSg2Ly
	tZV1koWUFITzdXWS1ZQUlXWQ8JGhUIEh9ZQVkaQh5CVh0dTB5MTR8aTh4aTFYVFAkWGhdVEwETFh
	oSFyQUDg9ZV1kYEgtZQVlKSklVTU5VSklNVUpNSVlXWRYaDxIVHRRZQVlPS0hVSktJT09PSFVKS0
	tVSkJLS1kG
DKIM-Signature: a=rsa-sha256;
	b=iNaZVBebjz3EszJNwtv7aY7ooLN4wZLSoy58GkcC9kHQkow/uxIre8iPVjpr+h3Rbx/SwKwd78EH8Ij/FUp5SyFYEMR6KtXy4Lk7eeoze7o0COOLkdZGqGDA/4v/eJisJj4Hlz49E+6V5PqfNc3u/Uero4gyz9ZsXZy80OChwIE=; c=relaxed/relaxed; s=default; d=thundersoft.com; v=1;
	bh=cPQhIGiGqBVDVnXXbunM1anSUb0IsreU0z6O2XR9ayg=;
	h=date:mime-version:subject:message-id:from;
X-Rspamd-Queue-Id: E2C58248375
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.66 / 15.00];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_CONTAINS_FROM(1.00)[];
	R_MISSING_CHARSET(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[thundersoft.com,none];
	R_SPF_ALLOW(-0.20)[+ip4:172.105.105.114:c];
	R_DKIM_ALLOW(-0.20)[thundersoft.com:s=default];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	RCVD_COUNT_THREE(0.00)[4];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-273380-lists,devicetree=lfdr.de];
	DKIM_TRACE(0.00)[thundersoft.com:+];
	ASN(0.00)[asn:63949, ipnet:172.105.96.0/20, country:SG];
	TO_DN_SOME(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[yangzh0906@thundersoft.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	RCPT_COUNT_SEVEN(0.00)[8];
	NEURAL_HAM(-0.00)[-1.000];
	TAGGED_RCPT(0.00)[devicetree];
	DBL_BLOCKED_OPENRESOLVER(0.00)[tor.lore.kernel.org:rdns,tor.lore.kernel.org:helo,thundersoft.com:dkim,thundersoft.com:mid]
X-Rspamd-Action: no action

On Sun, 01 Mar 2026 14:12:03 +0100, Krzysztof Kozlowski <krzk@kernel.org> wrote:
 
> Please do not send patches to soc@ for review. It is explicitly
> documented - read:
> 
> "The main SoC maintainers can be reached via the alias soc@kernel.org
> only in following cases:
> 
> 1. There are no platform-specific maintainers."
> 
> So are you claiming now that BST is unmaintained? Because if so, we will
> mark it for removal.
> 
> First you send patches for review to the mailing lists. Only then,
> AFTER THE REVIEW, you send them to soc@ list.
> 
> Please read maintainer soc profile.
> 
> Best regards,
> Krzysztof

Understood. BST is maintained. Will resend v7 to the lists for review
first, without soc@.

Best regards,
Albert

