Return-Path: <devicetree+bounces-312312-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id dWD2M5bvMGryYwUAu9opvQ
	(envelope-from <devicetree+bounces-312312-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 16 Jun 2026 08:39:18 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [172.232.135.74])
	by mail.lfdr.de (Postfix) with ESMTPS id 6C7B368C952
	for <lists+devicetree@lfdr.de>; Tue, 16 Jun 2026 08:39:18 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=linux.dev header.s=key1 header.b=eldbJbhc;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-312312-lists+devicetree=lfdr.de@vger.kernel.org" designates 172.232.135.74 as permitted sender) smtp.mailfrom="devicetree+bounces-312312-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=pass (policy=none) header.from=linux.dev;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id DACCC300E15B
	for <lists+devicetree@lfdr.de>; Tue, 16 Jun 2026 06:39:17 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E87213ED10F;
	Tue, 16 Jun 2026 06:39:16 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from out-182.mta0.migadu.com (out-182.mta0.migadu.com [91.218.175.182])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A5FE13E7BCB
	for <devicetree@vger.kernel.org>; Tue, 16 Jun 2026 06:39:15 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781591956; cv=none; b=TTVXYUbjoMoPC3I3fWOWcDSNrtvb6jiK2R0G2MbrSpXpIK6pgTPkYA2wtq55iYIbWIgS7Q+xCEB228b6z1wH0remH3VRLqPScpygNLEzkfzNcduwb7uBxala0xXAYcxsTN+9/FEPdENVfLf5vqRiRzratC7HquVmCRgDHIu2HKc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781591956; c=relaxed/simple;
	bh=dB5P5B/L5SNNgC+K83xGRTBS2wZMWknW0X0ek85H/64=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=qxfI6SNcNCSkQjPFiX57hpoljVtSfiOH5hYGPGwMc8u6YoDIX16IigwsLR8SayoNZoC5BWS8D21Q7fPQLY1Auh2uBeWCFaFcV+4hVnB/kVSOkBclvCiSC4b8JQ5azxVL8l/eQpqJhO1eblG4Q9ANXl6PDymsv7J/M5SszWfezwk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linux.dev; spf=pass smtp.mailfrom=linux.dev; dkim=pass (1024-bit key) header.d=linux.dev header.i=@linux.dev header.b=eldbJbhc; arc=none smtp.client-ip=91.218.175.182
Date: Tue, 16 Jun 2026 09:38:54 +0300
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linux.dev; s=key1;
	t=1781591943; h=from:from:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:cc:mime-version:mime-version:
	 content-type:content-type:in-reply-to:in-reply-to:  references:references;
	bh=GVfOE2XFEICmBfaDMRSO2hHo1iKXdQtzTTUMFwkkHZU=;
	b=eldbJbhcCUbmohGydeuNrYt91TP1j1ZEKBHk7ckMGupznOuiMRg0g59G3TLIVD1+UsflIw
	V+Kj34AFfislA/kxuiDuxUmnQkuJq+z3Yu/LDJTlGdw6JNHdMorkbiGFU41vHaIgNaBQzO
	NMkdPZViEC5AELJG6WL53W1WBkU/YXU=
X-Report-Abuse: Please report any abuse attempt to abuse@migadu.com and include these headers.
From: Matti Vaittinen <matti.vaittinen@linux.dev>
To: Matti Vaittinen <mazziesaccount@gmail.com>,
	Matti Vaittinen <matti.vaittinen@fi.rohmeurope.com>,
	Matti Vaittinen <matti.vaittinen@linux.dev>
Cc: Guenter Roeck <linux@roeck-us.net>, Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Jonathan Corbet <corbet@lwn.net>,
	Shuah Khan <skhan@linuxfoundation.org>,
	Wensheng Wang <wenswang@yeah.net>,
	Ashish Yadav <ashish.yadav@infineon.com>,
	Matti Vaittinen <mazziesaccount@gmail.com>,
	Kim Seer Paller <kimseer.paller@analog.com>,
	Cedric Encarnacion <cedricjustine.encarnacion@analog.com>,
	Chris Packham <chris.packham@alliedtelesis.co.nz>,
	Yuxi Wang <Yuxi.Wang@monolithicpower.com>,
	Charles Hsu <hsu.yungteng@gmail.com>,
	ChiShih Tsai <tomtsai764@gmail.com>, linux-hwmon@vger.kernel.org,
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
	linux-doc@vger.kernel.org
Subject: [PATCH 5/7] doc: adm1275: Add ROHM BD12790
Message-ID: <7bfa22c245b81c8027736019aff717cc1f5039c8.1781591132.git.mazziesaccount@gmail.com>
Reply-To: Matti Vaittinen <mazziesaccount@gmail.com>
References: <cover.1781591132.git.mazziesaccount@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="bBkoSyq3MENugf+z"
Content-Disposition: inline
In-Reply-To: <cover.1781591132.git.mazziesaccount@gmail.com>
X-Migadu-Flow: FLOW_OUT
X-Rspamd-Action: no action
X-Spamd-Result: default: False [0.24 / 15.00];
	SIGNED_PGP(-2.00)[];
	FREEMAIL_REPLYTO_NEQ_FROM(2.00)[];
	SUSPICIOUS_RECIPS(1.50)[];
	MID_CONTAINS_TO(1.00)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[linux.dev,none];
	R_DKIM_ALLOW(-0.20)[linux.dev:s=key1];
	MIME_GOOD(-0.20)[multipart/signed,text/plain];
	R_SPF_ALLOW(-0.20)[+ip4:172.232.135.74:c];
	MAILLIST(-0.15)[generic];
	HAS_LIST_UNSUB(-0.01)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sto.lore.kernel.org:rdns,sto.lore.kernel.org:helo,rohm.com:url,vger.kernel.org:from_smtp,linux.dev:dkim,linux.dev:from_mime];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_THREE(0.00)[3];
	TAGGED_FROM(0.00)[bounces-312312-lists,devicetree=lfdr.de];
	FORGED_RECIPIENTS(0.00)[m:mazziesaccount@gmail.com,m:matti.vaittinen@fi.rohmeurope.com,m:matti.vaittinen@linux.dev,m:linux@roeck-us.net,m:robh@kernel.org,m:krzk+dt@kernel.org,m:conor+dt@kernel.org,m:corbet@lwn.net,m:skhan@linuxfoundation.org,m:wenswang@yeah.net,m:ashish.yadav@infineon.com,m:kimseer.paller@analog.com,m:cedricjustine.encarnacion@analog.com,m:chris.packham@alliedtelesis.co.nz,m:Yuxi.Wang@monolithicpower.com,m:hsu.yungteng@gmail.com,m:tomtsai764@gmail.com,m:linux-hwmon@vger.kernel.org,m:devicetree@vger.kernel.org,m:linux-kernel@vger.kernel.org,m:linux-doc@vger.kernel.org,m:krzk@kernel.org,m:conor@kernel.org,m:hsuyungteng@gmail.com,s:lists@lfdr.de];
	FREEMAIL_TO(0.00)[gmail.com,fi.rohmeurope.com,linux.dev];
	FORGED_SENDER_MAILLIST(0.00)[];
	FREEMAIL_REPLYTO(0.00)[gmail.com];
	FORGED_SENDER(0.00)[matti.vaittinen@linux.dev,devicetree@vger.kernel.org];
	RCPT_COUNT_TWELVE(0.00)[22];
	FORWARDED(0.00)[lists@lfdr.de];
	MIME_TRACE(0.00)[0:+,1:+,2:~];
	REPLYTO_DN_EQ_FROM_DN(0.00)[];
	REPLYTO_DOM_NEQ_FROM_DOM(0.00)[];
	HAS_REPLYTO(0.00)[mazziesaccount@gmail.com];
	FORGED_SENDER_FORWARDING(0.00)[];
	ALIAS_RESOLVED(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_HAS_DN(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[matti.vaittinen@linux.dev,devicetree@vger.kernel.org];
	FREEMAIL_CC(0.00)[roeck-us.net,kernel.org,lwn.net,linuxfoundation.org,yeah.net,infineon.com,gmail.com,analog.com,alliedtelesis.co.nz,monolithicpower.com,vger.kernel.org];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.232.128.0/19, country:SG];
	DKIM_TRACE(0.00)[linux.dev:+];
	TAGGED_RCPT(0.00)[devicetree,dt];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	MISSING_XM_UA(0.00)[];
	TO_DN_SOME(0.00)[]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 6C7B368C952


--bBkoSyq3MENugf+z
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

=46rom: Matti Vaittinen <mazziesaccount@gmail.com>

Add the ROHM BD12790 to the list of the ICs supported by the adm1275
driver.

Signed-off-by: Matti Vaittinen <mazziesaccount@gmail.com>
---
I didn't find public data-sheet yet. I will add a link when one is
available.

 Documentation/hwmon/adm1275.rst | 8 ++++++++
 1 file changed, 8 insertions(+)

diff --git a/Documentation/hwmon/adm1275.rst b/Documentation/hwmon/adm1275.=
rst
index 8a793dd2b412..d8495be313b8 100644
--- a/Documentation/hwmon/adm1275.rst
+++ b/Documentation/hwmon/adm1275.rst
@@ -83,6 +83,14 @@ Supported chips:
=20
     Datasheet: https://fscdn.rohm.com/en/products/databook/datasheet/ic/po=
wer/power_switch/bd12780amuv-lb-e.pdf
=20
+  * ROHM Semiconductor BD12790
+
+    Prefix: 'bd12790'
+
+    Addresses scanned: -
+
+    Datasheet: -
+
   * Silergy SQ24905C
=20
     Prefix: 'mc09c'
--=20
2.54.0


--bBkoSyq3MENugf+z
Content-Type: application/pgp-signature; name=signature.asc

-----BEGIN PGP SIGNATURE-----

iQEzBAEBCgAdFiEEIx+f8wZb28fLKEhTeFA3/03aocUFAmow734ACgkQeFA3/03a
ocX2tggAt3ui1jGCf6JWvUHB4Z6/euo6cOi8gC0sLF5cZRPS5dQsl6uWqPMvKtIM
0/6ykCRh6tvcjIa91SD1CM/7otNsyjnNeCcKsll5zj7ceqanYLqVvn8rJB9Isg3e
tZDv3/rIQbdOBvJrnMg9QLN10YxCA56jYHRT7B+iN0YegWIrmbOd2VH1uT+ZJWW4
ncLWDRYBFaRgXmay7Lr9khlQyk3YzXQ/bZvvn7/sSf0F+vABXNB/EyMGjqe/GHm4
yz4I23xSQdcsJp3oon4zZcMUVyDPSXw3qhieJctcXubPbtwSgaxqidZbDFL3o9vE
tsTfw0lCDalR6wZxcWNf1CaXbqdj1w==
=Zpoy
-----END PGP SIGNATURE-----

--bBkoSyq3MENugf+z--

