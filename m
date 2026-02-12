Return-Path: <devicetree+bounces-265009-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id IA6NDaOrjWkK5wAAu9opvQ
	(envelope-from <devicetree+bounces-265009-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Thu, 12 Feb 2026 11:29:55 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [IPv6:2600:3c15:e001:75::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 610A812C81A
	for <lists+devicetree@lfdr.de>; Thu, 12 Feb 2026 11:29:54 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id 171273004680
	for <lists+devicetree@lfdr.de>; Thu, 12 Feb 2026 10:29:52 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 6177A2EA16A;
	Thu, 12 Feb 2026 10:29:51 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="NDXz3OzX"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-dl1-f48.google.com (mail-dl1-f48.google.com [74.125.82.48])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F12122EA15C
	for <devicetree@vger.kernel.org>; Thu, 12 Feb 2026 10:29:49 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=pass smtp.client-ip=74.125.82.48
ARC-Seal:i=2; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770892191; cv=pass; b=DfKuAr675yxsSVj3KeojbkTkFgINT2M6+Al19npsOykvxk7rXWxPcGXwbNZ5W/f+9+wqU7jVuPAuQ8kxiwc9pcQbH1t9DAWECr8RGU+TjFT4VHcvsfPuzExpP8ZPejilMhoyGJncPmGKCpXQ0/4jWv4X6V4COQTCkxMgJ4RgLxo=
ARC-Message-Signature:i=2; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770892191; c=relaxed/simple;
	bh=2a4Le73LBQr/hZI/otLXD8JXTTU+ceipXIWhUtHl5Rk=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=VhSatRCEwavrQcSMG3oxWHeol8Mf8wvbhA5mZJ1zZhQqhHplQg6x83iMBUrpB9DfEtW6MtEdtCwl+ttpXM48xT1ls9cyDNvQ53Og8Dgu1MvAChzIje1bMx4pSde3Kbmm8dPqLcB5Qm7k4/a31HUolH1XgtZjs8I5QbRdwJThRsg=
ARC-Authentication-Results:i=2; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=NDXz3OzX; arc=pass smtp.client-ip=74.125.82.48
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-dl1-f48.google.com with SMTP id a92af1059eb24-126ea4b77adso8808884c88.1
        for <devicetree@vger.kernel.org>; Thu, 12 Feb 2026 02:29:49 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1770892189; cv=none;
        d=google.com; s=arc-20240605;
        b=bahnphyHiJPtBOd+tmDW1y309wdlmXOALfw3Z+Er83l+I38T+G129eZs0V9UBeTguW
         fbVpAyABqtJe4EGG+7soQAsH45pEKKwBbcJ75Y5FJXR+IRb5AaxirzmL1JNGXZ7dwy3B
         HWaHDxUXbM+C3Ytfsy2El0df3Zw6OQEVyAPVnuBBC4jyDa+zCB79D/U94N+SyKYQW5BH
         IMXkag63SIv1JZEByVfPp3UGV8XRT79jliQM7nne5c4HwUKaoF2OhcgkEHq6/R6STAHv
         1SFyf3Z4/3pyB5Enj/juZDR7695Y88NJ9qqEf0RplnR/dELFJSWID8XuGcw1swkAHm8j
         yFQQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:dkim-signature;
        bh=2WNwAh7MqNpr3gNRm798l0GPzFsj9dN4fIN0L2pm3tc=;
        fh=wrG56N3/ZNIwCn5cu3g8YAkxf0LzrKlEri1tisWbRPE=;
        b=dVWCp8wC+YXHvyM2648+M6V0SB7HvD2bnTgNNAWg+UYT4by1vwBpRfWiqx48U2L6OX
         pwRHiOnByGY30EUTr0408ADjhLR4ANCI+Qxs210d4lR3HH6Qg+78uTL/wsLTbWwXT/Co
         l2rbMlug4Ms5QVwKzQNkxQ6ZZV7rrzXcVX5zERGpoxdGDlnxFD2NilBEw7Y4VCVYF8ho
         ZXFDtOF653cJvEgfZbsrL6+xvS4bx9pQueiALe4jbpu8vQL3jkZWuSG+uvO5LAmFFz02
         nwQaUYEPRyEZe5183ur7H41f9g6d6XrRL+Flw0wYd7Sn7aKGnDyGSBkazxcWn0sJ48B4
         ONTw==;
        darn=vger.kernel.org
ARC-Authentication-Results: i=1; mx.google.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1770892189; x=1771496989; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=2WNwAh7MqNpr3gNRm798l0GPzFsj9dN4fIN0L2pm3tc=;
        b=NDXz3OzXkUzfwFFAx0wbxiUoclPnmNV3SkSAGu60nYnx1M8rW+RsI0CJzhEgWyQb9G
         1Vb8C/OoPQmTjddg0LbQ/MQIepPQabnBJiBjLQ/OZ9SuKlZulUeAI5YNwBu/WcBPCrp2
         l2ZSfA0/6Nsrug9V3N7mKMT9KzK7Z1ATSVJodlLobIh3Fn7Wx/TStvyyQlHR2k4vx9ef
         Cae8Ia2EbZFmoVh4MPjwJfJfCL+1c2BA0XNllrz0aLkoFYSHz8mX/45oitPzVVS7DAPX
         vZBhQIMPsNOEQfJk4KgOGvMZIVQ0qPJ0pV+0tOALCeeZG18xc+E3qr0w0KG3uC4BjKt4
         zmmw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1770892189; x=1771496989;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=2WNwAh7MqNpr3gNRm798l0GPzFsj9dN4fIN0L2pm3tc=;
        b=QtRaxA0i4AcbNr7wzYlHqld43zGYWZjZBFsAgSjhmFBADINwuuL2YzWSqJMwajMReK
         Epq3D9MYfQi5KCLGjpE76HE4e8QzlczHci9UuuyGBn76cTjyG604gYdmQwAFEYfIUoCI
         ood/iPkf9J2+LYNJN2nI8iF3OA5Swrv74ByZgBrg7HgWXz0BwEiOrb2gZZdnQLjbtakW
         3Gs0pOgwDQ672cO0zpgdzRtI8eiiCkZM8LLwolL5t685BkdQ35wrkuTLsHkj2W6wh+OH
         VWJaRjG7zxGRxtygP3EiDse17opOupbt/LjXhR4Es0fX7HjM7VvP+APpl/8S/69DS6P1
         bXeA==
X-Forwarded-Encrypted: i=1; AJvYcCWGGA2X/43WEHcrq4sJQixkUBUgYsHjgihk71K3LFNPgjHgZOn9MCUTHqo5wFgncQBeFETWB3ySNYSl@vger.kernel.org
X-Gm-Message-State: AOJu0YzujiBSntMOhVKujI02RqV4d+XucsYLRaKErIVx00HHcwqnwt1b
	grx7jVSrDz6qA0vPRrVEQhmeyv96mbO/YPfEDqIYTFr6UqaBLhG7bMyqrLnOJRm/HZ6PLkjI4sD
	SR0AAvB+U3bxAf4LAP5QJ7o4LbJ2WyzM=
X-Gm-Gg: AZuq6aJbRYtIn9qj94J3u1QAOLTKBKDQSG7+L5euACtf3tEFVEWpm753+vPFzlpllTh
	eOpuxsUilSPFO9KW0wUAWEZLkalGsdyK1zYzn1SpNIEpijDaV+TUMbS5gBtfc5Ag1iVHVcA6raJ
	qOEIkrtX056fh76EpN/QzVHnkRb4AjB79UvCjSWCCs02MyPMnlgAAmenFkzqN6sqX3Jz1vxka5t
	+suf2yGAvovtBo69WvXEJPvnbHAT8bQ5rTuymT+eUQk/zAX95DsXUHdxXo0Lfz6VU4wQdbVUpRQ
	olelcmMro9QgGJyFAn1J1+Zew72DsY6tSfLMTS/8x+mIaqGUMSPKxa8IItyWWpoaGTgwVsdjCpr
	MaKUuXOogzsCYUVXU4xELjw==
X-Received: by 2002:a05:7022:e12:b0:11e:3e9:3ea2 with SMTP id
 a92af1059eb24-1272f7b0683mr1034840c88.49.1770892188893; Thu, 12 Feb 2026
 02:29:48 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20260211214646.3700533-1-Frank.Li@nxp.com>
In-Reply-To: <20260211214646.3700533-1-Frank.Li@nxp.com>
From: Daniel Baluta <daniel.baluta@gmail.com>
Date: Thu, 12 Feb 2026 12:32:32 +0200
X-Gm-Features: AZwV_QhhFT0cn79ldAjeoBPb3aybubF9rpuw8kM-MYNYPOpdFzKmXW-eCrt9Hks
Message-ID: <CAEnQRZACes8EptdEgg0i0vzdcxgUJwZAfQHU0DEhMnXtA-g01Q@mail.gmail.com>
Subject: Re: [PATCH 1/1] ASoC: dt-bindings: Convert eukrea-tlv320.txt to yaml
To: Frank Li <Frank.Li@nxp.com>
Cc: Liam Girdwood <lgirdwood@gmail.com>, Mark Brown <broonie@kernel.org>, 
	Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	"open list:SOUND - SOC LAYER / DYNAMIC AUDIO POWER MANAGEM..." <linux-sound@vger.kernel.org>, 
	"open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS" <devicetree@vger.kernel.org>, open list <linux-kernel@vger.kernel.org>, 
	imx@lists.linux.dev
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=2];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20230601];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c15:e001:75::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-265009-lists,devicetree=lfdr.de];
	RCVD_COUNT_THREE(0.00)[4];
	FORGED_SENDER_MAILLIST(0.00)[];
	FREEMAIL_CC(0.00)[gmail.com,kernel.org,vger.kernel.org,lists.linux.dev];
	TO_DN_SOME(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FREEMAIL_FROM(0.00)[gmail.com];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[danielbaluta@gmail.com,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[gmail.com:+];
	RCPT_COUNT_SEVEN(0.00)[10];
	ASN(0.00)[asn:63949, ipnet:2600:3c15::/32, country:SG];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[nxp.com:email,sin.lore.kernel.org:helo,sin.lore.kernel.org:rdns,mail.gmail.com:mid,devicetree.org:url]
X-Rspamd-Queue-Id: 610A812C81A
X-Rspamd-Action: no action

On Wed, Feb 11, 2026 at 11:49=E2=80=AFPM Frank Li <Frank.Li@nxp.com> wrote:
>
> Convert eukrea-tlv320.txt to yaml format.
>
> Signed-off-by: Frank Li <Frank.Li@nxp.com>
> ---
>  .../bindings/sound/eukrea,asoc-tlv320.yaml    | 53 +++++++++++++++++++
>  .../bindings/sound/eukrea-tlv320.txt          | 26 ---------
>  2 files changed, 53 insertions(+), 26 deletions(-)
>  create mode 100644 Documentation/devicetree/bindings/sound/eukrea,asoc-t=
lv320.yaml
>  delete mode 100644 Documentation/devicetree/bindings/sound/eukrea-tlv320=
.txt
>
> diff --git a/Documentation/devicetree/bindings/sound/eukrea,asoc-tlv320.y=
aml b/Documentation/devicetree/bindings/sound/eukrea,asoc-tlv320.yaml
> new file mode 100644
> index 0000000000000..483507fa77937
> --- /dev/null
> +++ b/Documentation/devicetree/bindings/sound/eukrea,asoc-tlv320.yaml
> @@ -0,0 +1,53 @@
> +# SPDX-License-Identifier: GPL-2.0-only OR BSD-2-Clause
> +%YAML 1.2
> +---
> +$id: http://devicetree.org/schemas/sound/eukrea,asoc-tlv320.yaml#
> +$schema: http://devicetree.org/meta-schemas/core.yaml#
> +
> +title: Audio complex for Eukrea boards with tlv320aic23 codec.
> +
> +maintainers:
> +  - Frank Li <Frank.Li@nxp.com>
> +
> +properties:
> +  compatible:
> +    const: eukrea,asoc-tlv320
> +
> +  eukrea,model:
> +    $ref: /schemas/types.yaml#/definitions/string
> +    description:
> +      The user-visible name of this sound complex.
> +
> +  ssi-controller:
> +    $ref: /schemas/types.yaml#/definitions/phandle
> +    description:
> +      The phandle of the SSI controller.
> +
> +  fsl,mux-int-port:
> +    $ref: /schemas/types.yaml#/definitions/uint32
> +    description:
> +      The internal port of the i.MX audio muxer (AUDMUX).

Same comment about port numbering applies also for mux-int-port. So
better add it here too.


> +
> +  fsl,mux-ext-port:
> +    $ref: /schemas/types.yaml#/definitions/uint32
> +    description: |
> +      The external port of the i.MX audio muxer.
> +      Note: The AUDMUX port numbering should start at 1, which is consis=
tent with
> +      hardware manual.
> +
> +required:
> +  - compatible
> +  - eukrea,model
> +  - ssi-controller
> +
> +additionalProperties: false

The driver sound/soc/fsl/eukrea-tlv320.c allows an optional property
named codec-handle
so I'm not sure additionalProperties: false is correct here.

