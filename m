Return-Path: <devicetree+bounces-1685-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id E1CC47A75FE
	for <lists+devicetree@lfdr.de>; Wed, 20 Sep 2023 10:37:07 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 1719B1C20DD5
	for <lists+devicetree@lfdr.de>; Wed, 20 Sep 2023 08:37:07 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 7CAF28C00;
	Wed, 20 Sep 2023 08:37:04 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3DC875393
	for <devicetree@vger.kernel.org>; Wed, 20 Sep 2023 08:37:02 +0000 (UTC)
Received: from mx0b-001ae601.pphosted.com (mx0b-001ae601.pphosted.com [67.231.152.168])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id F2957A1
	for <devicetree@vger.kernel.org>; Wed, 20 Sep 2023 01:37:00 -0700 (PDT)
Received: from pps.filterd (m0077474.ppops.net [127.0.0.1])
	by mx0b-001ae601.pphosted.com (8.17.1.22/8.17.1.22) with ESMTP id 38K7981o027268;
	Wed, 20 Sep 2023 03:36:49 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=cirrus.com; h=
	date:from:to:cc:subject:message-id:references:mime-version
	:content-type:in-reply-to; s=PODMain02222019; bh=Jyhl8Y3oyKx0h61
	XhFzFxdqJ/5lcrhBpmC44A35uauo=; b=if5DCWGCmdPJwH1e6vLubzJLxpPLorJ
	HHEQqU8u2HKeJFlKUp/oGO9nDSTuSeyD/4xKrX2s3h0g21lnCeuGEVZZVFd8tZHB
	9Hv00LXIZG4LVMdWiS7wp3//4j+wWO6DL/p7vVCI5rEGIOF5oQGfFltKotmXhOrc
	Wg9j+2T+o4EQDVVUYmdJ2vx43YO9h1QeGQLFficEtxBhBoeYmITQpV4NlJ+2G/XU
	QvCDF2CZ62EAMKnW+gvt5nUxSguvnZvsIUnqf24xU30XfrFpWYyuYUlYvUxT+Ekx
	T5JCarzkVst47mj8rLeFw5wfFS+yv8E6sycBI3FuZ3IU9PA7oQaz7LQ==
Received: from ediex01.ad.cirrus.com ([84.19.233.68])
	by mx0b-001ae601.pphosted.com (PPS) with ESMTPS id 3t58shv53w-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Wed, 20 Sep 2023 03:36:49 -0500 (CDT)
Received: from ediex02.ad.cirrus.com (198.61.84.81) by ediex01.ad.cirrus.com
 (198.61.84.80) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.2.1118.37; Wed, 20 Sep
 2023 09:36:47 +0100
Received: from ediswmail.ad.cirrus.com (198.61.86.93) by
 anon-ediex02.ad.cirrus.com (198.61.84.81) with Microsoft SMTP Server id
 15.2.1118.37 via Frontend Transport; Wed, 20 Sep 2023 09:36:47 +0100
Received: from ediswmail.ad.cirrus.com (ediswmail.ad.cirrus.com [198.61.86.93])
	by ediswmail.ad.cirrus.com (Postfix) with ESMTP id C65882A1;
	Wed, 20 Sep 2023 08:36:47 +0000 (UTC)
Date: Wed, 20 Sep 2023 08:36:47 +0000
From: Charles Keepax <ckeepax@opensource.cirrus.com>
To: Rob Herring <robh@kernel.org>
CC: <broonie@kernel.org>, <lgirdwood@gmail.com>,
        <krzysztof.kozlowski+dt@linaro.org>, <alsa-devel@alsa-project.org>,
        <devicetree@vger.kernel.org>, <patches@opensource.cirrus.com>
Subject: Re: [PATCH 1/5] dt-bindings: ASoC: cirrus,cs42l43: Update a couple
 of default values
Message-ID: <20230920083647.GD103419@ediswmail.ad.cirrus.com>
References: <20230919103116.580305-1-ckeepax@opensource.cirrus.com>
 <20230919103116.580305-2-ckeepax@opensource.cirrus.com>
 <20230919192302.GA51154-robh@kernel.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Disposition: inline
In-Reply-To: <20230919192302.GA51154-robh@kernel.org>
User-Agent: Mutt/1.5.21 (2010-09-15)
X-Proofpoint-GUID: Ah6d-omvyVXmVaEwUDIeH2zF7LmXg4xL
X-Proofpoint-ORIG-GUID: Ah6d-omvyVXmVaEwUDIeH2zF7LmXg4xL
X-Proofpoint-Spam-Reason: safe
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_EF,RCVD_IN_DNSWL_BLOCKED,SPF_HELO_NONE,SPF_PASS
	autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
	lindbergh.monkeyblade.net

On Tue, Sep 19, 2023 at 02:23:02PM -0500, Rob Herring wrote:
> On Tue, Sep 19, 2023 at 11:31:12AM +0100, Charles Keepax wrote:
> > The bias sense is being enabled by default in the driver, and the
> > default detect time is being dropped slightly. Update the binding
> > document to match.
> 
> That's not really a compatible change. If I wrote my DT expecting bias 
> sense was disabled by default then the OS changes behavior, my 
> platform behavior would change. Maybe that doesn't matter here? IDK. 
> It's on you if this breaks anyone, so:
> 
> Acked-by: Rob Herring <robh@kernel.org>
> 

Yeah I appreciate that, but this should be fine, the part is very
very new. The only systems using the part are still in development.

Thanks,
Charles

