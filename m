Return-Path: <devicetree+bounces-4027-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 786267B116A
	for <lists+devicetree@lfdr.de>; Thu, 28 Sep 2023 06:11:03 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sv.mirrors.kernel.org (Postfix) with ESMTP id 250E02816E9
	for <lists+devicetree@lfdr.de>; Thu, 28 Sep 2023 04:11:02 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 0459A79D1;
	Thu, 28 Sep 2023 04:11:01 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5EFE179CC
	for <devicetree@vger.kernel.org>; Thu, 28 Sep 2023 04:10:59 +0000 (UTC)
Received: from fllv0015.ext.ti.com (fllv0015.ext.ti.com [198.47.19.141])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 09DCBBF;
	Wed, 27 Sep 2023 21:10:55 -0700 (PDT)
Received: from lelv0266.itg.ti.com ([10.180.67.225])
	by fllv0015.ext.ti.com (8.15.2/8.15.2) with ESMTP id 38S4Aiov117659;
	Wed, 27 Sep 2023 23:10:44 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
	s=ti-com-17Q1; t=1695874244;
	bh=bt1sQeXfy1T61I9b+1pqO9js8bv3L8AdUBu+kfOeTh0=;
	h=Date:From:To:CC:Subject:References:In-Reply-To;
	b=ZKpdjYgnolazY97BQiyBgRlJmJphVMW0cR1XelfImEY78JExNbEZcG8ZXtK2j0VC6
	 AXDw4eU56I4iTZ5cWAK4qdqcs+HJi7/+revVpbwt+HtQ9QW+KX0KeeIduf0lOlN3wZ
	 26XKTBolCHJIE5t8oIn4YX//FMhnQLJb2sFWt9As=
Received: from DFLE105.ent.ti.com (dfle105.ent.ti.com [10.64.6.26])
	by lelv0266.itg.ti.com (8.15.2/8.15.2) with ESMTPS id 38S4Ain0085858
	(version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
	Wed, 27 Sep 2023 23:10:44 -0500
Received: from DFLE111.ent.ti.com (10.64.6.32) by DFLE105.ent.ti.com
 (10.64.6.26) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.2507.23; Wed, 27
 Sep 2023 23:10:43 -0500
Received: from fllv0040.itg.ti.com (10.64.41.20) by DFLE111.ent.ti.com
 (10.64.6.32) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.2507.23 via
 Frontend Transport; Wed, 27 Sep 2023 23:10:43 -0500
Received: from localhost (ileaxei01-snat.itg.ti.com [10.180.69.5])
	by fllv0040.itg.ti.com (8.15.2/8.15.2) with ESMTP id 38S4AhUr129758;
	Wed, 27 Sep 2023 23:10:43 -0500
Date: Wed, 27 Sep 2023 23:10:43 -0500
From: Nishanth Menon <nm@ti.com>
To: Keerthy <j-keerthy@ti.com>
CC: <robh+dt@kernel.org>, <vigneshr@ti.com>, <conor+dt@kernel.org>,
        <kristo@kernel.org>, <krzysztof.kozlowski+dt@linaro.org>,
        <u-kumar1@ti.com>, <linux-arm-kernel@lists.infradead.org>,
        <devicetree@vger.kernel.org>, <linux-kernel@vger.kernel.org>
Subject: Re: [PATCH RESEND v6 7/7] arm64: dts: ti: k3-j712s2-mcu: Add the mcu
 domain watchdog instances
Message-ID: <20230928041043.enn5jomedgybe4w7@frugally>
References: <20230928011416.2900-1-j-keerthy@ti.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Disposition: inline
In-Reply-To: <20230928011416.2900-1-j-keerthy@ti.com>
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,
	RCVD_IN_DNSWL_BLOCKED,SPF_HELO_PASS,SPF_PASS autolearn=ham
	autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
	lindbergh.monkeyblade.net

On 06:44-20230928, Keerthy wrote:
> There are totally 2 instances of watchdog module in MCU domain.
> These instances are coupled with the MCU domain R5F instances.
> Disabling them as they are not used by Linux.
> 
> Signed-off-by: Keerthy <j-keerthy@ti.com>
> ---
> 
> Changes:
> 
>   * Corrected subject.

Thank you. But, I'd suggest a cooling off period of a week before you
post another version to the list (and that will allow others to comment
as well if required).

While you do that, please don't send a partial patch resend unless
requested by maintainer and the maintainer is willing to handle the
extra step of hand cherry-picking the patch.

At least in my personal workflow with mutt scripts integrated to b4 the
way I do it.. it breaks my work flow.

https://gist.github.com/nmenon/98b936633bb738cf867ae33ccf5ddd5f

https://lpc.events/event/11/contributions/983/attachments/759/1421/Doing%20more%20with%20lore%20and%20b4.pdf

If you haven't converted to b4 and lei, I suggest looking at it ;)


-- 
Regards,
Nishanth Menon
Key (0xDDB5849D1736249D) / Fingerprint: F8A2 8693 54EB 8232 17A3  1A34 DDB5 849D 1736 249D

