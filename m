Return-Path: <devicetree+bounces-276712-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id cLHxGTxjuWlsCwIAu9opvQ
	(envelope-from <devicetree+bounces-276712-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 17 Mar 2026 15:20:44 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [IPv6:2600:3c09:e001:a7::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 28FA72ABB35
	for <lists+devicetree@lfdr.de>; Tue, 17 Mar 2026 15:20:44 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id 8D467309B5B8
	for <lists+devicetree@lfdr.de>; Tue, 17 Mar 2026 14:12:18 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id CCF063E3D96;
	Tue, 17 Mar 2026 14:11:32 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="s8iqHEml"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f51.google.com (mail-wm1-f51.google.com [209.85.128.51])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 562543E3D8F
	for <devicetree@vger.kernel.org>; Tue, 17 Mar 2026 14:11:31 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.51
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773756692; cv=none; b=cA4qdJRLh274j8twsRzvgmKUMGoTjBV1bPynaqPL/e6wey92haHavGuN271FZMneja5V1xWO2WdJpjZ5TovEpbg4ZjIbSNW1ZOtX1+8T+yPtb7SQeD3uczZ+rvfTnUpNAfVCPK/pV0lqz1catv9awCvLL9EMx+SM4nZX00/+oHQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773756692; c=relaxed/simple;
	bh=NLJiSkzeQIFRX1mkhJW/Gt/oIZVKQKSSMHiMPxqN+3g=;
	h=Mime-Version:Content-Type:Date:Message-Id:Cc:Subject:From:To:
	 References:In-Reply-To; b=YJU1IiCuXQoaFOsuP5+XSORCFtdfcLj3VPvrNPV+/87oGC5QF3D2h8ePIIn/QwIO3MjEmRYxUUGzf2L2Bo/d0GMj26TsCjF6e/E0E2uhTcQvFjT355xPMnvsSEQfutOK7m1LCqGgGiKvwjTMcnhd9R+ffOqu8ic2KDP4NyuVbjo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=s8iqHEml; arc=none smtp.client-ip=209.85.128.51
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wm1-f51.google.com with SMTP id 5b1f17b1804b1-4838c15e3cbso52825995e9.3
        for <devicetree@vger.kernel.org>; Tue, 17 Mar 2026 07:11:31 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1773756690; x=1774361490; darn=vger.kernel.org;
        h=in-reply-to:references:to:from:subject:cc:message-id:date
         :content-transfer-encoding:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=mtjYw7NIr5M9DO4GZFC2fJ8GnFCnCjLLvq9mVI1210Q=;
        b=s8iqHEmlH10OsAm6JPTeZDEsyvWyx5r+eH9ejFr4SmafxT9TTIUwC5Rqp32hcARcct
         i0Q9BtIhek6kOgfVzHWHk4IfKbx2fCa8VaizUB/N4T/jtxmoRHJPZD98SeC8gReY4Yuy
         mhzqOuehI/GnoHBBm43QJljT53yOBK3+1FcW9nyjzqthIhr35MaSZTju+C7t0bGFQRl/
         TwnGSdejBrrYlFmf4N+FoWdTwTkcAnQqdKGAK0MwWyA6RD3QtvnRKVZV0aFfzipSiKYP
         GHMbN52Zxa9EXv+NufLpqzsg79GALVxNdCByyPY/VUb2gq5bAzU72muO1f8B1f0i4wFS
         H6nw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1773756690; x=1774361490;
        h=in-reply-to:references:to:from:subject:cc:message-id:date
         :content-transfer-encoding:mime-version:x-gm-gg:x-gm-message-state
         :from:to:cc:subject:date:message-id:reply-to;
        bh=mtjYw7NIr5M9DO4GZFC2fJ8GnFCnCjLLvq9mVI1210Q=;
        b=AbBx/4zWiC+Sj+1MplmQoW9v6w1gWRvreop0eTBu5RVjyo5GAgEgoNWPUS9W8372Sj
         /zhOMq0/xJKzu73bu6zYPj+0JGevnFulPakpY7MfSQ0xlDTrxbk2vpAEl+qPH1PMlas8
         Q9Vf4gUxVCDuIhnqzxx2Smz//aSc0/ADcZ5owKsFQ4EoJM9WuHuqmLCPTdYWGWVDIK+y
         sWKBxHVVXbw5TnAHz0xhWp9bMMWC2GsN+PL3NUCivDFQcf0Fsxl/1qV9Q8RH1AaTXZ2Y
         Y4/NvMOgrivuJe3BrlspWO/HZwM3qNzx6AE10v/dS3Ulbov/ygtf0vhifcZTqYZW7zIl
         0FjQ==
X-Forwarded-Encrypted: i=1; AJvYcCUfs2ZdtUkwoYXsmOEFNStQc+NrbbLYaKB+dZI5n98TYggl/hJYx9+PHB08SUxHyhTgSwZ7yvAlrxMF@vger.kernel.org
X-Gm-Message-State: AOJu0Ywn/I/m/xNITCmNflu99YBY0uX6aii7Faz9BO5CbSBN1hnjVjVV
	K/vCmJi1gxdN+Rk1b7N0VwUiaZ3BC1WSwTawtxD9u1vvUfKv4+PWnr5akg1gVCbxFdw=
X-Gm-Gg: ATEYQzzKJ66Jk7VhWzEhEfX+1tsD50ahCuFGG5E01yRkk4vScKrdqGBKqGkuRT6+OWm
	X4NX1n22AsRKnJiKL3jyYzixZG5LphfVKX86y9huerSKl9NNujD0kKgGJdGQf6RwVh+6JJRq/nP
	51NOumnF4BpI705vNaWKLUs0cRF5nHg8uorBDmK0Oi9cgrpCfRdmTIU969N0JGySsKja3ozuHwS
	smMdQ9xjJXcamyIdPBzaU+GOiISKs7UA1ti1zk1RRTRsa1lyz95w2LMAK9ClHd19WqHVIB9ChfC
	QVZkUkrzsOd2axsMl2OlIU5iWGhQItSoXNAZAfBuiKTeZz1Ej+bTHdo6oTxENrr9XirTVuaMVA/
	9zl4xW+8EjBb3dpHQ5qeZE8JqdWBmV7SsAz78UJDFZuufiL40yAgWogmC+wecwNmZCjo8h9aH00
	gTVV+5jJHMAAfVkxGT1N1RBRBy/0G1BgY7L7hz0SJJmwYoav62oMZ5yYQxTZxR3qM3pa2oqREzH
	dy906ceeNXLikSVHg==
X-Received: by 2002:a05:600c:4514:b0:480:4a8f:2d5c with SMTP id 5b1f17b1804b1-48556709e21mr271873225e9.29.1773756689493;
        Tue, 17 Mar 2026 07:11:29 -0700 (PDT)
Received: from localhost ([2a02:c7c:5e34:8000:df24:76aa:fdca:2fe])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-485563903bbsm194524525e9.0.2026.03.17.07.11.27
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 17 Mar 2026 07:11:28 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
Mime-Version: 1.0
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain; charset=UTF-8
Date: Tue, 17 Mar 2026 14:11:27 +0000
Message-Id: <DH549OXPHXQA.265AMHWFSNK5C@linaro.org>
Cc: "Sam Protsenko" <semen.protsenko@linaro.org>,
 <linux-samsung-soc@vger.kernel.org>, "Krzysztof Kozlowski"
 <krzk@kernel.org>, =?utf-8?q?Andr=C3=A9_Draszik?=
 <andre.draszik@linaro.org>, "Conor Dooley" <conor+dt@kernel.org>, "Tudor
 Ambarus" <tudor.ambarus@linaro.org>, "Rob Herring" <robh@kernel.org>,
 "Krzysztof Kozlowski" <krzk+dt@kernel.org>, "Alim Akhtar"
 <alim.akhtar@samsung.com>, <linux-arm-kernel@lists.infradead.org>,
 <devicetree@vger.kernel.org>, <linux-kernel@vger.kernel.org>
Subject: Re: [PATCH RFC 7/8] soc: samsung: exynos-pmu: add Exynos850 CPU
 hotplug support
From: "Alexey Klimov" <alexey.klimov@linaro.org>
To: "Peter Griffin" <peter.griffin@linaro.org>, "Alexey Klimov"
 <alexey.klimov@linaro.org>
X-Mailer: aerc 0.21.0
References: <20260226-exynos850-cpuhotplug-v1-0-71d7c4063382@linaro.org>
 <20260226-exynos850-cpuhotplug-v1-7-71d7c4063382@linaro.org>
 <CADrjBPoLCDnvWocLYrg-zGRZNcBvPVYnUi4L7DA78m7QmkmQdQ@mail.gmail.com>
In-Reply-To: <CADrjBPoLCDnvWocLYrg-zGRZNcBvPVYnUi4L7DA78m7QmkmQdQ@mail.gmail.com>
X-Spamd-Result: default: False [-0.16 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[linaro.org,none];
	MV_CASE(0.50)[];
	R_DKIM_ALLOW(-0.20)[linaro.org:s=google];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c09:e001:a7::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[14];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	TAGGED_FROM(0.00)[bounces-276712-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	DKIM_TRACE(0.00)[linaro.org:+];
	FROM_HAS_DN(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c09::/32, country:SG];
	RCVD_COUNT_FIVE(0.00)[5];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[alexey.klimov@linaro.org,devicetree@vger.kernel.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	NEURAL_HAM(-0.00)[-1.000];
	TO_DN_SOME(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sto.lore.kernel.org:helo,sto.lore.kernel.org:rdns,linaro.org:dkim,linaro.org:email,linaro.org:mid]
X-Rspamd-Queue-Id: 28FA72ABB35
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

Hi Peter,

On Fri Mar 6, 2026 at 2:15 PM GMT, Peter Griffin wrote:
> On Thu, 26 Feb 2026 at 15:47, Alexey Klimov <alexey.klimov@linaro.org> wr=
ote:
>>
>> Some Exynos-based SoCs require specific set of writes/updates to PMU
>> and PMU intr gen blocks in order to put a CPU or a group of CPUs into
>> a different sleep states or prepare these entities for a CPU_OFF.
>> The same is valid for a reverse procedures like wake-ups or CPU(s)
>> online. Without these writes/updates the CPU(s) wake-up or online
>> fails.
>> Add support for Exynos850-based SoCs for PMU and PMU intr gen write/upda=
te
>> sequences.
>> While at this, also add description of Exynos850 PMU registers.
>>
>> Signed-off-by: Alexey Klimov <alexey.klimov@linaro.org>
>> ---
>>  drivers/soc/samsung/exynos-pmu.c            | 86 ++++++++++++++++++++++=
+++++--
>>  include/linux/soc/samsung/exynos-regs-pmu.h |  5 ++
>>  2 files changed, 87 insertions(+), 4 deletions(-)
>>
>> diff --git a/drivers/soc/samsung/exynos-pmu.c b/drivers/soc/samsung/exyn=
os-pmu.c
>> index 0967fa56708a..7b9b8e22d91b 100644
>> --- a/drivers/soc/samsung/exynos-pmu.c
>> +++ b/drivers/soc/samsung/exynos-pmu.c
>> @@ -118,6 +118,10 @@ static const struct regmap_config regmap_pmu_intr =
=3D {
>>         .use_raw_spinlock =3D true,
>>  };
>>
>> +const struct exynos_pmu_data exynos850_pmu_data =3D {
>> +       .pmu_cpuhp =3D true,
>> +};
>> +
>
> You may want to consider having an e850-pmu.c file to contain the e850
> specific data and hooks.
>
> Andre recently moved some of the gs101-specific parts into gs101-pmu.c
> (although not the actual gs101 online/offline hooks). Now that more
> SoCs are being added it could be a good time for exynos-pmu to contain
> only the generic code and the <soc>-pmu.c file having the
> peculiarities/hooks for the specific SoC.

Thanks. Yeah. That's why it was sent as an RFC to get pointers where
to place things properly. I'll update it.

[..]

>> -       pmu_context->cpu_pmu_online =3D __gs101_cpu_pmu_online;
>> -       pmu_context->cpu_pmu_offline =3D __gs101_cpu_pmu_offline;
>> +       if (of_machine_is_compatible("google,gs101")) {
>> +               pmu_context->cpu_pmu_online =3D __gs101_cpu_pmu_online;
>> +               pmu_context->cpu_pmu_offline =3D __gs101_cpu_pmu_offline=
;
>> +       }
>> +
>> +       if (of_machine_is_compatible("samsung,exynos850")) {
>> +               pmu_context->cpu_pmu_online =3D __exynos850_cpu_pmu_onli=
ne;
>> +               pmu_context->cpu_pmu_offline =3D __exynos850_cpu_pmu_off=
line;
>>
>
> There should be no compatibles inside probe (that rule applies to all
> drivers & subsystems). Instead use the driver match data
> (exynos_pmu_data).

Thanks. Yep, I'll update it.

BR,
Alexey

