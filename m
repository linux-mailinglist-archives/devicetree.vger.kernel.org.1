Return-Path: <devicetree+bounces-268391-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id iOu+BBQBn2lAYgQAu9opvQ
	(envelope-from <devicetree+bounces-268391-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 25 Feb 2026 15:03:00 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id A3A991987C3
	for <lists+devicetree@lfdr.de>; Wed, 25 Feb 2026 15:02:54 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id EAFE63089571
	for <lists+devicetree@lfdr.de>; Wed, 25 Feb 2026 14:00:56 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 4CF193C198A;
	Wed, 25 Feb 2026 14:00:56 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="SLr+Wp4j"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ed1-f50.google.com (mail-ed1-f50.google.com [209.85.208.50])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8FB247081E
	for <devicetree@vger.kernel.org>; Wed, 25 Feb 2026 14:00:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=pass smtp.client-ip=209.85.208.50
ARC-Seal:i=2; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772028056; cv=pass; b=r5YS5LGPoHNYMW5yTBR9ETqRkYAd2ZKwoOJNwzk8nQ1Nz4ex0W/i6Wph/IaWHS9TS4e9QkeIMGZNgvtv6OwWdt+eqdkAipzh5WXk5m0Zmw8WWqGJ0+bhfFn09prhakEWetQMqNIKIpsFpN0R1bsosaUI3iBEvVfXks3DzzkHMQI=
ARC-Message-Signature:i=2; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772028056; c=relaxed/simple;
	bh=6A4qR+TkNv+PyjsVoaL0+oTZhmV2F6R8Z6FBGd1IKBs=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=W5xD91ROJfHQauFw63pwTw+DTLmbhIamgGq8rmdPU0lprdTLX9LWI79L1D2jjMgFF/sS449mqIcCXQ5SopZaz0fvI/sPNfprCIz9zwPTyO/0C3R7TB/7Qjf5Z2/BM6IbPi9LuRSDidNrMX25T6LkgDSQ/M3+AOPceEng+2Hk5pk=
ARC-Authentication-Results:i=2; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=SLr+Wp4j; arc=pass smtp.client-ip=209.85.208.50
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-ed1-f50.google.com with SMTP id 4fb4d7f45d1cf-65f89c40547so974227a12.1
        for <devicetree@vger.kernel.org>; Wed, 25 Feb 2026 06:00:54 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1772028053; cv=none;
        d=google.com; s=arc-20240605;
        b=L/0HU2kHZhG7GtJNCsjht3G3cDMe8JBzS4aIFexLF9WDVfvEUGohRY0RxxtNbXabR+
         jHYu3QJUOiU8h6XZK8hYAZCXCGxNQtozAOoqiIxFTXQM72F1nwkW8po84Ynw6wd/4fI2
         0I3c/eOZvQ/e5PeB65rCDmrB3mAOiIVEftpqJlLgs19qvHpWzEbbEOWSriC9w1/Ne7Ec
         cA/xTlhprd3L4Y1/cYRrgpo/pZVpLy0+hZxYN/IZuG7jDF7YwVZMSLpsSwun6Lmvk24T
         tDYZNTcrZxpx9nUhyY005Jx3X75GpXZzPj/xUFtTnw3mThbt/ee2uBL8a78AcPINUUlE
         L1Gg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:dkim-signature;
        bh=LWDapfQMSHQo645PmLjObrtYUkjcF1qIGp665H7E8ZM=;
        fh=EvDI/Ai9gHXgdyJH/92NHoE4pNClXUXgbrNEEtdeVw4=;
        b=KmcdDAsM7FwJOl87XJOLvl9gtJWPHEZNJav3kZGDdky7GC9Q9dcFmavkpn6laB4YuC
         PzVJH4LjXDyJfzghmQN73ryMHIYR1Hb1lc3051vB7dgf6HGk9AljYKTg3VHjkj2FkSy6
         Jfz1Il32fjTjTabkBiVErwN0LAfx3N5ce1Rq20wFZtAsPFRyz+njEf0G2YbAjI0+Njht
         GvuXKeJdkYTtecPR2gRoSb7uZUGbCOphsrNEIevGR3x5nKd0MkI5AbF+W1zyVGqf389W
         gGuLJjN+HLHbl9e5GVqV/aFuLxd0ObXEqHyOA5I1Gmz8+WqdL//tWHL7mHERlYWkeKFL
         Yheg==;
        darn=vger.kernel.org
ARC-Authentication-Results: i=1; mx.google.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1772028053; x=1772632853; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=LWDapfQMSHQo645PmLjObrtYUkjcF1qIGp665H7E8ZM=;
        b=SLr+Wp4jGNju7lvRHhVAWla+WMratGiYUnPoNRvOglay445plYH5dAb6sn2ht/xUVR
         dnNNQ1rr3csPXxgEV30xKLcQUyDUDQIV8oSigni5ERvMWIz4WZH8efqpajeU6dCwraBn
         gMjDadi9B0PBzqzDMctDULI/xVDylMAmWQgQ4y3i1oh5u/RIHrc+QGCzVnUpeSE098V8
         VBrnM/l5h0KsdwbjMVxT6IAMtlRdzaVMPT0ejF2O2KG0NrNYn0QCMcmfHYqGtw0sYZEJ
         CHLTEp5E56yDEKDxy719PbByjFSeJBxzXEfd9qzcUmIfEUC97hLUuMDqTzoBe3Gh+rMu
         l2GQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1772028053; x=1772632853;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=LWDapfQMSHQo645PmLjObrtYUkjcF1qIGp665H7E8ZM=;
        b=hDqW88gMhHxF6Z8Dx3gRvgBDRXbczFb+QhlG7kzYVWiFHrfAZHWdhlG1TZeGkaQdpH
         65pTtJ6As+mWaeonDFIpP3Ll2p8a1FiVhk+/oYKQkVfkGGUAn9W7Nsuk0NyDVG2CuZTK
         IiL4H4oqAzdlDUd4jwzOqcK3AkHx5xdQuN/AmK6uN99mq5pi78svOnIit0Amw4Dd5IRA
         gzWXJZ2lacr2bmCFaX649dNrHY8+0GESBHL9H51xTey1qf9JJESkV2NKu5cwW9D41LdS
         nuImkNachpPOo5wp0kgh5VWvWOk+C9R+W15K0NVPVgquEO7vhTjBYpr+W5fb0mWhEjKw
         ap6g==
X-Forwarded-Encrypted: i=1; AJvYcCU7mH19dOd0dtHCDHs4kwXY26kUEG2jfq32IXIctQ+OwW10E7GKaKVqjqgIN1VrZt2glAEe4MmKe7IY@vger.kernel.org
X-Gm-Message-State: AOJu0Yzsh7si7LT624gEsQbuz1V5rzETvi07nLwV9C3daf1OZhDPvZSz
	k6svachQpGNcA0RfKd3+hwG/V5nFFPDGEzBj9Mxk5V5SAaGKmv+9k5ZVz3Lx3grBCkYt3T0f6U3
	RQ5F1tErQGnz8O9qkXqQLEqbsntPshSIEO+PK6oq2MQ==
X-Gm-Gg: ATEYQzyrHjbHwI8kLh8zd2ycO0RBuJrwxx7vxngzfE2CIHuoehbCA+6Zr4+lfAEowMT
	5+v+PZP0eJA0KGxZW4o75XVNPMLLJ8yFKKci92idfCPEqWxLgxVwqvCLA5KJBjqn9VbuOYdB8d/
	r2EmU49jd0nhhkzLOfh6Ix5MEpMUT6dVaKhAJUpvwnxf+sPgHGURJMTyP/ZeOZQjQoBi5CgWJxY
	oMaFDgjPOGn9U/fO8/SFcZy8M4fugIoqYp0423X4AOR4UbJ+8UeTnpwewNYv/Vmv6jQSIDS62bx
	J82bOrw6BrJEuFjHStQx86vsrAxTMbvwtiobJN3RMqsF
X-Received: by 2002:a17:907:d9e:b0:b88:72da:1055 with SMTP id
 a640c23a62f3a-b933cda1035mr265143666b.29.1772028052640; Wed, 25 Feb 2026
 06:00:52 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20260203161917.1666696-1-vincent.guittot@linaro.org>
 <20260203161917.1666696-2-vincent.guittot@linaro.org> <20260210004011.GA2188625-robh@kernel.org>
 <CAKfTPtA299R7yn3r=tCqhhP_tK3E_UpGSMrDLyRP4Ccwt1m58g@mail.gmail.com> <CAL_Jsq+SswpTjQShfkdhVwL_k8gJ_5+NrecPCUiFR52UB5zNMA@mail.gmail.com>
In-Reply-To: <CAL_Jsq+SswpTjQShfkdhVwL_k8gJ_5+NrecPCUiFR52UB5zNMA@mail.gmail.com>
From: Vincent Guittot <vincent.guittot@linaro.org>
Date: Wed, 25 Feb 2026 15:00:40 +0100
X-Gm-Features: AaiRm505TTN6nS9yOA4a06y3Eph6mjLyAzAM02exWTGSkD9LPmzld_Vs-lqHg20
Message-ID: <CAKfTPtCX8cAT0f6k74_uYvP3=A3SFgV-GJfPMq50heUOmH=_Og@mail.gmail.com>
Subject: Re: [PATCH 1/4 v2] dt-bindings: serdes: s32g: Add NXP serdes subsystem
To: Rob Herring <robh@kernel.org>
Cc: vkoul@kernel.org, neil.armstrong@linaro.org, krzk+dt@kernel.org, 
	conor+dt@kernel.org, ciprianmarian.costea@oss.nxp.com, s32@nxp.com, 
	p.zabel@pengutronix.de, linux@armlinux.org.uk, ghennadi.procopciuc@nxp.com, 
	Ionut.Vicovan@nxp.com, linux-phy@lists.infradead.org, 
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
	linux-arm-kernel@lists.infradead.org, netdev@vger.kernel.org, 
	horms@kernel.org, Frank.li@nxp.com
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=2];
	DMARC_POLICY_ALLOW(-0.50)[linaro.org,none];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	R_DKIM_ALLOW(-0.20)[linaro.org:s=google];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-268391-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	RSPAMD_URIBL_FAIL(0.00)[linaro.org:query timed out];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[18];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	NEURAL_HAM(-0.00)[-0.998];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[vincent.guittot@linaro.org,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[linaro.org:+];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MISSING_XM_UA(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	RSPAMD_EMAILBL_FAIL(0.00)[serdes0_lane.0.0.0.0:query timed out,vincent.guittot.linaro.org:query timed out,ghennadi.procopciuc.nxp.com:query timed out,serdes1_lane.0.0.0.0:query timed out];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,linaro.org:email,linaro.org:dkim,mail.gmail.com:mid,devicetree.org:url,0.0.0.0:email]
X-Rspamd-Queue-Id: A3A991987C3
X-Rspamd-Action: no action

Hi,

Sorry for the delayed reply. Some days off kept me away from keyboard

On Thu, 12 Feb 2026 at 22:10, Rob Herring <robh@kernel.org> wrote:
>
> On Thu, Feb 12, 2026 at 1:17=E2=80=AFAM Vincent Guittot
> <vincent.guittot@linaro.org> wrote:
> >
> > On Tue, 10 Feb 2026 at 01:40, Rob Herring <robh@kernel.org> wrote:
> > >
> > > On Tue, Feb 03, 2026 at 05:19:14PM +0100, Vincent Guittot wrote:
> > > > Describe the serdes subsystem available on the S32G platforms.
> > > >
> > > > Signed-off-by: Vincent Guittot <vincent.guittot@linaro.org>
> > > > ---
> > > >  .../bindings/phy/nxp,s32g-serdes.yaml         | 154 ++++++++++++++=
++++
> > > >  1 file changed, 154 insertions(+)
> > > >  create mode 100644 Documentation/devicetree/bindings/phy/nxp,s32g-=
serdes.yaml
> > > >
> > > > diff --git a/Documentation/devicetree/bindings/phy/nxp,s32g-serdes.=
yaml b/Documentation/devicetree/bindings/phy/nxp,s32g-serdes.yaml
> > > > new file mode 100644
> > > > index 000000000000..fad34bee2a4f
> > > > --- /dev/null
> > > > +++ b/Documentation/devicetree/bindings/phy/nxp,s32g-serdes.yaml
> > > > @@ -0,0 +1,154 @@
> > > > +# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
> > > > +%YAML 1.2
> > > > +---
> > > > +$id: http://devicetree.org/schemas/phy/nxp,s32g-serdes.yaml#
> > > > +$schema: http://devicetree.org/meta-schemas/core.yaml#
> > > > +
> > > > +title: NXP S32G2xxx/S32G3xxx SerDes PHY subsystem
> > > > +
> > > > +maintainers:
> > > > +  - Ghennadi Procopciuc <ghennadi.procopciuc@nxp.com>
> > > > +
> > > > +description: |
> > > > +  The SerDes subsystem on S32G SoC Family includes two types of PH=
Ys:
> > > > +    - One PCIe PHY: Supports various PCIe operation modes
> > > > +    - Two Ethernet Physical Coding Sublayer (XPCS) controllers
> > > > +
> > > > +  SerDes operation mode selects the enabled PHYs and speeds. Clock=
 frequency
> > > > +  must be adapted accordingly. Below table describes all possible =
operation
> > > > +  modes.
> > > > +
> > > > +  Mode  PCIe XPCS0           XPCS1           PHY clock       Descr=
iption
> > > > +                SGMII                SGMII             (MHz)
> > > > +  ----------------------------------------------------------------=
---------
> > > > +  0  Gen3    N/A             N/A             100             Singl=
e PCIe
> > > > +  1  Gen2    1.25Gbps        N/A             100             PCIe/=
SGMII
> > > > +  2  Gen2    N/A             1.25Gbps        100             PCIe/=
SGMII
> > > > +  3  N/A     1.25Gbps        1.25Gbps        100,125         SGMII
> > > > +  4  N/A     3.125/1.25Gbps  3.125/1.25Gbps  125             SGMII
> > > > +  5  Gen2    N/A             3.125Gbps       100             PCIe/=
SGMII
> > >
> > > Mixed tabs and spaces. Drop the tabs.
> >
> > okay
> >
> > >
> > > What's not clear to me is do you have 2 or 4 lanes?
> >
> > 2 lanes per serdes
> > as an example mode 0 is one PCIe x2 lane
> > and mode 1 is one PCIe x1 and one xpcs0/SGMII on lane 1
> > or mode 3 is one  xpcs0/SGMII on lane 0 and one xpcs1/SGMII on lane 1
>
> Still confused. So 2 total lanes?

Yes, there are 2 serdes hw ip instances and each instance has 2 lanes
that can be configured to output PCIe and/or SGMII

>
> >
> > >
> > > > +
> > > > +properties:
> > > > +  compatible:
> > > > +    oneOf:
> > > > +      - enum:
> > > > +          - nxp,s32g2-serdes
> > > > +      - items:
> > > > +          - const: nxp,s32g3-serdes
> > > > +          - const: nxp,s32g2-serdes
> > > > +
> > > > +  reg:
> > > > +    maxItems: 4
> > > > +
> > > > +  reg-names:
> > > > +    items:
> > > > +      - const: ss_pcie
> > > > +      - const: pcie_phy
> > > > +      - const: xpcs0
> > > > +      - const: xpcs1
> > > > +
> > > > +  clocks:
> > > > +    minItems: 4
> > > > +    maxItems: 5
> > > > +
> > > > +  clock-names:
> > > > +    items:
> > > > +      - const: axi
> > > > +      - const: aux
> > > > +      - const: apb
> > > > +      - const: ref
> > > > +      - const: ext
> > > > +    minItems: 4
> > > > +
> > > > +  resets:
> > > > +    maxItems: 2
> > > > +
> > > > +  reset-names:
> > > > +    items:
> > > > +      - const: serdes
> > > > +      - const: pcie
> > > > +
> > > > +  nxp,sys-mode:
> > > > +    $ref: /schemas/types.yaml#/definitions/uint32
> > >
> > >        maximum: 5
> > >
> > > Though isn't this redundant with the child nodes? You could use the
> > > standard 'phy-mode' property in each child.
> >
> > not really because we can have mode 1 but only a node to describe
> > lane0 for PCIe x1 if the lane 1 is not used
> >
> > >
> > > > +    description: |
> > > > +      SerDes operational mode. See above table for possible values=
.
> > > > +
> > > > +  '#address-cells':
> > > > +    const: 1
> > > > +
> > > > +  '#size-cells':
> > > > +    const: 0
> > > > +
> > > > +patternProperties:
> > > > +  '^serdes[0,1]_lane@[0,1]$':
> > >
> > > Do you need to support serdes0_lane@0 and serdes1_lane@0 (or similar
> > > with "@1")? That's illegal as you have 2 nodes with the same address.
> >
> > okay, we can find other naming
> >
> > >
> > > > +    description:
> > > > +      Describe a serdes lane.
> > > > +    type: object
> > > > +
> > > > +    properties:
> > > > +      compatible:
> > > > +        enum:
> > > > +          - nxp,s32g2-serdes-pcie-phy
> > > > +          - nxp,s32g2-serdes-xpcs
> > >
> > > Seems like phy-mode would be sufficient. Are these separate blocks fr=
om
> > > the parent?
> >
> > Isn't phy-mode only for ethernet phy ?
>
> Sorry, it is "phy-type" that I was thinking about. That takes the
> types defined in dt-bindings/phy/phy.h. The type can be defined either
> in "phy-type" or in the phy cells if the type is per identifier.
>
> Really, Given each lane doesn't have any of its own resources, I'd
> probably get rid of the child nodes and put the type into the phy
> cells. Then you'd have something like this:
>
> // PCIE on lanes 0 and 1 (mode 0)
> pcie {
>   phys =3D <&phy 0 PHY_TYPE_PCIE>, <&phy 1 PHY_TYPE_PCIE>;
> };

We only register one phy with PCIE x2 in this case

>
> // PCIE on lane 0 (mode 1)
> pcie {
>   phys =3D <&phy 0 PHY_TYPE_PCIE>;
> };
> // Ethernet on lane 1
> ethernet {
>   phys =3D <&phy 1 PHY_TYPE_SGMII>;
> };

For ethernet, we use pcs-handle and we don't register generic phy as
we don't have anything to do

Also, the mode (if a lane output pcie or sgmii) is a static
configuration that is decided before unresetting the serdes ip, we
don't change the mode at runtime

That being said, we can use phy-type =3D <PHY_TYPE_PCIE> or
<PHY_TYPE_XPCS> in child node instead of a compatible to describe the
purpose of each lane

>
> I perhaps don't have the cells right if it is more than just lane 0
> and lane 1, but you can put anything there you want. The cell
> definition is provider specific.
>
> If you need to get the overall system wide configuration, that can be
> done. It's not terribly efficient, but you can iterate all 'phys'
> nodes in the DT, find the ones for your provider (&phy) and examine
> the cell values.

As mentioned previously, we can decide not to use all lanes of a mode.
As an example, using mode 1 for a pcie x1 but no sgmii so we will not
find all lanes description in the DT

Vincent
>
> Rob

