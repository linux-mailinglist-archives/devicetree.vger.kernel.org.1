Return-Path: <devicetree+bounces-270374-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 8PXGIKujpmmvSAAAu9opvQ
	(envelope-from <devicetree+bounces-270374-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 03 Mar 2026 10:02:35 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [172.105.105.114])
	by mail.lfdr.de (Postfix) with ESMTPS id 941BA1EB94C
	for <lists+devicetree@lfdr.de>; Tue, 03 Mar 2026 10:02:34 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id EE39F304EE9F
	for <lists+devicetree@lfdr.de>; Tue,  3 Mar 2026 09:01:50 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id CA522388E40;
	Tue,  3 Mar 2026 09:01:47 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="w5+HF9S7"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f49.google.com (mail-wm1-f49.google.com [209.85.128.49])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 56133374E5A
	for <devicetree@vger.kernel.org>; Tue,  3 Mar 2026 09:01:46 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.49
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772528507; cv=none; b=PKo4l9JU+mihgEz8rXXSaY2S25GG+LxvsQVotYFk1coZGphKBBMXK5wp6FmMNHeiMpBk76EzlkBzolY5iz1qhYCEF6mseQ8hMBC6uQIK8No076GWFFocbEwB9DBiFYcGptoxA18jH4Dzm1LYyoENhcBSqioswd+4pvZBZLV4g8w=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772528507; c=relaxed/simple;
	bh=wKzv8JjnWV5gBG65VFCZ2zPm9xxHlHBRT8kIM6tUCBY=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=BFWNyQ1irAUYRpGRX2nb4Qtx+2jIne2MBjKlqUcmq16mBg9Mht9NpN50iG22FVt6bMisVa5TdqUyYNsw5VbQvC02bv7ZkEM3ZbYKwh/hL0rpTHb3JxfS2sV1/cHyFLplUb4G2fzGXDimA4U9TlxWz+nD7tFRs3FXclsTYj3Bq8I=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=w5+HF9S7; arc=none smtp.client-ip=209.85.128.49
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wm1-f49.google.com with SMTP id 5b1f17b1804b1-4837907f535so46607375e9.3
        for <devicetree@vger.kernel.org>; Tue, 03 Mar 2026 01:01:46 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1772528505; x=1773133305; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=3xKcWF7NPjeXU/Yo9Rn3BptYJg8YH0is0Fv10MXJEt8=;
        b=w5+HF9S7SpRWMZba5sOz4lNbxVM1DShoNulBVR9GGxFlErxPJAQIB1tNRAoWMdSf9C
         4BQawI3ab20j7asF+paexzPduMb7qjwh9hq1tq23FAwz3VLgUEjHntxUJLgcFMkVXLms
         ZjqZoRqfWx5XWsj7PG5+UmShQlKIhGKOaQpzTzyIsMPk1iLbgnWdm9f3g6OcBdl5ARw4
         hPxMlFP3mbZ/0b3uVahPv3nIW9eJeMuqGARhNAOpjhht2yD2DU0pE2Qzt26m2fGqAnEr
         SRfpD4Pre9Svmd0Mm+o43o+qLWIfHVbPYYM8BeczfOir0/EhL6Rca1XiFSiWQXosLsLu
         pYVg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1772528505; x=1773133305;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=3xKcWF7NPjeXU/Yo9Rn3BptYJg8YH0is0Fv10MXJEt8=;
        b=w4lxjTN2oytAfqzPlXdiv6VsQdQG2tW373BevC19bG+E/yjT+ez8DE1Wk1OWPRGtet
         yaJqtd5uad8pavSAZEs2KxXTKza+IkGK3/woFw9C7gjNJnFbLvuGbr9nUVIRjSQ1dm2p
         OP6DgejbPu4W4ndi6+lOWujLyt/O0wGi+wi90kAiWut/hQcSrscdVpt4dgoLGGzCMBNb
         jcYFZVIhiJSeOSTjcLAm8LcmvbHEWE/cLA9JvoWCFzGLOJ3NGoH/2Kf642FTC9X3MB1z
         Qd046MbuQugZadtFiRQVOn4Ww/REeMMwUTG5fRLN/6g1MAPDACSUrM1p0R5U0FDR8yKB
         U37A==
X-Forwarded-Encrypted: i=1; AJvYcCUsrzgmxwi36qu7pNaIhGGBWmGkWMMRWOVQ7zEY0MvsOgMjVnTRsmrqe/U6d1n/ki4khcI5oxYoqeWS@vger.kernel.org
X-Gm-Message-State: AOJu0YxtdwqK6wapUpmsNTag0cOmQ2hG6jGzAnE20Cm2NB/JVtGmp6Ip
	+LVeO0SGM3oXB0O3ygFA0/dRZKI3Z7ZX2PdYrJCt2dOl3X0DNKuCA0A++JY29Id+uMM=
X-Gm-Gg: ATEYQzxBqpdyG1T84AlMknU4sIsef0Np2h+2tplR6eo8TPj2KrXRlZsmMwesjmL1v8E
	cHLcdfDKNkzOeyxyyr+deZkE+i44PIG4jOAxDWj/wkEW7SwSy3xUiOdW6LxU24Y+n7wAvK/+pU7
	E4ng4oGr7nviB4WzC6wuiS3k0dP7Vyyepy1SOPXheH7h0UfX6QM+7PYWOhedQpdJMuLMmTCmff5
	VWGWosqQ4hL2uJnP+Qoj33FP0X7exfKmToShxUJjeixdCj+2sUW0znyBemnBbq3Lz6nugpEH6MU
	yAHWfugf9ydsE3Zp064m2ME18AE1PgPlQTu+0+19m1QhHn99fDv4AO7iYp/9MeTYmq6oajJ8/fE
	fkDq1rVH3PBuqWY+Ldl4vlCu00YPySfaW/oZCnHuW9/xjbVcn1Rip0dnHAYkDTAjfzOG8zLyTV6
	NYJjflMQWnOSObe/OTbwIVlhkabn87Hok=
X-Received: by 2002:a05:600c:6385:b0:477:54f9:6ac2 with SMTP id 5b1f17b1804b1-483c9b53c9cmr291863355e9.0.1772528504551;
        Tue, 03 Mar 2026 01:01:44 -0800 (PST)
Received: from [10.11.12.108] ([79.115.63.77])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-483c3b3474dsm312924805e9.1.2026.03.03.01.01.42
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 03 Mar 2026 01:01:44 -0800 (PST)
Message-ID: <b8a029f1-1229-418b-895e-b8dc0319b545@linaro.org>
Date: Tue, 3 Mar 2026 11:01:40 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 0/7] thermal: samsung: Add support for Google GS101 TMU
To: Alexey Klimov <alexey.klimov@linaro.org>
Cc: "Rafael J. Wysocki" <rafael@kernel.org>,
 Daniel Lezcano <daniel.lezcano@linaro.org>, Zhang Rui <rui.zhang@intel.com>,
 Lukasz Luba <lukasz.luba@arm.com>, Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley
 <conor+dt@kernel.org>, Krzysztof Kozlowski <krzk@kernel.org>,
 Alim Akhtar <alim.akhtar@samsung.com>,
 Bartlomiej Zolnierkiewicz <bzolnier@gmail.com>, Kees Cook <kees@kernel.org>,
 "Gustavo A. R. Silva" <gustavoars@kernel.org>,
 Peter Griffin <peter.griffin@linaro.org>,
 =?UTF-8?Q?Andr=C3=A9_Draszik?= <andre.draszik@linaro.org>,
 willmcvicker@google.com, jyescas@google.com, shin.son@samsung.com,
 linux-samsung-soc@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-pm@vger.kernel.org, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-hardening@vger.kernel.org
References: <20260119-acpm-tmu-v2-0-e02a834f04c6@linaro.org>
 <CANgGJDpjsyoCnuXuMMi1L3nWNJsM4aMs6C=NvBcTkWeC3NFadQ@mail.gmail.com>
Content-Language: en-US
From: Tudor Ambarus <tudor.ambarus@linaro.org>
In-Reply-To: <CANgGJDpjsyoCnuXuMMi1L3nWNJsM4aMs6C=NvBcTkWeC3NFadQ@mail.gmail.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Rspamd-Queue-Id: 941BA1EB94C
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[linaro.org,none];
	R_SPF_ALLOW(-0.20)[+ip4:172.105.105.114:c];
	R_DKIM_ALLOW(-0.20)[linaro.org:s=google];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FREEMAIL_CC(0.00)[kernel.org,linaro.org,intel.com,arm.com,samsung.com,gmail.com,google.com,vger.kernel.org,lists.infradead.org];
	TAGGED_FROM(0.00)[bounces-270374-lists,devicetree=lfdr.de];
	FROM_HAS_DN(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[24];
	MIME_TRACE(0.00)[0:+];
	DKIM_TRACE(0.00)[linaro.org:+];
	ASN(0.00)[asn:63949, ipnet:172.105.96.0/20, country:SG];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[tudor.ambarus@linaro.org,devicetree@vger.kernel.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-0.999];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[linaro.org:dkim,linaro.org:email,linaro.org:mid,tor.lore.kernel.org:rdns,tor.lore.kernel.org:helo]
X-Rspamd-Action: no action



On 3/2/26 8:30 PM, Alexey Klimov wrote:
> Hi Tudor,

Hi!

> 
> On Sun, 1 Mar 2026 at 02:26, Tudor Ambarus <tudor.ambarus@linaro.org> wrote:
> 
> [...]
> 
>> ---
>> Tudor Ambarus (7):
>>       dt-bindings: thermal: Add Google GS101 TMU
>>       firmware: samsung: acpm: Add TMU protocol support
>>       firmware: samsung: acpm: Add devm_acpm_get_by_phandle helper
>>       thermal: samsung: Add support for GS101 TMU
>>       MAINTAINERS: Add entry for Samsung Exynos ACPM thermal driver
>>       arm64: dts: exynos: gs101: Add thermal management unit
>>       arm64: defconfig: enable Exynos ACPM thermal support
>>
>>  .../bindings/thermal/google,gs101-tmu-top.yaml     |  67 +++
>>  MAINTAINERS                                        |   8 +
>>  arch/arm64/boot/dts/exynos/google/gs101-tmu.dtsi   | 209 +++++++
>>  arch/arm64/boot/dts/exynos/google/gs101.dtsi       |  18 +
>>  arch/arm64/configs/defconfig                       |   1 +
>>  drivers/firmware/samsung/Makefile                  |   1 +
>>  drivers/firmware/samsung/exynos-acpm-tmu.c         | 212 +++++++
>>  drivers/firmware/samsung/exynos-acpm-tmu.h         |  33 ++
>>  drivers/firmware/samsung/exynos-acpm.c             |  35 ++
>>  drivers/thermal/samsung/Kconfig                    |  16 +
>>  drivers/thermal/samsung/Makefile                   |   2 +
>>  drivers/thermal/samsung/acpm-tmu.c                 | 643 +++++++++++++++++++++
>>  .../linux/firmware/samsung/exynos-acpm-protocol.h  |  30 +
>>  13 files changed, 1275 insertions(+)
>> ---
>> base-commit: e2211f5d980086dd9fbdab3bcd86b715e12cae13
>> change-id: 20260113-acpm-tmu-27e21f0e2c3b
> 
> JFYI, the series doesn't clearly apply on today's linux-next:

okay, thanks. I'll submit a v2, but right now I'm dealing with other
higher priority topics.

> 
> Grabbing thread from
> lore.kernel.org/all/20260119-acpm-tmu-v2-0-e02a834f04c6@linaro.org/t.mbox.gz
> Checking for newer revisions
> Grabbing search results from lore.kernel.org
> Analyzing 18 messages in the thread
> Looking for additional code-review trailers on lore.kernel.org
> Analyzing 20 code-review messages
> Checking attestation on all messages, may take a moment...
> 
> Base: using specified base-commit e2211f5d980086dd9fbdab3bcd86b715e12cae13
> Applying: dt-bindings: thermal: Add Google GS101 TMU
> Applying: firmware: samsung: acpm: Add TMU protocol support
> Patch failed at 0002 firmware: samsung: acpm: Add TMU protocol support
> error: patch failed: include/linux/firmware/samsung/exynos-acpm-protocol.h:40
> error: include/linux/firmware/samsung/exynos-acpm-protocol.h: patch
> does not apply
> 
> Was it done against mainline?

Of course, yes. It was on top of what was the latest Samsung SoC tree
at the time of development. Internal kernel trees may change,
depending on the maintainer.

If you want to try the code while I submit a v2, I pushed what I
think it was v2 at:

git@github.com:ambarus/linux-0day.git, branch b4/acpm-tmu


Cheers,
ta

