Return-Path: <devicetree+bounces-140242-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 8C47CA18F82
	for <lists+devicetree@lfdr.de>; Wed, 22 Jan 2025 11:15:57 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 3901318817D9
	for <lists+devicetree@lfdr.de>; Wed, 22 Jan 2025 10:16:01 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id BA4E31E3784;
	Wed, 22 Jan 2025 10:15:52 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=fail reason="signature verification failed" (1024-bit key) header.d=163.com header.i=@163.com header.b="JTFgnUhm"
X-Original-To: devicetree@vger.kernel.org
Received: from m16.mail.163.com (m16.mail.163.com [220.197.31.4])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 888F2145FE0;
	Wed, 22 Jan 2025 10:15:49 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=220.197.31.4
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1737540952; cv=none; b=mKLkTI2PPqAB+6mwdArlGW2dxHEJ/Mn1gsmQFZF43ZBb+JVoGQ0R02oJaYryU4y4ZK4Zr36EinAmmMzyuA4H+il32wwyWE5FLryiv1Ept9Qi4v4tGIlNt7eFjXobuCKA2w/istWG2DM3NzzlJZEQKzW7GcvCB63ApcySWsyly9Q=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1737540952; c=relaxed/simple;
	bh=4DtGnFpzM8f43M0udRhNnwjvmNlde+mVhX6RbziV3+g=;
	h=Date:From:To:Cc:Subject:In-Reply-To:References:Content-Type:
	 MIME-Version:Message-ID; b=kzGN5X5l9zE1Sb9i1ca+YO/FxCccwxwWcFNbSQa2ZB/V4Lf4EynA51Q6u8eq1OJJXeGWHy7SnkTZPSJiZdOzyEerGoi3kSix4ZYbVymSiovGtzyyp71y7JPFsdxtwAzxcS0FSno1gq/+LWSpWmSVA7gJBzOfOydCSfNZq7IJfFU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=163.com; spf=pass smtp.mailfrom=163.com; dkim=fail (1024-bit key) header.d=163.com header.i=@163.com header.b=JTFgnUhm reason="signature verification failed"; arc=none smtp.client-ip=220.197.31.4
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=163.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=163.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=163.com;
	s=s110527; h=Date:From:Subject:Content-Type:MIME-Version:
	Message-ID; bh=X8Jqip2+EUnxTzwkbxgRzDjMVQmyTYWY55G8IQGsnqg=; b=J
	TFgnUhmPLhBtBzXJEpH/oTSefjxwCukLrU0bnmvK83Vru1gpCSVSzt2TC0c2VDzg
	+/e223PumNREJ/j8rtEIkmIYkwTSJYQJf5sOdZJcGC8J7JWD4YGlSh5KmO5MaUHa
	kt1nUKfRTXluNWH0tfzYCBZNfRtJfDEjqIxYA9fkaw=
Received: from andyshrk$163.com ( [58.22.7.114] ) by
 ajax-webmail-wmsvr-40-141 (Coremail) ; Wed, 22 Jan 2025 18:14:38 +0800
 (CST)
Date: Wed, 22 Jan 2025 18:14:38 +0800 (CST)
From: "Andy Yan" <andyshrk@163.com>
To: "Krzysztof Kozlowski" <krzk@kernel.org>
Cc: heiko@sntech.de, hjc@rock-chips.com, krzk+dt@kernel.org,
	devicetree@vger.kernel.org, dri-devel@lists.freedesktop.org,
	linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org,
	linux-rockchip@lists.infradead.org, derek.foreman@collabora.com,
	detlev.casanova@collabora.com, daniel@fooishbar.org, robh@kernel.org,
	sebastian.reichel@collabora.com,
	"Andy Yan" <andy.yan@rock-chips.com>
Subject: Re:Re: [PATCH v12 12/13] dt-bindings: display: vop2: Add rk3576
 support
X-Priority: 3
X-Mailer: Coremail Webmail Server Version XT5.0.14 build 20240801(9da12a7b)
 Copyright (c) 2002-2025 www.mailtech.cn 163com
In-Reply-To: <20250122-amber-moth-of-upgrade-fa8331@krzk-bin>
References: <20250121103254.2528004-1-andyshrk@163.com>
 <20250121103500.2528258-1-andyshrk@163.com>
 <20250122-amber-moth-of-upgrade-fa8331@krzk-bin>
X-NTES-SC: AL_Qu2YBfmfv0As7iibZekfmkcVgOw9UcO5v/Qk3oZXOJF8jCrr+CUnVkFMJFbsweeONhCLrheYTj1O48h1bZN6b5MbUXGMFwQ7SUeIEvUXSRjajA==
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset=UTF-8
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Message-ID: <76fe64e1.7132.1948d81c1f4.Coremail.andyshrk@163.com>
X-Coremail-Locale: zh_CN
X-CM-TRANSID:jSgvCgD33_kOxZBn3c1cAA--.18436W
X-CM-SenderInfo: 5dqg52xkunqiywtou0bp/xtbB0gHcXmeQv7FH9wACsa
X-Coremail-Antispam: 1U5529EdanIXcx71UUUUU7vcSsGvfC2KfnxnUU==

SGksIAoKQXQgMjAyNS0wMS0yMiAxNjowNDo1OSwgIktyenlzenRvZiBLb3psb3dza2kiIDxrcnpr
QGtlcm5lbC5vcmc+IHdyb3RlOgo+T24gVHVlLCBKYW4gMjEsIDIwMjUgYXQgMDY6MzQ6NTdQTSAr
MDgwMCwgQW5keSBZYW4gd3JvdGU6Cj4+IEZyb206IEFuZHkgWWFuIDxhbmR5LnlhbkByb2NrLWNo
aXBzLmNvbT4KPj4gCj4+IEFkZCB2b3AgZm91bmQgb24gcmszNTc2LCB0aGUgbWFpbiBkaWZmZXJl
bmNlIGJldHdlZW4gcmszNTc2IGFuZCB0aGUKPj4gcHJldmlvdXMgdm9wIGlzIHRoYXQgZWFjaCBW
UCBoYXMgaXRzIG93biBpbnRlcnJ1cHQgbGluZS4KPj4gCj4+IFNpZ25lZC1vZmYtYnk6IEFuZHkg
WWFuIDxhbmR5LnlhbkByb2NrLWNoaXBzLmNvbT4KPj4gCj4+IC0tLQo+PiAKPj4gQ2hhbmdlcyBp
biB2MTI6Cj4+IC0gU3BsaXQgZnJvbSBwYXRjaCAxMC8xMwo+Cj5PcmRlciB5b3VyIHBhdGNoZXMg
ZmluYWxseS4gSXQncyB2MTIgYW5kIHlvdSBzdGlsbCBzZW5kIGJpbmRpbmcgYWZ0ZXIKPnRoZSB1
c2VyLiBSZWFkIGNhcmVmdWxseSBzdWJtaXR0aW5nIGJpbmRpbmdzL3BhdGNoZXMuCgpXaGF0IGRv
IHlvdSBtZWFuIGJ5ICJzZW5kaW5nIGJpbmRpbmcgYWZ0ZXIgdXNlciIgaGVyZT8gCkkgdGhpbmsg
UEFUQ0ggMX45IGFyZSBmaXggYW5kIHByZXBhcmF0aW9ucywgUEFUQ0ggMTMoImRybS9yb2NrY2hp
cDogdm9wMjogQWRkIHN1cHBvcnQgZm9yIHJrMzU3NiIpCmlzIHRoZSB1c2VyIHRoYXQgdXNlcyB0
aGUgbmV3IGJpbmRpbmcuCgo+Cj4+IAo+PiBDaGFuZ2VzIGluIHYxMToKPj4gLSBSZW1vdmUgcmVk
dW5kYW50IG1pbi9tYXhJdGVtcyBjb25zdHJhaW50Cj4+IAo+PiBDaGFuZ2VzIGluIHYxMDoKPj4g
LSBNb3ZlIGludGVycnVwdC1uYW1lcyBiYWNrIHRvIHRvcCBsZXZlbAo+PiAtIEFkZCBjb25zdHJh
aW50IG9mIGludGVycnVwdHMgZm9yIGFsbCBwbGF0Zm9ybQo+PiAtIEFkZCBjb25zdHJhaW50IGZv
ciBhbGwgZ3JmIHBoYW5kbGVzCj4+IC0gUmVvcmRlciBzb21lIHByb3BlcnRpZXMKPj4gCj4+IENo
YW5nZXMgaW4gdjk6Cj4+IC0gRHJvcCAndm9wLScgcHJlZml4IG9mIGludGVycnVwdC1uYW1lcy4K
Pj4gLSBBZGQgYmxhbmsgbGluZSBiZXR3ZWVuIERUIHByb3BlcnRpZXMKPj4gLSBSZW1vdmUgbGlz
dCBpbnRlcnJ1cHQtbmFtZXMgaW4gdG9wIGxldmVsCj4+IAo+PiBDaGFuZ2VzIGluIHY4Ogo+PiAt
IEZpeCBkdF9iaW5kaW5nX2NoZWNrIGVycm9ycwo+PiAtIG9yZGVyZWQgYnkgc29jIG5hbWUKPj4g
LSBMaW5rIHRvIHRoZSBwcmV2aW91cyB2ZXJzaW9uOgo+PiAgIGh0dHBzOi8vbG9yZS5rZXJuZWwu
b3JnL2xpbnV4LXJvY2tjaGlwLzZwbjNxanhvdGR0cHp1Y3B1bDI0eXJvN3BwZGRlend1aXpuZW92
cXZtZ2R3eXYyajdwQHp0ZzRtcXlpcW1qZi9ULyN1Cj4+IAo+PiBDaGFuZ2VzIGluIHY0Ogo+PiAt
IGRlc2NyaWJlIGNvbnN0cmFpbnQgU09DIGJ5IFNPQywgYXMgaW50ZXJydXB0cyBvZiByazM1NzYg
aXMgdmVyeQo+PiAgIGRpZmZlcmVudCBmcm9tIG90aGVycwo+PiAtIERyb3AgS3J6eXN6dG9mJ3Mg
UmV2aWV3ZWQtYnksIGFzIHRoaXMgdmVyc2lvbiBjaGFuZ2VkIGEgbG90Lgo+PiAKPj4gQ2hhbmdl
cyBpbiB2MzoKPj4gLSBvcmRlcmVkIGJ5IHNvYyBuYW1lCj4+IC0gQWRkIGRlc2NyaXB0aW9uIGZv
ciBuZXdseSBhZGRlZCBpbnRlcnJ1cHQKPj4gCj4+IENoYW5nZXMgaW4gdjI6Cj4+IC0gQWRkIGR0
IGJpbmRpbmdzCj4+IAo+PiAgLi4uL2Rpc3BsYXkvcm9ja2NoaXAvcm9ja2NoaXAtdm9wMi55YW1s
ICAgICAgIHwgNTUgKysrKysrKysrKysrKysrKysrLQo+PiAgMSBmaWxlIGNoYW5nZWQsIDUyIGlu
c2VydGlvbnMoKyksIDMgZGVsZXRpb25zKC0pCj4+IAo+PiBkaWZmIC0tZ2l0IGEvRG9jdW1lbnRh
dGlvbi9kZXZpY2V0cmVlL2JpbmRpbmdzL2Rpc3BsYXkvcm9ja2NoaXAvcm9ja2NoaXAtdm9wMi55
YW1sIGIvRG9jdW1lbnRhdGlvbi9kZXZpY2V0cmVlL2JpbmRpbmdzL2Rpc3BsYXkvcm9ja2NoaXAv
cm9ja2NoaXAtdm9wMi55YW1sCj4+IGluZGV4IDE1N2EzN2VkODRkYS4uYTJhNjM2OWM3YjZmIDEw
MDY0NAo+PiAtLS0gYS9Eb2N1bWVudGF0aW9uL2RldmljZXRyZWUvYmluZGluZ3MvZGlzcGxheS9y
b2NrY2hpcC9yb2NrY2hpcC12b3AyLnlhbWwKPj4gKysrIGIvRG9jdW1lbnRhdGlvbi9kZXZpY2V0
cmVlL2JpbmRpbmdzL2Rpc3BsYXkvcm9ja2NoaXAvcm9ja2NoaXAtdm9wMi55YW1sCj4+IEBAIC0y
MSw2ICsyMSw3IEBAIHByb3BlcnRpZXM6Cj4+ICAgICAgZW51bToKPj4gICAgICAgIC0gcm9ja2No
aXAscmszNTY2LXZvcAo+PiAgICAgICAgLSByb2NrY2hpcCxyazM1Njgtdm9wCj4+ICsgICAgICAt
IHJvY2tjaGlwLHJrMzU3Ni12b3AKPj4gICAgICAgIC0gcm9ja2NoaXAscmszNTg4LXZvcAo+PiAg
Cj4+ICAgIHJlZzoKPj4gQEAgLTM4LDEwICszOSwyMSBAQCBwcm9wZXJ0aWVzOgo+PiAgICAgICAg
LSBjb25zdDogZ2FtbWEtbHV0Cj4+ICAKPj4gICAgaW50ZXJydXB0czoKPj4gLSAgICBtYXhJdGVt
czogMQo+PiArICAgIG1pbkl0ZW1zOiAxCj4+ICsgICAgbWF4SXRlbXM6IDQKPj4gICAgICBkZXNj
cmlwdGlvbjoKPj4gLSAgICAgIFRoZSBWT1AgaW50ZXJydXB0IGlzIHNoYXJlZCBieSBzZXZlcmFs
IGludGVycnVwdCBzb3VyY2VzLCBzdWNoIGFzCj4+IC0gICAgICBmcmFtZSBzdGFydCAoVlNZTkMp
LCBsaW5lIGZsYWcgYW5kIG90aGVyIHN0YXR1cyBpbnRlcnJ1cHRzLgo+PiArICAgICAgRm9yIFZP
UCB2ZXJzaW9uIHVuZGVyIHJrMzU3NiwgdGhlIGludGVycnVwdCBpcyBzaGFyZWQgYnkgc2V2ZXJh
bCBpbnRlcnJ1cHQKPj4gKyAgICAgIHNvdXJjZXMsIHN1Y2ggYXMgZnJhbWUgc3RhcnQgKFZTWU5D
KSwgbGluZSBmbGFnIGFuZCBvdGhlciBpbnRlcnJ1cHQgc3RhdHVzLgo+PiArICAgICAgRm9yIFZP
UCB2ZXJzaW9uIGZyb20gcmszNTc2IHRoZXJlIGlzIGEgc3lzdGVtIGludGVycnVwdCBmb3IgYnVz
IGVycm9yLCBhbmQKPj4gKyAgICAgIGV2ZXJ5IHZpZGVvIHBvcnQgaGFzIGl0J3MgaW5kZXBlbmRl
bnQgaW50ZXJydXB0cyBmb3IgdnN5bmMgYW5kIG90aGVyIHZpZGVvCj4+ICsgICAgICBwb3J0IHJl
bGF0ZWQgZXJyb3IgaW50ZXJydXB0cy4KPj4gKwo+PiArICBpbnRlcnJ1cHQtbmFtZXM6Cj4+ICsg
ICAgaXRlbXM6Cj4+ICsgICAgICAtIGNvbnN0OiBzeXMKPj4gKyAgICAgIC0gY29uc3Q6IHZwMAo+
PiArICAgICAgLSBjb25zdDogdnAxCj4+ICsgICAgICAtIGNvbnN0OiB2cDIKPj4gIAo+PiAgICAj
IFNlZSBjb21wYXRpYmxlLXNwZWNpZmljIGNvbnN0cmFpbnRzIGJlbG93Lgo+PiAgICBjbG9ja3M6
Cj4+IEBAIC0xMzUsNiArMTQ3LDggQEAgYWxsT2Y6Cj4+ICAgICAgICAgIGludGVycnVwdHM6Cj4+
ICAgICAgICAgICAgbWF4SXRlbXM6IDEKPgo+U28gdGhpcyBjaGFuZ2UgbW92ZXMgdG8gdGhpcyBw
YXRjaC4KPgo+PiAgCj4+ICsgICAgICAgIGludGVycnVwdC1uYW1lczogZmFsc2UKPj4gKwo+PiAg
ICAgICAgICBwb3J0czoKPj4gICAgICAgICAgICByZXF1aXJlZDoKPj4gICAgICAgICAgICAgIC0g
cG9ydEAwCj4+IEBAIC0xNDgsNiArMTYyLDM5IEBAIGFsbE9mOgo+PiAgICAgICAgcmVxdWlyZWQ6
Cj4+ICAgICAgICAgIC0gcm9ja2NoaXAsZ3JmCj4+ICAKPj4gKyAgLSBpZjoKPj4gKyAgICAgIHBy
b3BlcnRpZXM6Cj4+ICsgICAgICAgIGNvbXBhdGlibGU6Cj4+ICsgICAgICAgICAgY29udGFpbnM6
Cj4+ICsgICAgICAgICAgICBlbnVtOgo+PiArICAgICAgICAgICAgICAtIHJvY2tjaGlwLHJrMzU3
Ni12b3AKPj4gKyAgICB0aGVuOgo+PiArICAgICAgcHJvcGVydGllczoKPj4gKyAgICAgICAgY2xv
Y2tzOgo+PiArICAgICAgICAgIG1pbkl0ZW1zOiA1Cj4KPk5vLiBZb3UgZGlkIG5vdCBpbXBsZW1l
bnQgbXkgY29tbWVudCBhdCBhbGwuCj4KPlNvIGFnYWluOgo+IldoeSBtaW5JdGVtcz8gTm90aGlu
ZyBpbiB0aGlzIHBhdGNoIG1ha2VzIHNlbnNlIGZvciBtZS4gTmVpdGhlciBjaGFuZ2luZwo+ZXhp
c3RpbmcgYmluZGluZyBub3IgbmV3IGJpbmRpbmcgZm9yIHJrMzU3Ni4iCj4KPlRvIGFkZHJlc3Mg
c3VjaCBjb21tZW50LCBjb21lIHdpdGggcmVhc29uYWJsZSBhbnN3ZXIgdG8gIndoeSIuIE5vdCBq
dXN0Cj5zZW5kIHRoZSBzYW1lLiBJdCdzIGEgd2FzdGUgb2YgbXkgdGltZSB0byBrZWVwIHJldmll
d2luZyB0aGUgc2FtZS4KPgo+QmVzdCByZWdhcmRzLAo+S3J6eXN6dG9mCj4K

