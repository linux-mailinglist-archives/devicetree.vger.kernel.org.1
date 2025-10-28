Return-Path: <devicetree+bounces-232395-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from dfw.mirrors.kernel.org (dfw.mirrors.kernel.org [142.0.200.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 48812C17608
	for <lists+devicetree@lfdr.de>; Wed, 29 Oct 2025 00:35:59 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.mirrors.kernel.org (Postfix) with ESMTPS id 0D4974E3B7B
	for <lists+devicetree@lfdr.de>; Tue, 28 Oct 2025 23:35:58 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 402E634DCF4;
	Tue, 28 Oct 2025 23:35:55 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="kOQPpC/m"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f52.google.com (mail-wm1-f52.google.com [209.85.128.52])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 689212DEA96
	for <devicetree@vger.kernel.org>; Tue, 28 Oct 2025 23:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.52
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761694555; cv=none; b=reECN6IUEvuxOWzUzLhbSAW/jjCj7TxiXB8N/TlSXdBtNHFvbAHRykfcVTgIHiR8BsW4ZO6Dis8cgEcnkGx/tPCMbQouox6YO27wQqf32AXytVUbI5CKuuIdUb1sMjzAVxSvSk/wzARG8UFuPqEcIlIlCqXkqGsbDZiOG6u+xQ4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761694555; c=relaxed/simple;
	bh=pO3ezBcQxEG3Pj7tMfcTswPOd999jDNlRZTd+tb/its=;
	h=Message-ID:Subject:From:To:Cc:Date:In-Reply-To:References:
	 Content-Type:MIME-Version; b=D3ie3IVCzt+0/E2DyM1gqdi55mFjAUC/Y6dz+l36VXTjpjZKfO/CWs/B1/XpB+hNvlS6VzrgzlYvAJO/zY9tgdtElM9zev2OC5qfVECJ02vwbzxVKxuPYr5AFy7jRRqaK0JSL6mbfQacXZI3zoTphjLCOthf5BDtTSl2wPsb8x4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=kOQPpC/m; arc=none smtp.client-ip=209.85.128.52
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-wm1-f52.google.com with SMTP id 5b1f17b1804b1-47112a73785so41947795e9.3
        for <devicetree@vger.kernel.org>; Tue, 28 Oct 2025 16:35:53 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1761694552; x=1762299352; darn=vger.kernel.org;
        h=mime-version:user-agent:content-transfer-encoding:references
         :in-reply-to:date:cc:to:from:subject:message-id:from:to:cc:subject
         :date:message-id:reply-to;
        bh=pO3ezBcQxEG3Pj7tMfcTswPOd999jDNlRZTd+tb/its=;
        b=kOQPpC/mr/pSZI816b0Fn6HrfxFcQKig9QLpQq/T2i81OBCo/MpEQAmYLFXuicMtVW
         89179mMigsvCEkIvqsiCgs9HLyfudd/Eao4peUhWhaUkCG+GEcbS3qOvaRK+6G4cEGpX
         DovbewDH8zImjk6rpnaz+oA1WRu0TUq3otZlR6rw6rbLG1njtAJEcjWlHzFPblErCNkG
         vQZ+wIZxY5MnLupPhSOBMfunuIccCHDuhD6QaPPyMfa7ykwnewec5Jw9gXPIBjp3piqR
         6fgUgDgxqnuhFMnOtmcfRs8qVwkdEK16rW22EfU+fBRBbN5iQfgZF50LPPoLOx4X2h+M
         QBig==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1761694552; x=1762299352;
        h=mime-version:user-agent:content-transfer-encoding:references
         :in-reply-to:date:cc:to:from:subject:message-id:x-gm-message-state
         :from:to:cc:subject:date:message-id:reply-to;
        bh=pO3ezBcQxEG3Pj7tMfcTswPOd999jDNlRZTd+tb/its=;
        b=QUw7d+kXR+Qpr5//MrRW/3LuXPdkQojgi2r8P1DBmAM21z09eEXMxHGdcuJ5GCAq5C
         AnQ8gdznec6ikhspyiPEf8LzSsX3jhKb4nY1SqK4Io0WhsW5NGNI7Hcq6f0mOi2A81uM
         +J8JRZmueIy2wTva91Xa41brmG+9qFDDQYWCvb520vb+f5y9Se+AOmvfS5bTPfD+V83h
         H5C+K83JPm86dTIm6uBiHloCWTIShn9ayQNe+ceHEWdgnk0n2QqJux6WrlC2BEXqHHQc
         PoaSVmz5VErUddpSCAK6e8Ws4ZkRSiTl7WY0jU2uzay8D9FxK0SmN6Tso3B+wUnFvvAd
         b2RA==
X-Forwarded-Encrypted: i=1; AJvYcCXq5UG5wO272+gMVUATLudb6UQb++fr1eKokJjxhTG7/uqPhoKZet6LbH/0sVTlzuR5O9tbAO7xPwjm@vger.kernel.org
X-Gm-Message-State: AOJu0YwUzkElACuSl52rVJpoNJ3mg7zZ8IC+5g1bBzL5pjavokckQ1sO
	Zfq6JPjDV8/xI0/+M2hSKcbJx0Jjt489LJ04mmxUJymMNX+QJFPZwD1V
X-Gm-Gg: ASbGnctvKnZ8qQ1NqGOgyzX9Rzwc3sCQ1iBrYcy4zjtJcgAU/onbFB+MLVMDkVr0jbv
	AVylD/C1mwsqQo9l9bgQWqx6RVHtBxf1hhl83SdRgUteskc7AR0BYFS2hEW4ASUaBTP85CyuyDx
	hxQ1IGJ289YnJ/yHJJj2GINgBGDkjm6/zGiY9kiDSznk1sxhkPsQVWsyDqYIHIhWF7W96SGlCNj
	CFMTxszCdOBtgWoChQl7GFPQO7HHqCHy3RePKeyj6daurrbw2QPlKoluaRD63Of6vpzbWhpsgpH
	86TV9XsIhLhGUt0tW+U3KCQl1d5UsNsloxaV3WyMG3b66CqGypQPOv2Et1gGXPf8qAYNqJXSLg1
	nAg/poZM/+0skDIDD128cru2rtRMGM3Mg6GXDJhyvFpnY7VfWz+Rs/dBSXlK+1uRE62RWLSIOLl
	nB9XukSIaOmLpYLanXcf+7MLU=
X-Google-Smtp-Source: AGHT+IE+7lavUcbRiUEoBcPcWWhtl2Ye0Lqq0olW9TOJGPDFy5Ml5rtmUhOJt0ianoi/OzmsyK7njA==
X-Received: by 2002:a05:600c:3b1d:b0:475:e007:baf1 with SMTP id 5b1f17b1804b1-4771e3b8626mr10555025e9.34.1761694551467;
        Tue, 28 Oct 2025 16:35:51 -0700 (PDT)
Received: from vitor-nb.Home (bl19-170-125.dsl.telepac.pt. [2.80.170.125])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-4771e196a9asm17054265e9.7.2025.10.28.16.35.48
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 28 Oct 2025 16:35:49 -0700 (PDT)
Message-ID: <f99c528a19fa793035cece3f83b332d7ecafa7da.camel@gmail.com>
Subject: Re: [PATCH v1 1/2] dt-bindings: PCI: ti,j721e-pci-host: Add
 optional regulator supplies
From: Vitor Soares <ivitro@gmail.com>
To: Manivannan Sadhasivam <mani@kernel.org>
Cc: Krzysztof Kozlowski <krzk@kernel.org>, Bjorn Helgaas
 <bhelgaas@google.com>,  Lorenzo Pieralisi <lpieralisi@kernel.org>,
 Krzysztof =?UTF-8?Q?Wilczy=C5=84ski?= <kwilczynski@kernel.org>, Rob Herring
 <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley
 <conor+dt@kernel.org>, Kishon Vijay Abraham I <kishon@kernel.org>, Vitor
 Soares <vitor.soares@toradex.com>, linux-pci@vger.kernel.org, 
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Date: Tue, 28 Oct 2025 23:35:48 +0000
In-Reply-To: <wg2wpwex4vbwwxynk5salk6mbpneww76wfvznn442a2xyqrrck@a7qqqn3hjzcg>
References: <20251014112553.398845-1-ivitro@gmail.com>
	 <20251014112553.398845-2-ivitro@gmail.com>
	 <20251020-kickass-fervent-capybara-9c48a0@kuoka>
	 <2c3e4bdefb306dc89c15bebc549d854ea2b4cc32.camel@gmail.com>
	 <wg2wpwex4vbwwxynk5salk6mbpneww76wfvznn442a2xyqrrck@a7qqqn3hjzcg>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
User-Agent: Evolution 3.44.4-0ubuntu2 
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0

On Tue, 2025-10-28 at 11:11 +0530, Manivannan Sadhasivam wrote:
> On Mon, Oct 27, 2025 at 11:22:26PM +0000, Vitor Soares wrote:
> > Hi Krzysztof,
> >=20
> > Thank you for the feedback.
> >=20
> > On Mon, 2025-10-20 at 13:14 +0200, Krzysztof Kozlowski wrote:
> > > On Tue, Oct 14, 2025 at 12:25:48PM +0100, Vitor Soares wrote:
> > > > From: Vitor Soares <vitor.soares@toradex.com>
> > > >=20
> > > > Add optional regulator supply properties for PCIe endpoints on TI S=
oCs.
> > > > Some boards provide dedicated regulators for PCIe devices, such as
> > > > 1.5V (miniPCIe), 3.3V (common for M.2 or miniPCIe), or 12V
> > > > (for high-power devices). These supplies are now described as optio=
nal
> > > > properties to allow the driver to control endpoint power where
> > > > supported.
> > >=20
> > > Last sentence is completely redundant. Please do not describe DT, we
> > > all can read the patch. Driver is irrelevant here.
> > >=20
> > >=20
> > Ack, I will remove last sentence.
> >=20
> > >=20
> > > How you described here and in descriptions, suggests these are rather
> > > port properties, not the controller.
> >=20
> > You are right - these supplies power the PCIe slot/connector, not the
> > controller
> > itself. However, as per my understanding, the current kernel practice i=
s to
> > place slot supplies in the root complex node rather than the endpoint n=
ode.
> > as
> > seen in e.g.:
> > - imx6q-pcie.yaml
> > - rockchip-dw-pcie.yaml
> > - rcar-pci-host.yaml
> >=20
> > This seems consistent with those existing bindings, but please let me k=
now
> > if
> > I=E2=80=99m overlooking something specific to this case.
> >=20
>=20
> We do not properly document it, but defining the slot supplies in host br=
idge
> (controller) node is deprecated. Some bindings still do it for legacy rea=
sons,
> but the new ones should define them in the Root Port nodes as they belong=
 to.
> We
> do not have a separate DT node for PCI slots, but rather reuse the Root P=
ort
> node.
>=20
> There are also bindings that define supplies in the endpoint node. They d=
o it
> for devices directly connected to the PCI bus without a connector (like i=
n
> PCB).
>=20
> - Mani
>=20

Thanks for the clarification and context. From what I understand, the
recommendation is to define the supply regulators under the individual root=
 port
node rather than in the host bridge (controller) node, as the supplies
conceptually belong to each port rather than the controller itself.

On the j721e PCIe controller, the current driver implementation assumes a s=
ingle
root port and doesn=E2=80=99t parse child port nodes. To follow the new con=
vention, I=E2=80=99d
need to refactor the driver to support root port subnodes, and I wonder if =
the
PHY reference and reset should also be moved to the Root Port node in that =
case.

Could you please point me to an example of a PCIe controller binding or dri=
ver
that already follows this approach?

Best regards,
Vitor Soares

