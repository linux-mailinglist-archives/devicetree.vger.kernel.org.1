Return-Path: <devicetree+bounces-309390-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id n19EHm/fKGpLLAMAu9opvQ
	(envelope-from <devicetree+bounces-309390-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 10 Jun 2026 05:52:15 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [172.232.135.74])
	by mail.lfdr.de (Postfix) with ESMTPS id 135AB665AB0
	for <lists+devicetree@lfdr.de>; Wed, 10 Jun 2026 05:52:15 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=gmail.com header.s=20251104 header.b=WMaAyKXD;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-309390-lists+devicetree=lfdr.de@vger.kernel.org" designates 172.232.135.74 as permitted sender) smtp.mailfrom="devicetree+bounces-309390-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=pass (policy=none) header.from=gmail.com;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=2")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id CA57B300B1E8
	for <lists+devicetree@lfdr.de>; Wed, 10 Jun 2026 03:51:26 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C3A53331EC1;
	Wed, 10 Jun 2026 03:51:23 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pg1-f171.google.com (mail-pg1-f171.google.com [209.85.215.171])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A5B131C8604
	for <devicetree@vger.kernel.org>; Wed, 10 Jun 2026 03:51:22 +0000 (UTC)
ARC-Seal:i=2; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781063483; cv=pass; b=hz6hT7f0+mXXla4bT7pl71/LGxpkwY7V4x5VoQ9Krk1OJoO6ky+7638x26yu2AH6XD29AoB7DPxGGO/3EQ3qgXK4vkDl0/BJ1kGepqVKAZxP5Ppaz5bnFfpaVEoVWHOQXwRq36EvUSUecAvTtRYLomrRuHvhCkl9Tp7VlJBRaHI=
ARC-Message-Signature:i=2; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781063483; c=relaxed/simple;
	bh=V98JltAyEkn6qhpFu54OMxe/3D7dQgiMQHy3kmlT/Qk=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=AJxiT4UjKZOCF9XRgo5idS2/4Kzej+58DNFpiPr0TnouRntfVlecuiykCwkGpM2LOXmdlsWjf0CpFco2lv965ikPfA4ZisSFrJu7dssCFE9VxhdrTFEdvgctsMSP/j4mNb/BoXElA4Zw5U7BLLO+qzAy1KkLSTGDgVqtza1x57w=
ARC-Authentication-Results:i=2; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=WMaAyKXD; arc=pass smtp.client-ip=209.85.215.171
Received: by mail-pg1-f171.google.com with SMTP id 41be03b00d2f7-c86307c4e6bso1071770a12.0
        for <devicetree@vger.kernel.org>; Tue, 09 Jun 2026 20:51:22 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1781063482; cv=none;
        d=google.com; s=arc-20240605;
        b=dfHpToN/oPSL7G/Q/0ckT9Z72v5MmjU9Olh44APi2Gk/x2QJvN1VeQ0KfZYFE14is6
         GSAnQpzFQMYRO/wjlLW57RVdYFaqPzXrGiMjcc61uVrnKT5toBf26J+Ly9Uu7yvgOc27
         7Fr4ha57VsZq7IJqwFMnCZxwLnRUVlHpjeZcC/Xwhil5yyELGFdeJ92LAk60mySXedYe
         nPBn7qY23bPr/rKQeWCxyblTJ3kVuvBeJ9SSqRMfLEQUkxhy0ff7CoDrd3sJr1IgyI05
         luIucbpmZTQNpioZWJYqRn+NP3k/Im/X/tsqoD/wi7hZBuqh5WEMSOflH01DRhxSp2g/
         Dzmg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=V98JltAyEkn6qhpFu54OMxe/3D7dQgiMQHy3kmlT/Qk=;
        fh=xgYURuOhn2Ge31efMV5HEcMRpstR5ZawG/dLG7FICmQ=;
        b=F5Cp2x3ZVB2JmeKJC1MD6VziDvlBes8sCmo05ZAnYG8mUU0eZoaihBFapSCm2mrVwe
         aqjYi2DZKK+4CEERkPtQ2Ug4czLyR4mIpnCfUa5LHLPpKuDMxGAL/KhrwzHb6TbEAJ8z
         tFj+uhco6/huUdWYuMpyW7YghNPNRZCAdFud1+AfzKHAtwjkGsa8l4cikPXBgcMOq9sz
         ne7Q0vghvNjJTEv0jXCOf46MHBb3pjEszRrrtAYFTZwyOvIFUUlqUC8WHMIQBZ8EYb7/
         jCzb2ARgSt1AkGFa3LbKhBgpDfIu1vcPOWfstZL4GbxG/fWYM+aCtzJVPi8hzi0KHgl9
         3GTQ==;
        darn=vger.kernel.org
ARC-Authentication-Results: i=1; mx.google.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1781063482; x=1781668282; darn=vger.kernel.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=V98JltAyEkn6qhpFu54OMxe/3D7dQgiMQHy3kmlT/Qk=;
        b=WMaAyKXDvsKebe3ajLA8s2QTa2MieRhwgUT/EMNryGhVESh1e3cgXG2i/XhxIDZVto
         XVdOEGIkW+sFLMSyKt2/svq+a/utoYc2RjoVDpY8yC/9pWwGyE9dsxEbR+wJ8JiINWa4
         6avR3lgHnaawrzADa3sYIUk49XlDIXCOe0HaTLGX/YySUcX0UqV9jGk/Y1NQwPHnECRX
         f/Ck7UGjSe/NHLwkAlFSxsOr/AAmFTIsgtUqrrjOm1hAnGobKm42fDslJzZDYhmKWZVz
         F/1z4uGSjTpGDCg/Zj8m44nJqqPv6MsipO7v0YGYtRLXK1x8r2Q9ABmq+h8kNqoV3Szv
         PN3Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1781063482; x=1781668282;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=V98JltAyEkn6qhpFu54OMxe/3D7dQgiMQHy3kmlT/Qk=;
        b=Y06r+z7VJ0oOwrLvg0Hisy845OdiOb2ngwj/6P8YvO5p7FzjdT7LmkoMVm9OnBfGn+
         vBIxlVhhaJL/endnUor/T9tQbSWNJ0S8Tc0KrFc4O2BmX7MakTcuOBssppQFvc5aNMjO
         4xvYyEb9sKdFEgkVx0omS6GOhCdYpljzzbI/z+xyGvR8ziPtZ8YfOGEnBhzQIxcStVDT
         iSNc5L/ARryUbwuGRS5U3jzfYaiK1Bs46nap5VLYG435UGBEQ0wcNwjn4R4ZTCFU28yf
         i8CnQlhSvn9poxJk50og1GGtzazAzmJyqfdEBsKP9dTcTQBADpGzMIz77i3FVscpd9Cf
         bBOg==
X-Forwarded-Encrypted: i=1; AFNElJ8fDOtcsoYJJMIbkP8GsqEeo8ZRpWgRqqbm4npm7FSCY2Q/Zxnwx++XxpNgKnNx68KuLz5xYigfNSZd@vger.kernel.org
X-Gm-Message-State: AOJu0YxUJ3jvmT5SGPDd7AX2nsPLnNxHgZSUE3avEmT05X9uw7I7DhxB
	jDW4ctuuZD7eenxi/v8Cc1CFUyA3AGK9A2bHSV1QwpFqZT+YpY5+ekHNZyg5VtQHnj1/jT6f2U+
	xLB/Yhcu6nepzeqIlX6Nz/lLpsE7muKbYvpr5
X-Gm-Gg: Acq92OHci0tRaPC0TUj/uddb0EEMTbEtwRUYqYc0CxK3ZoblFMuDrce2yKAOPlXRGl+
	mywhLRAiGhPu44Y3j8TINVoMxrgJYtozF3CXMW+yt6lcwf1Knby7xdMW2hb1G3QwYzbwAOdfji0
	E/V/w40UrnKTtjKLtoL1KI2VZ6/OL6b2y+eHu9UBnoEWQevI+O43sTWSTKtyQazKDAGgoj3Pc0G
	wEuGHOBybqf98c0QSdgFvKN06qFxEGkkFzm9paepxMEBWW1m2/FBjxadobQxi2TZGEmZBB56tI2
	B81yRCaz3ppZy0CSbuFQ4HpvTdDTAnnBfjp2+9K3qdB+ky7F
X-Received: by 2002:a05:6a21:46c9:b0:398:7ffe:472f with SMTP id
 adf61e73a8af0-3b53bbe7ddemr8176176637.2.1781063481857; Tue, 09 Jun 2026
 20:51:21 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20260609113836.45079-1-phucduc.bui@gmail.com> <20260609113836.45079-2-phucduc.bui@gmail.com>
 <20260609-eager-nightingale-of-devotion-b6ca1f@quoll>
In-Reply-To: <20260609-eager-nightingale-of-devotion-b6ca1f@quoll>
From: Bui Duc Phuc <phucduc.bui@gmail.com>
Date: Wed, 10 Jun 2026 10:51:10 +0700
X-Gm-Features: AVVi8CdZKR_uJCuqPpU7lvaDdZ2lLhaOObi_ZoDUvMu1Slc74HJdSHgV3aKtf8g
Message-ID: <CAABR9nGuSJ96reQmZqCNT2z-z9op4N80xTPvbWHuVwC-6A3exg@mail.gmail.com>
Subject: Re: [PATCH v6 01/11] ASoC: dt-bindings: renesas,fsi: add support
 multiple clocks
To: Krzysztof Kozlowski <krzk@kernel.org>
Cc: Kuninori Morimoto <kuninori.morimoto.gx@renesas.com>, Mark Brown <broonie@kernel.org>, 
	Geert Uytterhoeven <geert+renesas@glider.be>, Liam Girdwood <lgirdwood@gmail.com>, 
	Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Magnus Damm <magnus.damm@gmail.com>, Jaroslav Kysela <perex@perex.cz>, Takashi Iwai <tiwai@suse.com>, 
	linux-sound@vger.kernel.org, linux-renesas-soc@vger.kernel.org, 
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
X-Rspamd-Action: no action
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=2];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_SPF_ALLOW(-0.20)[+ip4:172.232.135.74:c];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20251104];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_COUNT_THREE(0.00)[4];
	FORGED_RECIPIENTS(0.00)[m:krzk@kernel.org,m:kuninori.morimoto.gx@renesas.com,m:broonie@kernel.org,m:geert+renesas@glider.be,m:lgirdwood@gmail.com,m:robh@kernel.org,m:krzk+dt@kernel.org,m:conor+dt@kernel.org,m:magnus.damm@gmail.com,m:perex@perex.cz,m:tiwai@suse.com,m:linux-sound@vger.kernel.org,m:linux-renesas-soc@vger.kernel.org,m:devicetree@vger.kernel.org,m:linux-kernel@vger.kernel.org,m:geert@glider.be,m:conor@kernel.org,m:magnusdamm@gmail.com,s:lists@lfdr.de];
	TAGGED_FROM(0.00)[bounces-309390-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	FORGED_SENDER(0.00)[phucducbui@gmail.com,devicetree@vger.kernel.org];
	FORWARDED(0.00)[lists@lfdr.de];
	FREEMAIL_FROM(0.00)[gmail.com];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[15];
	MIME_TRACE(0.00)[0:+];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[gmail.com:+];
	TO_DN_SOME(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	ALIAS_RESOLVED(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[phucducbui@gmail.com,devicetree@vger.kernel.org];
	FREEMAIL_CC(0.00)[renesas.com,kernel.org,glider.be,gmail.com,perex.cz,suse.com,vger.kernel.org];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.232.128.0/19, country:SG];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,renesas,dt];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sto.lore.kernel.org:rdns,sto.lore.kernel.org:helo,mail.gmail.com:mid,vger.kernel.org:from_smtp,qualcomm.com:email]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 135AB665AB0

Hi Krysztof,

>
> Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>
>

Thank you for your review and the tag.

Best regards,
Phuc

