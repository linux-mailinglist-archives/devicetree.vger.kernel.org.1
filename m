Return-Path: <devicetree+bounces-279895-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id COK9G+OUwmkXfAQAu9opvQ
	(envelope-from <devicetree+bounces-279895-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 24 Mar 2026 14:42:59 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [IPv6:2600:3c04:e001:36c::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id DB9B23099CC
	for <lists+devicetree@lfdr.de>; Tue, 24 Mar 2026 14:42:58 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id EF81830CDF84
	for <lists+devicetree@lfdr.de>; Tue, 24 Mar 2026 13:34:41 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 265483FB070;
	Tue, 24 Mar 2026 13:34:40 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="AoEzdKbZ"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pl1-f171.google.com (mail-pl1-f171.google.com [209.85.214.171])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DA0C83DD519
	for <devicetree@vger.kernel.org>; Tue, 24 Mar 2026 13:34:38 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.214.171
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1774359280; cv=none; b=T5bAcInPRCeAziN8+dLs9OCQjewBsZIs03fZjjbSQdS5BIByk021YfICVLr64KTPOxApeO7iwRWlYEAYJmqCA+FZf42Z6P8GUT1mxLsrRFmM6kAgdbJxU6sOQ//yTFLaCCIPkQ+VEqFXq7AxSfxdQTGgJmmmWL8KQ3MhSQwB87Y=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1774359280; c=relaxed/simple;
	bh=Ydl90mdBaMZbcLqO4exUiw7RWgcNaF0oWnbQlH1GFPY=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=gJR25BgcaVxpiUaoeqYT1eFpQiqYFnTLbb3LGDboah2NfnciVuz/aAXwZrdOWYWXnFWfQxJF65tjoixMx1TyDxMx01s73FY95yVX65vtEX7dgevMOc3ECG1F03CRMinyVjkn3Lt+GQQYgA7G3wDsXO0Z82B0rj4QY7OUdBP24tI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=AoEzdKbZ; arc=none smtp.client-ip=209.85.214.171
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-pl1-f171.google.com with SMTP id d9443c01a7336-2a7a9b8ed69so11886035ad.2
        for <devicetree@vger.kernel.org>; Tue, 24 Mar 2026 06:34:38 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1774359278; x=1774964078; darn=vger.kernel.org;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:from:to
         :cc:subject:date:message-id:reply-to;
        bh=0DRTw1k/Deyd3qw7jRPAvPgHwcdUHnkDo3iNQs7+2Vs=;
        b=AoEzdKbZK8r5+K6lftciVnxbOCnQxMRhPv+BI+s1QpIcaJfQyzR9qq9ntsVVOGhWKJ
         QByc8qLcoAjyCxvKnGP33TtOfTUa5r7uLvsGzA+Gz7hPOAgGna0ER4SxcGnv3chbk55N
         EUL1VkUJ5QV/mcw5jg7fFTgQK61yK+FcUOkTnlnjZHrIZoD65Mxx56jxXg2YZQqGjzkN
         nG4lNIqmeD1Hn4moqNe+0Ho2jsSqYRGsLY921hb4yNiCQYj8gNHxRf5KmgdotDnSmTjB
         ++aHm6ogGOi0sFR2/cN+cQuuB5x3JvMIgcKtdtEeu6AEtIMcZe33AeFjIu+4TbSTtHmb
         +NDA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1774359278; x=1774964078;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=0DRTw1k/Deyd3qw7jRPAvPgHwcdUHnkDo3iNQs7+2Vs=;
        b=i+6zpoVvbInw6Qq77VyTN3KcGqm7kL9a2K4mjZfeH1YXqoDQqssrOX4PXH2XNPa8Vk
         dUEbeFcpa2SNcjYQoeWadEFF8qqqCtiH1dtKqVQIODolHrEJr0WtCjb2aHjnYXwrR5w0
         zBdrlc/5jhq/fW8W9tN/gt+VjrZrvWkeqX5leZhMH9rG3Brm7rTfvW3PSTmH/RKdFxLK
         onTkDIMBo+p3KGTev0Xya+IRN3JozhZa2qqG6V8ySFRVol+xoaGt6LAPuqGpgiiPa9qt
         o17Pg+hBAeHrDfAeK4R24XEdFP8jLJivZA+It6+OcVc8Yvl6ut0xDs+sJyuTILbqvYEn
         0sXQ==
X-Forwarded-Encrypted: i=1; AJvYcCW+uYsgJzxP9PnMLrfdg5GOiptyUpyeLWOT2pZFcnanE88tla8wnbDRlJhISrK+v+PAMSUYhtMbltzz@vger.kernel.org
X-Gm-Message-State: AOJu0YyHmOqRrMpmmR1ZWgiY932IuEgfghcT45SqvPxS/CUObUzu/OgS
	TpyD0DFpxYIr7DD1EsQQjStyARtP09/PA/LV0aQx9Jqgg1USv1Z0HuiA
X-Gm-Gg: ATEYQzzZUiQSl4sVKwhklIHJ45/No/QXLhVZASjLE8k8ns1fjbJCmSSeglZ3EB5W+hL
	MHmyhn1hMWPbUk9wfljDPfBl02ECdnAcDp5lH6JVE7LB35aLmAzUxUUuFJylr3cg83TdZnxBhHz
	0NBSB7Y85uV2XsBl4NzyuWGjIzJUzvE2SLkJgscrh/yl//Kh13k1YgNiZ/TOkEiLdT+DZ88fiHd
	2ecUwIf5NmT+rBV+SnZTAdxkueWF9ruxibzXoAN21OVvZnKTpCAvGNJzBND0AoqrM+BDI3vHWMi
	/bLA/623ogqGk1CBF9rFCvBrv/x9zj01vWH+XoU98vMK5frMmXwAarq51SfH/48G/F0qbt39W7y
	2ToRJblDVJobMuIs1kMlVvwJFHvg3S/k3k7vbZm7Gsf81q9ffK1LbF1G6rK+1OgeRBdboXjv+cC
	5rTFYfrnSzPVCXeKVzEMcqYa/xeErVURpBAFVLqBmPJMg1gmCWDneK2uRLhQY=
X-Received: by 2002:a17:902:ce82:b0:2ae:47c9:68b9 with SMTP id d9443c01a7336-2b0827ea2edmr157633805ad.49.1774359277914;
        Tue, 24 Mar 2026 06:34:37 -0700 (PDT)
Received: from localhost ([103.70.166.143])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-2b08366b5besm148426185ad.55.2026.03.24.06.34.36
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 24 Mar 2026 06:34:37 -0700 (PDT)
Date: Tue, 24 Mar 2026 19:04:32 +0530
From: Gopi Krishna Menon <krishnagopi487@gmail.com>
To: Krzysztof Kozlowski <krzk@kernel.org>
Cc: Daniel Baluta <daniel.baluta@nxp.com>, rafael@kernel.org, 
	daniel.lezcano@kernel.org, rui.zhang@intel.com, lukasz.luba@arm.com, robh@kernel.org, 
	krzk+dt@kernel.org, vireshk@kernel.org, conor+dt@kernel.org, 
	linux-pm@vger.kernel.org, devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
	linux-arm-kernel@lists.infradead.org, soc@lists.linux.dev, simona.toaca@nxp.com, d-gole@ti.com, 
	m-chawdhry@ti.com
Subject: Re: [PATCH 2/2] ARM: dts: st: spear: fix dtbs warning on spear
 thermal sensor
Message-ID: <acKSzjiPNSbcpKrx@toolbx>
References: <20260323133814.14152-1-krishnagopi487@gmail.com>
 <20260323133814.14152-3-krishnagopi487@gmail.com>
 <20260324-smoky-radical-hyrax-1274a9@quoll>
 <cd3400ce-295e-450f-b650-6715142ccbde@nxp.com>
 <5a9f84fe-5827-48e7-8e4e-699cf8ae4776@kernel.org>
 <acKEJrB6vc9wfd1k@toolbx>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <acKEJrB6vc9wfd1k@toolbx>
X-Spamd-Result: default: False [-0.16 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_RHS_NOT_FQDN(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c04:e001:36c::/64:c];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20251104];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-279895-lists,devicetree=lfdr.de];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	FREEMAIL_FROM(0.00)[gmail.com];
	RCPT_COUNT_TWELVE(0.00)[18];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[krishnagopi487@gmail.com,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[gmail.com:+];
	NEURAL_HAM(-0.00)[-1.000];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MISSING_XM_UA(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c04::/32, country:SG];
	DBL_BLOCKED_OPENRESOLVER(0.00)[devicetree.org:url,e07008c4:email,tor.lore.kernel.org:helo,tor.lore.kernel.org:rdns]
X-Rspamd-Queue-Id: DB9B23099CC
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

On Tue, Mar 24, 2026 at 07:00:49PM +0530, Gopi Krishna Menon wrote:

> On Tue, Mar 24, 2026 at 11:01:05AM +0100, Krzysztof Kozlowski wrote:
> 
> > On 24/03/2026 11:00, Daniel Baluta wrote:
> > > On 3/24/26 11:26, Krzysztof Kozlowski wrote:
> > >> On Mon, Mar 23, 2026 at 07:08:09PM +0530, Gopi Krishna Menon wrote:
> > >>> Running DTBS checks on st/spear1340-evb.dtb results in the following
> > >>> warning:
> > >>>
> > >>> thermal@e07008c4 (st,thermal-spear1340): Unevaluated properties are not allowed ('thermal_flags' was unexpected)
> > >>>   from schema $id: http://devicetree.org/schemas/thermal/st,thermal-spear1340.yaml
> > >> How is it possible if there is no such file?
> > >>
> > >> Did you just add new warning in patch #1 and then claim in patch #2 that
> > >> you fix it?
> > >>
> > >> You completely miss the point why this change is needed: how could the
> > >> DTS work before? It could not. And that should be your justification for
> > >> the patch, with explanation why it could not work.
> > > 
> > > Correct me if I'm wrong but I think there was a hidden bug here 
> > > 
> > > drivers/thermal/spear_thermal.c:spear_thermal_probe:
> > > 
> > >       if (!np || !of_property_read_u32(np, "st,thermal-flags", &val)) {
> > > »       »       dev_err(&pdev->dev, "Failed: DT Pdata not passed\n");                                                                                                                         
> > > »       »       return -EINVAL;
> > > »       }
> > > 
> > > So, the driver was checking for the correct property as pointed by 
> > 
> > Yes
> > 
> > > 
> > > bindings/thermal/spear-thermal.txt but the dts was using the wrong
> > 
> > No, DTS had two properties - correct one and incorrect.
> > 
> 
> Yup, spear13xx is included by spear1310.dtsi and spear1340.dtsi both of
> which have st,thermal-flags correctly defined. When working on this
> patch, after converting the binding, I ran dtbs check and upon seeing
> dtbs warning immediately fixed it thinking it was complaining because
> st,thermal-flags (thermal_flags) was written incorrectly. (Which is not
> incorrect as st,thermal-flags was there in the final node but there was one

I meant 'incorrect' here not 'not incorrect'

> additional property named thermal_flags as well which is not allowed as
> UnevaluatedProperty is set to false). 
> 
> Also I dont think we have to override the st,thermal-flags property in
> spear1310.dtsi as the flags value is same in spear13xx.dtsi and
> spear1310.dtsi (0x7000).
> 
> > > 
> > > property name: arch/arm/boot/dts/st/spear13xx.dtsi » » » thermal@e07008c4 { » » » » compatible = "st,thermal-spear1340"; » » » » reg = <0xe07008c4 0x4>; » » » » thermal_flags = <0x7000>; » » » }; And because this check is wrong:
> > > 
> > >       if (!np || !of_property_read_u32(np, "st,thermal-flags", &val)) {
> > > 
> > > people really didn't notice it.
> > > 
> > > The check should be:
> > > 
> > >       if (!np || of_property_read_u32(np, "st,thermal-flags", &val)) {
> > > »       »       dev_err(&pdev->dev, "Failed: DT Pdata not passed\n");                                                                                                                         
> > > »       »       return -EINVAL;
> > > »       }
> > > 
> > > So, this actual patch has uncovered a bug! 
> > 
> > Yes. Driver also has bug, so probably was never working. The point is
> > whatever commit is doing, the dtbs_check warning is not the
> > justification, because it was introduced by this patchset.
> > 
> 
> Please correct me if I am wrong Krzysztof but should i send a seperate patch
> fixing the thermal_flags property (Not connected to these converted
> bindings)?.
> 
> Also, is it necessary to set additionalProperties to true? I am not able to
> figure out if that is needed.
> 
> > Best regards,
> > Krzysztof
> 
> Thanks,
> Gopi Krishna Menon

