Return-Path: <devicetree+bounces-7347-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 90EE27C022E
	for <lists+devicetree@lfdr.de>; Tue, 10 Oct 2023 19:06:07 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 937B71C20BB8
	for <lists+devicetree@lfdr.de>; Tue, 10 Oct 2023 17:06:06 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 9D5832FE35;
	Tue, 10 Oct 2023 17:06:04 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="DyA6xxGA"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7AB082FE07
	for <devicetree@vger.kernel.org>; Tue, 10 Oct 2023 17:06:04 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id D7EF4C433C7;
	Tue, 10 Oct 2023 17:06:02 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1696957563;
	bh=fQxhBhW+tBsI74bpxoq2WhIg3iV6j9PgVFhC0vGwcw4=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=DyA6xxGAjMcq+pqRbop6Hl9L/a7izNrQx+URxcKHk4934m/rfCpF63VFp05pP7x8t
	 oYV5j5bsLcXaK5nEP1CSnbk8TEubM0pjGVGBuDee6xu5DV7Gr21jNks+xxnIEDqSbN
	 l5lHI+PA3HtR260Migd0jbiU0L+XaziHQezq21xNdTpiHcMtB3twWogwuHGGwxauBz
	 ApJxqcjeKTyfLyunkMYYurP+MRGg5Wp2VzbZJ7GiNVpHXbGE4ZtWm9gV3JbmtWAdKA
	 nH7/wVJ1I0ZR8LQfvdlzZ7oxPNQaj38l9ZwSPll8kUSuuy9a1ggijHyDW3aSUBW7x2
	 666ToubamQsOw==
Received: (nullmailer pid 1059527 invoked by uid 1000);
	Tue, 10 Oct 2023 17:06:00 -0000
Date: Tue, 10 Oct 2023 12:06:00 -0500
From: Rob Herring <robh@kernel.org>
To: Simon Glass <sjg@chromium.org>
Cc: Miquel Raynal <miquel.raynal@bootlin.com>, devicetree@vger.kernel.org, Michael Walle <mwalle@kernel.org>, Richard Weinberger <richard@nod.at>, U-Boot Mailing List <u-boot@lists.denx.de>, Vignesh Raghavendra <vigneshr@ti.com>, linux-kernel@vger.kernel.org, linux-mtd@lists.infradead.org, Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, Conor Dooley <conor+dt@kernel.org>, Tom Rini <trini@konsulko.com>
Subject: Re: [PATCH v3 2/3] dt-bindings: mtd: binman-partition: Add binman
 compatibles
Message-ID: <20231010170600.GA1046256-robh@kernel.org>
References: <20231009201005.1964794-1-sjg@chromium.org>
 <20231009201005.1964794-2-sjg@chromium.org>
 <169688631230.3255827.3268332902446136449.robh@kernel.org>
 <CAPnjgZ3-eX5r02K_499wz3dQOs8nOO5o16CL9w1xyNsTXL0L2A@mail.gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <CAPnjgZ3-eX5r02K_499wz3dQOs8nOO5o16CL9w1xyNsTXL0L2A@mail.gmail.com>

On Mon, Oct 09, 2023 at 04:02:40PM -0600, Simon Glass wrote:
> Hi Rob,
> 
> On Mon, 9 Oct 2023 at 15:18, Rob Herring <robh@kernel.org> wrote:
> >
> >
> > On Mon, 09 Oct 2023 14:10:00 -0600, Simon Glass wrote:
> > > Add two compatible for binman entries, as a starting point for the
> > > schema.
> > >
> > > Note that, after discussion on v2, we decided to keep the existing
> > > meaning of label so as not to require changes to existing userspace
> > > software when moving to use binman nodes to specify the firmware
> > > layout.
> > >
> > > Signed-off-by: Simon Glass <sjg@chromium.org>
> > > ---
> > >
> > > Changes in v3:
> > > - Drop fixed-partitions from the example
> > > - Use compatible instead of label
> > >
> > > Changes in v2:
> > > - Use plain partition@xxx for the node name
> > >
> > >  .../mtd/partitions/binman-partition.yaml      | 48 +++++++++++++++++++
> > >  1 file changed, 48 insertions(+)
> > >  create mode 100644 Documentation/devicetree/bindings/mtd/partitions/binman-partition.yaml
> > >
> >
> > My bot found errors running 'make DT_CHECKER_FLAGS=-m dt_binding_check'
> > on your patch (DT_CHECKER_FLAGS is new in v5.13):
> >
> > yamllint warnings/errors:
> >
> > dtschema/dtc warnings/errors:
> > /builds/robherring/dt-review-ci/linux/Documentation/devicetree/bindings/mtd/partitions/binman-partition.yaml: properties:compatible:items: {'enum': ['u-boot', 'atf-bl31']} is not of type 'array'
> >         from schema $id: http://devicetree.org/meta-schemas/string-array.yaml#
> >
> > doc reference errors (make refcheckdocs):
> >
> > See https://patchwork.ozlabs.org/project/devicetree-bindings/patch/20231009201005.1964794-2-sjg@chromium.org
> >
> > The base for the series is generally the latest rc1. A different dependency
> > should be noted in *this* patch.
> >
> > If you already ran 'make dt_binding_check' and didn't see the above
> > error(s), then make sure 'yamllint' is installed and dt-schema is up to
> > date:
> >
> > pip3 install dtschema --upgrade
> >
> > Please check and re-submit after running the above command yourself. Note
> > that DT_SCHEMA_FILES can be set to your schema file to speed up checking
> > your schema. However, it must be unset to test all examples with your schema.
> >
> 
> Oh dear, I didn't notice that output but I see it now. Could the check
> return a non-zero exit code if something goes wrong?

No, because things go wrong too often and then it breaks for everyone. 
It's better now, but only because of the above reports and 3 
maintainers.

Also, it is not fatal. The schemas are checked against the DT 
meta-schema, but are used for validation if they pass just draft2019-09 
meta-schema. That allows new DT meta-schema checks to not start 
excluding previously used schema.

Rob

