Return-Path: <devicetree+bounces-217616-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id E5BEAB587F6
	for <lists+devicetree@lfdr.de>; Tue, 16 Sep 2025 01:00:08 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 4BC001AA83D7
	for <lists+devicetree@lfdr.de>; Mon, 15 Sep 2025 23:00:13 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 23BC22DA769;
	Mon, 15 Sep 2025 22:59:43 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=ziepe.ca header.i=@ziepe.ca header.b="Da8S1gz4"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-oa1-f47.google.com (mail-oa1-f47.google.com [209.85.160.47])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8DC9B2DC786
	for <devicetree@vger.kernel.org>; Mon, 15 Sep 2025 22:59:41 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.160.47
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757977183; cv=none; b=D44DR1/kOTrxHp4vMe+dKx7tZxfAaWVDa6eNiIPMbOlWcure0Co5YG3gwVwxUIRpFD0bJ1vJW5o/WuNKKlRWol0oXM7r6LEwK0mI6h/dAwx6LN3E+y1mhB/ptAc9/l8fby9SCu6/esrl/F7Plvcaap00NdF76FwxnTWgE1tC7rE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757977183; c=relaxed/simple;
	bh=MK5JK3spo/EOu3EOGiWabvNo20/6TWA7kB8HJQJpF0w=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=p1ufWtHnr3/YRrZa2tw83e/GlmbYo/C5bcEwospTjzfRDhHQlu8adWNf7I2fO5l7EzS7dg0SALWup4RO7mEKZ23w//eQBOOTPtNiBuQ4/kkcyEzjA5qau6MfLZU8ECiKTqbYykp01WEIHT+9KtFLnT/nMfjS7giKFBNXloZrWNU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=ziepe.ca; spf=pass smtp.mailfrom=ziepe.ca; dkim=pass (2048-bit key) header.d=ziepe.ca header.i=@ziepe.ca header.b=Da8S1gz4; arc=none smtp.client-ip=209.85.160.47
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=ziepe.ca
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=ziepe.ca
Received: by mail-oa1-f47.google.com with SMTP id 586e51a60fabf-30ccea94438so3653729fac.2
        for <devicetree@vger.kernel.org>; Mon, 15 Sep 2025 15:59:41 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ziepe.ca; s=google; t=1757977180; x=1758581980; darn=vger.kernel.org;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:from:to
         :cc:subject:date:message-id:reply-to;
        bh=aTycPbHlQtDBtjOvMMJ3SZ6uhxSiX0nO4WaEP9DHCc4=;
        b=Da8S1gz4iakIeaStzHB0xDZFXg7T7vcxTHVB6gXN6BMldbURN36gDQFLrIE4ttFtEp
         R/HBDstAaFNDuHkVn0gOv5avorcEPXegCptwc3OL1BBiC/zZ1NmnTVlwKh4A8BBu6loN
         eiXCrdVaBOiImi21dMuq/soQRB/3Xq03iDD1HyHjVg/81h45hvWXXJFWboA3qSosD6bC
         HW9J/dDlQ6N3zcfEdmX+yBLnSz+sCrVC2O5Di+t762Wrcs2bEeb73W0Q2PKcXz/zJzoe
         xPfzDPudbSxKJ9xepfRUzaXQf8wroAEfDFCAjXDRuTvjdH2YpIo84zx80T85UcdfZkz6
         BDlw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1757977180; x=1758581980;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=aTycPbHlQtDBtjOvMMJ3SZ6uhxSiX0nO4WaEP9DHCc4=;
        b=ncESe/H2y09Shui/ta+YvUPIISownlwPtaspVWdtSBry7Gff+F2C+nHlkIuXhRwPdg
         NZDOTaWj77nEWeVvntl7URH1t9SgkPVJe+BwE8Ru4+1LDS5swW27jEFFUR+wCIy4wb8k
         jckgIBBIcqeNDNC6En/q9fnN5nZPgFkJxh3iJzuGg89iPrQHKQ5/4yw/S6rRjWcUSUQ1
         pCfxsFYWTVANWnwzL6VXmiSVMxxLqvHe0TMbv5TT90e31M/VwOTHNwVdpexlQz2uIejZ
         T067kTn6YCGehfY6v9/6NzLLnVMBBBybhFQyfj9Z1K71s6zOJyYTOKu7F5BtOss0cx0H
         IGlQ==
X-Forwarded-Encrypted: i=1; AJvYcCUHJsmqomIaEUx1WDBF+smSzFdA0KSqAujzP8632PCbL2XY5Ib19GLEc1XiJoWiDEU6lw0hRdvUdP/j@vger.kernel.org
X-Gm-Message-State: AOJu0YzBCjTyff0tUqeXigPkygraxCK8mZo+KHHFpDMlKvncPRpAkzAA
	JqbJw3CoyiibsW0PHAQ3jhUIDXtOnjKE1D0gX18HcCRy5WiruxLxkaun1mp5EBpgdzw=
X-Gm-Gg: ASbGnctujkrj0k9VXWbRdtT8byuVfiP8nMzjsiIT+vxPaS6hx+n7qzBv14L8fCm8Umv
	FXbYXcjViGbxb4PLswzccSL3lOKfCy9pC9dGXTWVdK8OF0EhFCm/zuCFx6Xo8owCphFvCzMEIqM
	AmyHdO26ObvNdErB8gfRdm8mFGACZcYbjhcE5GklOdj/dg7rxNxO52Y/L0RmHi+00TMu6m42ZmJ
	F0FcHfllYamSArkOl61EoiZFbATemryeF9EDh5hL8IsgMupn6eb3E9Tp/j1TyYsPrsxhd1Pyx5w
	VKK0fMYJMPhMvc9gWfJeJ8RvgV2hITgD4157rgRDj39t4ciK1jjVImnY3J9Zksbmq/n7S51eF/C
	Biu+7w9I=
X-Google-Smtp-Source: AGHT+IHaizr3a2V9CFBUtFDTvOTqaJTANyOfH5v0JTyHH5V9DAauzxISXWz+PQumMIbWbikwaEyCPw==
X-Received: by 2002:a05:6870:82aa:b0:301:a704:ef1c with SMTP id 586e51a60fabf-32e56bc4018mr7508892fac.25.1757977180618;
        Mon, 15 Sep 2025 15:59:40 -0700 (PDT)
Received: from ziepe.ca ([130.41.10.202])
        by smtp.gmail.com with ESMTPSA id 586e51a60fabf-3317d74fe33sm1565394fac.15.2025.09.15.15.59.40
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 15 Sep 2025 15:59:40 -0700 (PDT)
Received: from jgg by wakko with local (Exim 4.97)
	(envelope-from <jgg@ziepe.ca>)
	id 1uyIAd-00000004YkX-1MrY;
	Mon, 15 Sep 2025 19:59:39 -0300
Date: Mon, 15 Sep 2025 19:59:39 -0300
From: Jason Gunthorpe <jgg@ziepe.ca>
To: Shyam Saini <shyamsaini@linux.microsoft.com>
Cc: thierry.reding@gmail.com, robin.murphy@arm.com, robh@kernel.org,
	joro@8bytes.org, iommu@lists.linux.dev,
	linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org,
	virtualization@lists.linux.dev, will@kernel.org,
	jacob.pan@linux.microsoft.com, eric.auger@redhat.com,
	code@tyhicks.com, eahariha@linux.microsoft.com,
	vijayb@linux.microsoft.com, bboscaccy@linux.microsoft.com,
	saravanak@google.com, krzk+dt@kernel.org, conor+dt@kernel.org,
	lizhi.hou@amd.com, clement.leger@bootlin.com
Subject: Re: [PATCH v4 4/4] drivers: iommu: refactor arm_smmu_get_resv_regions
Message-ID: <20250915225939.GN882933@ziepe.ca>
References: <20250909154600.910110-1-shyamsaini@linux.microsoft.com>
 <20250909154600.910110-5-shyamsaini@linux.microsoft.com>
 <20250909155847.GB882933@ziepe.ca>
 <20250915162842.GA23954@linuxonhyperv3.guj3yctzbm1etfxqx2vob5hsef.xx.internal.cloudapp.net>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20250915162842.GA23954@linuxonhyperv3.guj3yctzbm1etfxqx2vob5hsef.xx.internal.cloudapp.net>

On Mon, Sep 15, 2025 at 09:28:42AM -0700, Shyam Saini wrote:
> > I'm comfortable with this side from the iommu perspective once you get
> > agreement on the DT representation.
> 
> We haven’t heard back from the DT folks or Thierry. Do you think we
> should wait a few more days for their feedback, or go ahead and send
> v5 as an RFC instead?

It is about normal to wait about another week and then ping them for
feedback.

Don't send a RFC, you intend your work to be merged.

Jason

