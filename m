Return-Path: <devicetree+bounces-224691-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from dfw.mirrors.kernel.org (dfw.mirrors.kernel.org [142.0.200.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 9FCDEBC7213
	for <lists+devicetree@lfdr.de>; Thu, 09 Oct 2025 03:53:05 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.mirrors.kernel.org (Postfix) with ESMTPS id 4D6F74E40C7
	for <lists+devicetree@lfdr.de>; Thu,  9 Oct 2025 01:53:04 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D0A6716DEB1;
	Thu,  9 Oct 2025 01:53:01 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="jJKxsWTY"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-qt1-f170.google.com (mail-qt1-f170.google.com [209.85.160.170])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4E58C2940B
	for <devicetree@vger.kernel.org>; Thu,  9 Oct 2025 01:53:00 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.160.170
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759974781; cv=none; b=UvfUritQWpKzOyOLig0IGwqfH2p0xJauZ/d/lQDFE6w9+JGl+sB+LrQHOC6Rnb/iS5Umz2Vqs4yWTT7VSbTZSTWwtwqEs683eAqm6ZN5aFuAKaTD6IewI9iExrl0q5Mn7/EgMcAH8AnT4R3xaeIxisjBne1sDfPZYx2ng1VYO+w=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759974781; c=relaxed/simple;
	bh=bkZbpWdGEKj4bz65kM5fy1g/yKb92chEmY6l7l3nY60=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=oHty3tHkLOMosrEunf8ktXuAcDE+KdVONuQeKRjjjB7jSAArTcpJEC3LVxUCG29Z0x/RtfrRose4VM068P3Ms5ObuYh/8fr/sS3phUnWz5nUEROLneKqGxOcfdJWHLgb1TztGzzOCLEB7iC0rKR1osEGDNPeyk7ms/S6EIJP8sQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=jJKxsWTY; arc=none smtp.client-ip=209.85.160.170
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-qt1-f170.google.com with SMTP id d75a77b69052e-4e3117ea7a2so5590361cf.2
        for <devicetree@vger.kernel.org>; Wed, 08 Oct 2025 18:53:00 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1759974779; x=1760579579; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=bkZbpWdGEKj4bz65kM5fy1g/yKb92chEmY6l7l3nY60=;
        b=jJKxsWTYwqOsUkWmfsJ/cHe487W4TJmxlFEbYipCxU6X7HSoiNI4JDSKoSFfQ64aqg
         aeC/V+HS0qzxgsJqo3Ik1SVAA/E2oI0u/82Bj5yL7sig9Oej7Jz7ncYd4aqKwluNHQiU
         sceGYdiBYzBsEtd0beQMRzF8wPNS7vndF4NJNkgc4YoIlpGe81yVvyuCF8hePkh5aVqB
         WMqo5JMVaQ6yc5uwtQjZILx7eXW1xRkPZZjDGDidxLOH2umBWaXxz5gZCmyg/ehLQfE1
         wZ3iSgZganjvxOgRdwp5Bxt5JOLnY2ILfJD3rteNqcW2RprIaJPo6q18o654AanaZgib
         C5hw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1759974779; x=1760579579;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=bkZbpWdGEKj4bz65kM5fy1g/yKb92chEmY6l7l3nY60=;
        b=NdRw5cBXzwJhhmTT1qNhEYJhm+jihmBXqpLBzrsoX4qIYNNslkehUlMTegpTNzb++U
         bcde14PRSi4Mquo9sfZDzPqdD7iSpUTykw+RiwaoMvG71Ez/EbEHrQK7n4dBdqZUd0mZ
         /sKWGXjgWvoIIbDd3dr7s9+xyceEGgO/wjt0/flNz+gdMedLr0MqomFTmdYQPyRUmQxU
         Iuy1Q+f6xnfvIVNRkWRFvjux0Co98SuXIvzMSkMtx8BVEhck4d2XWa1JE+cKNBsYO5GZ
         LfMs4IZde0z4553Fj2rcMry1/kOn/Qwg/vIDeVIPbRhvZN6i9WdOfRnnL3Za7UzzdD4L
         r/8w==
X-Forwarded-Encrypted: i=1; AJvYcCWZSzuSTokNVNsMlkPKt0BdxgFxOSNVT62Qjejfw1sfKSmoeFMS2/l9EKJ2uETGjOvvChIdC+HnhEae@vger.kernel.org
X-Gm-Message-State: AOJu0Yyt8JLeFPq8BikWCC2r5E0tD1HvetdyizTpHUJuKvA3ID7sF4Cr
	Hv/bw84cGEgGgLGJQhzwrjoUtKLpM7pXkzzXpHB3zur11GQBnoAaV532
X-Gm-Gg: ASbGncvn6XYhecqMChL32jB+DsPSCYj8vgJ+Jp1/tjLYp7xRTuXx7hzEChkdq5Vz74/
	JIIcXtgYO3Ww33HMq7/K5P36czyW8BT8Nwj9Ljsx6Os0R4MWsFaaJWDcAc0JgnqEpnV2Aj0mXK/
	9bpzofPXKl7zp1yUFJBNgye0ZL51JzKjgZU4ZakSZycMiHljWu68djLAb+o66y+eL3K2BjvVxve
	EUZWYUOgh7bh49HDvuu9Jtv5BcMXoZ4m0MZHTzTKMtz7rH9uEvuUUzVt5EeVTdX5Nr/j8N2T1K+
	Dije4vrMAhQtZXK9jojUyhbuG9wZYUg9c2fpi6jsyB+7XeApXIng9MPaEwINO5HvFeTvPp6NA/c
	86ppWkZ0DkfIE13IikBg416HJMTPIHLaT1W9w6kAcB2DkfkxRIq4PmD/3UqVSfgvo+8tmizv4+D
	4lhRMw
X-Google-Smtp-Source: AGHT+IFtsHrv92dAWj8mGMUHYlHjwMt2fYEqRT49SMsyhCpika+TRCqU1Im+NQPWa/hkxKMIgtTTfw==
X-Received: by 2002:a05:622a:5797:b0:4b3:3b2:2b4b with SMTP id d75a77b69052e-4e6eabf9fbcmr77703311cf.0.1759974779149;
        Wed, 08 Oct 2025 18:52:59 -0700 (PDT)
Received: from sleek (d-23-244-200-70.nh.cpe.atlanticbb.net. [23.244.200.70])
        by smtp.gmail.com with ESMTPSA id 6a1803df08f44-878bd783b3esm174593866d6.36.2025.10.08.18.52.58
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 08 Oct 2025 18:52:58 -0700 (PDT)
Date: Wed, 8 Oct 2025 21:52:56 -0400
From: Joshua Milas <josh.milas@gmail.com>
To: Alexander Sverdlin <alexander.sverdlin@gmail.com>
Cc: Inochi Amaoto <inochiama@gmail.com>, robh@kernel.org,
	krzk+dt@kernel.org, conor+dt@kernel.org, unicorn_wang@outlook.com,
	rabenda.cn@gmail.com, thomas.bonnefille@bootlin.com,
	chao.wei@sophgo.com, devicetree@vger.kernel.org,
	sophgo@lists.linux.dev
Subject: Re: [PATCH 2/2] arm64: dts: sophgo: add initial Milk-V Duo S board
 support
Message-ID: <aOcVeFTUx_Qn85cs@sleek>
References: <20250927173619.89768-1-josh.milas@gmail.com>
 <20250927173619.89768-3-josh.milas@gmail.com>
 <nkzpfylhxyqf5u3bjlokhe4udgcxohbaanhwuofjzatan3iwio@45ljfquf5sui>
 <ad86009bff38ddae0b291d3edbf958ce6363ece2.camel@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <ad86009bff38ddae0b291d3edbf958ce6363ece2.camel@gmail.com>

Hi Alex,

> I believe, gpio is long time discouraged here.

Does this mean just the '&gpio*' entries, or other GPIO
items like i2c and spi?

Thanks,
- Joshua Milas

