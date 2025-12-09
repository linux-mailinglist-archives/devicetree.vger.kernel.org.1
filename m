Return-Path: <devicetree+bounces-245432-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [IPv6:2600:3c04:e001:36c::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 087CDCB0D4D
	for <lists+devicetree@lfdr.de>; Tue, 09 Dec 2025 19:24:46 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id CD0E4302015D
	for <lists+devicetree@lfdr.de>; Tue,  9 Dec 2025 18:24:39 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 44F022FFFAB;
	Tue,  9 Dec 2025 18:24:38 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=suse.com header.i=@suse.com header.b="ZLtQ2KTq"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ed1-f45.google.com (mail-ed1-f45.google.com [209.85.208.45])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EEA302F7ACA
	for <devicetree@vger.kernel.org>; Tue,  9 Dec 2025 18:24:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.45
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765304678; cv=none; b=c+tcxwCY14YHmiUxzJ8dMz3ZiVy8FXfJ6Fda2ZzLB45F+hxD+Ffk6gM853urJ3LieebQbTk3PIIEbW3iCA4ekLRf4kHOEqQ/3p9wIkqnrIhRCaJtKFwhlethc6lLDjj5YUWrBL5UyWgbUeJZmh511t1mc2kN6HVn81WMSZQMBdc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765304678; c=relaxed/simple;
	bh=vKXAWj1BRX+cvwuBQcrdliPb/fMf3xT0HtcAQ59wNAI=;
	h=From:Date:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=ELMS/ABSC3BBfOD69FKM328Su07xazzRXN6pj8B3ax1lOGqB5Y9Ye5/Pnjo6woG6FOYRDTYuG0hcgLcVMMwDOuwKaz102fzAE1kmVYe8KqbgBQOtzBbiVFTrTeim3qG7E201YbHY2mo60VlAWVPtA2wlBqLIsF2QLj9fUgGfcAI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=suse.com; spf=pass smtp.mailfrom=suse.com; dkim=pass (2048-bit key) header.d=suse.com header.i=@suse.com header.b=ZLtQ2KTq; arc=none smtp.client-ip=209.85.208.45
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=suse.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=suse.com
Received: by mail-ed1-f45.google.com with SMTP id 4fb4d7f45d1cf-64175dfc338so10219949a12.0
        for <devicetree@vger.kernel.org>; Tue, 09 Dec 2025 10:24:34 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=suse.com; s=google; t=1765304673; x=1765909473; darn=vger.kernel.org;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:date:from:from:to
         :cc:subject:date:message-id:reply-to;
        bh=14bMkS32vyjuNUJxn1KJXFpEDIMf9iTp0dr+ymIdyrI=;
        b=ZLtQ2KTqGKa4aTgBsRfKL896XYUik4SzkPbA9z7HGAljrPj6EbeHt2iAZT1Kffae6p
         wuzTFJpiVsh70LbqjvJv/lYAKT5YrtWHelp14bLW+jHvxEyWbWRs1lxnq3/wkMk8FFNw
         QMzz5XcQRI0kTfOvHBE6SjkNaRTJrn1yEJhmpGzEvjNrPV+5QVHoTrfIlDkdecFQwJzk
         3E6KVXdGIBJ6wEZRV3h4LUopfoikCudTdoLH4glWspi4z6yue/X9lAVmi0rm0IVmQegy
         IT5Zr+Bs7E7GzKizEinQXSrGnDXCN8UPQ1qlAWjpR0eeuIqHA8xcJlewDVBABP+O2iP/
         8Quw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1765304673; x=1765909473;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:date:from:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=14bMkS32vyjuNUJxn1KJXFpEDIMf9iTp0dr+ymIdyrI=;
        b=WQ5q4Qs3r3/FykQAPg/G0Ngn3Y5V/swTadjWVcJ9PMgQyJcLaHz1q6TEqiphM/Vujd
         m4ly6sycwZkrTNw8WaHovGHU4/WYa716+r9V4aUbIiBtbfaIdgDuUodAYI3E5oDWtn9q
         +fofOymEbmTDgAocDhY2tzwt6FB6Lw0Rz1ZgxPmwsVn4EjkKiCPILyA0eg3FtfvDAMlX
         +WMSYKFB9Al7emomkvf3VcFqGB1937cFggPeAVrHn/tfwOrVF/SVfD6h8t73lJAKj89G
         cs9rNb3ncCruB1NYYRTlb+RkSCEftCKsUD9f9CHMJktQ0dLEsD0OQj8ZtVyyvpwDTgSh
         2tzA==
X-Forwarded-Encrypted: i=1; AJvYcCW1BRDFD/gQtxxrmNP0m6oqwU43elpQNQt9TsIahrHGWPybSrkdl/3FQOClG/jKN5PXrmvMGvaLqsUn@vger.kernel.org
X-Gm-Message-State: AOJu0YxOq4yU1JL9OTeRyOOw4pw9+AVtzF22kBV+vkuKFxIVkOQqVwZL
	dGjdr/lFw6MIk3Qt0XJR76juYPAVaJo5LP940n6rHlOU7f9uE2GBFEezXXZsLh7EuPk=
X-Gm-Gg: ASbGncu1602b33sukrRlK1PqYsXHjJ3NpoaPxBvJ8mNHJJ4PpJeRPhiRag+fJpYAy+X
	3fmSh1U1Z6swnV+jXrz32Tmi0iIKHkoVBP9+2RyFrb6q8z2rAbKUoPhIZUVgDTOmZUNeRvUeGEs
	DsRhSVRpkDKjaxoSURloQv+djVjYw2BTyu34Bw4pOB3Rj/Kjr2/2GcmBfbkaBSzz/mQNNQyHa6o
	ZVyiUbYXcCaWBtraXD/TZmP3gsO0NLjIuCTTNXh0IBCQIOVbBp2KI2GhEvAVJRPj7hZ6+wEMSm5
	HCajxBbTqJ9sgmFtSrlScoYkm8LoFUlucmTbHcT95RP84M/H92WliVtQExlKWzg+Gka8rBRll0W
	dtU7IrhnwaNY8NjZGvRgVMSB1Hth+J0HAMKzpEdJKzMMJgexbBk4mWWh4AHeRPRRYVosWmLTz2J
	Zef1FuAq82JGILB3+HgibWWusMTnMAAYe4Un9KVTHadq6ADT+zxm5O7Q==
X-Google-Smtp-Source: AGHT+IFzN6N/sbq1uXmJgOqn3EBMakM832XtgAIi34Rg4eem35Dwu+XnW2vFIsPQPbpEjRXtdwmGXQ==
X-Received: by 2002:a05:6402:524b:b0:647:99fb:1e18 with SMTP id 4fb4d7f45d1cf-64919c1e989mr9536089a12.8.1765304673192;
        Tue, 09 Dec 2025 10:24:33 -0800 (PST)
Received: from localhost (host-87-6-211-245.retail.telecomitalia.it. [87.6.211.245])
        by smtp.gmail.com with ESMTPSA id 4fb4d7f45d1cf-647b412146bsm14413161a12.23.2025.12.09.10.24.32
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 09 Dec 2025 10:24:32 -0800 (PST)
From: Andrea della Porta <andrea.porta@suse.com>
X-Google-Original-From: Andrea della Porta <aporta@suse.de>
Date: Tue, 9 Dec 2025 19:27:03 +0100
To: Andrea della Porta <andrea.porta@suse.com>
Cc: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk@kernel.org>,
	Jim Quinlan <jim2101024@gmail.com>,
	Florian Fainelli <florian.fainelli@broadcom.com>,
	Broadcom internal kernel review list <bcm-kernel-feedback-list@broadcom.com>,
	Bjorn Helgaas <bhelgaas@google.com>,
	Lorenzo Pieralisi <lpieralisi@kernel.org>, kwilczynski@kernel.org,
	Manivannan Sadhasivam <mani@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>, linux-pci@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rpi-kernel@lists.infradead.org, devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org, iivanov@suse.de, svarbanov@suse.de,
	mbrugger@suse.com, Jonathan Bell <jonathan@raspberrypi.com>,
	Phil Elwell <phil@raspberrypi.com>,
	kernel test robot <lkp@intel.com>,
	Herve Codina <herve.codina@bootlin.com>
Subject: Re: [PATCH] dt-bindings: pci: brcmstb: Add rp1-nexus node to fix DTC
 warning
Message-ID: <aThp99OfgAfNFUX-@apocalypse>
References: <20250812085037.13517-1-andrea.porta@suse.com>
 <4fee3870-f9d5-48e3-a5be-6df581d3e296@kernel.org>
 <aKc5nMT1xXpY03ip@apocalypse>
 <e7875f70-2b79-48e0-a63b-caf6f1fd287b@kernel.org>
 <aLVePQRfU4IB1zK8@apocalypse>
 <CAL_JsqJUzB71QdMcxJtNZ7raoPcK+SfTh7EVzGmk=syo8xLKQw@mail.gmail.com>
 <aThjYt3ux0U-9-3A@apocalypse>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <aThjYt3ux0U-9-3A@apocalypse>

[+cc Herve]

On 18:58 Tue 09 Dec     , Andrea della Porta wrote:
> Hi Rob,
> 
> On 11:09 Thu 04 Dec     , Rob Herring wrote:
> > On Mon, Sep 1, 2025 at 3:48 AM Andrea della Porta <andrea.porta@suse.com> wrote:
> > >
> > > Hi Krzysztof,
> > >
> > > On 08:50 Fri 22 Aug     , Krzysztof Kozlowski wrote:
> > > > On 21/08/2025 17:22, Andrea della Porta wrote:
> > > > > Hi Krzysztof,
> > > > >
> > > > > On 10:55 Tue 12 Aug     , Krzysztof Kozlowski wrote:
> > > > >> On 12/08/2025 10:50, Andrea della Porta wrote:
> > > > >>> The devicetree compiler is complaining as follows:
> > > > >>>
> > > > >>> arch/arm64/boot/dts/broadcom/rp1-nexus.dtsi:3.11-14.3: Warning (unit_address_vs_reg): /axi/pcie@1000120000/rp1_nexus: node has a reg or ranges property, but no unit name
> > > > >>> /home/andrea/linux-torvalds/arch/arm64/boot/dts/broadcom/bcm2712-rpi-5-b.dtb: pcie@1000120000: Unevaluated properties are not allowed ('rp1_nexus' was unexpected)
> > > > >>
> > > > >> Please trim the paths.
> > > > >
> > > > > Ack.
> > > > >
> > > > >>
> > > > >>>
> > > > >>> Add the optional node that fix this to the DT binding.
> > > > >>>
> > > > >>> Reported-by: kernel test robot <lkp@intel.com>
> > > > >>> Closes: https://lore.kernel.org/oe-kbuild-all/202506041952.baJDYBT4-lkp@intel.com/
> > > > >>> Signed-off-by: Andrea della Porta <andrea.porta@suse.com>
> > > > >>> ---
> > > > >>>  Documentation/devicetree/bindings/pci/brcm,stb-pcie.yaml | 9 +++++++++
> > > > >>>  1 file changed, 9 insertions(+)
> > > > >>>
> > > > >>> diff --git a/Documentation/devicetree/bindings/pci/brcm,stb-pcie.yaml b/Documentation/devicetree/bindings/pci/brcm,stb-pcie.yaml
> > > > >>> index 812ef5957cfc..7d8ba920b652 100644
> > > > >>> --- a/Documentation/devicetree/bindings/pci/brcm,stb-pcie.yaml
> > > > >>> +++ b/Documentation/devicetree/bindings/pci/brcm,stb-pcie.yaml
> > > > >>> @@ -126,6 +126,15 @@ required:
> > > > >>>  allOf:
> > > > >>>    - $ref: /schemas/pci/pci-host-bridge.yaml#
> > > > >>>    - $ref: /schemas/interrupt-controller/msi-controller.yaml#
> > > > >>> +  - if:
> > > > >>> +      properties:
> > > > >>> +        compatible:
> > > > >>> +          contains:
> > > > >>> +            const: brcm,bcm2712-pcie
> > > > >>> +    then:
> > > > >>> +      properties:
> > > > >>> +        rp1_nexus:
> > > > >>
> > > > >> No, you cannot document post-factum... This does not follow DTS coding
> > > > >> style.
> > > > >
> > > > > I think I didn't catch what you mean here: would that mean that
> > > > > we cannot resolve that warning since we cannot add anything to the
> > > > > binding?
> > > >
> > > > I meant, you cannot use a warning from the code you recently introduced
> > > > as a reason to use incorrect style.
> > > >
> > > > Fixing warning is of course fine and correct, but for the code recently
> > > > introduced and which bypassed ABI review it is basically like new review
> > > > of new ABI.
> > > >
> > > > This needs standard review practice, so you need to document WHY you
> > > > need such node. Warning is not the reason here why you are doing. If
> > > > this was part of original patchset, like it should have been, you would
> > > > not use some imaginary warning as reason, right?
> > > >
> > > > So provide reason why you need here this dedicated child, what is that
> > > > child representing.
> > >
> > > Ack.
> > >
> > > >
> > > > Otherwise I can suggest: drop the child and DTSO, this also solves the
> > > > warning...
> > >
> > > This would not fix the issue: it's the non overlay that needs the specific
> > > node. But I got the point, and we have a solution for that (see below).
> > >
> > > >
> > > > >
> > > > > Regarding rp1_nexus, you're right I guess it should be
> > > > > rp1-nexus as per DTS coding style.
> > > > >
> > > > >>
> > > > >> Also:
> > > > >>
> > > > >> Node names should be generic. See also an explanation and list of
> > > > >> examples (not exhaustive) in DT specification:
> > > > >> https://devicetree-specification.readthedocs.io/en/latest/chapter2-devicetree-basics.html#generic-names-recommendation
> > > > >
> > > > > In this case it could be difficult: we need to search for a DT node
> > > >
> > > > Search like in driver? That's wrong, you should be searching by compatible.
> > >
> > > Thanks for the hint. Searching by compatble is the solution.
> > 
> > No, it is not.
> 
> This is partly true, indeed. On one side there's the need to avoid a
> specific node name ('rp1_nexus'), so the only other unique identifier would
> be the compatible string ('pci1de4,1' in this case, which identifies that specific
> device). Unfortunately, the same compatible string is also assigned to the pci
> endpoint node filled automatically by enabling CONFIG_PCI_DYNAMIC_OF_NODES.
> We would end up with two nodes with the same compatible, which is not unique
> anymore. 
> This applies only when using 'full' dtb (bcm2712-rpi-5-b.dtb) *and* you enable
> CONFIG_PCI_DYNAMIC_OF_NODES, the latter being not necessary since the overlay dtb
> (...-ovl-rp1.dtb) is not in use here. To overcome this problem, the solutions
> I can think of are the following:
> 
> 1- Just disable CONFIG_PCI_DYNAMIC_OF_NODES should work, but only when using the
>    full dtb version. However, if the user enable that option for debug or to use
>    the overlay dtb version, he better be sure not to use teh full dtb or it won't
>    work.
>    This solution seems really weak.
> 
> 2- Add another compatible string other than 'pci1de4,1', so it will be really
>    unique.
> 
> > 
> > > >
> > > > > starting from the DT root and using generic names like pci@0,0 or
> > > > > dev@0,0 could possibly led to conflicts with other peripherals.
> > > > > That's why I chose a specific name.
> > > >
> > > > Dunno, depends what can be there, but you do not get a specific
> > > > (non-generic) device node name for a generic PCI device or endpoint.
> > >
> > > I would use 'port' instead of rp1-nexus. Would it work for you?
> > 
> > Do you still plan to fix this? This is broken far worse than just the node name.
> 
> Yes, if we want to get rid of that nasty warning and comply with DT guidelines,
> I think I really need to fix that.
> 
> > 
> > The 'rp1_nexus' node is applied to the PCI host bridge. That's wrong
> > unless this is PCI rather than PCIe. There's the root port device in
> > between.
> > 
> > The clue that things are wrong are start in the driver here:
> > 
> > rp1_node = of_find_node_by_name(NULL, "rp1_nexus");
> > if (!rp1_node) {
> >   rp1_node = dev_of_node(dev);
> >   skip_ovl = false;
> > }
> > 
> > You should not need to do this nor care what the node name is. The PCI
> > core should have populated pdev->dev.of_node for you. If not, your DT
> > is wrong. Turn on CONFIG_PCI_DYNAMIC_OF_NODES and look at the
> > resulting PCI nodes. They should also match what the hierarchy looks
> > like with lspci. I don't recommend you rely on
> > CONFIG_PCI_DYNAMIC_OF_NODES, but statically populate the nodes in the
> > DT. First, CONFIG_PCI_DYNAMIC_OF_NODES is an under development thing
> > and I hope to get rid of the config option. Second, your case is
> > static (i.e. not a PCIe card in a slot) so there is no issue
> > hardcoding the DT.

Are you planning to get rid of the CONFIG_PCI_DYNAMIC_OF_NODES features?
There could be other drivers relying on that besides RP1 in overlay mode,
e.g. LAN966x for instance.

Thanks,
Andrea

> 
> The 'full' dtb (bcm2712-rpi-5-b.dtb) is indeed statically populated.
> CONFIG_PCI_DYNAMIC_OF_NODES is needed only if you use the overlay approach
> (bcm2712-rpi-5-b-ovl-rp1.dtb) and in that case the node will be
> added to the correct device node at runtime, and there won't be any node
> labeled as rp1_nexus.
> That conditional just check for teh presence of the rp1_nexus node to
> choose if the overlay should be loaded at runtime (if rp1_nexus is present,
> then we are in the static case so no overlay need to be loaded).
> 
> > 
> > As far as the node name, I don't care so much as long as the driver
> > doesn't care and you don't use '_' or 'pcie?' (that's for PCI
> > bridges).
> > 
> > And why do we have drivers/misc/rp1/rp1-pci.dtso and a .dtso in
> > arch/arm64? There should not be both.
> 
> drivers/misc/rp1/rp1-pci.dtso is just a wrapper over rp1-common.dtsi,
> which is to be compiled in as binary blob in the driver and loaded at
> runtime.
> rp1.dtbo is optional, it's there just for completeness in case anyone want
> to load teh overlay from the fw, as explained here:
> https://lore.kernel.org/all/ab9ab3536baf5fdf6016f2a01044f00034189291.1742418429.git.andrea.porta@suse.com/
> If it causes confusion, we can probably get rid of it with no penalty.
> 
> Many thanks,
> Andrea
> 
> > 
> > Rob

