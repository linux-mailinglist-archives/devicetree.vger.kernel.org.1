Return-Path: <devicetree+bounces-259841-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id cJbmJnKjeGmGrgEAu9opvQ
	(envelope-from <devicetree+bounces-259841-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 27 Jan 2026 12:37:22 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [172.232.135.74])
	by mail.lfdr.de (Postfix) with ESMTPS id 453F393AE7
	for <lists+devicetree@lfdr.de>; Tue, 27 Jan 2026 12:37:22 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id 88EB83002318
	for <lists+devicetree@lfdr.de>; Tue, 27 Jan 2026 11:37:21 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 77B0A2ED860;
	Tue, 27 Jan 2026 11:37:18 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="H7nH0z4D"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-f54.google.com (mail-lf1-f54.google.com [209.85.167.54])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D4981221DB6
	for <devicetree@vger.kernel.org>; Tue, 27 Jan 2026 11:37:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=pass smtp.client-ip=209.85.167.54
ARC-Seal:i=2; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769513838; cv=pass; b=nBShUe4GIMVGtxrKzLBcHBDQow1xAaEd8V1r/EntZY9wxq1rwfPdJbl4rJ8n1g6iYaodetH4RjtllX6uY1/uKQQhioGqk86caFkqfjw5gs80eRvXeD85SfCuZON2N/EhHIVHKXiZIRvUqddlqs/qxlicmvdndo85lH15eTC98nQ=
ARC-Message-Signature:i=2; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769513838; c=relaxed/simple;
	bh=49jkVDLgigoWf9FqYWC2knB2AMMWJ4qHuX69VSM5V/Y=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=S3b5HnOVqJTxB6G5bC3QMJ3vXkST0qNKsPQdiEgLoz56So7pKlRFJT0el6vzYzICP7Hq5wI6WiplNXoNTDL0/G5NvxufyhoMLJTGDYptr89B1kTk6UUjg0hKATprldgNfPtaNRM80NH0WJi03QWByfRKQz3KO4DgHvgJbvF6gio=
ARC-Authentication-Results:i=2; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=H7nH0z4D; arc=pass smtp.client-ip=209.85.167.54
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-lf1-f54.google.com with SMTP id 2adb3069b0e04-59b6d5bd575so5680784e87.1
        for <devicetree@vger.kernel.org>; Tue, 27 Jan 2026 03:37:16 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1769513835; cv=none;
        d=google.com; s=arc-20240605;
        b=FLFIn7EyIaTujoPm3UhdzROR8qgD1W89NuFXZhA6KKY43qa6LQzh7kkq7g83b7Uxtv
         OiR3kuLg8WQxYIe2tTIdzfvtXntcH0b8g+PZq7gt8e8vnKCDHhjgA421dgjPHDWzHGNs
         lQXVUFn/kEitQdEUf+XJfvpvlZkyq9YDslevXJr1oWkLK+lpeQAbFjq7vNHFcJpqHb2+
         tfMQbioVe2OKzJFRhGPzbVQH2oD3jDY1Mx/J+9l6EWaxDIN7syF9wbYKWO84rGlfGKOZ
         /kti+9kKQNu5F3H6P86va/2P0JQfC3Zqad2/HlWlezhgpbni2ScC3OY3Oz4CqwpH1BXU
         KvAg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:dkim-signature;
        bh=Y98e89eykfl1m2pRlpPtKzy7ToW8zTQ9myJCqaoYz4M=;
        fh=GxFc+tUoFpD9q0B22El1139yqFrs8Pba649FBSKNde4=;
        b=MAIDOI+qF3fFxrStw1C6nTLTGtvSRq0odnwpXnHxxa3d7kfJYGcv1wp6iwngIDrStg
         gOllevUD1EG/AJsNspltBWW91jNHG+kK+um1YitZd+a0451P/8E77nwlGT0C5wd4iIfv
         DsVmtsUoZOIbVR9nJSFUNzNMQAZjjMD9ci3gjSiGiHl7+9kg2P5BLIYSLEzjVpOFOQc4
         xfoeoj2e56hRxGOzLWr+E9YpjAYXO2YzyKyXrPOuq7L4EkGGsIoC3sfmVPqC35aGMxB+
         SJ/C2cS2IUUE9vGMO4qw9S/QQ+/YqDcEQQ+cBBEE3ocJJ435wVDUsUwkVfNU+7RCarNQ
         0j8A==;
        darn=vger.kernel.org
ARC-Authentication-Results: i=1; mx.google.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1769513835; x=1770118635; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=Y98e89eykfl1m2pRlpPtKzy7ToW8zTQ9myJCqaoYz4M=;
        b=H7nH0z4DKoGsP8PevSq35ZZMo6TVnKu+LNCtYWWvMASqWuDZBtdCzoV2midW5BjB7x
         6EiZSTAb8amcocxWZMkRz3SlkqdeC1u6ZZbDLD7uVmrfE4v2s6XCSWEG1WysQOvBHdAQ
         je0nMoZWxsdEXDlhQ4nEA9boLk/sxsYJhNcBX9Uvi/CLtCSIqd6ETt1Vpw/l+zy8bft+
         NGn+4/6iz/z+StzPWBS85PSFUzwjnQlt5wZNxINmagkWZGQAoqE2pKvYyzZSge2Cn1Z/
         ovcRMQhcukA1zyZ9AmeM8jlkuNOGF/Br6J6zdoYdavcKcsOUrKyjfe2stupAfQjpJlfV
         FLLQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1769513835; x=1770118635;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=Y98e89eykfl1m2pRlpPtKzy7ToW8zTQ9myJCqaoYz4M=;
        b=sW3v6xPHQ9fHfgHKJSzVsidh599hYWBpXk8hsGgZ35cBy0JXHNjh3s5HYjvDcnPyzr
         shmB/52sFBKR57P9tr6XMAtShCWzIUKMnY4+aSg0hRD1q9+23CJqbJYE7V/8VfBShotK
         gBD5clSTyL04GvDdeLZhUp4XdnpJL+JI7ERrwNufSv9kT+s+ywwVohi8PoEdjkXLyacY
         VKY+NMNe0pe50Hf+f+lfYEVqz1JMfKNQf22EhfeQTUcK3xa7PjC5tiqKPi9Ma0DUUApG
         F31VGZFx4lRdXMvbpPNQW8DPAzds1QpBUBErcd3Rqmn2m+2m3ced3ImVb+IY5Vsqzxuj
         kNFw==
X-Forwarded-Encrypted: i=1; AJvYcCXk9M8US7xMcbFgJaodnOgRghdD7lgsBhr2f+x4HsofIfwEp2nrc30zqdimT9+W8PEp6JyWh/j2MUUa@vger.kernel.org
X-Gm-Message-State: AOJu0YzEfyk+eT2EF/wtbTqCCi3uB7a63ng+o60dY/vW309W0OxVB3kz
	uq6orGQzaPG2qxYDcAZCtdrcq8Pa9diqFBkTz4bHZ3AyPMLev4FkQEX4ywBVaIw5MxdscmIv9tS
	uRthaJowMDsClLAaE/nN08nM6FNDXNkc=
X-Gm-Gg: AZuq6aIHWSa+GAMxkss6DYKNujHszjDQ6CTk9vigWNNjif3Bc/A6lagkZ82utLZCZ+W
	GWZr2EZF28FKO28WgoeErOSMep/0R2xGouYwgnRIrGiL/ytEqCPM8bNirFHwy3cLMGT+H3z5Kkz
	TKbLdkIG4CaJkYKGkdm+C+36qsU/FrSKhbOlthxBqiylPv8XpAmfeNhYikUD/yTjVRABfTzQdxl
	ShO7vKA/EGfnemx4KTeYmeT29wOLndhPIruCvCdtvhwVS35WAjmNAzFRMnl9b1Jdz97qKOvRmWz
	iDK1TJcXTgbxNfGZ/4YFhT2uJg==
X-Received: by 2002:ac2:4f13:0:b0:59d:d65a:7440 with SMTP id
 2adb3069b0e04-59e040263e9mr499024e87.29.1769513834658; Tue, 27 Jan 2026
 03:37:14 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20260120231930.2782444-1-festevam@gmail.com> <20260120231930.2782444-2-festevam@gmail.com>
 <e6ea0b8b-5f6a-4b37-83d5-3f3aa3e37e19@nxp.com>
In-Reply-To: <e6ea0b8b-5f6a-4b37-83d5-3f3aa3e37e19@nxp.com>
From: Fabio Estevam <festevam@gmail.com>
Date: Tue, 27 Jan 2026 08:37:03 -0300
X-Gm-Features: AZwV_QjMRjUSDkLInDgdbVI2L4zjwU6c5dvSG7txEB7SHk3CLLCM17eLXHkk390
Message-ID: <CAOMZO5BePW+k2gKOsCbnHQ_xEKVMzZSj8gRzF9TPYRVUcbo+Hg@mail.gmail.com>
Subject: Re: [PATCH v3 2/2] drm/bridge: fsl-ldb: Allow the termination
 resistor to be enabled
To: Liu Ying <victor.liu@nxp.com>
Cc: marek.vasut@mailbox.org, neil.armstrong@linaro.org, robh@kernel.org, 
	krzk+dt@kernel.org, conor+dt@kernel.org, dri-devel@lists.freedesktop.org, 
	devicetree@vger.kernel.org, frank.li@nxp.com, 
	Fabio Estevam <festevam@nabladev.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=2];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_SPF_ALLOW(-0.20)[+ip4:172.232.135.74:c];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20230601];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-259841-lists,devicetree=lfdr.de];
	FROM_HAS_DN(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	TO_DN_SOME(0.00)[];
	MIME_TRACE(0.00)[0:+];
	DKIM_TRACE(0.00)[gmail.com:+];
	MISSING_XM_UA(0.00)[];
	FREEMAIL_FROM(0.00)[gmail.com];
	NEURAL_HAM(-0.00)[-1.000];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[festevam@gmail.com,devicetree@vger.kernel.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	RCPT_COUNT_SEVEN(0.00)[10];
	ASN(0.00)[asn:63949, ipnet:172.232.128.0/19, country:SG];
	DBL_BLOCKED_OPENRESOLVER(0.00)[mail.gmail.com:mid,nxp.com:email,sto.lore.kernel.org:helo,sto.lore.kernel.org:rdns]
X-Rspamd-Queue-Id: 453F393AE7
X-Rspamd-Action: no action

Hi Liu Ying,

On Wed, Jan 21, 2026 at 5:23=E2=80=AFAM Liu Ying <victor.liu@nxp.com> wrote=
:
>
>
>
> On Tue, Jan 20, 2026 at 08:19:30PM -0300, Fabio Estevam wrote:
> > From: Fabio Estevam <festevam@nabladev.com>
> >
> > The LVDS Control Register (LVDS_CTRL) register has an HS_EN bit that al=
lows
> > the 100 Ohm termination resistor in the chip to be enabled.
> >
> > Add support to setting the HS_EN bit when the optional property
> > "nxp,enable-termination-resistor" is present.
> >
> > The motivation for introducing this property was a custom i.MX8MP board
> > that was showing visual artifacts. After enabling the 100 Ohm terminati=
on
> > resistor the LVDS signal quality improved causing the artifacts to
> > disappear.
> >
> > Signed-off-by: Fabio Estevam <festevam@nabladev.com>
> > ---
> > Changes since v2:
> > - Rename variable to 'use_termination_resistor'. (Liu Ying)
> > - Remove clearing the LVDS_CTRL_HS_EN bit. (Liu Ying)
> > - Use dev->of_node. (Liu Ying)
> >
> >  drivers/gpu/drm/bridge/fsl-ldb.c | 7 +++++++
> >  1 file changed, 7 insertions(+)
>
> Reviewed-by: Liu Ying <victor.liu@nxp.com>

Could you please help apply this series?

