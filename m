Return-Path: <devicetree+bounces-310506-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id kDSRJkHWKmpmxwMAu9opvQ
	(envelope-from <devicetree+bounces-310506-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Thu, 11 Jun 2026 17:37:37 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [172.105.105.114])
	by mail.lfdr.de (Postfix) with ESMTPS id 0424D673211
	for <lists+devicetree@lfdr.de>; Thu, 11 Jun 2026 17:37:37 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=kernel.org header.s=k20260515 header.b=Z8tiSgNI;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-310506-lists+devicetree=lfdr.de@vger.kernel.org" designates 172.105.105.114 as permitted sender) smtp.mailfrom="devicetree+bounces-310506-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=pass (policy=quarantine) header.from=kernel.org;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id DC40F30D9436
	for <lists+devicetree@lfdr.de>; Thu, 11 Jun 2026 15:37:04 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 30709429837;
	Thu, 11 Jun 2026 15:35:57 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7D73040BCD0;
	Thu, 11 Jun 2026 15:35:53 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781192156; cv=none; b=ORQpiKWdPByiwHreU5Z5r/29aDgAUZdoTnCEyv6LnGjTwWn9VO2OPWSvI7wfZWu0ATC5y+mkHJcOITz0Ltw/ukSfV4tLtSlm2VQRohK4wO6YN8PMQiRkwipXoRchKrp9+V/ljLMX9FlQdKyAiS9Mm8D7iMSzXrVsCUOhIakuaOg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781192156; c=relaxed/simple;
	bh=kRgy2f2X2db0/MJBsAxfBWhVYjxj58x10FeAWGpoIOY=;
	h=From:To:Cc:In-Reply-To:References:Subject:Message-Id:Date:
	 MIME-Version:Content-Type; b=OD1LqZT/nUF4oMd4C+BdeXu8EAp8oPFVqyWoug7a5RF+sz/yt/SxTQEYcAGmBvXfU6Yl1MmGrG+v+kzYf2EaHbRp+YXW8zMoV0MvQvOQPMTpd48UtwKrnp+JTfKc+CJ5rZzGsBK5csRHrGSDq5ZP3KCp4lCefBRiLucf5bMHqpw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Z8tiSgNI; arc=none smtp.client-ip=100.103.45.18
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 79E701F00893;
	Thu, 11 Jun 2026 15:35:49 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1781192153;
	bh=yHHu3KmrI9zJ+e6R4+US0jxvIkq583Z8aVM5y5adfUU=;
	h=From:To:Cc:In-Reply-To:References:Subject:Date;
	b=Z8tiSgNIDM/EWWsqzCXO6CUWe/YVGFxQI/lJHr22emjHju6nvrJDfixrn7lCuYlIZ
	 weAWYEvzyXcB5CmYparzKJCBsz6cBKFVgepl3UcydJec1z60DhCwp/Bv3wmKnnijXU
	 BQHQSm7QIzbNr07jYlkto6o8zdOPtmWLMUdKL/klgAuIKJAiBHvW3lun+LUr33hfTv
	 G159nBqXm5wLiUPfLJTQDb29e2xDAFniBaa6lshHlGLFG08pOB1yvxua6T/PM/Zzle
	 CA4jEThbR7zisHOgnDIrbmBWWkkSsHZoskoxwmC5dnPal7DeRsUtIP7tITnwr9grwK
	 4eVei0Cg84Ccg==
From: Vinod Koul <vkoul@kernel.org>
To: Kishon Vijay Abraham I <kishon@kernel.org>, 
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, 
 Neil Armstrong <neil.armstrong@linaro.org>, 
 Dimitri Fedrau <dima.fedrau@gmail.com>, 
 Dimitri Fedrau <dimitri.fedrau@liebherr.com>
Cc: linux-phy@lists.infradead.org, devicetree@vger.kernel.org, 
 linux-kernel@vger.kernel.org, Conor Dooley <conor.dooley@microchip.com>, 
 lee.lockhey@gmail.com, Marc Kleine-Budde <mkl@pengutronix.de>
In-Reply-To: <20260602-tja1145-support-v6-0-0e0ffc8ee63d@liebherr.com>
References: <20260602-tja1145-support-v6-0-0e0ffc8ee63d@liebherr.com>
Subject: Re: [PATCH v6 0/2] phy: add basic support for NXPs TJA1145 CAN
 transceiver
Message-Id: <178119214911.568088.18225085446293272381.b4-ty@kernel.org>
Date: Thu, 11 Jun 2026 21:05:49 +0530
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.13.0
X-Rspamd-Action: no action
X-Spamd-Result: default: False [-3.66 / 15.00];
	WHITELIST_SPF_DKIM(-3.00)[kernel.org:d:+,kernel.org:s:+];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20260515];
	R_SPF_ALLOW(-0.20)[+ip4:172.105.105.114:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FORGED_RECIPIENTS(0.00)[m:kishon@kernel.org,m:robh@kernel.org,m:krzk+dt@kernel.org,m:conor+dt@kernel.org,m:neil.armstrong@linaro.org,m:dima.fedrau@gmail.com,m:dimitri.fedrau@liebherr.com,m:linux-phy@lists.infradead.org,m:devicetree@vger.kernel.org,m:linux-kernel@vger.kernel.org,m:conor.dooley@microchip.com,m:lee.lockhey@gmail.com,m:mkl@pengutronix.de,m:krzk@kernel.org,m:conor@kernel.org,m:dimafedrau@gmail.com,m:leelockhey@gmail.com,s:lists@lfdr.de];
	MIME_TRACE(0.00)[0:+];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	FREEMAIL_TO(0.00)[kernel.org,linaro.org,gmail.com,liebherr.com];
	TAGGED_FROM(0.00)[bounces-310506-lists,devicetree=lfdr.de];
	FORWARDED(0.00)[lists@lfdr.de];
	RCPT_COUNT_TWELVE(0.00)[13];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORGED_SENDER(0.00)[vkoul@kernel.org,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[kernel.org:+];
	TO_DN_SOME(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	ALIAS_RESOLVED(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[vkoul@kernel.org,devicetree@vger.kernel.org];
	FREEMAIL_CC(0.00)[lists.infradead.org,vger.kernel.org,microchip.com,gmail.com,pengutronix.de];
	MID_RHS_MATCH_FROM(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.105.96.0/20, country:SG];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[tor.lore.kernel.org:rdns,tor.lore.kernel.org:helo,vger.kernel.org:from_smtp]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 0424D673211


On Tue, 02 Jun 2026 10:25:36 +0200, Dimitri Fedrau wrote:
> Add basic driver support for NXPs TJA1145 CAN transceiver which brings the
> PHY up/down by switching to normal/standby mode using SPI commands.
> 
> 

Applied, thanks!

[1/2] dt-bindings: phy: add support for NXPs TJA1145 CAN transceiver
      commit: baacd0af457c2505137c4774e71efe044c11b26d
[2/2] phy: add basic support for NXPs TJA1145 CAN transceiver
      commit: e5a9c1c917b59a4aff066b9f317501834c6d5af2

Best regards,
-- 
~Vinod



