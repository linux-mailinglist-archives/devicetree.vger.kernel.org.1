Return-Path: <devicetree+bounces-154833-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 75CFAA54A7C
	for <lists+devicetree@lfdr.de>; Thu,  6 Mar 2025 13:16:29 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 97B903A9EB6
	for <lists+devicetree@lfdr.de>; Thu,  6 Mar 2025 12:16:17 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 511D31FC7F7;
	Thu,  6 Mar 2025 12:16:26 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=fail reason="signature verification failed" (1024-bit key) header.d=163.com header.i=@163.com header.b="Ib/W0itk"
X-Original-To: devicetree@vger.kernel.org
Received: from m16.mail.163.com (m16.mail.163.com [117.135.210.4])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 3D7BC1853;
	Thu,  6 Mar 2025 12:16:21 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=117.135.210.4
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1741263386; cv=none; b=acJuIWlds6gvFrMGatoQ7/HB9MtjhqErvZ7jt81cUUOxpqWaqQ5z0IHqhADJayhxkMhDfvV9MIHfGK7VFskLAsHyN3pZ66M1dBHTRKx/Y/EXM6KSXHKVzvGkzHeY5I6IFK34Z7Sr0cYsvpIvUz+a5fkXo5e7sMeBH3zbNK2rdkw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1741263386; c=relaxed/simple;
	bh=A2zfdgMUkxO8L1qhAq30IAwBEzW4E3uSM2T9g2MC/Uw=;
	h=Date:From:To:Cc:Subject:In-Reply-To:References:Content-Type:
	 MIME-Version:Message-ID; b=MtcYKUY5Rzm2V2DXW+12Krzigun6H9YLS1cQOqK3LbfH0OpG6LRcbNI7dq4lJvblEoowjhhN8Zh0Otw65uiVfm05vVMc32TLUNeA70EcflA3vSj6ANYpZrvF8fgN4loody1HxRPqOSjQgXn+xsk/ckIGC/STITiFLh6p++Ls6nY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=163.com; spf=pass smtp.mailfrom=163.com; dkim=fail (1024-bit key) header.d=163.com header.i=@163.com header.b=Ib/W0itk reason="signature verification failed"; arc=none smtp.client-ip=117.135.210.4
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=163.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=163.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=163.com;
	s=s110527; h=Date:From:Subject:Content-Type:MIME-Version:
	Message-ID; bh=ZT8W8O2GpG3FuArzjRc+5izCLu3sUSwue06QcXfT6EA=; b=I
	b/W0itkwCv47Xspajq5+SUGkC0geyqCbKQ5PtBUDYOC7vAmogaDYTk0rGEjPyQGL
	Lf5LppPSwTJOqrxIMjRl2r9ziJpErCMdP/zftIVBb+mMhoFE9FL8m/N5099W66YR
	7uAGxV4zNOsbLLUBkATuvI0LJyz0u2SmtMSS2HdMsE=
Received: from andyshrk$163.com ( [103.29.142.67] ) by
 ajax-webmail-wmsvr-40-114 (Coremail) ; Thu, 6 Mar 2025 20:15:13 +0800 (CST)
Date: Thu, 6 Mar 2025 20:15:13 +0800 (CST)
From: "Andy Yan" <andyshrk@163.com>
To: "Piotr Oniszczuk" <piotr.oniszczuk@gmail.com>
Cc: heiko@sntech.de, neil.armstrong@linaro.org,
	sebastian.reichel@collabora.com, devicetree@vger.kernel.org,
	hjc@rock-chips.com, mripard@kernel.org, linux-kernel@vger.kernel.org,
	linux-rockchip@lists.infradead.org, yubing.zhang@rock-chips.com,
	dri-devel@lists.freedesktop.org,
	"Andy Yan" <andy.yan@rock-chips.com>, krzk+dt@kernel.org,
	robh@kernel.org, linux-arm-kernel@lists.infradead.org
Subject: Re:Re: [PATCH 0/6] Add support for RK3588 DisplayPort Controller
X-Priority: 3
X-Mailer: Coremail Webmail Server Version XT5.0.14 build 20240801(9da12a7b)
 Copyright (c) 2002-2025 www.mailtech.cn 163com
In-Reply-To: <1573D5D6-AFED-4D92-8112-B0C6BB52D5FF@gmail.com>
References: <25401bfa.291d.19564244e54.Coremail.andyshrk@163.com>
 <75189787-28E1-4FC2-8E10-4960B3877A6F@gmail.com>
 <28b0d3fc.bb3.19568f6b5f8.Coremail.andyshrk@163.com>
 <44213B17-FE14-4FB8-8319-1E31BBF6EAA0@gmail.com>
 <74c154b6.8c50.1956aa8c8d2.Coremail.andyshrk@163.com>
 <1573D5D6-AFED-4D92-8112-B0C6BB52D5FF@gmail.com>
X-NTES-SC: AL_Qu2fA/6dvEsq5SiZZOkfmkcVgOw9UcO5v/Qk3oZXOJF8jDvp6zIxdG1jMkbm3ueENxqyjTi3chhO99R2eY5ddJAgq5n513r+UzHPqjSjYasCiQ==
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset=UTF-8
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Message-ID: <46c0d239.a4f5.1956b619b97.Coremail.andyshrk@163.com>
X-Coremail-Locale: zh_CN
X-CM-TRANSID:cigvCgCnTgvRkclnDvx3AA--.57925W
X-CM-SenderInfo: 5dqg52xkunqiywtou0bp/xtbBkA8IXmfJi6d62gACsp
X-Coremail-Antispam: 1U5529EdanIXcx71UUUUU7vcSsGvfC2KfnxnUU==

SGkgUGlvdHIsCgrlnKggMjAyNS0wMy0wNiAxOTo0NzozMe+8jCJQaW90ciBPbmlzemN6dWsiIDxw
aW90ci5vbmlzemN6dWtAZ21haWwuY29tPiDlhpnpgZPvvJoKPgo+PiBXaWFkb21vxZvEhyBuYXBp
c2FuYSBwcnpleiBBbmR5IFlhbiA8YW5keXNocmtAMTYzLmNvbT4gdyBkbml1IDYgbWFyIDIwMjUs
IG8gZ29kei4gMDk6NTM6Cj4+IAo+PiAKPj4gSGksCj4+IAo+PiDlnKggMjAyNS0wMy0wNiAxNjo0
MjowMO+8jCJQaW90ciBPbmlzemN6dWsiIDxwaW90ci5vbmlzemN6dWtAZ21haWwuY29tPiDlhpnp
gZPvvJoKPj4+IAo+Pj4gCj4+Pj4gV2lhZG9tb8WbxIcgbmFwaXNhbmEgcHJ6ZXogQW5keSBZYW4g
PGFuZHlzaHJrQDE2My5jb20+IHcgZG5pdSA2IG1hciAyMDI1LCBvIGdvZHouIDAxOjU5Ogo+Pj4+
IAo+Pj4+IAo+Pj4+IAo+Pj4+IAo+Pj4+IEJvdGggb2YgdGhlIHR3byBjb25maWcgb3B0aW9ucyBz
aG91bGQgYmUgZW5hYmxlZC4KPj4+PiBhbmR5QFBybzQ4MDp+L1dvcmtTcGFjZS9saW51eC1uZXh0
JCByZyBEV19EUCAuY29uZmlnCj4+Pj4gNDA0NDpDT05GSUdfUk9DS0NISVBfRFdfRFA9eQo+Pj4g
Cj4+PiBoZXJlIGnigJltIGEgYml0IGxvc3TigKYuCj4+PiBncmVwaW5nIG9uIGZ1bGwga2VybmVs
IHNvdXJjZXMgKHdpdGggYXBwbGllZCBodHRwczovL3BhdGNod29yay5rZXJuZWwub3JnL3Byb2pl
Y3QvbGludXgtcm9ja2NoaXAvbGlzdC8/c2VyaWVzPTkzNjc4NCkgZ2l2ZXMgbWUgbm8gc2luZ2xl
IGFwcGVhcmFuY2Ugb2YgUk9DS0NISVBfRFdfRFDigKYKPj4+IERvIGkgbWlzcyBzb21ldGhpbmc/
Cj4+IAo+PiBzZWUgUEFUQ0ggMy82OiAgIAo+PiAKPj4gCj4+IGRpZmYgLS1naXQgYS9kcml2ZXJz
L2dwdS9kcm0vcm9ja2NoaXAvS2NvbmZpZyBiL2RyaXZlcnMvZ3B1L2RybS9yb2NrY2hpcC9LY29u
ZmlnCj4+IGluZGV4IDI2YzQ0MTBiMjQwNy4uYzg2MzhiYWY5NjQxIDEwMDY0NAo+PiAtLS0gYS9k
cml2ZXJzL2dwdS9kcm0vcm9ja2NoaXAvS2NvbmZpZwo+PiArKysgYi9kcml2ZXJzL2dwdS9kcm0v
cm9ja2NoaXAvS2NvbmZpZwo+PiBAQCAtOCw2ICs4LDcgQEAgY29uZmlnIERSTV9ST0NLQ0hJUAo+
PiBzZWxlY3QgRFJNX1BBTkVMCj4+IHNlbGVjdCBWSURFT01PREVfSEVMUEVSUwo+PiBzZWxlY3Qg
RFJNX0FOQUxPR0lYX0RQIGlmIFJPQ0tDSElQX0FOQUxPR0lYX0RQCj4+ICsgc2VsZWN0IERSTV9E
V19EUCBpZiBST0NLQ0hJUF9EV19EUAo+PiBzZWxlY3QgRFJNX0RXX0hETUkgaWYgUk9DS0NISVBf
RFdfSERNSQo+PiBzZWxlY3QgRFJNX0RXX0hETUlfUVAgaWYgUk9DS0NISVBfRFdfSERNSV9RUAo+
PiBzZWxlY3QgRFJNX0RXX01JUElfRFNJIGlmIFJPQ0tDSElQX0RXX01JUElfRFNJCj4+IEBAIC01
OCw2ICs1OSwxMiBAQCBjb25maWcgUk9DS0NISVBfQ0ROX0RQCj4+ICBSSzMzOTkgYmFzZWQgU29D
LCB5b3Ugc2hvdWxkIHNlbGVjdCB0aGlzCj4+ICBvcHRpb24uCj4+IAo+PiArY29uZmlnIFJPQ0tD
SElQX0RXX0RQCj4+ICsgYm9vbCAiUm9ja2NoaXAgc3BlY2lmaWMgZXh0ZW5zaW9ucyBmb3IgU3lu
b3BzeXMgRFcgRFAiCj4+ICsgaGVscAo+PiArICBDaG9vc2UgdGhpcyBvcHRpb24gZm9yIFN5bm9w
c3lzIERlc2lnbldhcmUgQ29yZXMgRGlzcGxheVBvcnQKPj4gKyAgdHJhbnNtaXQgY29udHJvbGxl
ciBzdXBwb3J0IG9uIFJvY2tjaGlwIFNvQy4KPj4gCj4+IGh0dHBzOi8vbG9yZS5rZXJuZWwub3Jn
L2xpbnV4LXJvY2tjaGlwLzA0N0VFQ0ZDLTdFNTUtNDRFQy04OTZGLTEzRkUwNDMzM0U0REBnbWFp
bC5jb20vVC8jbTE3OGEzMjVlYTBlYmM2NDE4N2FhZTQ3NGQ3N2MzZjdhOWUwYmM5M2QKPj4+IAo+
Cj4KPkFoIG15IGJhZCEKPk9uZSBwYXRjaCBwYXRjaCB3YXMgY29tbWVudGVkIC0gc28gbm90IGFs
bCBkcCBjb2RlIHdhcyBhcHBsaWVkLgo+Cj5Ob3cgaXQgaXMgbXVjaCBiZXR0ZXI6Cj4KPnJvb3RA
bXl0aC1mcm9udGVuZC01NmIwZjAxOGI1ZTA6fiAjIGRtZXNnIHwgZ3JlcCBkcm0KPlsgICAgOS43
OTUzODBdIHBhbnRob3IgZmIwMDAwMDAuZ3B1OiBbZHJtXSBjbG9jayByYXRlID0gMTk4MDAwMDAw
Cj5bICAgIDkuNzk2MjU3XSBwYW50aG9yIGZiMDAwMDAwLmdwdTogW2RybV0gbWFsaS1nNjEwIGlk
IDB4YTg2NyBtYWpvciAweDAgbWlub3IgMHgwIHN0YXR1cyAweDUKPlsgICAgOS43OTYyNjJdIHBh
bnRob3IgZmIwMDAwMDAuZ3B1OiBbZHJtXSBGZWF0dXJlczogTDI6MHg3MTIwMzA2IFRpbGVyOjB4
ODA5IE1lbToweDMwMSBNTVU6MHgyODMwIEFTOjB4ZmYKPlsgICAgOS43OTYyNjVdIHBhbnRob3Ig
ZmIwMDAwMDAuZ3B1OiBbZHJtXSBzaGFkZXJfcHJlc2VudD0weDUwMDA1IGwyX3ByZXNlbnQ9MHgx
IHRpbGVyX3ByZXNlbnQ9MHgxCj5bICAgIDkuODUxODY5XSBwYW50aG9yIGZiMDAwMDAwLmdwdTog
W2RybV0gRmlybXdhcmUgcHJvdGVjdGVkIG1vZGUgZW50cnkgbm90IGJlIHN1cHBvcnRlZCwgaWdu
b3JpbmcKPlsgICAgOS44NTE5MjFdIHBhbnRob3IgZmIwMDAwMDAuZ3B1OiBbZHJtXSBGaXJtd2Fy
ZSBnaXQgc2hhOiA4MTRiNDdiNTUxMTU5MDY3YjY3YTM3YzRlOWFkZGE0NThhZDlkODUyCj5bICAg
IDkuODUyMTI3XSBwYW50aG9yIGZiMDAwMDAwLmdwdTogW2RybV0gQ1NGIEZXIHVzaW5nIGludGVy
ZmFjZSB2MS4xLjAsIEZlYXR1cmVzIDB4MCBJbnN0cnVtZW50YXRpb24gZmVhdHVyZXMgMHg3MQo+
WyAgICA5Ljg1MjQzNl0gW2RybV0gSW5pdGlhbGl6ZWQgcGFudGhvciAxLjMuMCBmb3IgZmIwMDAw
MDAuZ3B1IG9uIG1pbm9yIDAKPlsgICAxMC4wMDMxMDhdIHJvY2tjaGlwLWRybSBkaXNwbGF5LXN1
YnN5c3RlbTogYm91bmQgZmRkOTAwMDAudm9wIChvcHMgdm9wMl9jb21wb25lbnRfb3BzKQo+WyAg
IDEwLjAwNDcwNV0gcm9ja2NoaXAtZHJtIGRpc3BsYXktc3Vic3lzdGVtOiBib3VuZCBmZGU2MDAw
MC5kcCAob3BzIGR3X2RwX3JvY2tjaGlwX2NvbXBvbmVudF9vcHMpCj5bICAgMTAuMDA2MDg1XSBy
b2NrY2hpcC1kcm0gZGlzcGxheS1zdWJzeXN0ZW06IGJvdW5kIGZkZWEwMDAwLmhkbWkgKG9wcyBk
d19oZG1pX3FwX3JvY2tjaGlwX29wcykKPlsgICAxMC4wMDY2NzldIFtkcm1dIEluaXRpYWxpemVk
IHJvY2tjaGlwIDEuMC4wIGZvciBkaXNwbGF5LXN1YnN5c3RlbSBvbiBtaW5vciAxCj5bICAgMTAu
MDA2NzM3XSByb2NrY2hpcC1kcm0gZGlzcGxheS1zdWJzeXN0ZW06IFtkcm1dIENhbm5vdCBmaW5k
IGFueSBjcnRjIG9yIHNpemVzCj5bICAgMTAuMDA3NjYzXSByb2NrY2hpcC1kcm0gZGlzcGxheS1z
dWJzeXN0ZW06IFtkcm1dIENhbm5vdCBmaW5kIGFueSBjcnRjIG9yIHNpemVzCj4KPlVuZm9ydHVu
YXRlbHkgc3RpbGwgbm90aGluZyBvbiBzY3JlZW4KPgo+ZHJpIHN0YXRlOiBodHRwczovL2dpc3Qu
Z2l0aHViLmNvbS93YXJwbWUvNWU5NzFkZmQyZTlmZDUyZmFlNzY2NDE4MzFjZWJlNDYKPgo+YW5k
IGtlcm5lbCBkbWVzZyBodHRwczovL3Rlcm1iaW4uY29tL3IwbTMKPgo+aeKAmW0gbm90IHN1cmUg
d2hhdCBpcyBtaXNzaW5nIChzb21lIGR0cyBlbmFibGVtZW50IG9y4oCmLikKCkZyb20geW91ciBk
dHMsICBJIGZpbmQgeW91IHVzZSBncGlvIGZvciBocGQsIEknbSBub3Qgc3VyZSBob3cgdG8gaGFu
ZGxlIGl0ICB3aXRoIHVwc3RyZWFtICBjb2RlIG5vdy4KCgomZHAxIHsKCXN0YXR1cyA9ICJva2F5
IjsKCXBpbmN0cmwtbmFtZXMgPSAiZGVmYXVsdCI7CglwaW5jdHJsLTAgPSA8JmRwMV9ocGQ+OwoJ
aHBkLWdwaW9zID0gPCZncGlvMyBSS19QRDUgR1BJT19BQ1RJVkVfSElHSD47Cn07CgpJIHN1Z2dl
c3QgYSBjaGFuZ2UgbGlrZSB0aGlzOgoKJmRwMSB7CglzdGF0dXMgPSAib2theSI7CglwaW5jdHJs
LW5hbWVzID0gImRlZmF1bHQiOwogICAgICAgIHBpbmN0cmwtMCA9IDwmZHAxbTBfcGlucz47Cgp9
OwoKQW5kIGFsc28gcmVtb3ZlIGRwMV9ocGQgcGluY3RybCBpbiB5b3VyIGR0cy4KClRoZW4gd2hl
biB5b3UgRFAgY2FibGUgcGx1Z2luLCB5b3UgY2FuIHJ1biBjb21tYW5kIGFzIGJlbGxvdyB0byBz
ZWUgaWYgdGhlIGRyaXZlciBkZXRlY3RzIHRoZSBIUEQ6CgojIGNhdCAvc3lzL2NsYXNzL2RybS9j
YXJkMC1EUC0xL3N0YXR1cyAKY29ubmVjdGVkCiMgCgoKCgoKPiAgCj4KPgo+Cj4KPgo=

