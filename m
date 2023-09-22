Return-Path: <devicetree+bounces-2611-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id B3A057ABAF6
	for <lists+devicetree@lfdr.de>; Fri, 22 Sep 2023 23:17:43 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sv.mirrors.kernel.org (Postfix) with ESMTP id 6BE862819A4
	for <lists+devicetree@lfdr.de>; Fri, 22 Sep 2023 21:17:42 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 561E147369;
	Fri, 22 Sep 2023 21:17:40 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 44A6D436A1
	for <devicetree@vger.kernel.org>; Fri, 22 Sep 2023 21:17:39 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id ECD6CC433C8;
	Fri, 22 Sep 2023 21:17:38 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1695417459;
	bh=Si8g+TFji3EHeLWTCrwxT+KxSVzn8oTXYkKRkhBHtfU=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=R9lwbitVfe2UTFqrcwaLcOkCoWPDhRaIhrRBKesWMrrHTfR6MoqdoRbFMKQ/M0QUU
	 vH0Je9qjsGtxwMkVedQm2lcCZeGdTq6wfvGMen5vjv4FKRH9NB/8RH8wOnGJGGRXd7
	 MTQAJ96DFF+qR5+1GDBXSYvPEtods62rksmvzf8M/1KdogFQpAYzomFeVDdsUcMBlf
	 0Zsr0kkFWNY9cQS8QRafspEImWqYApXp/HTeCqJ5Yy1L+ERZ9gqHviJPIWjUy1E5og
	 uXw7RoHS9edmHDMfpzHI1MKLZgqQeDPfSbwrGZl3G/aoUGTbqLtTnyLMwLdsko1mSx
	 jLS6sOzrP+VNg==
Received: (nullmailer pid 3633302 invoked by uid 1000);
	Fri, 22 Sep 2023 21:17:37 -0000
Date: Fri, 22 Sep 2023 16:17:37 -0500
From: Rob Herring <robh@kernel.org>
To: Uwe =?iso-8859-1?Q?Kleine-K=F6nig?= <u.kleine-koenig@pengutronix.de>
Cc: Fabio Estevam <festevam@gmail.com>, thierry.reding@gmail.com, krzysztof.kozlowski+dt@linaro.org, conor+dt@kernel.org, linux-pwm@vger.kernel.org, devicetree@vger.kernel.org, Fabio Estevam <festevam@denx.de>
Subject: Re: [PATCH 3/3] dt-bindings: pwm: mxs: Allow passing #pwm-cells = <2>
Message-ID: <20230922211737.GA3628801-robh@kernel.org>
References: <20230921184348.290261-1-festevam@gmail.com>
 <20230921184348.290261-3-festevam@gmail.com>
 <20230921195909.ulpoqvrixocwqou2@pengutronix.de>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20230921195909.ulpoqvrixocwqou2@pengutronix.de>

On Thu, Sep 21, 2023 at 09:59:09PM +0200, Uwe Kleine-König wrote:
> Hello Fabio,
> 
> On Thu, Sep 21, 2023 at 03:43:48PM -0300, Fabio Estevam wrote:
> > From: Fabio Estevam <festevam@denx.de>
> > 
> > All the in-tree imx23 and imx28 devicetrees use #pwm-cells = <2>.
> > 
> > Allow it in the schema to avoid warnings.
> > 
> > It is still possible for a devicetree to pass the third cell with the
> > PWM polarity though.
> > 
> > This is similar to imx-pwm.yaml that allows #pwm-cells to be 2 or 3.
> 
> Alternatively switch all devicetrees to use = <3>? That's what I'd
> prefer given that the PWM supports both polarities.

Technically, that could break older clients predating 3 cell support. 
But maybe that's far back enough now to not care. Either way,

Acked-by: Rob Herring <robh@kernel.org>

