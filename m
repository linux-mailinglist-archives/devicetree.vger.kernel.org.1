Return-Path: <devicetree+bounces-134313-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id E37639FD31B
	for <lists+devicetree@lfdr.de>; Fri, 27 Dec 2024 11:48:38 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 839341618A9
	for <lists+devicetree@lfdr.de>; Fri, 27 Dec 2024 10:48:36 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A3C4E1F190D;
	Fri, 27 Dec 2024 10:47:38 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=fail reason="signature verification failed" (1024-bit key) header.d=163.com header.i=@163.com header.b="SBF4//NB"
X-Original-To: devicetree@vger.kernel.org
Received: from m16.mail.163.com (m16.mail.163.com [220.197.31.2])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 7D0D61F1305;
	Fri, 27 Dec 2024 10:47:35 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=220.197.31.2
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1735296458; cv=none; b=cboMIcuEyDvLPFLhpSQUHU45ymE44etB4n8RCU7hqJutvC85f4XDbtnwL8EXaN26oR9o39MW9X44gsWDJNtB7GIRy3yL3tcmDy+qbtk/EJq7VPQ5A4DC2aQ46B+dLCjapXb9RkhXqSaijN2BtMl9ZFTufKpcPOENr82ojJ4ppY4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1735296458; c=relaxed/simple;
	bh=iHevsAM8EbFeow1k8+MH3QcELQyxnNUcwcmCQEVBRXo=;
	h=Date:From:To:Cc:Subject:In-Reply-To:References:Content-Type:
	 MIME-Version:Message-ID; b=g5XTxImzotpbj8EmOK8KhyR8vMlxv36YdD5lbgdLnV1AxZE8kcbhnir3sdvEY9x55Tivu4cwk7qShJwdGJ5Nsi+HVJtX+uXIvsvaMxQnC1VBLIBrGpIb2d5MTdzIRb9oMtfl3UfyaGi71fRG0qpUmF7uNBakSzWeCoXxC7XT6ko=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=163.com; spf=pass smtp.mailfrom=163.com; dkim=fail (1024-bit key) header.d=163.com header.i=@163.com header.b=SBF4//NB reason="signature verification failed"; arc=none smtp.client-ip=220.197.31.2
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=163.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=163.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=163.com;
	s=s110527; h=Date:From:Subject:Content-Type:MIME-Version:
	Message-ID; bh=YnthY4zZdSbrOKLUnSFJOycJreOsuayfzdspDnc2WqI=; b=S
	BF4//NBwO4oYyIcRbXZSVRPixCAyvfmBwfUOaZswjJwD7NxyhzpY7bndDmchh06i
	4ca0RAcu3+wApiMbqeKsORhhndBO1CAc3mFMysbPUE9uFMjP9BVsPL0bgBoMSsm0
	duLZBLKEfYgF+7XfMljlk3Ne78S7O+n5UYyfJnsi1s=
Received: from andyshrk$163.com ( [103.29.142.67] ) by
 ajax-webmail-wmsvr-40-130 (Coremail) ; Fri, 27 Dec 2024 18:46:32 +0800
 (CST)
Date: Fri, 27 Dec 2024 18:46:32 +0800 (CST)
From: "Andy Yan" <andyshrk@163.com>
To: "Krzysztof Kozlowski" <krzk@kernel.org>
Cc: heiko@sntech.de, cristian.ciocaltea@collabora.com, 
	detlev.casanova@collabora.com, krzk+dt@kernel.org, vkoul@kernel.org, 
	kishon@kernel.org, robh@kernel.org, sebastian.reichel@collabora.com, 
	linux-phy@lists.infradead.org, devicetree@vger.kernel.org, 
	linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org, 
	linux-rockchip@lists.infradead.org, 
	"Andy Yan" <andy.yan@rock-chips.com>
Subject: Re:Re: [PATCH] dt-bindings: phy: add rk3576 hdptx phy
X-Priority: 3
X-Mailer: Coremail Webmail Server Version XT5.0.14 build 20240801(9da12a7b)
 Copyright (c) 2002-2024 www.mailtech.cn 163com
In-Reply-To: <gkx4rmkwhngqsn5wotp3mdk6nn4oydrzgkfwhansd6j5ap5pek@rowfnww34rsd>
References: <20241224091919.267698-1-andyshrk@163.com>
 <gkx4rmkwhngqsn5wotp3mdk6nn4oydrzgkfwhansd6j5ap5pek@rowfnww34rsd>
X-NTES-SC: AL_Qu2YB/6SuUsi5CeQbOkfmkcVgOw9UcO5v/Qk3oZXOJF8jADoxjoPQEJSJELo/860NC+UmgmGTTRuyOZHZoV9TZwxc2Q0W5vhsxfDZXdaIOeosA==
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset=UTF-8
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Message-ID: <5de24299.9cde.19407b99e5c.Coremail.andyshrk@163.com>
X-Coremail-Locale: zh_CN
X-CM-TRANSID:gigvCgD3HyGJhW5n27FKAA--.24661W
X-CM-SenderInfo: 5dqg52xkunqiywtou0bp/1tbiqQ7CXmdufw6o2gACsz
X-Coremail-Antispam: 1U5529EdanIXcx71UUUUU7vcSsGvfC2KfnxnUU==

CkhpIEtyenlzenRvZiwKCkF0IDIwMjQtMTItMjcgMTY6NTU6MjcsICJLcnp5c3p0b2YgS296bG93
c2tpIiA8a3J6a0BrZXJuZWwub3JnPiB3cm90ZToKPk9uIFR1ZSwgRGVjIDI0LCAyMDI0IGF0IDA1
OjE5OjEzUE0gKzA4MDAsIEFuZHkgWWFuIHdyb3RlOgo+PiBGcm9tOiBBbmR5IFlhbiA8YW5keS55
YW5Acm9jay1jaGlwcy5jb20+Cj4+IAo+PiBUaGUgSERQVFggUEhZIG9uIHJrMzU3NiBpcyBjb21w
YXRpYmxlIHdpdGggaXQgb24KPj4gcmszNTg4Lgo+Cj5QbGVhc2Ugd3JhcCBjb21taXQgbWVzc2Fn
ZSBhY2NvcmRpbmcgdG8gTGludXggY29kaW5nIHN0eWxlIC8gc3VibWlzc2lvbgo+cHJvY2VzcyAo
bmVpdGhlciB0b28gZWFybHkgbm9yIG92ZXIgdGhlIGxpbWl0KToKPmh0dHBzOi8vZWxpeGlyLmJv
b3RsaW4uY29tL2xpbnV4L3Y2LjQtcmMxL3NvdXJjZS9Eb2N1bWVudGF0aW9uL3Byb2Nlc3Mvc3Vi
bWl0dGluZy1wYXRjaGVzLnJzdCNMNTk3Cj4KPj4gCj4+IEFkZCBjb21wYXRpYmxlIGZvciBpdC4K
Pgo+IkFkZCBjb21wYXRpYmxlIGZvciB0aGUgSERQVFggUEhZIG9uIHJrMzU3Niwgd2hpY2ggaXMg
ZnVsbHkgY29tcGF0aWJsZQo+d2l0aCBmb28gYmFyLiIKPgo+T25lIHNlbnRlbmNlLgoKV2lsbCBk
byBpbiBWMiwgdGhhbmtzLgoKPgo+PiAKPj4gU2lnbmVkLW9mZi1ieTogQW5keSBZYW4gPGFuZHku
eWFuQHJvY2stY2hpcHMuY29tPgo+PiAtLS0KPj4gCj4+ICAuLi4vZGV2aWNldHJlZS9iaW5kaW5n
cy9waHkvcm9ja2NoaXAscmszNTg4LWhkcHR4LXBoeS55YW1sIHwgNyArKysrKy0tCj4+ICAxIGZp
bGUgY2hhbmdlZCwgNSBpbnNlcnRpb25zKCspLCAyIGRlbGV0aW9ucygtKQo+PiAKPj4gZGlmZiAt
LWdpdCBhL0RvY3VtZW50YXRpb24vZGV2aWNldHJlZS9iaW5kaW5ncy9waHkvcm9ja2NoaXAscmsz
NTg4LWhkcHR4LXBoeS55YW1sIGIvRG9jdW1lbnRhdGlvbi9kZXZpY2V0cmVlL2JpbmRpbmdzL3Bo
eS9yb2NrY2hpcCxyazM1ODgtaGRwdHgtcGh5LnlhbWwKPj4gaW5kZXggODRmZTU5ZGJjZjQ4Li4z
NjRkYjIwNDljZTIgMTAwNjQ0Cj4+IC0tLSBhL0RvY3VtZW50YXRpb24vZGV2aWNldHJlZS9iaW5k
aW5ncy9waHkvcm9ja2NoaXAscmszNTg4LWhkcHR4LXBoeS55YW1sCj4+ICsrKyBiL0RvY3VtZW50
YXRpb24vZGV2aWNldHJlZS9iaW5kaW5ncy9waHkvcm9ja2NoaXAscmszNTg4LWhkcHR4LXBoeS55
YW1sCj4+IEBAIC0xMSw4ICsxMSwxMSBAQCBtYWludGFpbmVyczoKPj4gIAo+PiAgcHJvcGVydGll
czoKPj4gICAgY29tcGF0aWJsZToKPj4gLSAgICBlbnVtOgo+PiAtICAgICAgLSByb2NrY2hpcCxy
azM1ODgtaGRwdHgtcGh5Cj4+ICsgICAgb25lT2Y6Cj4+ICsgICAgICAtIGNvbnN0OiByb2NrY2hp
cCxyazM1ODgtaGRwdHgtcGh5Cj4+ICsgICAgICAtIGl0ZW1zOgo+Cj5XaHkgaXRlbXM/Cj4KPj4g
KyAgICAgICAgICAtIGVudW06Cj4KPldoeSBlbnVtPwo+Cj4+ICsgICAgICAgICAgICAgIC0gcm9j
a2NoaXAscmszNTc2LWhkcHR4LXBoeQo+Cj5TbyB0aGF0J3MganVzdCBlbnVtIHdpdGggcHJldmlv
dXMgZW50cnkuLi4gYnV0IHlvdSBzYWlkIGNvbXBhdGlibGUsIHlldAo+bm90aGluZyBpcyBoZXJl
LiBUZXN0IHlvdXIgcGF0Y2hlcyAtIERUUyB3aWxsIGZhaWwgb24gdGhpcy4gRHJpdmVyIGFzCj53
ZWxsIChhc3N1bWluZyB5b3UgZXhwcmVzc2VkIHByb3Blcmx5IGNvbXBhdGliaWxpdHkpLgoKSXMg
dGhpcyB0aGUgcmlnaHQgd2F5IHRvIHdyaXRlIGl0IO+8n++8mgoKcHJvcGVydGllczoKICAgY29t
cGF0aWJsZToKLSAgICBlbnVtOgotICAgICAgLSByb2NrY2hpcCxyazM1ODgtaGRwdHgtcGh5Cisg
ICAgb25lT2Y6CisgICAgICAtIGVudW06CisgICAgICAgICAgLSByb2NrY2hpcCxyazM1ODgtaGRw
dHgtcGh5CisgICAgICAtIGl0ZW1zOgorICAgICAgICAgIC0gZW51bToKKyAgICAgICAgICAgICAg
LSByb2NrY2hpcCxyazM1NzYtaGRwdHgtcGh5CisgICAgICAgICAgLSBjb25zdDogcm9ja2NoaXAs
cmszNTg4LWhkcHR4LXBoeQo+Cj5CZXN0IHJlZ2FyZHMsCj5Lcnp5c3p0b2YK

