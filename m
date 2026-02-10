Return-Path: <devicetree+bounces-264443-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id qD6/MaZAi2mfRwAAu9opvQ
	(envelope-from <devicetree+bounces-264443-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 10 Feb 2026 15:28:54 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 5F6B311BE96
	for <lists+devicetree@lfdr.de>; Tue, 10 Feb 2026 15:28:54 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id A5230301CF8B
	for <lists+devicetree@lfdr.de>; Tue, 10 Feb 2026 14:28:41 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 5647836E469;
	Tue, 10 Feb 2026 14:28:41 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="JMm6AUHL"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lj1-f193.google.com (mail-lj1-f193.google.com [209.85.208.193])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1A99A36BCFD
	for <devicetree@vger.kernel.org>; Tue, 10 Feb 2026 14:28:38 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.193
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770733721; cv=none; b=dieepMl/8qX9tJE/GFEad017u2iYI6lpyNykgaBjmIjkQlPT8DP6yiD0bKjpEneppUha9573EB+b14OKJqUZPh+wSJbEBU9dZWi7ZWLHMFRz3OASNvPSxQpUuda71CVSZj4X+a23upfhYp1XN/6Z14fAryL35+dQhOtXFmIW8Ss=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770733721; c=relaxed/simple;
	bh=kiTxjuT/LmkrO3n5jH8eFQ4YBGi1FGUJ02CQVFp+/cs=;
	h=Date:From:To:CC:Subject:In-Reply-To:References:Message-ID:
	 MIME-Version:Content-Type; b=Xu49oN5k8fXdw4GdvijiuMIWnNzBYjgu698qIXA0EpjmRRZJLJyqYjf7onkamzWaHz8EGX9ZoCiD4sFrgc+wnbkW3TS+Gu7gAWK+7Ah8QPQ81+re/O0vdnoVS1M05EO3yTi7L9ZrB2X1RdA4xj5cWaEiSRTOGp5NwzakZtGqsl8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=JMm6AUHL; arc=none smtp.client-ip=209.85.208.193
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-lj1-f193.google.com with SMTP id 38308e7fff4ca-385da75c6e6so40524721fa.2
        for <devicetree@vger.kernel.org>; Tue, 10 Feb 2026 06:28:38 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1770733717; x=1771338517; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:references
         :in-reply-to:user-agent:subject:cc:to:from:date:from:to:cc:subject
         :date:message-id:reply-to;
        bh=jJiTIxfPBm25e93CFQ56nmStRzngUVIEZWb2GhG+yqk=;
        b=JMm6AUHLjOULCfQOex4jOeGrObx2/r2kBXk8UdiPtsEU0F5Z1QDK7nIP2vB9jxHjN4
         5/JlCkw6UI5uaPW/FHHxYniSFabnDS1BC1rMhQBsAs1HguLxBkkPHiN13rxerYDWzIM7
         WZfLNuoLSHGyyTUsQ2tcOzm53tEH4C4TGMUTQIWBBgTBmVxz2aISGC7qy75yfHQstlIm
         1GJ7VFM41usiSZ9KePIKIOahYT8fxMwFdgoL5A3HrnphOOVwTesAntIIIsC0skZYhhjr
         4kyYdqHYkmD8+RRMtY0sI1Av7CAaXHzFaWdthUbnfQkzNSM8FeWPGT7hGgco6uCDbzsU
         gCjg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1770733717; x=1771338517;
        h=content-transfer-encoding:mime-version:message-id:references
         :in-reply-to:user-agent:subject:cc:to:from:date:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=jJiTIxfPBm25e93CFQ56nmStRzngUVIEZWb2GhG+yqk=;
        b=UrdHNno5t70gd8kvZdRHusqTvbF60Otqz3kLKzMR6G7yUWAO2qEPSoOR3phMJOMi53
         q07TRQkc50ThsmD2NA1lXywcmJYPaum6aXlx8OOjanIdUAdjKsEgZPuR5f98L0ld6orX
         WL533/iB1d1UttYKX4gII+iI7wumJlvZEo19xExqDb5lDI0TtiEkRdsMShY8jTI9sjlf
         rxF8yl7cIfOSZaUfAEtkps31okb78I0NWpT3B4KCSuPg16tp0SrIannDtGhoPGQpqiZ1
         ldDNrSB3YDtbhaqvsiiop/yGYe+6lM5cuQPdoK/MpR9bEWnP4Hwqqj/AqyPxrbBlVP50
         IixA==
X-Forwarded-Encrypted: i=1; AJvYcCX0+hvhpPixqhwOvpyzROeuGRms20rPI1SeOxGNmi4GOjd+YVBVC7JRzaZeby2iitPdt3Vq2bkROTQ0@vger.kernel.org
X-Gm-Message-State: AOJu0Yy+mTCkl4YWFCI8SuJOkgE0aC6hGsh8YZkAsgn6d6vZnbsOkuhb
	DRPxIKlvk55EpFEKZFie9lFcBsnnfKPjqhzDdeyGhqgcaW63RW7AQhpi
X-Gm-Gg: AZuq6aKX4PVdAh1RUOtHF/Ccy+3VWJit8QzShpfA/3kT1b8KIxeE/i3ftaJdNFnVM3P
	JS/vB9k2+/BesKaK74QxSVLqejcsRuPRA0QbBRwGkeFV0FcZQgwEn/xV7pAihxOYFr73vYDwnyY
	qsVZk8y75bsl8LOfNhp3YXuGupB/6jy/4dsMZclsZQqUiCrrC4Zmhsf5N1Jzy62XzlGlDzSX/Q6
	cPLML5CJmyFsjgB4U3MBfmqDIUJ56eMT+H9UOqAuu8YQVKtd368Z9/fyQ2pAr3eXWRN0A6eseC0
	NfjRsEmEA38IAx/FYfwQF6qLyozEIM4ar/hq8zL8hkOTOwr1GEuhuSuE09b2kxsNG3SQJgJtCPR
	UOoTb74WHor7K4y4syZrZ+mvswr2Lxy3Pna4w0Ojy7m24qAyAE9Xy6MJ1r7U+YjPpjKk4bAryCZ
	Yry3OWv7Bty7wpEropmmiQu1JeX0yyDcElU5VkcCd+gw==
X-Received: by 2002:a05:651c:3048:b0:383:1737:5ae1 with SMTP id 38308e7fff4ca-386b4ed29e9mr47903091fa.11.1770733716944;
        Tue, 10 Feb 2026 06:28:36 -0800 (PST)
Received: from ehlo.thunderbird.net ([178.137.45.117])
        by smtp.gmail.com with ESMTPSA id 38308e7fff4ca-386fb4662bdsm985391fa.29.2026.02.10.06.28.36
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 10 Feb 2026 06:28:36 -0800 (PST)
Date: Tue, 10 Feb 2026 16:28:35 +0200
From: Svyatoslav Ryhel <clamor95@gmail.com>
To: Rob Herring <robh@kernel.org>
CC: David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>,
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
 Maxime Ripard <mripard@kernel.org>, Thomas Zimmermann <tzimmermann@suse.de>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>,
 Thierry Reding <thierry.reding@gmail.com>,
 Jonathan Hunter <jonathanh@nvidia.com>, dri-devel@lists.freedesktop.org,
 devicetree@vger.kernel.org, linux-tegra@vger.kernel.org,
 linux-kernel@vger.kernel.org
Subject: =?US-ASCII?Q?Re=3A_=5BPATCH_v1_1/2=5D_dt-bindings=3A_displ?=
 =?US-ASCII?Q?ay=3A_tegra=3A_document_Tegra20_HDMI_port?=
User-Agent: K-9 Mail for Android
In-Reply-To: <20260210141917.GA2659856-robh@kernel.org>
References: <20260210094908.14276-1-clamor95@gmail.com> <20260210094908.14276-2-clamor95@gmail.com> <20260210141917.GA2659856-robh@kernel.org>
Message-ID: <DB13921D-05FC-4A6C-B5D0-D23D5B47063B@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain;
 charset=utf-8
Content-Transfer-Encoding: quoted-printable
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [0.54 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	SUBJ_EXCESS_QP(1.20)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20230601];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	MIME_TRACE(0.00)[0:+];
	FREEMAIL_FROM(0.00)[gmail.com];
	FREEMAIL_CC(0.00)[gmail.com,ffwll.ch,linux.intel.com,kernel.org,suse.de,nvidia.com,lists.freedesktop.org,vger.kernel.org];
	TAGGED_FROM(0.00)[bounces-264443-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[14];
	FORGED_SENDER_MAILLIST(0.00)[];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[clamor95@gmail.com,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[gmail.com:+];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	TO_DN_SOME(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns]
X-Rspamd-Queue-Id: 5F6B311BE96
X-Rspamd-Action: no action



10 =D0=BB=D1=8E=D1=82=D0=BE=D0=B3=D0=BE 2026=E2=80=AF=D1=80=2E 16:19:17 GM=
T+02:00, Rob Herring <robh@kernel=2Eorg> =D0=BF=D0=B8=D1=88=D0=B5:
>On Tue, Feb 10, 2026 at 11:49:07AM +0200, Svyatoslav Ryhel wrote:
>> Tegra HDMI can be modeled using an OF graph=2E Reflect this in the bind=
ings=2E
>>=20
>> Signed-off-by: Svyatoslav Ryhel <clamor95@gmail=2Ecom>
>> ---
>>  =2E=2E=2E/bindings/display/tegra/nvidia,tegra20-hdmi=2Eyaml | 13 +++++=
++++++--
>>  1 file changed, 11 insertions(+), 2 deletions(-)
>>=20
>> diff --git a/Documentation/devicetree/bindings/display/tegra/nvidia,teg=
ra20-hdmi=2Eyaml b/Documentation/devicetree/bindings/display/tegra/nvidia,t=
egra20-hdmi=2Eyaml
>> index f77197e4869f=2E=2Ef33b700bf0ee 100644
>> --- a/Documentation/devicetree/bindings/display/tegra/nvidia,tegra20-hd=
mi=2Eyaml
>> +++ b/Documentation/devicetree/bindings/display/tegra/nvidia,tegra20-hd=
mi=2Eyaml
>> @@ -82,6 +82,10 @@ properties:
>>      description: phandle of a display panel
>>      $ref: /schemas/types=2Eyaml#/definitions/phandle
>> =20
>> +  port:
>> +    description: connection to controller receiving HDMI signals
>
>Describe this in terms of this block, not what it is connected to=2E It=
=20
>could be an hdmi-connector node or a bridge=2E
>

Isn't the idea of port to provide connection to the remove device=2E How s=
hould I word it: "links HDMI host with the receiver" or "output of HDMI"? I=
 don't quite understand what you mean=2E Maybe I should remove description =
entirely, HDMI has a single port and its function is pretty strait forward=
=2E

>> +    $ref: /schemas/graph=2Eyaml#/properties/port
>> +
>>    "#sound-dai-cells":
>>      const: 0
>> =20
>> @@ -97,8 +101,13 @@ required:
>>    - reset-names
>>    - pll-supply
>>    - vdd-supply
>> -  - nvidia,ddc-i2c-bus
>> -  - nvidia,hpd-gpio
>> +
>> +anyOf:
>> +  - required:
>> +    - nvidia,ddc-i2c-bus
>> +    - nvidia,hpd-gpio
>> +  - required:
>> +    - port
>> =20
>>  examples:
>>    - |
>> --=20
>> 2=2E51=2E0
>>=20

