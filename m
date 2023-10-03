Return-Path: <devicetree+bounces-5409-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 121847B6408
	for <lists+devicetree@lfdr.de>; Tue,  3 Oct 2023 10:27:42 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sv.mirrors.kernel.org (Postfix) with ESMTP id B8178281544
	for <lists+devicetree@lfdr.de>; Tue,  3 Oct 2023 08:27:40 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 903AFDDA4;
	Tue,  3 Oct 2023 08:27:39 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0B4AAD267
	for <devicetree@vger.kernel.org>; Tue,  3 Oct 2023 08:27:37 +0000 (UTC)
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.88])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 34669A1;
	Tue,  3 Oct 2023 01:27:36 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
  d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
  t=1696321657; x=1727857657;
  h=date:from:to:cc:subject:message-id:references:
   mime-version:in-reply-to;
  bh=Np7mk6/x/cZ6QoBA0cNd7B9kSY5wDcUu6hSpxiS7lYs=;
  b=W+wpn2+daaxa0auL4+MFxNRlR1jv+xADPDd3S7wS7VN/fe1MybZhpFpc
   fYMXs63EDQg995eeGkoZe4MMSLOHQ5pQ+05of0QgQ1zDaOAwVVne9Z0yy
   GdCQZ+Aa01SCNxU37Mp8oUu1cfuw3DqxfPau1BDw9uE4jzoFbw08s2/Se
   aVbsoaFZ5yRdygf4XKatRgSSwmDwHKjE0eniHoK848DLU4w0mKudjeEZe
   hVwGEiMv3XGj4nL0nqrpMz13Sv1MW9ovUGbra6H4SgZzF2gTaX1mnJIr9
   bNahcZ+3NuWQf9cGpzMseWmzFCV7aTvcJ9rp4AO1cXUlBTo9YXW1ErkLT
   g==;
X-IronPort-AV: E=McAfee;i="6600,9927,10851"; a="413738667"
X-IronPort-AV: E=Sophos;i="6.03,196,1694761200"; 
   d="scan'208";a="413738667"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
  by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 03 Oct 2023 01:27:37 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10851"; a="780225936"
X-IronPort-AV: E=Sophos;i="6.03,196,1694761200"; 
   d="scan'208";a="780225936"
Received: from turnipsi.fi.intel.com (HELO kekkonen.fi.intel.com) ([10.237.72.44])
  by orsmga008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 03 Oct 2023 01:27:33 -0700
Received: from kekkonen.localdomain (localhost [127.0.0.1])
	by kekkonen.fi.intel.com (Postfix) with SMTP id 36D0F12060C;
	Tue,  3 Oct 2023 11:27:30 +0300 (EEST)
Date: Tue, 3 Oct 2023 08:27:30 +0000
From: Sakari Ailus <sakari.ailus@linux.intel.com>
To: Jacopo Mondi <jacopo.mondi@ideasonboard.com>
Cc: linux-media@vger.kernel.org, devicetree@vger.kernel.org,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Laurent Pinchart <laurent.pinchart@ideasonboard.com>,
	Fabio Estevam <festevam@gmail.com>, martink@posteo.de
Subject: Re: [PATCH v3 1/7] media: dt-bindings: hynix,hi846: Add
 video-interface-device properties
Message-ID: <ZRvQckwdt9modLss@kekkonen.localdomain>
References: <20230930145951.23433-1-jacopo.mondi@ideasonboard.com>
 <20230930145951.23433-2-jacopo.mondi@ideasonboard.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20230930145951.23433-2-jacopo.mondi@ideasonboard.com>
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,DKIM_VALID_EF,RCVD_IN_DNSWL_BLOCKED,
	RCVD_IN_MSPIKE_H3,RCVD_IN_MSPIKE_WL,SPF_HELO_NONE,SPF_NONE
	autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
	lindbergh.monkeyblade.net

Hi Jacopo,

On Sat, Sep 30, 2023 at 04:59:45PM +0200, Jacopo Mondi wrote:
> Allow properties from video-interface-device.yaml for the SK Hynix Hi-846
> sensor.
> 
> All properties specified in video-interface-device.yaml schema are
> valid, so make them accepted by changing "additionalProperties: false"
> to "unevaluatedProperties: false" at the schema top-level.

The patch seems fine to me, but I wonder if we should change the title of
video-interface-devices.yaml (it's plural) to something that refers to
camera sensors, and possibly split it. It's currently not relevant for
other types of devices.

-- 
Regards,

Sakari Ailus

