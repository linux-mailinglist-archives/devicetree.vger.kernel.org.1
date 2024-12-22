Return-Path: <devicetree+bounces-133315-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 93D029FA46D
	for <lists+devicetree@lfdr.de>; Sun, 22 Dec 2024 07:56:32 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 07DF0161CBE
	for <lists+devicetree@lfdr.de>; Sun, 22 Dec 2024 06:56:30 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 7DECA1552E3;
	Sun, 22 Dec 2024 06:56:26 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=fail reason="signature verification failed" (1024-bit key) header.d=163.com header.i=@163.com header.b="By4kbP06"
X-Original-To: devicetree@vger.kernel.org
Received: from m16.mail.163.com (m16.mail.163.com [220.197.31.5])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 487562F26;
	Sun, 22 Dec 2024 06:56:21 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=220.197.31.5
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1734850586; cv=none; b=uTy0GlstzGHFBZ+IMaqKxJbCvmmnlOKkjd8nx5ZeUl3spiXVqYLOWfWr+ke+Fn+UK/tgJ6b6FKlDC9syM6IcEmNBgHirLKcJRkpYAiCoAlA6qlGt3ikPQQjeGpbRMqqk4JZXjGzEjSd2farfp8UEAxjMgoTYq0WxDJZHedjHOg0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1734850586; c=relaxed/simple;
	bh=ompl6/K2meAS/eUbiMbr0hfHQHeRh2D2IiRt/Iqs+7Q=;
	h=Date:From:To:Cc:Subject:In-Reply-To:References:Content-Type:
	 MIME-Version:Message-ID; b=heSyZPTpjYhO7pleajTi158tzfrZPTrXkgvq6EPT/DIxHgtd4/m2+qNTLAYXAcBV70iuNGF/yOtX3fVOcWVV8FXSdtdsZmLC4BTmpn6+54EHHoWv0EJcmo2BTWrvYWwCS+7oTJdS0sKpWqI6RtSq5UHySFzijrH/AUmtoSew1iQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=163.com; spf=pass smtp.mailfrom=163.com; dkim=fail (1024-bit key) header.d=163.com header.i=@163.com header.b=By4kbP06 reason="signature verification failed"; arc=none smtp.client-ip=220.197.31.5
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=163.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=163.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=163.com;
	s=s110527; h=Date:From:Subject:Content-Type:MIME-Version:
	Message-ID; bh=JPam1UosXoRANgd65uJafytqpORJCez2pxTKbdxqKjA=; b=B
	y4kbP06lFH4wziQ2BzZgVe/OXIbTQU8mTg6Pea9Be3sOHZJcn0eqa6d/835tu6U4
	LPLrMBbMmQ4dTQ6Ndnqze/akPqTcsgAIQSOrWOOCx69YnlQ+FVq5zCEsC/LqIxeu
	PTsKTCsyVSii39uIrGw5SpEOalJUGBB8Zbw4ZVsNp8=
Received: from andyshrk$163.com ( [58.22.7.114] ) by
 ajax-webmail-wmsvr-40-138 (Coremail) ; Sun, 22 Dec 2024 14:55:09 +0800
 (CST)
Date: Sun, 22 Dec 2024 14:55:09 +0800 (CST)
From: "Andy Yan" <andyshrk@163.com>
To: =?UTF-8?Q?Heiko_St=C3=BCbner?= <heiko@sntech.de>
Cc: dsimic@manjaro.org, devicetree@vger.kernel.org, 
	linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org, 
	linux-rockchip@lists.infradead.org, krzk+dt@kernel.org, 
	"Andy Yan" <andy.yan@rock-chips.com>
Subject: Re:Re: [PATCH] arm64: dts: rockchip: aliase sdhci as mmc0 for
 rk3566 box demo
X-Priority: 3
X-Mailer: Coremail Webmail Server Version XT5.0.14 build 20240801(9da12a7b)
 Copyright (c) 2002-2024 www.mailtech.cn 163com
In-Reply-To: <24438615.ouqheUzb2q@diego>
References: <20241221104920.4193034-1-andyshrk@163.com>
 <24438615.ouqheUzb2q@diego>
X-NTES-SC: AL_Qu2YBvSev00r7yCdZ+lS0zJw2L5KLrXQ55RVgP4ISMMety/k0AwKZFNTPmLdzeSuBBU8bSamSy4cOyxnpFvN
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset=UTF-8
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Message-ID: <19b62068.1082.193ed25f901.Coremail.andyshrk@163.com>
X-Coremail-Locale: zh_CN
X-CM-TRANSID:iigvCgD3f8_Nt2dnJY1FAA--.19992W
X-CM-SenderInfo: 5dqg52xkunqiywtou0bp/xtbB0g69XmdnqqGdTwAEsi
X-Coremail-Antispam: 1U5529EdanIXcx71UUUUU7vcSsGvfC2KfnxnUU==

CkhpIEhlaWtv77yMCkF0IDIwMjQtMTItMjEgMjA6NTU6MDIsICJIZWlrbyBTdMO8Ym5lciIgPGhl
aWtvQHNudGVjaC5kZT4gd3JvdGU6Cj5IaSBBbmR5LAo+Cj5BbSBTYW1zdGFnLCAyMS4gRGV6ZW1i
ZXIgMjAyNCwgMTE6NDk6MDcgQ0VUIHNjaHJpZWIgQW5keSBZYW46Cj4+IEZyb206IEFuZHkgWWFu
IDxhbmR5LnlhbkByb2NrLWNoaXBzLmNvbT4KPj4gCj4+IEZvbGxvdyBtb3N0IG90aGVycyByazM1
NnggYmFzZWQgYm9hcmRzLCBhbmQgdS1ib290IG9ubHkgdXNlIG1tYzAvMQo+PiBhcyBtbWMgYm9v
dCB0YXJnZXRzLCBzbyBhbGlhc2Ugc2RoY2kgYXMgbW1jMC4KPj4gCj4+IFNpZ25lZC1vZmYtYnk6
IEFuZHkgWWFuIDxhbmR5LnlhbkByb2NrLWNoaXBzLmNvbT4KPj4gLS0tCj4+IAo+PiAgYXJjaC9h
cm02NC9ib290L2R0cy9yb2NrY2hpcC9yazM1NjYtYm94LWRlbW8uZHRzIHwgNiArKystLS0KPj4g
IDEgZmlsZSBjaGFuZ2VkLCAzIGluc2VydGlvbnMoKyksIDMgZGVsZXRpb25zKC0pCj4+IAo+PiBk
aWZmIC0tZ2l0IGEvYXJjaC9hcm02NC9ib290L2R0cy9yb2NrY2hpcC9yazM1NjYtYm94LWRlbW8u
ZHRzIGIvYXJjaC9hcm02NC9ib290L2R0cy9yb2NrY2hpcC9yazM1NjYtYm94LWRlbW8uZHRzCj4+
IGluZGV4IDQxYjRjZDVhNDIyMC4uN2QwZWVkZjFiZDBkIDEwMDY0NAo+PiAtLS0gYS9hcmNoL2Fy
bTY0L2Jvb3QvZHRzL3JvY2tjaGlwL3JrMzU2Ni1ib3gtZGVtby5kdHMKPj4gKysrIGIvYXJjaC9h
cm02NC9ib290L2R0cy9yb2NrY2hpcC9yazM1NjYtYm94LWRlbW8uZHRzCj4+IEBAIC0xOSw5ICsx
OSw5IEBAIC8gewo+PiAgCj4+ICAJYWxpYXNlcyB7Cj4+ICAJCWV0aGVybmV0MCA9ICZnbWFjMTsK
Pj4gLQkJbW1jMCA9ICZzZG1tYzA7Cj4+IC0JCW1tYzEgPSAmc2RtbWMxOwo+PiAtCQltbWMyID0g
JnNkaGNpOwo+PiArCQltbWMwID0gJnNkaGNpOwo+PiArCQltbWMxID0gJnNkbW1jMDsKPj4gKwkJ
bW1jMiA9ICZzZG1tYzE7Cj4KPnNvcnJ5LCBidXQgdGhhdCB3b24ndCBiZSBwb3NzaWJsZSA6LSgg
Lgo+Cj5UaGUgb3JpZ2luYWwgYWxpYXNlcyBmb3IgdGhlIG1tYyBvcmRlciB3ZXJlIGFkZGVkIG92
ZXIgMiB5ZWFycyBhZ28KPihub3ZlbWJlciAyMDIyKSBhbmQgYmVjYW1lIHBhcnQgb2YgdGhlIEFC
SSB0aGVuLgoKWWVzLCAgdGhlIHBhdGNoIGZvciB0aGlzIGJvYXJkIHdhcyBzdWJtaXR0ZWQgYnkg
bWUuClRoaXMgaXMgYSB0diBib3ggIGV2YWx1YXRpb24gZGVtbyBib2FyZCB0aGF0IHdlIHVzZSBp
bnRlcm5hbGx577yMYW5kIGl0IGlzIG5vdCBzb2xkIHRvIHRoZSBwdWJsaWMuCkkgc3VibWl0dGVk
IGl0IHRvIHRoZSBtYWlubGluZSBiZWNhdXNlIGl0IGlzIHNtYWxsLCBjb21wYWN0IGFuZCBzdHJl
YW1saW5lZCwgaXQgZWFzeSBmb3IgbWUKdG8gdXNlIGl0ICB0ZXN0IHRoZSBtYWlubGluZSB2b3Ay
IGRyaXZlci4gCkkgdGhpbmsgaSBhbSBjdXJyZW50bHkgdGhlIG9ubHkgdXNlciB3aG8gd2lsbCB1
c2UgdGhpcyBib2FyZCBydW4gdGhlIG1haW5saW5lIGtlcm5lbC4KSSdtIG5vdCBzdXJlIGlmIHdl
IGNhbiBsZXQgaXQgZ28uCgoKPgo+SW1hZ2luZSBzb21lb25lIHVzaW5nIHRoYXQgYm9hcmQgd2l0
aCBhIHJvb3Rmcz0vZGV2L21tY2JsazJwMSBwYXJ0Cj5pbiB0aGUgY29tbWFuZGxpbmUgdG8gbW91
bnQgdGhlIG9sZCBzZGhjaS1wYXJ0MSBhcyByb290ZnMsIGJ1dCBub3cKPnlvdSByZW9yZGVyIHRo
ZSBjb250cm9sbGVycywgc28gc28gdGhhdCBjb21tYW5kbGluZSB3b3VsZCB0cnkgdG8gYWNjZXNz
Cj5zZG1tYzEsIHNvIHRoZWlyIHN5c3RlbSB3b24ndCBib290IGFueW1vcmUgYWZ0ZXIganVzdCBh
IHNpbXBsZSBrZXJuZWwKPnVwZGF0ZS4KPgo+QnJlYWtpbmcgcGVvcGxlJ3Mgc2V0dXAgaXMgb25l
IG9mIHRob3NlIGJpZyBuby1nby1zIGluIHRoZSBrZXJuZWwsIHNvCj5zYWRseSB5b3UnbGwgbmVl
ZCB0byBsaXZlIHdpdGggdGhlIGV4aXN0aW5nIG9yZGVyLgo+Cj4KPkhlaWtvCj4KPgo=

