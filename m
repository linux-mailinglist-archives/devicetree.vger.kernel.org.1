Return-Path: <devicetree+bounces-137195-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 463D3A07F20
	for <lists+devicetree@lfdr.de>; Thu,  9 Jan 2025 18:44:52 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 4B8711621A5
	for <lists+devicetree@lfdr.de>; Thu,  9 Jan 2025 17:44:50 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 7DFD21922ED;
	Thu,  9 Jan 2025 17:44:47 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=ti.com header.i=@ti.com header.b="b3Odd8fC"
X-Original-To: devicetree@vger.kernel.org
Received: from fllvem-ot04.ext.ti.com (fllvem-ot04.ext.ti.com [198.47.19.246])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 77D1618C93C;
	Thu,  9 Jan 2025 17:44:45 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=198.47.19.246
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736444687; cv=none; b=BiEjKoMhaSjCDM3baFw9/G5fq2sQlNxe6gMlPXyHQQvzxBR/ocTeU3ujKkiI6j/OvLD0wEC5gy5/kr3Mb5pIQ6prYqS6U+ycluJvd7+zWr9+q6mYYcH1pemgiDY5QbXRrHDdDaoNptkXCyaQq534uJgaMaQfKtcUgEBfRxbUXwc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736444687; c=relaxed/simple;
	bh=H3RsMtQ/zKwyakaNedqtyJcU7K/Z+DkOPTEApOf7dDM=;
	h=Date:From:To:CC:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=slL9Dx0dWRAMIgF3sk+CI0mUpqStp+/BsQPs0X1EaCNdIhwf0IfaNBsK2F4KhtY0ij2sLF/Lxa/OYW/vULjlx5n0ofvCvu9TmNYIxfd5ptesp6tuQ0h5zCNVwji+tS0Q61tQn6uuAUcJ03jxwLzu+7mgPbjD8VEFZH1zpJ3U7hw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=ti.com; spf=pass smtp.mailfrom=ti.com; dkim=pass (1024-bit key) header.d=ti.com header.i=@ti.com header.b=b3Odd8fC; arc=none smtp.client-ip=198.47.19.246
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=ti.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=ti.com
Received: from fllv0034.itg.ti.com ([10.64.40.246])
	by fllvem-ot04.ext.ti.com (8.15.2/8.15.2) with ESMTPS id 509HidtP3193060
	(version=TLSv1.2 cipher=DHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
	Thu, 9 Jan 2025 11:44:39 -0600
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
	s=ti-com-17Q1; t=1736444679;
	bh=9/aeQ0SmN9ckvhhXxxG1o/4+2WE4rBItBoD6Q9SjHVM=;
	h=Date:From:To:CC:Subject:References:In-Reply-To;
	b=b3Odd8fCdhXk11gHRGneyhJucj1PLIxNwBuKbMjzFTEfxndgJvmJK93x3+Gx2aQXD
	 7/Woy8UDtsaOEWbbuVA/9hQpgUXXqwaqxbhV71y1qJrati62rK/jx8/LPlOeZsdUi9
	 UDDFZ4A2Rum6oV0EBEk9N4samcBeYzj/NZ6Q1Tyk=
Received: from DFLE100.ent.ti.com (dfle100.ent.ti.com [10.64.6.21])
	by fllv0034.itg.ti.com (8.15.2/8.15.2) with ESMTPS id 509HidcF115876
	(version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
	Thu, 9 Jan 2025 11:44:39 -0600
Received: from DFLE103.ent.ti.com (10.64.6.24) by DFLE100.ent.ti.com
 (10.64.6.21) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.2507.23; Thu, 9
 Jan 2025 11:44:38 -0600
Received: from lelvsmtp5.itg.ti.com (10.180.75.250) by DFLE103.ent.ti.com
 (10.64.6.24) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.2507.23 via
 Frontend Transport; Thu, 9 Jan 2025 11:44:38 -0600
Received: from localhost (bb.dhcp.ti.com [128.247.81.12])
	by lelvsmtp5.itg.ti.com (8.15.2/8.15.2) with ESMTP id 509Hictj125965;
	Thu, 9 Jan 2025 11:44:38 -0600
Date: Thu, 9 Jan 2025 11:44:38 -0600
From: Bryan Brattlof <bb@ti.com>
To: Krzysztof Kozlowski <krzk@kernel.org>
CC: Nishanth Menon <nm@ti.com>, Vignesh Raghavendra <vigneshr@ti.com>,
        Tero
 Kristo <kristo@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof
 Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        <linux-arm-kernel@lists.infradead.org>, <devicetree@vger.kernel.org>,
        <linux-kernel@vger.kernel.org>
Subject: Re: [PATCH v2 3/3] arm64: dts: ti: k3-am62l: add initial reference
 board file
Message-ID: <20250109174438.w4nwmvk3yf6in2kl@bryanbrattlof.com>
X-PGP-Fingerprint: D3D1 77E4 0A38 DF4D 1853 FEEF 41B9 0D5D 71D5 6CE0
References: <20250108-am62lx-v2-0-581285a37d8f@ti.com>
 <20250108-am62lx-v2-3-581285a37d8f@ti.com>
 <wbi7xppldoroq2okv4s43njug7x2yzgvnkhtjrtsij77fn6vsv@zzzzq6qzfeyh>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Disposition: inline
In-Reply-To: <wbi7xppldoroq2okv4s43njug7x2yzgvnkhtjrtsij77fn6vsv@zzzzq6qzfeyh>
X-C2ProcessedOrg: 333ef613-75bf-4e12-a4b1-8e3623f5dcea

Hi Krzysztof!

On January  9, 2025 thus sayeth Krzysztof Kozlowski:
> On Wed, Jan 08, 2025 at 04:51:55PM -0600, Bryan Brattlof wrote:
> > +	chosen {
> > +		stdout-path = &main_uart0;
> > +	};
> > +
> > +	memory@80000000 {
> > +		reg = <0x00000000 0x80000000 0x00000000 0x80000000>;
> > +		device_type = "memory";
> > +		bootph-all;
> > +	};
> > +};
> > +
> > +&pmx0 {
> > +	main_uart0_pins_default: main_uart0-default-pins {
> 
> Avoid underscore in node names.
> 

Ah thanks! yeah apparently I didn't pay enough attention when updating 
this node. Thanks for the review

~Bryan

