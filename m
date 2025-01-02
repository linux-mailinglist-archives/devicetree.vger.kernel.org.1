Return-Path: <devicetree+bounces-135072-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 881229FFA28
	for <lists+devicetree@lfdr.de>; Thu,  2 Jan 2025 15:07:18 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 450E93A073B
	for <lists+devicetree@lfdr.de>; Thu,  2 Jan 2025 14:07:09 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 734351B4227;
	Thu,  2 Jan 2025 14:05:56 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=ti.com header.i=@ti.com header.b="gycPVSUA"
X-Original-To: devicetree@vger.kernel.org
Received: from fllvem-ot03.ext.ti.com (fllvem-ot03.ext.ti.com [198.47.19.245])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 87FB42A1AA;
	Thu,  2 Jan 2025 14:05:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=198.47.19.245
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1735826756; cv=none; b=PIVCa/Bg9kGICNCwVYCtg2f6G2d2pbHRi7u0HtuDzhgntgRY4UQFbbv01MDh6z86xTt/DNNFhyAzhZVqBMzSvfhKY/XlRTSxHcSXUWYfrqREHfOx0FbUFXDKtv2SAlppEyPWIHZqHz09mzwHjA/9hSq9Py6/oAh0Ak7b9YNouTA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1735826756; c=relaxed/simple;
	bh=nEq1t8HXsA6VAi+QsDN0eB0KmQLaKCcc/4o8hO6FX2c=;
	h=Date:From:To:CC:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=o7QSrlvFLUJ+SEHIA+oKcyve9rpEIl5f0DwuXF2Qxkgq5LUE7V7RQLhc+d+TuiYRnq1wMy1qmemuUS0qINy9rFM+h8Lia9Z6F2d1lIvPhFts5XNtI4qH0NE7u32tporM8/Qq66qBLj+BlsoZN3MqFgXsUIUytsvEQJk1eJkkhC4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=ti.com; spf=pass smtp.mailfrom=ti.com; dkim=pass (1024-bit key) header.d=ti.com header.i=@ti.com header.b=gycPVSUA; arc=none smtp.client-ip=198.47.19.245
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=ti.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=ti.com
Received: from fllv0034.itg.ti.com ([10.64.40.246])
	by fllvem-ot03.ext.ti.com (8.15.2/8.15.2) with ESMTPS id 502E5kQc1895418
	(version=TLSv1.2 cipher=DHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
	Thu, 2 Jan 2025 08:05:46 -0600
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
	s=ti-com-17Q1; t=1735826746;
	bh=cjQPRNYsvpfmiqPX7ydNdwdrzjsq5HRAclMslwO0+BU=;
	h=Date:From:To:CC:Subject:References:In-Reply-To;
	b=gycPVSUA1KV0/FA3lNCwfi/2uWd7+QD1KsQ2PWvDSbbLuyZx83IYGlr9Ue+7E/aTa
	 FZKMyYfLT6oZuvEaRToUSHvdiFt7TtUEOIgzoC0Zp0ArFThrU01IJ1i2oJrRWURi+S
	 ligvvbB4CmO/sNZikph/hT4qBzOBFIDipTLi5CZw=
Received: from DFLE104.ent.ti.com (dfle104.ent.ti.com [10.64.6.25])
	by fllv0034.itg.ti.com (8.15.2/8.15.2) with ESMTPS id 502E5ke1067338
	(version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
	Thu, 2 Jan 2025 08:05:46 -0600
Received: from DFLE107.ent.ti.com (10.64.6.28) by DFLE104.ent.ti.com
 (10.64.6.25) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.2507.23; Thu, 2
 Jan 2025 08:05:46 -0600
Received: from lelvsmtp5.itg.ti.com (10.180.75.250) by DFLE107.ent.ti.com
 (10.64.6.28) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.2507.23 via
 Frontend Transport; Thu, 2 Jan 2025 08:05:46 -0600
Received: from localhost (uda0492258.dhcp.ti.com [10.24.72.104])
	by lelvsmtp5.itg.ti.com (8.15.2/8.15.2) with ESMTP id 502E5jDI038233;
	Thu, 2 Jan 2025 08:05:46 -0600
Date: Thu, 2 Jan 2025 19:35:44 +0530
From: Siddharth Vadapalli <s-vadapalli@ti.com>
To: Enric Balletbo i Serra <eballetb@redhat.com>
CC: Nishanth Menon <nm@ti.com>, Vignesh Raghavendra <vigneshr@ti.com>,
        Tero
 Kristo <kristo@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof
 Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        <linux-arm-kernel@lists.infradead.org>, <devicetree@vger.kernel.org>,
        <linux-kernel@vger.kernel.org>, <s-vadapalli@ti.com>
Subject: Re: [PATCH v2] arm64: dts: ti: k3-am69-sk: Add USB SuperSpeed support
Message-ID: <5ize7pereukviume62mu2knokpziso3c37gqpft56v6d7ppx5y@3lapih7ncs2f>
References: <20241204-am69sk-dt-usb-v2-1-d59b2ac45c6e@redhat.com>
 <c73edt6zrcg2qx6jxvlpszjlpb62pgq6ypytsur27ep4biq6tn@olk7mtnqk4s4>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Disposition: inline
In-Reply-To: <c73edt6zrcg2qx6jxvlpszjlpb62pgq6ypytsur27ep4biq6tn@olk7mtnqk4s4>
X-C2ProcessedOrg: 333ef613-75bf-4e12-a4b1-8e3623f5dcea

On Thu, Jan 02, 2025 at 07:23:10PM +0530, Siddharth Vadapalli wrote:
> On Wed, Dec 04, 2024 at 12:05:26PM +0100, Enric Balletbo i Serra wrote:
> > From: Dasnavis Sabiya <sabiya.d@ti.com>
> > 
> > AM69 SK board has two stacked USB3 connectors:
> >    1. USB3 (Stacked TypeA + TypeC)
> >    2. USB3 TypeA Hub interfaced through TUSB8041.
> > 
> > The board uses SERDES0 Lane 3 for USB3 IP. So update the
> > SerDes lane info for PCIe and USB. Add the pin mux data
> 
> nitpick: s/SerDes/SERDES to keep it consistent with the convention
> followed at all other places.
> 
> > and enable USB 3.0 support with its respective SERDES settings.
> > 
> > Signed-off-by: Dasnavis Sabiya <sabiya.d@ti.com>
> > Signed-off-by: Enric Balletbo i Serra <eballetb@redhat.com>
> 
> Reviewed-by: Siddharth Vadapalli <s-vadapalli@ti.com>

I failed to notice it, but Roger's comment on the v1 patch at:
https://lore.kernel.org/all/5af2e2fa-3f60-419e-be3e-74771a993de6@kernel.org/
hasn't been addressed in this patch.

J784S4_IOPAD(0x0EC, PIN_OUTPUT, 6) /* (AN37) TIMER_IO1.USB0_DRVVBUS */
should be
J784S4_IOPAD(0x0ec, PIN_OUTPUT, 6) /* (AN37) TIMER_IO1.USB0_DRVVBUS */

Please fix this.

Regards,
Siddharth.

