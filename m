Return-Path: <devicetree+bounces-1789-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 9B4187A8615
	for <lists+devicetree@lfdr.de>; Wed, 20 Sep 2023 16:03:16 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id AA6BD1C20A18
	for <lists+devicetree@lfdr.de>; Wed, 20 Sep 2023 14:03:15 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 096443AC2A;
	Wed, 20 Sep 2023 14:03:13 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7A90F36B12
	for <devicetree@vger.kernel.org>; Wed, 20 Sep 2023 14:03:11 +0000 (UTC)
Received: from foss.arm.com (foss.arm.com [217.140.110.172])
	by lindbergh.monkeyblade.net (Postfix) with ESMTP id B6D70AD
	for <devicetree@vger.kernel.org>; Wed, 20 Sep 2023 07:03:09 -0700 (PDT)
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
	by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 9637A1FB
	for <devicetree@vger.kernel.org>; Wed, 20 Sep 2023 07:03:46 -0700 (PDT)
Received: from e110455-lin.cambridge.arm.com (usa-sjc-imap-foss1.foss.arm.com [10.121.207.14])
	by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPA id 3E9273F5A1
	for <devicetree@vger.kernel.org>; Wed, 20 Sep 2023 07:03:09 -0700 (PDT)
Date: Wed, 20 Sep 2023 15:03:03 +0100
From: Liviu Dudau <Liviu.Dudau@arm.com>
To: Boris Brezillon <boris.brezillon@collabora.com>
Cc: Neil Armstrong <neil.armstrong@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Nicolas Boichat <drinkcat@chromium.org>,
	Daniel Stone <daniels@collabora.com>, devicetree@vger.kernel.org,
	dri-devel@lists.freedesktop.org,
	Steven Price <steven.price@arm.com>,
	Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>,
	Rob Herring <robh+dt@kernel.org>,
	=?utf-8?B?Q2zDqW1lbnQgUMOpcm9u?= <peron.clem@gmail.com>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	"Marty E . Plummer" <hanetzer@startmail.com>,
	Robin Murphy <robin.murphy@arm.com>,
	Faith Ekstrand <faith.ekstrand@collabora.com>
Subject: Re: [PATCH v2 14/15] dt-bindings: gpu: mali-valhall-csf: Add initial
 bindings for panthor driver
Message-ID: <ZQr7lyds-Wpq1yxH@e110455-lin.cambridge.arm.com>
References: <20230809165330.2451699-1-boris.brezillon@collabora.com>
 <20230809165330.2451699-15-boris.brezillon@collabora.com>
 <3517f2e9-d9d7-5bf8-1905-62f52d68c512@linaro.org>
 <ZQr2cTMz1-PsOMRP@e110455-lin.cambridge.arm.com>
 <20230920155624.1934eb34@collabora.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20230920155624.1934eb34@collabora.com>
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,
	RCVD_IN_DNSWL_BLOCKED,SPF_HELO_NONE,SPF_NONE autolearn=ham
	autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
	lindbergh.monkeyblade.net

On Wed, Sep 20, 2023 at 03:56:24PM +0200, Boris Brezillon wrote:
> On Wed, 20 Sep 2023 14:41:05 +0100
> Liviu Dudau <Liviu.Dudau@arm.com> wrote:
> 
> > > 
> > > Please describe also power domains - constrains and names.  
> > 
> > I'm not sure the power domains and how to handle them have been
> > entirely settled for Rockchip, hence why they were not included. Will
> > check with Collabora to see if they have anything to add here,
> 
> On rk3588, it's just one power domain feeding all GPU blocks.

Not sure if this has been missed, but earlier in the file there is an
entry for power-domains and power-domain-names, but with only a minimum
of requirements and no mandate on the actual names.

Best regards,
Liviu

> 
> > but
> > for non-Rockchip platforms (like Juno with FPGAs) the constraints
> > are going to be different.

-- 
====================
| I would like to |
| fix the world,  |
| but they're not |
| giving me the   |
 \ source code!  /
  ---------------
    ¯\_(ツ)_/¯

