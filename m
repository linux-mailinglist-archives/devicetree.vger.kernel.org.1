Return-Path: <devicetree+bounces-32893-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 016FA830F3E
	for <lists+devicetree@lfdr.de>; Wed, 17 Jan 2024 23:37:44 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id AAA95287E51
	for <lists+devicetree@lfdr.de>; Wed, 17 Jan 2024 22:37:42 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 59D141E872;
	Wed, 17 Jan 2024 22:37:38 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="GbTSq3Mj"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3129A1E514;
	Wed, 17 Jan 2024 22:37:38 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1705531058; cv=none; b=CabBVj5AGoqSexZabUlPi6Bcgk6GRA++cAGz4qUiWEvm9ijWUF0oz3ihDW/jIeUXixrmpLuwolq+2yLtCaqe2DBPS78AZPqfRQv7uHuHN5aoVCHFtxSgFooUxIOI6/IIGa1PF4mEmg9ltXyqU+OzVOuGCewuNr/yE4860HvuNBo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1705531058; c=relaxed/simple;
	bh=Du2DsE2SN6RqPy+w4U7y+zmiClI0d9lq3FbSw61NJXk=;
	h=Received:DKIM-Signature:Date:From:To:Cc:Subject:Message-ID:
	 References:MIME-Version:Content-Type:Content-Disposition:
	 In-Reply-To; b=esSdZYE47pw+GFMDsxt2ZGpVMwWkitvFZ/VSfQSwL3sqMjxzGooKqCfdciot64UBrz8LPxCtHeBC+kzZ4zNq14R+eHtvTmkyNxD4m/6sNgP9D/i0Q2ixJZr0PmSEaAElPl+2twGbya0T/oZjtzGDdNgkI8L4ZR7BstPMWhIJ26U=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=GbTSq3Mj; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id BAA47C433C7;
	Wed, 17 Jan 2024 22:37:37 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1705531058;
	bh=Du2DsE2SN6RqPy+w4U7y+zmiClI0d9lq3FbSw61NJXk=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=GbTSq3MjSChvkg5XzajifKr70wcLlaRh1dAzw9fKYb0QaJOCSv7OTeHli8yjHXSz+
	 PIk6q5Goy5W8MNtk7unn4axTIsjHjn2yMOmx68unRwSbIU+MDzvc87y+fqiLcDS/DL
	 7KzH1RyPUlvjjTo71VPKvZzB7QzRe2ceKD6kqE1AhqfsrPA5lLm6EZ7ifWK7hVqBvv
	 cak58pSrBTheYbzSAuIrWAAnjACAjUItLMWexwAYc8+zH0oF0oxjeyfIMLnSJTEZj8
	 K9Riyxi7L4tXqotQaCHUnSrmzwi0/N/Wt6aRDDpBeHQb0h+FSg9GSipYSFXIIlMLyD
	 DRgO5NCpa/rnA==
Date: Wed, 17 Jan 2024 16:37:35 -0600
From: Rob Herring <robh@kernel.org>
To: Devarsh Thakkar <devarsht@ti.com>
Cc: jyri.sarha@iki.fi, tomi.valkeinen@ideasonboard.com, airlied@gmail.com,
	daniel@ffwll.ch, maarten.lankhorst@linux.intel.com,
	mripard@kernel.org, tzimmermann@suse.de,
	krzysztof.kozlowski+dt@linaro.org, conor+dt@kernel.org,
	dri-devel@lists.freedesktop.org, devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
	nm@ti.com, vigneshr@ti.com, kristo@kernel.org, praneeth@ti.com,
	a-bhatia1@ti.com, j-luthra@ti.com
Subject: Re: [RFC PATCH 1/3] dt-bindings: display: ti,am65x-dss: Add support
 for display sharing mode
Message-ID: <20240117223735.GA3375434-robh@kernel.org>
References: <20240116134142.2092483-1-devarsht@ti.com>
 <20240116134142.2092483-2-devarsht@ti.com>
 <20240117201342.GA3041972-robh@kernel.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20240117201342.GA3041972-robh@kernel.org>

On Wed, Jan 17, 2024 at 02:13:42PM -0600, Rob Herring wrote:
> On Tue, Jan 16, 2024 at 07:11:40PM +0530, Devarsh Thakkar wrote:
> > Add support for using TI Keystone DSS hardware present in display
> > sharing mode.
> > 
> > TI Keystone DSS hardware supports partitioning of resources between
> > multiple hosts as it provides separate register space and unique
> > interrupt line to each host.
> > 
> > The DSS hardware can be used in shared mode in such a way that one or
> > more of video planes can be owned by Linux wherease other planes can be
> > owned by remote cores.
> > 
> > One or more of the video ports can be dedicated exclusively to a
> > processing core, wherease some of the video ports can be shared between
> > two hosts too with only one of them having write access.
> > 
> > Signed-off-by: Devarsh Thakkar <devarsht@ti.com>
> > ---
> >  .../bindings/display/ti/ti,am65x-dss.yaml     | 82 +++++++++++++++++++
> >  1 file changed, 82 insertions(+)
> > 
> > diff --git a/Documentation/devicetree/bindings/display/ti/ti,am65x-dss.yaml b/Documentation/devicetree/bindings/display/ti/ti,am65x-dss.yaml
> > index 55e3e490d0e6..d9bc69fbf1fb 100644
> > --- a/Documentation/devicetree/bindings/display/ti/ti,am65x-dss.yaml
> > +++ b/Documentation/devicetree/bindings/display/ti/ti,am65x-dss.yaml
> > @@ -112,6 +112,86 @@ properties:
> >        Input memory (from main memory to dispc) bandwidth limit in
> >        bytes per second
> >  
> > +  ti,dss-shared-mode:
> > +    type: boolean
> > +    description:
> > +      TI DSS7 supports sharing of display between multiple hosts
> > +      as it provides separate register space for display configuration and
> > +      unique interrupt line to each host.
> 
> If you care about line breaks, you need '|'. 
> 
> > +      One of the host is provided access to the global display
> > +      configuration labelled as "common" region of DSS allows that host
> > +      exclusive access to global registers of DSS while other host can
> > +      configure the display for it's usage using a separate register
> > +      space labelled as "common1".
> > +      The DSS resources can be partitioned in such a way that one or more
> > +      of the video planes are owned by Linux whereas other video planes
> 
> Your h/w can only run Linux?
> 
> What if you want to use this same binding to define the configuration to 
> the 'remote processor'? You can easily s/Linux/the OS/, but it all 
> should be reworded to describe things in terms of the local processor.
> 
> > +      can be owned by a remote core.
> > +      The video port controlling these planes acts as a shared video port
> > +      and it can be configured with write access either by Linux or the
> > +      remote core in which case Linux only has read-only access to that
> > +      video port.
> 
> What is the purpose of this property when all the other properties are 
> required?
> 
> > +
> > +  ti,dss-shared-mode-planes:
> > +    description:
> > +      The video layer that is owned by processing core running Linux.
> > +      The display driver running from Linux has exclusive write access to
> > +      this video layer.
> > +    $ref: /schemas/types.yaml#/definitions/string
> > +    enum: [vidl, vid]
> > +
> > +  ti,dss-shared-mode-vp:
> > +    description:
> > +      The video port that is being used in context of processing core
> > +      running Linux with display susbsytem being used in shared mode.
> > +      This can be owned either by the processing core running Linux in
> > +      which case Linux has the write access and the responsibility to
> > +      configure this video port and the associated overlay manager or
> > +      it can be shared between core running Linux and a remote core
> > +      with remote core provided with write access to this video port and
> > +      associated overlay managers and remote core configures and drives
> > +      this video port also feeding data from one or more of the
> > +      video planes owned by Linux, with Linux only having read-only access
> > +      to this video port and associated overlay managers.
> > +
> > +    $ref: /schemas/types.yaml#/definitions/string
> > +    enum: [vp1, vp2]
> > +
> > +  ti,dss-shared-mode-common:
> > +    description:
> > +      The DSS register region owned by processing core running Linux.
> > +    $ref: /schemas/types.yaml#/definitions/string
> > +    enum: [common, common1]
> > +
> > +  ti,dss-shared-mode-vp-owned:
> > +    description:
> > +      This tells whether processing core running Linux has write access to
> > +      the video ports enlisted in ti,dss-shared-mode-vps.
> > +    $ref: /schemas/types.yaml#/definitions/uint32
> > +    enum: [0, 1]
> 
> This can be boolean. Do writes abort or just get ignored? The latter can 
> be probed and doesn't need a property.
> 
> > +
> > +  ti,dss-shared-mode-plane-zorder:
> > +    description:
> > +      The zorder of the planes owned by Linux.
> > +      For the scenario where Linux is not having write access to associated
> > +      video port, this field is just for
> > +      informational purpose to enumerate the zorder configuration
> > +      being used by remote core.
> > +
> > +    $ref: /schemas/types.yaml#/definitions/uint32
> > +    enum: [0, 1]
> 
> I don't understand how 0 or 1 defines Z-order.
> 
> > +
> > +dependencies:
> > +  ti,dss-shared-mode: [ 'ti,dss-shared-mode-planes', 'ti,dss-shared-mode-vp',
> > +                        'ti,dss-shared-mode-plane-zorder', 'ti,dss-shared-mode-vp-owned']
> > +  ti,dss-shared-mode-vp: ['ti,dss-shared-mode', 'ti,dss-shared-mode-planes',
> > +                          'ti,dss-shared-mode-plane-zorder', 'ti,dss-shared-mode-vp-owned']
> > +  ti,dss-shared-mode-planes: ['ti,dss-shared-mode', 'ti,dss-shared-mode-vp',
> > +                              'ti,dss-shared-mode-plane-zorder', 'ti,dss-shared-mode-vp-owned']
> > +  ti,dss-shared-mode-plane-zorder: ['ti,dss-shared-mode-planes', 'ti,dss-shared-mode-vp',
> > +                                    'ti,dss-shared-mode', 'ti,dss-shared-mode-vp-owned']
> > +  ti,dss-shared-mode-vp-owned: ['ti,dss-shared-mode-planes', 'ti,dss-shared-mode-vp',
> > +                                'ti,dss-shared-mode', 'ti,dss-shared-mode-plane-zorder']
> > +
> >  allOf:
> >    - if:
> >        properties:
> > @@ -123,6 +203,8 @@ allOf:
> >          ports:
> >            properties:
> >              port@0: false
> > +            ti,dss-shared-mode-vp:
> > +            enum: [vp2]
> 
> This should throw a warning. You just defined a property called 'enum'.

Indeed it does. Test your bindings before sending.

../Documentation/devicetree/bindings/display/ti/ti,am65x-dss.yaml:204:35: [error] empty value in block mapp
ing (empty-values)                                   
  CHKDT   Documentation/devicetree/bindings/processed-schema.json
/home/rob/proj/linux-dt/Documentation/devicetree/bindings/display/ti/ti,am65x-dss.yaml: allOf:0:then:proper
ties:ports:properties:ti,dss-shared-mode-vp: None is not of type 'object', 'boolean'
        from schema $id: http://json-schema.org/draft-07/schema#
/home/rob/proj/linux-dt/Documentation/devicetree/bindings/display/ti/ti,am65x-dss.yaml: allOf:0:then:proper
ties:ports:properties:enum: ['vp2'] is not of type 'object', 'boolean'
        from schema $id: http://json-schema.org/draft-07/schema#
/home/rob/proj/linux-dt/Documentation/devicetree/bindings/display/ti/ti,am65x-dss.yaml: allOf:0:then:proper
ties:ports:properties: 'enum' should not be valid under {'$ref': '#/definitions/json-schema-prop-names'}
        hint: A json-schema keyword was found instead of a DT property name.
        from schema $id: http://devicetree.org/meta-schemas/keywords.yaml# 
/home/rob/proj/linux-dt/Documentation/devicetree/bindings/display/ti/ti,am65x-dss.yaml: allOf:0:then:proper
ties:ports:properties:ti,dss-shared-mode-vp: None is not of type 'object', 'boolean'
        from schema $id: http://devicetree.org/meta-schemas/keywords.yaml#
/home/rob/proj/linux-dt/Documentation/devicetree/bindings/display/ti/ti,am65x-dss.yaml: allOf:0:then:proper
ties:ports:properties:enum: ['vp2'] is not of type 'object', 'boolean'
        from schema $id: http://devicetree.org/meta-schemas/keywords.yaml#

