Return-Path: <devicetree+bounces-220813-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id D99D2B9AB40
	for <lists+devicetree@lfdr.de>; Wed, 24 Sep 2025 17:37:14 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id D73EC164026
	for <lists+devicetree@lfdr.de>; Wed, 24 Sep 2025 15:34:48 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 2008D3054F8;
	Wed, 24 Sep 2025 15:33:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=redhat.com header.i=@redhat.com header.b="FrVbhAZj"
X-Original-To: devicetree@vger.kernel.org
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.129.124])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 77DD92E54B3
	for <devicetree@vger.kernel.org>; Wed, 24 Sep 2025 15:33:51 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=170.10.129.124
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758728033; cv=none; b=qjHe0E2tx51swb55QWks0Z7DIlU7ddDkEQrco7dghwkG1WmXTKPzzxJplNv15d/fPZ/7KbQahGYgLILCvYQeGx/jpmVKOd9uqkKY/noS9cd9bk5mn5dtft7Pn0KjSRftpL2A0inE1GB1t1CD3mNWiD+mmtkXTsdn0VirtHd56HQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758728033; c=relaxed/simple;
	bh=wRch98PTr07OsPbOEWFR6ZR70W6lFXly25dnPdzBGHc=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=Dn8pbvA9z3iu6JC3/VeNR39PARtAoXeWjEgU23g2lALwO1wY/+VSNI3IjRvW1GQYcku8InbP/K1iK0kVOQ5hjehEPL8xYaGFpFmoB5vPibrpwvksML61FfAoDq8vuzkXXMm/G3oC7pCThYQnnie186dggxvscJdFGIzcM/2I9Ww=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=redhat.com; spf=pass smtp.mailfrom=redhat.com; dkim=pass (1024-bit key) header.d=redhat.com header.i=@redhat.com header.b=FrVbhAZj; arc=none smtp.client-ip=170.10.129.124
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=redhat.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=redhat.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1758728030;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 in-reply-to:in-reply-to:references:references;
	bh=ic7zvcyBVtaZcEmsf3hW05wAfmOMNZ5JL2VpkYQoXsc=;
	b=FrVbhAZjnj+3afecM9iyrE8dm4m7eM3bO9kNMWMYSajELoQ3LWp+5t/KXwf0DRetEtgIYJ
	9tvyr63oCjkhBxIpB7FEQtNngbjeciwlUJtVZXsW0/6ERUDfM5c3Mh7rIcDIR9VY98+h3q
	XauT2v1//eTopNsr1NuRTAn9tnroQxk=
Received: from mail-qk1-f200.google.com (mail-qk1-f200.google.com
 [209.85.222.200]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-597-JJBQPUoUOQyCYwty7wAPsA-1; Wed, 24 Sep 2025 11:33:48 -0400
X-MC-Unique: JJBQPUoUOQyCYwty7wAPsA-1
X-Mimecast-MFC-AGG-ID: JJBQPUoUOQyCYwty7wAPsA_1758728028
Received: by mail-qk1-f200.google.com with SMTP id af79cd13be357-81678866c0cso1022985a.2
        for <devicetree@vger.kernel.org>; Wed, 24 Sep 2025 08:33:48 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1758728028; x=1759332828;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=ic7zvcyBVtaZcEmsf3hW05wAfmOMNZ5JL2VpkYQoXsc=;
        b=d/4A7XWW5pSzzoYb88vvAV+4YRn3gQxf+iOUCio89QFVZsN3K4+KteGA8LPGU9zIIC
         +APfW/V5pMG3BWToJdhJoS9uerQCCN49ruZNqQBxoSS6oBSWrPXGsBzvESiwYQVbR/Vc
         tBOzCbjbwicBibxW9ztEABeWSt1isOravw0JYI/XSSy75s9RDAPU6VYAnR1FeusMynPO
         2CmMKl7cph7RGz/H7tPNYj7aJTobzmWNkg1G+42qpLYExCCnIKTS9fn3GJUKEbT3MgI1
         ZGbU4hJP6KDZ8rKBPoiKSDVI9eKGSjZMzY3AtlMmhkJ4XmodMUKHU9BTGsz/JJM36339
         Gs1w==
X-Forwarded-Encrypted: i=1; AJvYcCV2YwtY9A2WXK7mxEqlFToZYIKhPy9+mxKUeXtUhOWi1ZmTasrmjXK/GhaqQc2Ej5SqDyGRyjB7uxE8@vger.kernel.org
X-Gm-Message-State: AOJu0YzXDViwfrDA0VEF0e/sYC5WdVyK3IbWsHbjiHhwDndn4VuKvbFz
	1GDbHU3MekvMVY8SBRCy2JDfloDQ3wFCtlyRrxOI2FaDon4Fec3LiYEteGEbuKd4CBVaEcvzV5p
	h9sA5z411q1Rys0QrcB0tloS5Qt5p+x3ejtBUQR6m6qyw/Zrlyl4de/ZLqfCqT0o=
X-Gm-Gg: ASbGncsPN1x++TFnm3UWtF1CwEFKDved+u9a0NhbPZEIHOL1g30vVM3YuCs5L9+DSyr
	xX5shX/g/Y0qpDrXY6Wy167KuHgaxQMttm/rlTJr7u5e2G5OUVqYtlQ2q6fBLcygu5dVWlHCjnr
	kLxnCO3g+Z5EYuDbffXtsJUyNAo3SiKitnAclJAw3aMFUdlf1EfTu6m0sqJmI4/oDQBTOZJAVnv
	kgTAm7pIDeLiwzYlYc704+aH2ima6WVShQs130csxM3ZOMVJxtl+Qd65fEicBqo7WTrhSELj9kD
	DhVpmCi3kge/K9XrUUo7oAHXjOOs2Uzxh4GSVYWVoBetzy+qG2WPMM7S4MbAUMrtLrUUdA==
X-Received: by 2002:a05:620a:1a89:b0:828:1529:d028 with SMTP id af79cd13be357-85ae7cd4ac1mr7327685a.61.1758728028096;
        Wed, 24 Sep 2025 08:33:48 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IE7m0/cbnvCoTKElfyKlC9Akk8QQ848roxwkCAlIQudXokrBobnZdaunrFKeYAlTGXQPxdHhg==
X-Received: by 2002:a05:620a:1a89:b0:828:1529:d028 with SMTP id af79cd13be357-85ae7cd4ac1mr7322385a.61.1758728027583;
        Wed, 24 Sep 2025 08:33:47 -0700 (PDT)
Received: from redhat.com ([2600:382:8504:5608:ca95:838:d4f0:316f])
        by smtp.gmail.com with ESMTPSA id af79cd13be357-8363198b0fbsm1167921585a.50.2025.09.24.08.33.45
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 24 Sep 2025 08:33:46 -0700 (PDT)
Date: Wed, 24 Sep 2025 11:33:44 -0400
From: Brian Masney <bmasney@redhat.com>
To: Peng Fan <peng.fan@nxp.com>
Cc: Michael Turquette <mturquette@baylibre.com>,
	Stephen Boyd <sboyd@kernel.org>,
	Sudeep Holla <sudeep.holla@arm.com>,
	Cristian Marussi <cristian.marussi@arm.com>,
	Marco Felsch <m.felsch@pengutronix.de>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Dan Carpenter <dan.carpenter@linaro.org>,
	Geert Uytterhoeven <geert@linux-m68k.org>,
	"linux-clk@vger.kernel.org" <linux-clk@vger.kernel.org>,
	"linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
	"arm-scmi@vger.kernel.org" <arm-scmi@vger.kernel.org>,
	"linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>,
	"devicetree@vger.kernel.org" <devicetree@vger.kernel.org>
Subject: Re: [PATCH v4 0/5] clk: Support spread spectrum and use it in
 clk-scmi
Message-ID: <aNQPWO6pfA_3mmxf@redhat.com>
References: <20250915-clk-ssc-version1-v4-0-5a2cee2f0351@nxp.com>
 <PAXPR04MB8459265997E9822F17AD2BC0881CA@PAXPR04MB8459.eurprd04.prod.outlook.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <PAXPR04MB8459265997E9822F17AD2BC0881CA@PAXPR04MB8459.eurprd04.prod.outlook.com>
User-Agent: Mutt/2.2.14 (2025-02-20)

On Wed, Sep 24, 2025 at 02:44:21PM +0000, Peng Fan wrote:
> Hi Stephen,
> 
> > Subject: [PATCH v4 0/5] clk: Support spread spectrum and use it in clk-
> > scmi
> 
> Since clk-scmi.c for spread spectrum support needs some big changes,
> we may need to change scmi framework to make OEM extension
> in an elegant way. This will needs some time.
> 
> To patch 1-4, do you think is it ok to be in linux tree without patch 5?
> If yes, I will post V5 soon with your comments in patch 2 addressed.
> Otherwise I have to carry patch 1-4 in future clk-scmi patches.

This adds a new API, and there wouldn't be any users of it at this
point. Personally, I think it should probably wait and be merged as
one series. Unless there's another vendor that's ready to use this.

Brian


