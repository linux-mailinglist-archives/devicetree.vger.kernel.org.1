Return-Path: <devicetree+bounces-229015-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 70BBCBF3126
	for <lists+devicetree@lfdr.de>; Mon, 20 Oct 2025 20:58:48 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 11ACC3BE976
	for <lists+devicetree@lfdr.de>; Mon, 20 Oct 2025 18:57:37 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 4D9F62F9C2A;
	Mon, 20 Oct 2025 18:56:47 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="I41nrFdK"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pf1-f180.google.com (mail-pf1-f180.google.com [209.85.210.180])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9C14F2D5C97
	for <devicetree@vger.kernel.org>; Mon, 20 Oct 2025 18:56:44 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.210.180
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760986607; cv=none; b=nttsTRKLaTwh19k3t3HHGW1Pvgp8yLJPiEab5t0j36MzZr0+NbhQAiOnvf8MhIsBq8DUdUQh4WLM4KXmkt20Tb6t/VG5cCyO2+AhMchjGERy7orPJV8B9kUxcHTynVXglwu+zNqJz+XtiNhvhEmyW7pVoOG6usjOxwT7/DUYka0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760986607; c=relaxed/simple;
	bh=FTegcddYG/kcBOWrPb9C7ReoZmyPmWVL1RvDjiONYAQ=;
	h=From:To:CC:Subject:Date:Message-ID:References:In-Reply-To:
	 Content-Type:MIME-Version; b=HwqMwFwm5xLQfOAXl74PhzXoNayNeY37azUQfKjtJ1rQBxuC4awbgMSia06ChlOvm2TkBqn9B+KsTD4ZLzcMwU3Z++Jp/QQXsUjGB5DnwrYquNE1ZwXRdN60WxYHavjmOcy81JyT0JlHVTetrz/YW3Rmay1VRSJfk2xJPt2Mf3w=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=I41nrFdK; arc=none smtp.client-ip=209.85.210.180
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-pf1-f180.google.com with SMTP id d2e1a72fcca58-780fc3b181aso2633424b3a.2
        for <devicetree@vger.kernel.org>; Mon, 20 Oct 2025 11:56:44 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1760986604; x=1761591404; darn=vger.kernel.org;
        h=mime-version:content-transfer-encoding:msip_labels:content-language
         :accept-language:in-reply-to:references:message-id:date:thread-index
         :thread-topic:subject:cc:to:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=5wJvXDCgsxiTZj/jyU5ng54GQYZcyOYolDchPQivaZM=;
        b=I41nrFdKU2G1c4AhAlpXdkKW7I/o3b0mQ9oNSZ0YuXmvtQ3THDuPsG67pjuH7f50M3
         +txuqOwAlLu0CTKfMjkD4t9u60cGD03I37XqzIc7FBrDWb4yP+H0F2NeiVd9Y/p69iCD
         RAObZIqbn9NlkOIvjd+jertVXZvLDzqsuDmgIg/e43aUZH71PxZB5GmaNawQcEm9C9+n
         RiSpxRHnQfZX4/PGjemdes13Uti6qpA4FJhEsGq0OamIIwRTzvzlgCj1aaXrb1FcECZP
         0rHDn6H6qYHs7b6yl5yHtnokNbkCY5K+cNqzmxavC3GO60099shbaF1qOa4sN55sV2RZ
         qQog==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1760986604; x=1761591404;
        h=mime-version:content-transfer-encoding:msip_labels:content-language
         :accept-language:in-reply-to:references:message-id:date:thread-index
         :thread-topic:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=5wJvXDCgsxiTZj/jyU5ng54GQYZcyOYolDchPQivaZM=;
        b=lThVHZYgLy9BpF2mfexpPgvJQcPbP/c2Sll1JnK0YYaQSRnGAMOpnEu8pZfegka/Sm
         d1EsQdMyiJXy1YGUjUpzvpLXK7Y8IcUc2YfYZsDPCzzzlfrXxY+JbQgJDAr0wlAIH4O1
         aI3RmPnfNZ4dX/SN3WFDcJWv0i/iN37lkodlx5+Xh7971CNJJxCDBFNc7i5BfEh95BfW
         yXZgcFwXhDabA9j3bOIkUDQN1wZukYJtrV9QHIrw9DPOSQHCH/80Np5yMU/fU/SLH0dj
         FUVcbfxwMCpg1wJH72ikr1UWDZwvyDeQXN5zq3T3lS7MvRzjivnsW4coJN5wumkD6uE0
         92Zg==
X-Forwarded-Encrypted: i=1; AJvYcCUt4cBT9YWR2kh0U4GdVQgL/z3O3fAOyuDGXlkWj47To6iBM11bODGqioinQgBZROpQvR8ICxal6cqO@vger.kernel.org
X-Gm-Message-State: AOJu0YwlbN6PBjKVHEi6egpcwWa3e60M7IRrg9Cu8ZG8gHdiXOB3reQu
	5KXw8TRCjIcY9/yjdnSaqIKqgzkeDxO9n9r+clJNgaFd6/lGeJAR2tQ+
X-Gm-Gg: ASbGncvScP8IgY5za2s15lHiZiiJDHUMbq5Zp1s554Y7PjgcnX5tk9zsmtcTWa+U26B
	TUQFkXErHz0z6kgyhwO015myWGroJri+E4Qq3FT4EnulpBqxCylUJvqUjsflVP/DqfVaAqCbMV3
	1NNkIQJe1eFMv2Qhihk7Dt30enE+O1eLoG3Cwhqah9V3IU/i5+dOXRaph9O63UxM0D+k5Ev3aEk
	ksBuk5IoQNnSAAaLyi4OHHYDa6V/8yB9Jtts3gIx6moyv3wIM+h9FqG6cLrGXX9FIXGsQG3fSoV
	cGIwrbtyhoqeJpkAIdvhn0b9U/hnxJK/KjJHli7LVQ7wF6dX6L8dEDnspfEFvrRWh4MhkBD37+s
	g+q00vyNMIAo8cagun9pgO9n7G0c+uF35DJ1C8kkBU3KV4bKBZH4tgLCpMHBG/bGShKiyOAJ07M
	5BXgRsPGjkiocYy8QM7/piVw54Ejrl442lDNbfh5ea90AThX1qNHHMwV96PYjTlPfzEZsWcZPkM
	fO46/n6lQ==
X-Google-Smtp-Source: AGHT+IGwIImiwrLClI92ypstyjYN23QMN8mpE8vHyDfYsWpi4oyiqEuTnin1g3RMRyAz16cN/Hu0jw==
X-Received: by 2002:a05:6a20:3d84:b0:2fa:db45:a04c with SMTP id adf61e73a8af0-334a8519b31mr18008436637.6.1760986603740;
        Mon, 20 Oct 2025 11:56:43 -0700 (PDT)
Received: from TY4PR01MB17309.jpnprd01.prod.outlook.com ([2603:1046:c09:20a6::5])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-7a2300f3c8asm9022883b3a.41.2025.10.20.11.56.41
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 20 Oct 2025 11:56:43 -0700 (PDT)
From: jonathan brophy <professorjonny98@gmail.com>
To: Alexander Dahl <ada@thorsis.com>, Jacek Anaszewski
	<jacek.anaszewski@gmail.com>
CC: lee Jones <lee@kernel.org>, Pavel Machek <pavel@kernel.org>, Jonathan
 Brophy <Professor_jonny@hotmail.com>, Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>,
	Radoslav Tsvetkov <rtsvetkov@gradotech.eu>, "devicetree@vger.kernel.org"
	<devicetree@vger.kernel.org>, "linux-kernel@vger.kernel.org"
	<linux-kernel@vger.kernel.org>, "linux-leds@vger.kernel.org"
	<linux-leds@vger.kernel.org>
Subject: Re: [PATCH v3 0/4] leds: Add a virtual LED driver for groups of
Thread-Topic: [PATCH v3 0/4] leds: Add a virtual LED driver for groups of
Thread-Index: AThycjUyixuHOBw2iYEtuxAF83niADFiNjQ0NzhzZTDEWh1P9Q==
X-MS-Exchange-MessageSentRepresentingType: 1
Date: Mon, 20 Oct 2025 18:56:39 +0000
Message-ID:
	<TY4PR01MB17309F84122EF932A5C62C575F0F5A@TY4PR01MB17309.jpnprd01.prod.outlook.com>
References: <20251019092331.49531-1-professorjonny98@gmail.com>
 <3df51774-9774-40e6-ae65-7621bdce0f91@gmail.com>
 <20251020-retorted-obsession-21780c6baf47@thorsis.com>
In-Reply-To: <20251020-retorted-obsession-21780c6baf47@thorsis.com>
Accept-Language: en-GB, en-US
Content-Language: en-GB
X-MS-Has-Attach:
X-MS-Exchange-Organization-SCL: -1
X-MS-TNEF-Correlator:
X-MS-Exchange-Organization-RecordReviewCfmType: 0
msip_labels:
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0

Hi Alexander=0A=
=0A=
>=0A=
>From:=A0Alexander Dahl <ada@thorsis.com>=0A=
>Sent:=A0Monday, October 20, 2025 9:40 PM=0A=
>=0A=
>Hei Jacek,=0A=
>=0A=
>=0A=
>=0A=
>Am Sun, Oct 19, 2025 at 04:24:38PM +0200 schrieb Jacek Anaszewski:=0A=
>=0A=
>> Hi Jonathan,=0A=
>=0A=
>>=0A=
>=0A=
>> On 10/19/25 11:23, Jonathan Brophy wrote:=0A=
>=0A=
>> > From: Jonathan Brophy <professor_jonny@hotmail.com>=0A=
>=0A=
>> > Introduce a new driver that implements virtual LED groups,=0A=
>=0A=
>> > aggregating multiple monochromatic LEDs into virtual groups and provid=
ing=0A=
>=0A=
>> > priority-based control for concurrent state management.=0A=
>=0A=
>=0A=
>> Aren't you trying to reinvent LED trigger mechanism?=0A=
>=0A=
>=0A=
>=0A=
>Instead of using virtual LEDs, could this be implemented as a=0A=
>=0A=
>"virtual" trigger which allows grouping (and prioritizing) multiple=0A=
>=0A=
>other triggers, and apply that to only one existing LED?=0A=
>=0A=
>=0A=
>=0A=
>Greets=0A=
>=0A=
>Alex=0A=
=0A=
I looked at this you would have to include priority for each virtual trigge=
r and it would=0A=
get very hard to understand very quickly.=0A=
then things like per channel color for each trigger etc would just be impos=
sible to implement..=0A=
it would need a way to map and display it logically under sysfs too.=0A=
=0A=
For example the additive RGB color wheel has 3 primary colors  if you have =
a solid and a blink for each primary and secondary color that is 8 triggers=
 for a single led.=0A=
=0A=
I'm basically following the similar structure of leds-group-multicolor wher=
e they=0A=
in effect create a new structure representing individual led elements but, =
instead=0A=
of displaying the properties of the parent items, I'm creating new virtual =
properties=0A=
that of the group in the form of a single virtual LED or a multi LED.=0A=
=0A=
=0A=
=0A=

