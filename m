Return-Path: <devicetree+bounces-288032-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id wIJ9Ol7E4WndxwAAu9opvQ
	(envelope-from <devicetree+bounces-288032-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Fri, 17 Apr 2026 07:25:50 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 51E21417125
	for <lists+devicetree@lfdr.de>; Fri, 17 Apr 2026 07:25:49 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 6B335303FDD8
	for <lists+devicetree@lfdr.de>; Fri, 17 Apr 2026 05:25:46 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B28EE35E959;
	Fri, 17 Apr 2026 05:25:45 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=yahoo.com header.i=@yahoo.com header.b="dc8l0XK0"
X-Original-To: devicetree@vger.kernel.org
Received: from sonic301-20.consmr.mail.gq1.yahoo.com (sonic301-20.consmr.mail.gq1.yahoo.com [98.137.64.146])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 736DD31B830
	for <devicetree@vger.kernel.org>; Fri, 17 Apr 2026 05:25:44 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=98.137.64.146
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1776403545; cv=none; b=eVpb1yjYQgvoPcntKaAb+rd4GHSI5tjsLUfADex6z+NdT/dM7+ppp1Qq/g36C0H4gxfLThzuIp9zZabbnISTq0pduuF0ed77QjpBzRITAY/u6/YYtOC9CUPWpN5QJBD1ffUn5lINML0XZQtdW4Kol1x8e4q/XSqukSH6iYoOMQw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1776403545; c=relaxed/simple;
	bh=lqRcrFalZmTwDqqlPgrjBpSpxBFJWhSFvtK9XK9FksA=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version:References; b=cqVV5Vlz5GH5UpkpUCCQ2h5qUi3X4/NjFzEx/WV7K13A9E7N8pLIk/ghVyoJrf980Xm8mqHcbJlO8JbdKpYu1sBP/SvX4hZoLdxoIP0T5AiL+AuJKd6LjWducBut5Tta/INM2kdTsbRfbX0qVncyH4BrzoyYO1FfPVHKStGHb7U=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=yahoo.com; spf=pass smtp.mailfrom=yahoo.com; dkim=pass (2048-bit key) header.d=yahoo.com header.i=@yahoo.com header.b=dc8l0XK0; arc=none smtp.client-ip=98.137.64.146
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=yahoo.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=yahoo.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=yahoo.com; s=s2048; t=1776403538; bh=B9BNCvCcJON6w4dWFj1ORo2p50udYVqX7VweGTT9oyI=; h=From:To:Cc:Subject:Date:References:From:Subject:Reply-To; b=dc8l0XK0puB7604jmdZvuJWf3SvcG9wPpqiecPWzyfb5w4pzM0vfQOuenZkgCM2JFpPLB+A8pqiwS9m1LuqInGkTASO0ZDxcuMbIw2x1uZikHFrZMAlilqMZQSEqO+2AHxjNvtvHh2bI+CRMn0Ll4X7yfb/RmXSDwjWbnRlAf4G68eicmt1Clsngd8DOxrqhraTGciMAb73uPrV/hBCIR514F0+JN1RJUIFSh+Fmyt/FnKwgPdOncX75oxZeBA3e/e5NdYB1PCc7s4N1k384/BzGDxF6Huo8LvdiJrhJg1X0SE37NypRaGvzdPWX5bxYJAVgMdTOeH9qJL7Imr2G1g==
X-SONIC-DKIM-SIGN: v=1; a=rsa-sha256; c=relaxed/relaxed; d=yahoo.com; s=s2048; t=1776403538; bh=n41WJO0RMuBtRwkaLj3Z0dtfhoIHqauia2NjVgORpFX=; h=X-Sonic-MF:From:To:Subject:Date:From:Subject; b=T7M02xJmCL/xTqk9LoPY33ha3Vgkaeg7uYR/1hDmPLAe7mVAcJe5mBLVJ/bqRc9whz28g7UomNxZY6f9Ea7nLu2JLS419L7RW1AhZ5L1UOxOY/tc0ZM6YNB0oneLsc3/04gVdsLQ3HAGWAXGQ1xsj0RsKo7OPgZNv3cSSO+wLoaBJvBhER4dXVw8sstJTlBQJVGqllXxEYqzh05Ayt9EDKyoJadCe64A7TJRyLMfZLetB9J8zfOtCUm/ylPr/TSj7qtSU64xVxUqVCKvVui8idoUI46FzqgfD+/JDs4DhiBtut4n8P+4H3M2Pt3S+0p/H04LBHMAp57FHd75txU2Dw==
X-YMail-OSG: AbVn0kQVM1l4mYvMyPS0llwcXmVvKhXiM5PZbnlZZ5gZgEZ._DwUnAHL6IG9W_8
 kDlhMC84cZOgJwCpxZghfBPZ_1trEf1nUabUUCxp5._VZnvtgEW3HEulRwl3jCxR23xAlzse1X89
 Ek_swy1ARH4EwkjP2jLH.5p_GK_gIU1rSGYrwpO6BKOjMgyJTLrOAZ58G3pkXTWfiln1lmVI48D_
 Z5XFfszhzH58f8LaAya5ZK1v2JV41Rwq.SywvYRqT1NoL9P5yqnUphml6l6WFDQQrYB.zml6eEPl
 .IlbbzHCuxJwrwCGT7ba.KoN4cIv175sKdAnsVLd8FrYRuBGuIa2N.ZN0jCwlAkVjh4t7X0oehoY
 XIUedZP2lARuj9QvQTyqJ2_aRAyXDq_5TWzAcdudlzFnJpWDE2.NOiDmvDxH7REFzK9Ulv6cBpnX
 qyDu9jAcxbdYDxSUngte_UpIaTN64EY5v493eVZhTokaaFUrugfKIAZI2.7ibK_4aKgGfvMtpyP9
 zPWRZys4I8ZtmugX29ALjl41iOZtwM7NinsPN6_fWqgkmi6_gFICx3btfgUWWCKEHHLCFkVRE74e
 3MgGQTwfIWRahtsXVFWb5VClCLi0MXNQdVwafcUuZt9n8Trv0v0c9gLa8GOHKz8WZ.X6ryrw8Dcp
 J.Omb9m1qjhdw.pAS9iJa2aaIlP7lKdARLSeI5gFZ3TtSLmMpiSIR3GP2MQcHiEbNgVG99qQ51zq
 8h2dJz6BM0iK_lUmiM5nTND9Wim6jq84YPEttaOmv.3qP86yQOP.IncA5BblwUdUHOSn6jtlMWFL
 fdLBn9m3ITQu09eE_o7iNb9tYgawQwposgUuAlWinqKGTL8FOzQzMc7N2WMuTPmF8N7Lro3RyUxX
 lH4qa8XFs37JY.x_zRRU2HOY3KoycaERR6wG_dBPZNuMU1H1uEV3CvoU3pcXkO5TGsMwnvmM5MHq
 aZkrBe_b77fi6eKdOfGjqH5OEVhpWl8n_vnzHkM5ZCje7F75X8kNyM4iP4VT6Z5FbmSOyM_ctnso
 q9KS0I2uFF2JOaE07njHJvc6ztSvKn7fkkO_Mlq5b3gvQOltQbocwB2MBCvnfqcFNKXnTHHSigIf
 zpb71CIXCmFe5TpAI97XnfnhlijVDct_fWcA6LYcdX7l1PgEfW766iDCtf43__vvzBpwRvvAkT88
 6swp3kKrBTMLKe6w5McpIui7UJJa_jun51ZFAoiv2MCbH8QCwFlBLe6B1xvP4xVVY5TSISo5ouef
 mQXtcLccFPi7My9Q.d_JJl4Kt2sfDnrbSlhMrxu9ilRfTYq0eBNciXuACuNA29xkpKmz5Q9GKkv6
 D9QAs1rN5k6AR1K_toap7N.38RDyKISjLAJUbHJbXhAGPb03AAgtbiIcrDogcetDB0BzFZdYo2Y5
 _b5yLD2KbxJLB43QWdVmhjcyebO3Y.BWgXyZFSUwJ29C_zK.Fa89o4UT44eblHySzbbZko7WfJRv
 vQC8l5buWncT_nSkOHM4rxD7iyB2a50SHOBkYQqVLgzKPIqAM6vouxwCMF.kKbTOanx2cDfWP36M
 G7w46x3_MaOMi2wIX5U6m9eed1H2fSeaj6Ju8kmeDuNOwHTaTyb4KragN3CiEwLDnGV.QzQv0R08
 9hOP5ziufBllb6Y31UxwQ2NlFg.6r0HPkzQxl1DyIpSzHPRPw7yK4m4cb2gt3AXQ1PFJh6c8B_Fx
 3BeDZo_sK0uFCzwIqZPIMKcdnuFdqoG2eHc5vfCog_9xOr9y8LsiID1fceA5Ed4eardm0YjiOPsQ
 wjjYhWConjOI4skFbmagzcA2YI.Sg.eW6JQCefdBjdg668YG_fXRrcIM41Nw4vv9lqyAfo3dzfCd
 kld3KlUjokcvTHfrjNAhNA.ULmYRrQ4cWGlxpUShRSgCWydK_bRo46ciylYl7xKtGdAKVJxIg.c6
 2U9tAq..N8Uov050.3DbMXcVJ1TeG1QfMKuWe2thoY7Qj9UwtrY6Gp3uY3AL22x8EeGTHR_U__ce
 RtiQ7hoT7j.Z2KwfGPPKEAyC9ap1yjg2yzcBw..ERRNrvDBRl3sVF1u.ieNWv2JQmzUSwPSbCr6y
 P87SHz.2GmiDWzA1xwxIvs50TVH954y4PDVD.4VojBN9z_yfId5tcEqysWbA3LtCQt5q0q47X5a2
 Ld9Iz_nuCpl5d5yPpMi5q8pER0Y0tfHQqU4wehJTTccNNru1iq_fpv30k9ZR9isSsZF7hfqgcQ.C
 Ct2RZCPkTwafd2ZU8Xk6U1GjKDpc8eZgO04SnOv.KfLBCNuExz1Yfoy4iNdmuRyNOAVQHTH5l5ZI
 -
X-Sonic-MF: <sainiharpreet29@yahoo.com>
X-Sonic-ID: 9b4d61ef-95d8-4972-980c-164a6834cebd
Received: from sonic.gate.mail.ne1.yahoo.com by sonic301.consmr.mail.gq1.yahoo.com with HTTP; Fri, 17 Apr 2026 05:25:38 +0000
Received: by hermes--production-bf1-697f88457-j95vr (Yahoo Inc. Hermes SMTP Server) with ESMTPA ID 38d5a94697f1210cb7ec8e732b22a1d9;
          Fri, 17 Apr 2026 05:25:35 +0000 (UTC)
From: Harpreet Saini <sainiharpreet29@yahoo.com>
To: Dmitry Torokhov <dmitry.torokhov@gmail.com>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>
Cc: David Lechner <david@lechnology.com>,
	Harpreet Saini <sainiharpreet29@yahoo.com>,
	devicetree@vger.kernel.org,
	linux-input@vger.kernel.org,
	linux-kernel@vger.kernel.org
Subject: [PATCH v2 0/2] input: misc: Add PixArt PAJ7620 gesture sensor
Date: Fri, 17 Apr 2026 01:25:25 -0400
Message-ID: <20260417052527.62535-1-sainiharpreet29@yahoo.com>
X-Mailer: git-send-email 2.43.0
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
References: <20260417052527.62535-1-sainiharpreet29.ref@yahoo.com>
X-Spamd-Result: default: False [0.84 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	MID_CONTAINS_FROM(1.00)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	R_MISSING_CHARSET(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[yahoo.com,reject];
	R_DKIM_ALLOW(-0.20)[yahoo.com:s=s2048];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FREEMAIL_TO(0.00)[gmail.com,kernel.org];
	FREEMAIL_CC(0.00)[lechnology.com,yahoo.com,vger.kernel.org];
	RCVD_TLS_LAST(0.00)[];
	TO_DN_SOME(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	TAGGED_FROM(0.00)[bounces-288032-lists,devicetree=lfdr.de];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	FROM_NEQ_ENVFROM(0.00)[sainiharpreet29@yahoo.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[yahoo.com:+];
	NEURAL_HAM(-0.00)[-1.000];
	TAGGED_RCPT(0.00)[devicetree,dt];
	RCPT_COUNT_SEVEN(0.00)[9];
	FREEMAIL_FROM(0.00)[yahoo.com];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns]
X-Rspamd-Queue-Id: 51E21417125
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

This series adds support for the PixArt PAJ7620 gesture sensor.

Following review feedback on v1, the driver has been moved from IIO
to the Input subsystem as gestures are user-interaction events.
The bindings have been updated to include mandatory power supplies
and GPIO controller properties.

Changes in v2:
- Moved driver from drivers/iio/light to drivers/input/misc
- Updated DT bindings to include mandatory vdd, vbus, and vled supplies
- Added Runtime PM support with autosuspend logic
- Combined bindings and driver into a single series

Harpreet Saini (2):
  dt-bindings: input: Add PixArt PAJ7620 gesture sensor
  input: misc: Add PixArt PAJ7620 gesture sensor driver

 .../bindings/input/pixart,paj7620.yaml        |  70 ++++
 .../devicetree/bindings/vendor-prefixes.yaml  |   2 +
 drivers/input/misc/Kconfig                    |  12 +
 drivers/input/misc/Makefile                   |   1 +
 drivers/input/misc/paj7620.c                  | 350 ++++++++++++++++++
 5 files changed, 435 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/input/pixart,paj7620.yaml
 create mode 100644 drivers/input/misc/paj7620.c

-- 
2.43.0


