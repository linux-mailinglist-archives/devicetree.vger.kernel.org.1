Return-Path: <devicetree+bounces-3977-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id D3DB97B0C18
	for <lists+devicetree@lfdr.de>; Wed, 27 Sep 2023 20:44:55 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sv.mirrors.kernel.org (Postfix) with ESMTP id 8357E281C94
	for <lists+devicetree@lfdr.de>; Wed, 27 Sep 2023 18:44:54 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id CE37B20B04;
	Wed, 27 Sep 2023 18:44:52 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C33EEE574
	for <devicetree@vger.kernel.org>; Wed, 27 Sep 2023 18:44:50 +0000 (UTC)
Received: from mail-wm1-x331.google.com (mail-wm1-x331.google.com [IPv6:2a00:1450:4864:20::331])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 4F0C4E6
	for <devicetree@vger.kernel.org>; Wed, 27 Sep 2023 11:44:45 -0700 (PDT)
Received: by mail-wm1-x331.google.com with SMTP id 5b1f17b1804b1-405e48d8cfdso57169755e9.2
        for <devicetree@vger.kernel.org>; Wed, 27 Sep 2023 11:44:45 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=jrtc27.com; s=gmail.jrtc27.user; t=1695840284; x=1696445084; darn=vger.kernel.org;
        h=to:references:message-id:content-transfer-encoding:cc:date
         :in-reply-to:from:subject:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=6+uiTOmGSxLchBRjvKV/vrfTnBZdrMZ5XZFVPvVP6Hk=;
        b=gfPEnuM7z2HQ1mbyHVUH9LOwsDZGJ33N0xaqKAiSCh88zEJoeUiaBDMca4oTFyY84I
         i2h5wh5F0enWHrnrkuHa/YmwdTFEVwC0jaxcpkEBiGlRBM8klwuskt/wrIVLgB3ZhoJj
         qoBT8AzOG5Ka1REmRL8DqZuUVXDsVdOo00RJe5JSsfbMH/A8PoIXaulcUkK4dVpC9zB2
         VyqL4b7oE9ZnfGhjw4frzNVELIfFop8ZEelLbowYnwvfQFUQ/WKJg4VWN0GcKfGEvJuW
         B92G59butgvrrRRsDYLmp0BisL6xOi0PT17NPeLs7HpvGT8GEO6vzfMJi99TFgiHUjUr
         byuA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1695840284; x=1696445084;
        h=to:references:message-id:content-transfer-encoding:cc:date
         :in-reply-to:from:subject:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=6+uiTOmGSxLchBRjvKV/vrfTnBZdrMZ5XZFVPvVP6Hk=;
        b=SxEKSxdYYqJ0o8bfqxdfdewHh3i5mzcSKKiM+SVWNJq5XlFeFp/bMmSvPpvzvmv08Y
         uS5pBRcWd2PotrW3xtfte3FTL8+0c98vJGMd2WiWutqVMf1VBz2yXP9dX+LaDJ9pUU0f
         2QYp6ChC569ojYJdllHlsfimL4YGrndKKRWoWNHvm3IbdNQXfuOXc2+hs3lPaFSZJxgb
         53SHkHzQhFeQ2iPzmSNmNKNlKS4L+yJ1XAPDQSZnXLFT3K/cqdxdXnusfxaEcl+8tpsV
         P/vn1XBG2+XWx5zhJoJaNmDdsPfYGlwXoProuhi0Eg53Su/NoegDH13TRLzCj6SNcxKT
         5kVA==
X-Gm-Message-State: AOJu0YzJgUA3W9C80ZdpfJG+DDleUKejQGT/bu08Pm06mOlNFA6vmqXA
	/OKVE5RuBVrQCpFqTVKd+utqPA==
X-Google-Smtp-Source: AGHT+IFCLPPlB8l+AVBO1lOEzvQO9ZomJNTtfFASLwJfuG+u2aKneFh1WB8sF2W/Vs55+CkE9Ewd9A==
X-Received: by 2002:a5d:444e:0:b0:320:7272:8fbe with SMTP id x14-20020a5d444e000000b0032072728fbemr2883194wrr.17.1695840283728;
        Wed, 27 Sep 2023 11:44:43 -0700 (PDT)
Received: from smtpclient.apple ([131.111.5.246])
        by smtp.gmail.com with ESMTPSA id d5-20020a056000186500b00323384e04e8sm4735329wri.111.2023.09.27.11.44.42
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 27 Sep 2023 11:44:43 -0700 (PDT)
Content-Type: text/plain;
	charset=utf-8
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
Mime-Version: 1.0 (Mac OS X Mail 16.0 \(3731.600.7\))
Subject: Re: [PATCH v2 2/3] dt-bindings: riscv: Add Svadu Entry
From: Jessica Clarke <jrtc27@jrtc27.com>
In-Reply-To: <d141062b-e3e0-45ce-bc61-3404417c7d7c@app.fastmail.com>
Date: Wed, 27 Sep 2023 19:44:32 +0100
Cc: Yong-Xuan Wang <yongxuan.wang@sifive.com>,
 linux-riscv <linux-riscv@lists.infradead.org>,
 kvm-riscv@lists.infradead.org,
 Greentime Hu <greentime.hu@sifive.com>,
 Vincent Chen <vincent.chen@sifive.com>,
 Jinyu Tang <tjytimi@163.com>,
 Alexandre Ghiti <alex@ghiti.fr>,
 Conor Dooley <conor@kernel.org>,
 Rob Herring <robh+dt@kernel.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
 Paul Walmsley <paul.walmsley@sifive.com>,
 Palmer Dabbelt <palmer@dabbelt.com>,
 Albert Ou <aou@eecs.berkeley.edu>,
 "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS" <devicetree@vger.kernel.org>,
 Stefan O'Rear <sorear@fastmail.com>
Content-Transfer-Encoding: quoted-printable
Message-Id: <55289FD5-55F7-4EE6-BBCC-933B32770A95@jrtc27.com>
References: <20230922085701.3164-1-yongxuan.wang@sifive.com>
 <20230922085701.3164-3-yongxuan.wang@sifive.com>
 <d141062b-e3e0-45ce-bc61-3404417c7d7c@app.fastmail.com>
To: LKML <linux-kernel@vger.kernel.org>
X-Mailer: Apple Mail (2.3731.600.7)
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_BLOCKED,
	SPF_HELO_NONE,SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
	lindbergh.monkeyblade.net

On 27 Sep 2023, at 18:24, Stefan O'Rear <sorear@fastmail.com> wrote:
>=20
> On Fri, Sep 22, 2023, at 4:56 AM, Yong-Xuan Wang wrote:
>> Add an entry for the Svadu extension to the riscv,isa-extensions =
property.
>>=20
>> Signed-off-by: Yong-Xuan Wang <yongxuan.wang@sifive.com>
>> ---
>> Documentation/devicetree/bindings/riscv/extensions.yaml | 6 ++++++
>> 1 file changed, 6 insertions(+)
>>=20
>> diff --git a/Documentation/devicetree/bindings/riscv/extensions.yaml=20=

>> b/Documentation/devicetree/bindings/riscv/extensions.yaml
>> index cc1f546fdbdc..b5a0aed0165b 100644
>> --- a/Documentation/devicetree/bindings/riscv/extensions.yaml
>> +++ b/Documentation/devicetree/bindings/riscv/extensions.yaml
>> @@ -147,6 +147,12 @@ properties:
>>             ratified at commit 3f9ed34 ("Add ability to manually=20
>> trigger
>>             workflow. (#2)") of riscv-time-compare.
>>=20
>> +        - const: svadu
>> +          description: |
>> +            The standard Svadu supervisor-level extension for =
hardware updating
>> +            of PTE A/D bits as frozen at commit b65e07c ("move to =
Frozen
>> +            state") of riscv-svadu.
>> +
>=20
> This is incomplete without a specification of the behavior of the HADE =
bit implied
> by svadu being present.
>=20
> The ratified RVA20 requires page table accesses with A/D =3D 0 to =
trap, in other
> words HADE =3D 0 for RVA20 conformance.  If we are serious about =
compatibility,
> I think that we need platforms to be able to conform to both RVA20 and =
RVA23,
> which requires HADE =3D 0 at kernel entry with a SBI call to set HADE =
=3D 1.  For
> the same reason KVM should probably default to HADE =3D 0 so that the =
default
> configuration remains conformant to RVA20.

I=E2=80=99ve filed https://github.com/riscv/riscv-svadu/issues/21 to =
track this
broken ISA design, as discussed on IRC.

As a FreeBSD RISC-V developer, and sometime reviewer of Linux RISC-V
patches, this is a NAK from me for this ISA design. Which does beg the
question of how much sense the current RISC-V processes make, given for
freezing a spec you just need to send out the relevant RFC patches,
they don=E2=80=99t actually need to have any review from the project in
question that says it=E2=80=99s a sensible design, instead treating that =
as
part of the public review period, where it=E2=80=99s much harder to
fundamentally change the spec, despite being the first time most people
see it or take it seriously as a thing to look at. In my opinion there
is a serious need for knowledgeable people on the software side to
review the ISA extension and its interaction with software *before* it
can be frozen so that these things can be fixed. And of course, if they
do get fixed during/after public review, what good is the frozen state
anyway, because a spec that changes is not very frozen.

But I=E2=80=99m probably preaching to the choir here about RISC-V =
processes
being unfit for purpose.

Jess

>>         - const: svinval
>>           description:
>>             The standard Svinval supervisor-level extension for =
fine-grained
>> --=20
>> 2.17.1
>>=20
>>=20
>> _______________________________________________
>> linux-riscv mailing list
>> linux-riscv@lists.infradead.org
>> http://lists.infradead.org/mailman/listinfo/linux-riscv
>=20
> _______________________________________________
> linux-riscv mailing list
> linux-riscv@lists.infradead.org
> http://lists.infradead.org/mailman/listinfo/linux-riscv



