Return-Path: <devicetree+bounces-248263-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [172.105.105.114])
	by mail.lfdr.de (Postfix) with ESMTPS id BC884CD063B
	for <lists+devicetree@lfdr.de>; Fri, 19 Dec 2025 15:53:33 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id BE0603003515
	for <lists+devicetree@lfdr.de>; Fri, 19 Dec 2025 14:51:05 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id CE38133ADBC;
	Fri, 19 Dec 2025 14:51:02 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="n+AW1yh3"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C231F33AD9D
	for <devicetree@vger.kernel.org>; Fri, 19 Dec 2025 14:51:01 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766155861; cv=none; b=eAEMeti1XqjROWdPFO6P9W4WgaetJtypul0R4LlH88kJGDH/UNdmpz4L7TeYCbGvtFOJnLy29AT8ENySU1i5P1zhfn6UwWbpW76X5RpWOxl1XqT0FUMHLhgh7wnhYHxY2nnzcmYZT/HMA1vmQBt9ALTLvHkJapurtluEFztvkn0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766155861; c=relaxed/simple;
	bh=EJ+dzeTq3zkO740x+wtY9FSqM6w84J+vYtOMY5yyNE0=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=EDx0w8cn8qxUrzqTHPU36DfX+rmG6rhxydAkOyg03AsIPRmN2pgkqkVtO2HJK+Cd/AxaHXRPoyvO+vVV1eI7mtHZIefaDasBL/GNuqz6zEKpJP1h33x2J25CxbOFBOotpDL732mtMczQ567g8Nnp2J24l2OUBzcBBqbbvM00HS8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=n+AW1yh3; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 94589C4AF09
	for <devicetree@vger.kernel.org>; Fri, 19 Dec 2025 14:51:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1766155860;
	bh=EJ+dzeTq3zkO740x+wtY9FSqM6w84J+vYtOMY5yyNE0=;
	h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
	b=n+AW1yh3fWqz6Pw58golaJQ6cIZBfRT1dYunv61yQ4GhMzyvztykPanP0qDByujuM
	 /Y42fO77bsarJqgRBVbNprsmgCb+Kdi9Cu7zM/THGOtqQOKSp6o19Se3uo4B5GhvIS
	 rD8EFdfyrhgFXEO3nW1biCBUueREJLCg8piBQKWJ30d6xyOxooCH+uzpYRMygj8zth
	 Ke19+ZJdTsgy7pN8RFCKpPqXBxJK7LKPVH0pE2IdSDTL2B4W9G2a/ZPrDwfnHS3wUg
	 Yan49XloRsKhWuwlENbqItrUYMfN+WWuhrxEK72otTpPtam6VH13+/dK54Nd3L0/gd
	 IPWTUrC19Oi9A==
Received: by mail-ed1-f52.google.com with SMTP id 4fb4d7f45d1cf-64ba9a00b5aso707027a12.2
        for <devicetree@vger.kernel.org>; Fri, 19 Dec 2025 06:51:00 -0800 (PST)
X-Forwarded-Encrypted: i=1; AJvYcCUyLM5vIKpby5OCgnaNdrSRFm15AHqUTu3JNTCua8r3JICHpeSEIeg3itnfxqcIFU76GRarC7Jw/RdO@vger.kernel.org
X-Gm-Message-State: AOJu0YyJHcpZUHzUW7W5q8OZliiAQjrJE5ZTsx3tjPsYecpAALV92OG7
	acBLrb9ecFkV+lkT7L52B5oNq0lH5gYRd5IZJ7RSJIvzmlUS3NHcQeaqXBExVTHBqF7x6BmhQWG
	SG4kdzUHzUb0YX8CJSjLmq3wryzFSuw==
X-Google-Smtp-Source: AGHT+IGvbykqdyOBt06JtqzhXaVojyWEfyTLikIZk9aB1vZ+0nVNUga+r5sdbcsmsKbT8PgKJ4l0f7t65HN9riIlGis=
X-Received: by 2002:a17:907:9816:b0:b7c:fe7c:e382 with SMTP id
 a640c23a62f3a-b8036f0f178mr307561166b.17.1766155858895; Fri, 19 Dec 2025
 06:50:58 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20251216-firmware_managed_ep-v2-0-7a731327307f@oss.qualcomm.com>
 <20251216-firmware_managed_ep-v2-1-7a731327307f@oss.qualcomm.com>
 <176589894648.2511603.9461849499751093485.robh@kernel.org> <CAMyL0qNwZxysUGJu7YowPn2CpmdPrUwnCOeVjm_2M-ik4s+kgQ@mail.gmail.com>
In-Reply-To: <CAMyL0qNwZxysUGJu7YowPn2CpmdPrUwnCOeVjm_2M-ik4s+kgQ@mail.gmail.com>
From: Rob Herring <robh@kernel.org>
Date: Fri, 19 Dec 2025 08:50:46 -0600
X-Gmail-Original-Message-ID: <CAL_JsqL+PKXYSRHVEZ-Hm4O7gF6g5nPj-6aG066NuiH3Z9S3uA@mail.gmail.com>
X-Gm-Features: AQt7F2oVG2umosq9LINppZMQwPOzebAmEuTgS_Gu9O9JXH0WUaHa4RkPhA2Ltrs
Message-ID: <CAL_JsqL+PKXYSRHVEZ-Hm4O7gF6g5nPj-6aG066NuiH3Z9S3uA@mail.gmail.com>
Subject: Re: [PATCH v2 1/2] dt-bindings: PCI: qcom,pcie-ep-sa8255p: Document
 firmware managed PCIe endpoint
To: Mrinmay Sarkar <mrinmay.sarkar@oss.qualcomm.com>
Cc: linux-pci@vger.kernel.org, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
	Conor Dooley <conor+dt@kernel.org>, linux-kernel@vger.kernel.org, 
	konrad.dybcio@oss.qualcomm.com, linux-arm-msm@vger.kernel.org, 
	quic_shazhuss@quicinc.com, Bjorn Helgaas <bhelgaas@google.com>, 
	Philipp Zabel <p.zabel@pengutronix.de>, 
	Krishna Chaitanya Chundru <krishna.chundru@oss.qualcomm.com>, 
	Manivannan Sadhasivam <manivannan.sadhasivam@oss.qualcomm.com>, 
	=?UTF-8?Q?Krzysztof_Wilczy=C5=84ski?= <kwilczynski@kernel.org>, 
	Rama Krishna <quic_ramkri@quicinc.com>, quic_vbadigan@quicinc.com, 
	Nitesh Gupta <quic_nitegupt@quicinc.com>, Ayiluri Naga Rashmi <quic_nayiluri@quicinc.com>, 
	Bjorn Andersson <andersson@kernel.org>, devicetree@vger.kernel.org, 
	Lorenzo Pieralisi <lpieralisi@kernel.org>, Manivannan Sadhasivam <mani@kernel.org>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Wed, Dec 17, 2025 at 2:52=E2=80=AFAM Mrinmay Sarkar
<mrinmay.sarkar@oss.qualcomm.com> wrote:
>
> On Tue, Dec 16, 2025 at 8:59=E2=80=AFPM Rob Herring (Arm) <robh@kernel.or=
g> wrote:
> >
> >
> > On Tue, 16 Dec 2025 19:19:17 +0530, Mrinmay Sarkar wrote:
> > > Document the required configuration to enable the PCIe Endpoint contr=
oller
> > > on SA8255p which is managed by firmware using power-domain based hand=
ling.
> > >
> > > Signed-off-by: Mrinmay Sarkar <mrinmay.sarkar@oss.qualcomm.com>
> > > ---
> > >  .../bindings/pci/qcom,pcie-ep-sa8255p.yaml         | 110 +++++++++++=
++++++++++
> > >  1 file changed, 110 insertions(+)
> > >
> >
> > My bot found errors running 'make dt_binding_check' on your patch:
> >
> > yamllint warnings/errors:
> >
> > dtschema/dtc warnings/errors:
> > Documentation/devicetree/bindings/pci/qcom,pcie-ep-sa8255p.example.dtb:=
 /example-0/soc/pcie-ep@1c10000: failed to match any schema with compatible=
: ['qcom,sa8255p-pcie-ep']
> >
> > doc reference errors (make refcheckdocs):
> >
> > See https://patchwork.kernel.org/project/devicetree/patch/20251216-firm=
ware_managed_ep-v2-1-7a731327307f@oss.qualcomm.com
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
> Thanks Rob for sharing this.
>
> I already ran 'make dt_binding_check' but somehow I didn't see this error=
.
> Maybe I need to upgrade all the tools ..

The answer is provided above already. Don't set DT_SCHEMA_FILES.

Rob

