Return-Path: <devicetree+bounces-325237-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id dmJQKPyXVGoQoAMAu9opvQ
	(envelope-from <devicetree+bounces-325237-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Mon, 13 Jul 2026 09:47:08 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 0550474854A
	for <lists+devicetree@lfdr.de>; Mon, 13 Jul 2026 09:47:08 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=bootlin.com header.s=dkim header.b=rwZx25YC;
	dmarc=pass (policy=reject) header.from=bootlin.com;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-325237-lists+devicetree=lfdr.de@vger.kernel.org" designates 172.234.253.10 as permitted sender) smtp.mailfrom="devicetree+bounces-325237-lists+devicetree=lfdr.de@vger.kernel.org";
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 6596B3006B7C
	for <lists+devicetree@lfdr.de>; Mon, 13 Jul 2026 07:42:22 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 961F638E11A;
	Mon, 13 Jul 2026 07:42:21 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtpout-04.galae.net (smtpout-04.galae.net [185.171.202.116])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 58C9A2750FB
	for <devicetree@vger.kernel.org>; Mon, 13 Jul 2026 07:42:19 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783928541; cv=none; b=sRCL8PPKueOnhCdUwKX6DJhtqD1jGRbT1X5AOsTw4jw3dwgvna1s2SEwc1R6Iy2GroRRbzKagw++3C06tx92mFJRSWFUACSITIKBzHb1MdNVBFtSqjy9qC5NXZnfxCCyRz6Ku4yTwMg/zzWHmG146NpQRntRFzuDg8Ea0M8R+Pk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783928541; c=relaxed/simple;
	bh=lDVfV0skgc/ApNInDKtUBUGTmyRgFFC24S0LVIk+hgU=;
	h=Mime-Version:Content-Type:Date:Message-Id:Subject:Cc:From:To:
	 References:In-Reply-To; b=JA+YO25rTCSkJEgCkYCtry/Ikl5bZrK8avxGT32zi+Fyakfh24rW3kwrgIe4SJTdMJP1ndS0d5IduB8Pp5mHuyExhbWyCjVNIBePB5hgDbweYl5prp2MVG90vHKzbmjFpc5rqLznikmqS/JNs4Gaiws+5cu19GK2JNJkj31eGwQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=bootlin.com; spf=pass smtp.mailfrom=bootlin.com; dkim=pass (2048-bit key) header.d=bootlin.com header.i=@bootlin.com header.b=rwZx25YC; arc=none smtp.client-ip=185.171.202.116
Received: from smtpout-01.galae.net (smtpout-01.galae.net [212.83.139.233])
	by smtpout-04.galae.net (Postfix) with ESMTPS id 9D345C2BB0F;
	Mon, 13 Jul 2026 07:42:33 +0000 (UTC)
Received: from mail.galae.net (mail.galae.net [212.83.136.155])
	by smtpout-01.galae.net (Postfix) with ESMTPS id 9FB2460341;
	Mon, 13 Jul 2026 07:42:17 +0000 (UTC)
Received: from [127.0.0.1] (localhost [127.0.0.1]) by localhost (Mailerdaemon) with ESMTPSA id 5C3BB11BD3A38;
	Mon, 13 Jul 2026 09:42:05 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=bootlin.com; s=dkim;
	t=1783928536; h=from:subject:date:message-id:to:cc:mime-version:content-type:
	 content-transfer-encoding:in-reply-to:references;
	bh=Oo4rIyniLa3IrOryYngEBRNx17hUDRIHRdfHv96/rA8=;
	b=rwZx25YCNBbEgGMtX75PvBzTlm1s61DtQzrE3ZeCtVUl+HzTfcVlC1R3kee22hR6JxcP4E
	S3NHkHLMPJkNknT6TwRDk8lYb4JH7a1Gdt1aeoUKgZdr8pu6BKAzBxidM8F5cVbGcq5+7k
	sBHcdsSB3CSzMIehKZC2UhNhCuFMt5mrMe38z8O//+6o7W0BYRgTBrB08dKDhhVO3FMlRs
	lvZiq1KqYKZPN1TYbDcDrG2ReR90cWcSpHcDMr1qND8rUhSB0k6qIbt55eV+gS0JZrfimE
	mMqD4zYxC3rJjeF0zrGAf5Pv8MhPZy8xWXc1dZwt2LxqIGaHiLW6uL3CLbRkXA==
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
Mime-Version: 1.0
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain; charset=UTF-8
Date: Mon, 13 Jul 2026 09:42:05 +0200
Message-Id: <DJX9VUXFJBJ1.3SPE0QKF0528B@bootlin.com>
Subject: Re: [PATCH 1/5] arm64: dts: freescale: Import optee node from
 u-boot device trees
Cc: "Rob Herring" <robh@kernel.org>, "Krzysztof Kozlowski"
 <krzk+dt@kernel.org>, "Conor Dooley" <conor+dt@kernel.org>, "Frank Li"
 <Frank.Li@nxp.com>, "Sascha Hauer" <s.hauer@pengutronix.de>, "Pengutronix
 Kernel Team" <kernel@pengutronix.de>, "Fabio Estevam" <festevam@gmail.com>,
 "Maxime Coquelin" <mcoquelin.stm32@gmail.com>, "Alexandre Torgue"
 <alexandre.torgue@foss.st.com>, "Wei Xu" <xuwei5@hisilicon.com>, "Andrew
 Jeffery" <andrew@codeconstruct.com.au>, "Avi Fishman"
 <avifishman70@gmail.com>, "Tomer Maimon" <tmaimon77@gmail.com>, "Tali
 Perry" <tali.perry1@gmail.com>, "Patrick Venture" <venture@google.com>,
 "Nancy Yuen" <yuenn@google.com>, "Benjamin Fair" <benjaminfair@google.com>,
 "Thomas Petazzoni" <thomas.petazzoni@bootlin.com>,
 <devicetree@vger.kernel.org>, <imx@lists.linux.dev>,
 <linux-arm-kernel@lists.infradead.org>, <linux-kernel@vger.kernel.org>,
 <linux-stm32@st-md-mailman.stormreply.com>, <openbmc@lists.ozlabs.org>,
 "Tom Rini" <trini@konsulko.com>, "Peter Robinson" <pbrobinson@gmail.com>
From: "Mathieu Dubois-Briand" <mathieu.dubois-briand@bootlin.com>
To: "Frank Li" <Frank.li@oss.nxp.com>
X-Mailer: aerc 0.21.0-0-g5549850facc2
References: <20260710-mathieu-uboot-dts-import-v1-0-ffe0210e50c9@bootlin.com> <20260710-mathieu-uboot-dts-import-v1-1-ffe0210e50c9@bootlin.com> <alFfeOFz2UA7hAbK@SMW015318>
In-Reply-To: <alFfeOFz2UA7hAbK@SMW015318>
X-Last-TLS-Session-Version: TLSv1.3
X-Rspamd-Action: no action
X-Spamd-Result: default: False [-0.16 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[bootlin.com,reject];
	MV_CASE(0.50)[];
	R_DKIM_ALLOW(-0.20)[bootlin.com:s=dkim];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-325237-lists,devicetree=lfdr.de];
	FORWARDED(0.00)[lists@lfdr.de];
	MIME_TRACE(0.00)[0:+];
	RCPT_COUNT_TWELVE(0.00)[27];
	FORGED_SENDER(0.00)[mathieu.dubois-briand@bootlin.com,devicetree@vger.kernel.org];
	RCVD_TLS_LAST(0.00)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	FREEMAIL_CC(0.00)[kernel.org,nxp.com,pengutronix.de,gmail.com,foss.st.com,hisilicon.com,codeconstruct.com.au,google.com,bootlin.com,vger.kernel.org,lists.linux.dev,lists.infradead.org,st-md-mailman.stormreply.com,lists.ozlabs.org,konsulko.com];
	FORGED_RECIPIENTS(0.00)[m:robh@kernel.org,m:krzk+dt@kernel.org,m:conor+dt@kernel.org,m:Frank.Li@nxp.com,m:s.hauer@pengutronix.de,m:kernel@pengutronix.de,m:festevam@gmail.com,m:mcoquelin.stm32@gmail.com,m:alexandre.torgue@foss.st.com,m:xuwei5@hisilicon.com,m:andrew@codeconstruct.com.au,m:avifishman70@gmail.com,m:tmaimon77@gmail.com,m:tali.perry1@gmail.com,m:venture@google.com,m:yuenn@google.com,m:benjaminfair@google.com,m:thomas.petazzoni@bootlin.com,m:devicetree@vger.kernel.org,m:imx@lists.linux.dev,m:linux-arm-kernel@lists.infradead.org,m:linux-kernel@vger.kernel.org,m:linux-stm32@st-md-mailman.stormreply.com,m:openbmc@lists.ozlabs.org,m:trini@konsulko.com,m:pbrobinson@gmail.com,m:Frank.li@oss.nxp.com,m:krzk@kernel.org,m:conor@kernel.org,m:mcoquelinstm32@gmail.com,m:taliperry1@gmail.com,s:lists@lfdr.de];
	FROM_HAS_DN(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCVD_COUNT_FIVE(0.00)[6];
	ALIAS_RESOLVED(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[mathieu.dubois-briand@bootlin.com,devicetree@vger.kernel.org];
	PRECEDENCE_BULK(0.00)[];
	DKIM_TRACE(0.00)[bootlin.com:+];
	MID_RHS_MATCH_FROM(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	TO_DN_SOME(0.00)[];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	REDIRECTOR_URL(0.00)[aka.ms];
	DBL_BLOCKED_OPENRESOLVER(0.00)[bootlin.com:dkim,bootlin.com:mid,bootlin.com:from_mime,bootlin.com:url,bootlin.com:email,sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,vger.kernel.org:from_smtp,aka.ms:url]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 0550474854A

On Fri Jul 10, 2026 at 11:09 PM CEST, Frank Li wrote:
> On Fri, Jul 10, 2026 at 05:31:34PM +0200, Mathieu Dubois-Briand wrote:
>> [You don't often get email from mathieu.dubois-briand@bootlin.com. Learn=
 why this is important at https://aka.ms/LearnAboutSenderIdentification ]
>>
>> U-Boot is importing kernel device trees for these platforms, but adding
>> a firmware node to enable communication with OP-TEE. Importing
>> changes here will allow to remove these additions in U-Boot.
>>
>> Signed-off-by: Mathieu Dubois-Briand <mathieu.dubois-briand@bootlin.com>
>> ---
>>  arch/arm64/boot/dts/freescale/imx8mm.dtsi                | 7 +++++++
>>  arch/arm64/boot/dts/freescale/imx8mn.dtsi                | 7 +++++++
>>  arch/arm64/boot/dts/freescale/imx8mp.dtsi                | 7 +++++++
>
> Please split soc dts change to new patch.
>
> Frank
>

Sure, I will split the changes.

Thanks,
Mathieu

--=20
Mathieu Dubois-Briand, Bootlin
Embedded Linux and Kernel engineering
https://bootlin.com


