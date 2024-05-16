Return-Path: <devicetree+bounces-67290-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id D0A098C7560
	for <lists+devicetree@lfdr.de>; Thu, 16 May 2024 13:42:17 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 518A8B20DA4
	for <lists+devicetree@lfdr.de>; Thu, 16 May 2024 11:42:15 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id F2BCB145A09;
	Thu, 16 May 2024 11:42:12 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="syVasA6K"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lj1-f171.google.com (mail-lj1-f171.google.com [209.85.208.171])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 77E101459FF
	for <devicetree@vger.kernel.org>; Thu, 16 May 2024 11:42:07 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.171
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1715859732; cv=none; b=R0SKV+95qJ0CgzJ4RcgicP9AusfF4gc2O/TYc6vVgtSDiz0x+0McgsjsWSM9z6CF4qZPF+4POGvtOCZxwj89fr9Nt2fJgOfVMiip3BBO1vRkbwVwG6MZy1bREFMIncfcykbfIB6m4GLxg7y+nePZwAQ/A7qhKC17dfsCuVmpmOk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1715859732; c=relaxed/simple;
	bh=NSfyT0Gs1FAv8AytyIHVbbNnX2pciDwvMHWsM6/tgxc=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=fvFMr3oviKb/d0DH8cIxV+NM6sNXXiPJ8yILRDM4ne+qDBQM+5uDSmIpu76JQkNYrHzKVto5wHnDB27rBAKhCCWeqp5O/o5T9CtiG1jiMYVg1mlSZCXwqRg5mFgdjfaZzjuin0GiJ2vW/2w09I2RHn0J9HubZPLolT7BUywL8ZU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=syVasA6K; arc=none smtp.client-ip=209.85.208.171
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lj1-f171.google.com with SMTP id 38308e7fff4ca-2e6f2534e41so5659661fa.0
        for <devicetree@vger.kernel.org>; Thu, 16 May 2024 04:42:07 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1715859725; x=1716464525; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=1Qama3VZjcFeoB3/3gxCMfJagw4b+jGrPyMrffchcbY=;
        b=syVasA6KfJp7amCmxBrhEjboDf4WKJ0Da2Yk9qF8cxuda3m/jif4g9Meb+/qdR1xNi
         LrBlJJHtgURanNIY77lCs1dDF71wBmKgbC8Cf2x5eD+aGI/hf5klwU7xy4ryn3rsnkET
         fa9Oefoo5Zul4k5UheLUFPUJcwozdPk1bf512znM1pB++2kipLmALDoiimVnVENaxnV3
         a9zTYAa3vI3yBDqGtQIM0S4F+/h3F1wnvbkLsI6mBsu8RzZPGqIXj9o0MxymZBqvpklX
         obww3MN+wjOxf/+mRkqYZBzsZyXnKMJK5YrW7aRQ7N9O/4ApJKN0HVs93EG19r23qEZ8
         1syg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1715859725; x=1716464525;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=1Qama3VZjcFeoB3/3gxCMfJagw4b+jGrPyMrffchcbY=;
        b=M9kzfxqXFTcfeQYYSN/04jWVNp0WqB+fuJPd6E3ti1eobXKeT7caP53V7XV+WHAhA1
         JZWqiLi3CCbsP0810eqnw7MS0+xHGUfPuqvUPmermXilwOnIEhsgFo3S8sDnswDAONlQ
         H5l8F1yYSG5XofMe7/HZX9//AxiAA+WSl7B7uZkOLBx2b4novcaXvGdaGLPuzOjzu2eU
         MsZuoozW+nu/zwEmE2y0cH35PpQf0Vfx74RcC0rN44Dl0BVS3AOaptJwsvDuqYGBie4k
         LGYonv5isZXWk8Hefo/NvN9b+M6XDNAeA+gi05XGEHcPgpFwK6HbAAdwjx/ROQppecTY
         ApPw==
X-Forwarded-Encrypted: i=1; AJvYcCWjQ0TPTy/BMQZhZOlDpsz3ivcrZa/pJ+CSWEq9PqbIzoqxUUoGqcFylVgxMWt1DDHt3f+4EeAG0NlnqCGFrD4RGsDcBK1SeHpC/A==
X-Gm-Message-State: AOJu0Yyf7vsHlerbJgJ5VoQsQ4b7DafaXlFnBzOSSAw2VeR/Gth5hckI
	/GoQkJMcn8vFZC36r/a/ihC0IpB0Ya8ZTMw1xhrX+Gtda8KD1jAUrj6xNkatdXE=
X-Google-Smtp-Source: AGHT+IFr1zVjdK7K16AgALnOgUt1S1AfB42I67YFPLAWXkf7y20RmbEGmkYsokzWNXk2gyfEhqCHoA==
X-Received: by 2002:a2e:905a:0:b0:2e4:5f13:dc48 with SMTP id 38308e7fff4ca-2e5203a45e3mr123286001fa.38.1715859725611;
        Thu, 16 May 2024 04:42:05 -0700 (PDT)
Received: from myrica ([2.221.137.100])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-42012276231sm166586685e9.26.2024.05.16.04.42.04
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 16 May 2024 04:42:05 -0700 (PDT)
Date: Thu, 16 May 2024 12:42:03 +0100
From: Jean-Philippe Brucker <jean-philippe@linaro.org>
To: Sudeep Holla <sudeep.holla@arm.com>
Cc: Bjorn Helgaas <helgaas@kernel.org>, Vidya Sagar <vidyas@nvidia.com>,
	"will@kernel.org" <will@kernel.org>,
	"lpieralisi@kernel.org" <lpieralisi@kernel.org>,
	"kw@linux.com" <kw@linux.com>, "robh@kernel.org" <robh@kernel.org>,
	"bhelgaas@google.com" <bhelgaas@google.com>,
	"krzk+dt@kernel.org" <krzk+dt@kernel.org>,
	"conor+dt@kernel.org" <conor+dt@kernel.org>,
	"liviu.dudau@arm.com" <liviu.dudau@arm.com>,
	"joro@8bytes.org" <joro@8bytes.org>,
	"robin.murphy@arm.com" <robin.murphy@arm.com>,
	Nicolin Chen <nicolinc@nvidia.com>, Ketan Patil <ketanp@nvidia.com>,
	"linux-pci@vger.kernel.org" <linux-pci@vger.kernel.org>,
	"linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>,
	"iommu@lists.linux.dev" <iommu@lists.linux.dev>,
	"devicetree@vger.kernel.org" <devicetree@vger.kernel.org>
Subject: Re: [PATCH 0/3] Enable PCIe ATS for devicetree boot
Message-ID: <20240516114203.GA3655402@myrica>
References: <PH8PR12MB6674391D5067B469B0400C26B8EC2@PH8PR12MB6674.namprd12.prod.outlook.com>
 <20240515185241.GA2131384@bhelgaas>
 <20240516073500.GA3563602@myrica>
 <ZkXi2LCy9ZZkupjM@bogus>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <ZkXi2LCy9ZZkupjM@bogus>

On Thu, May 16, 2024 at 11:41:28AM +0100, Sudeep Holla wrote:
> On Thu, May 16, 2024 at 08:35:00AM +0100, Jean-Philippe Brucker wrote:
> > Hi,
> > 
> > On Wed, May 15, 2024 at 01:52:41PM -0500, Bjorn Helgaas wrote:
> > > On Wed, May 15, 2024 at 06:28:15PM +0000, Vidya Sagar wrote:
> > > > Thanks, Jean for this series.
> > > > May I know the current status of it?
> > > > Although it was actively reviewed, I see that its current status is set to 
> > > > 'Handled Elsewhere' in https://patchwork.kernel.org/project/linux-pci/list/?series=848836&state=*
> > > > What is the plan to get this series accepted?
> > > 
> > > I probably marked it "handled elsewhere" in the PCI patchwork because
> > > it doesn't touch PCI files (the binding has already been reviewed by
> > > Rob and Liviu), so I assumed the iommu folks would take the series.
> > > I don't know how they track patches.
> > 
> > Yes I think this can go through the IOMMU tree. Since patch 3 is still
> > missing an Ack, I'm resendng the series next cycle.
> > 
> 
> Extremely sorry for that, since I saw Liviu on the thread, I assumed he
> would have acked/reviewed 3/3 as well but now I see that is not the case.
> That said, you must not delay the change just for the DTS file changes.
> Anyways I will ack it now.

Thanks Sudeep!  It's no problem really, I sent the series very late in the
cycle so wasn't really aiming for 6.10 anyway

Thanks,
Jean

