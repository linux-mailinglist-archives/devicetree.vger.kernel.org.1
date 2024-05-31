Return-Path: <devicetree+bounces-71301-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id F34948D6494
	for <lists+devicetree@lfdr.de>; Fri, 31 May 2024 16:32:10 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id AE99D28BAEC
	for <lists+devicetree@lfdr.de>; Fri, 31 May 2024 14:32:09 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 263F62E64B;
	Fri, 31 May 2024 14:31:57 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b="Ew6gCZyt"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-qv1-f45.google.com (mail-qv1-f45.google.com [209.85.219.45])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 96C1B52F9E
	for <devicetree@vger.kernel.org>; Fri, 31 May 2024 14:31:55 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.219.45
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1717165917; cv=none; b=QYwAa5+Spa1xaCEP41xpG7Aj/daArbJ3qBDCWS2ZAQQ1gdd/NWeUakHnRfjzxYxbshfGzC+HVJqVueX0PaRtWLz1NXQHoU3oNoCTcVGHVOAexkDdU+Pw4XbD+mLyM24jO7SK4hDjSq8PpRb2bjIcjIKVBi/OExPQ9KW8GfbxxbE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1717165917; c=relaxed/simple;
	bh=rD1cK89x0gwQ1Akf8e1MCQlJyJh8IFbiQBAk6Tz76lQ=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=selRwSDZfAnEuQNsbjCf0EooSw+PyvhEb5ONAKTu78gF1Vwx6AzUobAV8II4jQpP316uFubab05peTbwu2juVScK9RpdKnvtl3wA8twbGFe5ranKzAk55pNAR0LxNEC6txCdDR8nZt03KexmOwFx+4Q5vRdF46ohA4JDzZT/Tpk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=chromium.org; spf=pass smtp.mailfrom=chromium.org; dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b=Ew6gCZyt; arc=none smtp.client-ip=209.85.219.45
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=chromium.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=chromium.org
Received: by mail-qv1-f45.google.com with SMTP id 6a1803df08f44-6ae42374286so5858006d6.3
        for <devicetree@vger.kernel.org>; Fri, 31 May 2024 07:31:55 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google; t=1717165913; x=1717770713; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=w93Mo8Seh4Ih0DonXdf2s7kp6WzdgYrxnnUHUop/6+s=;
        b=Ew6gCZyt6WSo6Sd4GVRrwp7hds9W5KMxMMbujVCgp/MTEXZQOLW5uq5XAvvWGJwtO8
         7Te/KpHlpuzZjuWlbjcea1YCb57VW24tLS9h1isHTOaO+Z2LDfZT3HTfc800v8yqm12p
         Q6ZIAnGMud5ntvvxeyu9hCjNFi+iOgiV0lZs8=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1717165913; x=1717770713;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=w93Mo8Seh4Ih0DonXdf2s7kp6WzdgYrxnnUHUop/6+s=;
        b=CBAdQe9Mb1D0dglORVW0HZk0ksNA3PAoNEhN9xMqXTdYFANvDga6qyvtaVqvNFL++4
         h7Ws/WbcxRKVZKTZAJSbZHUurbXicnq6aqny+BrplFYRXnOoNOgk/tTl+eNjDWwGhjr8
         7k2KyG+N8ChHUg8JWtC+vQPPLvxSWKs/ifFcryjh2PLujCjCXvhF1lIJaaQVyP+v8FSx
         AzwV2dmJQL4y8Gee5mxiyr6woxzqgKJ/E0Vw53/8aPjvUVWfYboN0LgnlGsQiBUlAQY1
         NxcKsB+3zsF+8DLHBpOcltJTlYbFxd6ePJZErJSQssS2sM0N9//3T1zAWlBxRdpdVAJR
         Zw8A==
X-Forwarded-Encrypted: i=1; AJvYcCVBuxbCOBGrzXD5CfTsPsDW33mEqRRy/zF3J2gCrASt8L6NSj1isDP2zESLQ16IyFG5ZPuagXYs8okjPduS2N8IjwtJekh7aLZlkg==
X-Gm-Message-State: AOJu0Yx8fnZeteG+tMP6H403ixvQ9FLiH/F2S2jbOJeSulv5vgpVblob
	RqgTRlC341mYkZjKpKoQmwOkgt6KMKpd96dSfcnqWiw9QfJTrPqLlHwag+V6yFoNx3U0hf4YHeq
	VaTg+
X-Google-Smtp-Source: AGHT+IEZirEAjM4tD3svP4ekm4LfOtmmgeZD89F9Qlr24f1et738U+WPAHce3TxKk/afstVvqC27sg==
X-Received: by 2002:a05:6214:3110:b0:6ab:8588:df9a with SMTP id 6a1803df08f44-6aecd56df29mr22178286d6.13.1717165912802;
        Fri, 31 May 2024 07:31:52 -0700 (PDT)
Received: from mail-qt1-f180.google.com (mail-qt1-f180.google.com. [209.85.160.180])
        by smtp.gmail.com with ESMTPSA id 6a1803df08f44-6ae4a73e767sm6886936d6.1.2024.05.31.07.31.51
        for <devicetree@vger.kernel.org>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 31 May 2024 07:31:51 -0700 (PDT)
Received: by mail-qt1-f180.google.com with SMTP id d75a77b69052e-43f87dd6866so385651cf.0
        for <devicetree@vger.kernel.org>; Fri, 31 May 2024 07:31:51 -0700 (PDT)
X-Forwarded-Encrypted: i=1; AJvYcCWwUbhAK95eKqmZah75RZrJwuKbrCby17JpEzf00Duaaw74Dz3wl3LORTMU/1FMxKhQwcW8Ehvcdtew1+zCCW+4/cTd6sBV5KuS/w==
X-Received: by 2002:a05:622a:2596:b0:43b:6b6:8cad with SMTP id
 d75a77b69052e-43ff2c53bc9mr3353421cf.10.1717165910903; Fri, 31 May 2024
 07:31:50 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20240530082556.2960148-1-quic_kriskura@quicinc.com>
 <CAD=FV=UhrCKCv5R-LAAugrLXFp=cDcj2=Pp9-N3qk5pk2=sGEg@mail.gmail.com>
 <e732257d-cd16-4e81-9a20-af481184ce0e@linaro.org> <CAD=FV=XO_8SwDLJfoNwwCKEO6CZyMRMY_BdsWMLPBkpczErppA@mail.gmail.com>
 <d61ede0b-f689-46af-9bc8-e715784b86c0@quicinc.com>
In-Reply-To: <d61ede0b-f689-46af-9bc8-e715784b86c0@quicinc.com>
From: Doug Anderson <dianders@chromium.org>
Date: Fri, 31 May 2024 07:31:34 -0700
X-Gmail-Original-Message-ID: <CAD=FV=Xwf4eW+zwPecDg5855nVEY2NQMqpvHu59_e2xma6=wxQ@mail.gmail.com>
Message-ID: <CAD=FV=Xwf4eW+zwPecDg5855nVEY2NQMqpvHu59_e2xma6=wxQ@mail.gmail.com>
Subject: Re: [PATCH 0/2] Disable SS instances in park mode for SC7180/ SC7280
To: Krishna Kurapati PSSNV <quic_kriskura@quicinc.com>
Cc: Konrad Dybcio <konrad.dybcio@linaro.org>, cros-qcom-dts-watchers@chromium.org, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Rob Herring <robh@kernel.org>, 
	Bjorn Andersson <andersson@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Stephen Boyd <swboyd@chromium.org>, Greg Kroah-Hartman <gregkh@linuxfoundation.org>, 
	Matthias Kaehlcke <mka@chromium.org>, linux-kernel@vger.kernel.org, 
	linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org, 
	quic_ppratap@quicinc.com, quic_jackp@quicinc.com
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hi,

On Fri, May 31, 2024 at 7:27=E2=80=AFAM Krishna Kurapati PSSNV
<quic_kriskura@quicinc.com> wrote:
>
> > My only guess is that somehow SC8280XP is faster and that changes the
> > timing of how it handles interrupts. I guess you could try capping
> > your cpufreq in sysfs and see if that makes a difference in
> > reproducing. ;-) ...or maybe somehow SC8280XP has a newer version of
> > the IP where they've fixed this?
> >
> > It would be interesting if someone with a SDM845 dragonboard could try
> > replicating since that seems highly likely to reproduce, at least.
> >
>
> Hi Konrad, Doug,
>
>   Usually on downstream we set this quirk only for all Gen-1 targets
> (not particularly for this testcase) but to avoid these kind of
> controller going dead issues. I can filter out the gen-1 targets (other
> than sc7280/sc7180) and send a separate series to add this quirk in all
> of them.

Sounds like a plan to me!

-Doug

