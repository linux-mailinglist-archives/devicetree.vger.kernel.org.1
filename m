Return-Path: <devicetree+bounces-78013-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 6AC19910AE2
	for <lists+devicetree@lfdr.de>; Thu, 20 Jun 2024 18:02:15 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 9BF0C1C23593
	for <lists+devicetree@lfdr.de>; Thu, 20 Jun 2024 16:02:14 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 138161B141E;
	Thu, 20 Jun 2024 16:01:09 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=redhat.com header.i=@redhat.com header.b="fNP4PtzT"
X-Original-To: devicetree@vger.kernel.org
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.133.124])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9847B1B013C
	for <devicetree@vger.kernel.org>; Thu, 20 Jun 2024 16:01:07 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=170.10.133.124
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1718899269; cv=none; b=E85kYuaGeR8DU5WAUigSeorqJADnHUQa3Gd+hWYwQyLyMGz17RT1e5lxTUc5xFhkywyUgzTurPC2ntJBdb9nr8Ay/+mUEf8jBKxvPU4be3ax6MgG43ZUbkzC9RlRIveO4fBsffRgcFcmTaQuIwcTBQZqqmJDgAPZZxzWDG2+64c=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1718899269; c=relaxed/simple;
	bh=hTqdjQ7Qi7hrrGxMOL3oVhnoPLode3S8RCGjK7+oaGU=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=p99wV7CXDtuxV2eGsVb8FoYGpL8wcyzU0c6aTAi1uHmodZwIzGqiL40L7Zj3HU0KHjvLynpEnbUyRgmcuNESNYP+pPnzkSx3mxHpL3xYHO/WHRBvkvU+dvgNbJo/8yCvOOMK+pWdGZrEBrHi6SDwtpJXvW472aAOWWbPoJhQLYA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=redhat.com; spf=pass smtp.mailfrom=redhat.com; dkim=pass (1024-bit key) header.d=redhat.com header.i=@redhat.com header.b=fNP4PtzT; arc=none smtp.client-ip=170.10.133.124
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=redhat.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=redhat.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1718899266;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=Ge9wVg87VaRL3PDUR6ZA+JS1REZ5t326tgMiEDsgJFg=;
	b=fNP4PtzT4GADk5c7v3gza5kjemiB6zD4tHoBrrSSuZFF9s+rhfQrxVVxSHJDyeHxNeSlps
	ir9SKot6ZflMYqXWjcvqcNdzNdlMApFcQ4gMB0ajr5xi+FSgTGmS/tZ6kh/Esjci2hamce
	Hr0N+WLkM6vSw/FVObqEhUSQ8jxOT+o=
Received: from mail-oo1-f70.google.com (mail-oo1-f70.google.com
 [209.85.161.70]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-60-1jJWIY4pOMmBORYh1O7GVQ-1; Thu, 20 Jun 2024 12:01:05 -0400
X-MC-Unique: 1jJWIY4pOMmBORYh1O7GVQ-1
Received: by mail-oo1-f70.google.com with SMTP id 006d021491bc7-5b976c32d9dso1031366eaf.3
        for <devicetree@vger.kernel.org>; Thu, 20 Jun 2024 09:01:04 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1718899263; x=1719504063;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=Ge9wVg87VaRL3PDUR6ZA+JS1REZ5t326tgMiEDsgJFg=;
        b=FE8h9Baj5q6ei2soIwmb8+tFDEnufFfOpOle/6PiwagW+Rqp8rpXVPYRvr8vJYayU0
         1VTqhNC8dKe1Hr5qCHzzb/GBTy4vd9MyiC3IiZEjgb7kBlP1n7ORjoo5VOFYkIt/OTGS
         f6zK2xo1tm9fey13DPRrPMGzdBDF3bT0jLgCie21pyUm4JZWWHMeDfXoZ6kvEWnQ4zFx
         ixSxCxfSYNwMe+7d//pJj0JTHBOaq3frW5AvYR7lUBAlcBLHQ9CzPBi1yiOzU1CECMcY
         yYosjTyPefMFQEqqRRPSNBvjQVFpCRGJaMAAHXMWxUBWz7UQZK5+/wT+xTLUgBva8elI
         sJpA==
X-Forwarded-Encrypted: i=1; AJvYcCVjIYFxZoTqG8MzVBeIN//GkuDk1h5KXapFY/JPCdQj26fHZXG0FUzCp+fmtImVq5H1PI0iI8KFafbzxWTn+IOKU87H/GpC+qlCiw==
X-Gm-Message-State: AOJu0YyMmbtn33VQuyckrbvWPPn1YKcNDFAoROkR8w60wYMBYyNo17Oz
	4UB36J7PrXwCNxmPAPMabRYugpZE0SwQ8lN/mNK8tX2pix5r4bQGA1cAKCdXnxwyfVO0QHCYnaQ
	VCUFR+QOLjRcDu7cgOeS/WmclaP8EePKZjOdmr6ovQBC/m59r0mYMsshEftA=
X-Received: by 2002:a05:6358:6f19:b0:1a1:cbe8:be76 with SMTP id e5c5f4694b2df-1a1fd657194mr718533955d.28.1718899263418;
        Thu, 20 Jun 2024 09:01:03 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IGrAQoubwE9GNV7F+9zyFogOGxSttJFumzX4SRRsenGs0mNCuRfVp3c/qRTDLVFFmBItzi0fg==
X-Received: by 2002:a05:6358:6f19:b0:1a1:cbe8:be76 with SMTP id e5c5f4694b2df-1a1fd657194mr718497355d.28.1718899258167;
        Thu, 20 Jun 2024 09:00:58 -0700 (PDT)
Received: from x1gen2nano ([2600:1700:1ff0:d0e0::13])
        by smtp.gmail.com with ESMTPSA id af79cd13be357-798abe2773dsm708132785a.99.2024.06.20.09.00.56
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 20 Jun 2024 09:00:57 -0700 (PDT)
Date: Thu, 20 Jun 2024 11:00:55 -0500
From: Andrew Halaney <ahalaney@redhat.com>
To: Bartosz Golaszewski <brgl@bgdev.pl>
Cc: Konrad Dybcio <konrad.dybcio@linaro.org>, 
	Bjorn Andersson <andersson@kernel.org>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
	Bartosz Golaszewski <bartosz.golaszewski@linaro.org>
Subject: Re: [PATCH 0/2] arm64: dts: qcom: sa8775p-ride: support both board
 variants
Message-ID: <eewxzrpcvwodj2ntiopezcjud6hj4fhi3ct7w3tdrin3ds3jhb@evuaplkq3477>
References: <20240619183255.34107-1-brgl@bgdev.pl>
 <4df2a52c-c21e-4da0-9ca0-13f28e81018c@linaro.org>
 <CAMRc=Mf4dZHMyexj1Xaw1dMVw0OT3=1t8OMfpHCB0xGJ9JdvSw@mail.gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <CAMRc=Mf4dZHMyexj1Xaw1dMVw0OT3=1t8OMfpHCB0xGJ9JdvSw@mail.gmail.com>

On Thu, Jun 20, 2024 at 09:07:05AM GMT, Bartosz Golaszewski wrote:
> On Wed, Jun 19, 2024 at 8:50 PM Konrad Dybcio <konrad.dybcio@linaro.org> wrote:
> >
> >
> >
> > On 6/19/24 20:32, Bartosz Golaszewski wrote:
> > > From: Bartosz Golaszewski <bartosz.golaszewski@linaro.org>
> > >
> > > Split the current .dts into two: the existing one keeps the name and
> > > supports revision 2 of the board while patch 2 adds a .dts for revision 3.
> >
> > Are both gonna be actively used?
> >
> 
> Yes! This is the reason for the split. I initially wanted to just
> change the PHY in the original .dts but then I learned there are a lot
> of r2 boards in the wild at QCom so we need to support both.

For what its worth, I've got access to _only_ the r2 boards in a lab
right now and use them quite actively... so please don't pull that dtb
:)

Glad to see some movement on supporting the newer version I've heard
about but haven't seen!


