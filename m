Return-Path: <devicetree+bounces-273229-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id wPJbBWSIr2lvaAIAu9opvQ
	(envelope-from <devicetree+bounces-273229-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 10 Mar 2026 03:56:36 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [172.105.105.114])
	by mail.lfdr.de (Postfix) with ESMTPS id 91F372447FC
	for <lists+devicetree@lfdr.de>; Tue, 10 Mar 2026 03:56:33 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 862B93019168
	for <lists+devicetree@lfdr.de>; Tue, 10 Mar 2026 02:56:32 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 207423B9605;
	Tue, 10 Mar 2026 02:56:30 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="v+8Mo90A"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f46.google.com (mail-wm1-f46.google.com [209.85.128.46])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BDA153B8D59
	for <devicetree@vger.kernel.org>; Tue, 10 Mar 2026 02:56:26 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.46
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773111389; cv=none; b=nqEV83l/kMPHvjeeDOfnjHao8U8zwghTFUNZgsqsRhIMDURv0LNH8aG4sk4QIkBBB2+mptYn2kO/BVPdgj0zMbUePOg7jU3BUs15iMJqCeLLQ4i7iAGMG8lZKmr9Mzli7xxkCWaFOuxBZ+vRvTFKJGUs6s9yrOy/nsek21TewMA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773111389; c=relaxed/simple;
	bh=xOlmWHElZ0RirDwGPesTb+6FfflbyfzMF26FQgLD2eo=;
	h=Mime-Version:Content-Type:Date:Message-Id:Cc:Subject:From:To:
	 References:In-Reply-To; b=Ee5KfKQKmshWY68BYYVwuX27Cfqe8Y8zfejZxXlfyhqNAQ6zsDJxHhMrsfiXNYFh+ZQGZHIHzrbECTVBem+49zxVe2Ss/mmgV2k6NW8+p+5jEjgpd1bbE4v1PUmz9pH8I6er9jPKysQjHLTNHiN3ee9AikiYCKFkVtAHZ2h8qIE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=v+8Mo90A; arc=none smtp.client-ip=209.85.128.46
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wm1-f46.google.com with SMTP id 5b1f17b1804b1-4853e1ce427so16328235e9.3
        for <devicetree@vger.kernel.org>; Mon, 09 Mar 2026 19:56:26 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1773111385; x=1773716185; darn=vger.kernel.org;
        h=in-reply-to:references:to:from:subject:cc:message-id:date
         :content-transfer-encoding:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=IPeNaI7yJ6rN7QDAg6cmHZUEk/n4Ga/qldWclJyzUAo=;
        b=v+8Mo90AU8QuIIbTN38TdolQQV7OdXys2Nt9KOY0xdwM2RCIm7mAL/Ot0nwZ2G0qhn
         879DZzTwgV8ZB3ejEqajk/J7P1zCk6HOvYm4jMXPIOySnfqsLLAzl7qIkFu0rUo7yNrd
         hf0AR4AQvr7nYlSupQ45odasBDBGT//VCnsSg0a0jRRkLSpyCHfivvPNGyzfSxROJUe7
         CKrchZq4JLj+I/kJzSMz26gAm9NstbA2W607JKLoXIqTtY/dUmM7mtQ9vgdSIUuXcW68
         +s5tqWfgOUnOiMx7wW5o+ZDaQHvzjtUdA7y3E+tXNLWIkJRCLZQytq91rlAkyOJxYBZK
         ulJw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1773111385; x=1773716185;
        h=in-reply-to:references:to:from:subject:cc:message-id:date
         :content-transfer-encoding:mime-version:x-gm-gg:x-gm-message-state
         :from:to:cc:subject:date:message-id:reply-to;
        bh=IPeNaI7yJ6rN7QDAg6cmHZUEk/n4Ga/qldWclJyzUAo=;
        b=uw15kd3ZJPZIidxWjkLalCWpN3OSVxkb6gw4uHp9aeS94ioPgaCMJ4XSs0LNuYuPXG
         SAMPA6wPPwskNacjnknrHzkA8e4IBh3KDyEZsinEnZts8eF0IIG3//AKSK6RWgpm7SWD
         RtGmAyPKVvOeJL4E7Gs51m/B2pN2kSQaaeaoOwOcIwrj/ZRHaFofBa2rpApnMs75KRCg
         CMwrHjmkkTLrI3qCrsl+D0JyzjMM8/XZvvWmT4lWispL7WZgOLRKyG/g4d98oAEUxTco
         sIeq9KjoSy/RfZYF5fCoYKMamzTi5RsyT46u9GF3xVnDHnZr8ZiFGihgUSggMbcZcdYR
         kdig==
X-Forwarded-Encrypted: i=1; AJvYcCWcmfrNJ27u0PvxHg71R4eAHDYzGqyiPf7I46qSEnl35ZERDJG9WOoJU4xY7Xg3W5SHwaUE5KAA9sku@vger.kernel.org
X-Gm-Message-State: AOJu0Yw6P3f1Ltt/DzT33FawCWu0tlJ7CxLY8RiK62QQ62VMSi6b+Lwg
	rEdLmyYD934Jmue2m4j8zN4n379UfSY05A+LnIhjEucQ1N9CeoTthV/yM8Jbbyiv0WI=
X-Gm-Gg: ATEYQzwrNYP37CccUymMmz7fy5x7QTuYvX8gDuJu/1pe3V6yhtj9W1g2KiqlHOXTy+i
	i+EyY7VQXUZvs4l32kLkxhgaf9DmuGfqSgRBg44LQ7dSesA5lBzE81odeqXqKtCJOnIfQEuiToZ
	oaQOSsJB9Xb79v6VRn8KIlElgKN/TAoWLtq3JRem/0RJGZtv0gnBCqf+YocWU5TaXt/pz5Bn/0m
	YPtnfPWQqKWInQY0QnllYKWWbw2KX2yFOFGCDxzNt9tGElUb+RRCbR+h0qnD1biBoVTR/mZhtBk
	7NJI8Z9s3wo1Pcb7L+4h5Tqqt7KScfyWgPqvugawsyiykyJzImkfTWvUY/YQIcS0q0Ue+a9w3da
	8pKUhC6XvPoBGgWEEcISSmJir7RcyBGw/Tc5g3YZRxC4xO4/FXWWYpzBeKwqgHVP3zRk/xhcRSD
	jqqtmuaJQ/cQHoRhtvXM6qPGVxfSFvxXSEdb3WPXyqeza1Dr8NYd1Hn4iCVwcfx7cILo+JyaFIO
	ztnuOPq78gMH20X
X-Received: by 2002:a05:600c:a0d:b0:485:1878:7b8c with SMTP id 5b1f17b1804b1-4852695b6fcmr215782145e9.18.1773111384919;
        Mon, 09 Mar 2026 19:56:24 -0700 (PDT)
Received: from localhost ([2a02:c7c:5e34:8000:7b62:c11f:db20:9ab])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-48541b8d4easm38369165e9.15.2026.03.09.19.56.23
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 09 Mar 2026 19:56:24 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
Mime-Version: 1.0
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain; charset=UTF-8
Date: Tue, 10 Mar 2026 02:56:23 +0000
Message-Id: <DGYRJ0FUBJIB.3HUS30VW280A4@linaro.org>
Cc: <linux-samsung-soc@vger.kernel.org>, <linux-pm@vger.kernel.org>,
 <devicetree@vger.kernel.org>, <linux-arm-kernel@lists.infradead.org>,
 <linux-kernel@vger.kernel.org>, "Bartlomiej Zolnierkiewicz"
 <bzolnier@gmail.com>, "Krzysztof Kozlowski" <krzk@kernel.org>, "Rafael J.
 Wysocki" <rafael@kernel.org>, "Daniel Lezcano" <daniel.lezcano@linaro.org>,
 "Zhang Rui" <rui.zhang@intel.com>, "Lukasz Luba" <lukasz.luba@arm.com>,
 "Rob Herring" <robh@kernel.org>, "Conor Dooley" <conor+dt@kernel.org>,
 "Alim Akhtar" <alim.akhtar@samsung.com>, "Sam Protsenko"
 <semen.protsenko@linaro.org>, "Anand Moon" <linux.amoon@gmail.com>, "Marek
 Szyprowski" <m.szyprowski@samsung.com>
Subject: Re: [PATCH v4 0/7] Add initial Exynos850 support to the thermal
 driver
From: "Alexey Klimov" <alexey.klimov@linaro.org>
To: "Mateusz Majewski" <m.majewski2@samsung.com>
X-Mailer: aerc 0.20.0
References: <CGME20260303090219eucas1p1711b5b0f0e8ae56bc421ad8f6e5bf365@eucas1p1.samsung.com> <20260303090211.673143-1-m.majewski2@samsung.com>
In-Reply-To: <20260303090211.673143-1-m.majewski2@samsung.com>
X-Rspamd-Queue-Id: 91F372447FC
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.16 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[linaro.org,none];
	MV_CASE(0.50)[];
	R_SPF_ALLOW(-0.20)[+ip4:172.105.105.114:c];
	R_DKIM_ALLOW(-0.20)[linaro.org:s=google];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FREEMAIL_CC(0.00)[vger.kernel.org,lists.infradead.org,gmail.com,kernel.org,linaro.org,intel.com,arm.com,samsung.com];
	RCPT_COUNT_TWELVE(0.00)[18];
	TAGGED_FROM(0.00)[bounces-273229-lists,devicetree=lfdr.de];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	RBL_SPAMHAUS_BLOCKED_OPENRESOLVER(0.00)[172.105.105.114:from];
	MIME_TRACE(0.00)[0:+];
	DKIM_TRACE(0.00)[linaro.org:+];
	FROM_HAS_DN(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.105.96.0/20, country:SG];
	RCVD_COUNT_FIVE(0.00)[5];
	RECEIVED_SPAMHAUS_PBL(0.00)[2a02:c7c:5e34:8000:7b62:c11f:db20:9ab:received];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[alexey.klimov@linaro.org,devicetree@vger.kernel.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	RECEIVED_SPAMHAUS_BLOCKED_OPENRESOLVER(0.00)[100.90.174.1:received,209.85.128.46:received];
	TO_DN_SOME(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	DBL_BLOCKED_OPENRESOLVER(0.00)[tor.lore.kernel.org:rdns,tor.lore.kernel.org:helo,0.153.167.240:email]
X-Rspamd-Action: no action

Hello Mateusz,

Sorry for delayed response too.

On Tue Mar 3, 2026 at 9:02 AM GMT, Mateusz Majewski wrote:
> Hello and sorry for missing your mail, thankfully Marek pointed it out
> to me.
>
>> I applied the whole series locally, it applies fine on 6.19 but I didn't
>> check linux-next; and tested it on Exynos850 E850-96 board with the
>> following DT node:
>>=20
>> tmuctrl_0: tmu@10070000 {
>>     compatible =3D "samsung,exynos850-tmu";
>>     reg =3D <0x10070000 0x800>;
>>     interrupts =3D <GIC_SPI 226 IRQ_TYPE_LEVEL_HIGH>;
>>     clocks =3D <&cmu_peri CLK_GOUT_BUSIF_TMU_PCLK>;
>>     clock-names =3D "tmu_apbif";
>>     #thermal-sensor-cells =3D <0>;
>> };
>>=20
>> and thermal zones as you mentioned way back. It works just fine.
>> Temp goes up to 48 C with a loaded CPUs and settles at 36-37C when idle.
>>=20
>> So for the whole series:
>> Tested-by: Alexey Klimov <alexey.klimov@linaro.org>
>
> Thank you!
>
>> However, do you have plans to update it or re-submit?
>> Or any other plans working on it?
>
> Honestly not sure. If any other patches are merged that conflict with
> this series, I definitely can resolve the commits (for now it applies
> just fine to next-20260227, though I haven't compiled the result yet).
> Correct me if I am wrong, but I don't recall anything to be done in this
> series otherwise. If there is interest in this series, I can retest this
> on the other boards and re-submit this later this week.

So, I bumped into the same issue you described in your other email.
Other sensors seems to be not initialised and always return some weird
temp (minus 29 or smth like that). Only first sensors works.

I initially started to look at this after enabling idle states on E850-96
(they work with only some un-upstreamable change). Having at least one
sensor is better than nothing.

I am looking at enabling ACPM thermal thingy but so far I see similar
issue that temp of all sensors is reported as 10 C regardless via ACPM.

Having said that I am not going to oppose this series moving forward if
you wish.

Thank you.

Best regards,
Alexey

