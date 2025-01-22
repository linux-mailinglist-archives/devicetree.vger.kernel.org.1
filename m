Return-Path: <devicetree+bounces-140209-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 8B781A18E53
	for <lists+devicetree@lfdr.de>; Wed, 22 Jan 2025 10:30:10 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id CFEF21615C5
	for <lists+devicetree@lfdr.de>; Wed, 22 Jan 2025 09:30:08 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 5C9872101A1;
	Wed, 22 Jan 2025 09:30:07 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=fail reason="signature verification failed" (1024-bit key) header.d=163.com header.i=@163.com header.b="T283zZMu"
X-Original-To: devicetree@vger.kernel.org
Received: from m16.mail.163.com (m16.mail.163.com [117.135.210.2])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 30C172101A0;
	Wed, 22 Jan 2025 09:30:03 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=117.135.210.2
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1737538207; cv=none; b=QBWW8PmA1O45Ke9GRCKdksIK1YBje++8k/YjfCHy4Ps9O3qPjmTgRxeQAVUaLdjI/QTxc/AOSp3Cq8tlInsQl0MGEvpC4nVO/QHXoX6Nt6Ow9NTp2g+x7pjuDQCBRakLcbjMhrQiiav5dKYifTv/bqRdbpsjwwyquzjhoWBk2co=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1737538207; c=relaxed/simple;
	bh=IGjlnM2VULoNhxOw4I4PWNKPXTBzM78eZrGmh25C4bU=;
	h=Date:From:To:Cc:Subject:In-Reply-To:References:Content-Type:
	 MIME-Version:Message-ID; b=WQsCYFm6Fe4RV42ukGBQQRaJuBETYGlSDTp2KTyS4gDpF1JB5IiD1bZIs+lFx//nsh1WsDTo+crEhySQYuQhzOjPjdQzmKsNBDqFPw0BFmvNxcBfqTWDqae9Ga2VQ2aHp/pAGgLqK7K25Chcd+ikT5XrUnfGdqS7HroTtLZJBhI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=163.com; spf=pass smtp.mailfrom=163.com; dkim=fail (1024-bit key) header.d=163.com header.i=@163.com header.b=T283zZMu reason="signature verification failed"; arc=none smtp.client-ip=117.135.210.2
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=163.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=163.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=163.com;
	s=s110527; h=Date:From:Subject:Content-Type:MIME-Version:
	Message-ID; bh=H00FnMznIWJYmbnYuG8IMJ8qP5oUolnuSyMtcLYErrM=; b=T
	283zZMu8grfBe68CmPjz3lAQtMZkby8Pxb/9ZF9ab43KP4qSF9m5IXwerd1UxKHT
	arvQyd/DRnwUR7G0/zKFEbYXqrVRtLyW/KEtURU7c1YNgXH0ISiMCeNHwabx7COX
	yfxbLYchVeoGawqV5PsNU2TjhSxkWXkKXF4J08nY5E=
Received: from andyshrk$163.com ( [58.22.7.114] ) by
 ajax-webmail-wmsvr-40-141 (Coremail) ; Wed, 22 Jan 2025 17:29:05 +0800
 (CST)
Date: Wed, 22 Jan 2025 17:29:05 +0800 (CST)
From: "Andy Yan" <andyshrk@163.com>
To: "Krzysztof Kozlowski" <krzk@kernel.org>
Cc: heiko@sntech.de, hjc@rock-chips.com, krzk+dt@kernel.org,
	devicetree@vger.kernel.org, dri-devel@lists.freedesktop.org,
	linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org,
	linux-rockchip@lists.infradead.org, derek.foreman@collabora.com,
	detlev.casanova@collabora.com, daniel@fooishbar.org, robh@kernel.org,
	sebastian.reichel@collabora.com,
	"Andy Yan" <andy.yan@rock-chips.com>
Subject: Re:Re: [PATCH v12 11/13] dt-bindings: display: vop2: Add missing
 rockchip,grf propertie for rk3566/8
X-Priority: 3
X-Mailer: Coremail Webmail Server Version XT5.0.14 build 20240801(9da12a7b)
 Copyright (c) 2002-2025 www.mailtech.cn 163com
In-Reply-To: <20250122-quaint-heavenly-herring-c92c32@krzk-bin>
References: <20250121103254.2528004-1-andyshrk@163.com>
 <20250121103446.2528212-1-andyshrk@163.com>
 <20250122-quaint-heavenly-herring-c92c32@krzk-bin>
X-NTES-SC: AL_Qu2YBfmYt0kv4ySbZekfmkcVgOw9UcO5v/Qk3oZXOJF8jCrr+CUnVkFMJFbsweeONhCLrheYTj1O48h1bZN6b5MbMYJR3vOT7FDdj3CPoysF1Q==
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset=UTF-8
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Message-ID: <6ccc6e2.6afc.1948d580c9c.Coremail.andyshrk@163.com>
X-Coremail-Locale: zh_CN
X-CM-TRANSID:jSgvCgDnD_RhupBn98RcAA--.18267W
X-CM-SenderInfo: 5dqg52xkunqiywtou0bp/xtbB0g-cXmeQsrGf6gACsc
X-Coremail-Antispam: 1U5529EdanIXcx71UUUUU7vcSsGvfC2KfnxnUU==

CkhpCkF0IDIwMjUtMDEtMjIgMTY6MDM6MDAsICJLcnp5c3p0b2YgS296bG93c2tpIiA8a3J6a0Br
ZXJuZWwub3JnPiB3cm90ZToKPk9uIFR1ZSwgSmFuIDIxLCAyMDI1IGF0IDA2OjM0OjQ0UE0gKzA4
MDAsIEFuZHkgWWFuIHdyb3RlOgo+PiBGcm9tOiBBbmR5IFlhbiA8YW5keS55YW5Acm9jay1jaGlw
cy5jb20+Cj4+IAo+PiBQcm9wZXJ0aWUgInJvY2tjaGlwLGdyZiIgaXMgcmVxdWlyZWQgZm9yIHJr
MzU2Ni84Lgo+Cj5GaXggdHlwb3MuCj4KPldoeT8gV2hhdCB3ZSBzZWUgZnJvbSB0aGUgZGlmZi4u
LgoKVGhpcyBwcm9wZXJ0eSBpcyB1c2VkIGluIGR0cywgc2VlIHZvcCBkdCBub2RlIGluIHJrMzU2
eC1iYXNlLmR0c2ksCmJ1dCBub3QgcmVxdWlyZWQgaW4gdGhlIGJpbmRpbmcuCgo+Cj5CZXN0IHJl
Z2FyZHMsCj5Lcnp5c3p0b2YK

