Return-Path: <devicetree+bounces-1838-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 4848C7A890C
	for <lists+devicetree@lfdr.de>; Wed, 20 Sep 2023 17:56:26 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 306E61C209B6
	for <lists+devicetree@lfdr.de>; Wed, 20 Sep 2023 15:56:25 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 874923C6A1;
	Wed, 20 Sep 2023 15:56:22 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 76EAC1428E
	for <devicetree@vger.kernel.org>; Wed, 20 Sep 2023 15:56:22 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id DACFCC433C8;
	Wed, 20 Sep 2023 15:56:20 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1695225382;
	bh=v8EP6rd+e0JXFgWJJVTrshogxYhGsEaW990one0qWt0=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=XSZiiQ7VZUyu4W/luWKAihXbJpGdMRVAMteyZ308XcIEzqFe4h1dgSulqL+buOcHK
	 h3SNeKtSUCIwhPjeHMkE7E6OZhInfY+9b7G75zdiiqak3w/9oVW/3/4iYQ5USKLhEq
	 ST/I0I8gqT3geaK2aMpi0D9vNeyKfKM5FKxiCqBw31Ok6pDptduCigvu4OdLyNbcv9
	 e1IfDg3rLGMSLQtfcSxnp0qi45OpDbQAMUXJNqtQDtyi/d/3foUr9lWI1zxlOvER5t
	 oHPIZmzn1PWr5/fLa4Agui3Lv/t8voaHNj9Y+7zJ6xYiMf5q57EnUyzbmnSqxwZP+l
	 A5iq2+ugQm5aA==
Received: (nullmailer pid 2424113 invoked by uid 1000);
	Wed, 20 Sep 2023 15:56:19 -0000
Date: Wed, 20 Sep 2023 10:56:19 -0500
From: Rob Herring <robh@kernel.org>
To: Xu Yang <xu.yang_2@nxp.com>
Cc: linux-arm-kernel@lists.infradead.org, Frank.li@nxp.com, devicetree@vger.kernel.org, s.hauer@pengutronix.de, mark.rutland@arm.com, corbet@lwn.net, kernel@pengutronix.de, festevam@gmail.com, krzysztof.kozlowski+dt@linaro.org, linux-imx@nxp.com, will@kernel.org, linux-doc@vger.kernel.org, shawnguo@kernel.org, conor+dt@kernel.org
Subject: Re: [PATCH 3/5] dt-bindings: perf: fsl-imx-ddr: Add i.MX8DXL
 compatible
Message-ID: <20230920155619.GA2422686-robh@kernel.org>
References: <20230920102004.886599-1-xu.yang_2@nxp.com>
 <20230920102004.886599-3-xu.yang_2@nxp.com>
 <169521103427.1930124.5864996786068746858.robh@kernel.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <169521103427.1930124.5864996786068746858.robh@kernel.org>

On Wed, Sep 20, 2023 at 06:57:14AM -0500, Rob Herring wrote:
> 
> On Wed, 20 Sep 2023 18:20:02 +0800, Xu Yang wrote:
> > Add a compatible for i.MX8DXL which is compatile with "fsl,imx8-ddr-pmu".
> > 
> > Signed-off-by: Xu Yang <xu.yang_2@nxp.com>
> > ---
> >  Documentation/devicetree/bindings/perf/fsl-imx-ddr.yaml | 3 +++
> >  1 file changed, 3 insertions(+)
> > 
> 
> My bot found errors running 'make DT_CHECKER_FLAGS=-m dt_binding_check'
> on your patch (DT_CHECKER_FLAGS is new in v5.13):
> 
> yamllint warnings/errors:
> 
> dtschema/dtc warnings/errors:
> 
> 
> doc reference errors (make refcheckdocs):
> 

This can be ignored. Looks like some transcient issue with dtschema not 
being able to run and the version check failed.

Rob

