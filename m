Return-Path: <devicetree+bounces-263633-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id QCUcEJZ1h2lNYQQAu9opvQ
	(envelope-from <devicetree+bounces-263633-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Sat, 07 Feb 2026 18:25:42 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [172.232.135.74])
	by mail.lfdr.de (Postfix) with ESMTPS id 29386106B2E
	for <lists+devicetree@lfdr.de>; Sat, 07 Feb 2026 18:25:42 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id 9076530058C2
	for <lists+devicetree@lfdr.de>; Sat,  7 Feb 2026 17:25:41 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id BDBF433A9E9;
	Sat,  7 Feb 2026 17:25:38 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="X5HDNnOg"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f48.google.com (mail-wm1-f48.google.com [209.85.128.48])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 69D1633120D
	for <devicetree@vger.kernel.org>; Sat,  7 Feb 2026 17:25:38 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=pass smtp.client-ip=209.85.128.48
ARC-Seal:i=2; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770485138; cv=pass; b=oEcAC/b7UvB+EFjIE2mj8Y4gf/hV7c2qH+auoP8v5/zOrKdWhpB1QhjnS2yuYK01a4VAqry3b42pJUqfLetyeBw+87FlJlkNboeAv8dF7XpsmloWNvNXe0ZooLeVI15pwCwQIxd62ncZGS8DoKkUsVTO6WbDpFjXxvXyIzfMWmY=
ARC-Message-Signature:i=2; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770485138; c=relaxed/simple;
	bh=HEIODAx2+Jyjm0uU9ELdLTTbA84lSwuzGWDVhw7tp58=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=TnvqNM3Kv2dwMTSwCfcgId5ROpABfNIDvz5Qq0KU3wMkqfYyzXPPx8c25NCWasIzHjiVqX4uGXveu5fAjm0yDOsG07QiMS/NKe1SQ32B/cBUX7jKLTYggLy3FNNqF144GSx05P63ltDOosVaqkk+hyHr7CaCEfrgNhh4BACnA3Q=
ARC-Authentication-Results:i=2; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=X5HDNnOg; arc=pass smtp.client-ip=209.85.128.48
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-wm1-f48.google.com with SMTP id 5b1f17b1804b1-47ee76e8656so47938995e9.0
        for <devicetree@vger.kernel.org>; Sat, 07 Feb 2026 09:25:38 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1770485137; cv=none;
        d=google.com; s=arc-20240605;
        b=QPZZMrwJdFPdo3BDXu3v7DhkszSaqTAx+OEIcV+yc9XV/NAqsx6eP8x1BoxM0Y81rB
         NjScedF6PNfALkNFIPm3hR2nIrZp2VWvJd5LiZPV4SItSAakljazx/Y75T+hOENQIDKc
         EwCHfQX9gfRwMvzr+sg/Njx5GOJ+UxU0Qe1ENkT3kdpCCInsuXOh2ImmKIrkFnJ7Pn5j
         nimLbghHkWa0osaVRpcUAkWm76qt8LZ+Wf93rw9QVYZccxZPRgJwflHAYDUBaeDaEjWT
         x1gyb0CXJmj6F8oUNz4AH/aPyEElYpm3WIo5ia/93fXdGCyUCBOTDdQ7V/KKpVo5bmVm
         rrpw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:dkim-signature;
        bh=sI2SyZ4XJiIDdMOpKUZsjQ6ZCYdtN4FvLlZEhJIfteQ=;
        fh=n3djmGpeAoPdLzUWLjlKQedVuMuh7oFuKVgZuzMOeU4=;
        b=aa6VoiHvBTrRlkQkSpO6Um4Qi75OgReToRqVqwGdmD8vmEdXsgHy36fxD5CmGATEOW
         c2t1PirNKxVCNnErd4WoD57VTvNQE4fu8xjpys5iLotR/C2ycSGrJNsRuJFaVKbpmaRf
         m3t0zfQ7gR9xiKnAo5K5t1Jjoknt3yOWTJd1UFIXWewiT9GyaMO9tKDHxkVnRvXEiHTg
         V+AQmIeDhuUWdfBcwkg/ouKtKjEZ2jrvfKCkOzRjzERplFPuoS8LRn0R3y2v1VTzPzk3
         +STjv1anxT+owhRSccsYiK3s5cChyh267bBJwyZh0oXDmTL348r8tKPV4BTavNVHgMTA
         qLqQ==;
        darn=vger.kernel.org
ARC-Authentication-Results: i=1; mx.google.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1770485137; x=1771089937; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=sI2SyZ4XJiIDdMOpKUZsjQ6ZCYdtN4FvLlZEhJIfteQ=;
        b=X5HDNnOgmYojYmhxFSXk5RZ0YjP8oC0DqFnGB6dDKUql4/Qe97IJwHBVdPHRR7lyxa
         AZXGPrbbytIvtHXgDtWnpF+AqktHR3RGBTFjKAYvoZAjt5+yUSCbbKl7aEse2Vvyf4He
         V/XNxvM/aefGXoS7JJhERpOTwLoXP5tZH6QCur6HM980py7diD1fpnx3IfnzJ8jNXkUR
         KAj/PGMn4jgWR13z2inFXANj+W6SIzP0iAwU+SSRnXKnVMm2fDKjG27LcoK84AoUZugz
         pT7vK/TQjPJZpRCmSLinuNX0qCAkCL1kLTqcAGjk+UYP+qi7YSd49F9Ef7Fcqb/s/LO7
         SZeA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1770485137; x=1771089937;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=sI2SyZ4XJiIDdMOpKUZsjQ6ZCYdtN4FvLlZEhJIfteQ=;
        b=H6qOUyWZpF1OWrApUoyZv80jKadHHk4PLnZSXFYtWYB9fXZzBd1gn3mQEFJ7sIwpnt
         qL8diwIPNdw4wYgbxjiwKf40O7ni+w6x/JjSJIL5tuE56sBGRZvKklPYO1AVRYTvjT7Q
         TOZrLGSKWcGxgQ30TAEMh/gSa7jxmN2yZrDEyIYJnVcbyGxXGKwMdK6MP/M0kXccogOR
         Xpc1r2Xl6041E/pb2vQ7oEG1jYixC87qQO8BlC71iuIywdAeG4NI5wy3nuA1d2wxdEyi
         EkB/Y48Cooi6QM6ScQcGmRW21koTwEosmcakBGGmOElpooqGcDppabU3PvJS5WtNZmov
         2TNw==
X-Forwarded-Encrypted: i=1; AJvYcCV1hSO6hbMemZ4jw9/V2a20CRko8I6uKmCUtPo9cWMsKWcP+VF5NaNOkFguBL5t/IqY8J01aWUxgJlI@vger.kernel.org
X-Gm-Message-State: AOJu0YxoYVExmi5qHGoF8s1QHhSq1Hw5p7S8upQos87sA18b5wTBMNKX
	I6TysNirM2NQM2izOosDw6PlKxthocULCEImkmi2jc3oo3KJqnDsQwfEFteBeCoH3dMCvHVEZ/S
	IG5djadQq4GMtGcQkkcDS71SylmRT8XQ=
X-Gm-Gg: AZuq6aLD6tptXofTV9qQaNnb24cTec0Z7lR5CuUYu9xm2dmdAswX7E4eAhOU8oEUpSH
	34uYShtPJ2ukbmnZL0hC2XCTVOnxB503Z/QgO2EOtZpq1kJBfxiP9cRdNU1LGCvM1gCbg7y0dIL
	TCC+DoBwweHMM1rbIO90Z+ZbHQcBxYf9wko0TCQb3XmxF4iMM+vyzMgQnethscXgAIhyqpVCwav
	N3X9DSn5+gQHBlMkkKbjPEo6lbK12YMeoRWsX9ZAVs9RTomP9y2O5jeG7nM1UxOCsgz1mA/
X-Received: by 2002:a05:600c:3b20:b0:47a:9560:ec28 with SMTP id
 5b1f17b1804b1-4832020df6amr86248735e9.13.1770485136527; Sat, 07 Feb 2026
 09:25:36 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20260206172845.145407-1-clamor95@gmail.com> <20260206172845.145407-2-clamor95@gmail.com>
 <20260206230922.GA254792-robh@kernel.org> <CAPVz0n3EGCSLUX7jTLve0x0z4uW1yexViCwkSQLY2d_4r4qkjg@mail.gmail.com>
 <db9115ca-2c8f-4b5e-89ce-f3b934071a59@baylibre.com>
In-Reply-To: <db9115ca-2c8f-4b5e-89ce-f3b934071a59@baylibre.com>
From: Svyatoslav Ryhel <clamor95@gmail.com>
Date: Sat, 7 Feb 2026 19:25:25 +0200
X-Gm-Features: AZwV_Qhk8RolsJvtdrDUiFlMwGmOTQ98t3Sh6iWn13yc2G3IUcR3Ke69B4Ocad0
Message-ID: <CAPVz0n2KwqPw88JVcPzhTQ2n+GKzahkrEThjjrqm0CSdjKTEOw@mail.gmail.com>
Subject: Re: [PATCH v2 01/11] dt-bindings: regulator: cpcap-regulator: convert
 to DT schema
To: David Lechner <dlechner@baylibre.com>
Cc: Rob Herring <robh@kernel.org>, Jonathan Cameron <jic23@kernel.org>, =?UTF-8?B?TnVubyBTw6E=?= <nuno.sa@analog.com>, 
	Andy Shevchenko <andy@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Dmitry Torokhov <dmitry.torokhov@gmail.com>, Lee Jones <lee@kernel.org>, 
	Pavel Machek <pavel@kernel.org>, Liam Girdwood <lgirdwood@gmail.com>, Mark Brown <broonie@kernel.org>, 
	Dixit Parmar <dixitparmar19@gmail.com>, Tony Lindgren <tony@atomide.com>, linux-iio@vger.kernel.org, 
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
	linux-input@vger.kernel.org, linux-leds@vger.kernel.org
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
	TAGGED_FROM(0.00)[bounces-263633-lists,devicetree=lfdr.de];
	FROM_HAS_DN(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	FREEMAIL_FROM(0.00)[gmail.com];
	RCPT_COUNT_TWELVE(0.00)[19];
	FREEMAIL_CC(0.00)[kernel.org,analog.com,gmail.com,atomide.com,vger.kernel.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	NEURAL_HAM(-0.00)[-0.997];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[clamor95@gmail.com,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[gmail.com:+];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.232.128.0/19, country:SG];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[mail.gmail.com:mid,sto.lore.kernel.org:helo,sto.lore.kernel.org:rdns]
X-Rspamd-Queue-Id: 29386106B2E
X-Rspamd-Action: no action

=D1=81=D0=B1, 7 =D0=BB=D1=8E=D1=82. 2026=E2=80=AF=D1=80. =D0=BE 19:19 David=
 Lechner <dlechner@baylibre.com> =D0=BF=D0=B8=D1=88=D0=B5:
>
> On 2/7/26 3:20 AM, Svyatoslav Ryhel wrote:
> > =D1=81=D0=B1, 7 =D0=BB=D1=8E=D1=82. 2026=E2=80=AF=D1=80. =D0=BE 01:09 R=
ob Herring <robh@kernel.org> =D0=BF=D0=B8=D1=88=D0=B5:
> >>
> >> On Fri, Feb 06, 2026 at 07:28:35PM +0200, Svyatoslav Ryhel wrote:
> >>> Convert devicetree bindings for the Motorola CPCAP MFD regulator subn=
ode
> >>> from TXT to YAML format. Main functionality preserved.
> >>>
>
> ...
>
> >>> +properties:
> >>> +  compatible:
> >>> +    enum:
> >>> +      - motorola,cpcap-regulator
> >>> +      - motorola,mapphone-cpcap-regulator
> >>> +      - motorola,xoom-cpcap-regulator
> >>> +
> >>> +  regulators:
> >>> +    type: object
> >>> +
> >>> +    patternProperties:
> >>> +      "$[A-Z0-9]+^":
> >>
> >> I thought it was said on the last version to list the names. Consideri=
ng
> >> you already have them below, better to put them in schema than prose.
> >> And pretty much all regulator bindings define the names.
> >>
> >
> > What exactly do you propose? All those names will not fit into a
> > single unbreakable line (more than 125 columns in length btw). Patch
> > checker will complain about this. Duplicate pattern properties for
> > every few names? Please be a bit more specific. Thank you!
>
> Making checkpatch happy is not a hard requirement. If you have to
> go over 125 characters for technical reasons, no one is going to
> complain.
>
> I already gave an example on the last version. It is just a regex
> expression. (And note that you didn't fix the $ and ^ either. ^
> means beginning of the line and $ means the end of the line. So
> the pattern currently won't match anything.)
>
> patternProperties:
>   "^(SW1|SW2|SW3|SW4|SW5|...)$":
>
>
> And I hope it is obvious that you are meant to replace ... with the
> rest of the names separated by |.
>

David, thank you for your suggestions and I did not want to offend you
nor Rob, or ignore. Using this large string IMHO feels a bit wrong. No
offence, I will use it if required. At the same time I was
experimenting with possible representation and come up with smth like
this:

    patternProperties:
      "^SW[1-6]$":
        type: object
        $ref: /schemas/regulator/regulator.yaml#
        unevaluatedProperties: false

        required:
          - regulator-name
          - regulator-enable-ramp-delay
          - regulator-min-microvolt
          - regulator-max-microvolt

      "^V(CAM|CSI|DAC|DIG|FUSE|HVIO|SDIO|PLL|RF1|RF2|RFREF)$":
        type: object
        $ref: /schemas/regulator/regulator.yaml#
        unevaluatedProperties: false

        required:
          - regulator-name
          - regulator-enable-ramp-delay
          - regulator-min-microvolt
          - regulator-max-microvolt

      "^V(WLAN1|WLAN2|SIM|SIMCARD|VIB|USB|AUDIO)$":
        type: object
        $ref: /schemas/regulator/regulator.yaml#
        unevaluatedProperties: false

        required:
          - regulator-name
          - regulator-enable-ramp-delay
          - regulator-min-microvolt
          - regulator-max-microvolt

Will this be acceptable? It passes checks

