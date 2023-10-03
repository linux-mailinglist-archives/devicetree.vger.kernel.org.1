Return-Path: <devicetree+bounces-5606-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 1F7067B6D2F
	for <lists+devicetree@lfdr.de>; Tue,  3 Oct 2023 17:32:03 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sv.mirrors.kernel.org (Postfix) with ESMTP id C60942813DF
	for <lists+devicetree@lfdr.de>; Tue,  3 Oct 2023 15:32:01 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 59A6C36AE7;
	Tue,  3 Oct 2023 15:32:00 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B5AE0219FB
	for <devicetree@vger.kernel.org>; Tue,  3 Oct 2023 15:31:58 +0000 (UTC)
Received: from mail-pl1-x62d.google.com (mail-pl1-x62d.google.com [IPv6:2607:f8b0:4864:20::62d])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 5ADA995
	for <devicetree@vger.kernel.org>; Tue,  3 Oct 2023 08:31:56 -0700 (PDT)
Received: by mail-pl1-x62d.google.com with SMTP id d9443c01a7336-1c5cd27b1acso7987635ad.2
        for <devicetree@vger.kernel.org>; Tue, 03 Oct 2023 08:31:56 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1696347116; x=1696951916; darn=vger.kernel.org;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:from:to
         :cc:subject:date:message-id:reply-to;
        bh=JgFH5NwUbK2OgByiHoMyi+OT+Yz0b1HGMb3DRsXt+P8=;
        b=k9GExHJ8KA+O7WjHjgirNL4ogEMuhlfmIbIzVZwHpuuQyEqlydJdGr17aFzixfsIge
         ltA1wp4Y/alKlBV6955HHILXDUtnHf1H+iXnLnpXhIDBW9SqIs+JHUezfkJoVh8vTswc
         TjGkpLgqnxRPT+Ed1Y+56xSguaaGDpvBTSl54wRmXBKl8wXQsKoKB6BLxnc4R1JnC9Nb
         zf3JXGShbSBSalJR3gdTfVZIoAez+2aBAQEGm4rmMYio6xrjyk+z8+YCiCLx3kKGo9AC
         7AIukSX+xr0SG66HtO2jBaLJ9iyxjj9D1Yw53//lUGme0/97f5qqwSKhS+gRY72UgPKY
         k+lg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1696347116; x=1696951916;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=JgFH5NwUbK2OgByiHoMyi+OT+Yz0b1HGMb3DRsXt+P8=;
        b=UU39DVQtNisWNBpLnvSU9EZKaUMxK6wL6nnUSkRMcJQ1NDFCcGxZOUtb2SYbDyg9fJ
         /M09LsReVwGUSbtjrKpCylgB7IYL58Ni/PkiLC1bT2Zf4o/6uu/1/DCgUYfvuueoa8m9
         87a/zztUAS0SlP1v2pIFG3g+qXTbOkWwmOaZpzn1Ri77bTlxLoVvNAPnYwlhGRhY7COV
         RNAfLQ1wKjHA6Q9vETxVZUzerugFnC0n+JEZJ+/4CXsFgeQ8stvJZeU0kof+YuYy5AMR
         l3kxOP7UjYJHQaPsP//NGjCbOgAxK6qvcMy+/N+0HCDP6aIg+Uj2uyiW+cW6lGA36OC5
         7Asg==
X-Gm-Message-State: AOJu0YzfmqQfa+hK3EMc0/Q3omMgNGWtQytGxIcT2khy710kKQFWxnfp
	+W9mWjDBQ/HQxyOR5HA9YxBYXA==
X-Google-Smtp-Source: AGHT+IGRMumZcYP3SEvpyIBqb+ovY7V32/oSPiJp/UAs9NUXij2bg+Ae3yZfLAYx5xIqISFrS7vg1A==
X-Received: by 2002:a17:902:7246:b0:1c5:df3f:89e5 with SMTP id c6-20020a170902724600b001c5df3f89e5mr14987462pll.62.1696347115702;
        Tue, 03 Oct 2023 08:31:55 -0700 (PDT)
Received: from p14s ([2604:3d09:148c:c800:9379:e1e1:dd3c:a271])
        by smtp.gmail.com with ESMTPSA id h11-20020a170902680b00b001c3e732b8dbsm1736267plk.168.2023.10.03.08.31.54
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 03 Oct 2023 08:31:55 -0700 (PDT)
Date: Tue, 3 Oct 2023 09:31:53 -0600
From: Mathieu Poirier <mathieu.poirier@linaro.org>
To: Tanmay Shah <tanmay.shah@amd.com>
Cc: andersson@kernel.org, robh+dt@kernel.org,
	krzysztof.kozlowski+dt@linaro.org, michal.simek@amd.com,
	radhey.shyam.pandey@amd.com, ben.levinsky@amd.com,
	linux-remoteproc@vger.kernel.org, devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org
Subject: Re: [PATCH v5 2/4] dts: zynqmp: add properties for TCM in remoteproc
Message-ID: <ZRwz6cEqnnwoVhTD@p14s>
References: <20230928155900.3987103-1-tanmay.shah@amd.com>
 <20230928155900.3987103-3-tanmay.shah@amd.com>
 <ZRrn5Gj1qvKMBNmx@p14s>
 <dd0e02bc-38ba-441d-8b22-5be7094fcf91@amd.com>
 <eb42f224-5406-47ea-9de3-84593de0e470@amd.com>
 <CANLsYkwc71m4qm0yoqAWsAZwJbX80pOYMnB2s_fD=t_TsSZnvQ@mail.gmail.com>
 <ad25d019-b2c9-4de9-ac5f-428c5e44f212@amd.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <ad25d019-b2c9-4de9-ac5f-428c5e44f212@amd.com>
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_BLOCKED,
	SPF_HELO_NONE,SPF_PASS autolearn=unavailable autolearn_force=no
	version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
	lindbergh.monkeyblade.net

On Mon, Oct 02, 2023 at 03:54:30PM -0500, Tanmay Shah wrote:
> 
> On 10/2/23 3:17 PM, Mathieu Poirier wrote:
> > On Mon, 2 Oct 2023 at 11:12, Tanmay Shah <tanmay.shah@amd.com> wrote:
> > >
> > >
> > > On 10/2/23 11:25 AM, Tanmay Shah wrote:
> > > > Hi Mathieu,
> > > >
> > > > Thanks for the reviews. Please find my comments below.
> > > >
> > > > On 10/2/23 10:55 AM, Mathieu Poirier wrote:
> > > > > On Thu, Sep 28, 2023 at 08:58:58AM -0700, Tanmay Shah wrote:
> > > > > > Add properties as per new bindings in zynqmp remoteproc node
> > > > > > to represent TCM address and size. This patch configures
> > > > > > RPU in split mode and adds TCM information accordingly.
> > > > > >
> > > > >
> > > > > Why is this changed from lockstep to split mode?  What about all the people out
> > > > > there that are expecting a lockstep mode?
> > > >
> > > > I agree, this should have been in split mode in the first place as we would like to demonstrate use of both
> > > >
> > > > RPUs with two separate demo firmwares which is the best use of the
> > > >
> > > > hardware and the most preferred use of zynqmp platform by people. That motivates to change
> > > >
> > > > this to split mode.
> > > >
> > > >
> > > > Now changing this may not be problem for lot of people with following reasons.
> > > >
> > > > The firmwares that are only using first 64KB of TCM memory, they can easily run in split mode as well.
> > > >
> > > > Also rpmsg vring information isn't available in device-tree yet, so I am hoping that firmware that
> > > >
> > > > are using upstream device-tree are not that big yet.
> > > >
> > > > If we change this to split mode before introducing rpmsg related nodes, I bet it will affect very less number of people.
> > > >
> > > >
> > > > For lockstep mode the example is available in dt-bindings document.
> > > >
> >
> > I could use the same argument for the split mode, i.e default is
> > lockstep and there is an example in the dt-bindings document for split
> > mode.
> >
> > > > So, if people need lockstep mode for any reason, all they need to change is xlnx,cluster-mode property from 0 to 1 and TCM nodes
> > > >
> > > > from bindings document.
> > > >
> > > >
> > > > If you think it's crucial to mention all above, I can send new patch with all above info in commit message.
> > >
> > > Something to add to this. So, let's say if we don't change it now, what would be good time to change it?
> > >
> >
> > The best way to go about this is to introduce another DT that is
> > tailored for split mode.  That way people can choose to boot their
> > device in a specific mode using the DT.  If you decide to go this way,
> > look at how ST has split their DT for different boards - search for
> > "m4_rproc" under " arch/arm/boot/dts/st".
> 
> Thanks for the suggestion. I looked at the example and I think it will work.
> 
> I have following idea.
> 
> So, if I understand this correctly, we introduce two separate nodes in device-tree.
> 
> SOC dtsi file: zynqmp.dtsi
> 
> remoteproc_lockstep: remoteproc@... {
> 
> . . .
> 
> status = "disabled";

I don't think you need the "status"

> 
> };
> 
> 
> remoteproc_split: remoteproc@... {
> 
>  . . .
> 
> status = "disabled";
> 
> };
> 
> 
> And then in board dts enable whatever mode is needed for that board:
> 
> *zcu102*.dts
> 
> &remoteproc_split {
> 
> status = "okay";
> 
> };

Exactly.  Again, I don't think the "status" is needed.

> 
> This sounds like good idea, I hope this is what you mean.
> 
> Please let me know if I am missing something.
> 
> 
> >
> > > As I am hopping to use RPU1 as well with upstream device-tree. Please let me know some suggestion to work this.
> > >
> > > Thanks and again as always appreciate complete reviews,
> > >
> > > Tanmay
> > >
> > >
> > > >
> > > >
> > > > >
> > > > > > Signed-off-by: Tanmay Shah <tanmay.shah@amd.com>
> > > > > > ---
> > > > > >  arch/arm64/boot/dts/xilinx/zynqmp.dtsi | 28 ++++++++++++++++++++------
> > > > > >  1 file changed, 22 insertions(+), 6 deletions(-)
> > > > > >
> > > > > > diff --git a/arch/arm64/boot/dts/xilinx/zynqmp.dtsi b/arch/arm64/boot/dts/xilinx/zynqmp.dtsi
> > > > > > index b61fc99cd911..01e12894c88e 100644
> > > > > > --- a/arch/arm64/boot/dts/xilinx/zynqmp.dtsi
> > > > > > +++ b/arch/arm64/boot/dts/xilinx/zynqmp.dtsi
> > > > > > @@ -247,19 +247,35 @@ fpga_full: fpga-full {
> > > > > >           ranges;
> > > > > >   };
> > > > > >
> > > > > > - remoteproc {
> > > > > > + remoteproc@ffe00000 {
> > > > > >           compatible = "xlnx,zynqmp-r5fss";
> > > > > > -         xlnx,cluster-mode = <1>;
> > > > > > +         xlnx,cluster-mode = <0>;
> > > > > >
> > > > > > -         r5f-0 {
> > > > > > +         #address-cells = <2>;
> > > > > > +         #size-cells = <2>;
> > > > > > +
> > > > > > +         ranges = <0x0 0x0 0x0 0xffe00000 0x0 0x10000>,
> > > > > > +                  <0x0 0x20000 0x0 0xffe20000 0x0 0x10000>,
> > > > > > +                  <0x1 0x0 0x0 0xffe90000 0x0 0x10000>,
> > > > > > +                  <0x1 0x20000 0x0 0xffeb0000 0x0 0x10000>;
> > > > > > +
> > > > > > +         r5f@0 {
> > > > > >                   compatible = "xlnx,zynqmp-r5f";
> > > > > > -                 power-domains = <&zynqmp_firmware PD_RPU_0>;
> > > > > > +                 reg = <0x0 0x0 0x0 0x10000>, <0x0 0x20000 0x0 0x10000>;
> > > > > > +                 reg-names = "atcm", "btcm";
> > > > > > +                 power-domains = <&zynqmp_firmware PD_RPU_0>,
> > > > > > +                                 <&zynqmp_firmware PD_R5_0_ATCM>,
> > > > > > +                                 <&zynqmp_firmware PD_R5_0_BTCM>;
> > > > > >                   memory-region = <&rproc_0_fw_image>;
> > > > > >           };
> > > > > >
> > > > > > -         r5f-1 {
> > > > > > +         r5f@1 {
> > > > > >                   compatible = "xlnx,zynqmp-r5f";
> > > > > > -                 power-domains = <&zynqmp_firmware PD_RPU_1>;
> > > > > > +                 reg = <0x1 0x0 0x0 0x10000>, <0x1 0x20000 0x0 0x10000>;
> > > > > > +                 reg-names = "atcm", "btcm";
> > > > > > +                 power-domains = <&zynqmp_firmware PD_RPU_1>,
> > > > > > +                                 <&zynqmp_firmware PD_R5_1_ATCM>,
> > > > > > +                                 <&zynqmp_firmware PD_R5_1_BTCM>;
> > > > > >                   memory-region = <&rproc_1_fw_image>;
> > > > > >           };
> > > > > >   };
> > > > > > --
> > > > > > 2.25.1
> > > > > >

