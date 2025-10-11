Return-Path: <devicetree+bounces-225662-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 43FD4BCFB57
	for <lists+devicetree@lfdr.de>; Sat, 11 Oct 2025 21:19:29 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 5795B18989DF
	for <lists+devicetree@lfdr.de>; Sat, 11 Oct 2025 19:19:52 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 5E65B283CA7;
	Sat, 11 Oct 2025 19:19:24 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="bz2qy+9J"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-qk1-f169.google.com (mail-qk1-f169.google.com [209.85.222.169])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C42E9FBF0
	for <devicetree@vger.kernel.org>; Sat, 11 Oct 2025 19:19:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.222.169
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760210364; cv=none; b=hRAUo+vvd3XvWETJBWL/2k9Ow4P8mVte4X59M80B9IIcO82YSf8WgHzdBUp2gdPkAPSf+skgITcLS3DibEIVnNvTQzAdvBwaBm24wq4i3S/SaISzy3lTOnMfc53bL/j5NHpaW1fFYT5mSbmDisIwfb+zvmWZ9NdRpi9Isp/eMIk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760210364; c=relaxed/simple;
	bh=cJ5I2qU/WGgH3J8qqI/SaEyRmBZys9/OsHe+c9FD/hw=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=dy8iKV33oxrOIENV471UFXMLd13CkDx3nSqV2AhcTD0xsJFhiwkxwwxXqy4e79Jw8O0WiwVmLQv89TUqwXn656sndlpwQHn1oBfqGywRF1NRFbi/UlJdStBp01s5MTftg/dye6O4uAZZ6wTQtX8iMqCLIxr7oZ3LLZ4fBF5YBE0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=bz2qy+9J; arc=none smtp.client-ip=209.85.222.169
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-qk1-f169.google.com with SMTP id af79cd13be357-85c66a8a462so516032285a.0
        for <devicetree@vger.kernel.org>; Sat, 11 Oct 2025 12:19:22 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1760210362; x=1760815162; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=cJ5I2qU/WGgH3J8qqI/SaEyRmBZys9/OsHe+c9FD/hw=;
        b=bz2qy+9Ja6D0Xnr74evGz3SwKXDctdWC5X6iqEZZGkERAwvNZ3om3NsKhc55bL+G2w
         lGEhrEovYCuC2uAPaJe5eYHn7ffynrtrCUW7Iwn965mI0/73WJpZ5nfLMnAPLwQFIxi5
         CbhO7CzscBdLUrGw7kxumPxGAaluS3nILBmzVka0Hph525B2XzRUewZpd3gUipyOqiwU
         gdsIKFGsGyqigaasw8nDl9m/ggEz/1F4RjdItrYio19qRsz34Md5zmbOXR2Uu32qm40G
         3NOP4jjTkAScTXBN12z45Q+GsZcLIYF/YPNki12cspjXFkLRJiO0hvCeRIs9pHl8JUt/
         cRow==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1760210362; x=1760815162;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=cJ5I2qU/WGgH3J8qqI/SaEyRmBZys9/OsHe+c9FD/hw=;
        b=AOZ3fLqsrGFAGt4lVQREq6gZSbrSVwhdIAUhAVOI26zNdoLN4+CjKkT5XMyy1IAz2k
         LiUsBikhM48JmJZvMy5TvuRUj4NvBu3icQe5gSJEJhsHcHJgWFUFac/u8R/RDBVHHQJ9
         24T4xcU2WOwdSnXyMIb93J4D7LUlD3bwYsZSOEyrgsWLzsMob5zBMHC3bZo7SKxxdfiM
         PCgd5mBUCgz2ww1sF7ntDy70krornw5RUBfhjvTeTinHbLnK2AU1o+SSECPmsyYdJi/A
         R7ykwSvbROk4SB9Au+E2lOyWJEXVlDPjt0ihb5isakheCw8wTOV2VnCrqNGkOcJ344g6
         Tcsw==
X-Forwarded-Encrypted: i=1; AJvYcCXDy3CAH87QI2Ld8bHikAU5y9jFQpPyF9se2IXMAsRqWT1Ol5If3N4CronBJFDRuz+wMawiGOVFCnip@vger.kernel.org
X-Gm-Message-State: AOJu0Yzar+BbXjh2uJ7I7oQ1talABDtFYqD+NaJUgWrIx8D1wgXLMLmb
	hGQah6da916t8wah7hT99ifuCmvK5feJIUqwVq85IjLy9yvp1gQkFDpd
X-Gm-Gg: ASbGnctJ+j8tigfKcY9ynjeMzxdrkOrTCue9cnbsKTial40ztrv3nW59z8U1+hrvCsA
	XIUJLRt6v0GbQsdECKU2Vg0HJkpvO9VUWDXe3ZyzFdn5nsfw0kTEQcYkvBd7Plac5WKBNB762BK
	pHk2wsSisyeK5EAfuIeQz3TW8iACcVsCPnsWR8Sikv+yHoTFNgtCpdJyQIVYtMCQjRdccg9Lq6o
	z//NhpR6lQEV5iq6nJvRSWM2HvhGtRABbnfcM3LDRJ47cYyMPAKxXhFQqELKR+xfjnG8yBV4cKD
	gAsHzWy/ER+ZoJzAMn+WBjMym4WXxwjMADdGuTStfY6SIV9vsGPMpnlL1qyXSt3ElmwRVN62VXl
	ypHENkScA1kYoBjsF4olv+IiYQ1RcMeO0jmQWJZs9ZnqYPxxCuIzUWurqeeyZN9H4G5onKQRO2J
	BOnbpIdXQxSg==
X-Google-Smtp-Source: AGHT+IHpHxjrJNzOqbK5tHqMhgA5n1l4SV+seUg0G29TGsGABvLXeLmwLJWYLUvepxnNA5AGAnNdhw==
X-Received: by 2002:a05:622a:40cc:b0:4de:3a4c:15d1 with SMTP id d75a77b69052e-4e6ead6acccmr223084331cf.78.1760210361652;
        Sat, 11 Oct 2025 12:19:21 -0700 (PDT)
Received: from sleek (d-23-244-200-70.nh.cpe.atlanticbb.net. [23.244.200.70])
        by smtp.gmail.com with ESMTPSA id d75a77b69052e-4e706bde811sm44233681cf.17.2025.10.11.12.19.20
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 11 Oct 2025 12:19:21 -0700 (PDT)
Date: Sat, 11 Oct 2025 15:19:19 -0400
From: Joshua Milas <josh.milas@gmail.com>
To: Inochi Amaoto <inochiama@gmail.com>
Cc: robh@kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org,
	unicorn_wang@outlook.com, paul.walmsley@sifive.com,
	palmer@dabbelt.com, aou@eecs.berkeley.edu, alex@ghiti.fr,
	alexander.sverdlin@gmail.com, rabenda.cn@gmail.com,
	thomas.bonnefille@bootlin.com, chao.wei@sophgo.com,
	liujingqi@lanxincomputing.com, devicetree@vger.kernel.org,
	sophgo@lists.linux.dev, linux-riscv@lists.infradead.org
Subject: Re: [PATCH 2/3] arm64: dts: sophgo: add initial Milk-V Duo S board
 support
Message-ID: <aOqtt7BDXxItrs7W@sleek>
References: <20251011014811.28521-1-josh.milas@gmail.com>
 <20251011014811.28521-3-josh.milas@gmail.com>
 <hkdnjyldwr4watvizsju4qcvpvkb3mtt5rathaooembpceyufx@ega5xrqj6v3y>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <hkdnjyldwr4watvizsju4qcvpvkb3mtt5rathaooembpceyufx@ega5xrqj6v3y>

Hi Inochi,

> Only enable device that can be accessed directly. These devices share
> some pins and only one of them can be used. I suggest enabling devices
> that are accessed by default (which means it is compatible with the
> vendor kernel).

I decompiled the vendor device tree and will match what is in that.
Surprisingly most of these are enabled there. I also tried to check
the pinouts [1] but didnt really get anything out of it.

Link: https://github.com/milkv-duo/duo-files/raw/refs/heads/main/duo-s/hardware/SG2000-PINOUT.xlsx [1]

Thanks,
- Joshua Milas

