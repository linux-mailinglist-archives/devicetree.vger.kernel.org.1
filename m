Return-Path: <devicetree+bounces-232425-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 777C3C17B72
	for <lists+devicetree@lfdr.de>; Wed, 29 Oct 2025 02:01:17 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 1C2513A95CB
	for <lists+devicetree@lfdr.de>; Wed, 29 Oct 2025 01:01:06 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 22375227EA8;
	Wed, 29 Oct 2025 01:01:03 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="OijO5ShB"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pf1-f181.google.com (mail-pf1-f181.google.com [209.85.210.181])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A03181386C9
	for <devicetree@vger.kernel.org>; Wed, 29 Oct 2025 01:01:01 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.210.181
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761699663; cv=none; b=FoVjN/1DP8LJeQHbZWWg7uSwL12RYSC5QQUsRysZJYufwdbItmSl3zk+jx5IvUnbTWvdn5tS+K0zZmamiueMyln3dqqynNp0iU0R+10WMnsoS4E8m3QcBpRXg3j55gzz2epdjUnta0eendLN6J8xmP7WXtfiV3MCgIN4yc1+WDY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761699663; c=relaxed/simple;
	bh=uTnDRKOlvzmL7s/ezFOD6tLmfxhtqIVOOmhIkAE8y/Y=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=NdTL5VKyZ7MA+Gka3U8nzSjrtDkMGTfRr2K4nDFTigXoRo6XsYniego+jZw3ODnKsixaPXzpxfTaScbRVfB02W/3GZ8zKUfny4783p1PoTLW6Ss5s2Hk1F69xHIwQfx3Bv0Udix1b2Be7IO6vTT/6waT4eQmjIOeFuL4fLDIPpI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=OijO5ShB; arc=none smtp.client-ip=209.85.210.181
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-pf1-f181.google.com with SMTP id d2e1a72fcca58-7930132f59aso8720123b3a.0
        for <devicetree@vger.kernel.org>; Tue, 28 Oct 2025 18:01:01 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1761699661; x=1762304461; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=EOFIBRmcwlFaN9bXxhzQe/4jdraVkcYuslQKkiUSHs4=;
        b=OijO5ShBtwVjynG12Z/cGAYPQAK4ZsUGsdY8YlydIx1OV7aO5xYBgllvk+N4roNQg7
         U+UreZ7QqQ0c4km7EH//LbR8gjnf93NUJbH6s/Lwi+GftkYGdYf9gqMRul8IxLIat+up
         zbzoskAKKAsVTk+dldwvvW16LL9HY3EIl2Jsat62RrVVs31H2g8BuIfaTfdSf9Oh1Bqx
         hWTtNDUq6K8UTNjGlsrOq92OaPZNJU1lULDQQmp/cRDr0/E9XrT5tAyKPbXdjXaAojv1
         cmqjeXggGEPLoruEenCuywr3otRJXGFLnTjhGQmRR/t32h5YrU9WiFmujzjHQ4Kd9hxz
         sBKA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1761699661; x=1762304461;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=EOFIBRmcwlFaN9bXxhzQe/4jdraVkcYuslQKkiUSHs4=;
        b=ljBEpywB/GqoKiCTnSvHlm6bxkELLFK8E4XlnQosyZ++bzOccWDMwRdVaZjYYHMnEA
         nDY2Gho96MqrwgeW7MlKreZCQSm72RN5CeOF4dq4XZZW/hgj1lCtfyzy8FxEODn7ZRci
         9zm4rPC7VB0IGpWAQXQdILHkxfQsjzVy1I7mOX0vBKElnJ5lUxlib+BaZLCdlKQeqdfr
         GQNkfkcSqaRMm5XZuA0QKcdF6xQyjz6+TSteoikzmiwmGVsJa6c8XCfvfGiPnghJcVs6
         FOAsIPJwZqYI59CMclTsolCESbqYTS4XeTAcHmvIjamdgD89tfJKrdlc/ydG0kpHO1Os
         SVUA==
X-Forwarded-Encrypted: i=1; AJvYcCWDqIDAsPWTr+X2Z5oLO10bo6+iA9cY9jQciDAodOMGOF/pvqxh/5N6ZpSiN+Tu5FTHNbFeHRV/FZwu@vger.kernel.org
X-Gm-Message-State: AOJu0YxYrRtfd9qGGd8vv7Rxj+dg/+nZTPgGnvAZGYeySGZ3V4govzFM
	q1uif/7yLNbSU5+Od9wFnsDlEhYrSfS3zvieN+dBUxDXJv/RnAwGmsxa
X-Gm-Gg: ASbGncuFOEzqiVxV8+0acXL3DWut91Js/U3eB+XOzqNTxxzKO9CxywAOopUSia1JRhP
	LL5Q+AJ8+0v+uWVTeYaYDr2hCa5ZKIbCBeFeXEx5R9tINojwo6E713D7r6eulOqJWl79qdb0dFE
	Y4ddu0esINuHemcc+nGL00rfptleiOnLSp+URvhmt6dhdLUuW+T/vhPqB0ySbRAa9x4NEa9vPvZ
	dFF0i8wayKHA4d7tWgrboo6EsjkBiRbZbkPFJmuK/o/hyIADCeBoZOPs8oPF8Yw4S9B1epcr52X
	nGYHomMKkB0IiSycqGAruuWt9YCHzXI9v1CNRVAkFBulkADSaeIFTYseYuXDRXDsI3gqTrMArZU
	Duj7/H/z/DF29K2AfdXOh9lwVoahW9J0S7aBmIJ9Q/TzT5MjmfFSiOPKvWr+IC87JnfGozq4Zlc
	f1CqpK8mbrkw==
X-Google-Smtp-Source: AGHT+IEMe32xqVGqKCj2DGI+hZvdmpFIC/0PTrMJHiFO3ihM2p5pLrA2hxJkIMoSwNxbQFCypenenQ==
X-Received: by 2002:a05:6a20:914a:b0:2f1:302d:1285 with SMTP id adf61e73a8af0-34657f5b873mr1069767637.17.1761699660885;
        Tue, 28 Oct 2025 18:01:00 -0700 (PDT)
Received: from localhost ([2001:19f0:ac00:4eb8:5400:5ff:fe30:7df3])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-7a414015724sm13039315b3a.14.2025.10.28.18.01.00
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 28 Oct 2025 18:01:00 -0700 (PDT)
Date: Wed, 29 Oct 2025 09:00:52 +0800
From: Inochi Amaoto <inochiama@gmail.com>
To: Chen Wang <unicorn_wang@outlook.com>, Han Gao <rabenda.cn@gmail.com>, 
	Inochi Amaoto <inochiama@gmail.com>
Cc: Chen Wang <unicornxw@gmail.com>, u.kleine-koenig@baylibre.com, 
	aou@eecs.berkeley.edu, alex@ghiti.fr, conor+dt@kernel.org, krzk+dt@kernel.org, 
	mani@kernel.org, liujingqi@lanxincomputing.com, palmer@dabbelt.com, 
	pjw@kernel.org, robh@kernel.org, tglx@linutronix.de, sycamoremoon376@gmail.com, 
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, linux-riscv@lists.infradead.org, 
	sophgo@lists.linux.dev, chao.wei@sophgo.com, xiaoguang.xing@sophgo.com, 
	fengchun.li@sophgo.com
Subject: Re: [PATCH 0/4] Add PCIe support in DTS for Sophgo SG2042 SoC
Message-ID: <ilkog5axxgj2vexc2wegkpyyysrrcjhejamnpc2wmb3ilakbwq@f25veozfglr6>
References: <cover.1760929111.git.unicorn_wang@outlook.com>
 <PN6PR01MB1171791524E2BC1C227E342F6FEF5A@PN6PR01MB11717.INDPRD01.PROD.OUTLOOK.COM>
 <CAAT7Ki_4nkKM1-D_8ybwusxTTsR=Lf09v8Cx6QDWfuy8KLtbBg@mail.gmail.com>
 <PN6PR01MB1171739409EDE88BC4453D09AFEFFA@PN6PR01MB11717.INDPRD01.PROD.OUTLOOK.COM>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <PN6PR01MB1171739409EDE88BC4453D09AFEFFA@PN6PR01MB11717.INDPRD01.PROD.OUTLOOK.COM>

On Sun, Oct 26, 2025 at 08:31:49AM +0800, Chen Wang wrote:
> 
> On 10/25/2025 7:58 PM, Han Gao wrote:
> [......]
> > > > base-commit: 3a8660878839faadb4f1a6dd72c3179c1df56787
> > EVB1.X/2.0 can be started normally.
> 
> Thank you, Han.
> 
> Inochi, please add "Tested-by: Han Gao <rabenda.cn@gmail.com>" when you pick
> this patchset for next.
> 

Just add the tag is fine and no quote, I can collect the tag with b4.

Like this.

Tested-by: Han Gao <rabenda.cn@gmail.com>

Regards,
Inochi

