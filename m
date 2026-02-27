Return-Path: <devicetree+bounces-269364-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id GOjuM/fPoWkfwgQAu9opvQ
	(envelope-from <devicetree+bounces-269364-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Fri, 27 Feb 2026 18:10:15 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 17BAB1BB407
	for <lists+devicetree@lfdr.de>; Fri, 27 Feb 2026 18:10:14 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 04A98314800B
	for <lists+devicetree@lfdr.de>; Fri, 27 Feb 2026 17:05:39 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 7E2C7332903;
	Fri, 27 Feb 2026 17:05:38 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="nYgwhsj5"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lj1-f179.google.com (mail-lj1-f179.google.com [209.85.208.179])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1833435A3A7
	for <devicetree@vger.kernel.org>; Fri, 27 Feb 2026 17:05:37 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=pass smtp.client-ip=209.85.208.179
ARC-Seal:i=2; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772211938; cv=pass; b=LESpF7VdJut+APuIG7Kvq3HfkO+9RTMAP+kk9d/lhY8kaFanOwqwaX7hf7SltffgxGW6cELAlZeKR14yNeWuWXn417BKAoRCWgv4e6oHBa2d7O+Rj1/DWkVObGmHC/OTm6BSh+aSyWhbao8fHUoOV0pD3/oTUvFI3oryRQP33CA=
ARC-Message-Signature:i=2; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772211938; c=relaxed/simple;
	bh=6UXnrwOPUjL2E6250sd/ClfPcfdLjBvvqjWcKYXcETY=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=HK3lReL8LFwsOVk1e3KPA4taGNptrxww+KpKWNP73jwDVnatoSmXR7+5L1gYgLzJ6hiL1PT7BtiI9EoNz8h+XOGnpXtm8KajKTHN2FjGVEPEtWD7qwQymxYVLxy50VvwfEMAHRMlunIndrjiyDnYsyCHXyP7ieDC6cSr0WCPf6g=
ARC-Authentication-Results:i=2; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=nYgwhsj5; arc=pass smtp.client-ip=209.85.208.179
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-lj1-f179.google.com with SMTP id 38308e7fff4ca-389fac627c9so25273391fa.0
        for <devicetree@vger.kernel.org>; Fri, 27 Feb 2026 09:05:36 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1772211935; cv=none;
        d=google.com; s=arc-20240605;
        b=iZgdfE0BbpBYc4AUxhMiwWX11PGtAgncBtC3kjBQxx8EXeSdJJyetpyeRGVu3ty3b7
         FRPNJ+jAhBiSwrrhW5HYDJ0ZCMpTrbU1U3z74WU1B5xBay6oWk9aAzxE0bR1zFBpE33p
         LLzjckod1D38mwB8OP2k2lbrSJVuBAduAVCp5ho21xLHJGPzm7zjp/o521kbnHYDtTyI
         r6qwkCF9VkHefFZGtzccHHey3NuRl27xPQiFj/Ej/6YcsjeWHts3U4mlcKXGyfUCRBpw
         0BwEe4SDxd+g2v7ZOhM2XA12WVRhksKeB29lYax2D9hiH1JOvydRck6L0sGkQrxpY3r9
         P32Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:dkim-signature;
        bh=jfT43a+fQbphg7vfjqYU7GmKspMnchPetUK5Jg7ieIQ=;
        fh=1Cwqtm/SBNM8d5mZTsWRlpL0a91D2dBRuxlXppzMWqQ=;
        b=I9e414tFJkPV9EH0/o/KQlr30/sdgtjO7dbt40/Qw9HgVJnnktn+J+mWmSAo+B63Mz
         geKPnj1++HbHFr/BtPCu8AqB9vi4efh56ore6tN3ZFNhbOuCvw5HfedFvm6ZPsz8oHz+
         f0HnwbPqY5WKqQyPl0MWE31gsW+tLdHYrP32YeA66lB600Z6z3rJ5VWyCALaIdia5yF+
         7SjNO589vO2j6kMoPgu5L2tIjyLg1fUV0jFJUucpIi1obbLaxwqjGofomxGoSrZQKnxy
         JZGxHY8eNgIRqQm1yp/BqbuMVEHbAw/E7L7AcYR5luvpgxQTmrihMyUIaeRB16ObQCXh
         IAjA==;
        darn=vger.kernel.org
ARC-Authentication-Results: i=1; mx.google.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1772211935; x=1772816735; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=jfT43a+fQbphg7vfjqYU7GmKspMnchPetUK5Jg7ieIQ=;
        b=nYgwhsj5gB2eMJLrUlVSFgzT1e3yMLOSouQ8Apk7++ijHsW7d10a9RX927S+qvVZly
         AHEBmycsS2cWpSJGbooTyyA3sg1DwxUoffrSYmKG6VDfIEAAGDtoeJ8oRmDldLR8z5gp
         39F5nhGEG5V3I5/qkCbI3ztZBE85r77/i+CSWYVcxjbBQkgIS47ZLvASqXDYma0jBdAp
         eacHbgQH7HR4OWbWp7iTuTx7YkElGYMRFJd/NEVJ5HQnUlxWsUq4S4ppDgW1fPNexYPG
         Xk9U4g7BLoqr4KWhytdKZW/6KhWnlFMPY3V0Y4lK3oAP2lJMb86pt65vnOwQY/0gpiix
         x8rQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1772211935; x=1772816735;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=jfT43a+fQbphg7vfjqYU7GmKspMnchPetUK5Jg7ieIQ=;
        b=bDR/UdcGGeaVE5ip76eGjCtcOfDamvkFOAa6I7Q8FR85OFxXMip1a+Z79a0rhJ5wUK
         eU0tivA1i/wpotA0XpKRDUem9TJZiH54NAycIVgaIfRbl+hd5RLq+CmMFSyZxKX9BNgv
         DFLr1yxmcpXFpvxiKtaV8hfk5vDHREuEAbtJuDn9gJwca4XY3Lyie85Dxu5/r03VpVZh
         22GeR82pqfjWD8Ympkfl6TC09c+TyTUg1vYVP+rejJzwm8mvRy2/2Ek8bt9wMGBHqCn3
         QXe5+4HY2SXQoOS62Yn0a1l8gfS9krs8CbFmknBJg6xpVI/O7dralSmTfnfCNnyVz3Ro
         U8kA==
X-Forwarded-Encrypted: i=1; AJvYcCUQ2By3IS7O8evGuozxKaTgewSgXtrqjSk6RXAu3Y+9+6uUHuXblq3jOWoJrA7WShZHBRRzj5o46eG7@vger.kernel.org
X-Gm-Message-State: AOJu0YxozHd7rLu4ORaEnfJrhD9J3GJGjwtVWmOocCMc6ZwaGN0AS+O8
	+qeTQ1dz9bjxFve7w8N1Y4jX0pMUyne5FRg7EReIAXaoI22pKQOOeyo1N5crtI0uXGKmulHTMNz
	hCa/57760S+JYi+BNPpAamLTj7AAGkWk=
X-Gm-Gg: ATEYQzyZjmsE8+7wYg/0Bsut11zRw2j4ecfxUt4Wyrq2+xFwOMttyVjmj4qHHN0wyJS
	MwrB+HE+xP/kNs5bfIgwZOQ94yxjkudskc7rVUl02YtNdD4yxgQto/QivG0CfQt8bOgKiZ5kfXh
	syymg7nz0kjUOQF+10XGQoL+ZoUgPwGp+gc1uGnZGJnE8LpGFoB1yIOEoaRlHatFcSrmuU93GhK
	x6xjJANDnYY5LI3gfrEeXwLSAS3ZXGGdfazK/fgrQm73yV9yhVWMekd79ZW5t/Oubr9zNyEzaE9
	VQ0ttjxdptc37Yt2RTu10cpgjL2pbDWhtY1dAbrizgj/PWryxiybBX/kQpb0gD37bv1HDreEXhI
	Z5u8aNhY=
X-Received: by 2002:a05:651c:4211:b0:387:176e:68f5 with SMTP id
 38308e7fff4ca-389ff35b4famr22558011fa.26.1772211934931; Fri, 27 Feb 2026
 09:05:34 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20260227165836.3445577-1-Frank.Li@nxp.com>
In-Reply-To: <20260227165836.3445577-1-Frank.Li@nxp.com>
From: Fabio Estevam <festevam@gmail.com>
Date: Fri, 27 Feb 2026 14:05:23 -0300
X-Gm-Features: AaiRm53taJAwYmks0zdsuCd09L6pF6yl_1O7CbjkcLe8Epc_edKZ22mV78f2GrE
Message-ID: <CAOMZO5AGwAAU3j0t62CaqNZF7tmyKoWv38ymB1i5i+xnprwJWQ@mail.gmail.com>
Subject: Re: [PATCH v2 1/1] dt-bindings: auxdisplay: Use unevaluatedProperties
 to fix common property warning
To: Frank Li <Frank.Li@nxp.com>
Cc: Robin van der Gracht <robin@protonic.nl>, Andy Shevchenko <andy@kernel.org>, 
	Geert Uytterhoeven <geert@linux-m68k.org>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Miguel Ojeda <ojeda@kernel.org>, 
	"open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS" <devicetree@vger.kernel.org>, open list <linux-kernel@vger.kernel.org>, 
	imx@lists.linux.dev
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=2];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20230601];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-269364-lists,devicetree=lfdr.de];
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
	RCPT_COUNT_SEVEN(0.00)[11];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	DBL_BLOCKED_OPENRESOLVER(0.00)[mail.gmail.com:mid,nxp.com:email,sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,devicetree.org:url,0.0.0.70:email]
X-Rspamd-Queue-Id: 17BAB1BB407
X-Rspamd-Action: no action

On Fri, Feb 27, 2026 at 1:59=E2=80=AFPM Frank Li <Frank.Li@nxp.com> wrote:
>
> Change additionalProperties to unevaluatedProperties because it refs to
> /schemas/input/matrix-keymap.yaml.
>
> Fix below CHECK_DTBS warnings:
> arch/arm/boot/dts/nxp/imx/imx6dl-victgo.dtb: keypad@70 (holtek,ht16k33): =
'keypad,num-columns', 'keypad,num-rows' do not match any of the regexes: '^=
pinctrl-[0-9]+$'
>         from schema $id: http://devicetree.org/schemas/auxdisplay/holtek,=
ht16k33.yaml#
>
> Fixes: f12b457c6b25c ("dt-bindings: auxdisplay: ht16k33: Convert to json-=
schema")
> Signed-off-by: Frank Li <Frank.Li@nxp.com>
> ---
> Change in v2
>         - Add Acked-by: Rob Herring (Arm) <robh@kernel.org>
>         - Add fixes tags
>
> Resend include Rob's Ack tag:
>         Acked-by: Rob Herring (Arm) <robh@kernel.org>
> Rob's Acked at
> https://lore.kernel.org/imx/175796984570.3379405.7210704746413204244.robh=
@kernel.org/

Rob's Ack is still missing.

