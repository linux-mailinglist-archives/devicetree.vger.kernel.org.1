Return-Path: <devicetree+bounces-268358-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id MAnEDJfvnmnoXwQAu9opvQ
	(envelope-from <devicetree+bounces-268358-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 25 Feb 2026 13:48:23 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [172.232.135.74])
	by mail.lfdr.de (Postfix) with ESMTPS id B640719793F
	for <lists+devicetree@lfdr.de>; Wed, 25 Feb 2026 13:48:22 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id 1BE73302976F
	for <lists+devicetree@lfdr.de>; Wed, 25 Feb 2026 12:48:22 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 029163126C2;
	Wed, 25 Feb 2026 12:48:21 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="iq8c6UhN"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pj1-f50.google.com (mail-pj1-f50.google.com [209.85.216.50])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D214F3A0EA2
	for <devicetree@vger.kernel.org>; Wed, 25 Feb 2026 12:48:19 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=pass smtp.client-ip=209.85.216.50
ARC-Seal:i=2; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772023700; cv=pass; b=gVZfPcOYTgKwCLT2yi9oo/8whGwSKA8Mpu0aox119JEjoBmlKIB7iqIhN9Ca9KLwEeLG1u7f28UweKKgw9jOPPMd4AXMBwyxGXXZtX5OkF/bXdpIgc02UaNMO58QOFeviK3AZESdLMo8fay7NCXprGexwXdf5cnbuCrm+wodWmY=
ARC-Message-Signature:i=2; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772023700; c=relaxed/simple;
	bh=FWJDMCjotwL8+vidfq72dRHNjqIZCF30W4A6P7seh6A=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=cl+Is0ykSS5MXS3uksM8PHlBTF9FjaMUGZEAbhW3YjqnFL2oZLjM0Izs5TH4Cyf9L1cMWqAHtNrS/AoqnwYgLQ6H0OrkBAX803ylhRw+fudkV7M1gcD+GHg47F+WZaKplDvw8YnqSSfKBl5pyS0Z0BAJHOZZrnF5H33TrcHz8Y0=
ARC-Authentication-Results:i=2; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=iq8c6UhN; arc=pass smtp.client-ip=209.85.216.50
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-pj1-f50.google.com with SMTP id 98e67ed59e1d1-358fb86de36so1004514a91.1
        for <devicetree@vger.kernel.org>; Wed, 25 Feb 2026 04:48:19 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1772023699; cv=none;
        d=google.com; s=arc-20240605;
        b=JmWdtxjcBxKk/5xEZtHSS88Lv9ERFDwTntKJdTu48MSXIPRlPP9xOlLJ+Arx8ro5ng
         wYJw8+3C1lZ0/cbA2BlZka0W+uQbiYd1YBuQQu+6azahx/1wR1E4EdmoK2ScnqHIxUBl
         hCm2D2G2Pvie62ohEUlbovvNHLf+zxN5KfNZ84Iclq5wuXm5v2SgDYsmsVFL0Lpbwy9/
         5V+oRaY3Ao2t6z5rKYYUNmTPFrWXAk2xHgQh5+/0yddxs3uaDcJbYo1HA4OoVGqMtO4M
         6NnRcb6LGHmvAsdq2U2IJd3PG8zxkGK38Kj9tkdlRvPBKpFKmS3sT7Mw7jOoWdCa6wP+
         pefw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:dkim-signature;
        bh=0joXdqCmpjckjOnaHr+/OVg5l+LX4VW8NWHw8AyruZ0=;
        fh=HnoNw/yHQwK7Ena2U9tnxEjpXlQd6qVye7e0jrQUH7Y=;
        b=kib4OxAjW1m4+uuGCuctks/Q0mYQCmN70FarANwNA5xsvO6eQ3pRUKEmm55tfEJiS6
         J69rS22b7HbDUpLLF3mz+JiKYm74ltg9UPMpCnPchYSJcheN00cDnv7g/0sqOmEJsCSp
         16kh+xx5Glateyq/Jc5txVOOQJ3B6r+0iJmJRFRKB1nq/HB1RDyNukKlcAArMKspAiJ3
         JIuj03sOND0dJuYV/2Aga83tcp8kprjYMPJowekjPEcGxHrWafA2ZYNv5cOrVSCpAeaV
         e5BMCusB+mB1ytkKi1Myckz1SJqLSQnlgo9huOGeSdtEUmTQzkEDS8+sm4ouVgfHqdJA
         JzMw==;
        darn=vger.kernel.org
ARC-Authentication-Results: i=1; mx.google.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1772023699; x=1772628499; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=0joXdqCmpjckjOnaHr+/OVg5l+LX4VW8NWHw8AyruZ0=;
        b=iq8c6UhNpSvE1jwjNYDT/JVbuKIyz2o/L5ffDdoS2RlDr0OV89tGdpFxpMmQIyD+rE
         2+ANaEwX7gYOl0wM+cwuElbowfHaUrkAjH5EteD3gOzrFwP1Qm0nCSm/OQ5cXYzI3xxP
         2P59zsZVhoAvgGdLXoFENAytyfZdrljDdB2GcavlIn4zjpH+P8gfC2ASqIexaGX9EDda
         k/cntkgE/5mV2okqoJzSrBgXUQ9Yyc/qCixeTwvJ4yKlQ+tS/jyUSa54ZtwxEg2RBvPn
         mljsSY1bTMD+J2kBIbjVN0IHPWzIyDqROCGTPrqg6vVjDC2Dzfod2vQlA5oSErJT7dPl
         4pvQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1772023699; x=1772628499;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=0joXdqCmpjckjOnaHr+/OVg5l+LX4VW8NWHw8AyruZ0=;
        b=l5tgHH22op4tvJkqF/+O3PrvHSGoixGO7MYw3DQysv0SQd7Qcfd7fi2umPo4dkDXdw
         HxA+UWU1eYY/1rtpWGoAtepWkTzQGNjnWTVWWm0OMyFxSOPdLzHAtG8bFAZDEg6fDzjT
         /7PFvfi+ugZzmKgz5rS1K4xHwXT7tsSOFRPMKQ818X1In56JrEWie6FIx+i0ZI2nfDfg
         e83u2YpVCzAWUG13nVbSu1MmbyLW6+COsapL/ICKciPEvmlZSQzW2GJAJfEZ3kF/6lGh
         J8kexVLl8kh5gXoVcdjBM0WL6SS9u4X8TfXQJRVyf+4Tg0K6UrT362ec94UkJsfGVUJs
         mEpw==
X-Forwarded-Encrypted: i=1; AJvYcCUKlhNE6HnzGiGi0nMJRbrp7eS1rVdqEknq+72b++V0oF9RIVjylu7twyDJxPK9yNID5wiBtrQK1h5b@vger.kernel.org
X-Gm-Message-State: AOJu0Yykd8CzRdiZ4JJLU9bGnoNlLS7yDk5GxDoqmtZCaQj5rrsYfSLw
	KZRk53YPDvRhl6y/ULWKDBg8Tq9gFE6g45RjLjyjO7ojoDbfOZxMyCnCX3HqOV0ipaFSiiBiU0q
	/DtiAY6Lj1EWtlVC6QGTK92F/M7W+w24=
X-Gm-Gg: ATEYQzwG7YRzKDBOPszGZKV8wKPRbdVp9ateKNAsXXeskpesRa8alkHn1BD2ZYhPZLZ
	Qajx/VNyDaRcG0F7gLXy9PhY5LDQDmsxxumy7J2n9Ewr1l774RA2BJaJXuxuL/WeTi6y1ccGXHg
	RP/2L2KQMTw9S+IdVPW8goCMu0mMQ/ii16kQjYu1GRn6T5XC7zIEVDqBU4J8N7vjmpZyab07YOj
	BlLN0+65cXKVU6F+t2b/VCZ0VnW8aDYU1ksG6H9FjdOOp2OiD/gu2RPM1Uja9E18ikh3SZ+lBMv
	hen1LP+6UimVxAvRFA==
X-Received: by 2002:a17:90b:4a4b:b0:354:c602:a573 with SMTP id
 98e67ed59e1d1-35928bc4ed5mr108304a91.27.1772023699139; Wed, 25 Feb 2026
 04:48:19 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20260224094527.169215-1-shengjiu.wang@nxp.com>
 <20260224094527.169215-3-shengjiu.wang@nxp.com> <409f6214-7ffd-4076-a658-f4005adbe101@kernel.org>
In-Reply-To: <409f6214-7ffd-4076-a658-f4005adbe101@kernel.org>
From: Shengjiu Wang <shengjiu.wang@gmail.com>
Date: Wed, 25 Feb 2026 20:48:06 +0800
X-Gm-Features: AaiRm53oiJrh-4UikRVcBaU7QuDhh_o55M-8VgnZYHqUuq2eisQEPvQ0Y1s59EE
Message-ID: <CAA+D8APngdt0vx6MJ7Knj_-0Ngr=1czTeDZruhqA6c7zRSfeDQ@mail.gmail.com>
Subject: Re: [PATCH 2/2] arm64: dts: add support for NXP i.MX8MP audio board
 (version 2)
To: Krzysztof Kozlowski <krzk@kernel.org>
Cc: Shengjiu Wang <shengjiu.wang@nxp.com>, robh@kernel.org, krzk+dt@kernel.org, 
	conor+dt@kernel.org, shawnguo@kernel.org, daniel.baluta@nxp.com, 
	dario.binacchi@amarulasolutions.com, alexander.stein@ew.tq-group.com, 
	Markus.Niebel@tq-group.com, matthias.schiffer@tq-group.com, y.moog@phytec.de, 
	josua@solid-run.com, francesco.dolcini@toradex.com, primoz.fiser@norik.com, 
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, Frank.Li@nxp.com, 
	s.hauer@pengutronix.de, kernel@pengutronix.de, festevam@gmail.com, 
	imx@lists.linux.dev, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=2];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20230601];
	R_SPF_ALLOW(-0.20)[+ip4:172.232.135.74:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-268358-lists,devicetree=lfdr.de];
	FROM_HAS_DN(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	FREEMAIL_FROM(0.00)[gmail.com];
	RCPT_COUNT_TWELVE(0.00)[23];
	FREEMAIL_CC(0.00)[nxp.com,kernel.org,amarulasolutions.com,ew.tq-group.com,tq-group.com,phytec.de,solid-run.com,toradex.com,norik.com,vger.kernel.org,pengutronix.de,gmail.com,lists.linux.dev,lists.infradead.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	NEURAL_HAM(-0.00)[-0.999];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[shengjiuwang@gmail.com,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[gmail.com:+];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.232.128.0/19, country:SG];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[0.0.0.0:email,mail.gmail.com:mid]
X-Rspamd-Queue-Id: B640719793F
X-Rspamd-Action: no action

On Wed, Feb 25, 2026 at 6:39=E2=80=AFPM Krzysztof Kozlowski <krzk@kernel.or=
g> wrote:
>
> On 24/02/2026 10:45, Shengjiu Wang wrote:
> > +
> > +&ecspi2 {
> > +     #address-cells =3D <1>;
> > +     #size-cells =3D <0>;
> > +     cs-gpios =3D <&gpio5 13 GPIO_ACTIVE_LOW>;
> > +     pinctrl-0 =3D <&pinctrl_ecspi2 &pinctrl_ecspi2_cs>;
> > +     pinctrl-names =3D "default";
> > +     status =3D "okay";
> > +
> > +     spidev1: spi@0 {
> > +             compatible =3D "rohm,dh2228fv";
>
> NAK
>
> You don't have there. Stop faking up hardware. NXP received this comment
> multiple times already.

Sorry,  didn't notice this was a fake device before and didn't check
the history in
community.
Thanks for pointing it out.  I will remove this node.

Best regards
Shengjiu Wang
>
> Best regards,
> Krzysztof
>

