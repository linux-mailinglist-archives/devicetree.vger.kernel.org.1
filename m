Return-Path: <devicetree+bounces-52787-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id BC3F18898C9
	for <lists+devicetree@lfdr.de>; Mon, 25 Mar 2024 10:50:35 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 6E7A82A83A2
	for <lists+devicetree@lfdr.de>; Mon, 25 Mar 2024 09:50:34 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C07F5127B77;
	Mon, 25 Mar 2024 05:12:07 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b="jZtDyWln"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-qv1-f50.google.com (mail-qv1-f50.google.com [209.85.219.50])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C21941292F6
	for <devicetree@vger.kernel.org>; Mon, 25 Mar 2024 01:26:09 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.219.50
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1711329972; cv=none; b=ogModiRxMASj958ZRXDDWr7GuYtN0x3GRQUXiEfaq9oiooKefTh/v3qcMvdRwdREf3jkg1Z6dR9X3vevnUuFEIZf35VLKDA0syTDzldWYi6wRAwA4RY1++LfIuZoTA5EAUcBQ16pF0fvhRwXFZiG1gwNL8Of5momZcByei9m7IA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1711329972; c=relaxed/simple;
	bh=TkNgras5ZUpGkbxWjPcva7sUuxVdARVYD58kLBCBPgU=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=DaKGgw2Kcz1NqN8CbkFGlmhyALzjiLbh+ZwbbwOMffVbdZUOVk964DbVNL3XGoLJXyKRfbHx0kbLTz2m/0pJFc85UtTxbK6TpzokVLb23s0bI6MIumYL/Sbr11CnSprYLYOarhp3S8gDr4w1HJXhwCzwWkqbFytEXvhQ0C8z38M=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=chromium.org; spf=pass smtp.mailfrom=chromium.org; dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b=jZtDyWln; arc=none smtp.client-ip=209.85.219.50
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=chromium.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=chromium.org
Received: by mail-qv1-f50.google.com with SMTP id 6a1803df08f44-6968a5d1b47so4331496d6.1
        for <devicetree@vger.kernel.org>; Sun, 24 Mar 2024 18:26:09 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google; t=1711329969; x=1711934769; darn=vger.kernel.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=Y0Dbx4/AQEaK3b87iVLlgcHWjdXiKW8/SKBtYSvJ4l8=;
        b=jZtDyWlnLVFhljDgXn57ijKmJOY8U7jwzYweh8AoMPEAKBpiqplKxUPA4XSGABxpn2
         wYej31r7gngsrvHP/vY2z6UWuYiWEMsyGehYMN4WC4upfMqyBrkjDIflumiV0q0dhMRQ
         69GV4Cd+Tzyr4r0ZMPuY6W8BHOT/pngFwwU+s=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1711329969; x=1711934769;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=Y0Dbx4/AQEaK3b87iVLlgcHWjdXiKW8/SKBtYSvJ4l8=;
        b=n+fe6IqGKS8iM0Y9ukX3Yf/5cj4wXawsJF2jGw6uXo5xjMnk/5eGDykbuASAanpfpT
         y8VOXyGn1bHKZNFEgiAfYvJsFbkZtmG9NkJcNtKtcO8Vome0FOq8rjRZRcYkWL3NnkDj
         2EClopg7lDnmaK0ZknDIF2SEsEhi5AJog+3bjhD+V/ytc32ob3mNnso+oeasSgpwhi1k
         9lEXBLo8J+hGtzEUSWSL/OTOrtaCixXg4rj83Wvwrp1dSiAxtvk3SuiD2a1QEoG4RRND
         wEV9Db+SA8bXK2U7zsNSNKvo84hOSj+pO014SgMEARnZena/wh8efDwdLfr9zAWeZE6R
         XBVQ==
X-Gm-Message-State: AOJu0Yzo9PjfemMrMeD4LWT7pSlN+8dq7OQ/SOLNYXopN/X2uLty7s9k
	852nIk7BXT+2lX/pyYgt+07RFNMVOHX+eKf8iDV+rcuDGB0bSsdyv3J5XH6EnBpUrSTczCVDDjn
	9K+9bS5Yf+4EliXxsSjMkLXMD9oAtdu6pE+Ao
X-Google-Smtp-Source: AGHT+IF8k6IEgNL4Ml3wABhG3s1RLLEjzUk0aITApXvBMpCMHfkjVmDSrsKoCpsIrVx5U2+VbKSHOEy12MRmxPAYxkg=
X-Received: by 2002:a05:6214:410:b0:690:a576:2a2c with SMTP id
 z16-20020a056214041000b00690a5762a2cmr6745531qvx.32.1711329968724; Sun, 24
 Mar 2024 18:26:08 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20240320052449.175786-1-sjg@chromium.org> <20240320052449.175786-2-sjg@chromium.org>
 <20240321134917.GA1625959-robh@kernel.org>
In-Reply-To: <20240321134917.GA1625959-robh@kernel.org>
From: Simon Glass <sjg@chromium.org>
Date: Mon, 25 Mar 2024 14:25:57 +1300
Message-ID: <CAFLszThbC7PDnJk8pXS2bNN9ebntoOJ-7xxkFU_LCm4Jg-km4w@mail.gmail.com>
Subject: Re: [PATCH v9 2/2] dt-bindings: mtd: fixed-partition: Add binman compatibles
To: Rob Herring <robh@kernel.org>
Cc: devicetree@vger.kernel.org, linux-mtd@lists.infradead.org, 
	Michael Walle <mwalle@kernel.org>, Miquel Raynal <miquel.raynal@bootlin.com>, 
	Conor Dooley <conor+dt@kernel.org>, 
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, =?UTF-8?B?UmFmYcWCIE1pxYJlY2tp?= <rafal@milecki.pl>, 
	Richard Weinberger <richard@nod.at>, Vignesh Raghavendra <vigneshr@ti.com>, linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"

Hi Rob,

On Fri, 22 Mar 2024 at 02:49, Rob Herring <robh@kernel.org> wrote:
>
> On Wed, Mar 20, 2024 at 06:24:49PM +1300, Simon Glass wrote:
> > Add two compatibles for binman entries, as a starting point for the
> > schema.
> >
> > Note that, after discussion on v2, we decided to keep the existing
> > meaning of label so as not to require changes to existing userspace
> > software when moving to use binman nodes to specify the firmware
> > layout.
> >
> > Note also that, after discussion on v6, we decided to use the same
> > 'fixed-partition' schema for the binman features, so this version
> > adds a new 'binman.yaml' file providing the new compatibles to the
> > existing partition.yaml binding.
> >
> > Signed-off-by: Simon Glass <sjg@chromium.org>
> > ---
> >
> > (no changes since v8)
> >
> > Changes in v8:
> > - Switch the patch ordering so the partition change comes first
> >
> > Changes in v7:
> > - Adjust MAINTAINERS entry
> > - Put compatible strings into the 'fixed-partition' binding
> >
> > Changes in v5:
> > - Add mention of why 'binman' is the vendor
> > - Drop  'select: false'
> > - Tidy up the compatible setings
> > - Use 'tfa-bl31' instead of 'atf-bl31'
> >
> > Changes in v4:
> > - Correct selection of multiple compatible strings
> >
> > Changes in v3:
> > - Drop fixed-partitions from the example
> > - Use compatible instead of label
> >
> > Changes in v2:
> > - Use plain partition@xxx for the node name
> >
> >  .../bindings/mtd/partitions/binman.yaml       | 49 +++++++++++++++++++
> >  .../bindings/mtd/partitions/partition.yaml    | 21 ++++++++
> >  MAINTAINERS                                   |  5 ++
> >  3 files changed, 75 insertions(+)
> >  create mode 100644 Documentation/devicetree/bindings/mtd/partitions/binman.yaml
> >
> > diff --git a/Documentation/devicetree/bindings/mtd/partitions/binman.yaml b/Documentation/devicetree/bindings/mtd/partitions/binman.yaml
> > new file mode 100644
> > index 000000000000..83417ad5cee9
> > --- /dev/null
> > +++ b/Documentation/devicetree/bindings/mtd/partitions/binman.yaml
> > @@ -0,0 +1,49 @@
> > +# SPDX-License-Identifier: GPL-2.0-only OR BSD-2-Clause
> > +%YAML 1.2
> > +---
> > +$id: http://devicetree.org/schemas/mtd/partitions/binman.yaml#
> > +$schema: http://devicetree.org/meta-schemas/core.yaml#
> > +
> > +title: Binman entries
> > +
> > +description: |
> > +  TBD
>
> ?

Oh yes, I forgot to put that back when I reworked all these again.

>
> > +
> > +maintainers:
> > +  - Simon Glass <sjg@chromium.org>
> > +
> > +allOf:
> > +  - $ref: /schemas/mtd/partitions/partition.yaml#
> > +
> > +properties:
> > +  compatible:
> > +    enum:
> > +      - binman,entry # generic binman entry
>
> As-is, 'binman' would need to be added to vendor-prefixes.yaml.
>
> However, I think just 'binman' would provide just as much information.
> But really, does it provide anything? What would be the difference
> between this and no compatible?

In Binman this is the base class ('entry') for all entry types that it
understands. I don't expect we would actually use this since it does
not define what the contents are.

So I can remove this line.

Regards,
Simon

