Return-Path: <devicetree+bounces-290040-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id aLnbL/ha62nkKwAAu9opvQ
	(envelope-from <devicetree+bounces-290040-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Fri, 24 Apr 2026 13:58:48 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 349B045E1B5
	for <lists+devicetree@lfdr.de>; Fri, 24 Apr 2026 13:58:48 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 13D7930177AF
	for <lists+devicetree@lfdr.de>; Fri, 24 Apr 2026 11:55:42 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 43D0C3BFE3A;
	Fri, 24 Apr 2026 11:55:41 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="NB+3xgGh"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 209BE3BF666
	for <devicetree@vger.kernel.org>; Fri, 24 Apr 2026 11:55:41 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1777031741; cv=none; b=KJsJpJzczUdQh6MFvXeuPQbJLazbEgc5TS7rZCMkKFLY5fggaavramq9i67rWW/AWfzaklhKQrEhWzI8Mr/Bgk+QJq32l6pUy2Zn6fPL3ZE+j92Q17lUHtuDB2smFqqzrmwTpna2WyXD3xQOUPTCkHv5kjWJnDiLAimqltfTPWI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1777031741; c=relaxed/simple;
	bh=toMsnNJX6E5PIJUeiQm+YCKjCZSuaUlKKE63jlxSXqw=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=izisiSn+lbpj1Xwbg22K0BA/lxMM1OOuDoLz5lAR6ELW55i5XXtQjHdiwZAEoWPueAV6/3TTC05GZCPCuS8eCZxmp7XTE/qkof/EQUDdwy+yblWADLZ79zYpiSXfpjQpJBeRx2/I2r/xcNme4TAl7F9UvJmIPodd6IKxAe57J4Q=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=NB+3xgGh; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id EEBC9C2BCB2
	for <devicetree@vger.kernel.org>; Fri, 24 Apr 2026 11:55:40 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1777031741;
	bh=toMsnNJX6E5PIJUeiQm+YCKjCZSuaUlKKE63jlxSXqw=;
	h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
	b=NB+3xgGhEOq6ixN5ulb4qZPtEno2+TCnF8Im6WiAUOsciPUjEOKFDsbocTyBUJcLn
	 fu7Elmy7AARiilO1chWFfYQbGJl0JbvmiruGg6CUy8yqJapkPr11fpwXGozpIB5XNx
	 Gh6rSvQqLNGMgvkZb4On4PQRTUzVGDVhFzTgCzLpuS/erSQKj0RSU+jx8eNsDVpqoU
	 RTTnUFaQzzKbGAGHx+77+/meLkESRu3hoE2AybCv7tikMVG7YMU1sl9pLQw+g7yJHJ
	 tNDYqqMrHlcZckUTdFwHSYGLbeLqpxqMazLiU/f66dYZKvZza2OoUgMWVtFkQkwVlK
	 QzfT0L+X0Ep7Q==
Received: by mail-ed1-f45.google.com with SMTP id 4fb4d7f45d1cf-677f7c29af6so4057772a12.2
        for <devicetree@vger.kernel.org>; Fri, 24 Apr 2026 04:55:40 -0700 (PDT)
X-Forwarded-Encrypted: i=1; AFNElJ/6c9Gf4Jloy+8wPC9oJF5J4g1qoDOv3GdynV5OtBL3KsFnqoBs29Fz90UiflNPQMeupOgyYObxErTx@vger.kernel.org
X-Gm-Message-State: AOJu0Yxt757Ts0JH5/6Ojk1VgTSVBfwpHKzXOe2SLL1kmBCapgwss9dF
	ylzCLcdw50PUKle9xPYz2dxCEwcPaekDWDoXREYbRwPdU5FF4H/DWVy9gvvyhy3ZIKTfTLakYN3
	M/k/6qI58rxLhjXTjN7vVYIBDo4nyWQ==
X-Received: by 2002:a05:6402:46cf:b0:673:1d30:29b4 with SMTP id
 4fb4d7f45d1cf-6731d302a0emr11422216a12.23.1777031739555; Fri, 24 Apr 2026
 04:55:39 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20260424071305.89503-1-clamor95@gmail.com> <20260424071305.89503-2-clamor95@gmail.com>
 <177701943440.2848156.923810545023102522.robh@kernel.org> <CAPVz0n3Wxk=9YpmU0nXsOQdtxBhoTBv8283+OHhUr-TKxkAb5A@mail.gmail.com>
In-Reply-To: <CAPVz0n3Wxk=9YpmU0nXsOQdtxBhoTBv8283+OHhUr-TKxkAb5A@mail.gmail.com>
From: Rob Herring <robh@kernel.org>
Date: Fri, 24 Apr 2026 06:55:27 -0500
X-Gmail-Original-Message-ID: <CAL_Jsq+dekx_vVFXxLb3oFQ7MM6xkPSSB7vyTV0YWh9BPLhEDw@mail.gmail.com>
X-Gm-Features: AQROBzCB2LQouwLR1SfLFurtF5sQbqRsaQtswRmzBFCyA6eJeH_sC7mjhXJr1Y8
Message-ID: <CAL_Jsq+dekx_vVFXxLb3oFQ7MM6xkPSSB7vyTV0YWh9BPLhEDw@mail.gmail.com>
Subject: Re: [PATCH v1 1/2] dt-bindings: input: Document Imagis ISA1200 haptic
 motor driver
To: Svyatoslav Ryhel <clamor95@gmail.com>
Cc: linux-kernel@vger.kernel.org, linux-input@vger.kernel.org, 
	Dmitry Torokhov <dmitry.torokhov@gmail.com>, devicetree@vger.kernel.org, 
	Conor Dooley <conor+dt@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
	Linus Walleij <linusw@kernel.org>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Rspamd-Queue-Id: 349B045E1B5
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-2.16 / 15.00];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20201202];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	MIME_TRACE(0.00)[0:+];
	DKIM_TRACE(0.00)[kernel.org:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	FREEMAIL_TO(0.00)[gmail.com];
	FREEMAIL_CC(0.00)[vger.kernel.org,gmail.com,kernel.org];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-290040-lists,devicetree=lfdr.de];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	MISSING_XM_UA(0.00)[];
	FROM_HAS_DN(0.00)[];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[robh@kernel.org,devicetree@vger.kernel.org];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	DBL_PROHIBIT(0.00)[0.0.0.49:email];
	RCPT_COUNT_SEVEN(0.00)[8];
	NEURAL_HAM(-0.00)[-1.000];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,mail.gmail.com:mid,devicetree.org:url]

On Fri, Apr 24, 2026 at 3:57=E2=80=AFAM Svyatoslav Ryhel <clamor95@gmail.co=
m> wrote:
>
> =D0=BF=D1=82, 24 =D0=BA=D0=B2=D1=96=D1=82. 2026=E2=80=AF=D1=80. =D0=BE 11=
:30 Rob Herring (Arm) <robh@kernel.org> =D0=BF=D0=B8=D1=88=D0=B5:
> >
> >
> > On Fri, 24 Apr 2026 10:13:04 +0300, Svyatoslav Ryhel wrote:
> > > Document the Imagis ISA1200 haptic motor driver, used primarily in mo=
bile
> > > handheld devices and capable of supporting up to two motors.
> > >
> > > The exact datasheet for the ISA1200 is not available; all data was mo=
deled
> > > based on available downstream kernel sources for various devices and
> > > fragments of information scattered across the internet.
> > >
> > > Signed-off-by: Svyatoslav Ryhel <clamor95@gmail.com>
> > > ---
> > >  .../bindings/input/imagis,isa1200.yaml        | 145 ++++++++++++++++=
++
> > >  include/dt-bindings/input/isa1200.h           |  16 ++
> > >  2 files changed, 161 insertions(+)
> > >  create mode 100644 Documentation/devicetree/bindings/input/imagis,is=
a1200.yaml
> > >  create mode 100644 include/dt-bindings/input/isa1200.h
> > >
> >
> > My bot found errors running 'make dt_binding_check' on your patch:
> >
> > yamllint warnings/errors:
> >
> > dtschema/dtc warnings/errors:
> > /builds/robherring/dt-review-ci/linux/Documentation/devicetree/bindings=
/input/imagis,isa1200.example.dtb: haptic-engine@49 (imagis,isa1200): enabl=
e-gpios: [[4294967295, 22, 0], [4294967295, 23, 0]] is too long
> >         from schema $id: http://devicetree.org/schemas/gpio/gpio-consum=
er-common.yaml
> >
> > doc reference errors (make refcheckdocs):
> >
> > See https://patchwork.kernel.org/project/devicetree/patch/2026042407130=
5.89503-2-clamor95@gmail.com
> >
> > The base for the series is generally the latest rc1. A different depend=
ency
> > should be noted in *this* patch.
> >
> > If you already ran 'make dt_binding_check' and didn't see the above
> > error(s), then make sure 'yamllint' is installed and dt-schema is up to
> > date:
> >
> > pip3 install dtschema --upgrade
> >
> > Please check and re-submit after running the above command yourself. No=
te
> > that DT_SCHEMA_FILES can be set to your schema file to speed up checkin=
g
> > your schema. However, it must be unset to test all examples with your s=
chema.
> >
>
> I am not sure what is going on here. I have installed dtschema-2026.4
> which seems to be the latest. Running the check with this schema gives
> a clean result, no errors produced.
>
>   SCHEMA  Documentation/devicetree/bindings/processed-schema.json
>   CHKDT   ./Documentation/devicetree/bindings
>   LINT    ./Documentation/devicetree/bindings
>   DTEX    Documentation/devicetree/bindings/input/imagis,isa1200.example.=
dts
>   DTC [C] Documentation/devicetree/bindings/input/imagis,isa1200.example.=
dtb

Let me guess, you have DT_SCHEMA_FILES set? Then you are only
validating against the schemas that match and not all of them. There's
a single binding target now. See commit 400fbf4b5870 ("dt-bindings:
kbuild: Support single binding targets"). Of course, changes in this
schema could affect any other example, so you ultimately have to check
everything with just 'make dt_binding_check'.

The issue here is enable-gpios is defined as a standard property name
with 1 GPIO. I don't think we want to extend that because with more
than 1 you have to know what each signal is and the relationship
between them which will vary.

Rob

