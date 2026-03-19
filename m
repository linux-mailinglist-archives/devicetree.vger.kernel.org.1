Return-Path: <devicetree+bounces-277693-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id mAf+IFfQu2k4owIAu9opvQ
	(envelope-from <devicetree+bounces-277693-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Thu, 19 Mar 2026 11:30:47 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id D66542C97E7
	for <lists+devicetree@lfdr.de>; Thu, 19 Mar 2026 11:30:46 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 4B56430AB8FA
	for <lists+devicetree@lfdr.de>; Thu, 19 Mar 2026 10:29:54 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A850D374197;
	Thu, 19 Mar 2026 10:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=samsung.com header.i=@samsung.com header.b="C7xqy6Xa"
X-Original-To: devicetree@vger.kernel.org
Received: from mailout1.w1.samsung.com (mailout1.w1.samsung.com [210.118.77.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EE23734D383
	for <devicetree@vger.kernel.org>; Thu, 19 Mar 2026 10:29:50 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=210.118.77.11
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773916193; cv=none; b=f2USSTEvWom3VUYT7OE3Skl+8FrkrQovS6uli6cGDnDtc0k9TsEcfswVK1xGiBzwmLbKdPBn2Lzv7mnKU8hVO1jA2vqjtBZ8VxCklriT/1Gk8tH/vLSDaj38Bl/3PAe8U0ZwAtne0+fTiCXL44hU15XFEP2y55tuR2oPm0Hzc2w=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773916193; c=relaxed/simple;
	bh=DkSFWv460eF+SLnywqG+PsmtAxUHLUKrZGMYJd32AFA=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:From:In-Reply-To:
	 Content-Type:References; b=QZ3eQ30B277Y9zYV1tcyUbtnNndUxMqjPWAFmCaKg4T569bb6HpgUZBi6WVBTF/L6xise8N7zJICVl6S0L3YLmPw/Quha7FWfG201qIb3aO0fFd32y1wp/SMUVYtvnei2ct23mkTRqhYe3OcBTWZ9E/8XUpacbdRY+rRLv2GidQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=samsung.com; spf=pass smtp.mailfrom=samsung.com; dkim=pass (1024-bit key) header.d=samsung.com header.i=@samsung.com header.b=C7xqy6Xa; arc=none smtp.client-ip=210.118.77.11
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=samsung.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=samsung.com
Received: from eucas1p2.samsung.com (unknown [182.198.249.207])
	by mailout1.w1.samsung.com (KnoxPortal) with ESMTP id 20260319102948euoutp01b774214751e159d7f51420a839c67b0a~eN2AR1Ca20618706187euoutp01l
	for <devicetree@vger.kernel.org>; Thu, 19 Mar 2026 10:29:48 +0000 (GMT)
DKIM-Filter: OpenDKIM Filter v2.11.0 mailout1.w1.samsung.com 20260319102948euoutp01b774214751e159d7f51420a839c67b0a~eN2AR1Ca20618706187euoutp01l
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=samsung.com;
	s=mail20170921; t=1773916189;
	bh=uKAPmcA2X9Bm9pJ7T+wzs/NFBFfUIopHAZt+of0O0TE=;
	h=Date:Subject:To:Cc:From:In-Reply-To:References:From;
	b=C7xqy6XartaJebAc/mio76XJgysOea9Dhzs17asXEowNuhnl4+zZPcqEs2aitk7Dw
	 rx9J3fgwC7hVscoeFHjVoqHtn7LNCEL6lP6m2NHLhc/iouWTgywbvvbRGo6O6wySyS
	 ADC4nFYUa7UILv6G6+6jFPm9zHvZNkSXdkjjWl+8=
Received: from eusmtip1.samsung.com (unknown [203.254.199.221]) by
	eucas1p1.samsung.com (KnoxPortal) with ESMTPA id
	20260319102948eucas1p19b0586ca5935a60f9d5bcea3bbbccdac~eN1-1Tym32451224512eucas1p1g;
	Thu, 19 Mar 2026 10:29:48 +0000 (GMT)
Received: from [106.210.134.192] (unknown [106.210.134.192]) by
	eusmtip1.samsung.com (KnoxPortal) with ESMTPA id
	20260319102947eusmtip1f9e65f8316f14e8d08a56aea54338db7~eN1_23p1d2191621916eusmtip1f;
	Thu, 19 Mar 2026 10:29:47 +0000 (GMT)
Message-ID: <c5ba58fb-50f1-4067-a099-97169ea81f68@samsung.com>
Date: Thu, 19 Mar 2026 11:29:46 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Betterbird (Windows)
Subject: Re: [PATCH v8 05/10] pmdomain: samsung: convert to using regmap
To: Ulf Hansson <ulf.hansson@linaro.org>, =?UTF-8?Q?Andr=C3=A9_Draszik?=
	<andre.draszik@linaro.org>
Cc: Krzysztof Kozlowski <krzk@kernel.org>, Alim Akhtar
	<alim.akhtar@samsung.com>, Rob Herring <robh@kernel.org>, Conor Dooley
	<conor+dt@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, Liam
	Girdwood <lgirdwood@gmail.com>, Mark Brown <broonie@kernel.org>, Peter
	Griffin <peter.griffin@linaro.org>, Tudor Ambarus
	<tudor.ambarus@linaro.org>, Juan Yescas <jyescas@google.com>, Will McVicker
	<willmcvicker@google.com>, kernel-team@android.com,
	linux-arm-kernel@lists.infradead.org, linux-samsung-soc@vger.kernel.org,
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
	linux-pm@vger.kernel.org
Content-Language: en-US
From: Marek Szyprowski <m.szyprowski@samsung.com>
In-Reply-To: <CAPDyKFrprMSLOBMB_BHbi=j6UXV4dXBn-H8M1BsqDWNSCJwvuA@mail.gmail.com>
Content-Transfer-Encoding: 8bit
X-CMS-MailID: 20260319102948eucas1p19b0586ca5935a60f9d5bcea3bbbccdac
X-Msg-Generator: CA
Content-Type: text/plain; charset="utf-8"
X-RootMTR: 20260319101424eucas1p2d5dca06240e8760046fb40507ffb3bba
X-EPHeader: CA
X-CMS-RootMailID: 20260319101424eucas1p2d5dca06240e8760046fb40507ffb3bba
References: <20260318-gs101-pd-v8-0-241523460b10@linaro.org>
	<20260318-gs101-pd-v8-5-241523460b10@linaro.org>
	<CGME20260319101424eucas1p2d5dca06240e8760046fb40507ffb3bba@eucas1p2.samsung.com>
	<CAPDyKFrprMSLOBMB_BHbi=j6UXV4dXBn-H8M1BsqDWNSCJwvuA@mail.gmail.com>
X-Spamd-Result: default: False [-0.65 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[samsung.com,none];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	R_DKIM_ALLOW(-0.20)[samsung.com:s=mail20170921];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	XM_UA_NO_VERSION(0.01)[];
	MIME_TRACE(0.00)[0:+];
	RCPT_COUNT_TWELVE(0.00)[19];
	TAGGED_FROM(0.00)[bounces-277693-lists,devicetree=lfdr.de];
	FORGED_SENDER_MAILLIST(0.00)[];
	FREEMAIL_CC(0.00)[kernel.org,samsung.com,gmail.com,linaro.org,google.com,android.com,lists.infradead.org,vger.kernel.org];
	RCVD_TLS_LAST(0.00)[];
	FROM_HAS_DN(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCVD_COUNT_FIVE(0.00)[6];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[m.szyprowski@samsung.com,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[samsung.com:+];
	NEURAL_HAM(-0.00)[-0.271];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MID_RHS_MATCH_FROM(0.00)[];
	TO_DN_SOME(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[linaro.org:email,sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,samsung.com:dkim,samsung.com:email,samsung.com:mid]
X-Rspamd-Queue-Id: D66542C97E7
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

On 19.03.2026 11:13, Ulf Hansson wrote:
> On Wed, 18 Mar 2026 at 16:28, André Draszik <andre.draszik@linaro.org> wrote:
>> On platforms such as Google gs101, direct mmio register access to the
>> PMU registers doesn't necessarily work and access must happen via a
>> regmap created by the PMU driver instead.
>>
>> In preparation for supporting such SoCs convert the existing mmio
>> accesses to using a regmap wrapper.
>>
>> With this change in place, a follow-up patch can update the driver to
>> optionally acquire the PMU-created regmap without having to change the
>> rest of the code.
>>
>> Tested-by: Marek Szyprowski <m.szyprowski@samsung.com>
>> Signed-off-by: André Draszik <andre.draszik@linaro.org>
> [...]
>
>> @@ -36,31 +35,42 @@ struct exynos_pm_domain {
>>   static int exynos_pd_power(struct generic_pm_domain *domain, bool power_on)
>>   {
>>          struct exynos_pm_domain *pd;
>> -       void __iomem *base;
>>          u32 timeout, pwr;
>> -       char *op;
>> +       int err;
>>
>>          pd = container_of(domain, struct exynos_pm_domain, pd);
>> -       base = pd->base;
>>
>>          pwr = power_on ? pd->local_pwr_cfg : 0;
>> -       writel_relaxed(pwr, base);
>> +       err = regmap_write(pd->regmap, 0, pwr);
>> +       if (err) {
>> +               pr_err("Regmap write for power domain %s %sable failed: %d\n",
>> +                      domain->name, power_on ? "en" : "dis", err);
>> +               return err;
>> +       }
>>
>>          /* Wait max 1ms */
>>          timeout = 10;
>> -
>> -       while ((readl_relaxed(base + 0x4) & pd->local_pwr_cfg) != pwr) {
>> -               if (!timeout) {
>> -                       op = (power_on) ? "enable" : "disable";
>> -                       pr_err("Power domain %s %s failed\n", domain->name, op);
>> -                       return -ETIMEDOUT;
>> +       while (timeout-- > 0) {
>> +               unsigned int val;
>> +
>> +               err = regmap_read(pd->regmap, 0x4, &val);
>> +               if (err || ((val & pd->local_pwr_cfg) != pwr)) {
>> +                       cpu_relax();
>> +                       usleep_range(80, 100);
>> +                       continue;
>>                  }
>> -               timeout--;
>> -               cpu_relax();
>> -               usleep_range(80, 100);
>> +
>> +               break;
>>          }
>>
> [...]
>
> As a follow-up patch on top, please consider converting the open-coded
> polling loop above into a readx_poll_timeout_atomic().

This has been tried and it doesn't work in all cases required for power 
domain driver:

https://lore.kernel.org/all/5c19e4ef-c4fd-4bf5-88b3-46c86751b14e@samsung.com/

Probably a comment about that could be added directly to this code to 
avoid such conversion and breakage in the future.

> That said, the series looks ready to me, but I am awaiting an ack from
> a DT maintainer on patch4 before applying.

Best regards
-- 
Marek Szyprowski, PhD
Samsung R&D Institute Poland


