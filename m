Return-Path: <devicetree+bounces-6451-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 3345A7BB6DC
	for <lists+devicetree@lfdr.de>; Fri,  6 Oct 2023 13:44:34 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id E0AAB2822B3
	for <lists+devicetree@lfdr.de>; Fri,  6 Oct 2023 11:44:32 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 15F301CA85;
	Fri,  6 Oct 2023 11:44:31 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=ti.com header.i=@ti.com header.b="n+IqMt5G"
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8E1781C6B6
	for <devicetree@vger.kernel.org>; Fri,  6 Oct 2023 11:44:29 +0000 (UTC)
Received: from fllv0016.ext.ti.com (fllv0016.ext.ti.com [198.47.19.142])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 6D4D2C5;
	Fri,  6 Oct 2023 04:44:28 -0700 (PDT)
Received: from fllv0034.itg.ti.com ([10.64.40.246])
	by fllv0016.ext.ti.com (8.15.2/8.15.2) with ESMTP id 396BiMw8069181;
	Fri, 6 Oct 2023 06:44:22 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
	s=ti-com-17Q1; t=1696592662;
	bh=okUnWdhiqZuABrpXo3IYpIqf2nM+f4960a0GhX4RfYI=;
	h=Date:From:To:CC:Subject:References:In-Reply-To;
	b=n+IqMt5GG+vaKMaGHTj4hhyL9lEb//vUjz+SS5BKFzbdBJlW5mP1CyyOS8kSSlLlO
	 3EiMDhmRD64UfZBitRIH29nP94c+opr+ZfJeJAF8VERqzlMuev33PjB1sXgHWvPPxr
	 fTJsjd4GfCl9/jj0qihDqdJOmKCB5liFBmH+Zwkc=
Received: from DFLE102.ent.ti.com (dfle102.ent.ti.com [10.64.6.23])
	by fllv0034.itg.ti.com (8.15.2/8.15.2) with ESMTPS id 396BiMBM019622
	(version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
	Fri, 6 Oct 2023 06:44:22 -0500
Received: from DFLE109.ent.ti.com (10.64.6.30) by DFLE102.ent.ti.com
 (10.64.6.23) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.2507.23; Fri, 6
 Oct 2023 06:44:22 -0500
Received: from lelv0327.itg.ti.com (10.180.67.183) by DFLE109.ent.ti.com
 (10.64.6.30) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.2507.23 via
 Frontend Transport; Fri, 6 Oct 2023 06:44:22 -0500
Received: from localhost (ileaxei01-snat.itg.ti.com [10.180.69.5])
	by lelv0327.itg.ti.com (8.15.2/8.15.2) with ESMTP id 396BiM0U015998;
	Fri, 6 Oct 2023 06:44:22 -0500
Date: Fri, 6 Oct 2023 06:44:22 -0500
From: Nishanth Menon <nm@ti.com>
To: Keerthy <j-keerthy@ti.com>
CC: <robh+dt@kernel.org>, <vigneshr@ti.com>, <conor+dt@kernel.org>,
        <kristo@kernel.org>, <krzysztof.kozlowski+dt@linaro.org>,
        <u-kumar1@ti.com>, <linux-arm-kernel@lists.infradead.org>,
        <devicetree@vger.kernel.org>, <linux-kernel@vger.kernel.org>
Subject: Re: [PATCH v7 5/7] arm64: dts: ti: k3-j784s4-mcu: Add the mcu domain
 watchdog instances
Message-ID: <20231006114422.avymeap7h5ocs6zq@dreadlock>
References: <20231006042901.6474-1-j-keerthy@ti.com>
 <20231006042901.6474-6-j-keerthy@ti.com>
 <20231006113410.tibvxxkeuujqnbv4@evolution>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Disposition: inline
In-Reply-To: <20231006113410.tibvxxkeuujqnbv4@evolution>
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180
X-Spam-Status: No, score=-4.4 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_MED,
	SPF_HELO_PASS,SPF_NONE autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
	lindbergh.monkeyblade.net

> > +	mcu_watchdog1: watchdog@40610000 {
> > +		compatible = "ti,j7-rti-wdt";
> > +		reg = <0x00 0x40610000 0x00 0x100>;
> > +		clocks = <&k3_clks 368 1>;
> > +		power-domains = <&k3_pds 368 TI_SCI_PD_EXCLUSIVE>;
> > +		assigned-clocks = <&k3_clks 368 0>;
> > +		assigned-clock-parents = <&k3_clks 368 4>;
> 
> Please DONOT ignore the review comments - I did ask the documentation in
> dts as well. reason being that this is what people will see rather than
> dig up the commit log. it should be intutive when reading the dts why
> nodes are disabled by default Vs the standard of leaving it enabled by
> default. Given esp that these peripherals do not have anything to do
> with board semantics (pinmux or something similar) to be complete.
> 
> > +		status = "disabled";

Just providing clarifying comment - something like this is probably more
appropriate:

/* Tightly coupled to R5F */
status = "reserved";

The rti needs to be handled by R5F and is reserved for firmware usage.

-- 
Regards,
Nishanth Menon
Key (0xDDB5849D1736249D) / Fingerprint: F8A2 8693 54EB 8232 17A3  1A34 DDB5 849D 1736 249D

