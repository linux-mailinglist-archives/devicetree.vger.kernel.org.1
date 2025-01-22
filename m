Return-Path: <devicetree+bounces-140224-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id BF78BA18EDC
	for <lists+devicetree@lfdr.de>; Wed, 22 Jan 2025 10:54:04 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 7922E7A48A9
	for <lists+devicetree@lfdr.de>; Wed, 22 Jan 2025 09:53:54 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 3D21B1F76B5;
	Wed, 22 Jan 2025 09:53:51 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=fail reason="signature verification failed" (1024-bit key) header.d=163.com header.i=@163.com header.b="T1R5vCYt"
X-Original-To: devicetree@vger.kernel.org
Received: from m16.mail.163.com (m16.mail.163.com [117.135.210.3])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E6039210F5B;
	Wed, 22 Jan 2025 09:53:47 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=117.135.210.3
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1737539631; cv=none; b=df6bDU4QCQqBkyMWbaMpaSjIazYL6fVtbhWmiWEPCVQEdLlJYvQYi+LF3yiOYTpd6/HblXzyZpYSNJSCszOE3NGE09M+HFtYqWIGlm9fXHqXK84ljHvN09SyV4jRqkDhebwRthTUrGxWyqOMVRv3kuzrqsAHMWjLw+h+Uv7ipnI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1737539631; c=relaxed/simple;
	bh=iggc30VO3vxn3I7iwTqbBB/8+RKuOaN34DS/e/thApU=;
	h=Date:From:To:Cc:Subject:In-Reply-To:References:Content-Type:
	 MIME-Version:Message-ID; b=j4BQb9pE6hwBCzMYR/alnqZdvmFPwL+7t+vG5oa9z8AevuYjVp5yg6H7s30fknC84/DCeyZyjz/rpbdmLR2Ba69fpiX1FZts9SgDU84isUPc2Ekrer1VeI2Zb39Lt22Y/jmMt7skzcl3BGVeWFleeFAAbYrbaopbx/9+vLJ++X8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=163.com; spf=pass smtp.mailfrom=163.com; dkim=fail (1024-bit key) header.d=163.com header.i=@163.com header.b=T1R5vCYt reason="signature verification failed"; arc=none smtp.client-ip=117.135.210.3
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=163.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=163.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=163.com;
	s=s110527; h=Date:From:Subject:Content-Type:MIME-Version:
	Message-ID; bh=PqQdaUqkdHlGiWWk3ENJJX61puJuMPc09OfIxsrMZEs=; b=T
	1R5vCYt57r1hKOy3PId1QVHcS8cS+SzuQWsYZr3M3wYG5nvSSrH4PJ3A0O7YUa8s
	ec3im7UzT3Yej69OE7rofptTY4lS6cc5Okd9LA8E+SCujnpa+PZVNI2wh9fUthX5
	2BvrXZpYKH96vyZqByoAXhRnLi+7dnX0pX99MDKUTg=
Received: from andyshrk$163.com ( [58.22.7.114] ) by
 ajax-webmail-wmsvr-40-141 (Coremail) ; Wed, 22 Jan 2025 17:52:48 +0800
 (CST)
Date: Wed, 22 Jan 2025 17:52:48 +0800 (CST)
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
In-Reply-To: <c6ee51bf-e264-44d6-8e22-f50a30848237@kernel.org>
References: <20250121103254.2528004-1-andyshrk@163.com>
 <20250121103446.2528212-1-andyshrk@163.com>
 <20250122-quaint-heavenly-herring-c92c32@krzk-bin>
 <6ccc6e2.6afc.1948d580c9c.Coremail.andyshrk@163.com>
 <c6ee51bf-e264-44d6-8e22-f50a30848237@kernel.org>
X-NTES-SC: AL_Qu2YBfmYtk0t7iWdZOkfmkcVgOw9UcO5v/Qk3oZXOJF8jCrr+CUnVkFMJFbsweeONhCLrheYTj1O48h1bZN6b5Mb/2NnfBECzszXPSE30hsDtA==
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset=UTF-8
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Message-ID: <7869aa80.6ec2.1948d6dc3ae.Coremail.andyshrk@163.com>
X-Coremail-Locale: zh_CN
X-CM-TRANSID:jSgvCgDH7_Pwv5Bng8pcAA--.18456W
X-CM-SenderInfo: 5dqg52xkunqiywtou0bp/1tbiqQPcXmeQtfaqlwAFsk
X-Coremail-Antispam: 1U5529EdanIXcx71UUUUU7vcSsGvfC2KfnxnUU==

CkhpCgpBdCAyMDI1LTAxLTIyIDE3OjQzOjM0LCAiS3J6eXN6dG9mIEtvemxvd3NraSIgPGtyemtA
a2VybmVsLm9yZz4gd3JvdGU6Cj5PbiAyMi8wMS8yMDI1IDEwOjI5LCBBbmR5IFlhbiB3cm90ZToK
Pj4gCj4+IEhpCj4+IEF0IDIwMjUtMDEtMjIgMTY6MDM6MDAsICJLcnp5c3p0b2YgS296bG93c2tp
IiA8a3J6a0BrZXJuZWwub3JnPiB3cm90ZToKPj4+IE9uIFR1ZSwgSmFuIDIxLCAyMDI1IGF0IDA2
OjM0OjQ0UE0gKzA4MDAsIEFuZHkgWWFuIHdyb3RlOgo+Pj4+IEZyb206IEFuZHkgWWFuIDxhbmR5
LnlhbkByb2NrLWNoaXBzLmNvbT4KPj4+Pgo+Pj4+IFByb3BlcnRpZSAicm9ja2NoaXAsZ3JmIiBp
cyByZXF1aXJlZCBmb3IgcmszNTY2LzguCj4+Pgo+Pj4gRml4IHR5cG9zLgo+Pj4KPj4+IFdoeT8g
V2hhdCB3ZSBzZWUgZnJvbSB0aGUgZGlmZi4uLgo+PiAKPj4gVGhpcyBwcm9wZXJ0eSBpcyB1c2Vk
IGluIGR0cywgc2VlIHZvcCBkdCBub2RlIGluIHJrMzU2eC1iYXNlLmR0c2ksCj4KPgo+VGhpcyBp
cyBub3QgdGhlIHJlYXNvbiB0byBtYWtlIGl0IGEgcmVxdWlyZWQgcHJvcGVydHkuCgpUaGUgQ2xv
Y2sgUG9sYXJpdHkgb2YgUkdCIHNpZ25hbCBvdXRwdXQgaXMgY29udHJvbGxlZCBieSBHUkYuCiAK
Pgo+QmVzdCByZWdhcmRzLAo+S3J6eXN6dG9mCg==

