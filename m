Return-Path: <devicetree+bounces-278709-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id tzciF1jkv2nm+wMAu9opvQ
	(envelope-from <devicetree+bounces-278709-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Sun, 22 Mar 2026 13:45:12 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 8FA6C2E94A1
	for <lists+devicetree@lfdr.de>; Sun, 22 Mar 2026 13:45:11 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 3A851301ECC0
	for <lists+devicetree@lfdr.de>; Sun, 22 Mar 2026 12:36:24 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 855693803EF;
	Sun, 22 Mar 2026 12:36:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=ziyao.cc header.i=me@ziyao.cc header.b="RYV0qZt5"
X-Original-To: devicetree@vger.kernel.org
Received: from sender4-op-o15.zoho.com (sender4-op-o15.zoho.com [136.143.188.15])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 458FC2571C7;
	Sun, 22 Mar 2026 12:36:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=pass smtp.client-ip=136.143.188.15
ARC-Seal:i=2; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1774182983; cv=pass; b=LDJVgjgMtn5ptDwGrA6sWXwxKvI9Bf30qWdVbsyL+sMcSriNu74vQegSJ0O/+qxKR9mhnIGc5mS1BK9aa+MFbyBxstrUJFk4eAn2KVf/ovfCvTepIsnwgbCUhU9Poutv/grOIJoNvUupnNVuvERGBlSmVqtSlS3ujaKuY3MEFSs=
ARC-Message-Signature:i=2; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1774182983; c=relaxed/simple;
	bh=/G4wv1AYpuDDOThiFlf7yd2BqIrHdxg81+ps1exdPJY=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=gNp2ll8eZ+d5ehLsV80ytiDx7/+M1DncqgIR7DGcVgS6C/cN++R+ANy8VzdR2uQ8KbEM1RTShz9dGR+VDrHL3o6lHS/DZkm+9rMsR/SiuuGJGUWKvWTfUUvcx+yOLm0PwdCtRijwix9XUDv2gFeV5bC02B/OgfDpWqgsErrD+DE=
ARC-Authentication-Results:i=2; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=ziyao.cc; spf=pass smtp.mailfrom=ziyao.cc; dkim=pass (1024-bit key) header.d=ziyao.cc header.i=me@ziyao.cc header.b=RYV0qZt5; arc=pass smtp.client-ip=136.143.188.15
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=ziyao.cc
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=ziyao.cc
ARC-Seal: i=1; a=rsa-sha256; t=1774182953; cv=none; 
	d=zohomail.com; s=zohoarc; 
	b=Yv2PS3JweAqdYSO4TICBc119goOC/fCtLF9QKC3iCR+PGPRTBw4nwiCN365ptTrGyebRGt1uJNzQdKPy1Dy86Cw8150+dnNxnpzbaAidZ37JpCmUYI4X2ocBxUUZZK8LZ8PGP3a6RtodsQo9z7VfyVMBKFXQ3Y+FCRSrdBBf3vI=
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=zohomail.com; s=zohoarc; 
	t=1774182953; h=Content-Type:Cc:Cc:Date:Date:From:From:In-Reply-To:MIME-Version:Message-ID:References:Subject:Subject:To:To:Message-Id:Reply-To; 
	bh=sCP65OrZkkXH1dJ+E9hSjkpXLr7tFsgk9B2weoSwSqM=; 
	b=hVGtfrbdcDHnjcembCfhcaKMPt8JEOCeDGgCXXZA1wsqvVTlxbXqy8xVL2ScE9iOLnA302qeIXet5bgZfp58GA3ZJaF49X6eDdtfk+EyRHtKeE0Brk97KxNnKPZOtxXYOEopaB87kL22r14q090c5f0M7Uzg7W6NcWQNwp+e8VU=
ARC-Authentication-Results: i=1; mx.zohomail.com;
	dkim=pass  header.i=ziyao.cc;
	spf=pass  smtp.mailfrom=me@ziyao.cc;
	dmarc=pass header.from=<me@ziyao.cc>
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; t=1774182953;
	s=zmail; d=ziyao.cc; i=me@ziyao.cc;
	h=Date:Date:From:From:To:To:Cc:Cc:Subject:Subject:Message-ID:References:MIME-Version:Content-Type:In-Reply-To:Message-Id:Reply-To;
	bh=sCP65OrZkkXH1dJ+E9hSjkpXLr7tFsgk9B2weoSwSqM=;
	b=RYV0qZt5fR4nz0i6P6OpKLV/zj8owzRSmDxlUcWD1AdDU8Yw2GHi+laeFVYo3gkn
	BpnFJLXw1gpqA56bZcxINvOte3lEKrb42xgvCZXHZ2H+zcxWXXhs437nG+4ZAhqO55C
	6CTqlsyw1jJ8d1Q7sUhoygpNSqFZvfv/dTiae2YI=
Received: by mx.zohomail.com with SMTPS id 1774182950939448.0578904738061;
	Sun, 22 Mar 2026 05:35:50 -0700 (PDT)
Date: Sun, 22 Mar 2026 12:35:35 +0000
From: Yao Zi <me@ziyao.cc>
To: wjjsn <wjjsn@qq.com>, robh@kernel.org, krzk+dt@kernel.org,
	conor+dt@kernel.org, chenhuacai@kernel.org
Cc: kernel@xen0n.name, devicetree@vger.kernel.org,
	loongarch@lists.linux.dev, linux-kernel@vger.kernel.org,
	wjjsn <2858482031@qq.com>
Subject: Re: [PATCH v5 0/2] Add Loongson-2K0300 processor support
Message-ID: <ab_iF2hjZRfp16HP@pie>
References: <tencent_325FB1D2C600CD55E367332EC453E5A64B09@qq.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <tencent_325FB1D2C600CD55E367332EC453E5A64B09@qq.com>
X-ZohoMailClient: External
X-Spamd-Result: default: False [9.34 / 15.00];
	URIBL_BLACK(7.50)[ziyao.cc:dkim];
	SUSPICIOUS_RECIPS(1.50)[];
	MID_RHS_NOT_FQDN(0.50)[];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	BAD_REP_POLICIES(0.10)[];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-278709-lists,devicetree=lfdr.de];
	R_DKIM_ALLOW(0.00)[ziyao.cc:s=zmail];
	RCVD_COUNT_THREE(0.00)[4];
	FROM_HAS_DN(0.00)[];
	GREYLIST(0.00)[pass,body];
	FREEMAIL_TO(0.00)[qq.com,kernel.org];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	FREEMAIL_CC(0.00)[xen0n.name,vger.kernel.org,lists.linux.dev,qq.com];
	DMARC_POLICY_ALLOW(0.00)[ziyao.cc,quarantine];
	DKIM_TRACE(0.00)[ziyao.cc:+];
	RCPT_COUNT_SEVEN(0.00)[10];
	TAGGED_RCPT(0.00)[devicetree,dt];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[me@ziyao.cc,devicetree@vger.kernel.org];
	TO_DN_SOME(0.00)[];
	R_SPF_ALLOW(0.00)[+ip4:172.234.253.10:c];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	ARC_ALLOW(0.00)[subspace.kernel.org:s=arc-20240116:i=2];
	NEURAL_SPAM(0.00)[0.993];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,qq.com:email,ziyao.cc:dkim]
X-Rspamd-Queue-Id: 8FA6C2E94A1
X-Rspamd-Action: add header
X-Rspamd-Server: lfdr
X-Spam: Yes

On Sun, Mar 22, 2026 at 03:13:14PM +0800, wjjsn wrote:
> From: wjjsn <2858482031@qq.com>
> 
> The first patch adds the necessary DT binding documentation,
> and the second patch adds the DTS and DTSI files for the SoC
> and the board.

Please note I'm working on basic drivers/devicetree for 2K0300
platform[1][2][3], though the series haven't been updated for some
time... I've re-written the pinctrl part, and will try to re-spin all of
them next weekend.

Also, previously Huacai expressed preference on delaying devicetree
changes until basic drivers are ready[4], so anyway we should probably
get driver patches merged first.

Regards,
Yao Zi

[1]: https://lore.kernel.org/all/20250523095408.25919-4-ziyao@disroot.org/
[2]: https://lore.kernel.org/all/20250811163749.47028-2-ziyao@disroot.org/
[3]: https://lore.kernel.org/all/20250816033327.11359-2-ziyao@disroot.org/
[4]: https://lore.kernel.org/all/CAAhV-H6EDEf3U6w5KY3R3HCAdAbqDefqpE3ktCQeQtFbDK2Ypg@mail.gmail.com/

