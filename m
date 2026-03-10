Return-Path: <devicetree+bounces-273259-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id MA/fMYecr2kTbAIAu9opvQ
	(envelope-from <devicetree+bounces-273259-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 10 Mar 2026 05:22:31 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [IPv6:2600:3c04:e001:36c::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 3BDB12453AF
	for <lists+devicetree@lfdr.de>; Tue, 10 Mar 2026 05:22:31 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 79CC43052ACD
	for <lists+devicetree@lfdr.de>; Tue, 10 Mar 2026 04:21:48 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id EF04E39B493;
	Tue, 10 Mar 2026 04:21:43 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=pm.me header.i=@pm.me header.b="TxVFpHfQ"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-106119.protonmail.ch (mail-106119.protonmail.ch [79.135.106.119])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A96973CB2C5
	for <devicetree@vger.kernel.org>; Tue, 10 Mar 2026 04:21:42 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=79.135.106.119
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773116503; cv=none; b=oytRHKiZB4oogvGBsvtmKoAN1J14p+WuaSpV3rRpxgoGovImV5IzXgr79uWgcHTSaA/sPEj1GRho/AfpjoVkUGN++Jf1EFfKZver6Wwu+rReHzyCNZNvM+RJ2cvO4tS/BzN7DOVk7boDXt2qu73KVBGtVaCYXDUizZy1RhBiHBg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773116503; c=relaxed/simple;
	bh=bcCfDhJMuFO9LQmoPDmK4ZbWID8mungHniC/M/CthFI=;
	h=Date:To:From:Cc:Subject:Message-ID:In-Reply-To:References:
	 MIME-Version:Content-Type; b=sfuSGTfaPd7+HFW1I4U8fszxIhWUbs+Vq2kddso4ApPZS6D2NbAcd507Ji0Nqy+ldLxwgkiW074VoDYZiuHrx81YfyT2rC7PVOOOIr6VQKPvRT7kxPOlc9xSRY48FF3d2Wqk2acEm5TBKIjg+gWvN/n+VFwuKNBX277Rp1FJzUA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=pm.me; spf=pass smtp.mailfrom=pm.me; dkim=pass (2048-bit key) header.d=pm.me header.i=@pm.me header.b=TxVFpHfQ; arc=none smtp.client-ip=79.135.106.119
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=pm.me
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=pm.me
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=pm.me;
	s=protonmail3; t=1773116500; x=1773375700;
	bh=ebBnmgoocAzhOW+k1R3Jn9juCf240BgRJruqDT67ZYo=;
	h=Date:To:From:Cc:Subject:Message-ID:In-Reply-To:References:
	 Feedback-ID:From:To:Cc:Date:Subject:Reply-To:Feedback-ID:
	 Message-ID:BIMI-Selector;
	b=TxVFpHfQKpSrr88BKEjqYAJg0pTaggUlCl8H54EC3GothjUmiRjyUp12EGrWg7nlQ
	 6FEHfPiw1jkE9K6zzFsYjUw63835REjEYWRO6Z2xED14N5BzLaR77QmGWcfz53bPCM
	 ClWHFwZL+nRSgChq5TH9xj7vE/rAXRz2kU5+eaQAAZexR80mYTGX4RQ8v18PToT8uf
	 EiGO09yn+rnnZOd6DxI3Q2ZIgfiKa4q8ZxUaKMPn+mdO4yMAWh0RouGQUQA3FvJS6x
	 rfVf2JipIefXTGa1hM21hl7Rgept3DSYYaAhRHSzLuTSoIWr36soEEXZHX6f4uCaZg
	 LpfyghQswWdhg==
Date: Tue, 10 Mar 2026 04:21:34 +0000
To: Sakari Ailus <sakari.ailus@linux.intel.com>, Mauro Carvalho Chehab <mchehab@kernel.org>, Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>
From: Alexander Koskovich <akoskovich@pm.me>
Cc: Laurent Pinchart <laurent.pinchart@ideasonboard.com>, linux-media@vger.kernel.org, devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, Alexander Koskovich <akoskovich@pm.me>
Subject: [PATCH v2 2/2] media: i2c: ov8856: parse and register V4L2 device tree properties
Message-ID: <20260310-ov8856-v4l2-props-v2-2-2717404ed045@pm.me>
In-Reply-To: <20260310-ov8856-v4l2-props-v2-0-2717404ed045@pm.me>
References: <20260310-ov8856-v4l2-props-v2-0-2717404ed045@pm.me>
Feedback-ID: 37836894:user:proton
X-Pm-Message-ID: 459aab906aa66932aa31ce1b64bcffae0f7f21cf
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
X-Rspamd-Queue-Id: 3BDB12453AF
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[pm.me,quarantine];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c04:e001:36c::/64:c];
	R_DKIM_ALLOW(-0.20)[pm.me:s=protonmail3];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-273259-lists,devicetree=lfdr.de];
	FROM_HAS_DN(0.00)[];
	RCVD_COUNT_THREE(0.00)[3];
	RCVD_TLS_LAST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	DKIM_TRACE(0.00)[pm.me:+];
	ASN(0.00)[asn:63949, ipnet:2600:3c04::/32, country:SG];
	MISSING_XM_UA(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[akoskovich@pm.me,devicetree@vger.kernel.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	RCPT_COUNT_SEVEN(0.00)[10];
	TO_DN_SOME(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[pm.me:dkim,pm.me:email,pm.me:mid,tor.lore.kernel.org:rdns,tor.lore.kernel.org:helo]
X-Rspamd-Action: no action

Parse V4L2 device tree properties and register controls for them.

Signed-off-by: Alexander Koskovich <akoskovich@pm.me>
---
 drivers/media/i2c/ov8856.c | 13 ++++++++++++-
 1 file changed, 12 insertions(+), 1 deletion(-)

diff --git a/drivers/media/i2c/ov8856.c b/drivers/media/i2c/ov8856.c
index e2998cfa0d18..9d7d16ba8911 100644
--- a/drivers/media/i2c/ov8856.c
+++ b/drivers/media/i2c/ov8856.c
@@ -1887,12 +1887,14 @@ static const struct v4l2_ctrl_ops ov8856_ctrl_ops =
=3D {
=20
 static int ov8856_init_controls(struct ov8856 *ov8856)
 {
+=09struct i2c_client *client =3D v4l2_get_subdevdata(&ov8856->sd);
+=09struct v4l2_fwnode_device_properties props;
 =09struct v4l2_ctrl_handler *ctrl_hdlr;
 =09s64 exposure_max, h_blank;
 =09int ret;
=20
 =09ctrl_hdlr =3D &ov8856->ctrl_handler;
-=09ret =3D v4l2_ctrl_handler_init(ctrl_hdlr, 8);
+=09ret =3D v4l2_ctrl_handler_init(ctrl_hdlr, 10);
 =09if (ret)
 =09=09return ret;
=20
@@ -1954,6 +1956,15 @@ static int ov8856_init_controls(struct ov8856 *ov885=
6)
 =09if (ctrl_hdlr->error)
 =09=09return ctrl_hdlr->error;
=20
+=09ret =3D v4l2_fwnode_device_parse(&client->dev, &props);
+=09if (ret)
+=09=09return ret;
+
+=09ret =3D v4l2_ctrl_new_fwnode_properties(ctrl_hdlr, &ov8856_ctrl_ops,
+=09=09=09=09=09      &props);
+=09if (ret)
+=09=09return ret;
+
 =09ov8856->sd.ctrl_handler =3D ctrl_hdlr;
=20
 =09return 0;

--=20
2.53.0



