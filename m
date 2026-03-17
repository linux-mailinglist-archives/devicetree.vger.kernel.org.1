Return-Path: <devicetree+bounces-276715-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id SM2jBVZmuWkyDgIAu9opvQ
	(envelope-from <devicetree+bounces-276715-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 17 Mar 2026 15:33:58 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id B44602AC096
	for <lists+devicetree@lfdr.de>; Tue, 17 Mar 2026 15:33:57 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 45BDF3130D4A
	for <lists+devicetree@lfdr.de>; Tue, 17 Mar 2026 14:17:32 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 8C1F83E4C77;
	Tue, 17 Mar 2026 14:14:00 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="IwDacHVC"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pg1-f181.google.com (mail-pg1-f181.google.com [209.85.215.181])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 57A7F3E4C85
	for <devicetree@vger.kernel.org>; Tue, 17 Mar 2026 14:13:59 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.215.181
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773756840; cv=none; b=qCj35YlP3rsC7w9muL558tyfihahwbvEWUv9VJn+7NjeX2o2y8S8aWcBj7AuZB+a3mMiupaGDRlZeZOHPPLqhDOFE3Et+bAegutaUGbGbYeSIrk5u0abh4827DRmV4wYvY61P3G44wzfxZDi/fo/k8EvVO7A/ycpZ3ESVBIyVak=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773756840; c=relaxed/simple;
	bh=jugNfhVGoAZLsOc99uCHasSIqDz4SbgW0PhAWH1GU18=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
	 MIME-Version:Content-Type; b=Z6qNp86I1Pes5jra8uanX6/H1BGFMH+Vq/Rfn9qhju3ebH01IlT+I4ayb5vYADhaBrql0jbXitp/mK1q53K58c3dRsbxeLzXxBmhA2rVMXWNBCg3vsVElcLplxIuQe6dtSoPT7GJ3R9wXd5tMws6iX4nlGZsjdkZkPCc5J7z5uU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=IwDacHVC; arc=none smtp.client-ip=209.85.215.181
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-pg1-f181.google.com with SMTP id 41be03b00d2f7-c73bb6662d8so1349356a12.1
        for <devicetree@vger.kernel.org>; Tue, 17 Mar 2026 07:13:59 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1773756839; x=1774361639; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=xG69i8JOUMrznCX6jQd2A8Mx07c0rQ57RLS0YIP3VgM=;
        b=IwDacHVCJqqz/pl59zB+0pV+tkuM8+dz356kv6oRBiBwjg3VkrlOmbPFG78Rb8Oo/E
         6Ae4mRspZMfm/YwsltuMcGnezSE0xgiVyDDBdoNyRKKpCXw42wBhyi+ay5Q8r2lT9CUx
         jEMOttyCGd3tTunzzeNcTajNFe/TOm+IOQiSFoLiTKfpU5ex8kpMaY/EU3iAwI9Xa6md
         0VeSs3XMmSdL53OQzALfFVFcxNhAgEXrQfxEBeZyKQWvgYKtrWQ3HibKRNBcoCFH5wZP
         i2OleKprJbZ/FNavehvgY1lKCcEMmP2uVzgCo8Rxe5N+6F61EXtDJzzYQVN8BYfV5y4B
         JtPg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1773756839; x=1774361639;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=xG69i8JOUMrznCX6jQd2A8Mx07c0rQ57RLS0YIP3VgM=;
        b=QXsorMfz98rV2jIFCptbEuivWFXkcbOCSlkQ+Irhcl/Mnt/j71EITIpWY+iQqRP/9x
         m6iRdpMAEnnjCsb0YwoEfSJUyjBa0uG6NnhV7G3IrW5XciEttJrnjCjBT+WP2WhJdAZP
         HWZ1mrJP7jgi7KtiJAUdCFbtPnUENH+likslLPCCzHAg4VVTseST5mZgbacxjlnLNEcM
         mdAJTqJlth0DfPVrlCW8geSPkCIQm4ffXHvbzEDemkHQkG9fpL2sD3/vzUxY/RPhrTfU
         BGoMwTFxZUDEWBuwpACNRAbA90lQNKYta+Dso2/tvrHstfsfGDdbIDGGOU9lDJFu90r+
         5p7Q==
X-Forwarded-Encrypted: i=1; AJvYcCXIhZXFd4lMq4iSSkycPS2yb8Bb1A0WfQCmd1GARs81GjFKaqeeixdxuFrfoBK8m9WU27STdH7ZL0Gj@vger.kernel.org
X-Gm-Message-State: AOJu0YyLJu/6KrrmmxnFmVmTFW8nQniVG7M4xs2fPrIlgYEm9LQjTmYt
	8tosjD5jCpN9haIJ4zMzrT/S5Y91ebIDSB48c0rw8c1nFkdaPwgfKjY3
X-Gm-Gg: ATEYQzxLKD1awTX34v8QRyHLUJyIolX2g0rSOxFDyiyXKUTCythXP5Ar4tasI9bNXrr
	pJzIsRS8FNxw4ArRDaK0Pmtx08ZsPbb8FYGWhpGHWBOPJOOXKeBtRKcbUEzccT2l1M9xc4HdYdx
	u4rLV+JvTwo/llIyQC/Ro9YbaHHJG/0vVVExxJ6ZYF3yzUxhyX9Psxg2n9uLVw2KkPeqZCTar2a
	lXMB33GFMZ+lErCbor+3wJ3JdRrtzpzX8whcG5s/3mseSlBIizJYDtLZxKpSC+/Ss4daQMa2V4m
	AJ4IduI3UsJz2ra+BlAfDCb1Eg6zdufkmOgOOyUWIAZV95elgcNBoQWGHqi+6lJL0FIJYBbNEin
	XSeEcy9UDwoFzKClDtgVbM9hZdglk693MTDFoLQ/tDHnzI+CoBVDDCj5JK+bupgl3n1KqbjPirb
	szs71Wbu+ppyrTFiDMpdpuRuT4Q3mFS48FizJG8hTrTWrG3RuxN1rlgPMbByu7gbi2BHJLgQ==
X-Received: by 2002:a17:902:e54e:b0:2b0:5472:ac80 with SMTP id d9443c01a7336-2b05472af91mr89495745ad.42.1773756838550;
        Tue, 17 Mar 2026 07:13:58 -0700 (PDT)
Received: from localhost.localdomain (61-230-23-18.dynamic-ip.hinet.net. [61.230.23.18])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-2b04f40f515sm114820005ad.74.2026.03.17.07.13.55
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 17 Mar 2026 07:13:58 -0700 (PDT)
From: Yu-Chun Lin <eleanor15x@gmail.com>
To: krzk@kernel.org
Cc: afaerber@suse.com,
	conor+dt@kernel.org,
	cy.huang@realtek.com,
	cylee12@realtek.com,
	devicetree@vger.kernel.org,
	eleanor.lin@realtek.com,
	james.tai@realtek.com,
	jyanchou@realtek.com,
	krzk+dt@kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-clk@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	linux-realtek-soc@lists.infradead.org,
	mturquette@baylibre.com,
	p.zabel@pengutronix.de,
	robh@kernel.org,
	sboyd@kernel.org,
	stanley_chang@realtek.com
Subject: Re: [PATCH v4 01/10] dt-bindings: clock: Add Realtek RTD1625 Clock & Reset Controller
Date: Tue, 17 Mar 2026 22:13:52 +0800
Message-Id: <20260317141352.17813-1-eleanor15x@gmail.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <949b509d-c712-43e7-85a0-60f4c5e24a09@kernel.org>
References: <949b509d-c712-43e7-85a0-60f4c5e24a09@kernel.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-Spamd-Result: default: False [0.34 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	MID_CONTAINS_FROM(1.00)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20230601];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-276715-lists,devicetree=lfdr.de];
	FROM_HAS_DN(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[19];
	MIME_TRACE(0.00)[0:+];
	DKIM_TRACE(0.00)[gmail.com:+];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	FREEMAIL_FROM(0.00)[gmail.com];
	RCVD_COUNT_FIVE(0.00)[5];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[eleanor15x@gmail.com,devicetree@vger.kernel.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_NONE(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	NEURAL_HAM(-0.00)[-1.000];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns]
X-Rspamd-Queue-Id: B44602AC096
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

> On 17/03/2026 02:57, Yu-Chun Lin [林祐君] wrote:
>>> On Fri, Mar 13, 2026 at 04:10:51PM +0800, Yu-Chun Lin wrote:
>>>> +#endif /* __DT_BINDINGS_RTK_CLOCK_RTD1625_H */
>>>> diff --git a/include/dt-bindings/reset/realtek,rtd1625.h
>>>> b/include/dt-bindings/reset/realtek,rtd1625.h
>>>> new file mode 100644
>>>> index 000000000000..e69b5ee14cc6
>>>> --- /dev/null
>>>> +++ b/include/dt-bindings/reset/realtek,rtd1625.h
>>>> @@ -0,0 +1,195 @@
>>>> +/* SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause) */
>>>> +/*
>>>> + * Copyright (C) 2025 Realtek Semiconductor Corp.
>>>> + */
>>>> +#ifndef __DT_BINDINGS_RTK_RESET_RTD1625_H #define
>>>> +__DT_BINDINGS_RTK_RESET_RTD1625_H
>>>> +
>>>> +#define RTD1625_RSTN_REG_ID_SOFT_RESET1     0
>>>> +#define RTD1625_RSTN_REG_ID_SOFT_RESET2     1
>>>> +#define RTD1625_RSTN_REG_ID_SOFT_RESET3     2
>>>> +#define RTD1625_RSTN_REG_ID_SOFT_RESET4     3
>>>> +#define RTD1625_RSTN_REG_ID_SOFT_RESET7     4
>>>> +#define RTD1625_RSTN_REG_ID_SOFT_RESET9     5
>>>> +#define RTD1625_RSTN_REG_ID_SOFT_RESET_BIST 6
>>>> +#define RTD1625_RSTN_REG_ID_DUMMY0          7
>>>> +#define RTD1625_RSTN_REG_ID_DUMMY1          8
>>>> +#define RTD1625_RSTN_REG_ID_DUMMY4          9
>>>> +#define RTD1625_RSTN_REG_ID_SOFT_RESET11    10
>>>> +#define RTD1625_RSTN_REG_ID_SOFT_RESET12    11
>>>> +
>>>> +#define _REG_ID(n) ((RTD1625_RSTN_REG_ID_ ## n) << 5)
>>>> +
>>>
>>> Not a binding.
>>>
>>>> +#define RTD1625_CRT_RSTN_MISC      (_REG_ID(SOFT_RESET1) | 0)
>>>> +#define RTD1625_CRT_RSTN_DIP       (_REG_ID(SOFT_RESET1) | 2)
>>>> +#define RTD1625_CRT_RSTN_GSPI      (_REG_ID(SOFT_RESET1) | 4)
>>>
>>> None of these are really bindings. Register offsets is hardware data, not a
>>> binding.
>>>
>>> Drop all of this above and further - actually nothing in this header look like a
>>> binding, since you called these "REG".
>>>
>>> Best regards,
>>> Krzysztof
>> 
>> The defines in this header are NOT register offsets. They encode "Bank ID+ Bit
>> Position" for use in Device Tree.
>
> Bit position as in register bit position? That's still not a binding.
>
>
>>
>> Agreed, The naming with "REG_ID" is misleading. I will improve naming all reset
>> IDs in v5.
>
> No, all are to be dropped or renamed to standard IDs (incremented by one
> from 0 or 1).
>
> Best regards,
> Krzysztof

Hi Krzysztof,
 
Understood. I will redesign as follows:
 
1. Binding header: Sequential IDs (0, 1, 2, ...) without hardware details.
2. Driver: Internal mapping table to convert IDs to register/bit positions.
3. DT: Uses abstract IDs from binding header.

Regards,
Yu-Chun

