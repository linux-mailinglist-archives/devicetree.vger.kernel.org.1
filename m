Return-Path: <devicetree+bounces-273862-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id UP73LKoMsWldqAIAu9opvQ
	(envelope-from <devicetree+bounces-273862-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 11 Mar 2026 07:33:14 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 180CA25CE53
	for <lists+devicetree@lfdr.de>; Wed, 11 Mar 2026 07:33:14 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id DDE38302A6E8
	for <lists+devicetree@lfdr.de>; Wed, 11 Mar 2026 06:32:02 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id EBBB32741DF;
	Wed, 11 Mar 2026 06:32:01 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="PgggZCou"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-qv1-f49.google.com (mail-qv1-f49.google.com [209.85.219.49])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A3A4723EAA4
	for <devicetree@vger.kernel.org>; Wed, 11 Mar 2026 06:32:00 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=pass smtp.client-ip=209.85.219.49
ARC-Seal:i=2; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773210721; cv=pass; b=KtPLKEtvoOuCMcMBpJrf4Kj98V0ePWspPUplsxiUyTMjwpXZpIleiNOtpWZ//UGwFK+uC/FSNDdyCjYk5uXLXvyFZmcwAF/i8RSCbMjLNnBCJJcRdVLmIL/vic6T3lfIL93kx1lDcHx+oytAifXQX7zC+LHe72I1bQYxuGlEPi4=
ARC-Message-Signature:i=2; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773210721; c=relaxed/simple;
	bh=rN57e/3PgPzhqFp/2itSE4NEkTuMzP2qUnVl77APXA8=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=TNkxtKiBzThcR4ePsazHSe1zmIqWX0HExLVpINzwiIgyk4TQIknJGocve0ZZOj18nPUFhdh3Y3kMKvZTQe5wq4W4Uzknv0i7ZiiTJVbxknzoQlL9QoaNKtdSCEpvBoFsxPhkUyPc07AweOMllWr9JSkjr7KQ1q8KifV2EqWEgD4=
ARC-Authentication-Results:i=2; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=PgggZCou; arc=pass smtp.client-ip=209.85.219.49
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-qv1-f49.google.com with SMTP id 6a1803df08f44-899fa9610bbso159217816d6.0
        for <devicetree@vger.kernel.org>; Tue, 10 Mar 2026 23:32:00 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1773210719; cv=none;
        d=google.com; s=arc-20240605;
        b=FemAK7lN3CYhW5V80YDgZGty5uRvsVZ4krlMskz/UhbNm7hwx5m2B9I9fQHcySPwCZ
         kemjC2LgyLfPDtzIPjzgZBHTcguaKGUII6ry98syLHT4k9IODhqrprYwXpM+aP7+l4Yr
         kYSym/nOBNZ1PYZEOVuvihhlaS/pOAkp8RUAQUW8FwvrpeDAccRggsoTLn1maHE3+JGq
         KFNPm+BRNb4ZwBBmmd04qN5YfnDdDgMnB9EfN0ET7/4eEXR9A92kIOVrDJgE0NDD5Ekp
         0UGa1p2Eccv+RLJUN9qQ8/9iiPtPU0/8db8KwazcjbImZApkOAu1ejMV/WEZMEpKyIWl
         a47Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:dkim-signature;
        bh=886lP/ymn9GmA/VWoJxMBnbcdeqM8sa1BFSxy7nE5AI=;
        fh=32KuDqu3I0V5hc+a/4A7zAl7mwvvVzKCV7X3xeFuoHU=;
        b=NvWGWmtgthggzEnJxbHv9YZz2w8APfITM7tgBith7CrXqROVFi2e0OfF/UtV4Ni+Y5
         qaccfRz3a6+5rxl+YE3zI11qEccImY27oyc4WIL4Lg6lxrn5U8ynhCpiH1gsSJXnKIp2
         PMirVW8vYM1pRpOr15+qTshUj/53xi86KWMDC8AG3sTtoyn0e4g6R+y80T3WVHkNEIOX
         K73Qqn9wuZ972INRb7yRBa494fOm/hYm7c8uJbMRk3ie7GHYqZnhpCdPfPZx/y22vuOE
         9Sd9E0ujpyVVw0dZCYI1K0rHqqXpF4khOCZWiRMWxJcs6hw2vUvQt+G2fna+meFCBgTa
         uUJg==;
        darn=vger.kernel.org
ARC-Authentication-Results: i=1; mx.google.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1773210719; x=1773815519; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=886lP/ymn9GmA/VWoJxMBnbcdeqM8sa1BFSxy7nE5AI=;
        b=PgggZCouVh3P8tBC2KVxTXkGt+UF1VKo/cYSON7NKJPlkS8pmSRCcyIpS70UVB9f9i
         86Erlhq9u9kaSjwTnzLuqAwKExGwaXnQ2FbPrko3GC/4W8kWRS7da6YPK18I7Eef9BV2
         bObgVGPMr7j8Yvobd7IM3wcZuaf1VAV/WVQ445BlyNLWOKfSE72N71zJXxRxHQ43c8LC
         iJgg/bIuU573KVtzuQYdN0HKoEukf8XNju0jxy/4eJveRFFdk2IlQ+l4rVIAY4ca8A83
         tdcQGiVHcUaryU+/D0Ebdx98FGU+St1+O1KwFqut8Hqs7ZgxZlS+7GarGBa3QQMF75zz
         hhGw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1773210719; x=1773815519;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=886lP/ymn9GmA/VWoJxMBnbcdeqM8sa1BFSxy7nE5AI=;
        b=HzPL0FlP5RhRPqM1bBUfk2ad3eW/c1IGjlKNzaqXv9f3g79iRB67oaZ5jXBZ7xht4A
         E2uOPSqOfBFVMUJXGk5ea3pBiQB9ML2ypBE527XnYVLOapRAG6KAYf/9Y48JoIlrDWQ2
         iU8DzlQX8O5DpNltmEWPbrzUx+aAOVVux3d1kx9ff54+9n386oc1ISqGoUb9PwbJ3xdt
         Cqychn75DNEeJD+dx047zpyFCR3AecPEWnp8GDAN3g3cHMl5svP1u1dpJPK6f5aeYGS3
         PJsdOeiDMmUB3h6oItgyM2pjPGjv7wXQUImwX7eGJjkvcNGiwpFPXhFrVXvgTKLR0f4E
         ODXw==
X-Forwarded-Encrypted: i=1; AJvYcCVvKpVeOOgyYMOcCp8FYNvz+wXiKE46Mb80lSR0RR+MYUgGPpmFxJgU/l2Ahqy3HKBreWcAK+/XcLzH@vger.kernel.org
X-Gm-Message-State: AOJu0YynZz80MUAqW58NaMx2d7Iu8FVir29XoPskbxAmDa/+n5uijdfU
	IP7SCFfjPpu1rcvFFK/raW/HXp3hWdZn1YTj0WAaw0y3HJax9BaFNAelsxfOZGejTE1uDnfSPsO
	6OLOrwnSdJHa7R4dtfZGv+hgPuMQx7q0=
X-Gm-Gg: ATEYQzxQAXlZR5q+6huK1RGQhcMMBp5BUlPomxCpFj4xNYf2cUm+DOOGS5oVV0+33ae
	qxymrWMhDxTQWHIc263JSSUJWgTFvEGuvoFqlRmwcgipF3+jiDESWPVOGA1yvW8pyqh7UPV0eQ4
	75lTeJYzkNWFJ6wDuBg74D6IxPWYpO+rxhKxhe4pOGNPEgXm2W457h+1MFaCRm7KMr2a/+ZpgO9
	ev5w72+cfOSGfPurxWsYTh1cYzq8jl9zGQH9SuanJcyrWkkpCqg2PGxfd86p3oxilBixMi7s/gt
	g3S8T5R1
X-Received: by 2002:a05:6214:62d:b0:899:e919:2a7f with SMTP id
 6a1803df08f44-89a669996b4mr18786536d6.8.1773210719514; Tue, 10 Mar 2026
 23:31:59 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20260203-sanmiguel_init_dts-v2-0-6a5682c32b38@gmail.com> <3256b313-7671-4fda-9949-766906c344a7@lunn.ch>
In-Reply-To: <3256b313-7671-4fda-9949-766906c344a7@lunn.ch>
From: Potin Lai <potin.lai.pt@gmail.com>
Date: Wed, 11 Mar 2026 14:31:48 +0800
X-Gm-Features: AaiRm51ABuOL_zc6873VlOuNdm3hfQIVCU11Ut2lHruAF0li-NkozYrOk4XKKnY
Message-ID: <CAGfYmwUfKk5OrFzJRHyu6h-Jf-cqbxfh62wRmxwOL8K7VfFGfg@mail.gmail.com>
Subject: Re: [PATCH v2 0/2] Add Meta (Facebook) SanMiguel BMC (AST2620)
To: Andrew Lunn <andrew@lunn.ch>
Cc: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
	Conor Dooley <conor+dt@kernel.org>, Joel Stanley <joel@jms.id.au>, 
	Andrew Jeffery <andrew@codeconstruct.com.au>, Patrick Williams <patrick@stwcx.xyz>, 
	devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
	linux-aspeed@lists.ozlabs.org, linux-kernel@vger.kernel.org, 
	Cosmo Chou <cosmo.chou@quantatw.com>, Mike Hsieh <Mike_Hsieh@quantatw.com>, 
	Potin Lai <potin.lai@quantatw.com>, Roger Kan <Roger.Kan@quantatw.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Rspamd-Queue-Id: 180CA25CE53
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=2];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20230601];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-273862-lists,devicetree=lfdr.de];
	FORGED_SENDER_MAILLIST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	RCVD_COUNT_THREE(0.00)[4];
	FREEMAIL_FROM(0.00)[gmail.com];
	RCPT_COUNT_TWELVE(0.00)[15];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[potinlaipt@gmail.com,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[gmail.com:+];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[mail.gmail.com:mid,sea.lore.kernel.org:rdns,sea.lore.kernel.org:helo,lunn.ch:email]
X-Rspamd-Action: no action

On Tue, Feb 3, 2026 at 9:42=E2=80=AFPM Andrew Lunn <andrew@lunn.ch> wrote:
>
> On Tue, Feb 03, 2026 at 05:48:13PM +0800, Potin Lai wrote:
> > Add Linux device tree entries for Meta (Facebook) SanMiguel specific
> > devices connected to the AST2620 BMC SoC.
> >
> > Signed-off-by: Potin Lai <potin.lai.pt@gmail.com>
> > ---
> > Changes in v2:
> > - change mac0 phy-mode to rgmii-id
>
> No other change? Was the previous version broken, and never tested? Is
> this version broken and not tested? Is the phy-mode ignored, which
> suggests something else is broken?
>
>      Andrew

Hi Andrew,

Sorry for the late reply.
Both "rgmii-id" and "rgmii-rxid" modes work fine without connection issues.
However, based on the scan testing we performed in U-Boot, "rgmii-id"
shows better coverage than "rgmii-rxid". Therefore, we decided to
switch to "rgmii-id".

Potin

