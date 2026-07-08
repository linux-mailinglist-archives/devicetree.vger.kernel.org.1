Return-Path: <devicetree+bounces-323110-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id Sk4BJUmYTmqvQAIAu9opvQ
	(envelope-from <devicetree+bounces-323110-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 08 Jul 2026 20:34:49 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id E8B24729895
	for <lists+devicetree@lfdr.de>; Wed, 08 Jul 2026 20:34:48 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=kernel.org header.s=k20260515 header.b=FSGiKblq;
	dmarc=pass (policy=quarantine) header.from=kernel.org;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-323110-lists+devicetree=lfdr.de@vger.kernel.org" designates 2600:3c0a:e001:db::12fc:5321 as permitted sender) smtp.mailfrom="devicetree+bounces-323110-lists+devicetree=lfdr.de@vger.kernel.org";
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 047DB303FBAE
	for <lists+devicetree@lfdr.de>; Wed,  8 Jul 2026 18:34:33 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id CF4D24C77AD;
	Wed,  8 Jul 2026 18:34:32 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3CA4C4BCAD9
	for <devicetree@vger.kernel.org>; Wed,  8 Jul 2026 18:34:30 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783535672; cv=none; b=pF2ef2SY5uBXScylFkuUhA4cdweb2vKRkq6eT4IrsrpPTcAhJa9k0+4Lu7p73js8k3MPOyn4fqb3eYU8kz/CTx8I2CpPA2pub6pamJmWNSXmDwJzMlr8wkPG++E1+dNNSgG455Jw2Wl8p+K+TTE/exGQ/V3EV10qIqAZKH71W2s=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783535672; c=relaxed/simple;
	bh=b6jdtPw+VxpSgFvULqrP0SVRKXGKPjO4Y4wcBsjOyRw=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=CiS1lYs2sts9x3U5p/O9GBcO3nJLrZ0wSsGRO+TrCSDI/Fw/6k68bDvw67YbVYmGI/Qx5qw3gq/Ii5IPdEpYYNFBjLGTuPvspKnj6Qe8ocrAbcxrV1nNj5dLLrNRGWivmMtbi4KTVKacvXVzmwwvjg2tIxVcWYiheDjBZpjPZBI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=FSGiKblq; arc=none smtp.client-ip=100.103.45.18
Received: by smtp.kernel.org (Postfix) with ESMTPSA id E37851F00A3F
	for <devicetree@vger.kernel.org>; Wed,  8 Jul 2026 18:34:29 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1783535669;
	bh=9cdd1YNFo0BBLZoe+c+X6zyqzkgIO8DBHV2jMSUh/60=;
	h=References:In-Reply-To:From:Date:Subject:To:Cc;
	b=FSGiKblq9dC+28fSlbwXdYIDvwrJgAPOv1wFjq3dBgklv3uovRn4cR/WIkikGAY5d
	 8ovGAfyyI/9Qr8xWGJDDHzv36aJAER0GDZloi69abl3SRSKPOBm4QtAPi89TFLHnYh
	 iad5LILFZEFcIbPzDAVfPJSLjTYBSKfqdrTG41QmKButNojOJ/yONpDvVP7mEFx+WY
	 Dt1wiDMlJhkHEmK6SOUOE29+6YzJVC/0BF5e/Chgh48jILSLpTsOLsvyDKZJtXIsOi
	 +zphAdRSK4cF8bNFmzbocIigoPlXIqhVx+ApylRiPonPcJMzN1icwLCzJrjr0xNoQL
	 1F8AvRcfmUqow==
Received: by mail-ej1-f47.google.com with SMTP id a640c23a62f3a-c15dd4b9132so14856866b.1
        for <devicetree@vger.kernel.org>; Wed, 08 Jul 2026 11:34:29 -0700 (PDT)
X-Forwarded-Encrypted: i=1; AHgh+RocbXaGOQQvPSeYD90ZVeBWioBFs4Nxox6/ZAoz6ZK4uNE6zfy/SSRAD1xyLSRxu6f9H2r36xp0tR6A@vger.kernel.org
X-Gm-Message-State: AOJu0YxNoHoa6wTINLIyBF7lINVRw7J68y1rF6/hn9aMFr1y/82EdI85
	lH4x7AHQUBLXiMdB/PnDsdbyzJJkP35w9SRaltgydcM0UEg6B3QTwFLFe5mOVXhxoKLPaaBLw1A
	7Z7gsPTjUKd1EovsOPpPyh7t6oV3i/A==
X-Received: by 2002:a17:906:268e:b0:c15:c108:dcd with SMTP id
 a640c23a62f3a-c15ce122ce6mr134397666b.49.1783535668618; Wed, 08 Jul 2026
 11:34:28 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20260707190106.2876465-1-prasad.kumpatla@oss.qualcomm.com> <20260707190106.2876465-6-prasad.kumpatla@oss.qualcomm.com>
In-Reply-To: <20260707190106.2876465-6-prasad.kumpatla@oss.qualcomm.com>
From: Rob Herring <robh@kernel.org>
Date: Wed, 8 Jul 2026 13:34:17 -0500
X-Gmail-Original-Message-ID: <CAL_JsqJmMpkhry7S7EMG7V8T5-rJb-314ymEoT-nAJEgYisSOQ@mail.gmail.com>
X-Gm-Features: AVVi8Cf_odeuEAHH0gUHkPQjs-lsaY6n8LwjnSMkMCAA6H-6roX9xLgiTdq2FkY
Message-ID: <CAL_JsqJmMpkhry7S7EMG7V8T5-rJb-314ymEoT-nAJEgYisSOQ@mail.gmail.com>
Subject: Re: [PATCH v3 5/7] dt-bindings: sound: qcom,sm8250: allow TDM slot properties
To: Prasad Kumpatla <prasad.kumpatla@oss.qualcomm.com>
Cc: Srinivas Kandagatla <srini@kernel.org>, Liam Girdwood <lgirdwood@gmail.com>, 
	Mark Brown <broonie@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
	Conor Dooley <conor+dt@kernel.org>, Jaroslav Kysela <perex@perex.cz>, Takashi Iwai <tiwai@suse.com>, 
	linux-arm-msm@vger.kernel.org, linux-sound@vger.kernel.org, 
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Rspamd-Action: no action
X-Spamd-Result: default: False [-3.66 / 15.00];
	WHITELIST_SPF_DKIM(-3.00)[kernel.org:d:+,kernel.org:s:+];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20260515];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	MIME_TRACE(0.00)[0:+];
	RCPT_COUNT_TWELVE(0.00)[12];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-323110-lists,devicetree=lfdr.de];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:prasad.kumpatla@oss.qualcomm.com,m:srini@kernel.org,m:lgirdwood@gmail.com,m:broonie@kernel.org,m:krzk+dt@kernel.org,m:conor+dt@kernel.org,m:perex@perex.cz,m:tiwai@suse.com,m:linux-arm-msm@vger.kernel.org,m:linux-sound@vger.kernel.org,m:devicetree@vger.kernel.org,m:linux-kernel@vger.kernel.org,m:krzk@kernel.org,m:conor@kernel.org,s:lists@lfdr.de];
	FORWARDED(0.00)[lists@lfdr.de];
	FORGED_SENDER(0.00)[robh@kernel.org,devicetree@vger.kernel.org];
	FREEMAIL_CC(0.00)[kernel.org,gmail.com,perex.cz,suse.com,vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[robh@kernel.org,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[kernel.org:+];
	ALIAS_RESOLVED(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MISSING_XM_UA(0.00)[];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[mail.gmail.com:mid,qualcomm.com:email,vger.kernel.org:from_smtp,sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: E8B24729895

On Tue, Jul 7, 2026 at 2:01=E2=80=AFPM Prasad Kumpatla
<prasad.kumpatla@oss.qualcomm.com> wrote:
>
> Allow the standard TDM slot properties in CPU and codec endpoint
> nodes.
>
> Some audio backends operate in TDM mode and require the slot
> configuration to be described in Devicetree. The common TDM binding
> defines dai-tdm-slot-num, dai-tdm-slot-width,
> dai-tdm-slot-tx-mask and dai-tdm-slot-rx-mask for this purpose.
>
> Permit these standard properties in endpoint nodes so TDM-capable
> links can describe their slot configuration using the common binding.
>
> Signed-off-by: Prasad Kumpatla <prasad.kumpatla@oss.qualcomm.com>
> ---
>  .../devicetree/bindings/sound/qcom,sm8250.yaml | 18 ++++++++++++++++++
>  1 file changed, 18 insertions(+)
>
> diff --git a/Documentation/devicetree/bindings/sound/qcom,sm8250.yaml b/D=
ocumentation/devicetree/bindings/sound/qcom,sm8250.yaml
> index 15f38622b..a45a1a00f 100644
> --- a/Documentation/devicetree/bindings/sound/qcom,sm8250.yaml
> +++ b/Documentation/devicetree/bindings/sound/qcom,sm8250.yaml
> @@ -84,12 +84,21 @@ patternProperties:
>        cpu:
>          description: Holds subnode which indicates cpu dai.
>          type: object
> +        allOf:
> +          - $ref: "tdm-slot.yaml#"

Only 1 entry, you don't need 'allOf'.

Rob

