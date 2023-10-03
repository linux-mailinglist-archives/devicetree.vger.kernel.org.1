Return-Path: <devicetree+bounces-5435-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id A1B5F7B6537
	for <lists+devicetree@lfdr.de>; Tue,  3 Oct 2023 11:15:27 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sv.mirrors.kernel.org (Postfix) with ESMTP id 5835428160B
	for <lists+devicetree@lfdr.de>; Tue,  3 Oct 2023 09:15:26 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 568FCDF47;
	Tue,  3 Oct 2023 09:15:25 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id AD2F5DDCE
	for <devicetree@vger.kernel.org>; Tue,  3 Oct 2023 09:15:23 +0000 (UTC)
Received: from perceval.ideasonboard.com (perceval.ideasonboard.com [IPv6:2001:4b98:dc2:55:216:3eff:fef7:d647])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 8586FA9;
	Tue,  3 Oct 2023 02:15:21 -0700 (PDT)
Received: from pendragon.ideasonboard.com (unknown [88.124.123.152])
	by perceval.ideasonboard.com (Postfix) with ESMTPSA id ED60D75A;
	Tue,  3 Oct 2023 11:13:33 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=ideasonboard.com;
	s=mail; t=1696324414;
	bh=PO3ge0MR9XFHjEOGZbD7BZzaTQmFFuxGS+gzgFhY7/c=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=EjamJU7A6WI/F4CvZCOf0MRBSGqlZsa1luRrO8vyPO+qW9fFjVR9LvUufArTC7wIx
	 ZtSnMwLKRvx7iuqyzYkO2/8gYrCDSD9YU8tjYOgWmFR2cxfPiJ5FfzITPgggNPVMvx
	 AF3iH99XLzRBTd/Kp4obsgcEvwO5FY5u/kE2jX04=
Date: Tue, 3 Oct 2023 12:15:29 +0300
From: Laurent Pinchart <laurent.pinchart@ideasonboard.com>
To: Sakari Ailus <sakari.ailus@linux.intel.com>
Cc: Jacopo Mondi <jacopo.mondi@ideasonboard.com>,
	linux-media@vger.kernel.org, devicetree@vger.kernel.org,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Fabio Estevam <festevam@gmail.com>, martink@posteo.de
Subject: Re: [PATCH v3 1/7] media: dt-bindings: hynix,hi846: Add
 video-interface-device properties
Message-ID: <20231003091529.GB16331@pendragon.ideasonboard.com>
References: <20230930145951.23433-1-jacopo.mondi@ideasonboard.com>
 <20230930145951.23433-2-jacopo.mondi@ideasonboard.com>
 <ZRvQckwdt9modLss@kekkonen.localdomain>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
In-Reply-To: <ZRvQckwdt9modLss@kekkonen.localdomain>
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_BLOCKED,
	SPF_HELO_PASS,SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
	lindbergh.monkeyblade.net

On Tue, Oct 03, 2023 at 08:27:30AM +0000, Sakari Ailus wrote:
> Hi Jacopo,
> 
> On Sat, Sep 30, 2023 at 04:59:45PM +0200, Jacopo Mondi wrote:
> > Allow properties from video-interface-device.yaml for the SK Hynix Hi-846
> > sensor.
> > 
> > All properties specified in video-interface-device.yaml schema are
> > valid, so make them accepted by changing "additionalProperties: false"
> > to "unevaluatedProperties: false" at the schema top-level.
> 
> The patch seems fine to me, but I wonder if we should change the title of
> video-interface-devices.yaml (it's plural) to something that refers to
> camera sensors, and possibly split it. It's currently not relevant for
> other types of devices.

I was thinking exactly the same yesterday.

-- 
Regards,

Laurent Pinchart

