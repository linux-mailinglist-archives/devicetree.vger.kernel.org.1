Return-Path: <devicetree+bounces-103255-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id C226397A3F0
	for <lists+devicetree@lfdr.de>; Mon, 16 Sep 2024 16:14:53 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 0227EB2AB8A
	for <lists+devicetree@lfdr.de>; Mon, 16 Sep 2024 14:14:34 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 606FE15689A;
	Mon, 16 Sep 2024 14:14:26 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=redhat.com header.i=@redhat.com header.b="cO+Hff7h"
X-Original-To: devicetree@vger.kernel.org
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.129.124])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C531EBE6C
	for <devicetree@vger.kernel.org>; Mon, 16 Sep 2024 14:14:24 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=170.10.129.124
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1726496066; cv=none; b=Te2nIYvzkjeYvJVpheClcrkON6tdCsb4E4hwpZhLOeCNcKhlh6cGHJORtN/+lyboIlkkjsuO1RfPoJzgrqRu9xLd3RskvVKtx4viAKVpHkLox4TZp86K/JGnkc5M0j6MpYMPOwlgK7++Mx/eKtVNbasrZdY1n3PCxhoBIzCK5Mc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1726496066; c=relaxed/simple;
	bh=p8Qw/Z3EWptB753IvVwwQTS7CehLpJ7ecSD0INIPXEM=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=QH9x+QuMQh27QRLkEamWj/JDwK2ZgFawjKr5cOzqhCrWoPbGjwFZexGf9zHhl0nDxVem2btdRvDoeHEetMfT0pIyZoL1WFLQQXyzvzcLWCTZtMNRlvSjftYy/ByttM1+Gquwgi+DkB2N1OhycB8P+FnfgadxQJm7RMm28xIjlfs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=redhat.com; spf=pass smtp.mailfrom=redhat.com; dkim=pass (1024-bit key) header.d=redhat.com header.i=@redhat.com header.b=cO+Hff7h; arc=none smtp.client-ip=170.10.129.124
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=redhat.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=redhat.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1726496063;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 in-reply-to:in-reply-to:references:references;
	bh=AcF8APrk91tCbcYltqs1GD/SqMXA9dDCBkUimLG4iT0=;
	b=cO+Hff7hESlKcaSQGBMBaDGNgKeCFpD+je/9MRtIs2oaIKpsBiPkfgBOKhduhwe1bUqIkC
	IstvdEJkHE3jb53/DLNB0mEgIAgZfBSQwFx4QP5aCyiK/HDBISs2XcWe2KduRfysX3fLMT
	9SderLc1lAIzuLzVaMkOrvjbdIZK0SU=
Received: from mail-qv1-f69.google.com (mail-qv1-f69.google.com
 [209.85.219.69]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-617-5IJJt1DaMAKhSg4Lwbp7IQ-1; Mon, 16 Sep 2024 10:14:20 -0400
X-MC-Unique: 5IJJt1DaMAKhSg4Lwbp7IQ-1
Received: by mail-qv1-f69.google.com with SMTP id 6a1803df08f44-6c36310588fso115796416d6.1
        for <devicetree@vger.kernel.org>; Mon, 16 Sep 2024 07:14:20 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1726496060; x=1727100860;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=AcF8APrk91tCbcYltqs1GD/SqMXA9dDCBkUimLG4iT0=;
        b=FXLMacaNjJw3S1MElTJ6IUGB5gfmfm6r10Ufgeym6Cr2Y1rB5hANVnd78DWb+R6Al7
         ih4mFqaAH73L7Ws89ntU1nT9SDg1E0D2D57jDRoH6LT2rnfKJQgs4bkzBSZ/u+X3pKUX
         IbS8IsxHGz/XHj10PN20o5x1yVc6EjDhKmmHH3pVKFAJBWU+Fu4KoWfMWYs7c968wpO+
         zmFIiDUNbQrfe5ePWPLvMbCPr0YM/i3+XsJ0BeUbsTVjyKbK6ubjit7lGf2R6FOjJ2gU
         a/U7yhtEo65A/dyihkomlNvRTxq8aWSljdUQBa2gYGE1c6Op2WYlEGITRiisTYi2dhpl
         tJxg==
X-Forwarded-Encrypted: i=1; AJvYcCWctGIMMIsInBg/BJf7P0DA1G8a1TE9CUzh5dE9RQEouwlfh3sYyQyFR6I7NQC8Tle1p1N9RcBOV5fW@vger.kernel.org
X-Gm-Message-State: AOJu0YwSXbhJMlz9EwSjsC7WVN3zMNC2MljJdPUHMzQkfcIYMs9XKiKl
	EXoZVSo63gqrxwGwvxLHIeNnOvckKjAjQFgARmVz0CaSdEaUPyIK3Bda18nlptXCP1JGpq/Ab8r
	MgUWgJ3/0b/5lF3gFOfyikK9PjzJ+wlK3mPHrXOiC4ZHmZYLt8dCKFalRvOw=
X-Received: by 2002:a05:6214:1ccb:b0:6b5:1d2f:1d3 with SMTP id 6a1803df08f44-6c554b1cdddmr398070536d6.0.1726496059821;
        Mon, 16 Sep 2024 07:14:19 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IHqL/oYOimlYmlJ6CYNue/wCoB+Q5zjZ6hGSjMzwDsJkqgqG7vOoSeuPSCijo4hPmZayqJz8Q==
X-Received: by 2002:a05:6214:1ccb:b0:6b5:1d2f:1d3 with SMTP id 6a1803df08f44-6c554b1cdddmr398070036d6.0.1726496059363;
        Mon, 16 Sep 2024 07:14:19 -0700 (PDT)
Received: from x1gen2nano ([2600:1700:1ff0:d0e0::43])
        by smtp.gmail.com with ESMTPSA id 6a1803df08f44-6c58c625f50sm24683996d6.3.2024.09.16.07.14.18
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 16 Sep 2024 07:14:18 -0700 (PDT)
Date: Mon, 16 Sep 2024 09:14:16 -0500
From: Andrew Halaney <ahalaney@redhat.com>
To: Beleswar Prasad Padhi <b-padhi@ti.com>
Cc: Nishanth Menon <nm@ti.com>, Vignesh Raghavendra <vigneshr@ti.com>, 
	Tero Kristo <kristo@kernel.org>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, Keerthy <j-keerthy@ti.com>, 
	Neha Malcom Francis <n-francis@ti.com>, Eric Chanudet <echanude@redhat.com>, 
	Enric Balletbo <eballetb@redhat.com>, Udit Kumar <u-kumar1@ti.com>, 
	linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH v2 1/2] arm64: dts: ti: k3-j784s4-evm: Mark tps659413
 regulators as bootph-all
Message-ID: <rjc2cbkzg6zjsue66cvy7lk7qc7vn6yjdqcjzrbzcsf7c2jdo5@lcy7dntjvzau>
References: <20240911-j784s4-tps6594-bootph-v2-0-a83526264ab1@redhat.com>
 <20240911-j784s4-tps6594-bootph-v2-1-a83526264ab1@redhat.com>
 <c4ace228-ea32-4760-b6af-f7555b68063a@ti.com>
 <zlgo4e5qwg352tsadvw43oj7vlekefuqe66ckokyo6aba47z6o@2wwbyrfjkstz>
 <9aedf384-207a-4eb7-a371-70bbe76ab5af@ti.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <9aedf384-207a-4eb7-a371-70bbe76ab5af@ti.com>

On Mon, Sep 16, 2024 at 04:14:43PM GMT, Beleswar Prasad Padhi wrote:
> 
> On 14/09/24 00:27, Andrew Halaney wrote:
> > On Fri, Sep 13, 2024 at 04:27:47PM GMT, Beleswar Prasad Padhi wrote:
> > > Hi Andrew,
> > > 
> > > On 11/09/24 22:49, Andrew Halaney wrote:
> > > > In order for the MCU domain to access this PMIC, a regulator
> > > > needs to be marked appropriately otherwise it is not seen by SPL and
> > > > therefore not configured.
> > > > 
> > > > This is necessary if the MCU domain is to program the TPS6594 MCU ESM
> > > > state machine, which is required to wire up the watchdog in a manner
> > > > that will reset the board.
> > > > 
> > > > Signed-off-by: Andrew Halaney <ahalaney@redhat.com>
> > > > ---
> > > >    arch/arm64/boot/dts/ti/k3-j784s4-evm.dts | 8 ++++++++
> > > >    1 file changed, 8 insertions(+)
> > > > 
> > > > diff --git a/arch/arm64/boot/dts/ti/k3-j784s4-evm.dts b/arch/arm64/boot/dts/ti/k3-j784s4-evm.dts
> > > > index 6695ebbcb4d0..6ed628c2884e 100644
> > > > --- a/arch/arm64/boot/dts/ti/k3-j784s4-evm.dts
> > > > +++ b/arch/arm64/boot/dts/ti/k3-j784s4-evm.dts
> > > > @@ -663,6 +663,7 @@ tps659413: pmic@48 {
> > > >    		regulators {
> > > >    			bucka12: buck12 {
> > > > +				bootph-all;
> > > >    				regulator-name = "vdd_ddr_1v1";
> > > >    				regulator-min-microvolt = <1100000>;
> > > >    				regulator-max-microvolt = <1100000>;
> > > 
> > > In my opinion, bootph-all property should come after other standard
> > > properties like regulator-name etc., as it is least important to Linux. Same
> > > comment for other nodes wherever applicable. What is your opinion?
> > > 
> > > 
> > > https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git/tree/Documentation/devicetree/bindings/dts-coding-style.rst#n130
> > I think that does align better with the dts-coding-style doc!
> > 
> > Looking at the tree though, the standard currently in the TI folder
> > is to put it first. In my opinion if changing the ordering is desired
> > it should be done in one fell swoop (outside this series). I'd do
> 
> 
> There is a series[0] under review which takes care of this bootph- addition
> and order correction. In that series, looks like bootph- is placed at the
> end of the list of all standard properties. So, it is better if we align
> these patches to follow the same.
> 
> [0]: https://lore.kernel.org/all/20240814-b4-upstream-bootph-all-v4-2-f2b462000f25@ti.com/
> 

Ahh, ok. I'll post v3 with things ordered in that fashion!

Thanks,
Andrew


