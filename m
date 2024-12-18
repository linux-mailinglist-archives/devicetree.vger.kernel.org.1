Return-Path: <devicetree+bounces-132107-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id CDB539F5CF6
	for <lists+devicetree@lfdr.de>; Wed, 18 Dec 2024 03:44:36 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id A95FB18934D2
	for <lists+devicetree@lfdr.de>; Wed, 18 Dec 2024 02:44:37 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 9BED1136671;
	Wed, 18 Dec 2024 02:44:28 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=fail reason="signature verification failed" (1024-bit key) header.d=163.com header.i=@163.com header.b="S9xrTkgi"
X-Original-To: devicetree@vger.kernel.org
Received: from m16.mail.163.com (m16.mail.163.com [117.135.210.5])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 422AA1F5E6;
	Wed, 18 Dec 2024 02:44:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=117.135.210.5
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1734489868; cv=none; b=lTCtrz4XAPYS+rG716rw5FtdWdJL1XMbOciG+UYRoLaN/zuEffJmdDRb96K1sdJFIApaDvQYT0NzGAQCbBdsReELMN8bZSCmq19n2VbNqnyPBFTJtQhUTjw9Bp329UXVnUhjr9LrRDAL0VkpoZDBZMz3umNgQTLlNzHyxuXLqYk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1734489868; c=relaxed/simple;
	bh=WsrYFKbZ4N8gQwCDBx9WBVrQcgiTEUwEJ1DxW3BpOCk=;
	h=Date:From:To:Cc:Subject:In-Reply-To:References:Content-Type:
	 MIME-Version:Message-ID; b=Z3on/ZbDOL3/5+GNUpPz2InuVD7RR/Xz5SReUNXU1H5ZcsiiiwduqkLEornHOO4KG8HS9ORtQPXFkkB9WijBpQdx+JBrwiFpgR4BEeEzWpmChRL70+AVKm4BUeb/Kf0t54/Gs6WRy7BpdFSly3FzThartkQ73D53wgKBkp3kNvM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=163.com; spf=pass smtp.mailfrom=163.com; dkim=fail (1024-bit key) header.d=163.com header.i=@163.com header.b=S9xrTkgi reason="signature verification failed"; arc=none smtp.client-ip=117.135.210.5
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=163.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=163.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=163.com;
	s=s110527; h=Date:From:Subject:Content-Type:MIME-Version:
	Message-ID; bh=hoVhYUd31auI/gwtGlVEq7KR/rZWyHKKSgpDtl4YIj4=; b=S
	9xrTkgiCBWErWdnuJPGMV7hNOcfsJ16HVVD5iS60WWl0MV9n/ZgOfeVIkxuXRmCg
	vJuyUfw5fflXBTWgeye8KqlXQ5wvHaZ4Z+7PHiu3DVqZpl3C9dw6RHKnYCjyWHaP
	6Y8gBz4soY2PJGy+0KcUVfWL7UhYLmkMRC8rt0zKbc=
Received: from andyshrk$163.com ( [58.22.7.114] ) by
 ajax-webmail-wmsvr-40-123 (Coremail) ; Wed, 18 Dec 2024 10:42:36 +0800
 (CST)
Date: Wed, 18 Dec 2024 10:42:36 +0800 (CST)
From: "Andy Yan" <andyshrk@163.com>
To: "Daniel Stone" <daniel@fooishbar.org>
Cc: heiko@sntech.de, hjc@rock-chips.com, krzk+dt@kernel.org, 
	s.hauer@pengutronix.de, devicetree@vger.kernel.org, 
	dri-devel@lists.freedesktop.org, 
	linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org, 
	linux-rockchip@lists.infradead.org, derek.foreman@collabora.com, 
	detlev.casanova@collabora.com, "Andy Yan" <andy.yan@rock-chips.com>, 
	"Michael Riesch" <michael.riesch@wolfvision.net>, 
	"Sebastian Reichel" <sebastian.reichel@collabora.com>
Subject: Re:Re:Re: Re: [PATCH v6 08/16] drm/rockchip: vop2: Support 32x8
 superblock afbc
X-Priority: 3
X-Mailer: Coremail Webmail Server Version XT5.0.14 build 20240801(9da12a7b)
 Copyright (c) 2002-2024 www.mailtech.cn 163com
In-Reply-To: <32246002.9ef.193d7438b96.Coremail.andyshrk@163.com>
References: <20241214081719.3330518-1-andyshrk@163.com>
 <20241214081719.3330518-9-andyshrk@163.com>
 <CAPj87rOjqZdyht2y8MK7gVyk_eqEzk1Sy0DcxFtQRuhrHQ_oxA@mail.gmail.com>
 <165af58a.697.193d2100239.Coremail.andyshrk@163.com>
 <CAPj87rMfFXkbyh7UEJQw4JV1R18KLXC3GyF0CznrN1k3UdL0Lw@mail.gmail.com>
 <32246002.9ef.193d7438b96.Coremail.andyshrk@163.com>
X-NTES-SC: AL_Qu2YBviTtk8u4CmeZukZnEobh+Y5UcK2s/ki2YFXN5k0kSTd/Q0jbG5RIFzK/PmpCAemoQmKVD9t6cdjQpdIUb/LPfry4LKE85u9Fy2IABOc
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset=UTF-8
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Message-ID: <3cf0785a.2c2e.193d7a55527.Coremail.andyshrk@163.com>
X-Coremail-Locale: zh_CN
X-CM-TRANSID:eygvCgD334qdNmJngzRCAA--.22972W
X-CM-SenderInfo: 5dqg52xkunqiywtou0bp/1tbiMwO5XmdiMEOXkAACsk
X-Coremail-Antispam: 1U5529EdanIXcx71UUUUU7vcSsGvfC2KfnxnUU==

CkhpIERhbmllbCwKCkF0IDIwMjQtMTItMTggMDg6NTU6NDgsICJBbmR5IFlhbiIgPGFuZHlzaHJr
QDE2My5jb20+IHdyb3RlOgo+Cj5IaSAgRGFuaWVsLAo+Cj5BdCAyMDI0LTEyLTE3IDIwOjA3OjU0
LCAiRGFuaWVsIFN0b25lIiA8ZGFuaWVsQGZvb2lzaGJhci5vcmc+IHdyb3RlOgo+PkhpIEFuZHks
Cj4+Cj4+T24gVHVlLCAxNyBEZWMgMjAyNCBhdCAwMDo0MSwgQW5keSBZYW4gPGFuZHlzaHJrQDE2
My5jb20+IHdyb3RlOgo+Pj4gQXQgMjAyNC0xMi0xNiAyMTowNjowNywgIkRhbmllbCBTdG9uZSIg
PGRhbmllbEBmb29pc2hiYXIub3JnPiB3cm90ZToKPj4+ID5PbiBTYXQsIDE0IERlYyAyMDI0IGF0
IDA4OjE4LCBBbmR5IFlhbiA8YW5keXNocmtAMTYzLmNvbT4gd3JvdGU6Cj4+PiA+PiBUaGlzIGlz
IHRoZSBvbmx5IGFmYmMgZm9ybWF0IHN1cHBvcnRlZCBieSB0aGUgdXBjb21pbmcKPj4+ID4+IFZP
UCBmb3IgcmszNTc2Lgo+Pj4gPj4KPj4+ID4+IEFkZCBzdXBwb3J0IGZvciBpdC4KPj4+ID4KPj4+
ID5PdXQgb2YgaW50ZXJlc3QsIGhvdyB3YXMgdGhpcyB0ZXN0ZWQ/IFRoZXJlIGlzIG5vIDMyeDgg
bW9kaWZpZXIgaW4gdGhlCj4+PiA+Zm9ybWF0IGxpc3QgaW4gZm9ybWF0X21vZGlmaWVyc19hZmJj
W10sIHNvIGl0IHNlZW1zIGxpa2UgaXQgc2hvdWxkbid0Cj4+PiA+YmUgcG9zc2libGUgdG8gZ2V0
IGEgMzJ4OCBidWZmZXIgb24gYSBwbGFuZSBhdCBhbGwuCj4+Pgo+Pj4gVGhlIDMyeDggbW9kaWZp
ZXIgIGFkZGVkIGluIFBBVENIIDE2LzE2Ogo+Pj4KPj4+ICsvKiB1c2VkIGZyb20gcmszNTc2LCBh
ZmJjIDMyKjggaGFsZiBtb2RlICovCj4+PiArc3RhdGljIGNvbnN0IHVpbnQ2NF90IGZvcm1hdF9t
b2RpZmllcnNfcmszNTc2X2FmYmNbXSA9IHsKPj4+ICsgICAgICAgRFJNX0ZPUk1BVF9NT0RfQVJN
X0FGQkMoQUZCQ19GT1JNQVRfTU9EX0JMT0NLX1NJWkVfMzJ4OCB8Cj4+PiArICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgIEFGQkNfRk9STUFUX01PRF9TUExJVCksCj4+PiArCj4+Cj4+SG1t
bSwgdGhhdCdzIHN0cmFuZ2U7IEkgYXBwbGllZCB0aGUgd2hvbGUgc2VyaWVzIHdpdGggYjQgYnV0
IHdhc24ndAo+PnNlZWluZyB0aGF0IGJsb2NrIGRlZmluZWQuIE1heWJlIGEgYmFkIGNvbmZsaWN0
IHJlc29sdXRpb24uIFNvcnJ5IGZvcgo+PnRoZSBjb25mdXNpb24uCj4KPkkgdGhpbmsgdGhhdCBt
aWdodCBoYXZlIGJlZW4gY2F1c2VkIGJ5IG15IG1pc3Rha2UuIEkgaW5pdGlhbGx5IHNlbnQgdGhl
IFY2IHZlcnNpb24gYXMgYSAtaW4tcmVwbHkgdG8gdGhlIFY1IHZlcnNpb24uCj5XaGVuIEkgcmVh
bGl6ZWQgdGhlIG1pc3Rha2UsIGEgcGFydCBvZiBpdCBoYWQgYWxyZWFkeSBiZWVuIHNlbnQgb3V0
LiBUaGVuIEkgc2VudCB0aGUgZW50aXJlIFY2IHNlcmllcyBzZXBhcmF0ZWx5Cj5hZ2Fpbi4gTWF5
YmUgdGhhdCBtYWtlIGI0IGFuZCBsb3JlIGNvbmZ1c2Vk44CCCj4KPj4KPj4+IEkgd3JpdGUgYW4g
b3ZsdGVzdFswXSB0b29sIHdoaWNoIGNhbiB0YWtlIGxpbmVhci9BRkJDIHJnYi95dXYgZGF0YSBm
cm9tIGEgZmlsZSwgdGhlbgo+Pj4gY29tbWl0IHRvIGRybSBkcml2ZXIsIEkgdXNlIHRoaXMgdG9v
bCBmb3IgbW9zdCBiYXNpYyBmb3JtYXQgdGVzdC4KPj4+Cj4+PiBCdXQgd2hlbiB0ZXN0ZWQgb24g
d2VzdG9uLCBJIGZvdW5kIHRoYXQgd2VzdG9uIGRvZXMgbm90IHVzZSB0aGUgQUZCQyBmb3JtYXQg
Zm9yIGRpc3BsYXksCj4+PiBkb24ndCBrbm93IHdoeS4KPj4KPj5Zb3UnbGwgbmVlZCBhIE1lc2Eg
dHJlZSB3aXRoIGUwZjQ4NTY4YzdmMiBpbmNsdWRlZDsgaWYgeW91IGhhdmUgdGhpcwo+PnRoZW4g
aXQgc2hvdWxkIGp1c3Qgd29yayBvdXQgb2YgdGhlIGJveC4KPgo+VGhhbmtzLCBJIHdpbGwgY2hl
Y2sgaXQuCgpXaGVuIHVwZGF0ZSB0byBsYXN0ZWQgbWVzYTogR0wgdmVyc2lvbjogT3BlbkdMIEVT
IDMuMSBNZXNhIDI1LjAuMC1kZXZlbApJIGNhbiBnZXQgMzJ4OCBBRkJDIG91dHB1dCBpbiB3ZXN0
b24gZm9yIHJrMzU3NjoKCiMgY2F0IC9zeXMva2VybmVsL2RlYnVnL2RyaS8wL3ZvcDIvc3VtbWFy
eSAKVmlkZW8gUG9ydDA6IEFDVElWRQogICAgQ29ubmVjdG9yOiBIRE1JLUEtMQogICAgICAgIGJ1
c19mb3JtYXRbMF06IFVua25vd24KICAgICAgICBvdXRwdXRfbW9kZVtmXSBjb2xvcl9zcGFjZVsw
XQogICAgRGlzcGxheSBtb2RlOiAxOTIweDEwODBwNjAKICAgICAgICBjbGtbMTQ4NTAwXSByZWFs
X2Nsa1sxNDg1MDBdIHR5cGVbNDhdIGZsYWdbNV0KICAgICAgICBIOiAxOTIwIDIwMDggMjA1MiAy
MjAwCiAgICAgICAgVjogMTA4MCAxMDg0IDEwODkgMTEyNQogICAgQ2x1c3RlcjAtd2luMDogQUNU
SVZFCiAgICAgICAgd2luX2lkOiAwCiAgICAgICAgZm9ybWF0OiBYUjI0IGxpdHRsZS1lbmRpYW4g
KDB4MzQzMjUyNTgpW0FGQkNdIGdsYl9hbHBoYVsweGZmXQogICAgICAgIHJvdGF0ZTogeG1pcnJv
cjogMCB5bWlycm9yOiAwIHJvdGF0ZV85MDogMCByb3RhdGVfMjcwOiAwCiAgICAgICAgenBvczog
MAogICAgICAgIHNyYzogcG9zWzAsIDBdIHJlY3RbMTkyMCB4IDEwODBdCiAgICAgICAgZHN0OiBw
b3NbMCwgMF0gcmVjdFsxOTIwIHggMTA4MF0KICAgICAgICBidWZbMF06IGFkZHI6IDB4MDAwMDAw
MDAwMDgxYTAwMCBwaXRjaDogNzY4MCBvZmZzZXQ6IDAKICAgIENsdXN0ZXIxLXdpbjA6IEFDVElW
RQogICAgICAgIHdpbl9pZDogMQogICAgICAgIGZvcm1hdDogQVIyNCBsaXR0bGUtZW5kaWFuICgw
eDM0MzI1MjQxKVtBRkJDXSBnbGJfYWxwaGFbMHhmZl0KICAgICAgICByb3RhdGU6IHhtaXJyb3I6
IDAgeW1pcnJvcjogMCByb3RhdGVfOTA6IDAgcm90YXRlXzI3MDogMAogICAgICAgIHpwb3M6IDEK
ICAgICAgICBzcmM6IHBvc1swLCAwXSByZWN0WzI1MCB4IDI1MF0KICAgICAgICBkc3Q6IHBvc1s3
MzYsIDUwM10gcmVjdFsyNTAgeCAyNTBdCiAgICAgICAgYnVmWzBdOiBhZGRyOiAweDAwMDAwMDAw
MDEwYjYwMDAgcGl0Y2g6IDEwMjQgb2Zmc2V0OiAwCgozMDEgZnJhbWVzIGluIDUgc2Vjb25kczog
NjAuMjAwMDAxIGZwcwozMDIgZnJhbWVzIGluIDUgc2Vjb25kczogNjAuNDAwMDAyIGZwcwozMDAg
ZnJhbWVzIGluIDUgc2Vjb25kczogNjAuMDAwMDAwIGZwcwozMDEgZnJhbWVzIGluIDUgc2Vjb25k
czogNjAuMjAwMDAxIGZwcwo+Cj4+Cj4+Q2hlZXJzLAo+PkRhbmllbAo=

