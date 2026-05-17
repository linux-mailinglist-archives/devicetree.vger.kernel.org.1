Return-Path: <devicetree+bounces-298885-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id iMnfNw2VCWqggQQAu9opvQ
	(envelope-from <devicetree+bounces-298885-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Sun, 17 May 2026 12:14:37 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [172.232.135.74])
	by mail.lfdr.de (Postfix) with ESMTPS id B651B5606D8
	for <lists+devicetree@lfdr.de>; Sun, 17 May 2026 12:14:33 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id 4D9CF3004DD2
	for <lists+devicetree@lfdr.de>; Sun, 17 May 2026 10:14:33 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 2DAA1359703;
	Sun, 17 May 2026 10:14:31 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtpfb1-g21.free.fr (smtpfb1-g21.free.fr [212.27.42.9])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 74D1D2D8DC3;
	Sun, 17 May 2026 10:14:25 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=212.27.42.9
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779012871; cv=none; b=TwhxMbNurQs+BE/JbbhN6lQbcJhh3ig4WNnfrS9e9a/KkoyPYpr1rk51sEZqIzeE02qTBBf0Sj+OK0YJEE/8pW63XdoUAqHHaHiWG/QuUzH0tfe8zgPRx8joBFXV/DzknJI+smNnIi/bfT5q9GmwNs+0Yue1Vv6MCF/RsTcSQIw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779012871; c=relaxed/simple;
	bh=6NrvqXVuosMUpjJXwInafk0dG7dDARM6azx1SrXBLFI=;
	h=Message-ID:Date:MIME-Version:To:Cc:From:Subject:Content-Type; b=LkLQjWl+QdUP4z4zCnd4hEV6C+73Xa1S3t/hd9qYE+RcnzLPm01qtPYzZedTIZX4JcmcrMMspLPxhuw/vIONIDx/fwNhsqZ9452OsbJ0VAunWZ22TJWUrn4pCQtINjLKOZPJUndFB6a7OSeZ1/vzmjKpb1U4qAc4YrfQZgfVm2Q=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=online.fr; spf=pass smtp.mailfrom=online.fr; arc=none smtp.client-ip=212.27.42.9
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=online.fr
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=online.fr
Received: from smtp5-g21.free.fr (smtp5-g21.free.fr [212.27.42.5])
	by smtpfb1-g21.free.fr (Postfix) with ESMTP id 3292ADF8854;
	Sun, 17 May 2026 12:14:17 +0200 (CEST)
Received: from [10.0.0.2] (unknown [82.65.243.93])
	(Authenticated sender: legoll@free.fr)
	by smtp5-g21.free.fr (Postfix) with ESMTPSA id 8B6E86013C;
	Sun, 17 May 2026 12:13:54 +0200 (CEST)
Message-ID: <e92fc4a6-7a63-4d24-9c13-8fec3d8184d3@online.fr>
Date: Sun, 17 May 2026 12:13:54 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Content-Language: en-US
To: Yixun Lan <dlan@kernel.org>, Chukun Pan <amadeus@jmu.edu.cn>
Cc: alex@ghiti.fr, aou@eecs.berkeley.edu, conor+dt@kernel.org,
 devicetree@vger.kernel.org, krzk+dt@kernel.org,
 linux-kernel@vger.kernel.org, linux-riscv@lists.infradead.org,
 pjw@kernel.org, robh@kernel.org, spacemit@lists.linux.dev
From: Vincent Legoll <legoll@online.fr>
Subject: Re: [PATCH 1/1] riscv: dts: spacemit: enable QSPI for OrangePi RV2
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit
X-Rspamd-Queue-Id: B651B5606D8
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [1.14 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	FAKE_REPLY(1.00)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	R_SPF_ALLOW(-0.20)[+ip4:172.232.135.74:c];
	MAILLIST(-0.15)[generic];
	DMARC_POLICY_SOFTFAIL(0.10)[online.fr : SPF not aligned (relaxed), No valid DKIM,none];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-298885-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	FROM_HAS_DN(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[12];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[legoll@online.fr,devicetree@vger.kernel.org];
	ASN(0.00)[asn:63949, ipnet:172.232.128.0/19, country:SG];
	NEURAL_HAM(-0.00)[-0.999];
	MID_RHS_MATCH_FROM(0.00)[];
	R_DKIM_NA(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sto.lore.kernel.org:helo,sto.lore.kernel.org:rdns]
X-Rspamd-Action: no action

Hi Yixun Lan, Chukun Pan,

I tried spacemit-com/for-next (e2518e8cb1dde64af2d1bb246639bb7ef7523f7a) 
on opi-rv2
which includes this patch.

but cannot see anything relevant to SPI in dmesg, whereas I see [Q]SPI 
in u-boot output, but there it is listed as:
[   0.887] SF: Detected XM25QH128A with page size 256 Bytes, erase size 
64 KiB, total 16 MiB
Which is not the same you tested (XM25QU128C).

Am I missing something ?
How can I know this patch is working properly ?
What should I test ?
What should I report ?
Is this test useful ?

Thanks


