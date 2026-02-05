Return-Path: <devicetree+bounces-263049-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id uMAMNC+qhGk14QMAu9opvQ
	(envelope-from <devicetree+bounces-263049-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Thu, 05 Feb 2026 15:33:19 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [172.105.105.114])
	by mail.lfdr.de (Postfix) with ESMTPS id 45DECF40DF
	for <lists+devicetree@lfdr.de>; Thu, 05 Feb 2026 15:33:19 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id C29023011797
	for <lists+devicetree@lfdr.de>; Thu,  5 Feb 2026 14:31:41 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id CDD6E40759F;
	Thu,  5 Feb 2026 14:31:26 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="Rn04vphs"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-oi1-f178.google.com (mail-oi1-f178.google.com [209.85.167.178])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7D2443F23AB
	for <devicetree@vger.kernel.org>; Thu,  5 Feb 2026 14:31:26 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.178
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770301886; cv=none; b=iAOg9pdD+ASQ3kmZt26G4QduqXQtE96gy6BtW1/bTxh2OO1cmpGV6PzsRJy3bxFU03nmgwIqu4tajGAti10qTiOBMIiV/3ttVxu40xUidZlf4OuU7rvp+SVqLcNYR6yF8tMjwQvmAgCIrj+1vKgyR56kOdcVrBi5BBR94gAPZcw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770301886; c=relaxed/simple;
	bh=JZeAuuuLafuGrx3L2sq9FAK/OZliEE9nxDyzt2d7O8U=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=OlEbQqYuC+EAQ44eKgAtjhyDEwlHJh7awz4ImAyu+B/2B7VQfiF4FXfg53xTZFksxA3WnEBSHDrlqXriX+TRdkEbt7J9pIboHzFAF3UZPw1c3mqMTnY56I3VIesAM8I1gCCkCdHUs47UO7BoWS9+22w3HMyaxZQ9SAFBU4RwSBI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=Rn04vphs; arc=none smtp.client-ip=209.85.167.178
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-oi1-f178.google.com with SMTP id 5614622812f47-45f194e9a98so320750b6e.3
        for <devicetree@vger.kernel.org>; Thu, 05 Feb 2026 06:31:26 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1770301885; x=1770906685; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=Azsr7YK6tngJTMSrKOLWG/XzxoPwzNWngFRjXFfu8Kw=;
        b=Rn04vphsDCUt2te0KdQdG/5Su9mZvjzZjdr2IgU91BFZOpWe7q5bvdiHuF39Mxjc5+
         1lkd2ZyjIqwHraMX/mOweNuaGqttTXDwpwQRvsR6hrIkpR3OIqpOsyP72RitPVLqnDoj
         ED8NdAWZMavuCtZTWaDBSPeXekRbgWzmBPjHXljQncFP98hwRq815thoJuccbgGiF6MO
         IdeX+sOXnYdlS/yt87PcP+GwBakxdD5bfKLg4iQULzXuaEqnWOZBMUm8YBFs8W5+Z4oM
         rXAnhEa54h/YGmEJf3IN4c429NTKSq7Enn1eeESEwEoX3pUljUNwTsN6usCUn/fX56hF
         bNAA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1770301885; x=1770906685;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=Azsr7YK6tngJTMSrKOLWG/XzxoPwzNWngFRjXFfu8Kw=;
        b=vgg0YzQjXV8ufIIgjeNgCyNV73ImdIpYHx8FMZO7zIfdRpGbvPcn55uA88ElOC56mu
         d4OEwrfnXIZoE6HvS2xdgq/znqfwecwU7kj8zJr79XaHqotHUOgdn+Sy7emFQVakg5hR
         lNJWi6eKMWXJl81pzwbM2o5J2NRXFy/TAYoH7dx5ujZ3b75cj0pAdQAnfCTrEB0B9Uv6
         xolk/HtgDpDv+7wjtFZE/hbEJFUtKjBUudixrPQb+w2hPwi4D94HCnxDVEl9a6toiZBL
         jzgxil8m1uJPEUpkYLuYLooAQQkgh1E8DEQtBAG5/NZy3kQFwJWsElLQPLmxiBoXk6WD
         1V7g==
X-Gm-Message-State: AOJu0YzbWhg9xbJnXBEj6J6xFaR+a4FJ0gYLH0EaiLbpBDShlQJnm+d9
	RJ33i8FSZW/rcfgCK0/wVUDXuAJeQGxHL5ZOMhRPhoW3Lht/x+9YLvgl
X-Gm-Gg: AZuq6aJdiPjKdHDxAX2e/HyltezPCnu1SAtQ27Fe33q7TlZa5lQ+0tqITg8j6kzvs6/
	mcLPXMiCrHJRWk4G9nCQpUXoTn1iWnM/MXHffcu8zzpaCsdumShY4of2sGwSRYnBmAgV5zreSCO
	YmJw0dItIU2Ad61dwQe8XfwcpfVUo6PK5amiuWkAsoQMcBHvWvce7SRp3YV3oXLlSgbp36GTDtH
	/S/fB0ZM97psxhVxQBs8CyV2zjfUHQvVzev+xij0w733o37thg9FXGRE5Qpp6THqGdubntLMWBm
	h3YH8QPBwlGUt7WlZ+ZsHOnFA+nGNcqYPN8QVXNdQJ7IFPepsR5U2BdzEvo+nqAJ++1r3YaP4Nq
	3DQInjDpkQoz0l9yxRuaizqinZmL58wlsRKY7I4l/iMbBoysa3LNhMNUYyLj9NFdBvbcwoTUbGw
	D53zafUaQZs58sn6F2WyNu9QNM
X-Received: by 2002:a05:6808:1395:b0:45c:9785:bd55 with SMTP id 5614622812f47-462d5aa1bc6mr3195208b6e.54.1770301885160;
        Thu, 05 Feb 2026 06:31:25 -0800 (PST)
Received: from arch.localdomain ([117.147.91.117])
        by smtp.gmail.com with ESMTPSA id 586e51a60fabf-40a590fe5f7sm3625224fac.9.2026.02.05.06.31.21
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 05 Feb 2026 06:31:24 -0800 (PST)
From: Jun Yan <jerrysteve1101@gmail.com>
To: conor@kernel.org
Cc: devicetree@vger.kernel.org,
	hns@goldelico.com,
	jerrysteve1101@gmail.com,
	jic23@kernel.org,
	linusw@kernel.org,
	linux-iio@vger.kernel.org,
	stephan@gerhold.net
Subject: Re: [PATCH v3 2/3] dt-bindings: iio: magnetometer: bosch,bmc150_magn: add bmx055 magnetometer binding
Date: Thu,  5 Feb 2026 22:31:16 +0800
Message-ID: <20260205143116.521460-1-jerrysteve1101@gmail.com>
X-Mailer: git-send-email 2.52.0
In-Reply-To: <20260204-venus-dweller-20e2c228acc4@spud>
References: <20260204-venus-dweller-20e2c228acc4@spud>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.66 / 15.00];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_CONTAINS_FROM(1.00)[];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_MISSING_CHARSET(0.50)[];
	R_SPF_ALLOW(-0.20)[+ip4:172.105.105.114:c];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20230601];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	MIME_TRACE(0.00)[0:+];
	DKIM_TRACE(0.00)[gmail.com:+];
	TAGGED_FROM(0.00)[bounces-263049-lists,devicetree=lfdr.de];
	FORGED_SENDER_MAILLIST(0.00)[];
	FREEMAIL_CC(0.00)[vger.kernel.org,goldelico.com,gmail.com,kernel.org,gerhold.net];
	RCVD_TLS_LAST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	FREEMAIL_FROM(0.00)[gmail.com];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[jerrysteve1101@gmail.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.105.96.0/20, country:SG];
	RCVD_COUNT_FIVE(0.00)[5];
	NEURAL_HAM(-0.00)[-1.000];
	TO_DN_NONE(0.00)[];
	TAGGED_RCPT(0.00)[devicetree];
	RCPT_COUNT_SEVEN(0.00)[8];
	DBL_BLOCKED_OPENRESOLVER(0.00)[tor.lore.kernel.org:helo,tor.lore.kernel.org:rdns,sparkfun.com:url]
X-Rspamd-Queue-Id: 45DECF40DF
X-Rspamd-Action: no action

Hello,
> On Tue, Feb 03, 2026 at 10:39:42PM +0800, Jun Yan wrote:
> > Add the device-tree binding for the bosch BMX055 IMU (magnetometer
> > part), which is compatible with bmc150_magn.
> >=20
> > Datasheet: https://cdn.sparkfun.com/assets/b/9/1/f/4/bst-bmx055-ds000_dat=
> asheet.pdf
> > Signed-off-by: Jun Yan <jerrysteve1101@gmail.com>
> > ---
> >  .../iio/magnetometer/bosch,bmc150_magn.yaml        | 14 +++++++++-----
> >  1 file changed, 9 insertions(+), 5 deletions(-)
> >=20
> > diff --git a/Documentation/devicetree/bindings/iio/magnetometer/bosch,bmc=
> 150_magn.yaml b/Documentation/devicetree/bindings/iio/magnetometer/bosch,bm=
> c150_magn.yaml
> > index a3838ab0c524..09d1dc861d4f 100644
> > --- a/Documentation/devicetree/bindings/iio/magnetometer/bosch,bmc150_mag=
> n.yaml
> > +++ b/Documentation/devicetree/bindings/iio/magnetometer/bosch,bmc150_mag=
> n.yaml
> > @@ -21,11 +21,15 @@ properties:
> >      description:
> >        Note the bmm150_magn is a deprecated compatible as this part conta=
> ins only
> >        a magnetometer.
> > -    enum:
> > -      - bosch,bmc150_magn
> > -      - bosch,bmc156_magn
> > -      - bosch,bmm150
> > -      - bosch,bmm150_magn
> > +    oneOf:
> > +      - enum:
> > +          - bosch,bmc150_magn
> > +          - bosch,bmc156_magn
> > +          - bosch,bmm150
> > +          - bosch,bmm150_magn
> > +      - items:
> 
> > +          - const: bosch,bmx055_magn
> 
> s/_/-/ here please, we don't permit _s in new compatibles.
Got it, will change _ to - for the new compatibles.

Best regards,
Jun Yan
> pw-bot: changes-requested
> 
> > +          - const: bosch,bmc150_magn
> > =20
> >    reg:
> >      maxItems: 1
> > --=20
> > 2.52.0
> >=20
> >=20

