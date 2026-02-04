Return-Path: <devicetree+bounces-262788-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id wI9DK7uPg2lCpQMAu9opvQ
	(envelope-from <devicetree+bounces-262788-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 04 Feb 2026 19:28:11 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id ECA46EBA26
	for <lists+devicetree@lfdr.de>; Wed, 04 Feb 2026 19:28:10 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 1FB703003ED5
	for <lists+devicetree@lfdr.de>; Wed,  4 Feb 2026 18:25:17 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 8C1262F5A34;
	Wed,  4 Feb 2026 18:25:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=broadcom.com header.i=@broadcom.com header.b="qnXTEC95"
X-Original-To: devicetree@vger.kernel.org
Received: from relay.smtp-ext.broadcom.com (relay.smtp-ext.broadcom.com [192.19.166.228])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 520D6280A3B
	for <devicetree@vger.kernel.org>; Wed,  4 Feb 2026 18:25:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=192.19.166.228
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770229516; cv=none; b=d7HlQ2ypJ+fX+fHV38CICM0oUyo4L2vtZTVmHoULH/yv9z89JJq3Wibvw9TJe9hd/rzZeVCzHKy/q7kwFBGBB1zyM840CDn8kYw2FwDTw/6rHJsZnB2QWR1yhFM1XxGYIjfQR632xCIvWEMfD1iAyFNbivQVz0RwTjKufE9uqOI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770229516; c=relaxed/simple;
	bh=lpK1Zrp0KaaCyZ9NMwJqLwpT6YZg0RTNLTEmT781GU0=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version:Content-Type; b=ZCETKLuhU21UF6qVUF7tVvy8IB1xTZSSkI278sB/Hyt51jkATf8Hta/neR9qf5aPDDsmz06IogRz/QMqaZyKtpgiBJ4AqLS/7PU45HR/5SsRF4FdnDq+Mog1AfeSwshLUXcBk6+AW+9Xi3UT0nXZyutHn31jdFLdaKWsG6yAeno=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=broadcom.com; spf=fail smtp.mailfrom=broadcom.com; dkim=pass (1024-bit key) header.d=broadcom.com header.i=@broadcom.com header.b=qnXTEC95; arc=none smtp.client-ip=192.19.166.228
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=broadcom.com
Authentication-Results: smtp.subspace.kernel.org; spf=fail smtp.mailfrom=broadcom.com
Received: from mail-lvn-it-01.broadcom.com (mail-lvn-it-01.lvn.broadcom.net [10.36.132.253])
	by relay.smtp-ext.broadcom.com (Postfix) with ESMTP id 9F162C0127E3;
	Wed,  4 Feb 2026 10:25:15 -0800 (PST)
DKIM-Filter: OpenDKIM Filter v2.11.0 relay.smtp-ext.broadcom.com 9F162C0127E3
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=broadcom.com;
	s=dkimrelay; t=1770229515;
	bh=lpK1Zrp0KaaCyZ9NMwJqLwpT6YZg0RTNLTEmT781GU0=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=qnXTEC95XbN+rlZI1NZEYnU6iXc1zD0iNrAM4LPJcC/wucgNNn/zfS/WepU8ltQNT
	 4ZqL7pOd4Be6PuIVLD1TNZxXV2eLICYrSDLnBGtK9zr8fYMjykfArBGXEgLnbRXOb1
	 /oWljLW0vrY0+FqOO+5l0PhZsXKKy6vxfxYqkTtc=
Received: from fainelli-desktop.igp.broadcom.net (fainelli-desktop.dhcp.broadcom.net [10.67.48.245])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by mail-lvn-it-01.broadcom.com (Postfix) with ESMTPSA id 7C3B41B854;
	Wed,  4 Feb 2026 10:25:15 -0800 (PST)
From: Florian Fainelli <florian.fainelli@broadcom.com>
To: bcm-kernel-feedback-list@broadcom.com,
	=?iso-8859-2?q?Rafa=B3_Mi=B3ecki?= <zajec5@gmail.com>,
	Florian Fainelli <florian.fainelli@broadcom.com>,
	Hauke Mehrtens <hauke@hauke-m.de>
Cc: Florian Fainelli <f.fainelli@gmail.com>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	linux-arm-kernel@lists.infradead.org,
	devicetree@vger.kernel.org,
	=?iso-8859-2?q?Rafa=B3_Mi=B3ecki?= <rafal@milecki.pl>
Subject: Re: [PATCH V2] ARM: dts: BCM5301X: Describe PCIe controllers fully
Date: Wed,  4 Feb 2026 10:25:15 -0800
Message-ID: <20260204182515.1154618-1-florian.fainelli@broadcom.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20260108224026.3550-1-zajec5@gmail.com>
References: <20260108224026.3550-1-zajec5@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [0.34 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	MID_CONTAINS_FROM(1.00)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[broadcom.com,reject];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	R_DKIM_ALLOW(-0.20)[broadcom.com:s=dkimrelay];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FREEMAIL_CC(0.00)[gmail.com,kernel.org,lists.infradead.org,vger.kernel.org,milecki.pl];
	FROM_HAS_DN(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	FREEMAIL_TO(0.00)[broadcom.com,gmail.com,hauke-m.de];
	TAGGED_FROM(0.00)[bounces-262788-lists,devicetree=lfdr.de];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	DKIM_TRACE(0.00)[broadcom.com:+];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[florian.fainelli@broadcom.com,devicetree@vger.kernel.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	DBL_PROHIBIT(0.00)[0.0.54.176:email];
	RCPT_COUNT_SEVEN(0.00)[11];
	NEURAL_HAM(-0.00)[-1.000];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	DBL_BLOCKED_OPENRESOLVER(0.00)[broadcom.com:mid,broadcom.com:dkim,sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,devicetree.org:url,0.0.46.224:email,0.0.50.200:email]
X-Rspamd-Queue-Id: ECA46EBA26
X-Rspamd-Action: no action

From: Florian Fainelli <f.fainelli@gmail.com>

On Thu,  8 Jan 2026 23:40:26 +0100, Rafał Miłecki <zajec5@gmail.com> wrote:
> From: Rafał Miłecki <rafal@milecki.pl>
> 
> Tested successfully on BCM47094 SoC using Linux's pcie-iproc-platform
> driver.
> 
> This fixes:
> arch/arm/boot/dts/broadcom/bcm4708-asus-rt-ac56u.dtb: pcie@12000: 'device_type' is a required property
>         from schema $id: http://devicetree.org/schemas/pci/pci-bus.yaml#
> arch/arm/boot/dts/broadcom/bcm4708-asus-rt-ac56u.dtb: pcie@12000: 'ranges' is a required property
>         from schema $id: http://devicetree.org/schemas/pci/pci-bus.yaml#
> arch/arm/boot/dts/broadcom/bcm4708-asus-rt-ac56u.dtb: pcie@13000: 'device_type' is a required property
>         from schema $id: http://devicetree.org/schemas/pci/pci-bus.yaml#
> arch/arm/boot/dts/broadcom/bcm4708-asus-rt-ac56u.dtb: pcie@13000: 'ranges' is a required property
>         from schema $id: http://devicetree.org/schemas/pci/pci-bus.yaml#
> arch/arm/boot/dts/broadcom/bcm4708-asus-rt-ac56u.dtb: pcie@14000: 'device_type' is a required property
>         from schema $id: http://devicetree.org/schemas/pci/pci-bus.yaml#
> arch/arm/boot/dts/broadcom/bcm4708-asus-rt-ac56u.dtb: pcie@14000: 'ranges' is a required property
>         from schema $id: http://devicetree.org/schemas/pci/pci-bus.yaml#
> 
> Signed-off-by: Rafał Miłecki <rafal@milecki.pl>
> ---

Applied to https://github.com/Broadcom/stblinux/commits/devicetree/next, thanks!
--
Florian

