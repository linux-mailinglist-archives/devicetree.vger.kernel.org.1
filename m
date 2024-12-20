Return-Path: <devicetree+bounces-133031-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 158549F90BE
	for <lists+devicetree@lfdr.de>; Fri, 20 Dec 2024 11:52:44 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 5A711165E3E
	for <lists+devicetree@lfdr.de>; Fri, 20 Dec 2024 10:52:37 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 9962A1A8402;
	Fri, 20 Dec 2024 10:52:35 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=fail reason="signature verification failed" (1024-bit key) header.d=163.com header.i=@163.com header.b="FXwh9XBC"
X-Original-To: devicetree@vger.kernel.org
Received: from m16.mail.163.com (m16.mail.163.com [117.135.210.2])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E04A1172BD5;
	Fri, 20 Dec 2024 10:52:31 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=117.135.210.2
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1734691955; cv=none; b=hpwv7H1cRXJ0DYAulYfGl5RQMgvyAZuuh8tpTFsm3ei8bQKkfoIVkigjPwueVOa7ubXNWHRcAeiOrY8foUVOsLqD5uAuQObR9ZFgtsz6922QjOoZGNa3OZNTeyWaR0FHee8RWa0+eezz2R8/NLEx9j97AXN3nitQrqSr5TdCWqI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1734691955; c=relaxed/simple;
	bh=L3JTp4Zchb3YCGv/vAr9PA/1W4TWzDvDI93nASElA8Q=;
	h=Date:From:To:Cc:Subject:In-Reply-To:References:Content-Type:
	 MIME-Version:Message-ID; b=j5Uu4Hg2CYtXU8Vg37l7Jbj2IHktmR1iA3TBg8lZKu113J8TEOif3vRpQTFB4cndZd0ZNyIRqR5KMZjhwHrDJa5MomKgfA7GWuUcJfiUaSnr6wp9oXqc43hQgtcuglWFI6k2yHMRpmgpAUbBjGCiU5pvOnlaCwCMzROoj3pXsJw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=163.com; spf=pass smtp.mailfrom=163.com; dkim=fail (1024-bit key) header.d=163.com header.i=@163.com header.b=FXwh9XBC reason="signature verification failed"; arc=none smtp.client-ip=117.135.210.2
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=163.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=163.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=163.com;
	s=s110527; h=Date:From:Subject:Content-Type:MIME-Version:
	Message-ID; bh=pRDaXkTGjX7R3KLIOZ+hFg8hT1FPiVLyVpMN6D7XCbA=; b=F
	Xwh9XBChvVKvR3dLL7C8uBH0fqJhI5MtshgW9B3PmthsG6Wb4KNWuTetOAhCuZf/
	UBqP+y7mPl4u9dqIxUbs8j6z3wAxclx9hea0cN3l8ezTLWADEpdNVBPFHiLGycwk
	TsjpkTYP5A2xGH7VsucEGo4i+OKW/ZkrKphltYyQI4=
Received: from andyshrk$163.com ( [58.22.7.114] ) by
 ajax-webmail-wmsvr-40-138 (Coremail) ; Fri, 20 Dec 2024 18:51:11 +0800
 (CST)
Date: Fri, 20 Dec 2024 18:51:11 +0800 (CST)
From: "Andy Yan" <andyshrk@163.com>
To: "Rob Herring (Arm)" <robh@kernel.org>
Cc: devicetree@vger.kernel.org, conor+dt@kernel.org, 
	linux-arm-kernel@lists.infradead.org, krzk+dt@kernel.org, 
	joro@8bytes.org, heiko@sntech.de, iommu@lists.linux.dev, 
	linux-kernel@vger.kernel.org, linux-rockchip@lists.infradead.org, 
	"Andy Yan" <andy.yan@rock-chips.com>
Subject: Re:Re: [PATCH] dt-bindings: iommu: rockchip: Add Rockchip RK3576
X-Priority: 3
X-Mailer: Coremail Webmail Server Version XT5.0.14 build 20240801(9da12a7b)
 Copyright (c) 2002-2024 www.mailtech.cn 163com
In-Reply-To: <172721001667.289647.10163147936752673484.robh@kernel.org>
References: <20240920094947.7566-1-andyshrk@163.com>
 <172721001667.289647.10163147936752673484.robh@kernel.org>
X-NTES-SC: AL_Qu2YBvqSvkAs5yORY+lS0zJw2L5KLrXQ55RVgP4ISMMety/k0AwKZFNTPmLdzeRN0FVvuJIZPp+skrPvdt2I
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset=UTF-8
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Message-ID: <662c9716.a714.193e3b15aac.Coremail.andyshrk@163.com>
X-Coremail-Locale: zh_CN
X-CM-TRANSID:iigvCgD3f88fTGVn9wlFAA--.16687W
X-CM-SenderInfo: 5dqg52xkunqiywtou0bp/1tbiqQW7XmdlQ8qU3gABsJ
X-Coremail-Antispam: 1U5529EdanIXcx71UUUUU7vcSsGvfC2KfnxnUU==

CnBpbmcKCkF0IDIwMjQtMDktMjUgMDQ6MzM6MzcsICJSb2IgSGVycmluZyAoQXJtKSIgPHJvYmhA
a2VybmVsLm9yZz4gd3JvdGU6Cj4KPk9uIEZyaSwgMjAgU2VwIDIwMjQgMTc6NDk6NDAgKzA4MDAs
IEFuZHkgWWFuIHdyb3RlOgo+PiBGcm9tOiBBbmR5IFlhbiA8YW5keS55YW5Acm9jay1jaGlwcy5j
b20+Cj4+IAo+PiBKdXN0IGxpa2UgUkszNTg4LCBSSzM1NzYgaXMgY29tcGF0aWJsZSB0byB0aGUg
ZXhpc3RpbmcgcmszNTY4Cj4+IGJpbmRpbmcuCj4+IAo+PiBTaWduZWQtb2ZmLWJ5OiBBbmR5IFlh
biA8YW5keS55YW5Acm9jay1jaGlwcy5jb20+Cj4+IC0tLQo+PiAKPj4gIERvY3VtZW50YXRpb24v
ZGV2aWNldHJlZS9iaW5kaW5ncy9pb21tdS9yb2NrY2hpcCxpb21tdS55YW1sIHwgMSArCj4+ICAx
IGZpbGUgY2hhbmdlZCwgMSBpbnNlcnRpb24oKykKPj4gCj4KPkFja2VkLWJ5OiBSb2IgSGVycmlu
ZyAoQXJtKSA8cm9iaEBrZXJuZWwub3JnPgo+Cg==

