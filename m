Return-Path: <devicetree+bounces-283054-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id oPDiHV7py2myMQYAu9opvQ
	(envelope-from <devicetree+bounces-283054-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 31 Mar 2026 17:33:50 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [IPv6:2600:3c04:e001:36c::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id E152C36BC34
	for <lists+devicetree@lfdr.de>; Tue, 31 Mar 2026 17:33:49 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 635B430DD381
	for <lists+devicetree@lfdr.de>; Tue, 31 Mar 2026 15:26:03 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 342914035AD;
	Tue, 31 Mar 2026 15:26:01 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from metis.whiteo.stw.pengutronix.de (metis.whiteo.stw.pengutronix.de [185.203.201.7])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E3B3A3F9F59
	for <devicetree@vger.kernel.org>; Tue, 31 Mar 2026 15:25:59 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=185.203.201.7
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1774970761; cv=none; b=W/1s3M5tzIoL3MQm7u1SDXOVgaJVdJedN1dsl0/LafIp+zE8XbKKo9IEU8OgxdBU/4u4AZD8v2nVhbu11J/uIxinN8Cjk7aAG6ukGnRFfUVdRcmqyiW/tghJWo2qpeo+HztOY+c8mD1ffBNS3+nivFNmjB4QJd9kH0cV9n1dsFM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1774970761; c=relaxed/simple;
	bh=3sabUIdOVirhPKF/KspURBtbXhgZnJELjhfFW10U9Zg=;
	h=Message-ID:Subject:From:To:Cc:Date:In-Reply-To:References:
	 Content-Type:MIME-Version; b=GGXCBHd8bSTdyDDYQeyCWVlqi3WzW+gN1AO8zSpOv5EydEG6YIiUjZuC2Vq/BQSUqICxUuxcm9MC6V+Y2p359gCV2sArKwYiFbnumyhtgyMFHdJvL7sF0A4jlgcV73eQ0jTB28C2ugXQRBz4GJdfpTzMIra2ou2AqQXN5mLwX9Q=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=pengutronix.de; spf=pass smtp.mailfrom=pengutronix.de; arc=none smtp.client-ip=185.203.201.7
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=pengutronix.de
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=pengutronix.de
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <p.zabel@pengutronix.de>)
	id 1w7ayO-0007xO-KT; Tue, 31 Mar 2026 17:25:44 +0200
Received: from lupine.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::4e] helo=lupine)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <p.zabel@pengutronix.de>)
	id 1w7ayN-0033vK-36;
	Tue, 31 Mar 2026 17:25:43 +0200
Received: from pza by lupine with local (Exim 4.98.2)
	(envelope-from <p.zabel@pengutronix.de>)
	id 1w7ayN-00000000FEZ-3fQI;
	Tue, 31 Mar 2026 17:25:43 +0200
Message-ID: <f619c0b56d94ac666bb8914d0740e2f905c0e347.camel@pengutronix.de>
Subject: Re: [PATCH 1/2] reset: amlogic: t7: Fix null reset ops
From: Philipp Zabel <p.zabel@pengutronix.de>
To: Ronald Claveau <linux-kernel-dev@aliel.fr>, Neil Armstrong	
 <neil.armstrong@linaro.org>, Kevin Hilman <khilman@baylibre.com>, Jerome
 Brunet	 <jbrunet@baylibre.com>, Martin Blumenstingl
 <martin.blumenstingl@googlemail.com>,  Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>
Cc: linux-arm-kernel@lists.infradead.org, linux-amlogic@lists.infradead.org,
 	linux-kernel@vger.kernel.org, devicetree@vger.kernel.org
Date: Tue, 31 Mar 2026 17:25:43 +0200
In-Reply-To: <20260331-fix-aml-t7-null-reset-v1-1-eb95b625234c@aliel.fr>
References: <20260331-fix-aml-t7-null-reset-v1-0-eb95b625234c@aliel.fr>
	 <20260331-fix-aml-t7-null-reset-v1-1-eb95b625234c@aliel.fr>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
User-Agent: Evolution 3.56.2-0+deb13u1 
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
X-SA-Exim-Connect-IP: 2a0a:edc0:0:c01:1d::a2
X-SA-Exim-Mail-From: p.zabel@pengutronix.de
X-SA-Exim-Scanned: No (on metis.whiteo.stw.pengutronix.de); SAEximRunCond expanded to false
X-PTX-Original-Recipient: devicetree@vger.kernel.org
X-Spamd-Result: default: False [0.04 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c04:e001:36c::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FROM_HAS_DN(0.00)[];
	TAGGED_FROM(0.00)[bounces-283054-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	FREEMAIL_TO(0.00)[aliel.fr,linaro.org,baylibre.com,googlemail.com,kernel.org];
	FORGED_SENDER_MAILLIST(0.00)[];
	DMARC_NA(0.00)[pengutronix.de];
	RCPT_COUNT_TWELVE(0.00)[12];
	MIME_TRACE(0.00)[0:+];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c04::/32, country:SG];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[p.zabel@pengutronix.de,devicetree@vger.kernel.org];
	NEURAL_SPAM(0.00)[0.717];
	RCVD_COUNT_FIVE(0.00)[6];
	MID_RHS_MATCH_FROM(0.00)[];
	R_DKIM_NA(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	DBL_BLOCKED_OPENRESOLVER(0.00)[tor.lore.kernel.org:helo,tor.lore.kernel.org:rdns,pengutronix.de:mid,pengutronix.de:url,aliel.fr:email]
X-Rspamd-Queue-Id: E152C36BC34
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

On Di, 2026-03-31 at 16:24 +0200, Ronald Claveau wrote:
> Fix missing reset ops causing kernel null pointer dereference.
> This SOC's reset is currently not used yet.
>=20
> Signed-off-by: Ronald Claveau <linux-kernel-dev@aliel.fr>

Applied to reset/fixes, thanks!

[1/2] reset: amlogic: t7: Fix null reset ops
      https://git.pengutronix.de/cgit/pza/linux/commit/?id=3D9797524ef2b6

regards
Philipp

