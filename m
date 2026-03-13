Return-Path: <devicetree+bounces-275073-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id GP+oA+HZs2mzbgAAu9opvQ
	(envelope-from <devicetree+bounces-275073-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Fri, 13 Mar 2026 10:33:21 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [IPv6:2600:3c04:e001:36c::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id C308E2808DE
	for <lists+devicetree@lfdr.de>; Fri, 13 Mar 2026 10:33:20 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 2CECA3083F88
	for <lists+devicetree@lfdr.de>; Fri, 13 Mar 2026 09:29:05 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 12F5F388E7B;
	Fri, 13 Mar 2026 09:29:02 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=bootlin.com header.i=@bootlin.com header.b="EDn0BA/N"
X-Original-To: devicetree@vger.kernel.org
Received: from smtpout-03.galae.net (smtpout-03.galae.net [185.246.85.4])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D818A36D9FA
	for <devicetree@vger.kernel.org>; Fri, 13 Mar 2026 09:29:00 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=185.246.85.4
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773394142; cv=none; b=hD5YkqQ+OkndruS7ox6E+XuPpZpyyuSaFMTJ03xGElehnojcpOv4IuWHo6voSgB2jrxXDE9UFYE2XxmgzKJV69snnGSMGQGzspwpDjLoSqQr50tr31B1mB/dCGR/PtjUgF7z6uWcfC2zZ6b8o9fuJ9FfFllsmx3o2i+yQKYDgxo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773394142; c=relaxed/simple;
	bh=nYRFnLPrTONi7U7O1Enq4WB5OEJpZYPZGRPBstu1j9I=;
	h=From:To:Cc:In-Reply-To:References:Subject:Message-Id:Date:
	 MIME-Version:Content-Type; b=EP1uaCDyeAzGe18E9Wf1q+1SGyBS6mgNcLKpl5pCNGcqAHbp+YJ7sw1FarB0SVbBU5LAcoDprtbJt0Io4NfvwiTcg/j28rmJaj7boNihhZIeCYWaTK45AxdVjfeCuRB4k4OsrPtmZ1yJIaU5mqgM4ET3b1pU1MrZ1nhx3Ce6rfc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=bootlin.com; spf=pass smtp.mailfrom=bootlin.com; dkim=pass (2048-bit key) header.d=bootlin.com header.i=@bootlin.com header.b=EDn0BA/N; arc=none smtp.client-ip=185.246.85.4
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=bootlin.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=bootlin.com
Received: from smtpout-01.galae.net (smtpout-01.galae.net [212.83.139.233])
	by smtpout-03.galae.net (Postfix) with ESMTPS id 5421E4E42680;
	Fri, 13 Mar 2026 09:28:59 +0000 (UTC)
Received: from mail.galae.net (mail.galae.net [212.83.136.155])
	by smtpout-01.galae.net (Postfix) with ESMTPS id 24B3960027;
	Fri, 13 Mar 2026 09:28:59 +0000 (UTC)
Received: from [127.0.0.1] (localhost [127.0.0.1]) by localhost (Mailerdaemon) with ESMTPSA id 4B88510369555;
	Fri, 13 Mar 2026 10:28:54 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=bootlin.com; s=dkim;
	t=1773394138; h=from:subject:date:message-id:to:cc:mime-version:content-type:
	 content-transfer-encoding:in-reply-to:references;
	bh=MeXmCnU6DkpJjDmOkF4Kl8YHcZPKKCKszdRslHD03ME=;
	b=EDn0BA/Np4DWs10goVewjq2nRwiiWAdgjN1OO52/TU46cKug/fB4LXKFTooud2iCJ7WFAM
	yIAqT5YepKsqHa3lrxEd2DYfzm88Ky+XC84kZzE9B4R3bS6R56Sv7e1wj5kDnUseMs9IMw
	bMD4qaRz3DmyYibHFl4Av5D6gVIKWihqomEPUaQboC2wXM6LGTD5GTr2czSHmtcboZ60iT
	qkNfahVXekJOPEc3EdTw4x8WOzD5nghJWlItGidksZkOhgDvHzAjqQXjpumqlGJODE54AU
	VnuUg8GSyjAjb/C6lVv1uwlwKe/lLeOVbZkKqXjuwLgK8CNsfPaz8ZcogAFaUw==
From: Alexandre Belloni <alexandre.belloni@bootlin.com>
To: Conor Dooley <conor+dt@kernel.org>, devicetree@vger.kernel.org, 
 Frank Li <Frank.Li@nxp.com>, Frieder Schrempf <frieder.schrempf@kontron.de>, 
 imx@lists.linux.dev, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org, 
 linux-rtc@vger.kernel.org, Rob Herring <robh@kernel.org>, 
 Sascha Hauer <s.hauer@pengutronix.de>, Shawn Guo <shawnguo@kernel.org>, 
 Frieder Schrempf <frieder@fris.de>
Cc: Annette Kobou <annette.kobou@kontron.de>, 
 Fabio Estevam <festevam@gmail.com>, 
 Pengutronix Kernel Team <kernel@pengutronix.de>
In-Reply-To: <20260309085749.25747-1-frieder@fris.de>
References: <20260309085749.25747-1-frieder@fris.de>
Subject: Re: (subset) [PATCH v3 0/2] Kontron i.MX8MP OSM Devicetree Fixups
Message-Id: <177339410764.2782875.6884612032294375531.b4-ty@bootlin.com>
Date: Fri, 13 Mar 2026 10:28:27 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.15-dev
X-Developer-Signature: v=1; a=openpgp-sha256; l=439;
 i=alexandre.belloni@bootlin.com; h=from:subject:message-id;
 bh=nYRFnLPrTONi7U7O1Enq4WB5OEJpZYPZGRPBstu1j9I=;
 b=owEBbQKS/ZANAwAKAWOk3DBscDoyAcsmYgBps9jI1uZM7eWpDS8rTcWpBXfEtGRKFhN+YxZMF
 yZmooD0hC+JAjMEAAEKAB0WIQQGqwVVleHyz/Q7kmJjpNwwbHA6MgUCabPYyAAKCRBjpNwwbHA6
 MlhnD/4+HCdR7zX8Z+uBkvQwNxwW1gwSrniKNKkxjYztDiGeFGH7NWiLecjKwfqw/TYsvqY1Fz8
 y4GeFdusQtmplFJ90uqQ/2Oq7u+bgsM2p8O8LtEfdToqpnnm+lEiWfEOLG1J8cq63h5yhFeJdM4
 tvh97+PxquzdrOD3xSCTy8oUKUssqKPMzLpgifgYSysrdvvY6+vxv8lqD1fBeGEDFf4R80bH47G
 HX9suO2A1Jhjlf/n/3/c/LiHS2/lqfFpWpdiQ74xBIwMgXgNiqlJFm795Qr6OkWZ3ljxqrU+tUA
 maQ6I5l+B1Ep1IuGmNO6xLVAd+Gwza2isxomF4Ik05JhNufWiajlw0CDO1TepHh+8jRFqr5EtMo
 yK3f2PrXfqo0VZDf6E9TFtrtXc6WjGj5ARogE5EzKBaRltlsNKotm0YxiI95ioS50GQ/gTYaCr3
 1841EXYY3o8BX0vun2h93YRkVvxE8T678hc5olnnHMietCfNg+MhPGaEo1g5x4oP2cptZKdL/o3
 dg2nKsnazMcGYv4dDgknywEWYT/cHIT/eoj/DBom5Np0Xm2pghaYqDWBgoOtWrqeWFO7pLM95Nl
 wS75hU/bnsNrEi1Oua69YS1072MxINGSSadX0s/HOL8xm9+VDFB2fVJF1QsV7KSaJRn1Iv9x8IU
 pQNUThWh9LI9KRQ==
X-Developer-Key: i=alexandre.belloni@bootlin.com; a=openpgp;
 fpr=D42657F65BEB9D45A004FCFAA6CD9F096F642CB3
X-Last-TLS-Session-Version: TLSv1.3
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[bootlin.com,reject];
	R_DKIM_ALLOW(-0.20)[bootlin.com:s=dkim];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c04:e001:36c::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-275073-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	FREEMAIL_CC(0.00)[kontron.de,gmail.com,pengutronix.de];
	RCPT_COUNT_TWELVE(0.00)[16];
	MIME_TRACE(0.00)[0:+];
	FROM_HAS_DN(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c04::/32, country:SG];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCVD_COUNT_FIVE(0.00)[6];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[alexandre.belloni@bootlin.com,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[bootlin.com:+];
	NEURAL_HAM(-0.00)[-1.000];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MID_RHS_MATCH_FROM(0.00)[];
	TO_DN_SOME(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[bootlin.com:dkim,bootlin.com:mid,kontron.de:email,tor.lore.kernel.org:helo,tor.lore.kernel.org:rdns]
X-Rspamd-Queue-Id: C308E2808DE
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

On Mon, 09 Mar 2026 09:57:41 +0100, Frieder Schrempf wrote:
> Kontron i.MX8MP OSM Devicetree Fixups
> 
> From: Frieder Schrempf <frieder.schrempf@kontron.de>
> 
> This contains three fixes and one cosmetic change for
> the Kontron i.MX8MP OSM devices.
> 
> [...]

Applied, thanks!

[1/2] dt-bindings: rtc: microcrystal,rv3028: Allow to specify vdd-supply
      https://git.kernel.org/abelloni/c/10663044bee5

Best regards,


