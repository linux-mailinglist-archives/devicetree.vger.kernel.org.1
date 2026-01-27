Return-Path: <devicetree+bounces-259876-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id GIxjKjaueGlasAEAu9opvQ
	(envelope-from <devicetree+bounces-259876-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 27 Jan 2026 13:23:18 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [IPv6:2600:3c04:e001:36c::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 2D4C09443E
	for <lists+devicetree@lfdr.de>; Tue, 27 Jan 2026 13:23:18 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 74500303EFB5
	for <lists+devicetree@lfdr.de>; Tue, 27 Jan 2026 12:22:33 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 16D6834D391;
	Tue, 27 Jan 2026 12:22:26 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="V53ynsOn"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f44.google.com (mail-wr1-f44.google.com [209.85.221.44])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3FC6D34D904
	for <devicetree@vger.kernel.org>; Tue, 27 Jan 2026 12:22:24 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.44
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769516546; cv=none; b=lnvXddHA0plhdDv0FagCJcEwL6i5UW5zVljZC5qpXyK1eAKhT8jugng5gutz5eRQ1Y8WefHJbLF2uOx4OCeIbFVpCQoyGhffmvjz6pzV+X1nKF26X7fSBE7UYDz6rCT5PkA8GKFoF5jQABZ/lIuBwJ11VHZhWb+CkjokA0yW6zM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769516546; c=relaxed/simple;
	bh=+ilUKbu2ArLEGVUyAuSkij7jhAzxKx/xV6YfmxWnTAs=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=trzbQovDWvyPGXy5hBZS3QVGtnUiigA77q5VyETIIMp6E6fj/+XcsXtKV29ipMZkOIK+JgEJgTOu8ONEQyUsLQB9p7+CV4bmokVnh14f9kf1vrEyfYKSj6EHQPCZI7bHwSIReGpturAUdkkeIJMZxSM8VjrAAu9L+hZSjDtioG0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=V53ynsOn; arc=none smtp.client-ip=209.85.221.44
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-wr1-f44.google.com with SMTP id ffacd0b85a97d-432d2c96215so4883196f8f.3
        for <devicetree@vger.kernel.org>; Tue, 27 Jan 2026 04:22:24 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1769516543; x=1770121343; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=0MBhjNvO9uP33cA1otmnLsn1T/YWSSVCvR/7qKxO/MI=;
        b=V53ynsOncXMPjhUQR2KH4KhCdbnxS+sBdxtBksc3Sue2ABFZuz7X2vIH+axa4HnK9Q
         bz/EjNQec+LjYGx6Ej9Fe50Gqz42ZiCEp9BYESC6LzUI16ExM06bTaYjiHKO9SN7SlPf
         dCkeW3Bq1ZUnWUsRpF4Ph+mLxDFgKlbuf17A+MTnPgSgSj3FMTpJLS8vwkTOrn/47BQ1
         YRaqNqSTs9WrtW6Nx1NSiBq2SD6vmYo0IqygEF9mVdei7LRqplW9EVlakOKFyPq08g5P
         I1m1hvpyS8ZjYFiedLdu6uXZDV2bgERKvmTNhA23+Ws4y3AUJLUN0f04o/sLLr8aAxGR
         xP0w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1769516543; x=1770121343;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=0MBhjNvO9uP33cA1otmnLsn1T/YWSSVCvR/7qKxO/MI=;
        b=H/+x/wWsD/R/vWqyVFOAvB2f2Sg12C4fk8Oyogj8z5J7OHL9gUQ1+l/r9xiixaBNLK
         MeUR8RLISwKQzQ5POMErR+Drad4T8cfTgDSL4ECNeazjTGuYWeltZ2UMklJsFdYJ89zO
         rOD7YArU7Krf/91H7wvaGF30kHGkOB7EhEzqaLgyj37Bv/GPD269vsAzBY4z2XVvz9dg
         Z5rItaPkvLfVAlZP3LRCX80I64BhREa507TZ2i99I/39i49SmnI3a5Y3/OV2HoQpp9jQ
         5IXC3tSJuTZ6rXSataE5g2roUTBEnKhdQCzNXyX8dMQpJERFG2DsSzOEMLywKOgQhysj
         0w+Q==
X-Forwarded-Encrypted: i=1; AJvYcCVRKWkxve84wVMa+NrkdTOtwv/74gc0JgwiWD95I8Aw9Fp4iQg0pTaIq0LCSj3HzUsPLhPmRqAtW3YQ@vger.kernel.org
X-Gm-Message-State: AOJu0Yy6VNz1Syfy46LvkjlwqKKWwI9P4zA1A3etKpDD0ImGxCWkfQ8I
	MQHGG1uks3UZgo8+wAu/vlun7KwtWlZqDgvL6SU7ZvxOvYX92LEYcPLe
X-Gm-Gg: AZuq6aLLGYejgKoeI+AKP94r8fAGbyQ5yV+5FLCsGGBbc0DJ+O9GpCOx4N888rTQK2e
	8cN+3TW573PmNhlVE0229DSBRR49LWwxMIWs+r9McZMQ/67STuZRPI452TSUy2D9MdToAKW1qIx
	aXrRgJL44WMG55p0LpUtmk4dJkeKBtUaKTUJNA2FHF16It6ELNym+3Tqjifd/ac6GDNFzdrk/Um
	IHqeGZ+TZ6K6Psopx3hlOnYhGPt2m07uvNT+FMrlGLEQtIBWYXgobEiM1vmQJZsEuMEzdXRuJJT
	9H1WK4NC48l+pl0+anKVBnPD/jeqtzGIvWJDhfg7nqx5fy3CgjJ59G7ntQZRC80Wi5eonstASSP
	bUeVwvwTxXbvsjbsVwl79FNK0sjO8BeZRF9q8FC1/uy8j602MRDYUkzLyn2ZIy7QmkeE12k93OF
	hz4sdg+4Wa/xXSdSOlTTXp8ibEh/J7R0gpc/EDxa9wIqU=
X-Received: by 2002:a05:6000:178a:b0:432:84ef:7160 with SMTP id ffacd0b85a97d-435dd022574mr2376326f8f.12.1769516542309;
        Tue, 27 Jan 2026 04:22:22 -0800 (PST)
Received: from [10.25.216.67] ([128.77.115.158])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-435b1e71503sm41885074f8f.25.2026.01.27.04.22.20
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 27 Jan 2026 04:22:21 -0800 (PST)
Message-ID: <c4f4a6cf-8511-44ac-8648-d8c4093e24d0@gmail.com>
Date: Tue, 27 Jan 2026 04:22:19 -0800
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 2/2] arm64: dts: imx95-15x15-frdm: support AONMIX MQS
To: Frank Li <Frank.li@nxp.com>
Cc: Liam Girdwood <lgirdwood@gmail.com>, Mark Brown <broonie@kernel.org>,
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
 Conor Dooley <conor+dt@kernel.org>, Shawn Guo <shawnguo@kernel.org>,
 Sascha Hauer <s.hauer@pengutronix.de>, Fabio Estevam <festevam@gmail.com>,
 Shengjiu Wang <shengjiu.wang@nxp.com>, Chancel Liu <chancel.liu@nxp.com>,
 linux-sound@vger.kernel.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, imx@lists.linux.dev,
 linux-arm-kernel@lists.infradead.org,
 Pengutronix Kernel Team <kernel@pengutronix.de>
References: <20260126145537.2301-1-laurentiumihalcea111@gmail.com>
 <20260126145537.2301-3-laurentiumihalcea111@gmail.com>
 <aXeY44T+5rvCqBs8@lizhi-Precision-Tower-5810>
Content-Language: en-US
From: Laurentiu Mihalcea <laurentiumihalcea111@gmail.com>
In-Reply-To: <aXeY44T+5rvCqBs8@lizhi-Precision-Tower-5810>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20230601];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c04:e001:36c::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-259876-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FREEMAIL_CC(0.00)[gmail.com,kernel.org,pengutronix.de,nxp.com,vger.kernel.org,lists.linux.dev,lists.infradead.org];
	FREEMAIL_FROM(0.00)[gmail.com];
	RCPT_COUNT_TWELVE(0.00)[17];
	FROM_HAS_DN(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c04::/32, country:SG];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[laurentiumihalcea111@gmail.com,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[gmail.com:+];
	NEURAL_HAM(-0.00)[-1.000];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MID_RHS_MATCH_FROM(0.00)[];
	TO_DN_SOME(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[tor.lore.kernel.org:helo,tor.lore.kernel.org:rdns]
X-Rspamd-Queue-Id: 2D4C09443E
X-Rspamd-Action: no action


On 1/26/2026 8:40 AM, Frank Li wrote:
> On Mon, Jan 26, 2026 at 06:55:37AM -0800, Laurentiu Mihalcea wrote:
>> From: Laurentiu Mihalcea <laurentiu.mihalcea@nxp.com>
>>
>> Add support for AONMIX MQS (i.e. MQS1).
>>
>> Signed-off-by: Laurentiu Mihalcea <laurentiu.mihalcea@nxp.com>
>> ---
>>  .../boot/dts/freescale/imx95-15x15-frdm.dts   | 73 +++++++++++++++++++
>>  arch/arm64/boot/dts/freescale/imx95.dtsi      |  5 ++
> Chip's dtsi and board dts should be two patches.
>
> Frank


What's the rationale for this? Is this "rule" documented anywhere?

IMO, the DTSI-related changes are small enough that it doesn't justify

the split into different patches. The split would've made more sense

if we were touching more than 1 board.


