Return-Path: <devicetree+bounces-231007-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 7116EC08887
	for <lists+devicetree@lfdr.de>; Sat, 25 Oct 2025 04:10:26 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 2037F3BAFD5
	for <lists+devicetree@lfdr.de>; Sat, 25 Oct 2025 02:10:25 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E67F723C8C5;
	Sat, 25 Oct 2025 02:10:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="HPmj2kBK"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pf1-f180.google.com (mail-pf1-f180.google.com [209.85.210.180])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7E4DF23B632
	for <devicetree@vger.kernel.org>; Sat, 25 Oct 2025 02:10:21 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.210.180
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761358222; cv=none; b=e6UaOqMY5OjibaOzuMc680Rtk4Z6akDnDMsZlXkClOhA9IgIiDZ5U7IPFYQhKe67nQySboWd3o0Uux32i/QUqawmMuMm6iOo9CxepvZSa8ZVcl42+P1rJc8E+8UOPvLJCcW3uwhCfYPwG5Rqymp3JWCOJG4A7SiyPeDA7O1RooM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761358222; c=relaxed/simple;
	bh=HUS9244ysl59Vq36eIRjlnVv6M6CDzfdg6dsmbE9H9g=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=ayWK/gMD6rc3BL0kLSeOkjVQPkJvO3IAVzu8QzFxlIN/ih0mMz0KGn9m1RadjjuclJ1zHbyBH/gJD8xTtxT3Z34DAwN3T2Xzt5FdQzwLzIiKB7pqoBKToz/cK5nsOfRqCT51uFESfwfRRYk+PAav9hgW/O3W3u+3xAvtlh2KPT8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=HPmj2kBK; arc=none smtp.client-ip=209.85.210.180
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-pf1-f180.google.com with SMTP id d2e1a72fcca58-7a26b04bfc8so2987204b3a.2
        for <devicetree@vger.kernel.org>; Fri, 24 Oct 2025 19:10:21 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1761358221; x=1761963021; darn=vger.kernel.org;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:from:to
         :cc:subject:date:message-id:reply-to;
        bh=9/FBYChVgWVnYtUmsOY0fMq3eM8ZJMPYKb26HoqCuHQ=;
        b=HPmj2kBK2M4ZdD1oerKh2XVl+Oqb6U5pk/SqNzH9TPT9a9voYVxBjmpGdYsrvVEiYe
         h4RbqmI09Ve2QXwzGo27s31navzcWuuqPvATj5dnCH3WDMal5P9sjZoF3Jq5PqsMjz+K
         bIawK+9huB1VdvqkNssH3600F3jwsGRrD/HpGS4qxD1iA5rJQoce47cie5lAcgsSURNU
         iOlFEdaXHPxEAlTfVa8IF8zEdgDPpWT40wyu1PE5FWJxjKWszINt8+VDSnqUmSATEXGq
         NIQVQAr++yB1Oqr2usOTm9LduswOr0Kk+ubA/ttsfMywLb6XasF5HkUO/SAfSJO77J2T
         L1/A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1761358221; x=1761963021;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=9/FBYChVgWVnYtUmsOY0fMq3eM8ZJMPYKb26HoqCuHQ=;
        b=HF8qNl3Kfp44OpHc3rT5DwyXM/ZEQdfDtyiJk96doDRw9w/QnkPd0F+hpDrCPFdpD5
         NCgLANYi5eik76ctTaC0G4UgHu4RoWRZExH/qS5KVDSA7RLxC7Rwzt3nOKH7DRKJJkrl
         TKU7eOlqOffwsKJsXvvoZJDeD551vrCRgcr1Cu4TjX21LKJYRiQwWK1yl3vi9llBWXIW
         lmDkdfulbFbDbVSM8dnq2ViDnbNk4zyO0qxrKrgBdDpfJg2n3UquPFDsX4MZ9GLqA5TB
         CUmLvCne8kIpPBwgXMK1YkOx5yOlpF4IGXXnWdFldFeSOdtzHuCnfQ8je/X/5yByha09
         /aig==
X-Forwarded-Encrypted: i=1; AJvYcCUP+voQEQ9zcoWLqapJexUNfPAiTYAKD9gPeLpzlPU0YkfBrjhmE67kXeG1ZZYx4gfh86qYWBebmTsB@vger.kernel.org
X-Gm-Message-State: AOJu0Yw10ApQyfpyTjujLBTO9e+Ndr2JUFmhRApQNe0MhqPM89IUZCTC
	utMHmS7uE4BfyuP5K2pb5PVKglilVnDWqCBkP++ekoKp9YzwjJ5G26zB
X-Gm-Gg: ASbGncsNcieBE1bIN60Bybe73G9IwyY6qlrecUHBm3V6UGfSmradOyYYmZalY7hqV+Y
	qTOZogDRwbkV6IxPTEj0n09a2rlJN0ccN3QpnMmg9e74nlFGn4lG7DfQdAAVk24/QM7YfIhhON7
	c5TYb6V2tDQceocToaQd0mIW39Lzhc3eh3iGCpHQ616R8Eb0IyyTJzEZT9E+fXyweIn3LwMpIpG
	0o7amwxUCso/kT8mSNWq4knn+6ryCC0LhDy4Xb8syiPhX2ZYApGDdFhBu8DN3vw88tRjs7uj/BL
	sqnQDyNkFRBLkRSBWGKel0r0So5z0yY1bE4kNexio1/zyoBlqeI43pW4RF8nwu/4JCvGL5CWs2v
	Cm+RpIzS3eyQ69WutBqK5P3GkENaoeGNByJWGbJyUCd39uDTvkypaFU0RZ5ncbTWlxSrqIHKlz8
	ih
X-Google-Smtp-Source: AGHT+IGxdF3j6/BMru43Wtt8roJ9EkCuO4V8hWSOev8tC8y9D9Mkhnf7FOrlQlXfV5+SHKSZlrr6MA==
X-Received: by 2002:a05:6a00:94d5:b0:780:7eaa:938 with SMTP id d2e1a72fcca58-7a220a7f285mr39262909b3a.12.1761358220535;
        Fri, 24 Oct 2025 19:10:20 -0700 (PDT)
Received: from localhost ([2001:19f0:ac00:4eb8:5400:5ff:fe30:7df3])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-7a414068cdcsm639966b3a.47.2025.10.24.19.10.19
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 24 Oct 2025 19:10:20 -0700 (PDT)
Date: Sat, 25 Oct 2025 10:10:17 +0800
From: Longbin Li <looong.bin@gmail.com>
To: Conor Dooley <conor@kernel.org>
Cc: Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Chen Wang <unicorn_wang@outlook.com>, Inochi Amaoto <inochiama@gmail.com>, 
	Paul Walmsley <pjw@kernel.org>, Palmer Dabbelt <palmer@dabbelt.com>, 
	Albert Ou <aou@eecs.berkeley.edu>, Alexandre Ghiti <alex@ghiti.fr>, 
	Alexander Sverdlin <alexander.sverdlin@gmail.com>, Yu Yuan <yu.yuan@sjtu.edu.cn>, Ze Huang <huangze@whut.edu.cn>, 
	devicetree@vger.kernel.org, sophgo@lists.linux.dev, linux-kernel@vger.kernel.org, 
	linux-riscv@lists.infradead.org
Subject: Re: [PATCH v4 1/3] dt-bindings: soc: sophgo: add TOP syscon for
 CV18XX/SG200X series SoC
Message-ID: <3pyukscivyj6iarozoll3jmavjleyqe44fu7xhimot4xorm3tw@rjybzefmfkui>
References: <20251024030528.25511-1-looong.bin@gmail.com>
 <20251024030528.25511-2-looong.bin@gmail.com>
 <20251024-hangout-designing-33e96c0d35fc@spud>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20251024-hangout-designing-33e96c0d35fc@spud>

On Fri, Oct 24, 2025 at 05:46:03PM +0100, Conor Dooley wrote:
> On Fri, Oct 24, 2025 at 11:05:14AM +0800, Longbin Li wrote:
> > The Sophgo CV1800/SG2000 SoC top misc system controller provides register
> 
> Please remind me how it works, sg2000 is just a rebadge and really this
> just refers to one device?
>

SG2000 and CV1800 belong to the same SoC series.
So it's more accurate to describe as “CV18XX/SG200X”.
 
> > access to configure related modules. It includes a usb2 phy and a dma
> > multiplexer.
> >
> > ....
> > 
> > +
> > +description:
> > +  The Sophgo CV18XX/SG200X SoC top misc system controller provides
> > +  register access to configure related modules.
> 
> Here and in the title you have Xs, are those placeholder or is this
> going into cv180x.dtsi and going to be used on multiple devices?
> 

Yes, the “XX” is going to be used in the whole CV18XX/SG200X SoC series.

