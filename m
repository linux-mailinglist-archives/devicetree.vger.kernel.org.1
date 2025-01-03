Return-Path: <devicetree+bounces-135234-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 43EFEA003A9
	for <lists+devicetree@lfdr.de>; Fri,  3 Jan 2025 06:39:03 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 80F9618839D2
	for <lists+devicetree@lfdr.de>; Fri,  3 Jan 2025 05:39:05 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 02DE61B21A6;
	Fri,  3 Jan 2025 05:38:56 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="PjyUiju2"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lj1-f180.google.com (mail-lj1-f180.google.com [209.85.208.180])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 049031B0F21
	for <devicetree@vger.kernel.org>; Fri,  3 Jan 2025 05:38:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.180
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1735882735; cv=none; b=lPQgTrkEk3NNzgucLVlcP5nPOuyjuRhYWb+jyb9QrOUnq9zh8vFXKqB7pKG/Be95DoHxPtswUofpsTSLxnzrYF9rRnLa2WKPJY3byxeuk/lTXQHx89Gh3tcsZh/yxekGot/d2zIpvnDt9gF9T7DsHMpsTJfQmmkrS8AHbkR/Ah4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1735882735; c=relaxed/simple;
	bh=XTewuUNQ+/ESgzDVGNQhvgCh25cMGfsFj/3A69tDp6U=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=VcxY378/HfBLGfqyVHBpMKXjAyFaidWflgU9Q6t23w1v9apcaQEyEhqLKX8rEU+PbEoefkWjYfuHI+bYyU60Bs0loXyqKaKv4VZUiYgXdBufqoiZaPazmUBN1qRzz5jQEsCVhi1jJrQnf2XOGJiac8Vxy7Etm8GrdsV6m8Tv/44=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=PjyUiju2; arc=none smtp.client-ip=209.85.208.180
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lj1-f180.google.com with SMTP id 38308e7fff4ca-30219437e63so138555391fa.1
        for <devicetree@vger.kernel.org>; Thu, 02 Jan 2025 21:38:53 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1735882732; x=1736487532; darn=vger.kernel.org;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:from:to
         :cc:subject:date:message-id:reply-to;
        bh=Nh6CMd7r1T+hytaykBZTXDKLZ482z8ewIFxQcxwOIrc=;
        b=PjyUiju2+93QaTOGjTiRINGC5m02tlUUCiIedkl5uIGmro+a7rmp6pQXXalqhLiR9I
         e5O7wO+y/joJltHnDyu/QQucm0mFv7JakKcyB9/VpjiGeAkA8b0aoiRdMXoi8Kw/wxSG
         knsbzkS1rnEtcJ46Dx1APZ697z+zIY5x4Tuj62O5f9ZqbXI1ynuTnqipd69w/QTC3EYb
         LbftxjvSUu+5VapUmEFh+WeYMFJ5RpE7W7/wKTh32adNu0YEGWydy1c/+QTTGgBgEJNE
         SX73WAbAoxFTvqp3nnSg3hCIKC7UXe70/JH4XAldURnbj9wNzt2JINFQ6k43TED8PQA0
         1q2A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1735882732; x=1736487532;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=Nh6CMd7r1T+hytaykBZTXDKLZ482z8ewIFxQcxwOIrc=;
        b=LTdaAKjB+281mbw1+9JViVb4Fr/pKSzFwZ35kflxiEK8ipDHQV/FvtWWQ9/JIf6fJT
         mRY95L4Y0ma8wTK/f/A1e80uL6W4pIcCYFUxgqcjM+6qRZ7iUqh0sLvqG5cUaYRDm6yP
         0pHesHsZzjHjOf4d/CN0jPcgQhGgjIyG7a1O+0HWTKTy7/xlIHH0lSPcJlV9/F3iMON6
         QPENCsGjbOoMmGSMAs9PzQqBVWN8Y1PwnGCri4rrJFN9749LALCvT1Ey6iOKkaScwtom
         LMIcADdQ9Wxrj5BXOEQgV9SwlSdXJXSWqeaToBJluhSLnmMuFj1a7ryFkCGJ86C7ygEU
         qIPA==
X-Forwarded-Encrypted: i=1; AJvYcCUFBwoeJltYDIbQAKEWoSb99ZXn3vV6zs1QJ+YsKvjf96iR9GNb2OmbBe1Suc71Ms0YZDiJVm6FmEVp@vger.kernel.org
X-Gm-Message-State: AOJu0YyPMSWVbqjDFUkDoFXx7erOkQO5w81Fh9oA/kIgJer5gt6e/VKG
	XFiyxAY030GFMtsp/NOeo+gXnPH5o56xtPYVkevkUBcL/lZfOZhMZzh2Hq7ODzE=
X-Gm-Gg: ASbGncttl6bcgvT3Z6sUznihZnmlFOYvEoDyGRMmUtEg0AuSVQLfRtvfEroyNd7IY8p
	PlabFV6niF1TBiGILVQdMEdqlsqABprc/ZHH3Lkzsb4UG0MLaiYMYnFOXVD3TUWxk/7I0ysshm3
	YOkcDjSVhhg0vyIf1KsV5y1iUSWdSVpXipkRzKMtwhRSLN//3mNQ231cxhVpmOZbfcXyby9kgFE
	DXiQ0WVZS/X7n3GExbx8JCLTJuB6xlaCFEkLl+ioq/j9iLUf0TsBG2v3sUPBgcPK8Ku/tE2DxVN
	DgFvtGeTpby2QSEEShetEDVuVeNuX2GvqKlH
X-Google-Smtp-Source: AGHT+IHmLh+NOber4nBw/SsreQFdAIZQKPzTuuOcd6i2VGjx3RMNWlFuyhwgzubmzrvX31fOVuwr6Q==
X-Received: by 2002:a05:6512:401b:b0:540:2247:ac4e with SMTP id 2adb3069b0e04-542212e1035mr14142710e87.7.1735882732124;
        Thu, 02 Jan 2025 21:38:52 -0800 (PST)
Received: from eriador.lumag.spb.ru (2001-14ba-a0c3-3a00--7a1.rev.dnainternet.fi. [2001:14ba:a0c3:3a00::7a1])
        by smtp.gmail.com with ESMTPSA id 38308e7fff4ca-3045ad6c60fsm45363211fa.24.2025.01.02.21.38.49
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 02 Jan 2025 21:38:50 -0800 (PST)
Date: Fri, 3 Jan 2025 07:38:48 +0200
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
To: Pengyu Luo <mitltlatltl@gmail.com>
Cc: quic_aiquny@quicinc.com, andersson@kernel.org, 
	bryan.odonoghue@linaro.org, conor+dt@kernel.org, devicetree@vger.kernel.org, 
	gregkh@linuxfoundation.org, hdegoede@redhat.com, heikki.krogerus@linux.intel.com, 
	ilpo.jarvinen@linux.intel.com, konradybcio@kernel.org, krzk+dt@kernel.org, 
	linux-arm-msm@vger.kernel.org, linux-kernel@vger.kernel.org, linux-pm@vger.kernel.org, 
	linux-usb@vger.kernel.org, nikita@trvn.ru, platform-driver-x86@vger.kernel.org, 
	robh@kernel.org, sre@kernel.org
Subject: Re: [PATCH 2/5] platform: arm64: add Huawei Matebook E Go (sc8280xp)
 EC driver
Message-ID: <uqr2hibbl4krkseeal6shmcifctrppimk4tr3y4i64luqpslsq@q3mz2ppencwl>
References: <1dff7a78-1693-45d7-8ee3-357b33848595@quicinc.com>
 <20241231074437.239979-1-mitltlatltl@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20241231074437.239979-1-mitltlatltl@gmail.com>

On Tue, Dec 31, 2024 at 03:44:36PM +0800, Pengyu Luo wrote:
> On Tue, Dec 31, 2024 at 1:00 PM Aiqun(Maria) Yu <quic_aiquny@quicinc.com> wrote:
> > On 12/30/2024 6:44 PM, Pengyu Luo wrote:
> > > On Mon, Dec 30, 2024 at 5:04 PM Aiqun(Maria) Yu <quic_aiquny@quicinc.com> wrote:
> > >> On 12/28/2024 1:13 AM, Pengyu Luo wrote:
> > [...]
> > >>> +     i2c_transfer(client->adapter, msgs, 2);
> > >>
> > >> ARRAY_SIZE(msgs) is suggested instead of pure 2.
> > >>
> > >
> > > Agree
> > >
> > >>> +     usleep_range(2000, 2500);
> > >>
> > >> Why is a sleep needed here? Is this information specified in any datasheet?
> > >>
> > >
> > > Have a break between 2 transaction. This sleep happens in acpi code, also
> > > inside a critical region. I rearranged it.
> > >
> > > Local7 = Acquire (\_SB.IC16.MUEC, 0x03E8)
> > > ...
> > > write ops
> > > ...
> > > Sleep (0x02)
> > > ...
> > > read ops
> > > ...
> > > Release (\_SB.IC16.MUEC)
> >
> > Could you please share the exact code snippet that is being referenced?
> > I'm a bit confused because it doesn't seem to align with the current
> > logic, which doesn't have read operations within the same mutex lock. I
> > also want to understand the background and necessity of the sleep function.
> >
> 
> I mentioned I rearranged it to optimize it. In a EC transaction,
> write sleep read => write read sleep, in this way, we sleep once a
> transaction.

Sleeping between write and read is logical: it provides EC some time to
respond. Sleeping after read is complete doesn't seem to have any
reason.

> 
> Please search
> 'device name + acpi table' on the internet, someone dumped it and uploaded
> it, in SSDT, check ECCD. I am not sure if huawei allows users to dump it.
> So I don't provide it here.

-- 
With best wishes
Dmitry

