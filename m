Return-Path: <devicetree+bounces-34711-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id B29BA83AB07
	for <lists+devicetree@lfdr.de>; Wed, 24 Jan 2024 14:39:12 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 63193286F01
	for <lists+devicetree@lfdr.de>; Wed, 24 Jan 2024 13:39:11 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id AA9C260BB3;
	Wed, 24 Jan 2024 13:39:08 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="EEgxGLay"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pg1-f175.google.com (mail-pg1-f175.google.com [209.85.215.175])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2BB4ACA69
	for <devicetree@vger.kernel.org>; Wed, 24 Jan 2024 13:39:07 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.215.175
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1706103548; cv=none; b=V6pZQm9kx0wCXeKIIoEdjQx6gwaeCVgK/EDJFXMs7tI1KIqOzzAXqHPIS93kWsxYNr7ckfy2IVjmeakdZI2F8R42bf5HRrAfKwt+rmvuqUX4MJpchTLV3zgeWNEQ3bVQwi/6YbZ2jKehYhmj0vI1IEIVhSqKFRb6TFVf0JoJccM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1706103548; c=relaxed/simple;
	bh=VXDRP3jHlLp1Vz1FUnpl98sb18yc8bn4FPr+vcpYzSU=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=WvLZSgJhXdq0NUomP8hFqg6gv6oe2ivsG5xRkJCO8uE99bCWgWT/rI7KeqzuatpfRGX1szYPmZie0nbqNt+3DFhblqier/p8XC/6XTyljRSyF5LAjNosEEGBSbF+DMTdg9dBduJRHdkSiKYLXD8W6u7ntQmpHerduNjXSlLnhnM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=EEgxGLay; arc=none smtp.client-ip=209.85.215.175
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-pg1-f175.google.com with SMTP id 41be03b00d2f7-5cddc5455aeso2999242a12.1
        for <devicetree@vger.kernel.org>; Wed, 24 Jan 2024 05:39:07 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1706103546; x=1706708346; darn=vger.kernel.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=ehieE6Pnd31AcdW1Ld/IYXcEsqkI2A3AGWIqKlE3vv4=;
        b=EEgxGLayXmtVvpeX8+3hbvKAu5yXqx2KOeR7NOXM+DRm0sPZ/Az4T/2kisvr3ZqIKs
         4+J002lK1bT6imfWgPOXfXpPFKvb0EEU05ty8lNvFRyi0dyqMYJNGySSKyEpRCIGQW7Z
         LAIcuXKGmSDZmV+3O3VYEfWvKoOeyZCfrdFHlLf3b92wqPyk3eioyIu3fZNXa7pTpObZ
         EAMdkXR0uFti1P1ITIjqGbADONrEVqI9EL4Mp58q4ogsei4gcOjr5As9nkXBcgPEYmVi
         YApqCbEEoxjcb4hdsDkTvi276qkd+qmCICH2sy935vFs7q4YcRo9S/wCBaHQs97AId7B
         rLWQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1706103546; x=1706708346;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=ehieE6Pnd31AcdW1Ld/IYXcEsqkI2A3AGWIqKlE3vv4=;
        b=hAph5VDEJbEB9Z93DFCXllcmSd3gVwILoL3zU9/nKcZB2AuqnuGHpHB6fb5rni3SjM
         kW8gg7fogZo/51rIIaRecL8uI1Onq/7TzMAiqBJx7ZExDmpYFkZZ5k2eCEiNsRJYsWt1
         kz7lfNzIzXJvWUn1t6DULWt86SinKhVsF8JiBpaWsNdy7PDOjNw06DOji0SHoK1XVmvj
         QanfmJJQoQ9QwHHq+qOWDZ37Vyz6cwM2APiuRThSVE7D+gffDTGJPkSGrFWiGvre5rRF
         Xkt4apJ4wrSNdTOuztrQWpcFLtB1WQdBOssfFVqEXNRvmEtj07OYlCKEV8noFx+grfTy
         4a+g==
X-Gm-Message-State: AOJu0YxR8nUKhk5Nrubj71A2AF9O5Omzifa1ThR02T5Bm4BEZRqW7p6H
	G7bdb0VqeD11DHPslYHUYVAe6ZJ+TdZaOmSceItKm/Av26z95jlLY82paMOGrN1BQDbEHaGA9r7
	YbpMryI8rpHyp8i2m9aF+JuuK07wkBZGKvLNi8g==
X-Google-Smtp-Source: AGHT+IHcNpbw92kmoMveSqNqz8lIJnugRLzHQQfvl+Nc4uHkq5O73dcmbsrRHT4/nl4/CExlT2LTcn7V4gp0EQ52gDo=
X-Received: by 2002:a05:6a21:328c:b0:19a:508a:7f70 with SMTP id
 yt12-20020a056a21328c00b0019a508a7f70mr826194pzb.30.1706103546485; Wed, 24
 Jan 2024 05:39:06 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <82115165-6089-4214-b47b-2c2c0dfb8c66@linaro.org>
 <1935cb82-648c-f079-8852-d461dc9f8609@quicinc.com> <20231214061742.GG2938@thinkpad>
 <66f82e2c-0c42-4ead-93f5-2136ad478df2@linaro.org> <7768258d-4748-84f7-0da2-43988138e5cc@quicinc.com>
 <20240123161231.GG19029@thinkpad> <ZbDlLJRHu2ebdxc6@bogus>
 <20240124104530.GK4906@thinkpad> <ZbDuO_iV5i8mE01Q@bogus> <a053261e-6e05-4673-b5dd-2ce8f3c73ac9@quicinc.com>
 <ZbEHNyLE8bQlZHSZ@bogus> <7910de2d-6184-4f78-a286-d2e6e50c7a36@quicinc.com>
In-Reply-To: <7910de2d-6184-4f78-a286-d2e6e50c7a36@quicinc.com>
From: Vincent Guittot <vincent.guittot@linaro.org>
Date: Wed, 24 Jan 2024 14:38:54 +0100
Message-ID: <CAKfTPtCjR_MBO9Lh7=CU+dcFaigkbeKc27rVgCa-aEJyHyfK9A@mail.gmail.com>
Subject: Re: DT Query on "New Compatible vs New Property"
To: Nikunj Kela <quic_nkela@quicinc.com>
Cc: Sudeep Holla <sudeep.holla@arm.com>, 
	Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>, 
	Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>, robh+dt@kernel.org, 
	krzysztof.kozlowski+dt@linaro.org, conor+dt@kernel.org, 
	devicetree@vger.kernel.org, 
	"Prasad Sodagudi (QUIC)" <quic_psodagud@quicinc.com>, srinivas.kandagatla@linaro.org, 
	ulf.hansson@linaro.org
Content-Type: text/plain; charset="UTF-8"

On Wed, 24 Jan 2024 at 14:17, Nikunj Kela <quic_nkela@quicinc.com> wrote:
>
>
> On 1/24/2024 4:48 AM, Sudeep Holla wrote:
> > On Wed, Jan 24, 2024 at 04:27:55AM -0800, Nikunj Kela wrote:
> >> On 1/24/2024 3:02 AM, Sudeep Holla wrote:
> >>> Not really, still puzzled may be more than before as I don't understand
> >>> what is going on with the approach as it seem to be deviating from my
> >>> initial understanding.
> >>>
> >>> May be take an example of one driver, present the DT binding and driver
> >>> changes to make sure there is no misunderstanding from my side. But I am
> >>> not convinced with the explanation so far.
> >> Hi Sudeep,
> >>
> >> We are not using clock protocol to deal with clocks individually. We are
> >> trying to define different perf domains for peripherals where we are
> >> grouping clocks/regulators/interconnect bandwidth into these perf domains
> >> and use OPP levels via SCMI perf protocol.
> > That clarifies on what you are trying to achieve.
> >
> >> This is done so as to avoid individual scmi calls for these resources
> >> hence avoiding any race conditions and minimizing the traffic between SCMI
> >> client and server to get better KPIs.
> > Fair enough, why can't you just use genpd perf APIs to achieve that ?
>
> OPP is built on top of genpd perf only and was recommended by Ulf(PM
> maintainer from Linaro) hence we decided to use OPP APIs instead of
> directly genpd perf API.
>
>
> >
> >> This is being planned for sa8775p platform and any subsequent platforms will
> >> use the same approach. The idea of using perf protocol for peripherals is
> >> new and Qualcomm is first one trying to use that.
> > Sure.
> >
> >> Therefore existing peripheral drivers will require a way to distinguish between the
> >> two different configurations. Hope this provides little more context and
> >> insight.
> >>
> > While I agree this is new, use custom APIs to control standard resources
> > is simply *VERY VERY BAD IDEA* IMO. You may be fine to have these custom
> > API calls in qcom specific drivers. But what if this is needed in some
> > generic IP driver. Just not scalable and why should the maintainer of
> > such driver accept you custom API.
>
> Apologies if it wasn't clear but we are not using custom APIs. We are
> using standard OPP APIs to set to opp level of the perf domain.
> Example-dev_pm_opp_set_opp(). As mentioned above, we are following PM
> framework maintainers recommendation to use OPP.
>
>
> >
> > So I would suggest to work towards using std framework APIs or create one
> > if you can justify the need for it. Please stop creating custom APIs for
> > using SCMI. It defeats the whole standardisation it is meant to provide.
>
> Not sure I understand what you refer to as custom APIs here. The OPP
> APIs are not custom APIs. They are from OPP framework built on top of
> genpd perf. [1] and [2] patch series might provide you more insight into
> the work that Ulf did to support SCMI perf with OPP framework.

I think that you are speaking about the same thing. They plan to use
SCMI power domain for idle states and SCMI performance domain for
setting a performance mode. Then, the OPP library is used on top of
perf domain to gather and manipulate the  different perf levels.


>
> [1]:
> https://lore.kernel.org/all/20230919121605.7304-1-ulf.hansson@linaro.org/
>
> [2]:https://lore.kernel.org/all/20230925131715.138411-1-ulf.hansson@linaro.org/
>
> >

