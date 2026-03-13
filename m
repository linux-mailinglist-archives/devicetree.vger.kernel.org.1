Return-Path: <devicetree+bounces-275445-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id wPriEZk+tGlljgAAu9opvQ
	(envelope-from <devicetree+bounces-275445-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Fri, 13 Mar 2026 17:43:05 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id AC2D32874F2
	for <lists+devicetree@lfdr.de>; Fri, 13 Mar 2026 17:43:04 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 556103031AD5
	for <lists+devicetree@lfdr.de>; Fri, 13 Mar 2026 16:41:18 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id DEE4B3C73D7;
	Fri, 13 Mar 2026 16:41:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="HG8UaAiR"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lj1-f182.google.com (mail-lj1-f182.google.com [209.85.208.182])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7F21C35B644
	for <devicetree@vger.kernel.org>; Fri, 13 Mar 2026 16:41:15 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=pass smtp.client-ip=209.85.208.182
ARC-Seal:i=2; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773420076; cv=pass; b=WGAoRVckUmIBf2IgEfjsKmzI3WnW3SAQXxX1o/KPU0jTxRfO1S/+j89JxNjkK7/HCtf74/duzFlb4tkZ3o09/RB6ccVLmKD2V77Tjv/KpobCHJqcXmA//HFstnKMpgt9kdX/DVzSLfjuxyuSGV4Xh+oe/MdsjZBe6H9qoBu/7aM=
ARC-Message-Signature:i=2; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773420076; c=relaxed/simple;
	bh=7ebijAavojuxgzNpkroUxDtvAf3sJTdP3uqS+Pqvjz4=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=nU+nr4oQGvy5duuIuqoagwalua0GRY6DcxSdLamMUeI4SLe1CLUl0nbKxdBlTeOXCHQSIJGzI7rFXDQjWfea/cOY8NgC+c9BHQOVdedujTZXP0fHl6u+YndrccHtT68JmdEegIMdCvlaV3AofHftiBE9rslKu2Eu5I2RWhIqUQw=
ARC-Authentication-Results:i=2; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=HG8UaAiR; arc=pass smtp.client-ip=209.85.208.182
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-lj1-f182.google.com with SMTP id 38308e7fff4ca-38704f70ea3so20283881fa.2
        for <devicetree@vger.kernel.org>; Fri, 13 Mar 2026 09:41:15 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1773420074; cv=none;
        d=google.com; s=arc-20240605;
        b=AKTEio57OUwUJQGlQ8afYiZ1/rCGEi4q7U3YMFGsDfLUkYfcmR5j4uTmH9QXHrYTro
         LEEx3D5rIQCbV2nR1L6UvsAM+EPRhSAOuaeZri9yjkyXEg3zKzylOgLcVlL1BOWwpcSO
         BxsLGOL10Z+ULyu1VuQMJDhvaIDyQHiMWpXD5csjB+qY9nObGTIR/BUrN1iMmmXJ/afs
         qMLBIZnyYe6QKOYJ0TlWEtQIdnDWPKidXknP3H2HhGNVupDcaGR3rDdB4iH7Jq1ZdZoV
         v2cxkmAtkEJYjKgojRTda/0vN3NDsS8o5q+BPkl7syi3SfFCvOA5yGGuZGQpmc26YEfw
         NfYA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:dkim-signature;
        bh=7ebijAavojuxgzNpkroUxDtvAf3sJTdP3uqS+Pqvjz4=;
        fh=J9vOx8qJ5k4i/nNex/D6nKwmhoWDTzww/D6uBDdzOY0=;
        b=YiDlSlzL1fS6Kp8ssVigmH3aSjeDAKHk6eNzDWByRZ1Jd1dsH2aKIJ0W7my1kwm2Tq
         mGP9nEuJS7yo8XwMJjb0Uf/ZY/lZbps2HwRhl8KPeypow/fG5QN024FlJXu3IuCmyPXE
         0dEh2a9jg56Fa/2oMZSx28qRwLkwa0uPWsYFJpbCkTHB0GCBFjAHk2MK7gESdc0PHwGt
         px17p6nl7p1Cbv3IOID6HekmriK4sf01oyge6PWFu8laRLL+L44LzcD9WDHwD/3G3LDL
         +wDK6wm7yS7a2fFVJZc/mPIb7qs/Gek23Fq3chFoWtzrUDc0SZv1+B3z0fV+C/IAUDqX
         f60Q==;
        darn=vger.kernel.org
ARC-Authentication-Results: i=1; mx.google.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1773420074; x=1774024874; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=7ebijAavojuxgzNpkroUxDtvAf3sJTdP3uqS+Pqvjz4=;
        b=HG8UaAiRdq0p3D309s16OkuUirM+8p7AMoxxMI3NeFLev0GFrvCyyko9KeuzufiZGg
         MaN3LdVA3/twH6Oh3SGu9nfjOMHqjDfuafj6zftBBkVJCndFZGp66xy+p5X6znHkYwUb
         ClUFewsA0CPMeLRkn5UNj8v72vbdwCqEgffoHQhz9EzCyobSY1QhnUcrimxTKjpuLWTy
         HOsAn9Ng3884h9xal8ZXpSZr83Wn1lyNUi/InhOHgaQ6GH3z4Vk2eJcUEMy3ibuWJ+y/
         K/bKjc94KlKOSJZYEUSxKzdBmdYxaX45aag03hq+ZKXnItTEIYv9vtxYVVtK1dLBW0a2
         dzrQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1773420074; x=1774024874;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=7ebijAavojuxgzNpkroUxDtvAf3sJTdP3uqS+Pqvjz4=;
        b=Q7PFYwJJNPi1G6TR0jFTQ9fCUzUKwEDUBcaU3zPiHOrzEluuekdSFsadRt7dP1Lnk5
         fmgrkr0pGvDcucSmZ7RcOMkZAu+v7k0PaZfNOjHX1IhIzJaGROt2culXBQBm96h/T/qf
         uizHrSvzv3vUKV5DMaWAkYl9jeB+tgAL8S/PccoA3JcrbUHj75cvl15ka3V6PAEER85L
         mXkMe0yK1HtgzEiFU/DFjMfeuheNu9Xn0rqNq7wbQeRkRPEzg+KG7OSfdOux7m6r+K/P
         6rADPjpvArALlOGSxyxbXDDDaAJqebq5ju+yu1xVlsawbqFsxsMqUDNWZnd/5WPmg3EV
         Zw5g==
X-Gm-Message-State: AOJu0YzLTZfQ+52rCqB1DmLegmQFdG5hDl2TsnkcWN1VKGOkBRfQhVh+
	pbaZUlRE2Dz+haUnlSfA4nsetR3WkOnwyxAfeI6oTGE/rgHiSL0Q02MRekskDnh9WdgBYXgciQk
	vYDnLIA43VERpjisOQNbF7Am9TqkfQbQ=
X-Gm-Gg: ATEYQzwNdeKD9MDjTq79mxvOJuMiuVo7miYCp9E93WiKroeBzvh4JaD4/BtmBqkiV92
	4eol4l0R7L0/jdAqLUe9aCgAH/HiVqZE+naLGDUekvqNUBaiQykbtVfyxdNTaWVlKZl2ZBseG9K
	tOkZTIJQh6XgjRkuR/b6+HcF1e5G643LRBgrZLssT6yVXYKNqWjNtVbcneKDzCpeJXrU0T93q8B
	UcAFgSEZrr4PCwuuadAyqA9saeXk+0a4TSrN0Bsb481K/09Tr2mDg/wDk6Ms5I9EEkrS2rG4Cl4
	qyistSV/1anGxtsHWG8oB3FTaGiIny0Leg8Ttgp88okPLC2RHryTF1urCkMk4ECtOkrz1te3kiF
	WgMZDmfE=
X-Received: by 2002:a05:651c:411a:b0:38a:6acc:85f with SMTP id
 38308e7fff4ca-38a8983b635mr8205961fa.36.1773420073322; Fri, 13 Mar 2026
 09:41:13 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <cover.1772898346.git.stefano.radaelli21@gmail.com> <7c84625f82c562bb9cd2b455465d63a1a25bf19e.1772898346.git.stefano.radaelli21@gmail.com>
In-Reply-To: <7c84625f82c562bb9cd2b455465d63a1a25bf19e.1772898346.git.stefano.radaelli21@gmail.com>
From: Fabio Estevam <festevam@gmail.com>
Date: Fri, 13 Mar 2026 13:41:02 -0300
X-Gm-Features: AaiRm53S_d12Zw5UGPcEotGK3352SUR9b8Vel1YzgYrE0c2WVa0HFOKlHx3vKPQ
Message-ID: <CAOMZO5C+USp34WQ9ap+N9ha6EgU7JgsYkRsLEW=ZdizbkMQvPA@mail.gmail.com>
Subject: Re: [PATCH v3 06/11] arm64: dts: freescale: imx8mm-var-som: Update
 WiFi/BT with variants
To: Stefano Radaelli <stefano.radaelli21@gmail.com>
Cc: devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
	imx@lists.linux.dev, linux-arm-kernel@lists.infradead.org, 
	pierluigi.p@variscite.com, Stefano Radaelli <stefano.r@variscite.com>, 
	Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Frank Li <Frank.Li@nxp.com>, Sascha Hauer <s.hauer@pengutronix.de>, 
	Pengutronix Kernel Team <kernel@pengutronix.de>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=2];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20230601];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-275445-lists,devicetree=lfdr.de];
	RCVD_COUNT_THREE(0.00)[4];
	RCVD_TLS_LAST(0.00)[];
	FREEMAIL_TO(0.00)[gmail.com];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	FREEMAIL_FROM(0.00)[gmail.com];
	RCPT_COUNT_TWELVE(0.00)[13];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[festevam@gmail.com,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[gmail.com:+];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,mail.gmail.com:mid]
X-Rspamd-Queue-Id: AC2D32874F2
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

On Sat, Mar 7, 2026 at 12:55=E2=80=AFPM Stefano Radaelli
<stefano.radaelli21@gmail.com> wrote:
>
> From: Stefano Radaelli <stefano.r@variscite.com>
>
> From: Stefano Radaelli <stefano.r@variscite.com>

One From line is enough.

>
> The VAR-SOM-MX8MM currently integrates the NXP IW61x wireless module,
> providing WiFi over SDIO and Bluetooth over UART.
>
> Move the wireless module configuration out of the base
> imx8mm-var-som.dtsi and provide dedicated variant includes.
> The IW61x configuration is moved to imx8mm-var-som-wifi-bt-iw61x.dtsi
> and used by the Symphony evaluation board device tree.
>
> A separate imx8mm-var-som-wifi-brcm-legacy.dtsi include is added to keep
> the configuration for the legacy Broadcom SDIO WiFi module used on
> earlier SOM revisions.
> The Broadcom-based SOM revision is no longer in production, but the
> configuration is kept separately to preserve compatibility with existing
> boards.

 imx8mm-var-som-wifi-brcm-legacy.dtsi is not included anywhere, right?

