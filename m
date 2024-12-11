Return-Path: <devicetree+bounces-129766-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id BEAF99ECB90
	for <lists+devicetree@lfdr.de>; Wed, 11 Dec 2024 12:51:01 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 99BD92821EA
	for <lists+devicetree@lfdr.de>; Wed, 11 Dec 2024 11:50:57 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B358D211A2A;
	Wed, 11 Dec 2024 11:50:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="OwpSSNgf"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pl1-f169.google.com (mail-pl1-f169.google.com [209.85.214.169])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 13FBB1DA634
	for <devicetree@vger.kernel.org>; Wed, 11 Dec 2024 11:50:51 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.214.169
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1733917853; cv=none; b=Aasf9Fs9JZcIVRKV3qRU6Ek7s89hiDlOrLG/s9XayWotDB3iCDm5lJFXINk5xPTLvtlUHwaXWjlzjHzmEYojovoAqG8FCDZ5o2oMVO7fdkxfTGJfyUBCNLTpxUrkOa3apjBH6CA6VX4YiDuH3j9tzQvvhfx1qRaCVCV6Q2AJZXA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1733917853; c=relaxed/simple;
	bh=lJJE7PelyxsqF5tjm3FPJmE6ni3GV2a73JcuICAnivQ=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=ZR+kYZw7d9HJAM0dQwMWpnqKGO8oKCdULqvvwDiejFATPfdNMREY/EzWUca08PqV7pGw0Wby4GZzxusuP2VrBSmUrPJTZ0UplehwGVweXU4p91kR5sHFYJptCApF20znyUzi06WR45WKfv0v2mW5yxKBRW270/g3o2a/W+dwt10=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=OwpSSNgf; arc=none smtp.client-ip=209.85.214.169
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-pl1-f169.google.com with SMTP id d9443c01a7336-21145812538so56900835ad.0
        for <devicetree@vger.kernel.org>; Wed, 11 Dec 2024 03:50:51 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1733917851; x=1734522651; darn=vger.kernel.org;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:from:to
         :cc:subject:date:message-id:reply-to;
        bh=zhcCxygbhPLWVCPLSEOC9aoZpP2GOwRDWDssDWGzilI=;
        b=OwpSSNgfao5/uYzEVaf1OX4o52cdf8CHN4+v8Wqy9h4k3o/fSogFEVj3xaZM4BO5GY
         XrZViiE2uxWnRUqHNezpOYFI2z3Ig9YLKld+FUhja+GRzNymU+iO/BlD06n7R3WnuyGg
         fgz961fxbyW+Dy3P8hXtSrCs2r9XKurEgocjwABY5k76pz/aZzQvNVNnLqrGqs8S4xCq
         v++RsWklMF6kerR6Jn8lBB8hNS2sJjtE2GifpW42dCGOLBsPSijKz+BlfZglNke2B/rS
         Y4RmJ/GSOWHbSszdu6j0kZtixaCVIdm+RvgTtlKwfCx2icC6JlnyGOytjLOAvOMdF9MD
         Qsng==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1733917851; x=1734522651;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=zhcCxygbhPLWVCPLSEOC9aoZpP2GOwRDWDssDWGzilI=;
        b=xSwuP1cb+BG2ceLA3akCbqxNPsc4QzBYkvG2cvmqbyedJ8SNxJYiMo8ZIlHhqo7134
         t+lH8atHmD6jUf59+tIv5Hk28Q/3ZIt0VrMSmd+vHrpXxK8g4QqV6KiSHlGcUtd1Qcpl
         pwJINp0KPpWERsG9r0xdR40FljwqzYMJcKXXd8rz+FjEJ66KBTUVp0h3dvAHna9kOj+R
         YKFmfPQF+lH98XN9MEbwxTfO3NKzOgJbC6nSZl4nKR+3tu5xdXkMfz/bFOxWZ/O5vNpl
         KdfyifexrNWeFwOY9EXc3ni4h7+dH2J41MQpC3HoD3X+Xn1A+wHUNuwH21+S6gKmCmnA
         h00A==
X-Forwarded-Encrypted: i=1; AJvYcCWSChYv0+InlQwDfLINgD9DZsc/tMRn/q0B0g3wxxcXNZmD2EbHOeEN6XxK6xx4wdx0sG3/YyhT1jA+@vger.kernel.org
X-Gm-Message-State: AOJu0YyeRKRV532gT4ywigv6TZmtxM5Lm7ggPEJ7wfv2gkNxyb1kwa1j
	UyEZ+JyRfxqjK8gNp47K+TabTe9+/u5ItkenTCQXnMuONN9459rjOf4Nf+kpYKoVMOvk+akpKi4
	=
X-Gm-Gg: ASbGncu4DTqJ0G0PBuTE3IgHEFMaurRn2tPonKXNvivPdV17LAt+2zi/auuatz44/Wo
	8IVU15m91+phxLKSSPJB10S7kZcdA7Az0ye2sRpsuQO1s7w8g52prrsMWeN588Ec3KO81VzyrGL
	HivDHm7TzDM6lQ7ynpd1pIftibTme2HNfk2uoqZnmjOabXl/QPlBjXXMbR/SimwYthV5W6RP3VZ
	i4lXDpfG2XHAgvsDU+8igbmOX9cKMtaIJVpy+9F5RcEHBaoviWy+AU4hcYxKQk=
X-Google-Smtp-Source: AGHT+IEVbl+wAIa5JZrSvowjO/cDdfR9fBf3jYVsXQMOChSoFGmYHwPGwinFUNul81v+vwc84aIqVg==
X-Received: by 2002:a17:902:ea10:b0:216:2e5e:96ff with SMTP id d9443c01a7336-217782d9da1mr47074955ad.0.1733917851326;
        Wed, 11 Dec 2024 03:50:51 -0800 (PST)
Received: from thinkpad ([120.60.55.53])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-216356f24d8sm64927805ad.242.2024.12.11.03.50.46
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 11 Dec 2024 03:50:50 -0800 (PST)
Date: Wed, 11 Dec 2024 17:20:34 +0530
From: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
To: Krzysztof Kozlowski <krzk@kernel.org>
Cc: Ziyue Zhang <quic_ziyuzhan@quicinc.com>, vkoul@kernel.org,
	kishon@kernel.org, dmitry.baryshkov@linaro.org,
	abel.vesa@linaro.org, neil.armstrong@linaro.org,
	andersson@kernel.org, konradybcio@kernel.org, robh@kernel.org,
	krzk+dt@kernel.org, conor+dt@kernel.org,
	linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
	linux-kernel@vger.kernel.org, devicetree@vger.kernel.org
Subject: Re: [PATCH 1/3] dt-bindings: phy: qcom,qmp-pcie: add optional
 current load properties
Message-ID: <20241211115034.4hrpmninbx5uryev@thinkpad>
References: <20241204105249.3544114-1-quic_ziyuzhan@quicinc.com>
 <20241204105249.3544114-2-quic_ziyuzhan@quicinc.com>
 <qvjtwilukxbeaxnbyzfkdsfkktm6p4yv3sgx3rbugpb6qkcbjy@rohvixslizhh>
 <20241211062053.vxdpovlmetvyx3za@thinkpad>
 <33697bd9-02f4-4a9a-b8c0-4930d7fdaee2@kernel.org>
 <20241211082404.p7fbmhooikmipxvm@thinkpad>
 <3c7ddb08-38db-44b3-a7a7-ec7b270a408f@kernel.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <3c7ddb08-38db-44b3-a7a7-ec7b270a408f@kernel.org>

On Wed, Dec 11, 2024 at 10:52:11AM +0100, Krzysztof Kozlowski wrote:
> On 11/12/2024 09:24, Manivannan Sadhasivam wrote:
> > On Wed, Dec 11, 2024 at 09:09:18AM +0100, Krzysztof Kozlowski wrote:
> >> On 11/12/2024 07:20, Manivannan Sadhasivam wrote:
> >>> On Thu, Dec 05, 2024 at 11:23:11AM +0100, Krzysztof Kozlowski wrote:
> >>>> On Wed, Dec 04, 2024 at 06:52:47PM +0800, Ziyue Zhang wrote:
> >>>>> On some platforms, the power supply for PCIe PHY is not able to provide
> >>>>> enough current when it works in LPM mode. Hence, PCIe PHY driver needs to
> >>>>> set current load to vote the regulator to HPM mode.
> >>>>>
> >>>>> Document the current load as properties for each power supply PCIe PHY
> >>>>> required, namely vdda-phy-max-microamp, vdda-pll-max-microamp and
> >>>>> vdda-qref-max-microamp, respectively.PCIe PHY driver should parse them to
> >>>>> set appropriate current load during PHY power on.
> >>>>>
> >>>>> This three properties are optional and not mandatory for those platforms
> >>>>> that PCIe PHY can still work with power supply.
> >>>>
> >>>>
> >>>> Uh uh, so the downstream comes finally!
> >>>>
> >>>> No sorry guys, use existing regulator bindings for this.
> >>>>
> >>>
> >>> Maybe they got inspired by upstream UFS bindings?
> >>> Documentation/devicetree/bindings/ufs/ufs-common.yaml:
> >>>
> >>> vcc-max-microamp
> >>> vccq-max-microamp
> >>> vccq2-max-microamp
> >>
> >> And it is already an ABI, so we cannot do anything about it.
> >>
> >>>
> >>> Regulator binding only describes the min/max load for the regulators and not
> >>
> >> No, it exactly describes min/max consumers can use. Let's quote:
> >> "largest current consumers may set"
> >> It is all about consumers.
> >>
> >>> consumers. What if the consumers need to set variable load per platform? Should
> >>
> >> Then each platform uses regulator API or regulator bindings to set it? I
> >> don't see the problem here.
> >>
> >>> they hardcode the load in driver? (even so, the load should not vary for each
> >>> board).
> >>
> >> The load must vary per board, because regulators vary per board. Of
> >> course in practice most designs could be the same, but regulators and
> >> their limits are always properties of the board, not the SoC.
> >>
> > 
> > How the consumer drivers are supposed to know the optimum load?
> > 
> > I don't see how the consumer drivers can set the load without hardcoding the
> > values. And I could see from UFS properties that each board has different
> > values.
> 
> 
> Drivers do not need to know, it's not the driver's responsibility. If

What? I think there is a misunderstanding here. The intention of these proposed
properties is to allow the PHY driver to set the required load of the regulator
using regulator_set_load() API. As per the API description:

'Consumer devices notify their supply regulator of the maximum power they will
require (can be taken from device datasheet in the power consumption tables)
when they change operational status and hence power state'.

IIUC, your concern is that the devicetree shouldn't specify the load for each
consumer but just the min/max load of the regulator. And the consumer driver
should figure out the load and set it accordingly.

Correct me if I'm wrong.

In that case, I was wondering if the load set by the driver is going to vary
between platforms (boards) or not (question to Ziyue Zhang). If it varies
between SoC, then we can hardcode the load in driver based on compatible.

> If
> these are constraints per board, then regulator properties apply and
> there is no difference between this "vdd-max-microamp = 10" and
> "regulator-max-microamp".
> 

There is a difference. Regulator properties are just threshold. So unless the
consumer sets the load, they won't take effect. I think you got confused by the
'max' wording in the proposed properties?

> If this varies runtime, then your property is already not suitable and
> very limited and you should use OPP table.
> 

The consumer driver may request different loads based on their operational
state.

- Mani

-- 
மணிவண்ணன் சதாசிவம்

