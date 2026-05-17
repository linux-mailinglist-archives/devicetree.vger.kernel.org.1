Return-Path: <devicetree+bounces-299053-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id qBLYNV4yCmpvxgQAu9opvQ
	(envelope-from <devicetree+bounces-299053-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Sun, 17 May 2026 23:25:50 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [172.232.135.74])
	by mail.lfdr.de (Postfix) with ESMTPS id 9111E564007
	for <lists+devicetree@lfdr.de>; Sun, 17 May 2026 23:25:50 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id 751133002B11
	for <lists+devicetree@lfdr.de>; Sun, 17 May 2026 21:25:49 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 110BA302140;
	Sun, 17 May 2026 21:25:48 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="UBb+g8ta"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E00AE25782A;
	Sun, 17 May 2026 21:25:47 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779053148; cv=none; b=EC6Ca0IQkMIWQ75EckCt6s+H45ZlKHiiUomg5veVsWKQe4aNrlsvyhFtpUgjA7d5S0W4jQiFjcadSv7r3ZijAvt1fs4xz5VZxp4ASW95UlOZa/806yWvZxl4kZtGWq/KJpM61x5UFsEiT93xrJ06H0UZk3QS+7TNtn13be0kTok=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779053148; c=relaxed/simple;
	bh=HQ84orPF3kpwQr2CgjHzTUFj/GeuAVv6q8tZllwotG8=;
	h=Mime-Version:Content-Type:Date:Message-Id:Subject:Cc:To:From:
	 References:In-Reply-To; b=Q+uiy3IARfi07EyDtKHxIGbBaVx3nRC/RFVFiTJDHJ4DfqBhYPzF+LSD2SRRsmPtX+dImr0zERhQLPuXWO2D7GCDwYI5mtdRkomGShkvHjiSOI6c0W47afGU1z3Qiy+f1G3tzfs6DaJYzp6GUsiciobEhcu+pZloj3P02bOzzkY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=UBb+g8ta; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 0D002C2BCB0;
	Sun, 17 May 2026 21:25:44 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1779053147;
	bh=HQ84orPF3kpwQr2CgjHzTUFj/GeuAVv6q8tZllwotG8=;
	h=Date:Subject:Cc:To:From:References:In-Reply-To:From;
	b=UBb+g8taiuoaS5NIna6pU1N4R8ZM9fEzWbDPw0OeDSBCfyowLAa+QgAFf0Xr2RwAC
	 V/UJF2RFYkkbl1cpW0mQip/JezSEFr4ZXLM4TulvKSfcC1/x04piWv3BA740vMfOc7
	 WqzGC4O3V766qd/hFC0I5w5QqWfkcSUq71ep2HurbwKNp5s35+yz0CmLTsmdH82ChG
	 XGWxDjhSgqT3DKrtMTYdRl/J3lggGUK3lv7B2kwME4EuGNrTvz867Co77/16e7jSmP
	 I5JBSXadb/Q3KULfs7xx4EGkl/CwvD6Zovxt3v7pYB24bzmgJsp1MTqwJAb08RRc/m
	 WTKzp3cZaJ/SA==
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
Mime-Version: 1.0
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain; charset=UTF-8
Date: Sun, 17 May 2026 23:25:43 +0200
Message-Id: <DIL9PFAQQYBE.13POFL6NMQAX6@kernel.org>
Subject: Re: Stop false review statements
Cc: "Krzysztof Kozlowski" <krzk@kernel.org>, "Greg KH"
 <gregkh@linuxfoundation.org>, "Konstantin Ryabitsev" <mricon@kernel.org>,
 "Guenter Roeck" <linux@roeck-us.net>, "Miguel Ojeda" <ojeda@kernel.org>,
 <sashiko-bot@kernel.org>, <sashiko-reviews@lists.linux.dev>,
 <sashiko@lists.linux.dev>, "Linux Kernel Workflows"
 <workflows@vger.kernel.org>, "Linux Kernel Mailing List"
 <linux-kernel@vger.kernel.org>, <devicetree@vger.kernel.org>,
 <kfree@google.com>
To: "Roman Gushchin" <roman.gushchin@linux.dev>
From: "Danilo Krummrich" <dakr@kernel.org>
References: <b5989c0f-90da-42cc-a623-3b60df077848@kernel.org>
 <FA45D2AD-1135-4480-8423-63C0D37FE78D@linux.dev>
 <DIL2P8CHKVZD.2WVQQRN0FM28N@kernel.org>
In-Reply-To: <DIL2P8CHKVZD.2WVQQRN0FM28N@kernel.org>
X-Rspamd-Queue-Id: 9111E564007
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-1.66 / 15.00];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	MV_CASE(0.50)[];
	R_SPF_ALLOW(-0.20)[+ip4:172.232.135.74:c];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20201202];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-299053-lists,devicetree=lfdr.de];
	FROM_HAS_DN(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	RCVD_COUNT_THREE(0.00)[4];
	RCPT_COUNT_TWELVE(0.00)[13];
	DKIM_TRACE(0.00)[kernel.org:+];
	ASN(0.00)[asn:63949, ipnet:172.232.128.0/19, country:SG];
	MISSING_XM_UA(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[dakr@kernel.org,devicetree@vger.kernel.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree];
	TO_DN_SOME(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sto.lore.kernel.org:helo,sto.lore.kernel.org:rdns]
X-Rspamd-Action: no action

On Sun May 17, 2026 at 5:56 PM CEST, Danilo Krummrich wrote:
> However, I still have the same concern I raised previously when it comes =
to
> email delivery: I think that when sashiko sends feedback to contributors
> (without Cc'ing the mailing list and all other recipients), it should act=
ively
> ask the contributor to raise things on the list with all other recipients=
,
> reviewers and maintainers before acting on them, such that changes subseq=
uent to
> the first submission on the list are aligned.
>
> Can this be added please?

I'm also happy to send a PR of course.

Thanks,
Danilo

