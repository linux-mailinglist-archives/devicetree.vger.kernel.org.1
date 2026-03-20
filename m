Return-Path: <devicetree+bounces-278045-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id VNsfCtyWvGni0wIAu9opvQ
	(envelope-from <devicetree+bounces-278045-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Fri, 20 Mar 2026 01:37:48 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 734492D4788
	for <lists+devicetree@lfdr.de>; Fri, 20 Mar 2026 01:37:47 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id F0E2A306CC3A
	for <lists+devicetree@lfdr.de>; Fri, 20 Mar 2026 00:37:45 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 75B5921D585;
	Fri, 20 Mar 2026 00:37:45 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="TX4SIBhg"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lj1-f172.google.com (mail-lj1-f172.google.com [209.85.208.172])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0AB1E21256C
	for <devicetree@vger.kernel.org>; Fri, 20 Mar 2026 00:37:43 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.172
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773967065; cv=none; b=X8+YO9VFyuUbuHiIblqnd6n4z3pwaazFbn+8LbhqoqCyUE5pqVS1YR7sHabljSsfwgm8kkZyviiYjUJFu4vDWlOF2ljvCqHX79tMMCyvuLQN79nnFnyk7cn6c1uKaqdFTkMBhCZsldz5L54EfLHU0dtHTWh/Q95h5foEY+4yKvw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773967065; c=relaxed/simple;
	bh=F+lvgD2ubQQWQe9EW0DdQluM6ova1XjKWBNtVNvRmFQ=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=X53V5ZuEiF/Jx/JbUCT5knbtwOLB5YZqsffvsJi/PJOFNHnaKdqIkNj1KXNwNuhLhzOBD/Pma85NBRB1zoxXh1bndM6UxdmjY8ORS/iYw6dGLaDRRYF1hpuExrXnHqaHmri4cmv3KrmDcwaMjXjblNFmcTbt0qUAv3wEpREcRsQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=TX4SIBhg; arc=none smtp.client-ip=209.85.208.172
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lj1-f172.google.com with SMTP id 38308e7fff4ca-38a2e23e209so1178171fa.2
        for <devicetree@vger.kernel.org>; Thu, 19 Mar 2026 17:37:43 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1773967062; x=1774571862; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to:subject
         :user-agent:mime-version:date:message-id:from:to:cc:subject:date
         :message-id:reply-to;
        bh=pemwfzPMjVzwk3ZmFBYOgrrlysIkLu8Wo12oBjLmwB4=;
        b=TX4SIBhgrSeh4lDHY49XS8EcA0mTu+ILqAmfo2xbP2z/o+NsshDdRSdMIY7f1J3NHP
         gupqU1jtuUF6sNLJZTuSUlCJINGuLYQHckHmIt2o5eVa6qYXRKJyK/dPl+WFXM5OEtcy
         hf+T+kdKQ+dHJPy0u7Yx0EeOq4PZu7i/VrM5DV2xIHXmJ2566nl9xMDNXGWg1HkbDmpV
         jCunkDWoVtj5q1KMR7trCV5oODDc0maxXfKRgt4E5IazrSIA/brY0BV7ts4dU8aZY18f
         rMXmZ5XKg4ARONA/LCaI7nJLzCkcjdYyq7OWlEoy7QiYlMpoBlx2LW7i36Cla4xq2Mq4
         6Bug==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1773967062; x=1774571862;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to:subject
         :user-agent:mime-version:date:message-id:x-gm-gg:x-gm-message-state
         :from:to:cc:subject:date:message-id:reply-to;
        bh=pemwfzPMjVzwk3ZmFBYOgrrlysIkLu8Wo12oBjLmwB4=;
        b=cU05yaGmg+NwNeItT5ioX+Ce8SwvDbJRW8/ChL2jfgNJ0cPuvRc/KSeeZ+3DcLUSmd
         G+GGmG3eQTcLBaB9Kru4lhfiDdwq9LprN94qTukt3CxpZIJY35HXsc5GmXZ/qG1y1iFk
         VJcgqDvjlagB3s43xCryYTWwFbWmj8miWJCJNDf/vVvvqVG4pvoJtVeHmbN6/hgoLOOi
         wBgKtDrHuTBXSXx+pn65t35xU6gKOwoG4b5940z0EB6OEA7NduIjFCkLEejujs1aFmJn
         nwSV+SgxJJmmHK2LWBKMBTfYnrdylYdd55dOFYGTil7eJKu+TJqKnDbq/lbWb7jItDmo
         kIxg==
X-Forwarded-Encrypted: i=1; AJvYcCUEPibtW/SLuFyN5eTlg/sx09+TgI0MxbC4RaKpWDpnqT9AA7nm4eVc0J23nNsm5LY+GoEPAl0yHc0A@vger.kernel.org
X-Gm-Message-State: AOJu0Yw2fw+pUiczIwz4qCjPaPE7GGwbUP8J9rY/gKjmQ+jOMMjjRaNd
	BIzd8mnsB5rzPIb4WkWx9eAkA+cY+2WKh5Js7+oZuRikbML6B5JdaRqCnzlWK1B/GjQ=
X-Gm-Gg: ATEYQzylgzFygMg3bSy4lgqDx5XwbSlOVb1c9UKlLlf65O1PVJm0BpaD7BQ31A3Iqbn
	6qRmZ9NUswlA3zRk1rK2lLUY5J5xtK9tSVD+bRnzUAdFEVmi76YuvQUf/Wh+OJoyOJExGZQm/py
	CKqzZ35T9ZMfVistjroKXPSCum1gQdiXyUl0nbl1uIlU/hV50SNrXx/8C0jBEAuI/OL7Za5YHJa
	1dZKH6gexrBVp/SLRnt0VJJ2CANeioNImjajQT/FmZiuzFrlT8JB5jaCuYnikLRAoMf6d7TPpB5
	IzwX1zvZoUSUW9mh64GRCfHLCR9mfKZu2mQmV96ct0GbdE0Y8KMouvMsTxhf/FABkwLwzbWP/QT
	8dbKT3sRFL8I+wT8zq7h4fiaMB3h8RpY1cvyjG2iMcCQ5uQbRHt0psy/yXRsoxULohIaxFwBB6b
	85baOKJNg3VzGx2wOAizN1Zmy58OwK7dP7IzD5FivQ0vl2ag7Z2BrEs64eok4+9FvcKElrX9EMX
	oH4vg==
X-Received: by 2002:a05:6512:1290:b0:5a1:3e50:423a with SMTP id 2adb3069b0e04-5a285b4fc27mr205134e87.4.1773967061957;
        Thu, 19 Mar 2026 17:37:41 -0700 (PDT)
Received: from [192.168.1.100] (91-159-24-186.elisa-laajakaista.fi. [91.159.24.186])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-5a2851ae39dsm212218e87.36.2026.03.19.17.37.41
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 19 Mar 2026 17:37:41 -0700 (PDT)
Message-ID: <5b23408d-c996-4785-8294-233d79168a1b@linaro.org>
Date: Fri, 20 Mar 2026 02:37:40 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v4 2/2] phy: qcom-mipi-csi2: Add a CSI2 MIPI DPHY driver
To: Bryan O'Donoghue <bryan.odonoghue@linaro.org>,
 Bryan O'Donoghue <bod@kernel.org>,
 Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>,
 Neil Armstrong <neil.armstrong@linaro.org>
Cc: Vinod Koul <vkoul@kernel.org>, Kishon Vijay Abraham I
 <kishon@kernel.org>, Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley
 <conor+dt@kernel.org>, linux-arm-msm@vger.kernel.org,
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
 <d6616fc0-75fb-47e2-96cd-ae81fa1a8e82@linaro.org>
 <f3c62284-ac78-42c6-a4f0-cd984b7124cd@linaro.org>
From: Vladimir Zapolskiy <vladimir.zapolskiy@linaro.org>
In-Reply-To: <f3c62284-ac78-42c6-a4f0-cd984b7124cd@linaro.org>
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
	TAGGED_FROM(0.00)[bounces-278045-lists,devicetree=lfdr.de];
	DKIM_TRACE(0.00)[linaro.org:+];
	RCVD_TLS_LAST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FROM_HAS_DN(0.00)[];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[vladimir.zapolskiy@linaro.org,devicetree@vger.kernel.org];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	NEURAL_HAM(-0.00)[-0.993];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns]
X-Rspamd-Queue-Id: 734492D4788
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

On 3/19/26 17:18, Bryan O'Donoghue wrote:
> On 19/03/2026 14:56, Vladimir Zapolskiy wrote:
>>> There's no reason to remove that from CAMSS - it would be an ABI break
>>> in user-space anyway.
>>
>> If technically CAMSS CSIPHY could be excluded from the list of CAMSS media
>> subdevices, then for the sake of simplification it should be done for all
>> supported platforms in advance, such a change will be independent from this
>> particular phy series, and vice versa, this CAMSS only driver change will
>> prepare a ground for media-less CAMSS CSIPHY device drivers, hence it shall
>> precede this particular CAMSS CSIPHY series.
>>
>> For backward compatibility with userspace a noop stub will be good enough,
>> it's not an issue at all.
> 
> The standalone PHY driver doesn't require removing the CSIPHY media
> entity from CAMSS. They serve different purposes and coexist - its
> important to have a NOP from user-space perspective for legacy and
> indeed for new implementations.
> 

There should be no two CAMSS CSIPHY device (or subdevice) drivers, where
one chop of CAMSS CSIPHY device driver remains to sit under media, and
another one is under phy subsystem, since it's a further degradation from
the current already pretty awful state of the CAMSS driver, but at least
CSIPHY is not scattered over different subsystems today.

It might be fine to move device driver parts related to CAMSS CSIPHY
driver from media subsystem to phy subsystem, however if only a partial
transition is planned, and CSIPHY device support is split into two device
(sub-)drivers, then it merely exposes a quite severe design flaw.

It looks like it's still undecided, if CAMSS CSIPHY IP is a phy or media
device, it can not be both at the same time.

> How the PHY gets represented in the kernel is of zero interest to
> user-sapce.
> 
> That said, stubbing out the media entity is independent work that can
> happen in any order and IMO is a separate debate. Whether or not CSIPHY
> init sequences live inside of a monolithic CAMSS driver or live inside
> off a discrete csiphy driver is not related to the media graph.
> 
> Happy to have that debate - and if indicated, carefully apply patches
> separately.
> 

-- 
Best wishes,
Vladimir

