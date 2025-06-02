Return-Path: <devicetree+bounces-182318-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 747D0ACB9ED
	for <lists+devicetree@lfdr.de>; Mon,  2 Jun 2025 19:01:58 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 8B1F57ABD7D
	for <lists+devicetree@lfdr.de>; Mon,  2 Jun 2025 17:00:38 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E61112AE6C;
	Mon,  2 Jun 2025 17:01:51 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=smile.fr header.i=@smile.fr header.b="Q0pP/Un4"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ed1-f52.google.com (mail-ed1-f52.google.com [209.85.208.52])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CC3662C3259
	for <devicetree@vger.kernel.org>; Mon,  2 Jun 2025 17:01:49 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.52
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1748883711; cv=none; b=R0dZDZldVUv+h5CRyUWsB8JdlG3pl0FqIjIOW5APz8Zzn3wClSJm4r/6mlIZzNOaGe8j5YVqWp3dZ8mdU+G9wFpM+s/YZuCY8+u1SohOFQc16GswKhRtA/WK1HSPC920ATq4WpH5NZXcb8sxmuETz3gmvMsWrEjW4jm9N/cKKSU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1748883711; c=relaxed/simple;
	bh=HH4IZh2wZ91YFwtu/TN9O0Wjnf2tiVrksx+dUNEHZxc=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=gO6PpCRGQNxGv6nrEdgm33ooF4awXfO3YLDK6rzCwJWu4hOhGqDvELz03Lwesag1SiwrEXFW1fR1AsErdsPIleP8liAPgX5/fRSiFtViBLtzC/OnbbxvKJc0u+RZgb3FbRuTldZI12mJ1F5QiEVHAMfPB/wDSrmVt+nPKErYEEs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=smile.fr; spf=pass smtp.mailfrom=smile.fr; dkim=pass (1024-bit key) header.d=smile.fr header.i=@smile.fr header.b=Q0pP/Un4; arc=none smtp.client-ip=209.85.208.52
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=smile.fr
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=smile.fr
Received: by mail-ed1-f52.google.com with SMTP id 4fb4d7f45d1cf-6045b95d1feso8812455a12.1
        for <devicetree@vger.kernel.org>; Mon, 02 Jun 2025 10:01:49 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=smile.fr; s=google; t=1748883708; x=1749488508; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=abDph0Aj5XQN6In+Lzu8X3Vm8VPqLMwLrdQIcHgjTyU=;
        b=Q0pP/Un4szZNC3IOfyP//MC8RoLsqa8BX7cQHeshkk0oVJI+cLH9PJdgpdO9ODD6HI
         AAPjPQAyRm0xOR/G2x6bwQdD9PoG07dBQx2mgb06Wppq62s1k0nxpr/iBvzMchPvL9tU
         yg0p7MIamF3ze7r7R6XGcEWGaSujGVikGwHJA=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1748883708; x=1749488508;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=abDph0Aj5XQN6In+Lzu8X3Vm8VPqLMwLrdQIcHgjTyU=;
        b=g8KuEWVIgiYDT88uZMpsc5EsOkPyszunG4Wg3O6a+Hgm53z/lSa2gWB/WUDa6dkvE7
         vyARiAWfo7AbmUO0ZdQgKl6gluK0o4YQ4zqrW1vPi5uNwLkxM9wbnncK74Z7A06bqEAV
         a86x7XoKgpzOqvZsPPvL4pSMGNLdO2q/po1I2PKt1IklCkm7eol4llTuSQSzKuqpu/t3
         gEk/hW8bKNZdUBQw1z2dJisoDn4tGMoHk2K3JFMW6TEUbmzmu9TckB7JTImwGTQR4hV1
         UcS01/44hIjfzv7mHYSl7gDIDo9lMAd4KY6UaGtjRjNI7kycFdU4FI5Bol++mW+BI1OY
         W1fg==
X-Gm-Message-State: AOJu0YyMCNU3Yx52RcgLadZbyV/dfhjnnW/8mSSx6ELr2Xq2Nrqv8FpB
	VJCq/IBtUQG9CpfVIl/SkbtFmn9mpmfIAb1mhnmCNzITRg0dumXTS0pX91J35VyjIRdSPN+II1m
	VpME4X/4snQuf45zRnTNmyLcoaAee2mqce++kExqfHw==
X-Gm-Gg: ASbGncs0QMnjFQLlQ6WNW3AJfiFmjEidId1C2J4Vxu/MjiJ/WfHNDbKMuiL5UafHzmL
	MsRJaa8diQMRPJqG2EsNlAFBM6nPvk/YK//CyJwxHFSh6Us5MqKObntmJU0f24cbUhDaYMzJP+r
	KSHbaSZGQVelhg6w02/yQS+fgOwm/mPgHM/iqZL9z5Vo8=
X-Google-Smtp-Source: AGHT+IG76GcE0CyIGvdYC6symGR++l6I7RyOq2ODj2VjqbpsYHvlsULDDGdmeG91WwsK5n6zSyCNIMvbwaUqpWiOWN8=
X-Received: by 2002:a05:6402:280f:b0:602:3e6d:9334 with SMTP id
 4fb4d7f45d1cf-6057c628879mr10562013a12.24.1748883707841; Mon, 02 Jun 2025
 10:01:47 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20250528203152.628818-1-corentin.guillevic@smile.fr> <174846881248.859527.7504198795486149705.robh@kernel.org>
In-Reply-To: <174846881248.859527.7504198795486149705.robh@kernel.org>
From: Corentin GUILLEVIC <corentin.guillevic@smile.fr>
Date: Mon, 2 Jun 2025 19:01:37 +0200
X-Gm-Features: AX0GCFuEbqSxAst_bXA7BoLSAfRzF9ne8TSDsrwoFAMFO0l0IJqCz-SKpTzZj5U
Message-ID: <CAMFqQmoKEiakkXhhQf4E8fMYQSV76sKNdnKNEBoMh_+OL7riew@mail.gmail.com>
Subject: Re: [PATCH] dt-bindings: net: dsa: microchip: add bit-banged SMI example
To: "Rob Herring (Arm)" <robh@kernel.org>
Cc: devicetree@vger.kernel.org, Jakub Kicinski <kuba@kernel.org>, netdev@vger.kernel.org, 
	"David S. Miller" <davem@davemloft.net>, Andrew Lunn <andrew@lunn.ch>, Marek Vasut <marex@denx.de>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Vladimir Oltean <olteanv@gmail.com>, 
	Woojung Huh <woojung.huh@microchip.com>, Conor Dooley <conor+dt@kernel.org>, 
	UNGLinuxDriver@microchip.com, Paolo Abeni <pabeni@redhat.com>, 
	linux-kernel@vger.kernel.org, Eric Dumazet <edumazet@google.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Le mer. 28 mai 2025 =C3=A0 23:46, Rob Herring (Arm) <robh@kernel.org> a =C3=
=A9crit :
>
>
> On Wed, 28 May 2025 22:31:51 +0200, Corentin Guillevic wrote:
> > KSZ8863 can be configured using I2C, SPI or Microchip SMI. The latter i=
s
> > similar to MDIO, but uses a different protocol. If the hardware doesn't
> > support this, SMI bit banging can help. This commit adds an device tree
> > example that uses the CONFIG_MDIO_GPIO driver for SMI bit banging.
> >
> > Signed-off-by: Corentin Guillevic <corentin.guillevic@smile.fr>
> > ---
> >  .../bindings/net/dsa/microchip,ksz.yaml       | 57 +++++++++++++++++++
> >  1 file changed, 57 insertions(+)
> >
>
> My bot found errors running 'make dt_binding_check' on your patch:
>
> yamllint warnings/errors:
> ./Documentation/devicetree/bindings/net/dsa/microchip,ksz.yaml:246:1: [er=
ror] missing document start "---" (document-start)
> ./Documentation/devicetree/bindings/net/dsa/microchip,ksz.yaml:246:3: [er=
ror] syntax error: expected '<document start>', but found '<block sequence =
start>' (syntax)
>
> dtschema/dtc warnings/errors:
> /builds/robherring/dt-review-ci/linux/Documentation/devicetree/bindings/n=
et/dsa/microchip,ksz.yaml: ignoring, error parsing file
> Traceback (most recent call last):
>   File "/usr/bin/yamllint", line 33, in <module>
>     sys.exit(load_entry_point('yamllint=3D=3D1.29.0', 'console_scripts', =
'yamllint')())
>              ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^=
^^^^^^^^^
>   File "/usr/lib/python3/dist-packages/yamllint/cli.py", line 228, in run
>     prob_level =3D show_problems(problems, file, args_format=3Dargs.forma=
t,
>                  ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
>   File "/usr/lib/python3/dist-packages/yamllint/cli.py", line 113, in sho=
w_problems
>     for problem in problems:
>   File "/usr/lib/python3/dist-packages/yamllint/linter.py", line 200, in =
_run
>     for problem in get_cosmetic_problems(buffer, conf, filepath):
>   File "/usr/lib/python3/dist-packages/yamllint/linter.py", line 137, in =
get_cosmetic_problems
>     for problem in rule.check(rule_conf,
>   File "/usr/lib/python3/dist-packages/yamllint/rules/indentation.py", li=
ne 583, in check
>     yield from _check(conf, token, prev, next, nextnext, context)
>   File "/usr/lib/python3/dist-packages/yamllint/rules/indentation.py", li=
ne 344, in _check
>     if expected < 0:
>        ^^^^^^^^^^^^
> TypeError: '<' not supported between instances of 'NoneType' and 'int'
> ./Documentation/devicetree/bindings/net/dsa/microchip,ksz.yaml:246:3: but=
 found another document
> make[2]: *** Deleting file 'Documentation/devicetree/bindings/net/dsa/mic=
rochip,ksz.example.dts'
> Documentation/devicetree/bindings/net/dsa/microchip,ksz.yaml:246:3: but f=
ound another document
> make[2]: *** [Documentation/devicetree/bindings/Makefile:26: Documentatio=
n/devicetree/bindings/net/dsa/microchip,ksz.example.dts] Error 1
> make[2]: *** Waiting for unfinished jobs....
> make[1]: *** [/builds/robherring/dt-review-ci/linux/Makefile:1524: dt_bin=
ding_check] Error 2
> make: *** [Makefile:248: __sub-make] Error 2
>
> doc reference errors (make refcheckdocs):
>
> See https://patchwork.ozlabs.org/project/devicetree-bindings/patch/202505=
28203152.628818-1-corentin.guillevic@smile.fr
>
> The base for the series is generally the latest rc1. A different dependen=
cy
> should be noted in *this* patch.
>
> If you already ran 'make dt_binding_check' and didn't see the above
> error(s), then make sure 'yamllint' is installed and dt-schema is up to
> date:
>
> pip3 install dtschema --upgrade
>
> Please check and re-submit after running the above command yourself. Note
> that DT_SCHEMA_FILES can be set to your schema file to speed up checking
> your schema. However, it must be unset to test all examples with your sch=
ema.
>

Sorry,.. I send a fixed one.

Regards,
Corentin

