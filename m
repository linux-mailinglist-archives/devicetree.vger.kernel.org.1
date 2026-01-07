Return-Path: <devicetree+bounces-252441-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 4967ECFF2F5
	for <lists+devicetree@lfdr.de>; Wed, 07 Jan 2026 18:47:47 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 0FD8631B310E
	for <lists+devicetree@lfdr.de>; Wed,  7 Jan 2026 16:36:07 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id AB555397AD5;
	Wed,  7 Jan 2026 16:24:03 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="MraVa3KH"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pl1-f175.google.com (mail-pl1-f175.google.com [209.85.214.175])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1DF1538F259
	for <devicetree@vger.kernel.org>; Wed,  7 Jan 2026 16:23:52 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.214.175
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767803040; cv=none; b=Q373XM+Rw9GBNwKUVEjS8l6OdcfNbcfAY850Wbr6pstVkSaoA5vzQlryL6LilzYRBJrvU+kQ0J/FbFsiaU5cIcw/Hng+HTET1ZX5kQDFPLvFjghdzSQiesJaezpRExVFjKFP4lkLL1ewE3c+8hMKgviUjsqNshKyDzpxH2sDX+8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767803040; c=relaxed/simple;
	bh=W4uk1VefUHGlDNc1aG8OtJCVw9QNApBQ62yJf8MGKyI=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=RknnCrVUCwRE1frRLt5jS2yEo8IvGlQE6AZM/OyyCc3diE39jJCSNMd90IBehbjYwIDeivKdK+ssrd8+2DxYuFHFLBWH32Dbq5Qaj4oD90KJOZiMzU0Kix9pTfyHpDLjjS8jPR78NLj3TGVWiOkEDkFr9/mhxnd/NiRYmQxrBGU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=MraVa3KH; arc=none smtp.client-ip=209.85.214.175
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-pl1-f175.google.com with SMTP id d9443c01a7336-2a12ed4d205so16760685ad.0
        for <devicetree@vger.kernel.org>; Wed, 07 Jan 2026 08:23:50 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1767803028; x=1768407828; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=OQ+7Q/Ti00gCIw+7hhy5kDVy5X0XQseCMCNmnyae2YA=;
        b=MraVa3KHZA1XVqpvfQs83ZpF/EEaCi2wnHu3xqBFe3Q/YCKpE5duHBhKQEz6KmfrG2
         7OE7Txu3InrutxUFHDQQBMcvJ9ci5AgOpCiHURQ3FVHwFQsif9efSQWjBXvFRDOzvcV0
         Dm9wX0LjsmMzTPQpdPnGJ86zTMuJIggVXheSpR5H4GhtUISe3eKDisMM3qdliUIk+Qcw
         mucWxoaQrd4sI3InGwMfHWX0ElcsWbWMcvPn4qXHuHSRNUDCZixhA0Q+oYcLbXSGQx7I
         U783IkgLpbVcz9SzfUmTG//GqdBxB7nOHnlgBGCeyx8cu9g1QyuwaxZq7Migg2niwuVB
         ewiQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1767803028; x=1768407828;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=OQ+7Q/Ti00gCIw+7hhy5kDVy5X0XQseCMCNmnyae2YA=;
        b=fClmnDcpCcmz2Z4Ap+FeniDFZscVzuFbxQFeyY8aw/3+NHT8Mfx4woInlF/RGd6PLP
         cJEkehrtAVder5VYlh1l14k7/vYcPYadcop9LtdOcrAHNUdRvwhJY3V9egKUFOAUAu8p
         Cbd7pOZoPPAEkt3ZN445jbaX15rkZDeDCirHFOl/IOHuFccJnrRkJmdBB07mhj1J7pPv
         ykheEQ95JOL0bH2G91A9AkqFUD0Bpcj2J4mqEDvSCWWKHxlO1f65ON+Y4aWmrtzVjyby
         TWb9hLP/E5WhmPsaxwumKihYF6iAk+o6LD6eszqRpYJyP5A6pjwvCxzYeKhPjh309bsf
         M/Tg==
X-Forwarded-Encrypted: i=1; AJvYcCWyz+SRqWy3Pfjkd8qOHr5Mp7pXre+WCc7regboAzQIRhxudM2XnIFF9TsSrGwwTg4AUJZFvyqowIvW@vger.kernel.org
X-Gm-Message-State: AOJu0YwlFq0mwM3DG1FIsjieuNUIBEaZ73VuEURgFIeOOqN9EzakiVsQ
	mSdkWLJoxw64u9TX0ATPWjcoHaJjrTMD2+usTPsTaftIM1lZptv7g3DL
X-Gm-Gg: AY/fxX6Rzarhd+0GV/TQgjCO/JhBXJhn/1aR2byb+XgO7yXmW9bATZluDnvlSXEoGM4
	6UphIUVR2vGlU8GKIvl+fm1kqhHuSLOnpxCx7AVr5Afo5ZQzWc6i/43b45e+uvIOJjx2EL4z7IP
	Mdc11cI9cHRdqfQQBFqt/93FodsYlhdAHM3qtuLbuLRXJZqu92Z4MFDdAQ9cRVctBUR6MoYE4Rg
	HoES9qkFr4pWIyMBUN0UVKVuZrVknzvXwzrywAIh8o//SQSUpAHrLQoMuJ2Qj+pL67fLOKVBlA1
	fwI1Fb3TX9gVrYki0G/+ADbNkGPJnYv+e1Risbv9D/iMLZM+k+lCKO+VZEtc0iR+PLo98NaNZ3V
	wfw38AbnY0WIV5mP8EXXWl4Sk1DUhI3v6X646PBiLv96lpGrGvJcr4jvb644Aql88l/wuG0Q7hs
	K8Zhk=
X-Google-Smtp-Source: AGHT+IHaiHjB70xigUp/SSo/W4q9gkk85M7RPzHR2gkRrQPwVPEkFh3CLZSZ2WYZHlPy3Xh1Wb7TAA==
X-Received: by 2002:a17:903:1108:b0:29e:e925:1aa0 with SMTP id d9443c01a7336-2a3ee4a8758mr26237475ad.45.1767803027716;
        Wed, 07 Jan 2026 08:23:47 -0800 (PST)
Received: from localhost ([211.94.250.87])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-2a3e3c3a4fcsm55666365ad.12.2026.01.07.08.23.46
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 07 Jan 2026 08:23:47 -0800 (PST)
Date: Thu, 8 Jan 2026 00:23:43 +0800
From: Encrow Thorne <jyc0019@gmail.com>
To: Andi Shyti <andi.shyti@kernel.org>
Cc: alex@ghiti.fr, aou@eecs.berkeley.edu, conor+dt@kernel.org,
	devicetree@vger.kernel.org, dlan@gentoo.org, guodong@riscstar.com,
	krzk+dt@kernel.org, linux-i2c@vger.kernel.org,
	linux-kernel@vger.kernel.org, linux-riscv@lists.infradead.org,
	p.zabel@pengutronix.de, palmer@dabbelt.com, pjw@kernel.org,
	robh@kernel.org, spacemit@lists.linux.dev,
	troy.mitchell@linux.spacemit.com, troymitchell988@gmail.com
Subject: Re: [PATCH 3/3] riscv: dts: spacemit: add reset property
Message-ID: <20260107162343.GA49546@hailin-HP-Pavilion-Laptop-14-dv0xxx>
References: <20251230-i2c-reset-v3-0-7500eb93b06e@gmail.com>
 <20251230150653.42097-1-jyc0019@gmail.com>
 <20251230150653.42097-3-jyc0019@gmail.com>
 <aV5r8k4VKnXX_9Sw@zenone.zhora.eu>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <aV5r8k4VKnXX_9Sw@zenone.zhora.eu>

On Wed, Jan 07, 2026 at 03:22:42PM +0100, Andi Shyti wrote:
  Hi Andi,
> Hi Encrow,
> 
> On Tue, Dec 30, 2025 at 11:06:53PM +0800, Encrow Thorne wrote:
> > Add resets property to K1 I2C node.
> > ---
> >  arch/riscv/boot/dts/spacemit/k1.dtsi | 8 ++++++++
> >  1 file changed, 8 insertions(+)
> 
> how is this patch formatted?
> 
  Sorry, I forgot to add the version number when I resent it.

  The initial sending process was interrupted, so I
  manually regenerated the patches using git format-patch 
  and sent them again.I have verified locally that the 
  entire patch series applies cleanly.

  Please let me know if you find any other formatting issues.

  Encrow
> Andi

