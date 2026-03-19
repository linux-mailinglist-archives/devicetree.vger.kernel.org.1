Return-Path: <devicetree+bounces-277831-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id mKG1Gg4PvGkirwIAu9opvQ
	(envelope-from <devicetree+bounces-277831-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Thu, 19 Mar 2026 15:58:22 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 0C3CC2CD4BB
	for <lists+devicetree@lfdr.de>; Thu, 19 Mar 2026 15:58:22 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 66D7E302F24A
	for <lists+devicetree@lfdr.de>; Thu, 19 Mar 2026 14:56:26 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 238F13DC4DF;
	Thu, 19 Mar 2026 14:56:25 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="OU+QOCS2"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lj1-f174.google.com (mail-lj1-f174.google.com [209.85.208.174])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A9CD33CD8BD
	for <devicetree@vger.kernel.org>; Thu, 19 Mar 2026 14:56:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.174
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773932185; cv=none; b=YP6Iboxsn8oG1/JBmjiF/tzYW5RsX3Cz8xm2qxBuFe8O++gUA0IKzZ1sd1MLvHjo39cXPbejOhvF6Lbds8BoqEd+2e4XES9PTuoZgDDkVtPffiz88eJPPWeWacMIZSFTbwdX2y9QxV5x2eMTPo4F8phZ0uYAf7+I3/OQVOFf6jc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773932185; c=relaxed/simple;
	bh=gd7SCs27uyPu79nVL6/LCI+yIXMU2kzESBFAMZUgfLI=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=lTH8QT/upIwwBdvVUzrJuWDS9ZZPcp6TWgCwkrNkfGJqlnSBhg5Wf/odzpjwjP41+Rk/4xpawt5g0HUI3WzaqGzyITc2tMhOn8hrfn8D1F9RmcCsQzTbK+3hd0Ru8pRH3mxiJloLFNYWbnp96Na0bTBLbdz/OVB6nSVi4W1c25o=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=OU+QOCS2; arc=none smtp.client-ip=209.85.208.174
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lj1-f174.google.com with SMTP id 38308e7fff4ca-38a3c2261ffso1171411fa.1
        for <devicetree@vger.kernel.org>; Thu, 19 Mar 2026 07:56:23 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1773932182; x=1774536982; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to:subject
         :user-agent:mime-version:date:message-id:from:to:cc:subject:date
         :message-id:reply-to;
        bh=nFE8LLUUKG9iTuvDaB93WvqlPoGXC9p6rn4PhnM6x18=;
        b=OU+QOCS22gmyJtPUxAd2+gZZf8fRVP81YY929OBTR1/7TmKG+QnvpvK5vx0f7hA9hv
         GOcXrJ3H02NqKoDfh6e6xKYCrvW75SSP6QfRJLtH62ZPwgDyzw2eoDg8ClOK4YW1P0Az
         hR3gm/65Q4xp0NPKN8HhshunAgoC6d9xzd/3sCjCCEs49A3MzX3kDsHYnn8dbq6UltDs
         HUTyZXPg2zMmLSGEM1+Esf4BaW89RTp6GcPgxM+GPSGAwVH9DkoOgUE5c5IunV75l0sr
         mTJWFuE5jfd0+j+YJmQ+zIjztR7WK2TbLLa+CTPWMhpv2sDAvfpn4GycDJfs7j6kQvzQ
         x/Vg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1773932182; x=1774536982;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to:subject
         :user-agent:mime-version:date:message-id:x-gm-gg:x-gm-message-state
         :from:to:cc:subject:date:message-id:reply-to;
        bh=nFE8LLUUKG9iTuvDaB93WvqlPoGXC9p6rn4PhnM6x18=;
        b=Y75FoC06VuE/kGaZC143MW18ssmi7AzSPXW1CdvYzfSxWQWcB4WwvYQz+veZkyBGxm
         oI6Rhr59677Y2UskMN+0WtUqwWZvvqFdS6iTV3j44o/qKZ/dbFHlfX8vZxYREmtuT3PO
         nFsRuBYu1ZsUDGbmdgg76TFgaxvaACEVf9HuNhP3vFI7bgp3HdfrE4TRp0uyHTUbaEbT
         kniJjKZheJBvQTeM8VaJHqtoTHGnmnwrYtGSTejI79ZRiogM8qzJXkGS26tGAtrw84fC
         RgdubZSadjd9GmvHin520a/DWfAR04Z/4aO0YRi2g1xY8urxooYHrOq8pn8rvE0f3Osy
         avFA==
X-Forwarded-Encrypted: i=1; AJvYcCVyhQOS77Dv1hqqLiLt7LbmpYzWgGgw55J4CFpoMyFIz4nFBp8gZUakq2q4Fx24ZFUV9I2YDXUb/po5@vger.kernel.org
X-Gm-Message-State: AOJu0YzmgpRVHIX0v0e7NmXkHRekWFryrZwNb49JgungX4fZCdaBv53Q
	Y104syisi7KVAO3aRTxGZCnrgA388h46NJSVs3CX71oS107ZRH/CGN3ZRKDKSx8D0+g=
X-Gm-Gg: ATEYQzxu0J9zzUPkKSnUeFCLK714y17mr1R/LKh3vgx55ir8/N8djdNbtMixe6MoCQq
	Dmy92w9HBS9CooBCguE/FDkvmx7i/HYPKLvb16O1iBhyiThgLemZl2e643Pug40NCCXn3Hu2bCq
	k0A3H8BMKUHof4F2aS+ezekixjAHfyVeaL/XxEmW6fCTt1Yikzv1s4//oSE7OCFz0tq4CPxmKMr
	JQoQAofjP0hkZo1hopNR0J0cKhRWjYCmGAjn1R/UDBFRE9Cm6ddsRH/KlEmQepFhMNfA8qYd6eV
	x2xuKttNF6h435D+c/j66v8fnOY/hgXU5knSQR1++Lh0emMAAHZyleMi+LusT8JMq97IhTlBvv1
	YlJrU/sWFDXatkDZuh5x8gpZWzFI/KqUoZdtAZIeHNiCiqclQR/X2J6POMsnQqhB2cF6+PXPtbY
	FuWPwA7HRhIZO2AkMFgP6l9J1AMpVe0QV9M/d3HhJOF7EChZTbHY8p7NXnEHOEVyvXT764mrDpN
	Lwc6g==
X-Received: by 2002:a05:6512:3b82:b0:5a2:7c19:414f with SMTP id 2adb3069b0e04-5a27c1941bfmr1196514e87.3.1773932181770;
        Thu, 19 Mar 2026 07:56:21 -0700 (PDT)
Received: from [192.168.1.100] (91-159-24-186.elisa-laajakaista.fi. [91.159.24.186])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-5a279c2be56sm1230577e87.19.2026.03.19.07.56.20
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 19 Mar 2026 07:56:21 -0700 (PDT)
Message-ID: <d6616fc0-75fb-47e2-96cd-ae81fa1a8e82@linaro.org>
Date: Thu, 19 Mar 2026 16:56:20 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v4 2/2] phy: qcom-mipi-csi2: Add a CSI2 MIPI DPHY driver
To: Bryan O'Donoghue <bod@kernel.org>,
 Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>,
 Neil Armstrong <neil.armstrong@linaro.org>
Cc: Bryan O'Donoghue <bryan.odonoghue@linaro.org>,
 Vinod Koul <vkoul@kernel.org>, Kishon Vijay Abraham I <kishon@kernel.org>,
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
 Conor Dooley <conor+dt@kernel.org>, linux-arm-msm@vger.kernel.org,
 linux-phy@lists.infradead.org, linux-media@vger.kernel.org,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
References: <20260315-x1e-csi2-phy-v4-0-90c09203888d@linaro.org>
 <20260315-x1e-csi2-phy-v4-2-90c09203888d@linaro.org>
 <3f11de22-b729-4d06-b6c8-18e649e1979c@linaro.org>
 <80ddc2b4-d6f8-4e8d-a45e-69c05d100aa2@linaro.org>
 <16b10f17-ecd3-4cdd-ac3f-f64127d60ace@linaro.org>
 <ulenfus552ggobis4gmi7eh27tikdaxbgm2oj63b5l2vemlfxc@ib5f2xaqurj6>
 <26XTdUyQTB41Oc4D5HnMtSm_QpZRjlkljQRJVw-u1Zp3Ltn9s4LVU-LQkP6drdl3Z3GGssLCCbsVYPFEqssHcQ==@protonmail.internalid>
 <65e06b2e-eeb9-45af-97ac-4ae60f652361@linaro.org>
 <9578400d-30ac-4d8c-9295-ee4ec8af3b2c@kernel.org>
From: Vladimir Zapolskiy <vladimir.zapolskiy@linaro.org>
In-Reply-To: <9578400d-30ac-4d8c-9295-ee4ec8af3b2c@kernel.org>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[linaro.org,none];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	R_DKIM_ALLOW(-0.20)[linaro.org:s=google];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	MIME_TRACE(0.00)[0:+];
	RCPT_COUNT_TWELVE(0.00)[14];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_FROM(0.00)[bounces-277831-lists,devicetree=lfdr.de];
	DKIM_TRACE(0.00)[linaro.org:+];
	RCVD_TLS_LAST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FROM_HAS_DN(0.00)[];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[vladimir.zapolskiy@linaro.org,devicetree@vger.kernel.org];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	NEURAL_HAM(-0.00)[-0.994];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[linaro.org:dkim,linaro.org:mid,sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns]
X-Rspamd-Queue-Id: 0C3CC2CD4BB
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

On 3/19/26 15:17, Bryan O'Donoghue wrote:
> On 19/03/2026 13:08, Vladimir Zapolskiy wrote:
>>> Why do you want a media driver? Isn't PHY driver enough?
>>>
>> As for today CAMSS CSIPHY are already media devices, and a user applies media
>> specific properties to them, for instance media bus format, resolution etc.
>> Technically this might be removed from CAMSS, but if so, then it should be
>> done before this new PHY driver model is applied.
>>
>> --
>> Best wishes,
> 
> There's no reason to remove that from CAMSS - it would be an ABI break
> in user-space anyway.

If technically CAMSS CSIPHY could be excluded from the list of CAMSS media
subdevices, then for the sake of simplification it should be done for all
supported platforms in advance, such a change will be independent from this
particular phy series, and vice versa, this CAMSS only driver change will
prepare a ground for media-less CAMSS CSIPHY device drivers, hence it shall
precede this particular CAMSS CSIPHY series.

For backward compatibility with userspace a noop stub will be good enough,
it's not an issue at all.

> The media entity in CAMSS msm_csiphyX handles format negotiation and
> pipeline routing. The PHY driver handles electrical configuration. They
> don't conflict and there multiple cited examples of this upstream already.
> 

-- 
Best wishes,
Vladimir

