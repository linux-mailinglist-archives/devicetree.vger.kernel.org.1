Return-Path: <devicetree+bounces-292665-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id kGdYFEif+GnlxAIAu9opvQ
	(envelope-from <devicetree+bounces-292665-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Mon, 04 May 2026 15:29:44 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [172.232.135.74])
	by mail.lfdr.de (Postfix) with ESMTPS id E638D4BDE72
	for <lists+devicetree@lfdr.de>; Mon, 04 May 2026 15:29:43 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id 6469B30028BB
	for <lists+devicetree@lfdr.de>; Mon,  4 May 2026 13:29:43 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id BB7C63DBD5E;
	Mon,  4 May 2026 13:29:40 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="lomBwYWI"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 485F63A5E97;
	Mon,  4 May 2026 13:29:40 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1777901380; cv=none; b=XqKdmznCmWGw/oxbMQM8NnHN5LutoslvZ5IJL3m15iPgSGSzZ1sgmJolPwSZz+t2mlqCmO71yqIusoj9WMWv1F0f0RzUe1vNgo6Yt8o4S8AW3n488CYG1ovAuxA/SEQdUOchxXOENewTf3GgPC0vo89sC4THJKOuj/J91g+CvSA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1777901380; c=relaxed/simple;
	bh=sxtTmyFIBi1JaLB0iktLyt93l8yHKFyan4aUZ+XoQlY=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=LTqmsg75iMpVM1BnGa+DtcQY8GSK5JDs9L11j9mfnWg5o5MzVAZi+S2itJHdN7gT/lXuh3bgNfSHYAKCs0LHbnWnzD/JmXM0rG3Xc+ml9ROGOuGUdnmC1BgGRZzoM3yOAem2gyI4k8R+dmbUrk5ayehhHlEjvMnKOvi2AxKyLrE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=lomBwYWI; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 97F55C2BCB8;
	Mon,  4 May 2026 13:29:36 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1777901379;
	bh=sxtTmyFIBi1JaLB0iktLyt93l8yHKFyan4aUZ+XoQlY=;
	h=Date:Subject:To:Cc:References:From:In-Reply-To:From;
	b=lomBwYWIHSs4cYThB2BchS8YCqCzcnyzvrozbDze5P/kn85jhAHMc+yT6+2hxpzqB
	 LRgmpX7eLGwl1Pa5S397vwQBnRJxwA/0V5NeYBEK2XVu3wIy4sEHTgLiOb0eb8MD6f
	 MplsANXNI9iO4Y4CKtqifphOW8GAuwXat86k8udXhTwYgCDkKHpYStmt6U1ypU/Di3
	 t4KVjkWmDXNxsfLU8rFOR2p2xJEmK+amYJe8ED36BbLVAsjvhDni4v9WHyxOFcriLv
	 0W2gfleUywOOX5RsTpZg5jkbWLxq/7DGO72wqJqDti6m6Z3tH/fpf4s6xdPwf1iZmu
	 RxSsQgMGZh3Ag==
Message-ID: <62bf765a-6feb-4df9-bdbe-92a4a7a330b8@kernel.org>
Date: Mon, 4 May 2026 08:29:32 -0500
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 1/2] arm64: dts: agilex5: set alias for i3c controllers
 for agilex5 variants
Content-Language: en-US
To: Adrian Ng Ho Yin <adrian.ho.yin.ng@altera.com>,
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
 Conor Dooley <conor+dt@kernel.org>, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org
Cc: Adrian Ng Ho Yin <adrianhoyin.ng@altera.com>
References: <cover.1777878392.git.adrian.ho.yin.ng@altera.com>
 <81865f7542a599f72c74e2d9858534716e05c959.1777878392.git.adrian.ho.yin.ng@altera.com>
From: Dinh Nguyen <dinguyen@kernel.org>
In-Reply-To: <81865f7542a599f72c74e2d9858534716e05c959.1777878392.git.adrian.ho.yin.ng@altera.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-Rspamd-Queue-Id: E638D4BDE72
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-2.16 / 15.00];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_SPF_ALLOW(-0.20)[+ip4:172.232.135.74:c];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20201202];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-292665-lists,devicetree=lfdr.de];
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
	ASN(0.00)[asn:63949, ipnet:172.232.128.0/19, country:SG];
	MID_RHS_MATCH_FROM(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	RCPT_COUNT_SEVEN(0.00)[7];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[altera.com:email]

Hi Adrian,

Please simplify the commit header a bit, no need to use "agilex5" twice.


On 5/4/26 02:07, Adrian Ng Ho Yin wrote:
> From: Adrian Ng Ho Yin <adrianhoyin.ng@altera.com>
> 
> Agilex5 SoCFPGA variants and derivities have 2 i3c controllers, a main

s/derivities/derivatives

Dinh

