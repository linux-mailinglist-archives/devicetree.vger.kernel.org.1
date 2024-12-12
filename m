Return-Path: <devicetree+bounces-130296-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 0C13B9EEB05
	for <lists+devicetree@lfdr.de>; Thu, 12 Dec 2024 16:20:31 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 37DE7188E162
	for <lists+devicetree@lfdr.de>; Thu, 12 Dec 2024 15:16:03 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D657F223310;
	Thu, 12 Dec 2024 15:15:10 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=rowland.harvard.edu header.i=@rowland.harvard.edu header.b="tRPwBkMM"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-qt1-f193.google.com (mail-qt1-f193.google.com [209.85.160.193])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7A0D621C195
	for <devicetree@vger.kernel.org>; Thu, 12 Dec 2024 15:15:08 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.160.193
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1734016510; cv=none; b=BR3M0XSEFNQKdGpswYlkMJhpNV4BknfHWVKOp9UORp31w0bRIXqr+tZVbunDINfEPqk4hTfXlpA2Kvt9olkvOv+PT8adKU4nCGfZ8LmAtU+9Vim0LXY+0OqMJ8YDkufmMHJ29miekxqCBI54V77Sk+29yEyvI8KiE9Waqrp933Q=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1734016510; c=relaxed/simple;
	bh=GrfsWjLIPusKw6Raeypc+nvGcUAzhBV1ynxPoT4V3xo=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=dOjuciPIoitvTECp+CJ/bDZig5gghs7Ya3h4MleCl/xhui8qCSzYVjy8Wag1WwkLqdW5LG6+KC5GT/+RBswLgyVfRfVLIPd0LX5NHip1Ijr6FTYxhTd0HJeXAB+u8JZpDKwbFdgHTT9d8k1bEhgamcM2woggn4D/LQVyF8NuIrY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=rowland.harvard.edu; spf=fail smtp.mailfrom=g.harvard.edu; dkim=pass (2048-bit key) header.d=rowland.harvard.edu header.i=@rowland.harvard.edu header.b=tRPwBkMM; arc=none smtp.client-ip=209.85.160.193
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=rowland.harvard.edu
Authentication-Results: smtp.subspace.kernel.org; spf=fail smtp.mailfrom=g.harvard.edu
Received: by mail-qt1-f193.google.com with SMTP id d75a77b69052e-46677ef6920so5622281cf.0
        for <devicetree@vger.kernel.org>; Thu, 12 Dec 2024 07:15:08 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=rowland.harvard.edu; s=google; t=1734016507; x=1734621307; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=+QueczT4v5WPUe9DJ9xRbw+92u2kMqx1VEhRTE5FkPc=;
        b=tRPwBkMMVz9HOsyx4kdIlKfziub1uyz8RTUCLJbiv3XB7MbfsTSGrFlWOvszwv6oWF
         zidRrDdjitSqUFoYOYDlZ3LG5UNo5mVCM/b27yVSkcfaEH5xQ8kzNScrVgg0V9pDMQE9
         p0KhEYSQsOY9uDtJhwD3RPzGJvnPoMbWuexQcqkezSgi3ejEDTAXuPY4dnri9iPQ8sjt
         eNRokDZVArIp+Js772lR78n+TebzQKcvcq1K29HPp58zza21rGhR3got4kZUUI7slOXA
         DLKf4RXhBQTVap/uQ9pG5aJ83xDNnIRGfcPIFJsYGldR2pHMeCieM2V4LD9wvZkGGDWO
         tRMw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1734016507; x=1734621307;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=+QueczT4v5WPUe9DJ9xRbw+92u2kMqx1VEhRTE5FkPc=;
        b=gBBSHev7eAQOpO7iC1/rEKb/lR/ezIyPxkLzFiVcdYJGqgG1inSfDQXW6JuLzKHuHU
         GQi+WulvGR3PxLDubPYEz+BnlJ0nkAeVLQ+A4oAXLvpMv1Qpj/4jl5xaHkUvTLaekY++
         tcF0DhxrpD+Gz5raTdXEk1LJ8UylAvMbPZXw3tneIeCIER1wogfzES+DAleCuLiIEu1B
         3fCrpQbbj3dxBlW+pmXJQyiH/+X063tU4HvtDR5lgkpbslTYSGg4dI+e9Q0fXTXXYC5W
         Ml1TVyUCFQZf3wPXX1HFMIueY7hubSokyH0aEI61HJAYNwSkM4tkMCF4wyKMtyQZYTgE
         o8rQ==
X-Forwarded-Encrypted: i=1; AJvYcCXXuL5iVXHj/DbCXmmhZUrHBEwsPqIHktfs4oa91FBrnJb2iHs6EK5ySx6ClFlE6Fj/h21dMwXLj8DO@vger.kernel.org
X-Gm-Message-State: AOJu0YxNdfyGo2wZ9qlFnpQG5RkKVqZlzVvl6CIYEQ6kF9Yi6pd0fdvn
	G1cHfr/9JoCdwYhyz251JnA84aLk3NFxM8Zh43YD5U3L62yHPsd2QjC9Ur9kng==
X-Gm-Gg: ASbGncsJw1miGNu5q7ZXOM/eDfTbMlgMhK1gSs85xpprVKUXVPu+ujgnwS8sanJz4Ia
	R0lBbriC8UUzhQKEVnz6ApQgoI4wUR9agjEOKcyc1sWgoO2nWW23dzdxym9ZYAVUnxKHbbh7Uap
	QRGasDjAh7Xn7M+Jz0jbela/rAvnhoUV8NwMhstNk0Nprd3rsumIomgRmhBpqfSK5VxZbFDUwf9
	4lTTEklPEjRVeDDziZV0C/GfTWaBoznz6tzl9XTAWmlnSo76Yu7Xzcs5+Jbyi6JrDs8W9sGD4M=
X-Google-Smtp-Source: AGHT+IEX1+vtdRYivaMdh57Ns23aKPia+eXC/bmevwgnS7fdyda+F+pkRFepqoVy7rThXlcNWuPf0g==
X-Received: by 2002:a05:622a:134c:b0:467:7076:37c7 with SMTP id d75a77b69052e-467a157fcd0mr10877391cf.22.1734016507367;
        Thu, 12 Dec 2024 07:15:07 -0800 (PST)
Received: from rowland.harvard.edu ([140.247.181.15])
        by smtp.gmail.com with ESMTPSA id d75a77b69052e-4678bd09768sm18216901cf.36.2024.12.12.07.15.06
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 12 Dec 2024 07:15:07 -0800 (PST)
Date: Thu, 12 Dec 2024 10:15:04 -0500
From: Alan Stern <stern@rowland.harvard.edu>
To: Greg KH <gregkh@linuxfoundation.org>
Cc: Ricardo Ribalda <ribalda@chromium.org>, linux-usb@vger.kernel.org,
	devicetree@vger.kernel.org, Yunke Cao <yunkec@chromium.org>
Subject: Re: Annotating USB device Location in DT
Message-ID: <8ed67e2e-6b15-43a3-b031-0e36a782428e@rowland.harvard.edu>
References: <CANiDSCtZrWAbH14fqoSq9OKv8oV30Df6AnvWGCw3gdWHT3RBrw@mail.gmail.com>
 <2024121204-underarm-last-97ae@gregkh>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <2024121204-underarm-last-97ae@gregkh>

On Thu, Dec 12, 2024 at 03:03:51PM +0100, Greg KH wrote:
> On Thu, Dec 12, 2024 at 02:42:34PM +0100, Ricardo Ribalda wrote:
> > Hi all,
> > 
> > I'm working on a way to annotate the location of a USB device within a
> > system, specifically whether it's "user-facing" or "world-facing."
> > 
> > There's precedent for this type of annotation:
> > 
> > - ACPI: Uses the '_PLD' property for this purpose
> > (https://uefi.org/htmlspecs/ACPI_Spec_6_4_html/06_Device_Configuration/Device_Configuration.html#pld-physical-location-of-device).
> > We already leverage this for MIPI camera sensors
> > (https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git/tree/drivers/media/pci/intel/ipu-bridge.c#n265).
> > 
> > - Device Tree : Has a property for this within
> > video-interface-devices.yaml
> > (https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git/tree/Documentation/devicetree/bindings/media/video-interface-devices.yaml#n386).
> > 
> > I propose adding a similar property to usb-device.yaml
> > (https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git/tree/Documentation/devicetree/bindings/usb/usb-device.yaml).
> > 
> > The ultimate goal is to have this information consumed by the video
> > driver and exposed to userspace via the V4L2_CID_CAMERA_ORIENTATION
> > control (https://www.kernel.org/doc/html/latest/userspace-api/media/v4l/ext-ctrls-camera.html).
> > 
> > What do you think about this?
> 
> I think you should copy what ACPI does here, as long as it doesn't
> conflict with the existing video-interface-devices.yaml definition.

Right.  While the notions of "user-facing" and "world-facing" might make 
sense for cameras, they do not make sense for arbitrary USB devices.  So 
they shouldn't be part of the general USB device description.

Alan Stern

> Will that work?
> 
> thanks,
> 
> greg k-h
> 

