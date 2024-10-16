Return-Path: <devicetree+bounces-111838-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id C729A9A01FE
	for <lists+devicetree@lfdr.de>; Wed, 16 Oct 2024 08:59:48 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 033A41C215CF
	for <lists+devicetree@lfdr.de>; Wed, 16 Oct 2024 06:59:48 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id ACAC71AAE17;
	Wed, 16 Oct 2024 06:59:02 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=rivosinc-com.20230601.gappssmtp.com header.i=@rivosinc-com.20230601.gappssmtp.com header.b="g74hGVDI"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-il1-f182.google.com (mail-il1-f182.google.com [209.85.166.182])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 225F0199221
	for <devicetree@vger.kernel.org>; Wed, 16 Oct 2024 06:59:00 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.166.182
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1729061942; cv=none; b=f3PSqoPMXA0sjDr9BFohWqAI/X3/yhTZ7lNLzBNZJNydplVHjxyj8JoHX99EbhqxNyimZSCAOTeDasnZ/Iuf/QzOuVGAgkNOd8NQoSqlNgJWzxqWqwdFtcnI3GUWGJ43u9nhPiAADTsiFoAXqb7mBg79jbTDxyZUS3pJrQlHkJ0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1729061942; c=relaxed/simple;
	bh=GgqhkQIww3EnUduiJMY68fYIYly68qVF8vVZyUZJznY=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=MDamaR89F0NWuNivOk7ug5Db2yMQHOpJdZdlamxC+HGlfbP5nsn2BC8N4oxx7UB6zskm3BvgE/EJ0rbUCq/WOFZtdZzaN/eopCZOvJl9Ps5Rco/TDj2Y3Qs9pVvuasMFMb9nCmxTbt0mKdHYVlVIUgF/Av3htp1lyuefoAMdtsI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=rivosinc.com; spf=pass smtp.mailfrom=rivosinc.com; dkim=pass (2048-bit key) header.d=rivosinc-com.20230601.gappssmtp.com header.i=@rivosinc-com.20230601.gappssmtp.com header.b=g74hGVDI; arc=none smtp.client-ip=209.85.166.182
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=rivosinc.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=rivosinc.com
Received: by mail-il1-f182.google.com with SMTP id e9e14a558f8ab-3a3938e73d3so31504315ab.1
        for <devicetree@vger.kernel.org>; Tue, 15 Oct 2024 23:59:00 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=rivosinc-com.20230601.gappssmtp.com; s=20230601; t=1729061940; x=1729666740; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=GgqhkQIww3EnUduiJMY68fYIYly68qVF8vVZyUZJznY=;
        b=g74hGVDIdKXSRMoExMy2L7duAIytErxpodWT02qBjL8oPHDpvMDmRcasyJO7G7QcJa
         p0URmffTuHoz6VQMi64tHtPi8QGiwM/Qm4hHvd8TUmsYysmlwCdhvOMDGZsoEygMqnUm
         Rsd9+uQFFRSYtntyd0O/j8t+3KXLR6Yz/KtVBavFtU2uipV7EwuJAlaQiVEej/lwJ/r4
         8Hz7qLUMOvmN6ePwR1AW0j2I44VUO2EApFzjTVX3L8pumqmYSwdTHM8lN86qCWo76aBq
         Kx6/y+x7hufaGaSx6uaaLCNKjyRBEDumuJqe3Y4Ny3wjyvveq0H4tvtcHyrccdIQ+8FB
         BKfg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1729061940; x=1729666740;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=GgqhkQIww3EnUduiJMY68fYIYly68qVF8vVZyUZJznY=;
        b=xOn2hG8NSDtZw6NWbcgCxSMY0gfoK3wDnjZTH94J0aWI0DMyKGjvQPEbqWDhaECMR7
         j5xGGdFcu3obX6R1/8SYlXAHFvb60YP+LRT6WZBykBTphOYleKEQeL3k3NDkDdGEXhX1
         w8aZzQ4uUrlOXc+Ihxo6qZKxcRPMHJFS2q/0vqEQFlv56lDvqOaXujFgUlnq/NjUX12S
         XM38Xkm3C9lwZm/TX7bukAmG6VQWYdtbMJZ6YOLRqgA1USqrJ4lpScMBlBmYFSmnTuqj
         b75wLSdsKUIMw1FRCcw3/saxhDtVdRVmEpJtvNs8k8xL6h3iCpzCOKMWu7KBXAbqMeIa
         umqA==
X-Forwarded-Encrypted: i=1; AJvYcCWilraDrpMWNDe41B/h64Gb05VgHnNkVkUJ8gWBPYszusAgKvEv2o6rUTXx0h9ulGbx3eKWJTm81f+m@vger.kernel.org
X-Gm-Message-State: AOJu0YzBi3+PqDUcwEHewH9brMv6umueE2aiL0WWykDTA36eiRG04Rua
	eaV2OF4IRzaWjlhLz6QZKTKIYQ5MBFdKsyY44u6Auym7FKrWImtMUsGOQomTr4z1x830YD3IG/Q
	D+k8S0e0KoaIzFxCC+uLIk+9qSLPBN5zDvpH6Fg==
X-Google-Smtp-Source: AGHT+IErhSKXVFLT/FTSTbt5YKWJYoMqeAPP9Z85ar2ZS+Bbj8qfmYFetiQos0G6hD7PlYuMWAq/MbtzSisSbfzWG1w=
X-Received: by 2002:a05:6e02:1385:b0:3a2:7651:9864 with SMTP id
 e9e14a558f8ab-3a3bcdc6befmr119191555ab.12.1729061940262; Tue, 15 Oct 2024
 23:59:00 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <cover.1728579958.git.tjeznach@rivosinc.com> <Zw4s3BHQZ6x4d79-@8bytes.org>
 <20241015085945.GC19110@willie-the-truck>
In-Reply-To: <20241015085945.GC19110@willie-the-truck>
From: Tomasz Jeznach <tjeznach@rivosinc.com>
Date: Tue, 15 Oct 2024 23:58:48 -0700
Message-ID: <CAH2o1u5UMQHvaNNUgKQk1e97c03ntuJALUTaW7gYaCuyfY471g@mail.gmail.com>
Subject: Re: [PATCH v9 0/7] Linux RISC-V IOMMU Support
To: Will Deacon <will@kernel.org>
Cc: Joerg Roedel <joro@8bytes.org>, Robin Murphy <robin.murphy@arm.com>, 
	Paul Walmsley <paul.walmsley@sifive.com>, Palmer Dabbelt <palmer@dabbelt.com>, 
	Albert Ou <aou@eecs.berkeley.edu>, Anup Patel <apatel@ventanamicro.com>, 
	Sunil V L <sunilvl@ventanamicro.com>, Nick Kossifidis <mick@ics.forth.gr>, 
	Sebastien Boeuf <seb@rivosinc.com>, Rob Herring <robh+dt@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, devicetree@vger.kernel.org, 
	iommu@lists.linux.dev, linux-riscv@lists.infradead.org, 
	linux-kernel@vger.kernel.org, linux@rivosinc.com
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Tue, Oct 15, 2024 at 1:59=E2=80=AFAM Will Deacon <will@kernel.org> wrote=
:
>
> On Tue, Oct 15, 2024 at 10:50:36AM +0200, Joerg Roedel wrote:
> > On Thu, Oct 10, 2024 at 12:48:03PM -0700, Tomasz Jeznach wrote:
> > > This patch series introduces support for RISC-V IOMMU architected
> > > hardware into the Linux kernel.
> >
> > Thanks Tomasz. I plan to merge this driver into the IOMMU tree if no
> > further objections are raised in this thread by Friday.

Thanks Joerg. I'll try to address any remaining issues asap.

>
> Sorry, bad timing on my part -- I just left a couple of questions/comment=
s
> after Drew poked me at LPC to look at this.
>
> Hopefully we'll get those resolved asap.
>

Will, thank you for your valuable feedback.
Hopefully v10 addressed those comments.

Best Regards,
- Tomasz

> Will

