Return-Path: <devicetree+bounces-220762-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 6F85FB9A29F
	for <lists+devicetree@lfdr.de>; Wed, 24 Sep 2025 16:07:46 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 49C673231DC
	for <lists+devicetree@lfdr.de>; Wed, 24 Sep 2025 14:07:31 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 456E130595C;
	Wed, 24 Sep 2025 14:07:17 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from mail-qk1-f176.google.com (mail-qk1-f176.google.com [209.85.222.176])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B1C872E0B73
	for <devicetree@vger.kernel.org>; Wed, 24 Sep 2025 14:07:14 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.222.176
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758722837; cv=none; b=Lb35Hi00K6XQTrtSmxXJFK9xTP5Fp1BEVVaw8lxVxlp0hI3xcFCcUB9Lah6i7Y3fE/Yh2Bjs08ONUfvYmrGtF8R7hArTDWNoMThGm9yU5fENtMX5COmvLb/lzWFCJQoXkcgpM3JaROiOARJ04PtWRQXdOhFIooWKM9aEz7r6DBs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758722837; c=relaxed/simple;
	bh=HBVkixXC6UpLk/eCQCarn8ygZtWWeyWBTNoBVx3DstY=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=sEDzZsDA4keBqiL5rVUDwzmhWHP7aOXhzac/trQ5aFaFvD0DHpyl4hSO/l0Qedost7IsBZqL6tF9G/nD6i9CKllKRs0m9C7Dq9E+SppNVCvxZvkZ2IvvuDbOH65dAedt1JDQaesMdBkF4/NisC3IGMdAqNdq6/AeT3i9jNI1S3g=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=linux-m68k.org; spf=pass smtp.mailfrom=gmail.com; arc=none smtp.client-ip=209.85.222.176
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=linux-m68k.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-qk1-f176.google.com with SMTP id af79cd13be357-8571a0947d1so82034085a.0
        for <devicetree@vger.kernel.org>; Wed, 24 Sep 2025 07:07:14 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1758722833; x=1759327633;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=YeMFh8fKXfFfV77chei+2rVcM7wYWs2LWA9oczHhuiE=;
        b=vZpup4WyjaChrq4VoeDBR1foOgIsOYp/NA5XY8NOh67eYWOaR37Z3a/dbmZc5WQfd3
         hhr7mZptgzlR1M66M8m3rB0tSuRAnNOIwOZWa7mhnRV9vP1Ld3KPntrnPBguQBIPxmjN
         gUgu5rOqAOIUz77TxI7yv/LkGHkSHbUhx6OULXoRX5wZt8hLRA3sQZuO5oWqMANTuBSP
         AprFbOEqEHE1JYW9CyJ8xUa7FnODxn41QIAmEmIfnlIvhoyycrlRCzLD3E+BddJkSWIB
         HwC/pkevOttpCSPEtygKDNhMQ4hINFMnHYywEXiBbsZErdGaCJN8BsGTOMgGNLfmI2dU
         66dw==
X-Forwarded-Encrypted: i=1; AJvYcCWhAECNkv+WpeyFHaYFuSelbOPOYPDo+5SM4QmgcqFANnXWeHARvSpHiBIT6b59HWAQQ9J0erpwmOVw@vger.kernel.org
X-Gm-Message-State: AOJu0YwEXkP8/P+3r5nm4gQlG/YM/4q4v359FilZbPHk0u6xQOL7iuhH
	BtyQ84UWnJ1Gbv5e81cvq7lz6rg76wSaChpbECauX85xeMmQkCK329HoD/VvPw7R
X-Gm-Gg: ASbGncuI6j1dEjxntRxHdaG4mADD3UeqqodWmzMW79p3+pZHUnFFvWnAhFAjD1SCSrp
	slJmwmbM2IKIGX0XxXotHpnbE7vI7O9n7G8DOE656j4yJ/Wvm7sQzc6/Vzbt4uVr00sFgXCS2HT
	Iuqj9jqABkLO3NePXRa0aJmF6UJqaMVmE9CTQeRAGaVguboVR+cxO8RRMF3HIVORuaxPzlsqxC0
	TKgjzcyiU0gec2IA7MTBYtPodzjkKly1Rb9t4xNHfgn1XRpkuJmh88trpDrkyrTSIqEJqtqZvFs
	FsS9y53K/gPYZ5xqCzcYbYzuN3nJHv+O0RjHkCV+DK0ZCMTamqtNJDf+B5wKfjEh67W+M1UEL2o
	wPsvVKKLiNfJNmA6Vn/MFlv5zTZruFV3bYYyvjDYkUD0kCyPCBH6q6duLKMAze5R+
X-Google-Smtp-Source: AGHT+IFmtlFh63Qi3/vD7mXUvRLs2HaiktnIlfYeQNPCFQo7DEDQPPke2PFmFT9XaiCDXIrAhKoYPw==
X-Received: by 2002:a05:620a:1a0c:b0:81f:ebae:faf4 with SMTP id af79cd13be357-856e5ab746emr286460885a.21.1758722833257;
        Wed, 24 Sep 2025 07:07:13 -0700 (PDT)
Received: from mail-qt1-f175.google.com (mail-qt1-f175.google.com. [209.85.160.175])
        by smtp.gmail.com with ESMTPSA id af79cd13be357-8578404fc25sm99455285a.26.2025.09.24.07.07.13
        for <devicetree@vger.kernel.org>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 24 Sep 2025 07:07:13 -0700 (PDT)
Received: by mail-qt1-f175.google.com with SMTP id d75a77b69052e-4d9f38478e0so1590171cf.1
        for <devicetree@vger.kernel.org>; Wed, 24 Sep 2025 07:07:13 -0700 (PDT)
X-Forwarded-Encrypted: i=1; AJvYcCW4SFO+IpktdQvqSJ3I2pEdb84bPspE6Y4G0Os7BLvlbSCbvbdVzj4ICKhAXzMQIdrbwTEV0++p4S8Y@vger.kernel.org
X-Received: by 2002:a05:622a:24c:b0:4b2:8ac4:f097 with SMTP id
 d75a77b69052e-4d85bec4dd5mr30176331cf.33.1758722832210; Wed, 24 Sep 2025
 07:07:12 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20250917170202.197929-1-john.madieu.xa@bp.renesas.com> <20250917170202.197929-4-john.madieu.xa@bp.renesas.com>
In-Reply-To: <20250917170202.197929-4-john.madieu.xa@bp.renesas.com>
From: Geert Uytterhoeven <geert@linux-m68k.org>
Date: Wed, 24 Sep 2025 16:07:00 +0200
X-Gmail-Original-Message-ID: <CAMuHMdUw+cVtMkfnWjuO6BUNPRd=gZHhiD=KqPxugrJVLOe+Wg@mail.gmail.com>
X-Gm-Features: AS18NWDN65f91eaOSdFfPam9YAakFHEyWw7q-5E1Mc_B35_vALhwRHePhcWpJeg
Message-ID: <CAMuHMdUw+cVtMkfnWjuO6BUNPRd=gZHhiD=KqPxugrJVLOe+Wg@mail.gmail.com>
Subject: Re: [PATCH v9 3/4] arm64: dts: renesas: r9a09g047: Add TSU node
To: John Madieu <john.madieu.xa@bp.renesas.com>
Cc: conor+dt@kernel.org, daniel.lezcano@linaro.org, krzk+dt@kernel.org, 
	lukasz.luba@arm.com, magnus.damm@gmail.com, mturquette@baylibre.com, 
	robh@kernel.org, rui.zhang@intel.com, sboyd@kernel.org, will@kernel.org, 
	biju.das.jz@bp.renesas.com, catalin.marinas@arm.com, 
	devicetree@vger.kernel.org, john.madieu@gmail.com, 
	linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org, 
	linux-pm@vger.kernel.org, linux-renesas-soc@vger.kernel.org, 
	p.zabel@pengutronix.de, rafael@kernel.org
Content-Type: text/plain; charset="UTF-8"

On Wed, 17 Sept 2025 at 19:03, John Madieu
<john.madieu.xa@bp.renesas.com> wrote:
> Add TSU node along with thermal zones and keep it enabled in the SoC DTSI.
>
> Signed-off-by: John Madieu <john.madieu.xa@bp.renesas.com>

LGTM, so
Reviewed-by: Geert Uytterhoeven <geert+renesas@glider.be>

Gr{oetje,eeting}s,

                        Geert

-- 
Geert Uytterhoeven -- There's lots of Linux beyond ia32 -- geert@linux-m68k.org

In personal conversations with technical people, I call myself a hacker. But
when I'm talking to journalists I just say "programmer" or something like that.
                                -- Linus Torvalds

