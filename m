Return-Path: <devicetree+bounces-12539-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id DE0DD7D9E9E
	for <lists+devicetree@lfdr.de>; Fri, 27 Oct 2023 19:03:33 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id D5C311C20E7B
	for <lists+devicetree@lfdr.de>; Fri, 27 Oct 2023 17:03:32 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C448E38FBB;
	Fri, 27 Oct 2023 17:03:29 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="OpxFafWs"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A512E39849
	for <devicetree@vger.kernel.org>; Fri, 27 Oct 2023 17:03:29 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id F1136C43395;
	Fri, 27 Oct 2023 17:03:28 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1698426209;
	bh=BfxsvhC4F9lgKCruOEQmZ10Exl7IYgbnsfHRmtm0NuY=;
	h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
	b=OpxFafWsVZ+deFU2cO2DlSnGVClbLbR7ulDy4qEtI9CWagcnrxC7Zi6Zlqo4096C7
	 gEPT7WMZtCw1+ejiIByjINtcant62lR6AXG4AWLUUpACJV52BJaePoJoSOIMpGyqDV
	 viJ8zql35rjy+7shtvnRzrJvlI0eCratoPEaUmH5GlEC4tT0K3m69yqiHiiaQyfAqD
	 mAjHySNjYep/Ps+vVRo2BKk+rSpnTRy3za88jj6//DqukIkuZAZx6r/XL89lno4mHg
	 dofQmRlf4hj2nMO9lXx4KB3rV2fP/cuADWcYwyl8nAIQSJG0GULCiJmu3DaywlMwcu
	 stFjaRBGsGGHg==
Received: by mail-lf1-f52.google.com with SMTP id 2adb3069b0e04-507a29c7eefso3319932e87.1;
        Fri, 27 Oct 2023 10:03:28 -0700 (PDT)
X-Gm-Message-State: AOJu0YwQ2JyWTxc0MKKvsYggW1YNka/4zHuw4yYYtj0k3ybdIHkgjC6/
	SjN4cvLjnEeHvckAB/YguG9wC0slkxA7vPj3gA==
X-Google-Smtp-Source: AGHT+IHJBBVNUhcAD3/MpN0+Oo67eI/jbR6jby2nErXAZsV4eVq8huXsTRKEm6EYfS7MX2n5YAd6TKWUQDnZ1WCgNX0=
X-Received: by 2002:a05:6512:2396:b0:503:343a:829f with SMTP id
 c22-20020a056512239600b00503343a829fmr3152037lfv.23.1698426207053; Fri, 27
 Oct 2023 10:03:27 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20231027145422.40265-1-nks@flawful.org> <20231027145422.40265-2-nks@flawful.org>
 <CAL_JsqJh6aJb7_qsVnVNEABBg2utf0FPN+qYyOfsF2dAfZpd0w@mail.gmail.com> <ZTvh51PGCBhSjURY@x1-carbon>
In-Reply-To: <ZTvh51PGCBhSjURY@x1-carbon>
From: Rob Herring <robh@kernel.org>
Date: Fri, 27 Oct 2023 12:03:15 -0500
X-Gmail-Original-Message-ID: <CAL_JsqKu9VxUrEbvyV0EFi-HhXstitu1sk0jQpbYqTDKY4N3=A@mail.gmail.com>
Message-ID: <CAL_JsqKu9VxUrEbvyV0EFi-HhXstitu1sk0jQpbYqTDKY4N3=A@mail.gmail.com>
Subject: Re: [PATCH v3 1/6] dt-bindings: PCI: dwc: rockchip: Add mandatory atu reg
To: Niklas Cassel <Niklas.Cassel@wdc.com>
Cc: Niklas Cassel <nks@flawful.org>, Lorenzo Pieralisi <lpieralisi@kernel.org>, 
	=?UTF-8?Q?Krzysztof_Wilczy=C5=84ski?= <kw@linux.com>, 
	Bjorn Helgaas <bhelgaas@google.com>, 
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, Conor Dooley <conor+dt@kernel.org>, 
	Heiko Stuebner <heiko@sntech.de>, Shawn Lin <shawn.lin@rock-chips.com>, 
	Simon Xue <xxm@rock-chips.com>, Damien Le Moal <dlemoal@kernel.org>, 
	Sebastian Reichel <sebastian.reichel@collabora.com>, Serge Semin <fancer.lancer@gmail.com>, 
	"linux-pci@vger.kernel.org" <linux-pci@vger.kernel.org>, 
	"devicetree@vger.kernel.org" <devicetree@vger.kernel.org>, 
	"linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>, 
	"linux-rockchip@lists.infradead.org" <linux-rockchip@lists.infradead.org>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Fri, Oct 27, 2023 at 11:15=E2=80=AFAM Niklas Cassel <Niklas.Cassel@wdc.c=
om> wrote:
>
> Hello Rob,
>
> On Fri, Oct 27, 2023 at 10:58:28AM -0500, Rob Herring wrote:
> > On Fri, Oct 27, 2023 at 9:56=E2=80=AFAM Niklas Cassel <nks@flawful.org>=
 wrote:
> > >
> > > From: Niklas Cassel <niklas.cassel@wdc.com>
> > >
> > > Even though rockchip-dw-pcie.yaml inherits snps,dw-pcie.yaml
> > > using:
> > >
> > > allOf:
> > >   - $ref: /schemas/pci/snps,dw-pcie.yaml#
> > >
> > > and snps,dw-pcie.yaml does have the atu reg defined, in order to be
> > > able to use this reg, while still making sure 'make CHECK_DTBS=3Dy'
> > > pass, we need to add this reg to rockchip-dw-pcie.yaml.
> > >
> > > All compatible strings (rockchip,rk3568-pcie and rockchip,rk3588-pcie=
)
> > > should have this reg.
> > >
> > > The regs in the example are updated to actually match pcie3x2 on rk35=
68.
> >
> > Breaking compatibility on these platforms is okay because ...?
>
> I don't follow, could you please elaborate?

A DT which was valid without 'atu' region is now not valid with this
change. If I'm reading this schema with the change, then not having
'atu' is an error and the OS can treat it as an error. If it does,
then it wouldn't work with existing DTs. You cannot add new required
properties or required entries.

If you can say no users of the affected platforms care (e.g. only you
have a board) or the binding is not yet in use, then it's fine. But
you have to state that justification. I suspect that is not the case
here.

Rob

