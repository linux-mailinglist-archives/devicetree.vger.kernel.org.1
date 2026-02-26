Return-Path: <devicetree+bounces-268790-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id YGaAGK8toGm0fwQAu9opvQ
	(envelope-from <devicetree+bounces-268790-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Thu, 26 Feb 2026 12:25:35 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 3B5371A5046
	for <lists+devicetree@lfdr.de>; Thu, 26 Feb 2026 12:25:34 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id E89E3307219A
	for <lists+devicetree@lfdr.de>; Thu, 26 Feb 2026 11:25:32 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 7641036656C;
	Thu, 26 Feb 2026 11:25:31 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=163.com header.i=@163.com header.b="bvSGtS0A"
X-Original-To: devicetree@vger.kernel.org
Received: from m16.mail.163.com (m16.mail.163.com [220.197.31.2])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CEE2C3624C4;
	Thu, 26 Feb 2026 11:25:27 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=220.197.31.2
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772105131; cv=none; b=qBLYG4VnkfI8M9j9ZYu6ydju43E5FlvcdiGG6Cuah+GZ5GgmHbOz+4C8Cr6Hiqi2CcZBkG4vdoidYzE/1idUoJwPEBLPZg28XeFCyzuPgLybYSyxvOt55iqYNgZKr1JtpXiJefLDhNrwe5+DqCtfo6IBBtuRBAMrvKxWCApVZnQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772105131; c=relaxed/simple;
	bh=BZoG2+nssJfvfR/Kr7cZfRfAHIF/UEVtluNJU+Zz8fg=;
	h=Date:From:To:Cc:Subject:In-Reply-To:References:Content-Type:
	 MIME-Version:Message-ID; b=tyFbaNJcyuCfvK8xBIDFCOjytEDk0sKFP1qyBixY+34ipyD8JmS7k9qkrABTtSB9kwKE9a3DMd6yDNAekV7NPINVNxAK5/Rrkg4uua1n33YCDyRZiwCxpv/la2XpXNxFsfDtaDKSyRBylrTuqEzT3zhWJ+20LCL+A3C9GXPHDvo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=163.com; spf=pass smtp.mailfrom=163.com; dkim=pass (1024-bit key) header.d=163.com header.i=@163.com header.b=bvSGtS0A; arc=none smtp.client-ip=220.197.31.2
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=163.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=163.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=163.com;
	s=s110527; h=Date:From:To:Subject:Content-Type:MIME-Version:
	Message-ID; bh=BZoG2+nssJfvfR/Kr7cZfRfAHIF/UEVtluNJU+Zz8fg=; b=b
	vSGtS0ASdA9brQSlySE6g7fNuV3OEfXPIt5YanYIejtVdOLLu4AVTAxok7wEGM89
	yiVlepkf94c4FcSfz621kJn3eVV6txDFd8aFsSh3+UgPf89GBj2ag8azfyU7FWfV
	tvP2cxwWyp6Gu78zN8Qnuv+pQU9RXmBFcsqfpfzJv4=
Received: from andyshrk$163.com ( [58.22.7.114] ) by
 ajax-webmail-wmsvr-40-146 (Coremail) ; Thu, 26 Feb 2026 19:24:48 +0800
 (CST)
Date: Thu, 26 Feb 2026 19:24:48 +0800 (CST)
From: "Andy Yan" <andyshrk@163.com>
To: "Chaoyi Chen" <kernel@airkyi.com>
Cc: "Rob Herring" <robh@kernel.org>,
	"Krzysztof Kozlowski" <krzk+dt@kernel.org>,
	"Conor Dooley" <conor+dt@kernel.org>,
	"Heiko Stuebner" <heiko@sntech.de>,
	"Alexey Charkov" <alchark@gmail.com>,
	"Shawn Lin" <shawn.lin@rock-chips.com>,
	"Chaoyi Chen" <chaoyi.chen@rock-chips.com>,
	"Andy Yan" <andy.yan@rock-chips.com>,
	"Sebastian Reichel" <sebastian.reichel@collabora.com>,
	devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org
Subject: Re:[PATCH] arm64: dts: rockchip: Fix sdmmc pwren pinctrl for
 rk3576-evb2
X-Priority: 3
X-Mailer: Coremail Webmail Server Version 2023.4-cmXT build
 20251222(83accb85) Copyright (c) 2002-2026 www.mailtech.cn 163com
In-Reply-To: <20260226102052.63-1-kernel@airkyi.com>
References: <20260226102052.63-1-kernel@airkyi.com>
X-CM-CTRLMSGS: JZu7TnBsdXM9MTc3MjEwNTA4NzEwN18xNjg5ZmU5ZjAwMDRiZWY5NTU2Y2MyM
 DQ3YmQ2OWE1Yw==
X-NTES-SC: AL_Qu2cAP2bukgj7iGfZ+kfmUgWjuw/WsG1v/Ul1YBSP556jCzr9zsff3pGG3Dp4sKQJjGPnz6sShppxtxDcKp/T5wNjDi5I4wrNCjoHzy/mNnPfQ==
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset=UTF-8
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Message-ID: <71bf3205.7a33.19c99b1bcb7.Coremail.andyshrk@163.com>
X-Coremail-Locale: zh_CN
X-CM-TRANSID:kigvCgBHn2mALaBp8zFtAA--.12630W
X-CM-SenderInfo: 5dqg52xkunqiywtou0bp/xtbC7QDtTGmgLYDFEQAA38
X-Coremail-Antispam: 1U5529EdanIXcx71UUUUU7vcSsGvfC2KfnxnUU==
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [0.44 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_CONTAINS_FROM(1.00)[];
	DMARC_POLICY_ALLOW(-0.50)[163.com,none];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	R_DKIM_ALLOW(-0.20)[163.com:s=s110527];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	MIME_BASE64_TEXT(0.10)[];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-268790-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[14];
	MIME_TRACE(0.00)[0:+];
	RCVD_COUNT_THREE(0.00)[4];
	FORGED_SENDER_MAILLIST(0.00)[];
	FREEMAIL_FROM(0.00)[163.com];
	FROM_HAS_DN(0.00)[];
	FREEMAIL_CC(0.00)[kernel.org,sntech.de,gmail.com,rock-chips.com,collabora.com,vger.kernel.org,lists.infradead.org];
	NEURAL_HAM(-0.00)[-0.975];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[andyshrk@163.com,devicetree@vger.kernel.org];
	HAS_X_PRIO_THREE(0.00)[3];
	TAGGED_RCPT(0.00)[devicetree,dt];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	TO_DN_SOME(0.00)[];
	DKIM_TRACE(0.00)[163.com:+];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,infradead.org:url,infradead.org:email,airkyi.com:email]
X-Rspamd-Queue-Id: 3B5371A5046
X-Rspamd-Action: no action

CkhlbGxv77yMCgpBdCAyMDI2LTAyLTI2IDE4OjIwOjUyLCAiQ2hhb3lpIENoZW4iIDxrZXJuZWxA
YWlya3lpLmNvbT4gd3JvdGU6Cj5Gcm9tOiBDaGFveWkgQ2hlbiA8Y2hhb3lpLmNoZW5Acm9jay1j
aGlwcy5jb20+Cj4KPkluIHJrMzU3Ni5kdHNpLCBzZG1tYzBfcHdyZW4gaXMgY29uZmlndXJlZCBh
cyBwYXJ0IG9mIHRoZSBzZG1tYyBwaW5jdHJsLgo+SG93ZXZlciwgb24gdGhlIHJrMzU3NiBldmIy
IGJvYXJkLCBzZG1tYzBfcHdyZW4gaXMgdXNlZCBhcyB0aGUgcmVndWxhdG9yCj5mb3Igdm1tYy1z
dXBwbHkuIFRoZXJlZm9yZSwgd2UgbmVlZCB0byByZWFzc2lnbiB0aGUgc2RtbWMgcGluY3RybCBh
bmQKPnJlbW92ZSBzZG1tYzBfcHdyZW4gdG8gYXZvaWQgY29uZmxpY3RzLgo+Cj5DYzogU2hhd24g
TGluIDxzaGF3bi5saW5Acm9jay1jaGlwcy5jb20+Cj5GaXhlczogODZhODJmN2E3ZWVkICgiYXJt
NjQ6IGR0czogcm9ja2NoaXA6IEFkZCByazM1NzYgZXZiMiBib2FyZCIpCj5TaWduZWQtb2ZmLWJ5
OiBDaGFveWkgQ2hlbiA8Y2hhb3lpLmNoZW5Acm9jay1jaGlwcy5jb20+CiAgIFRlc3RlZC1iee+8
miBBbmR5IFlhbiA8YW5keS55YW5AMTYzLmNvbT4KCgo+LS0tCj4gYXJjaC9hcm02NC9ib290L2R0
cy9yb2NrY2hpcC9yazM1NzYtZXZiMi12MTAuZHRzIHwgMiArKwo+IDEgZmlsZSBjaGFuZ2VkLCAy
IGluc2VydGlvbnMoKykKPgo+ZGlmZiAtLWdpdCBhL2FyY2gvYXJtNjQvYm9vdC9kdHMvcm9ja2No
aXAvcmszNTc2LWV2YjItdjEwLmR0cyBiL2FyY2gvYXJtNjQvYm9vdC9kdHMvcm9ja2NoaXAvcmsz
NTc2LWV2YjItdjEwLmR0cwo+aW5kZXggNmJkYzIzMmFiMjY3Li45OGQ1ZDAwZDYzYjUgMTAwNjQ0
Cj4tLS0gYS9hcmNoL2FybTY0L2Jvb3QvZHRzL3JvY2tjaGlwL3JrMzU3Ni1ldmIyLXYxMC5kdHMK
PisrKyBiL2FyY2gvYXJtNjQvYm9vdC9kdHMvcm9ja2NoaXAvcmszNTc2LWV2YjItdjEwLmR0cwo+
QEAgLTk1MSw2ICs5NTEsOCBAQCAmc2RtbWMgewo+IAlkaXNhYmxlLXdwOwo+IAluby1zZGlvOwo+
IAluby1tbWM7Cj4rCXBpbmN0cmwtbmFtZXMgPSAiZGVmYXVsdCI7Cj4rCXBpbmN0cmwtMCA9IDwm
c2RtbWMwX2NsayAmc2RtbWMwX2NtZCAmc2RtbWMwX2RldCAmc2RtbWMwX2J1czQ+Owo+IAlzZC11
aHMtc2RyMTA0Owo+IAl2bW1jLXN1cHBseSA9IDwmdmNjM3YzX3NkPjsKPiAJdnFtbWMtc3VwcGx5
ID0gPCZ2Y2Npb19zZF9zMD47Cj4tLSAKPjIuNTEuMQo+Cj4KPl9fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fCj5MaW51eC1yb2NrY2hpcCBtYWlsaW5nIGxpc3QK
PkxpbnV4LXJvY2tjaGlwQGxpc3RzLmluZnJhZGVhZC5vcmcKPmh0dHA6Ly9saXN0cy5pbmZyYWRl
YWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtcm9ja2NoaXAK

