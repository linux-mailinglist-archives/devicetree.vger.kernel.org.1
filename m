Return-Path: <devicetree+bounces-267813-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 8AuJBw59nWk1QQQAu9opvQ
	(envelope-from <devicetree+bounces-267813-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 24 Feb 2026 11:27:26 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [IPv6:2600:3c09:e001:a7::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id B12D218551B
	for <lists+devicetree@lfdr.de>; Tue, 24 Feb 2026 11:27:25 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id DAAB3300B475
	for <lists+devicetree@lfdr.de>; Tue, 24 Feb 2026 10:27:24 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 446F63783AB;
	Tue, 24 Feb 2026 10:27:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="EyIpKL4C"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-f51.google.com (mail-lf1-f51.google.com [209.85.167.51])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DE2F1372B55
	for <devicetree@vger.kernel.org>; Tue, 24 Feb 2026 10:27:20 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=pass smtp.client-ip=209.85.167.51
ARC-Seal:i=2; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771928842; cv=pass; b=OXCCmLPUyO8LXxdEGakCHNMtZQfsXB07ItdNY5qrwJlJ3C0TTqfyGXXSAwzDWBnC+Q52ki1Fv2wVk9Kr/U3FXlubL7SbRfKYr6koDNEV/SBaB6UApMVJzVOmymhXZswCOkiSgA/4ii2cb8qfz4rPF1SG0yWt45WQIV7u3pb+iHM=
ARC-Message-Signature:i=2; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771928842; c=relaxed/simple;
	bh=jjCLqNjogYinR3bEtF7xiisXRhPEOHqegIpE6AxI+GU=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=SyL6o7BwhQSCGmpKHOTKzdvkrcyHW2q2MgDW0yW4YkWbptCP0vn6JhDuqfD6ChPaLXs9CgAQHi6q6DQQRqC3UfqOKmnhGb5SiMh8HVcUjgqN2WwSfhKXmY7gIP3mrsrcC8YlA/ZAxg9oMJcnjf11aqNcc5L1Mo1XeS46tQYLPKE=
ARC-Authentication-Results:i=2; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=EyIpKL4C; arc=pass smtp.client-ip=209.85.167.51
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-lf1-f51.google.com with SMTP id 2adb3069b0e04-59e646a4b9eso5305022e87.3
        for <devicetree@vger.kernel.org>; Tue, 24 Feb 2026 02:27:20 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1771928839; cv=none;
        d=google.com; s=arc-20240605;
        b=SVgUsIpt0HLhyX/5I3oQDompyZtEqoc0qj4V+Q2dkMZBrMmro3InxfEMAFPVDiqxBL
         bmFPAmN/kv4N3sx2TDgJ9+DPMYZ/XxAxPOCfA3tEIn6yVGnKEuKmV9KxeuyELSv8FqVJ
         5bHuj5QR/Ttcc1/hweb+4DcQhU8JrhL0rN6+PEcrJhQF2gybvha8uVripCGSZcEAbot4
         ASlsTDp5qMlnv/eMlgnPnnEBLGWHQbfGGG/gUe9ryBDW7qWRBtPLIEEphM1AlMcswvNP
         qQhNkF0sPu2ZyKGyIK2sNNIAeFgl/WPo2Sfv331XRsNqdZx1alitMX2ZD6cZvlYKbQLf
         8z6w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:dkim-signature;
        bh=p6zyw58AOxXSub8QGwmMM/bb4H+WWArpgg93Ti+4E3I=;
        fh=mNx64cW9CjFzBtF5bb06I2CLMzlbVhDQPOHL59iOeag=;
        b=YPa3gtbE3Zm82yOIVi3o85aUODSkURlCtxUgtuLopwNhysoanpL0T3XrFB5UB1Bfxz
         ca6U42zwdmAGhSbSP29wfdrjQBntn9Ls+BiRkldBYG/0wLuSVaBvJoa6e1KCRFrAPYx5
         GkDbFi96IUXfRREo9EEPGuE/Utr01NAOk1m+qcEXhWZSewXG3cXemBwIz4K9f9Itga0A
         mTjSBzAofm4/5LSkJ/DZP1bJd6YO4F4qd0Jhs3xTreQUkfVBbRB2Z0vfGYCSOnQ/5r1X
         7D83Du1k6Uyx1NQtsYNn8EfoYVW4M/LPmU8N56T/vDrYP3ygnPse7M6bU3X0dMOz4Qn3
         TcWg==;
        darn=vger.kernel.org
ARC-Authentication-Results: i=1; mx.google.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1771928839; x=1772533639; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=p6zyw58AOxXSub8QGwmMM/bb4H+WWArpgg93Ti+4E3I=;
        b=EyIpKL4CZTFk11ROQNIkn+D/BsVb2+pXVyk/1T5MmzLShxaZZhoQSs+peeqjpKlX0E
         D66zZkWL5eYGYCdHkAtYVA1NcJX+lEDgA1W72/l4id/3TbM4p2X6VXyDKAyzszLz0266
         WrDwk7ZaI5PR09RwHN0udLoIVF9gt8coUzjBaJrKCQQoRQyjcmuqnCNMo9Dgzbvtj4L0
         I7ZsK8oEOIke1NrR6hsdFAn3C3MPQQDlbxIv5Uub5v2n5ADzClhH1Uq8DqjBFdBpgjcg
         vPJD8SFdU+8UsK7A8T3oW5r1ZBBvEAtTWiyFpMCOSvDI3WS5QK/lqiiDw5bDIe+/Ljb3
         6CiQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1771928839; x=1772533639;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=p6zyw58AOxXSub8QGwmMM/bb4H+WWArpgg93Ti+4E3I=;
        b=cnsaQr0sa4birOhRioV50K0ZVjDcMntJ+giY/8DStu3tyzTVrPTFdYlRlcHKPEFhUD
         GB2IVlUSfoJDK2gU4dbj+xP9/SVoU8J1vkMGZA0jyjQlJZMY1BrMLvyiNz3Yz4c3asLh
         VqnlMey6k4Jqt7V1Y/R0KdTkHHOtT9u1sHraZY46VK1x5FCiXzuJvMwrYjTfcLjlYL/+
         2tG07vJKLIbo3eKfob+sSIuplK44MGOag4Coc9HHZMnzHXx5N4Q3F2sOlqxfmqQd4ZUz
         CZ6JIl2MLUXUxwfCR4M26Bq3MEHDy8WVtVUHMBrcOXnCDLnIbquxpdNGN0IgQ9yAaQ65
         n3Cg==
X-Forwarded-Encrypted: i=1; AJvYcCWB2nbFTV60Mu4IdUEDDpHaR0novpUMx49nx6I0cdvzJzxYUHv9sudGOgIruM1xNUSFQ+M5k+oXUHmO@vger.kernel.org
X-Gm-Message-State: AOJu0YxSCTozQH2vn8iHA1MTh6L1sMJAnph0KyOvZyWys8cbnLZpkly8
	vJAT5e4Q3Yc7CIFV1rgdK7cAutpFR9d2B8cRSVeVIaij5cDsWTZXArKOnjgM5wrBdyQwOQ549mb
	FiiKp8Wxe+fZd824zPdnu4m2Lx4EB4uo=
X-Gm-Gg: ATEYQzzQbkQNcp+xmpSg4SCiNJmzFiQmVVQbiLBYqCNz2t5F2YVFR5fUkjAsWUC7XiF
	pkjdbRJWZr/G+GTH1Qxj+uwOr9Cfr777KWA0J1aRwOj3u61jvelXpSJQGufbasO4MsLQMtm1/oG
	VGKDKmU2jU+0dynUyTEDVAtbYhDJzMt1l8vpkO2ExSmc2dh7z3WndunMIyUpUTAm4D3ukQ132pI
	wT0pNrSkXT0gBbcJzFs7+X/m8kHdvFriRpW1JW3VoKJLFQHvdolbtyplkZCBw0mWBa8zWxjNCIM
	yrqbqsqvqTXvyTEVv9MaAmN+/AVYwZRKm2kEMQ==
X-Received: by 2002:a05:6512:2244:b0:59f:71c2:6a06 with SMTP id
 2adb3069b0e04-5a0ed87a0e3mr3947109e87.1.1771928838810; Tue, 24 Feb 2026
 02:27:18 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20260224094527.169215-1-shengjiu.wang@nxp.com> <20260224094527.169215-3-shengjiu.wang@nxp.com>
In-Reply-To: <20260224094527.169215-3-shengjiu.wang@nxp.com>
From: Fabio Estevam <festevam@gmail.com>
Date: Tue, 24 Feb 2026 07:27:07 -0300
X-Gm-Features: AaiRm52LfC9-UsCut8Tth636xjKLVR0axNCtj7qY01_2UMRqth2SAkou2H1hRPo
Message-ID: <CAOMZO5DW5Yo3A3kPOe+NdQNwTATzzWguCGBDyK2UFjCrHtwFeg@mail.gmail.com>
Subject: Re: [PATCH 2/2] arm64: dts: add support for NXP i.MX8MP audio board
 (version 2)
To: Shengjiu Wang <shengjiu.wang@nxp.com>
Cc: robh@kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org, 
	shawnguo@kernel.org, daniel.baluta@nxp.com, 
	dario.binacchi@amarulasolutions.com, alexander.stein@ew.tq-group.com, 
	Markus.Niebel@tq-group.com, matthias.schiffer@tq-group.com, y.moog@phytec.de, 
	josua@solid-run.com, francesco.dolcini@toradex.com, primoz.fiser@norik.com, 
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, Frank.Li@nxp.com, 
	s.hauer@pengutronix.de, kernel@pengutronix.de, imx@lists.linux.dev, 
	linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=2];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20230601];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c09:e001:a7::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-267813-lists,devicetree=lfdr.de];
	FORGED_SENDER_MAILLIST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	RCVD_COUNT_THREE(0.00)[4];
	FREEMAIL_FROM(0.00)[gmail.com];
	RCPT_COUNT_TWELVE(0.00)[21];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[festevam@gmail.com,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[gmail.com:+];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c09::/32, country:SG];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[mail.gmail.com:mid,sto.lore.kernel.org:helo,sto.lore.kernel.org:rdns,nxp.com:email,0.0.0.0:email]
X-Rspamd-Queue-Id: B12D218551B
X-Rspamd-Action: no action

On Tue, Feb 24, 2026 at 6:44=E2=80=AFAM Shengjiu Wang <shengjiu.wang@nxp.co=
m> wrote:

> +&ecspi2 {
> +       #address-cells =3D <1>;
> +       #size-cells =3D <0>;
> +       cs-gpios =3D <&gpio5 13 GPIO_ACTIVE_LOW>;
> +       pinctrl-0 =3D <&pinctrl_ecspi2 &pinctrl_ecspi2_cs>;
> +       pinctrl-names =3D "default";
> +       status =3D "okay";
> +
> +       spidev1: spi@0 {
> +               compatible =3D "rohm,dh2228fv";

I bet you don't have such a device populated on this board.

