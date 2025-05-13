Return-Path: <devicetree+bounces-176601-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 6F96AAB4BF5
	for <lists+devicetree@lfdr.de>; Tue, 13 May 2025 08:31:19 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 6D722174686
	for <lists+devicetree@lfdr.de>; Tue, 13 May 2025 06:31:19 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 29E7E1E9B34;
	Tue, 13 May 2025 06:31:11 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=vayavyalabs.com header.i=@vayavyalabs.com header.b="lHuMdPUy"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-yb1-f172.google.com (mail-yb1-f172.google.com [209.85.219.172])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9CA737E9
	for <devicetree@vger.kernel.org>; Tue, 13 May 2025 06:31:07 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.219.172
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747117871; cv=none; b=PTr8kbTnXtBYojN7tp1RB6IBvnNDcgy7Ywzi4aRfmQ9nQtqSyuccsqm83ZXmG+rGWo2rHEBKEwijxoTeAHXf9XqcV6f7KmiPK/cbfsvhK55iFZHyTVNN941bOzvKEemf3Ae7W2AcISIUE0AdQFSiNbx50UaINMpE85HFcZk9kdU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747117871; c=relaxed/simple;
	bh=1hTuqJl+kEzhDCVhaf84dO8h/aL3GOUNQIrlCz3+rAQ=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=dSWPJO9N/vbZPrcmoYuP0+12E2XRVWoM2o5x6DuGudxcTuxWLxuW4KFid45+W/VZK8oyzn18dtYMyosZJ3FHgs7EX6hGrEbSNVNpn7VPgGJfEydQcW+UOYylWwprT/93oqTtH1EGEKhYos6O6Jqf80Bg1jCnHaDdegWLRHf2OvY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=vayavyalabs.com; spf=pass smtp.mailfrom=vayavyalabs.com; dkim=pass (1024-bit key) header.d=vayavyalabs.com header.i=@vayavyalabs.com header.b=lHuMdPUy; arc=none smtp.client-ip=209.85.219.172
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=vayavyalabs.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=vayavyalabs.com
Received: by mail-yb1-f172.google.com with SMTP id 3f1490d57ef6-e7569ccf04cso4608511276.0
        for <devicetree@vger.kernel.org>; Mon, 12 May 2025 23:31:07 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=vayavyalabs.com; s=google; t=1747117866; x=1747722666; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=p7OlFTi12hwyalq/qmKqo6prizaYQ9kY/jjhoEX/luo=;
        b=lHuMdPUycv0wdY2BfXmYwTXdppUf2BmzGFBYwc1jyOKm1mLNs7BYI6dIcOUZCn0d4n
         zeNFBjHErzybyBeSJySj9z8H7dXWEZepUmb9CqUexIXbdkeh3Ezg82WmAM44DMA/F2R9
         kjpvUPkK+3qmCmFyYFa8lBaJNdNfLrEhOTi10=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1747117866; x=1747722666;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=p7OlFTi12hwyalq/qmKqo6prizaYQ9kY/jjhoEX/luo=;
        b=e7ZNx4+rdkEa/oHteaQzY4yPG1TdSZRQCMaAOhIMlh8mFMekmmaNpVaC+DIWm3GdHe
         GpFNQa54PMcyUri5aTWhmSQ5zNivywE/o2iLTQT9LVBJPZNPrKp6oHdoorHhykJQy2eS
         kgg04zX76Y3gCQCTKx5xnNUXZPzQeS90Gn7SyojcwYkTxb+0XqFJ9dD/7hTtrSFhcfBG
         94y9oAKpIu2G4IglX6SYIukRNQ0qKsFHkrwJqu4tdtm1wwujxSGJzKY3xam92cG/cQ0o
         UZ2TlNq4yCv9GW5k//T/khyHCGNLtMM2OqVopyTPt5rZATMJiy96hE+lYDogTEFAzN6U
         0DSg==
X-Forwarded-Encrypted: i=1; AJvYcCUk6LbLSMI1FwTXyhJetjMnqNbBjNHKit9pUCEUZt5P0oamPqf9DalCVLqG4qB8FWkIXBX665G2xQZw@vger.kernel.org
X-Gm-Message-State: AOJu0Yxcdp6xLDOeQJ8ETwxXKsD9wxECJfydk+I4AzYonabyWrsejhcx
	tQuykIi7VQ8xujFst3ki5DoOSPT23blEkl8b4rT0kP2GNjFvmUQY4zpCq43WLgTFhCwik3ceR7G
	dsNQAQ6ejzRrnxSQKLQhj0woZDJVMS8NzHoh95A==
X-Gm-Gg: ASbGnctk/ycu0zhFq4Kf/KXHatU7MHvPG7kD15SFepfdGzl/1DrLwSd5MTQk1+ody+6
	79/szxrK0j7u++8Vgm+6JES3J8NhQBEYnyzYMJp9iLBqVuHSt+9qoRW2PWMVlVrrMOJtYpPEB2D
	2p9rJmG5FMZH91vmB2tWbhLUGZQwHuRqrLo2IH+QCOKxL3FOH8Xx22yAWbu43sF28p
X-Google-Smtp-Source: AGHT+IGHecXBiimo+/WObMz24h+s2FGkrwwHovLXpyYwtTLKN9MfBfCW9jRS30vYs1g68tffN8lDlQZi361bjU7uaNo=
X-Received: by 2002:a05:6902:161c:b0:e78:c445:87b2 with SMTP id
 3f1490d57ef6-e78fdbe22e5mr21869126276.13.1747117866486; Mon, 12 May 2025
 23:31:06 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20250505125538.2991314-1-pavitrakumarm@vayavyalabs.com>
 <20250505125538.2991314-2-pavitrakumarm@vayavyalabs.com> <5b6c66e8-3fac-408f-980c-f261ccd3fefd@kernel.org>
 <bcf5c5de-e649-491b-9849-21eeaae0b64a@kernel.org> <CALxtO0=jB9L4WvaZNjP5qVB1tc9UfhjC5-u7e1dhveaQF=AOEQ@mail.gmail.com>
 <19b1fca7-e1b1-4190-9bcb-7ce36fabd02e@kernel.org>
In-Reply-To: <19b1fca7-e1b1-4190-9bcb-7ce36fabd02e@kernel.org>
From: Pavitrakumar Managutte <pavitrakumarm@vayavyalabs.com>
Date: Tue, 13 May 2025 12:00:55 +0530
X-Gm-Features: AX0GCFtPpw5etqx8ywxgVQBuM1csOzYUZVYWf19eq8SortJt3gcNPfhT0f1OlYI
Message-ID: <CALxtO0m_iVo4nnfYg5PzL5K0HgG-U2yNVeS3S0hfdXnObbJDJA@mail.gmail.com>
Subject: Re: [PATCH v2 1/6] dt-bindings: crypto: Document support for SPAcc
To: Krzysztof Kozlowski <krzk@kernel.org>
Cc: linux-crypto@vger.kernel.org, devicetree@vger.kernel.org, 
	herbert@gondor.apana.org.au, robh@kernel.org, Ruud.Derwig@synopsys.com, 
	Conor Dooley <conor@kernel.org>, davem@davemloft.net, linux-kernel@vger.kernel.org, 
	adityak@vayavyalabs.com, manjunath.hadli@vayavyalabs.com, 
	Bhoomika Kadabi <bhoomikak@vayavyalabs.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hi Krzysztof,
  My comments embedded below

Warm regards,
PK

On Tue, May 6, 2025 at 12:21=E2=80=AFPM Krzysztof Kozlowski <krzk@kernel.or=
g> wrote:
>
> On 06/05/2025 08:33, Pavitrakumar Managutte wrote:
> > Hi Krzysztof,
> >   My comments are embedded below.
> >
> > Warm regards,
> > PK
> >
> > On Mon, May 5, 2025 at 9:22=E2=80=AFPM Krzysztof Kozlowski <krzk@kernel=
.org> wrote:
> >>
> >> On 05/05/2025 17:48, Krzysztof Kozlowski wrote:
> >>> On 05/05/2025 14:55, Pavitrakumar M wrote:
> >>>> From: Pavitrakumar Managutte <pavitrakumarm@vayavyalabs.com>
> >>>>
> >>>> Add DT bindings related to the SPAcc driver for Documentation.
> >>>> DWC Synopsys Security Protocol Accelerator(SPAcc) Hardware Crypto
> >>>> Engine is a crypto IP designed by Synopsys.
> >>>>
> >>>> Co-developed-by: Bhoomika Kadabi <bhoomikak@vayavyalabs.com>
> >>>> Signed-off-by: Bhoomika Kadabi <bhoomikak@vayavyalabs.com>
> >>>> Signed-off-by: Pavitrakumar Managutte <pavitrakumarm@vayavyalabs.com=
>
> >>>> Acked-by: Ruud Derwig <Ruud.Derwig@synopsys.com>
> >>>
> >>>
> >>> I do not see any improvements. It seems you ignored all comments, not
> >>> single one was responded to or addressed.
> >
> > PK: Addressed all the below
> >
> > 1. SoC Bindings: We dont have any SoC bindings since its tested on the
> > Zynq platform (on FPGA). So I have retained just the Synopsys SPAcc
> > device here. Also added a detailed description for the same, which
> > describes how we have tested the SPAcc peripheral on Zynq. This was
> > based on your inputs to describe the existing hardware.
>
> 1. I asked to use SoC specific compatibles and after such explanation
> that you use it in some different, hardware configuration, I asked to
> use that.
>
> Reflect whatever your hardware is called in the compatible.

PK: Some context from my side which might clear up things
1. We have developed the SPAcc Crypto Linux driver for the Synopsys SPAcc I=
P.
2. Yes, this is technically a soft IP which we test on FPGA (Zynq
Ultrascale Boards).
3. We are NOT evaluating SPAcc IP and thus its not a custom use case
or a custom hardware.
4. Also SPAcc IP is NOT part of any SoC yet, but it may be in future.

Synopsys Semiconductor IP Business:
Synopsys develops Semiconductor IPs (aka DesignWare IPs) and provides
Linux device drivers to the SoC Vendors. We, as partners of Synopsys,
develop Linux device drivers for the IP, in this case SPAcc. So as of
now SPAcc is just a semiconductor IP which is not part of any SoC. A
3rd party SoC vendor would take this and integrate this as part of
their upcoming SoC.

SPAcc Semiconductor IP details:
https://www.synopsys.com/designware-ip/security-ip/security-protocol-accele=
rators.html

Synopsys DesignWare IPs
1. DWC MMC Host controller drivers : drivers/mmc/host/dw_mmc.c
2. DWC HSOTG Driver : drivers/usb/dwc2, drivers/usb/dwc3
3. DWC Ethernet driver : drivers/net/ethernet/synopsys
4. DWC DMA driver : drivers/dma/dw/

Intent of upstreaming IP drivers by Synopsys
1. As a Semiconductor IP designer, Synopsys provides Linux device
drivers with their IPs to the customers.
2. These Linux drivers handle all the configurations in those respective IP=
s.
3. At this stage of driver development, the focus is on the Semiconductor I=
P
4. Yes, the IP can be configured differently for different SoCs and
the driver has to take care of that.
5. The driver might need some enhancements based on the SoC
configurations, which could be done later.
6. Its a good approach to upstream IP drivers, so the vendors could
use/enhance the same open sourced drivers.

>
> I claim this cannot be used in a SoC without customization. If I

PK: Synopsys SPAcc is a highly configurable semiconductor IP. I agree
that it can be customized for the SoC vendors. But I dont understand
why it can't be used without SoC customizations for a default
configuration. All the IP customizations are handled by the driver.
Say, in the case of SPAcc, all the IP customizations are accessible as
part of the "Version" and "Version Extension-1, 2, 3" registers. So
the driver uses these IP customizations and nothing gets hardcoded. In
other cases, those customizations will come as vendor specific DT
properties.

As an IP, which can be memory mapped and with interrupt support, it
works perfectly with a default test configuration. And this is what
the current driver has.

> understood correctly this is soft IP in FPGA for evaluation, so no one
> will be ever able to use it. Therefore this binding makes no sense to me

PK: No, we are not evaluating, but we have developed a driver for
SPAcc, which has been tested on a FPGA.

> in general: you do not add anything any customer could use. It is fine
> to add something which you use internally only, but again describe the
> hardware properly.

PK: Its not an internal use case. We have tested the SPAcc driver on a
FPGA, as detailed above. We dont have any custom hardware and the
SPAcc IP is tested in a default configuration.

Question : Could you help me understand how a semiconductor IP vendor
like Synopsys, upstream Linux drivers for its IPs? In the current
scheme of things, if the SoC bindings are mandatory then we dont have
them at this stage. Those would have to come from the 3rd party SoC
vendors.

As a work around, I could add SPAcc bindings to Synopsys's "nsimosci".
Please let me know.
ARC - linux/arch/arc/boot/dts/nsimosci.dts

>
> 2. I wrote you entire guide what is wrong with your Cc addresses and
> this was fully ignored. Neither responded to, nor resolved.

PK: I have fixed that.

>
> I am not going to review the rest of the file.
>
> Best regards,
> Krzysztof

