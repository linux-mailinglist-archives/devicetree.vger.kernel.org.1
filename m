Return-Path: <devicetree+bounces-242179-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 6B32BC879AA
	for <lists+devicetree@lfdr.de>; Wed, 26 Nov 2025 01:36:37 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id D99E23A4A66
	for <lists+devicetree@lfdr.de>; Wed, 26 Nov 2025 00:36:30 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id EBB7518A6CF;
	Wed, 26 Nov 2025 00:36:24 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b="V6BFJ2yL"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-qt1-f172.google.com (mail-qt1-f172.google.com [209.85.160.172])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3488B61FCE
	for <devicetree@vger.kernel.org>; Wed, 26 Nov 2025 00:36:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.160.172
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764117384; cv=none; b=aIbTQDb6u44udZ2jc+9B8PCloRFKjID/cxPYMRT2I4UFHytw9CASwl+0RBjcWJx+shDKckD58A2EvcUN5LDq9dki746tNB5h9TWsHIk/lfJY4Rs+BULMOlNyjV4wFI4acjS1+RNGmOppdFQfWuBh6ltXc0j9iVAan5Blg7ZV/4g=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764117384; c=relaxed/simple;
	bh=7LudohsYC1oaD5/J7Dbq5dstKtMkG/Ng87rePwFfE88=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=dHNYAhH0UFAMyRIpfJjvjzjPnvRD4QZCJz+pgcfmZ2YQ/PcFANj+FBObhQgUpD1QyQ3r/qx5A6m77yi497GaReXZ57Q21H490zrvrTXMdVNkJSrQiuhMZYMXSskkS61T8sozd2hSWW0+BnT8ueB2fYtJnNjqMo+xv75SpAtaYEc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=chromium.org; spf=pass smtp.mailfrom=google.com; dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b=V6BFJ2yL; arc=none smtp.client-ip=209.85.160.172
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=chromium.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=google.com
Received: by mail-qt1-f172.google.com with SMTP id d75a77b69052e-4ee147baf7bso71321cf.1
        for <devicetree@vger.kernel.org>; Tue, 25 Nov 2025 16:36:22 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google; t=1764117381; x=1764722181; darn=vger.kernel.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=n5PIGTFLdkW4IniYiOexcRvEmMURl8sUXIKPSPYdx5o=;
        b=V6BFJ2yLQgvOaie+sWMEmQIxVQShZ17l8zmCpg1Xftxkr7FLpjyg5UB9hD8+baVo+X
         zHfVCDGSVYqwIFh7Qiw2KWjL98+FODNs/NTGqS7LeX97jbm6IUNyzGKdgSW/DAkslCLj
         CW4O6O+WJ71TcWPKjZK/xV9/tAPY44yHiooBw=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1764117381; x=1764722181;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=n5PIGTFLdkW4IniYiOexcRvEmMURl8sUXIKPSPYdx5o=;
        b=YL2vMaUHflWD271L4lPqRolawEYnWTjzaC1QL7uifuojcn5rds6gZ7HG4NUVNbXwE6
         lDc9OaxuHPBvaqJ/6z/JzEibnvz+AePWn+BhORYT4vRb09yelhWNI01JDBE7QP2YFWUV
         R0pgVZTYWoCrlB/yWoyadRm/IxmE9EgsJygEhbxNhUxAY1YuOZe7qfXplgYf2q1NaU37
         EURTpf3KV1Q87TqwmgVIK4yr80JEQlPm/+dnSrVNw02Xo+eyZui/K4nXIvdNK3XKsD1e
         E1EiHGkJHm1cQVJJlmRvXVilEXi70TekBxjY81wv4FJwNA3gQgRwjYtZ4gehgP5zo6WO
         Y5ew==
X-Forwarded-Encrypted: i=1; AJvYcCU5ydrI16cWrUP2tJkVoyZtxx7J0tzdbgv4g9I31pxnvdRRMd9Wmo94IRFDXFF/PsDOSaRZd60vOk4J@vger.kernel.org
X-Gm-Message-State: AOJu0YwowRn7SOMylnkiaDXDOsrxZdNRKchs5iKWfPfayNE57pYe5XyS
	nWuFJqxwu9KNhVjvMgKnufW841uAq2G7vUmUlSqaC5UHfxXRUySRtANSEJb23l+cuT630vG7UWn
	MjtoTWsoJfa/DKgvXVuvUoCR98newOxjfCJcchPvO
X-Gm-Gg: ASbGncubCvPApPfXY29SNyonU4Br502SfWCWC1S3tq2XU46SUHed9mobZdog6W+zWOs
	eLKFW/GnAnFoVIXaXco+pxkzlT0tMHaNEKaRl23i80zS40pSgsZlq+4c+NR2C+PA26oYVLYlG6I
	lV7rRp42cYEn4C/kwCRE1d+cY35RNgC3uNNszPGcWNzJ6/aaQ+Jtj4MlvweuqP1xxK6VD7zBTr+
	9t8fW0Z/hfz/pxoMCbMxOjpYKhcz9/c42fJlAOPifE9Spw+X6ERPGyQPFAvmApgKkjXdpg=
X-Google-Smtp-Source: AGHT+IGP6oX1F/D2CxJOatUpgvnDhypTahl/TVp41rMeFMAZHUR682n0RVM907rgexwTnBhQMCJvipynTviLMfsb/Ok=
X-Received: by 2002:ac8:580e:0:b0:4b7:a72f:55d9 with SMTP id
 d75a77b69052e-4efc83b0345mr1017551cf.13.1764117380805; Tue, 25 Nov 2025
 16:36:20 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20251125064851.3781993-1-wenst@chromium.org> <20251125-outgoing-boisterous-millipede-6dabaf@kuoka>
 <CAGXv+5FPaJMuN7wCP7g0Rxa0mXD3Ru0rxka=m8B_rv+XUkJPWA@mail.gmail.com> <25ee55eb-91d6-4da2-a798-b704acfae4fe@kernel.org>
In-Reply-To: <25ee55eb-91d6-4da2-a798-b704acfae4fe@kernel.org>
From: Julius Werner <jwerner@chromium.org>
Date: Tue, 25 Nov 2025 16:36:07 -0800
X-Gm-Features: AWmQ_bkYsZKnR0Rl94iSzfQ_dAjBcO2VNFs_DTYgpRBgQH_dr4_09XaXBAvsBPc
Message-ID: <CAODwPW_LfeC7UFnDMxJFfKCFBoGBvu2O6S=otD0Sj7ssOSJVgw@mail.gmail.com>
Subject: Re: [PATCH] dt-bindings: firmware: coreboot: Convert to YAML
To: Krzysztof Kozlowski <krzk@kernel.org>
Cc: Chen-Yu Tsai <wenst@chromium.org>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, devicetree@vger.kernel.org, 
	chrome-platform@lists.linux.dev, Julius Werner <jwerner@chromium.org>, 
	linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"

> >>> +title: COREBOOT firmware information
> >>
> >> Coreboot
> >
> > OK. Side note, coreboot is stylized in all lowercase letters.
> > Should I follow that or just use standard English rules?
>
> Just choose one. Here was capitals, but in description not. Preferably
> Coreboot or coreboot

coreboot should always be written all lowercase, even at the start of
a sentence (i.e. "...bookkeeping structures to the kernel. coreboot's
FIT image payload can insert..."). Not sure why I wrote it in caps in
the heading here, that was never really correct, not even back then.

> >>> +  The device tree node to communicate the location of coreboot's
> >>> +  memory-resident bookkeeping structures to the kernel. Coreboot's
> >>> +  FIT image payload can insert the node into the device tree. If a

nit: Not really sure what "coreboot's FIT image payload" is supposed
to be? Do you mean "coreboot's FIT image code"? (The file is just
called fit_payload.c because the FIT image takes the place of the
usual coreboot payload, but the code that does the device tree
stitching itself is still coreboot proper.) To make the point you're
trying to make here, why not just say: "This node may be inserted
either by coreboot itself or by a second-stage bootloader (a coreboot
"payload"), depending on where the kernel device tree is finalized."

> >>> +        /* Firmware actually emits "coreboot" node without unit name */
> >>> +        coreboot@fdfea000 {
> >>> +            compatible = "coreboot";
> >>> +            reg = <0xfdfea000 0x264>, <0xfdfea000 0x16000>;
> >>
> >> That's the same address in both places, so the same one entry. You need
> >> two distinctive addresses or binding needs changes to have only one item
> >> as well.
> >
> > The description does mention that the latter block can include the
> > former. It's really up to the firmware. If you like I can include
> > two examples to cover both cases.
>
> Lovely, I don't think we should accept growing this binding at all until
> coreboot fixes this mess (duplicated entry and missing unit address).

As Chen-Yu said, the second region usually contains the first. It is
possible (in fact tends to be common on many platforms, because the
coreboot table is often the last region added to the downward-growing
CBMEM) for the start addresses to match. That is not an error or a
"duplicate", they're still describing two different things.

We can start adding the @<address> part if you want but it hasn't
really been relevant in practice since there will always be only one
coreboot in the system anyway. As far as I understand, node names are
just informational in the device tree and the compatible string is
what identifies the actual binding. Since bootloaders on older
platforms often don't get updated, it is probably still a good idea to
 mention that in a comment like Chen-Yu did here even if we change it.

