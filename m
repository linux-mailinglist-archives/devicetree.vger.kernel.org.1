Return-Path: <devicetree+bounces-262284-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id qNJTMbEGgmn2OAMAu9opvQ
	(envelope-from <devicetree+bounces-262284-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 03 Feb 2026 15:31:13 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 5A617DA9CC
	for <lists+devicetree@lfdr.de>; Tue, 03 Feb 2026 15:31:13 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 0331D3127F16
	for <lists+devicetree@lfdr.de>; Tue,  3 Feb 2026 14:25:12 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 0F8933A9607;
	Tue,  3 Feb 2026 14:25:11 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="BEWpB1Kb"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pj1-f51.google.com (mail-pj1-f51.google.com [209.85.216.51])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B37563A9018
	for <devicetree@vger.kernel.org>; Tue,  3 Feb 2026 14:25:09 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.216.51
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770128711; cv=none; b=Ww1F2/fwCGNGFB4kHZsMj0+fgErScquWdVCLCTUCVL6LiwUeNDYNofsCanH05DVkJ2kcEYX0JrnOzu/+ovqq4Hvo/bKR5u8QQZUwN0x4LgKb/hqzg4N++psrE9IjBrt0RmX7zhQgAyzeqfcbX7eGDVHtfGet3A2hQ+u/8B+K4ik=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770128711; c=relaxed/simple;
	bh=sAY9j2KZbhASSjH4q5rvNxi6gAMjaheniDUO/8eBnV0=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=hvqpNnPaWi7n8inDhkNB17/qs6Ni8Msfm72WvbwUC14LflpI0gn2u+cPBRsJFA/0Z6AkX/FdZPoj+/NZH6UdP3fIEc1JNjRPn+EFqNAIHfRQYj8/+HUwxp3FNyTWE/S66dM4jWy5/2IT36xE2uwCY2GC903AkkaAo0ejVYe5eXY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=BEWpB1Kb; arc=none smtp.client-ip=209.85.216.51
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-pj1-f51.google.com with SMTP id 98e67ed59e1d1-3530715386cso4201352a91.2
        for <devicetree@vger.kernel.org>; Tue, 03 Feb 2026 06:25:09 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1770128709; x=1770733509; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=A7Mm3l4nbWWP8YApz1mcy831DRM/mYgrRVRky5J6vkI=;
        b=BEWpB1Kbt0C10tahO7S5WMvp4iK+nD3FRHMoOt+/v4KpVVnI68wf+L3WJJEhmcvQkW
         qWENZIgJVPVY1nB/YeCCGrp558ZbJdmqnzACwsBjDf/SGIgmnjtKhjVRqEoF9auL5MwT
         weACb7Yd4+VSX86A4v/3XiE09Rh3XQqbhnpU3XHwOJDC6C4gPj5vqEj3wa3fZWRpE129
         YooiEXDD1VMDhWFYENhXiS3y41VKTOjUxhNd5MU+VW0vCh1nKuw+oAT6xwi8o+OG1Bal
         FV7ZUtDLEI9ol/vX61YQW68sBZ8kJQpwGYAR0KoQ5cBwkRGQfm9o38dR7J7pc6PKIeTr
         1LMQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1770128709; x=1770733509;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=A7Mm3l4nbWWP8YApz1mcy831DRM/mYgrRVRky5J6vkI=;
        b=YmNKnZbgNST9FqTtwEtfivJEOiknx77EehoxDZoTFI2VGqkvCq3Q6dHkdcUqRzdUA+
         ccH4zlfy+1fcqe5dCQGyUVmJUobPkMyoCp+LYFcdiXPnWgo7q71G5XrFeuyyN+YR7bS4
         cIDzQDLL38Enavr26zadanv2GZCXgLTgGRk3inPR7736pf0hDW5kFaRoMxdXDmf1pqEY
         yE3PhJOx+FjrJu9W00Ot/DHSN1UEJbL0pcAGCk3D5m04gb/W2jifEwVbdxc7G3KWOuCM
         9W8J0sW4wJqepYUbyAf7vUDvRp7p7rZflg0piqu4PTOOOVr6PeMrtqA6yle2h4AwlOE2
         Y9/A==
X-Gm-Message-State: AOJu0YyAIt7QypEI2eLEfdRtyEtsMzR119OeHQCZxZEqNIMXjKvGdhyy
	25J8M+P5MGs7quNbgWiUhAhenngLuiyXKsqlhGgdFgGHmgnd7UVrniVy
X-Gm-Gg: AZuq6aKo3q+7ktEwkNEmziIpQwXAswbU+nkz2YYE0KARM3Yb1TOBygqczaLzfVRlcQE
	gC308fgm++OH3EQnGFrZxCGhoN2lyMh7Md2Yvj1BTaMNb/2rQz61rzhqJmsSAVZwAJN/hL6PQh2
	vTloKmUK8crWesqBjC0b3/LVQHaNd5DhV2JmlFQ0EnfOjgTrE/FhXB35SMili7w0u+P1X5wZ75Q
	mq8GStwiMShOl3M428y3IHRnOiO3xgRJcen2WCI0AeGhzrqpPCBYhqYGqOiPm/diW3Wt2MYEPxN
	F9aK9DBIZSOYwecx78e2v7REperYUo/DfOrZawV3UQEUZ3/uEbjTkfLFd8Mm1aGqYKbp+ec1ARX
	KhlnDn7KZCbILPi27vhKXp2sfEuKMASHbXz1Nk0SNYKpIVhII9LRZNh/uC+K6+9oR8hQ7neMWKH
	uJloAdKPQ6bm8OkssxJks=
X-Received: by 2002:a17:90b:50c3:b0:340:b86b:39c7 with SMTP id 98e67ed59e1d1-3543b2fbcb8mr15459255a91.11.1770128707866;
        Tue, 03 Feb 2026 06:25:07 -0800 (PST)
Received: from arch.localdomain ([2409:8a28:a52:d2b1::1004])
        by smtp.gmail.com with ESMTPSA id 98e67ed59e1d1-3547f7a682csm2084189a91.12.2026.02.03.06.25.05
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 03 Feb 2026 06:25:07 -0800 (PST)
From: Jun Yan <jerrysteve1101@gmail.com>
To: linusw@kernel.org
Cc: devicetree@vger.kernel.org,
	hns@goldelico.com,
	jerrysteve1101@gmail.com,
	jic23@kernel.org,
	linux-iio@vger.kernel.org,
	stephan@gerhold.net
Subject: Re: [PATCH v2 1/3] dt-bindings: iio: accel: bosch,bma255: add bmx055 accel binding
Date: Tue,  3 Feb 2026 22:25:01 +0800
Message-ID: <20260203142501.297003-1-jerrysteve1101@gmail.com>
X-Mailer: git-send-email 2.52.0
In-Reply-To: <CAD++jLk=TxX-zMOudMTniydopMFcvWONBMahSFhmA-7CD4-xKQ@mail.gmail.com>
References: <CAD++jLk=TxX-zMOudMTniydopMFcvWONBMahSFhmA-7CD4-xKQ@mail.gmail.com>
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
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20230601];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	MIME_TRACE(0.00)[0:+];
	DKIM_TRACE(0.00)[gmail.com:+];
	TAGGED_FROM(0.00)[bounces-262284-lists,devicetree=lfdr.de];
	FORGED_SENDER_MAILLIST(0.00)[];
	FREEMAIL_CC(0.00)[vger.kernel.org,goldelico.com,gmail.com,kernel.org,gerhold.net];
	RCVD_TLS_LAST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	FREEMAIL_FROM(0.00)[gmail.com];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[jerrysteve1101@gmail.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	RCVD_COUNT_FIVE(0.00)[5];
	NEURAL_HAM(-0.00)[-1.000];
	TO_DN_NONE(0.00)[];
	TAGGED_RCPT(0.00)[devicetree];
	RCPT_COUNT_SEVEN(0.00)[7];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns]
X-Rspamd-Queue-Id: 5A617DA9CC
X-Rspamd-Action: no action

> Hi Jun,
> 
> thanks for your patch!
> 
> On Mon, Feb 2, 2026 at 12:03=E2=80=AFPM Jun Yan <jerrysteve1101@gmail.com> =
> wrote:
> 
> > Add the device-tree binding for the Bosch BMX055 IMU (accelerometer part)=
> ,
> > which is compatible with bmc150_accel.
> >
> > Datasheet: https://cdn.sparkfun.com/assets/b/9/1/f/4/bst-bmx055-ds000_dat=
> asheet.pdf
> > Signed-off-by: Jun Yan <jerrysteve1101@gmail.com>
> > ---
> >  .../bindings/iio/accel/bosch,bma255.yaml      | 43 +++++++++++--------
> 
> DT bindings must be posted to devicetree@vger.kernel.org, please resend.

Acknowledged.

> 
> >  1 file changed, 24 insertions(+), 19 deletions(-)
> >
> > diff --git a/Documentation/devicetree/bindings/iio/accel/bosch,bma255.yam=
> l b/Documentation/devicetree/bindings/iio/accel/bosch,bma255.yaml
> > index c1387e02eb82..5c44b8cf156a 100644
> > --- a/Documentation/devicetree/bindings/iio/accel/bosch,bma255.yaml
> > +++ b/Documentation/devicetree/bindings/iio/accel/bosch,bma255.yaml
> > @@ -16,25 +16,30 @@ description:
> >
> >  properties:
> >    compatible:
> > -    enum:
> > -      # bmc150-accel driver in Linux
> > -      - bosch,bma222
> > -      - bosch,bma222e
> > -      - bosch,bma250e
> > -      - bosch,bma253
> > -      - bosch,bma254
> > -      - bosch,bma255
> > -      - bosch,bma280
> > -      - bosch,bmc150_accel
> > -      - bosch,bmc156_accel
> > -      - bosch,bmi055_accel
> > -
> > -      # bma180 driver in Linux
> > -      - bosch,bma023
> > -      - bosch,bma150
> > -      - bosch,bma180
> > -      - bosch,bma250
> > -      - bosch,smb380
> > +    oneOf:
> > +      - enum:
> > +          # bmc150-accel driver in Linux
> > +          - bosch,bma222
> > +          - bosch,bma222e
> > +          - bosch,bma250e
> > +          - bosch,bma253
> > +          - bosch,bma254
> > +          - bosch,bma255
> > +          - bosch,bma280
> > +          - bosch,bmc150_accel
> > +          - bosch,bmc156_accel
> > +          - bosch,bmi055_accel
> > +          - bosch,bmx055_accel
> > +
> > +          # bma180 driver in Linux
> > +          - bosch,bma023
> > +          - bosch,bma150
> > +          - bosch,bma180
> > +          - bosch,bma250
> > +          - bosch,smb380
> > +      - items:
> > +          - const: bosch,bmx055
> > +          - const: bosch,bmc150_accel
> 
> Maybe drop the Linux-related comments because DT people seem not
> to like this. But it's not your fault because these comments were there
> before.

Thanks for the suggestion! I will remove the Linux-related comments as you
recommended.

I will send the V3 patch shortly.

> Yours,
> Linus Walleij


