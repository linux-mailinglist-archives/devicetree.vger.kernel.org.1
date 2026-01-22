Return-Path: <devicetree+bounces-258271-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id +BUvGO/vcWlKZwAAu9opvQ
	(envelope-from <devicetree+bounces-258271-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Thu, 22 Jan 2026 10:37:51 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from dfw.mirrors.kernel.org (dfw.mirrors.kernel.org [142.0.200.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 0856A64A27
	for <lists+devicetree@lfdr.de>; Thu, 22 Jan 2026 10:37:51 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.mirrors.kernel.org (Postfix) with ESMTPS id 330CD805291
	for <lists+devicetree@lfdr.de>; Thu, 22 Jan 2026 09:31:36 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 252483DA7C3;
	Thu, 22 Jan 2026 09:29:39 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=icenowy.me header.i=uwu@icenowy.me header.b="Y2mbPBuO"
X-Original-To: devicetree@vger.kernel.org
Received: from sender4-op-o12.zoho.com (sender4-op-o12.zoho.com [136.143.188.12])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 184C13A4AA7;
	Thu, 22 Jan 2026 09:29:36 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=pass smtp.client-ip=136.143.188.12
ARC-Seal:i=2; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769074179; cv=pass; b=M5U0QrrbJwmh6caSuhfh9t/D/XM6546M+9s2qB05jF/GtoYFKQYClJd/AGtPpaoQ6I2xKI9TwtdkeX5CDfBFdOmYFmOBSZPLDRr16VDoYyKw1RMVC7Iq2WmIee+T8/9tvnk8qGsHsmSqUBwQtlr8ICoZ3o34YQrS301PO6lKQ+8=
ARC-Message-Signature:i=2; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769074179; c=relaxed/simple;
	bh=jkBmy4kjCDcQOpfASv2lnaUG8rOadoq5dD9Vpg8Ptdk=;
	h=Message-ID:Subject:From:To:Cc:Date:In-Reply-To:References:
	 Content-Type:MIME-Version; b=JpFrMUR9bzCRxzGr0HW7xWvHSe+jBAtaMqoOCT3CBxA27Q0j3UwUjKAzDg9rv081OqaQ21QcfNB52aSf8TSMIQKAUCxSc9ddJtvrDrqSS8vdqs5NYotexe8Y+Lf5icfp9nSfDk44B1sW4AbmbttpaijQdDV76UK+M5/aXtJ72pA=
ARC-Authentication-Results:i=2; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=icenowy.me; spf=pass smtp.mailfrom=icenowy.me; dkim=pass (2048-bit key) header.d=icenowy.me header.i=uwu@icenowy.me header.b=Y2mbPBuO; arc=pass smtp.client-ip=136.143.188.12
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=icenowy.me
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=icenowy.me
ARC-Seal: i=1; a=rsa-sha256; t=1769074142; cv=none; 
	d=zohomail.com; s=zohoarc; 
	b=Udvbm8NgR2dtivyV/B8IJDDZ879uhF5Ci3xQtoVfIihHPwArmKYLfmxJVM7t4A+/a6Z40cTs6yZQsk3h02ba5Zr9r0Ryz+zGG13v920KVVt8yHcZqnNFM+l+3r8DQ0eEwbMXugtZNzmkGu86oQCEEggkKTmXz//f2Nah8wcqF0Y=
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=zohomail.com; s=zohoarc; 
	t=1769074142; h=Content-Type:Content-Transfer-Encoding:Cc:Cc:Date:Date:From:From:In-Reply-To:MIME-Version:Message-ID:References:Subject:Subject:To:To:Message-Id:Reply-To; 
	bh=jkBmy4kjCDcQOpfASv2lnaUG8rOadoq5dD9Vpg8Ptdk=; 
	b=L+MkeuxBkvhwGY8m1P0SJA4Y5mnZPrFwRWtqv3W6tutGLI3HwXhXinZ1NGnE2vJeUa3HE48xaN0MNFNNFTiuNB8rsccfWzX1UZxfGPGs4yRXtg/cyGAFwafSCiwuj4hy2r+O9OJpbvwqpVVVOnyk7gxB6I/Q+37gja1oHdTYPqQ=
ARC-Authentication-Results: i=1; mx.zohomail.com;
	dkim=pass  header.i=icenowy.me;
	spf=pass  smtp.mailfrom=uwu@icenowy.me;
	dmarc=pass header.from=<uwu@icenowy.me>
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; t=1769074142;
	s=zmail2; d=icenowy.me; i=uwu@icenowy.me;
	h=Message-ID:Subject:Subject:From:From:To:To:Cc:Cc:Date:Date:In-Reply-To:References:Content-Type:Content-Transfer-Encoding:MIME-Version:Message-Id:Reply-To;
	bh=jkBmy4kjCDcQOpfASv2lnaUG8rOadoq5dD9Vpg8Ptdk=;
	b=Y2mbPBuOuCj9AxxoCurKOpHBaIkqJQIOkD9SwYE43pZlGaPEu9D2e7xCcwzBWaMO
	GwV0ar9sHZrVXjosHPl3cjjnsbSVvFOx73PZp2KCnt5aHnTAtOlh393GhhdYnydVJCR
	teiljx6lsiYlcFNvaZQTSVaVpMxwTYWebbA8yiBR9xDEe0TjiuMvwkcWcCzcyAgQRB8
	hWibZuPEkykvZ9UK/irHVLmbgOyetIiAoSbG4kG31JIcJ+tY53vkNAnk0ihVRwWmLeR
	h1AfgaOr34lurEyIZmOcbxv34+iUmzwLrRhJhuo9s8OIUAkx9VnFB/JtjXvWO9juQN9
	J8T9eAtDYg==
Received: by mx.zohomail.com with SMTPS id 176907414121622.6349085265756;
	Thu, 22 Jan 2026 01:29:01 -0800 (PST)
Message-ID: <7802bbc5edf2cfd6bf0d3f189aa7e6f6fc62e6ae.camel@icenowy.me>
Subject: Re: [PATCH v5 3/9] drm: verisilicon: add a driver for Verisilicon
 display controllers
From: Icenowy Zheng <uwu@icenowy.me>
To: Thomas Zimmermann <tzimmermann@suse.de>, Andrzej Hajda
 <andrzej.hajda@intel.com>, Neil Armstrong <neil.armstrong@linaro.org>, 
 Robert Foss <rfoss@kernel.org>, Laurent Pinchart
 <Laurent.pinchart@ideasonboard.com>, Jonas Karlman <jonas@kwiboo.se>,
 Jernej Skrabec <jernej.skrabec@gmail.com>, Maarten Lankhorst
 <maarten.lankhorst@linux.intel.com>, Maxime Ripard <mripard@kernel.org>, 
 David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>, Rob
 Herring <robh@kernel.org>,  Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor
 Dooley <conor+dt@kernel.org>, Drew Fustini <fustini@kernel.org>, Guo Ren
 <guoren@kernel.org>, Fu Wei <wefu@redhat.com>
Cc: Philipp Zabel <p.zabel@pengutronix.de>, Dmitry Baryshkov
 <lumag@kernel.org>,  Michal Wilczynski <m.wilczynski@samsung.com>, Luca
 Ceresoli <luca.ceresoli@bootlin.com>, Han Gao <rabenda.cn@gmail.com>,  Yao
 Zi <ziyao@disroot.org>, linux-kernel@vger.kernel.org,
 dri-devel@lists.freedesktop.org,  devicetree@vger.kernel.org,
 linux-riscv@lists.infradead.org, Han Gao <gaohan@iscas.ac.cn>
Date: Thu, 22 Jan 2026 17:28:48 +0800
In-Reply-To: <56e1974c-0fe6-4bdb-918d-fcf6a8b866c1@suse.de>
References: <20260116043746.336328-1-zhengxingda@iscas.ac.cn>
	 <20260116043746.336328-4-zhengxingda@iscas.ac.cn>
	 <56e1974c-0fe6-4bdb-918d-fcf6a8b866c1@suse.de>
Organization: Anthon Open-Source Community
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: base64
User-Agent: Evolution 3.44.4 
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
X-ZohoMailClient: External
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.36 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=2];
	DMARC_POLICY_ALLOW_WITH_FAILURES(-0.50)[];
	R_DKIM_ALLOW(-0.20)[icenowy.me:s=zmail2];
	MAILLIST(-0.15)[generic];
	MIME_BASE64_TEXT(0.10)[];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-258271-lists,devicetree=lfdr.de];
	FORGED_SENDER_MAILLIST(0.00)[];
	FREEMAIL_TO(0.00)[suse.de,intel.com,linaro.org,kernel.org,ideasonboard.com,kwiboo.se,gmail.com,linux.intel.com,ffwll.ch,redhat.com];
	RCPT_COUNT_TWELVE(0.00)[28];
	RCVD_COUNT_THREE(0.00)[4];
	MIME_TRACE(0.00)[0:+];
	HAS_ORG_HEADER(0.00)[];
	FREEMAIL_CC(0.00)[pengutronix.de,kernel.org,samsung.com,bootlin.com,gmail.com,disroot.org,vger.kernel.org,lists.freedesktop.org,lists.infradead.org,iscas.ac.cn];
	DKIM_TRACE(0.00)[icenowy.me:+];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[uwu@icenowy.me,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	DMARC_POLICY_ALLOW(0.00)[icenowy.me,none];
	R_SPF_SOFTFAIL(0.00)[~all:c];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MID_RHS_MATCH_FROM(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	ASN(0.00)[asn:7979, ipnet:142.0.200.0/24, country:US];
	DBL_BLOCKED_OPENRESOLVER(0.00)[icenowy.me:mid,icenowy.me:dkim,dfw.mirrors.kernel.org:helo,dfw.mirrors.kernel.org:rdns]
X-Rspamd-Queue-Id: 0856A64A27
X-Rspamd-Action: no action

5ZyoIDIwMjYtMDEtMjHmmJ/mnJ/kuInnmoQgMTM6NTYgKzAxMDDvvIxUaG9tYXMgWmltbWVybWFu
buWGmemBk++8mgoKPT09PT09PT09PT09PT0gODwgPT09PT09PT09PT09PT09PT09PT09PT0KPiA+
ICtzdGF0aWMgaW50IHZzX2dlbV9kdW1iX2NyZWF0ZShzdHJ1Y3QgZHJtX2ZpbGUgKmZpbGVfcHJp
diwKPiA+ICvCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoCBzdHJ1Y3QgZHJtX2RldmljZSAqZHJtLAo+ID4gK8KgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgIHN0cnVjdCBkcm1fbW9kZV9jcmVh
dGVfZHVtYiAqYXJncykKPiA+ICt7Cj4gPiArwqDCoMKgwqDCoMKgwqAvKiBUaGUgaGFyZHdhcmUg
d2FudHMgMTI4Qi1hbGlnbmVkIHBpdGNoZXMgZm9yIGxpbmVhcgo+ID4gYnVmZmVycy4gKi8KPiA+
ICvCoMKgwqDCoMKgwqDCoGFyZ3MtPnBpdGNoID0gQUxJR04oRElWX1JPVU5EX1VQKGFyZ3MtPndp
ZHRoICogYXJncy0+YnBwLAo+ID4gOCksIDEyOCk7Cj4gCj4gUGxlYXNlIHVzZSB0aGUgbmV3IGRy
bV9tb2RlX2FsaWduX2R1bWIoKSBpbnN0ZWFkLgoKSXQgc2VlbXMgdG8gYmUgc3RpbGwgYSBzdGF0
aWMgZnVuY3Rpb24sIGF0IGxlYXN0IGluIDYuMTktcmMxIC4KCkl0IGxvb2tzIGxpa2UgSSBzaG91
bGQgcHV0IGEgY2FsbCB0byBkcm1fbW9kZV9zaXplX2R1bWIoKSBoZXJlLCBpcyB0aGlzCmNvcnJl
Y3Q/CgpUaGFua3MsCkljZW5vd3kKCj4gCj4gPiArCj4gPiArwqDCoMKgwqDCoMKgwqByZXR1cm4g
ZHJtX2dlbV9kbWFfZHVtYl9jcmVhdGVfaW50ZXJuYWwoZmlsZV9wcml2LCBkcm0sCj4gPiBhcmdz
KTsKPiA+ICt9Cj4gPiArCg==


