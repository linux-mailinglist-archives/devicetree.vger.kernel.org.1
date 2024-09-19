Return-Path: <devicetree+bounces-103979-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 0604597CDD1
	for <lists+devicetree@lfdr.de>; Thu, 19 Sep 2024 20:48:57 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 249211C21C20
	for <lists+devicetree@lfdr.de>; Thu, 19 Sep 2024 18:48:56 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 302081804F;
	Thu, 19 Sep 2024 18:48:52 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kali.org header.i=@kali.org header.b="MSuxslZ8"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f44.google.com (mail-wr1-f44.google.com [209.85.221.44])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6F46423775
	for <devicetree@vger.kernel.org>; Thu, 19 Sep 2024 18:48:50 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.44
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1726771732; cv=none; b=inDhOPjwJO49r+GYONScYG6xqDgIraWJEgxKN20zhVmzOSmwXSlQC0ep7Dzh+P71mQJqguVzvEbPIpH0AsOhqCYjG9zoYPX+jWp8rGhi6V5fy3Ql+PLM6BKd2V3OkoyTyW2AL2MbfdmeOxyY2NL1Va/Q8IIuctlxEkmppJqG7W8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1726771732; c=relaxed/simple;
	bh=tBkFsOEGKki/Ujou0mi5ka3jQDUd4rYy6dVeLu5RC6w=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=IRq9fK/4mTRKRBR+TeWQOcXzUL4PwLlR4o6g/ybEHshErJnprAmu7RwQJZmAK+BAwe+LyT6pMsiJgiED0osdwaaB2UqXb68H2FfN820tVtCV+DdpZvm0Tv3a860W0LlsMnmMecoXnWp7T1j5YjtKtQA92FKYlrpUwttDDigi1mQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=kali.org; spf=pass smtp.mailfrom=kali.org; dkim=pass (2048-bit key) header.d=kali.org header.i=@kali.org header.b=MSuxslZ8; arc=none smtp.client-ip=209.85.221.44
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=kali.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=kali.org
Received: by mail-wr1-f44.google.com with SMTP id ffacd0b85a97d-378e5d4a80eso911091f8f.0
        for <devicetree@vger.kernel.org>; Thu, 19 Sep 2024 11:48:50 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=kali.org; s=google; t=1726771729; x=1727376529; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=5NKj5Iywn8pi1HV6RavjZasiS19LGez3AtSbupjyBc4=;
        b=MSuxslZ8E9y9YmWorzOb7RA3Csz+2Okf1MY9ZvOQwn1+sKSyIokoQ9ZXhP7UpHPAYW
         NOu41thxDOC6siauWBFnbk86zqlCxnFU+EY5UXLM3uUvzSGBVgcY3yWHQQQPzrhJO9sq
         DclOU6+tYc/4qXtepr8bLvlv6j8p5LstNqOnpk7cROnWS2qw6O1IsMUZ/mVQ2KsiVw78
         8/wWfXJC0De51TbrfLbv/e/shjHSp00fmCWXpLfmKCDxkvbaonhWqUF2OKz2IRlo8JFJ
         UMAI0qxgTsXwKlRpVGPhIFkRZ6gSeF8HVD5DgShbPjZ0oni6wBiQQmYZuDDUEKGq+uZU
         FfkQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1726771729; x=1727376529;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=5NKj5Iywn8pi1HV6RavjZasiS19LGez3AtSbupjyBc4=;
        b=CMp+Vuyk5Rb0szPyH9UGTHTgMuaKeMx/XHtETuFNI6aSmajGlsZSTjBFfupy2Twgpr
         CxHj+bwfBZLsJQkhIXjPxIY7KLXg9b4UtKMelJQnNSUxhEgnbnYo1E6VvmaJAva8oMoz
         3fI+mchmZC8XdguYKlGtNHh8fd0MSHKKAmXGAWVgyigrE6RriHkzPmm6r+pZG12eNxcd
         5ug1yN79beBE2pEtppnWTKug/unjeuMCEu38gjaTzedIGKnk/R8r/q5duaRgQvlJzLws
         1D8Ct3YY/dBDlQaaqv81Q7uWCdShqr7tJkWxO32aCHMAf4b59JEuvEw0M3UTqsWx02+K
         SkBg==
X-Forwarded-Encrypted: i=1; AJvYcCWryAXvSlz+RgQrNFX3c5/lXmKR8UqTFux/G0EeYvoeSLwRSHpzt97sWf/MT5VXKDY+f4m6Jf6C4rsv@vger.kernel.org
X-Gm-Message-State: AOJu0YxROlnN6UOicO+kdN6N7m7N/+q8AFucMFY8tQZNkcXH+wYn40m7
	1xw8guIUIxC/5PCMpJEllw3wCxi8Z3Hm049i2DQ2h3Tjiqn3ng6WLtPL5RwaP2XXD5+4YoU+BKI
	PKVH+98hvrEiMYdRTh37oLlR3T8xX/6A0/Nw0iA==
X-Google-Smtp-Source: AGHT+IFwZ00ICb5UCjsH6ziqz8Xe7HABIip24+gKr+pPgaD0kCyAzp+K0Fw2+tCzsUPMbb7TJM5PAUtR0m7y7h5wl6k=
X-Received: by 2002:a5d:410b:0:b0:369:9358:4634 with SMTP id
 ffacd0b85a97d-37a42277e15mr193773f8f.19.1726771728546; Thu, 19 Sep 2024
 11:48:48 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20240919-topic-apps_smmu_coherent-v1-0-5b3a8662403d@quicinc.com>
 <D4A2FKPTXHS5.3AHU7ZEKFVMGG@fairphone.com> <2fb16b35-e6c5-4239-a745-a9dd7412539a@kernel.org>
In-Reply-To: <2fb16b35-e6c5-4239-a745-a9dd7412539a@kernel.org>
From: Steev Klimaszewski <steev@kali.org>
Date: Thu, 19 Sep 2024 13:48:37 -0500
Message-ID: <CAKXuJqj=5wZg2+EZOmbS4TjrvqNm9UhsqeSPHZyVbOLnir_juA@mail.gmail.com>
Subject: Re: [RFC PATCH 00/11] Affirm SMMU coherent pagetable walker
 capability on RPMh SoCs
To: Konrad Dybcio <konradybcio@kernel.org>
Cc: Luca Weiss <luca.weiss@fairphone.com>, Bjorn Andersson <andersson@kernel.org>, 
	Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	cros-qcom-dts-watchers@chromium.org, 
	Marijn Suijten <marijn.suijten@somainline.org>, linux-arm-msm@vger.kernel.org, 
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
	Konrad Dybcio <quic_kdybcio@quicinc.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hi Konrad,

On Thu, Sep 19, 2024 at 5:07=E2=80=AFAM Konrad Dybcio <konradybcio@kernel.o=
rg> wrote:
>
> On 19.09.2024 9:00 AM, Luca Weiss wrote:
> > On Thu Sep 19, 2024 at 12:57 AM CEST, Konrad Dybcio wrote:
> >> I only read back the SMMU config on X1E & 7280, but I have it on good
> >> authority that this concerns all RPMh SoCs. Sending as RFC just in cas=
e.
> >>
> >> Lacking coherency can hurt performance, but claiming coherency where i=
t's
> >> absent would lead to a kaboom.
> >
> > Hi Konrad!
> >
> > You want people with the affected SoCs to test this I imagine?
>
> Yeah, would be nice to confirm
>
> >
> > Just boot it and see if it doesn't implode, or do you have any more
> > elaborate test plan for this?
>
> No, booting should be enough of a test
>
> Konrad

I have tested sc8280xp on the Thinkpad X13s.  It still boots and
nothing seems to be more broken than usual (kidding, it seems to be
running exactly as it was before the patchset was applied.)  I will
try to find the time to test sc8180x on a Flex 5G as well as the
sdm845 on the Lenovo Yoga C630, but I can't promise I'll find the
time.

Tested-by: Steev Klimaszewski <steev@kali.org> # Thinkpad X13s (sc8280xp)

