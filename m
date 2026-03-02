Return-Path: <devicetree+bounces-270007-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id wOvWCb+JpWmWDQYAu9opvQ
	(envelope-from <devicetree+bounces-270007-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Mon, 02 Mar 2026 13:59:43 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [IPv6:2600:3c15:e001:75::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 1F85C1D952A
	for <lists+devicetree@lfdr.de>; Mon, 02 Mar 2026 13:59:42 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id 990503018E18
	for <lists+devicetree@lfdr.de>; Mon,  2 Mar 2026 12:58:29 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E44ED36D4F1;
	Mon,  2 Mar 2026 12:58:27 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=sntech.de header.i=@sntech.de header.b="giKMICpI"
X-Original-To: devicetree@vger.kernel.org
Received: from gloria.sntech.de (gloria.sntech.de [185.11.138.130])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BDF4536C0DC;
	Mon,  2 Mar 2026 12:58:26 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=185.11.138.130
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772456307; cv=none; b=GDOVz/xkbIa8pCidPkVDXg2o1FuVQBK+a98xUBQq+P2V7wB0XgOTCjjlyZ0ul+Z1voHnl+nYaUW2eeFcy4753TVyRzBaWeA7xJwX+QENkle4EOXicc09FKWhEPkFv2lyYC4KBYNGAHeZnOunGt49Q7+jSN5tIYQmizEiH6NGMfE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772456307; c=relaxed/simple;
	bh=8SNL4K/kdlPpULHaajpG/xEfyVRrYqE+IlmsDadeShQ=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version:Content-Type; b=mik94PDcUjxJ2XoHnh0IY3TXLcVPXwbN4tsgyvsVYjW9eVM6a1Uex/KprCyoe4FhVjhJhDH8xR5YJX9eqO56UMlU5p3vUsnuO38RUdmQfyXZNE4Is4QI+rdzGrbes5ebKZoEUzfCL6F72iBbnHi0UKiA2LdOXy+gRfxPh99/MYc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=sntech.de; spf=pass smtp.mailfrom=sntech.de; dkim=pass (2048-bit key) header.d=sntech.de header.i=@sntech.de header.b=giKMICpI; arc=none smtp.client-ip=185.11.138.130
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=sntech.de
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=sntech.de
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sntech.de;
	s=gloria202408; h=Content-Transfer-Encoding:Content-Type:MIME-Version:
	References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Reply-To;
	bh=9NPsjemStQ87n0xUjwDCJNEh55URKvMtZw+KVT5SDx0=; b=giKMICpIVVMtUJ7eUGhWu5ZoNr
	ZcznH5niLHXn0lCKWuTZSvatyoDDo1tb1wvqEGI+2W95/4tDvRYNn7M9eoGyzolAlSYRZr/6x0af4
	0deMKAeMr9QU9u/1auQ6PrFf+qhegSgB6VoccPI8by3bx9V0eoWqSRNkja7CIqAhB8F44Cz5id54f
	1zTnX6s2hKsrZy1g2d6VCRXdqZBat2EnfSOogHdAT4tSzAvDKY07Y5WcNfI+MiRAGii2Knipsr/fo
	XZPNSNFnSNln7NZWuabigIdoKUTHEKSTu+yw9tPQ8C6zNgksYJ9vgdPRSP12kPOwH+657RYuR+4ku
	VExNP+fA==;
From: Heiko Stuebner <heiko@sntech.de>
To: Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Alexey Charkov <alchark@gmail.com>,
	Shawn Lin <shawn.lin@rock-chips.com>,
	Chaoyi Chen <chaoyi.chen@rock-chips.com>,
	Andy Yan <andy.yan@rock-chips.com>,
	Sebastian Reichel <sebastian.reichel@collabora.com>,
	Chaoyi Chen <kernel@airkyi.com>
Cc: Heiko Stuebner <heiko@sntech.de>,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	linux-kernel@vger.kernel.org
Subject: Re: [PATCH] arm64: dts: rockchip: Enable displayport for rk3576 evb2
Date: Mon,  2 Mar 2026 13:58:06 +0100
Message-ID: <177245624813.813665.16227743247073713111.b4-ty@sntech.de>
X-Mailer: git-send-email 2.47.3
In-Reply-To: <20260224083818.109-1-kernel@airkyi.com>
References: <20260224083818.109-1-kernel@airkyi.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[sntech.de,quarantine];
	R_DKIM_ALLOW(-0.20)[sntech.de:s=gloria202408];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c15:e001:75::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-270007-lists,devicetree=lfdr.de];
	FREEMAIL_TO(0.00)[kernel.org,gmail.com,rock-chips.com,collabora.com,airkyi.com];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_COUNT_THREE(0.00)[3];
	RCPT_COUNT_TWELVE(0.00)[14];
	MIME_TRACE(0.00)[0:+];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[heiko@sntech.de,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[sntech.de:+];
	NEURAL_HAM(-0.00)[-1.000];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MID_RHS_MATCH_FROM(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c15::/32, country:SG];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sin.lore.kernel.org:helo,sin.lore.kernel.org:rdns,sntech.de:mid,sntech.de:dkim,sntech.de:email]
X-Rspamd-Queue-Id: 1F85C1D952A
X-Rspamd-Action: no action


On Tue, 24 Feb 2026 16:38:18 +0800, Chaoyi Chen wrote:
> The rk3576 evb2 has a full size displayport connector. Enable it.
> 
> 

Applied, thanks!

[1/1] arm64: dts: rockchip: Enable displayport for rk3576 evb2
      commit: 35dad33703e8b40090e964257eafdd66e53f38eb

Best regards,
-- 
Heiko Stuebner <heiko@sntech.de>

