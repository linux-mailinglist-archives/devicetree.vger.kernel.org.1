Return-Path: <devicetree+bounces-164922-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 33CC3A82D3F
	for <lists+devicetree@lfdr.de>; Wed,  9 Apr 2025 19:09:09 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 142FE4633AB
	for <lists+devicetree@lfdr.de>; Wed,  9 Apr 2025 17:09:09 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id AF2D4270EB2;
	Wed,  9 Apr 2025 17:09:04 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="JJv8J2EK"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pf1-f171.google.com (mail-pf1-f171.google.com [209.85.210.171])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 181C01C2324
	for <devicetree@vger.kernel.org>; Wed,  9 Apr 2025 17:09:02 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.210.171
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744218544; cv=none; b=pQCFTOgfIWrPazMKs9k2/Uo6nQLafkNGTiTHHd/zkphOAwg43SS09nIdOaJeB7kwx99GXB75UIvt8erksflEVFaqz9PNgO1ZSMBuGJ32hTuU2HSSuHM2FJytK0zBoHL4bJUJp1cH3kl4iKIo/45Iam/KOT4zcRPu30gxuge83VY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744218544; c=relaxed/simple;
	bh=Mev02kWb7K5qiFud07ATCV2nKnxOjc1jvqk3EpgXYIc=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=sZxdyJ7F0wEM/4rZNzAw0RRbiISVT0ys/OfAX5Epg1gdCa5lu0eCnj0TRlxocQlKpidQAaVnlKvG3QT4rIRUK5RF+KciLCJo3D0fue+i/h4eOGU5n71BUPes1GSFSuKJGQX3Od7FgxedS4Yz5Apu1IzSBxynmsjy2p4mr7FaKlg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=JJv8J2EK; arc=none smtp.client-ip=209.85.210.171
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-pf1-f171.google.com with SMTP id d2e1a72fcca58-7396f13b750so7166695b3a.1
        for <devicetree@vger.kernel.org>; Wed, 09 Apr 2025 10:09:02 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1744218542; x=1744823342; darn=vger.kernel.org;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:from:to
         :cc:subject:date:message-id:reply-to;
        bh=mKY8PJec5kYg0iEFAd+4ifcsKowLyA7pbf6teQQhHX8=;
        b=JJv8J2EKzbG2+i0t4EQY5QUWq9xrlF/h3+YfR2GOve93hnR6oA/awbgoB2WVQPX6Tq
         tv3ONiO6xT0CJDnhZDWngzOac1EalA0pb0JA0BONp+Ics3yvK6azhdVJ4MiXHheIqwvn
         XQbfnLjCm23Q3daX6YqTPNVAzdQf53vpwKV5nDCpPL9Sqwe3Ai/vAUfzyqk/W99MQy/w
         Ohaq6S/6MGB1nEMhnXPT5X30qzMZLS8fSGOzgs05mblEvEmBENX1KgH48m2FrGOkex11
         RIzHwF48ph7+HANVJczHh8TsI3ZrYT2cg+QNwzWAl7ccRw4LaQCPaKUyuLOa7Tt4wAkl
         564g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1744218542; x=1744823342;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=mKY8PJec5kYg0iEFAd+4ifcsKowLyA7pbf6teQQhHX8=;
        b=UDmrAQbN0Iioh93GWoRJgd7lMcK6TIAj+TNFP0L1QP6Ztt9PIN63mrnL9e0FAtanTh
         JVPSiMG8tpNP2RzKtXIY7ClrT1javHWIBdUR4fNpq1v+/jIHsEsPO5exznbC6bo3r8ad
         b1krR3LpZ2u4LMaUrypdf3AWHqx2Z/T2GQSR2HhYSxSOnR/coklwTJV7zDlEL+QLuMtm
         l98PfC61Mc+4Kcw/bRmrsUfr9bGw/2pNwBNdla54GADMZ5goOJdg6uzc54p93TWrO5Co
         YjQUTRfDlLU41fLEZ9p8Z/AvueNm5IirDsvyM3EBMwcBElN5FuBBuQii/r7jPIWQQRkv
         NV7Q==
X-Forwarded-Encrypted: i=1; AJvYcCVhi5WIl36q+kz9m2q285ebvTu5gRSfPJ11Vvpw4TUlbYDXMvdz5E0X3EjGyGzBJsjMM1ltSoYzgaNq@vger.kernel.org
X-Gm-Message-State: AOJu0Yw6tuzfwZixu2yTS4E3cgQoZU50yE+H035QLk0ZPH7n30keNXW/
	d4/aeCHJJTOYP2gtTW5rRibMW135JrVqDVOvy/VVGjB4XexX58z/vzWM5/k5Ww==
X-Gm-Gg: ASbGncsdMXwsKaSzG1Daf6Om96kLfWGbNfw2oumH/R7IsNckYyppqMM+W7O4upAbq4m
	oG1s3f9byY0+b0dovSeqqU223hfuxx3rxcYrULw2+3EmJkVUnU0QZ2mcS+zG3/iBqAfytKSs7Ii
	XhGyZXA/jh9ETF68a2iswg/p2Tty4T2Qmkwna0V0a0JB7HDDkDSWdDcJkT9+XHLGliG4fTLimJB
	aospiEeehcBs8Ke96jZbdLyHKlxsY2pYQ91bHyFhSaTyz0dhNI85fnitdGLlhSMkZgYoYl+t7yz
	i00gB7qcI/A7BIvCxHKfsGRkNJZvby3sIWqKDbWzhfZ+YTA9mNU=
X-Google-Smtp-Source: AGHT+IFE7dJGIlhcT7iaEMxOXwREi/bb0FDuPpSx0oq/yJ3SzisseJeawE8+VL/qnpnlqMEk9OERFg==
X-Received: by 2002:a05:6a00:801:b0:736:6d4d:ffa6 with SMTP id d2e1a72fcca58-73bae529f65mr3688249b3a.15.1744218542059;
        Wed, 09 Apr 2025 10:09:02 -0700 (PDT)
Received: from thinkpad ([120.56.198.53])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-73bb1d44c31sm1607891b3a.38.2025.04.09.10.08.58
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 09 Apr 2025 10:09:01 -0700 (PDT)
Date: Wed, 9 Apr 2025 22:38:56 +0530
From: 
	"manivannan.sadhasivam@linaro.org" <manivannan.sadhasivam@linaro.org>
To: Manikandan Karunakaran Pillai <mpillai@cadence.com>
Cc: "bhelgaas@google.com" <bhelgaas@google.com>, 
	"lpieralisi@kernel.org" <lpieralisi@kernel.org>, "kw@linux.com" <kw@linux.com>, 
	"robh@kernel.org" <robh@kernel.org>, "krzk+dt@kernel.org" <krzk+dt@kernel.org>, 
	"conor+dt@kernel.org" <conor+dt@kernel.org>, Milind Parab <mparab@cadence.com>, 
	"linux-pci@vger.kernel.org" <linux-pci@vger.kernel.org>, "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>, 
	"linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>
Subject: Re: [PATCH 0/7] Enhance the PCIe controller driver
Message-ID: <5jc754dnrbytkwrhkj5qjmlxpqa4owhbpeimnr5d7k2aqueysn@uuqdauadlwak>
References: <20250327105429.2947013-1-mpillai@cadence.com>
 <CH2PPF4D26F8E1CA951AF03C17D11C7BEB3A2A12@CH2PPF4D26F8E1C.namprd07.prod.outlook.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <CH2PPF4D26F8E1CA951AF03C17D11C7BEB3A2A12@CH2PPF4D26F8E1C.namprd07.prod.outlook.com>

On Thu, Mar 27, 2025 at 10:59:08AM +0000, Manikandan Karunakaran Pillai wrote:
> Enhances the exiting Cadence PCIe controller drivers to support second
> generation PCIe controller also referred as HPA(High Performance
> Architecture) controllers.
> 
> The patch set enhances the Cadence PCIe driver for the new high
> performance architecture changes. The "compatible" property in DTS
> is added with  more strings to support the new platform architecture
> and the register maps that change with it. The driver read register
> and write register functions take the updated offset stored from the
> platform driver to access the registers. The driver now supports
> the legacy and HPA architecture, with the legacy code being changed 
> minimal. The TI SoC continues to be supported with the changes 
> incorporated. The changes are also in tune with how multiple platforms
> are supported in related drivers.
> 
> Patch 1/7 - DTS related changes for property "compatible"
> Patch 2/7 - Updates the header file with relevant register offsets and
>             bit definitions
> Patch 3/7 - Platform related code changes
> Patch 4/7 - PCIe EP related code changes
> Patch 5/7 - Header file is updated with register offsets and updated
>             read and write register functions
> Patch 6/7 - Support for multiple arch by using registered callbacks
> Patch 7/7 - TIJ72X board is updated to use the new approach

This one line patch summary is not useful. We can look into individual patches.

> 

This series is v2. Please use version in the subject prefix and also include the
changelog section.

> Comments from the earlier patch submission on the same enhancements are
> taken into consideration. The previous submitted patch links is
> https://lore.kernel.org/lkml/CH2PPF4D26F8E1C205166209F012D4F3A81A2A42@CH2PPF4D26F8E1C.namprd07.prod.outlook.com/
> 

This is not how you would add changelog in cover letter. Please read:
Documentation/process/submitting-patches.rst

- Mani

-- 
மணிவண்ணன் சதாசிவம்

