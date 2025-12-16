Return-Path: <devicetree+bounces-247187-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id A105ECC5646
	for <lists+devicetree@lfdr.de>; Tue, 16 Dec 2025 23:45:52 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id B5DD0304C5C8
	for <lists+devicetree@lfdr.de>; Tue, 16 Dec 2025 22:45:24 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E333333F8C7;
	Tue, 16 Dec 2025 22:45:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="QSDMHNou"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pf1-f171.google.com (mail-pf1-f171.google.com [209.85.210.171])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4BDB23358C0
	for <devicetree@vger.kernel.org>; Tue, 16 Dec 2025 22:45:21 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.210.171
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765925123; cv=none; b=eHRbeoWjnYj9wUpcRUG5Mtva2PXhkBg3CuFID0f7kBv973OQOecJp1QJwYXHfBxrZAy+J7b8xTqeGDBp1HTE+QvHm2mmScVL765wTKMtuYj1/2Jc5scs4TgZpbPfgLgK6NYUa8CRX2kZIWXa3Sl7P3GpuMJjIEwZKGuEXENx+0Y=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765925123; c=relaxed/simple;
	bh=/ns1Rp/WSyMte8FAqNCkjuzh1ej9BUVs0MBSnMXCYb8=;
	h=Date:From:To:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=VwVCtBzEbIBxlVNCz4HL4gy8q6Gxox/VJOjN4B6dSLIl+NCXjEwxdSQUV7HM9UJ1vU2gHuUaiHNKNzZ1o4YoQLPcv+hUKq4BeTRzH6blGVgu1DY2Fyj7Het2RiNq5h+jQAoGOVv8GCLU+DrgHztZX3oR6+CoQEym+MYmoPQIpdM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=QSDMHNou; arc=none smtp.client-ip=209.85.210.171
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-pf1-f171.google.com with SMTP id d2e1a72fcca58-7d26a7e5639so5840689b3a.1
        for <devicetree@vger.kernel.org>; Tue, 16 Dec 2025 14:45:21 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1765925120; x=1766529920; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=A7nXoigv9/yz61HlMjawiCb2Rzy4kdcjqDMu4uuBc3o=;
        b=QSDMHNouoA2fawUtmLZ1VYKaGkG+nInPQxh/AaPvaySs743dgzj9E0A6Y2Pj22BPDN
         uOnSayhn010iDB1TuKqugonExPyoGLUq/iEbRpuILHOhsjC5EcF7evV2AvwtqKPLyHr2
         Z50gC8FgWCYtaiM1NfMkVOokpA0DyleWumEvbhWGY/3ZjvrZgrBDv2Fv6tOzndM5CP6v
         7PTkx5BO6EpocdlrIOoJyTvBguOG98Jm9+Yr5vZy5E0D6CIJNMIs52IW/vZglZyke8Dz
         JnYQfyQS0WOTr8lnYGef6kg2qVQoj9Dq7GofofMePTuiepDE+joyjVmNaVuzOeES1HVS
         A2Lg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1765925120; x=1766529920;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:to:from:date:x-gm-gg:x-gm-message-state:from:to:cc:subject
         :date:message-id:reply-to;
        bh=A7nXoigv9/yz61HlMjawiCb2Rzy4kdcjqDMu4uuBc3o=;
        b=X7PSRQpFa4t+wcfqWHJW08ZOtz6b9q/FW2clPdjXqTi6EkO4Gb97SU+Mpi+U4Cm4pv
         O+OCn69aN69xC6LmUaMF/bkgddYFhUQ1JxJaAh7lK0F4Ut3qotrnAL5W3By+OdagR+5z
         LCP3tmONEgexcarS7yoQeQ0XBzNtYjn49Eg2ZWPShvMAXwFhgGzdr5S/LG6FDczg3iks
         Y9euisOtYc/1kRbuT4pNZPPQtjeXu3YV38zqOdv3G/JVe9KeTOfDjdC3va4vT5WR+ZlR
         TUZsBEC9PkAEtp1snucrobTFzFvlasp79CYnwRLpsgCnac0kdU1HsaVMAMUtlxoKcHIT
         p1yw==
X-Forwarded-Encrypted: i=1; AJvYcCVTa/VcveW4qxidr+vpd8eoS89rINUMmGc1DVUtc8hoxRNn5a556aiUf5PL6Uq3WRj4j1NMR3i5wh+t@vger.kernel.org
X-Gm-Message-State: AOJu0YxZR7Lt58xJsAxPUlxFBseABr4KJVdDiBQEvuK3XMqVGXK64pMh
	jQtSyeSJs8vZC4GCk8BfQfXMC7aIWU1C/pPO7RBOd0ANlbrGDkVWx+x9
X-Gm-Gg: AY/fxX7ImrynzciZE1Mt9cF5GKfhCk+6P5v4UevmmbEwsp6Gz3KmtfmZ7BOuYzTGluE
	WYKYy0qxURUHLT3oIke20ZrtRocLK01NNZjXeXfDA2PPIJdDZhKObfCehu9zhcLXzxjbHhMeply
	cd9RRbZp6e3FaSMrcxiiBssoQpnQq6ZyrISzfyXnyVbMA76sJEPAs4FfVRH2e5DYjZT+HcyPa8b
	APPeOi3mDpBsJUs16L5g4PTxdCtvmyv5EkOziheZki1CsMWgAH6lX/y3JoSdPt1r9WIKskDcLl9
	KBE3JpP+qVTmJvptNPft0oVJT94VOc1litRhHk4X9FgvlhR6OOvY7D63MPqXz1VgpW5RxV6RnB8
	ec91wkocsIQvuof5OMxS6r0Mzc39824hRh+ZUZbYqZdj40tq/G7URZbkGNUrWHwMy6oqPh0YTyR
	c+czTz/ZbizQ==
X-Google-Smtp-Source: AGHT+IE9nIlDHsFmfYsacNR6G1ZVOO+zgg/tDfoQF+xuebBoHAyCLps0J4BtB+5eml9RBwlgxvUP1Q==
X-Received: by 2002:a05:701b:2719:b0:11b:c4ee:66b with SMTP id a92af1059eb24-11f354dd89amr8447143c88.37.1765925120396;
        Tue, 16 Dec 2025 14:45:20 -0800 (PST)
Received: from localhost ([2001:19f0:ac00:4eb8:5400:5ff:fe30:7df3])
        by smtp.gmail.com with ESMTPSA id a92af1059eb24-11f2e1bb28dsm57479374c88.2.2025.12.16.14.45.19
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 16 Dec 2025 14:45:19 -0800 (PST)
Date: Wed, 17 Dec 2025 06:44:17 +0800
From: Inochi Amaoto <inochiama@gmail.com>
To: Inochi Amaoto <inochiama@gmail.com>, 
	Eugeniy Paltsev <Eugeniy.Paltsev@synopsys.com>, Vinod Koul <vkoul@kernel.org>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Paul Walmsley <pjw@kernel.org>, Palmer Dabbelt <palmer@dabbelt.com>, 
	Albert Ou <aou@eecs.berkeley.edu>, Alexandre Ghiti <alex@ghiti.fr>, 
	Chen Wang <unicorn_wang@outlook.com>, Alexander Sverdlin <alexander.sverdlin@gmail.com>, 
	Longbin Li <looong.bin@gmail.com>, Ze Huang <huangze@whut.edu.cn>, dmaengine@vger.kernel.org, 
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, linux-riscv@lists.infradead.org, 
	sophgo@lists.linux.dev, Yixun Lan <dlan@gentoo.org>
Subject: Re: [PATCH v2 0/3] riscv: sophgo: allow DMA multiplexer set channel
 number for DMA controller
Message-ID: <aUHgt8caOoo1gsES@inochi.infowork>
References: <20251214224601.598358-1-inochiama@gmail.com>
 <aUE9hDtflXpcgGnX@inochi.infowork>
 <aUF4w9sO5lmU9T6v@anton.local>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <aUF4w9sO5lmU9T6v@anton.local>

On Tue, Dec 16, 2025 at 07:25:06PM +0400, Anton D. Stavinskii wrote:
> On Tue, Dec 16, 2025 at 07:09:16PM +0400, Inochi Amaoto wrote:
> 
> > Hi Anton,
> > 
> > Since you have tested this patch before, could you give a Tested-by?
> > 
> Done. V2 works fine with Milk Duo 256M with 2 channels RX and TX working
> simultaneously.
> 
> 
> Tested-by: Anton D. Stavinskii <stavinsky@gmail.com>

Thanks

Regards,
Inochi

