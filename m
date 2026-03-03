Return-Path: <devicetree+bounces-270567-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id CC3dMxD0pmmgawAAu9opvQ
	(envelope-from <devicetree+bounces-270567-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 03 Mar 2026 15:45:36 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 1BBEC1F1BD8
	for <lists+devicetree@lfdr.de>; Tue, 03 Mar 2026 15:45:36 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id E378A3130075
	for <lists+devicetree@lfdr.de>; Tue,  3 Mar 2026 14:39:05 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A354F439010;
	Tue,  3 Mar 2026 14:39:04 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=ew.tq-group.com header.i=@ew.tq-group.com header.b="MpUogbLV"
X-Original-To: devicetree@vger.kernel.org
Received: from mx-relay32-hz1.antispameurope.com (mx-relay32-hz1.antispameurope.com [94.100.133.208])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E626A430B99
	for <devicetree@vger.kernel.org>; Tue,  3 Mar 2026 14:39:02 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=pass smtp.client-ip=94.100.133.208
ARC-Seal:i=2; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772548744; cv=pass; b=Q2UpXAE7u9k86KZ4q2PTsvLjyODOeB7MiURd2Ozz2flgoPfvHRJszWbsQsu6ZpJDCUaB2ICvsYs/NHiiNua4WlFgCeUUeGhOZcOPcYUSDRs4VfB5DNPCgk1COEmbnYjzTYP7F8vk30BZQ9uk/EDkVtMQxJeIogUvUqKHGMf3XXI=
ARC-Message-Signature:i=2; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772548744; c=relaxed/simple;
	bh=qnO7IRr0LlEJaNRBAGoo2LWcIhj9SGvdD+DC52MgbfA=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=Yfk70mx1TVXxgKOcj383LqO5oV0V8+Zd27Bm6n+4joXUY4TMIFccbClzGqIEN7kRVHxJ8hAcCSkDXSxnnMiShsG/2TnzFsrxyT1klAExh5MEwkZ1gaZn4wWKemxSNAn9l/yAZq9JM4x9FO0QCPA9rIXcOupYGokFK1y5dDJ5Ym8=
ARC-Authentication-Results:i=2; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=ew.tq-group.com; spf=pass smtp.mailfrom=ew.tq-group.com; dkim=pass (2048-bit key) header.d=ew.tq-group.com header.i=@ew.tq-group.com header.b=MpUogbLV; arc=pass smtp.client-ip=94.100.133.208
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=ew.tq-group.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=ew.tq-group.com
ARC-Authentication-Results: i=1; mx-gate32-hz1.hornetsecurity.com 1; spf=pass
 reason=mailfrom (ip=94.100.132.6, headerfrom=ew.tq-group.com)
 smtp.mailfrom=ew.tq-group.com
 smtp.helo=hmail-p-smtp01-out03-hz1.hornetsecurity.com; dmarc=pass
 header.from=ew.tq-group.com orig.disposition=pass
ARC-Message-Signature: a=rsa-sha256;
 bh=zT632VR0gROFa3F9kvU2rdhPuRa8nKqiAx8K/kUtGPY=; c=relaxed/relaxed;
 d=hornetsecurity.com; h=from:to:date:subject:mime-version:; i=1; s=hse1;
 t=1772548678;
 b=VsqexbBmoNXIP9PnPDsdJs5QNnmVF9fLqm7iOXrrGBELbpbDTkdUSlS5IJW9NbRGNlpmYuZk
 6T8aQj9TduEb6Q0PiDXM/mxv/6en2ObFI22bLdie6dF/mgkIx1j9V3F4DsO9ghXLzqxRPNcr/fS
 KgKST4ReoK9y1p9ChJMulGm9gsuRE8QmbU0m8bvIRBunc56dooTTLMcUgLJkqwP9EjmxeYHHTb0
 loDDUYeRrpU2Uo0/IILK5BkO3QTCuy5gwOlg8VXK2Q4dni2rFpAX4Z8c+jDVHq/fYNQIiD3fRkE
 j70cT3LWogFAUg6zObhKZwifzRyupojPdMk8jDuE21e1Q==
ARC-Seal: a=rsa-sha256; cv=none; d=hornetsecurity.com; i=1; s=hse1;
 t=1772548678;
 b=N+B00EGz5H50tBTZFBW9aFyQepnF0H1BTGnKT6aAyhuUWjayEIdBLu6pMMV3wMLiJWAH2pSx
 oDtfKh0OlU2SetXR++Sci6+nioqYeue8u5TkA9ov32RO+q3ELT5FWNJJJzQG42JqBb2UVBH6FwG
 32phQgYqKt/CF9NGCN5jHdP47z+F4l7mwxMeTVBLjL+Cuv74gzOERRuCtjKQwYbGmZIBPtryjhp
 a8Ceh0z0LsHe04Jh+Wa3qH5WtXr46HHCWlPKqgk5GZ36fullrQI5SRWgVATsCLG/wPCFSteSHna
 8fLoqIjm31HN3PQ4FngPDrkS6ZpN6pr70VFlivS19J/pw==
Received: from he-nlb01-hz1.hornetsecurity.com ([94.100.132.6]) by mx-relay32-hz1.antispameurope.com;
 Tue, 03 Mar 2026 15:37:58 +0100
Received: from [10.123.75.134] (host-82-135-125-110.customer.m-online.net [82.135.125.110])
	(Authenticated sender: max.merchel@ew.tq-group.com)
	by hmail-p-smtp01-out03-hz1.hornetsecurity.com (Postfix) with ESMTPSA id A5C73CC0E07;
	Tue,  3 Mar 2026 15:37:53 +0100 (CET)
Message-ID: <ac506790-fbe4-4902-895a-a94822f11b39@ew.tq-group.com>
Date: Tue, 3 Mar 2026 15:37:53 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 0/4] ARM: dts: TQMa6UL: modify for use in bootloaders
To: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
 Conor Dooley <conor+dt@kernel.org>, Frank Li <Frank.Li@nxp.com>,
 Sascha Hauer <s.hauer@pengutronix.de>,
 Pengutronix Kernel Team <kernel@pengutronix.de>,
 Fabio Estevam <festevam@gmail.com>
Cc: linux@ew.tq-group.com, devicetree@vger.kernel.org, imx@lists.linux.dev,
 linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org
References: <20260220143107.186956-1-Max.Merchel@ew.tq-group.com>
Content-Language: en-US
From: Max Merchel <max.merchel@ew.tq-group.com>
In-Reply-To: <20260220143107.186956-1-Max.Merchel@ew.tq-group.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit
X-cloud-security-sender:max.merchel@ew.tq-group.com
X-cloud-security-recipient:devicetree@vger.kernel.org
X-cloud-security-crypt: load encryption module
X-cloud-security-Mailarchiv: E-Mail archived for: max.merchel@ew.tq-group.com
X-cloud-security-Mailarchivtype:outbound
X-cloud-security-Virusscan:CLEAN
X-cloud-security-disclaimer: This E-Mail was scanned by E-Mailservice on mx-relay32-hz1.antispameurope.com with 4fQJLV27Cgz9022
X-cloud-security-connect: he-nlb01-hz1.hornetsecurity.com[94.100.132.6], TLS=1, IP=94.100.132.6
X-cloud-security-Digest:f0f40d72e89aaf42e08c864d0bda316f
X-cloud-security:scantime:1.450
DKIM-Signature: a=rsa-sha256;
 bh=zT632VR0gROFa3F9kvU2rdhPuRa8nKqiAx8K/kUtGPY=; c=relaxed/relaxed;
 d=ew.tq-group.com;
 h=content-type:mime-version:subject:from:to:message-id:date; s=hse1;
 t=1772548678; v=1;
 b=MpUogbLVdQtfIQYGYmg0tBdU2mNGggBaKBvYwccPxdtYEuZIJzHzaimHkiLcNbURzJSXIRBk
 SvAi+3zwIpSNmvbdv4nhh6D5FLv0gEtI4O95qGVlNvlmsfheEM5yVHhT5zjsF/zxgL6XSd71qaY
 gDqOtprDmcY4oiqx/yXXL8OPJeGoJyX6S9bm3WCvMMqafdKUom80QRPmWLjgIzibisUUUfrUX0H
 p84RL7V6ufQ8n0+fmWUOXoKhzUjtG74earmlFkYU6ybeTOPEWPZiNtYj4EPEEKQpHfcf7G788X7
 EtvvAJ7wSigPRlu6uehEmHkfBvZDyiEpJu1RNSzt3Jrnw==
X-Rspamd-Queue-Id: 1BBEC1F1BD8
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=2];
	DMARC_POLICY_ALLOW(-0.50)[ew.tq-group.com,reject];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	R_DKIM_ALLOW(-0.20)[ew.tq-group.com:s=hse1];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FREEMAIL_TO(0.00)[kernel.org,nxp.com,pengutronix.de,gmail.com];
	TAGGED_FROM(0.00)[bounces-270567-lists,devicetree=lfdr.de];
	DKIM_TRACE(0.00)[ew.tq-group.com:+];
	RCVD_TLS_LAST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FROM_HAS_DN(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[12];
	RCVD_COUNT_FIVE(0.00)[5];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[max.merchel@ew.tq-group.com,devicetree@vger.kernel.org];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	NEURAL_HAM(-0.00)[-0.999];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TO_DN_SOME(0.00)[]
X-Rspamd-Action: no action


Am 20.02.26 um 15:31 schrieb Max Merchel:
> This series contains modifications for using Linux device trees
> in bootloaders. Changes from U-Boot bootloader are incorporated
> directly into the Linux device trees.
> 
> Changes in v2:
> Improved commit messages for commits that add boot-phase properties.
> Add forgotten boot property for the spba-bus in imx6ul.dtsi.
> 
> Max Merchel (4):
>    ARM: dts: imx6ul/imx6ull: add boot phase properties
>    ARM: dts: imx6ul[l]-tqma6ul[l]: add boot phase properties
>    ARM: dts: mba6ulx: add boot phase properties
>    ARM: dts: tqma6ul[l]: correct spelling of TQ-Systems
> 
>   arch/arm/boot/dts/nxp/imx/imx6ul-tqma6ul-common.dtsi   | 10 ++++++++++
>   arch/arm/boot/dts/nxp/imx/imx6ul-tqma6ul2.dtsi         |  1 +
>   arch/arm/boot/dts/nxp/imx/imx6ul-tqma6ul2l-mba6ulx.dts |  4 ++--
>   arch/arm/boot/dts/nxp/imx/imx6ul-tqma6ul2l.dtsi        |  1 +
>   arch/arm/boot/dts/nxp/imx/imx6ul-tqma6ulx-common.dtsi  |  1 +
>   arch/arm/boot/dts/nxp/imx/imx6ul-tqma6ulxl-common.dtsi |  1 +
>   arch/arm/boot/dts/nxp/imx/imx6ul.dtsi                  |  7 +++++++
>   arch/arm/boot/dts/nxp/imx/imx6ull-tqma6ull2.dtsi       |  1 +
>   .../boot/dts/nxp/imx/imx6ull-tqma6ull2l-mba6ulx.dts    |  2 +-
>   arch/arm/boot/dts/nxp/imx/imx6ull-tqma6ull2l.dtsi      |  3 ++-
>   arch/arm/boot/dts/nxp/imx/imx6ull.dtsi                 |  1 +
>   arch/arm/boot/dts/nxp/imx/mba6ulx.dtsi                 |  6 ++++++
>   12 files changed, 34 insertions(+), 4 deletions(-)
> 

Any further feedback on this?

-- 
Best regards,
Max

TQ-Systems GmbH | Mühlstraße 2, Gut Delling | 82229 Seefeld, Germany
Amtsgericht München, HRB 105018
Geschäftsführer: Detlef Schneider, Rüdiger Stahl, Stefan Schneider
http://www.tq-group.com/


