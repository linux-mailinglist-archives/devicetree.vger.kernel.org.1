Return-Path: <devicetree+bounces-275452-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id AF2fFxtBtGnCjwAAu9opvQ
	(envelope-from <devicetree+bounces-275452-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Fri, 13 Mar 2026 17:53:47 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [172.105.105.114])
	by mail.lfdr.de (Postfix) with ESMTPS id F313B28797B
	for <lists+devicetree@lfdr.de>; Fri, 13 Mar 2026 17:53:46 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 287CD308627A
	for <lists+devicetree@lfdr.de>; Fri, 13 Mar 2026 16:52:46 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 4DBC23C873D;
	Fri, 13 Mar 2026 16:52:45 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="GYQe+k18"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lj1-f173.google.com (mail-lj1-f173.google.com [209.85.208.173])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EE2553C7DE8
	for <devicetree@vger.kernel.org>; Fri, 13 Mar 2026 16:52:43 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=pass smtp.client-ip=209.85.208.173
ARC-Seal:i=2; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773420765; cv=pass; b=reMWKXlI0iKjRZxkCx2hSS6Rr7yxsL/JQmTAQN0nTa2+b+BASk4593THntq4cJNtJ2zoedrGEjmVGrHn5vBzZaVRiwC4a8sekTM8jsWuqfQ3a8W5Cr7y/zLgWRo3y8uPoWIMtxwp5iun0dBaugWjN6F3zeIEG8NqGf6X4xjvxEA=
ARC-Message-Signature:i=2; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773420765; c=relaxed/simple;
	bh=p4zOxxN5sMxEMhttmRH6ZENKMtvVQ6PbFWqYTavE0PE=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=BYBEp6TsHrugkO1GwAovfjr2NPolOEkG3hyPV6ehNCmaSKxbMLAi06YiM42+jXp229KR8Xh6dUbjb9/4XFdUo9Pkc0BStgZlhkcqXWVi6u9eU4wwNZfLjLG6Pe9hoZ2Ft8MtJR2ODx+ou7Q109Mum96Q54FglzjGtijtyUeh0kU=
ARC-Authentication-Results:i=2; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=GYQe+k18; arc=pass smtp.client-ip=209.85.208.173
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-lj1-f173.google.com with SMTP id 38308e7fff4ca-38a45bc61e9so18928491fa.0
        for <devicetree@vger.kernel.org>; Fri, 13 Mar 2026 09:52:43 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1773420762; cv=none;
        d=google.com; s=arc-20240605;
        b=DutpisRZx69tCzhvRo/GKSFWJ/2IApQNVtW5gzlBAa9kbinTrKHHfw1eY4ECNwaFNW
         ljKQN7r93TzDDRpJtVm8jhjpA0Dml/aadas8GMiTFZq1lkaKSPEvjGOaxvyHNPKTN3+E
         /LNi6SICUmjiFR0cvFyCXY/PLtxnuhsn0vBwAVeFo8xrCY3t9Ly8scdKz94uGYHq7fMM
         sDY33yyRAtavZGAwObCX7FCm7yLimSKjAzB+ApisJpuD2wbFQIux9TxvNwliRoJ1EbN6
         Mhai6yxz0UBSak/utjA8cqL0KuSyMjgJQeZk+/bLh0L/4IQ985L5QoljN5uIJKM4VuUY
         ktbw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:dkim-signature;
        bh=p4zOxxN5sMxEMhttmRH6ZENKMtvVQ6PbFWqYTavE0PE=;
        fh=J9vOx8qJ5k4i/nNex/D6nKwmhoWDTzww/D6uBDdzOY0=;
        b=EvNEpZ1WJdpjjga1uMEqVbcGWR/4Butci4WaI3TuIp1NLoER3g+Za8UvAQRg7K3pHx
         0m74OcRQDCppu++YHUVyu7RBRVq920oNRPeYZmH2kDFdCxP6nA5VJ2DZmm8zXGbmaJTJ
         eOvjfBB4fWfrsv+QLDJnBZUT6E3p61LFTBaXDJwzDgT1QkDg+LW5MJBU0GEihreVfBiK
         tmzJXs7R9ahiXeKykiIsakeVjY/jIbi/POOxevr2rSmTa3IBlM5WSnUW1orL+3krYIt+
         vQ2FIkAb1qqMHRByIkzT9kf6Afv+lUGoUOyJLeopRUbrJJCUstTRDKEJzh8eB8wkPcgx
         xwLg==;
        darn=vger.kernel.org
ARC-Authentication-Results: i=1; mx.google.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1773420762; x=1774025562; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=p4zOxxN5sMxEMhttmRH6ZENKMtvVQ6PbFWqYTavE0PE=;
        b=GYQe+k18weg+mY2SrsWG8WYfnL01x10hLM4j9mXlTA/9E6oQ6K46IpDZgjrP3NCOR4
         pw7CSbbs/8soEJKfp8WKmdgR0c5zPpHdCTYxguUG6g+Rnrnc7NkSrLZktoUQzoS7QBVt
         DC5rqeBs0tag3QuH6ofYexMo226I0JSsf1hwA4diED2eN/2PdGVXRRMkty4kipOCPpmO
         2zFcWcEUcZTsrw1LqZK84asyLWsDJW7hPyptoM6a9gRgXC+aQx453/ZDCfLQSCVSyena
         OPTsEywEjJbF/xw6pdMeZbgTRpkbebiAIHDdUrlSKOwGfumxpIwHS5Lnpeoaz1PXxTEz
         M8QA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1773420762; x=1774025562;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=p4zOxxN5sMxEMhttmRH6ZENKMtvVQ6PbFWqYTavE0PE=;
        b=eHmFg3uJsPw7K4HbzbPanfOi5We/TGa2L/wOyoeUoQXJhJ4775kGVPVenYE6iXrQlq
         pzax+/00y/q0jeOsHeiaXUHYa4cBNIgJSj/2ldPZ95k8z8MUVAAKXKa4wjsN9/r8zRD4
         jDes0jUNH6IxPskmniwVXcJ/yV+V12sNKwGwdmK6cJ3gpHkqlP/TFRPTOEEc+NbZljLw
         MiD7aeGBf/8oIgledSPW/G/cYXspwL8agixgi084MmB4LA29bm+W2fEraouiLfB/2JC5
         G6/mN7uO80dCZizwasdVuVRburyGAGwFJVjInEvZkxIR5V613X6P+SwzHyCzYfeR9FQp
         3d6A==
X-Gm-Message-State: AOJu0YyFn+zzbWOKWvf3CebCKrTun2UujwijVYXM/pBcD40Yr6SZ5ot1
	X2RQ0HHU8rLedkiAjsXdj3ENv0qBDOHvs55wM6iBF/hmGOdhkb2MKsyPNFlle3QFaJj4mobR0s7
	7h0kKORqytAdTgKXpVBqJncf+zmHEfnsTZw4K
X-Gm-Gg: ATEYQzwCzXPECwdxYkvpLU/WF9RIRuFMUOqLo8knODbaLL+BuCMz1PpnYz/xRdWMsSj
	fOlonbNZCp5KeRtDhMmlHKBgFv/5HLHnavkXaMRcCLc3Vrj8DBI/yBMCkcELh0fY8wvQYc2Zi/8
	/Sx7v5BUe6cxF1fASbSdg373UDgtuXLaBWx6c9qlTVIVXkrVIxk1toMmsFPmD+LiL7K4byOQgDN
	d+hZhG+TGBtBfw76wYs2qk3POqF02Vhry4VbnoS8Jr/3F7dAxWlEWTyVFEX98zo0+tTrPihLrU+
	LwZxk5smruijdDyUZmtfjbFS+hxe/CmTA3nvzx1CfUx2Hi8UQhyBVQrGE5EDotfWaqf+eayz
X-Received: by 2002:a05:651c:2102:b0:38a:4e44:7a14 with SMTP id
 38308e7fff4ca-38a89824096mr11615721fa.35.1773420761766; Fri, 13 Mar 2026
 09:52:41 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <cover.1772898346.git.stefano.radaelli21@gmail.com>
 <7c84625f82c562bb9cd2b455465d63a1a25bf19e.1772898346.git.stefano.radaelli21@gmail.com>
 <CAOMZO5C+USp34WQ9ap+N9ha6EgU7JgsYkRsLEW=ZdizbkMQvPA@mail.gmail.com> <abQ_d9fGarNobYdo@Lord-Beerus.station>
In-Reply-To: <abQ_d9fGarNobYdo@Lord-Beerus.station>
From: Fabio Estevam <festevam@gmail.com>
Date: Fri, 13 Mar 2026 13:52:31 -0300
X-Gm-Features: AaiRm52CBpU6R9UhBbKbW5aUQPcGYYXwouM18lgYHobd5ENQYOomz0enfBALELw
Message-ID: <CAOMZO5BnuGc8sddmfhKJhFgWa+K2gExeRN5097794j48+Dw-AQ@mail.gmail.com>
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
	R_SPF_ALLOW(-0.20)[+ip4:172.105.105.114:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-275452-lists,devicetree=lfdr.de];
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
	ASN(0.00)[asn:63949, ipnet:172.105.96.0/20, country:SG];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[tor.lore.kernel.org:helo,tor.lore.kernel.org:rdns,mail.gmail.com:mid]
X-Rspamd-Queue-Id: F313B28797B
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

On Fri, Mar 13, 2026 at 1:46=E2=80=AFPM Stefano Radaelli
<stefano.radaelli21@gmail.com> wrote:

> Correct. It is not included anywhere at the moment.
> The Symphony evaluation board uses the IW61x configuration.
> The imx8mm-var-som-wifi-brcm-legacy.dtsi file is kept as a separate inclu=
de
> so that carrier boards using the legacy Broadcom-based SOM revision can
> include it if needed.

Then imx8mm-var-som-wifi-brcm-legacy.dtsi is dead code. Nothing includes it=
.

I don't think we want a dead dts in the tree.

IW612 has not been upstreamed, right?

People using the Broadcom Wi-Fi on the old board may still want to
continue using it.

Please don't break it.

