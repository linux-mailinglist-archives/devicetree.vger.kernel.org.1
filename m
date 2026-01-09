Return-Path: <devicetree+bounces-253200-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 85486D08589
	for <lists+devicetree@lfdr.de>; Fri, 09 Jan 2026 10:53:22 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 86E423007636
	for <lists+devicetree@lfdr.de>; Fri,  9 Jan 2026 09:52:27 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 246D62D6E64;
	Fri,  9 Jan 2026 09:52:27 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="h+v9zXR3"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0098323BF9F
	for <devicetree@vger.kernel.org>; Fri,  9 Jan 2026 09:52:26 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767952347; cv=none; b=rKQ/TKxd8YOnQXCHBHdBCsUL8u7iuOuSEXJQkdcXuzWQ/H+kCUIpkIYc6f62yXXO+ITqPvSivqa+YCQJAKY4yqfBczLS91Aku/uPWWTIpJTofUNYnZmIiVoYZDuJ+uCyhV4+EL4o6V8QX97uvlE3drgfXpyG1mOhS+O6FnHWJ20=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767952347; c=relaxed/simple;
	bh=fQ1tJffQT1qprHD9d7yQZUs66p4r8g3jJv8f9N6H0Jw=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=LYrmAbBk9Y+zkWRUWRLdhBzI35p736tk7lgiGitP5ke9hxIqibv0i+LOuHpcZnl18uWEFsrDnycpp7kEjH1rw9VLkTXw1SRpcxVRrQtBJGsnHJtmWIP87t6O4i/VG52TyXGSqDsiCc1KEUIUPhpZIT2GAVaWBGxg+FuIUguuTys=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=h+v9zXR3; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id A507DC2BCB1
	for <devicetree@vger.kernel.org>; Fri,  9 Jan 2026 09:52:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1767952346;
	bh=fQ1tJffQT1qprHD9d7yQZUs66p4r8g3jJv8f9N6H0Jw=;
	h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
	b=h+v9zXR3HWbP85MwT80vJwaM9+gGJ2B1x1jbzhTJvwbE7JtROxnKqjBzFpB6/Bppb
	 KCnY67jWW5w7iztq15s8GJ3N4TbFJpDSyf6GHSmmsno/4qoy4R/gL3ZQyUSW/AgXi6
	 4klsGdtiDBn8RG/wEkhreeHE2/yNvuwryTCfEFjM/99Sw9iF9M60h0oVhjXyaHXxLA
	 yg79WP6Q1ClZybgSFBigxf2kOuMT72c7uxEFohv26IOSoXF9IuOUVJJLDbX71s55GK
	 Oyd9dbUiztSe+Kyb/QuSVf1uoNZXCg8ENF7292SyYWrr0oNJgNosGNvxn6pZGTedTo
	 1M7xXQm1mm6Hg==
Received: by mail-yx1-f47.google.com with SMTP id 956f58d0204a3-647374e4cccso1052209d50.3
        for <devicetree@vger.kernel.org>; Fri, 09 Jan 2026 01:52:26 -0800 (PST)
X-Forwarded-Encrypted: i=1; AJvYcCWZai/25oHbMQk69Ddsd6+kRCeWoAFhTF0FM2CH3m9WtQGBdV+nvPVffyNGeXil/6FJmhTOHemjwVl3@vger.kernel.org
X-Gm-Message-State: AOJu0YyhasytLj4yu1T39bV0oaOBNR1M6OWakPSNFe4bQa1pNL2vMRFj
	3f/XqhtMxm8DFvb42EAene075zdUAWLHq4CTlxz15MMDtuXXxmUMzV6vPbE8oFBe/9fiufpgQZo
	GyVFS4evUfH+ewFsEs4+fqSZdOCU3knE=
X-Google-Smtp-Source: AGHT+IFl+ErtwuC5vJB7FQDU7XpIoJtBTN3jHxe+AWD5ehVTJ4NoJsDHhflCFGEIV2ALI+7K1MxEBTnysWlIEE1/Is4=
X-Received: by 2002:a05:690e:1882:b0:648:3d3:790a with SMTP id
 956f58d0204a3-64803d381e8mr1065328d50.17.1767952345952; Fri, 09 Jan 2026
 01:52:25 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20260107-mtd-memregion-v3-0-f9fc9107b992@bootlin.com> <20260107-mtd-memregion-v3-3-f9fc9107b992@bootlin.com>
In-Reply-To: <20260107-mtd-memregion-v3-3-f9fc9107b992@bootlin.com>
From: Linus Walleij <linusw@kernel.org>
Date: Fri, 9 Jan 2026 10:52:15 +0100
X-Gmail-Original-Message-ID: <CAD++jLn9RdCPXQQi-7z2Pba2od4n5jSvh_7X-e0fUKWC+dfM-A@mail.gmail.com>
X-Gm-Features: AZwV_Qg5QQFy3AmO1hR3ASLJtvCVyx_cqfPdctjeTMOQ0Cjj3dOpo4MEYroa2cg
Message-ID: <CAD++jLn9RdCPXQQi-7z2Pba2od4n5jSvh_7X-e0fUKWC+dfM-A@mail.gmail.com>
Subject: Re: [PATCH v3 3/4] dt-bindings: mtd: physmap: Allow using
 memory-region to access memory resources
To: Gregory CLEMENT <gregory.clement@bootlin.com>
Cc: Rob Herring <robh@kernel.org>, Linus Walleij <linus.walleij@linaro.org>, 
	Miquel Raynal <miquel.raynal@bootlin.com>, Richard Weinberger <richard@nod.at>, 
	Vignesh Raghavendra <vigneshr@ti.com>, Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Thomas Petazzoni <thomas.petazzoni@bootlin.com>, 
	Vladimir Kondratiev <vladimir.kondratiev@mobileye.com>, 
	=?UTF-8?Q?Beno=C3=AEt_Monin?= <benoit.monin@bootlin.com>, 
	=?UTF-8?B?VGjDqW8gTGVicnVu?= <theo.lebrun@bootlin.com>, 
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
	linux-arm-kernel@lists.infradead.org, linux-mtd@lists.infradead.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hi Gregory,

thanks for your patch!

On Wed, Jan 7, 2026 at 2:05=E2=80=AFPM Gregory CLEMENT
<gregory.clement@bootlin.com> wrote:

> Enable access to memory resources not only via I/O address using reg,
> but also through a portion of main memory using memory-region. To
> achieve this, new compatible strings have been introduced: mtd-mem and
> mtd-memro.
>
> Signed-off-by: Gregory CLEMENT <gregory.clement@bootlin.com>

I have two issues with this patch:

1. It needs a description: telling us when to use this and why, and
what makes it necessary to use these new bindings instead of existing
bindings, like the following:

2. To me this looks suspiciously similar to reserved RAM, "reserved-memory"=
.
Documentation/devicetree/bindings/reserved-memory/phram.yaml
Documentation/devicetree/bindings/nvmem/rmem.yaml
Documentation/devicetree/bindings/reserved-memory/ramoops.yaml

Also see the dtschema reserved-memory:
https://github.com/devicetree-org/dt-schema/blob/main/dtschema/schemas/rese=
rved-memory/reserved-memory.yaml

Why is this using "mtd,*" compatibles? What makes is a
"memory technology device", which is admittedly a loose term but
usually means some kind of persistent memory such as flash. This does
not look persistent at all.

To me it seems more related to specific Linux-lingo around the MTD
subsystem and just happens to be handled inside that subsystem in
Linux. Which means it has nothing to do inside a (OS-neutral) DT binding.

So I'm a bit concerned, but maybe I misunderstood something!

Yours,
Linus Walleij

