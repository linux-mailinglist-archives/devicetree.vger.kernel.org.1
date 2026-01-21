Return-Path: <devicetree+bounces-258053-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id cMrfA6gWcWmodQAAu9opvQ
	(envelope-from <devicetree+bounces-258053-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 21 Jan 2026 19:10:48 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from dfw.mirrors.kernel.org (dfw.mirrors.kernel.org [IPv6:2605:f480:58:1:0:1994:3:14])
	by mail.lfdr.de (Postfix) with ESMTPS id 96A985B11E
	for <lists+devicetree@lfdr.de>; Wed, 21 Jan 2026 19:10:47 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.mirrors.kernel.org (Postfix) with ESMTPS id CF5C2B44F6A
	for <lists+devicetree@lfdr.de>; Wed, 21 Jan 2026 16:55:04 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A51113242D6;
	Wed, 21 Jan 2026 16:45:14 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="s7RzB/h2"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f53.google.com (mail-wm1-f53.google.com [209.85.128.53])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A13D42BCF4C
	for <devicetree@vger.kernel.org>; Wed, 21 Jan 2026 16:45:12 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.53
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769013914; cv=none; b=MOXWMgaZ5HiavaDT+WsECp4nlNHuzOtIFq//seREO4/EvWhjlrX2Ot7/zHpCPMyWTT5lyNmRuJ0pGzah1eZYP0g2nLj3ZFMazKjl7ef/x5Cy1qOYPUW1IqE4vSKB4feB7P86vuLolzDRYFJ/VVV6Sa17LHwl0xkYbn5kKllNe4Y=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769013914; c=relaxed/simple;
	bh=9hrLc4UwNhfqn+oMHnlIx44y/O3lNBfVh7t3NiY8Mms=;
	h=From:To:Cc:In-Reply-To:References:Subject:Message-Id:Date:
	 MIME-Version:Content-Type; b=Be4wAfybJMiGeHR7qSao7nVYBumOyU8F1q6LRlPZkB3DAsEzQZlSkcYC9CDViGu5C4qQ9dSm+FI6645v9gY8uYwbNqwamg27pbhbIxzvyUNPRt1YvenV4/g7yYeF7oXoJo8Wdb0zjijtALmsKHKzwrApysBs29eytPnrHKbLugw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=s7RzB/h2; arc=none smtp.client-ip=209.85.128.53
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wm1-f53.google.com with SMTP id 5b1f17b1804b1-47ee4539adfso410245e9.3
        for <devicetree@vger.kernel.org>; Wed, 21 Jan 2026 08:45:12 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1769013911; x=1769618711; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:date:message-id:subject
         :references:in-reply-to:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=MrVrJ2R0M9gIk1FFgofj0nCEI69CS6cLVCdJv2vwzhw=;
        b=s7RzB/h2bkDXqwf+9qr4FfosisOgG51NuffJZL+JON2/RVLpFDHdkpD/YWhsj7USDu
         jb671QCVpHs1LIQMXBaOVGqlTuXKvOOFQU3JopUPLIqDIYCVZIUZnYq+zwNEBPBafT9A
         s9Mi0HRJ5iuau/57GbBEgxks/CUQwhCcULxfeBk2OvvHsGwzlzrVHWYrjRa+qrw8wsrc
         LnwlKr+Esjdg/UaPnV4Ke0IvQCs5rtbNs7+UgPC2KWBzU5P4gQolbDjQqf9Q0ZEUJ3Ee
         rfhdVOGpf6VXtnN0P5M3Kgtpecrp26cBF1VN71WjjzhMqAqQuw2W1oUt00bK/qlszC00
         skrw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1769013911; x=1769618711;
        h=content-transfer-encoding:mime-version:date:message-id:subject
         :references:in-reply-to:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=MrVrJ2R0M9gIk1FFgofj0nCEI69CS6cLVCdJv2vwzhw=;
        b=uH2+jD7/m7gWTUxyY9gaIdoQLVadl1cHGEOv52zdYgQDPINbonbPQfrWawiNCwgtRn
         p7W9bHANm6efCNseom239eNVHpdSK090AWhHpFJj+gmgBtpsEIdR2ReoowmotLKojqc2
         5puQwQotMEmdQj8yRRVnLJQ0THFfuh+hvx/bzL/WYcfxaxgvxFuRpwtEIqwhtHQPY8o3
         p2sjDN1HJvW9LaDVSz5JDIQjV4ulFsD0UB3EUG4tch4PitjXTNi89CSs1zNhJ+YWYV+Y
         MyHFSXdbRgy9ecqULhov0oZLIcFcNg+aQHXlpX+GJMGp7czByP1C7U7Joak6pffE5caU
         fR3g==
X-Forwarded-Encrypted: i=1; AJvYcCXA2+xV4MTCqaDlX757er7zZf1H54oANyabK/+3Y1L9sabwWXdcKhhIai/jAl0K1Ropm/8KeDF0jlzU@vger.kernel.org
X-Gm-Message-State: AOJu0YwtrAyGgTiRijQGiGcEJcV3oFjPv/9TnvueZnWYTuqFG+f9lWQ3
	b6hxnninZe6E2OAhtK8TJbhQbtodvzGxqFb5LMdCkV1xR1sYDarzOwueW+k3tbZkTVA=
X-Gm-Gg: AZuq6aLd//Pu3RuMM/8JUaQr0nBr9Y19PKO5jh3qlirual5gFp1EK8bKfM7gtBoyLuN
	ZMASFMBy+CKEPmhYbpU72AizIufdcn+GUhLHfc7ScJaBJdUDV8mLMw/GW/BK3YxMl0JPmzxfrMO
	Dx7wXr5jfUfuh0cB4QoKGftzGQSplgd0yJGKxI9CsnTSDmRdY6XHvFUC7JS3vtsJD5uKDGFq3jW
	W860kzEK0UoJi9f/bXAq3MLZ8QdTNzER1WrBmPGnGMup3KmbojS9TtrP5yJTOWlId30OQkNa+4/
	5HGPnnVECNpPyCIR1YI1IRFcE+02Ky/P0bGX4yTEbklRleLj5RA6f1F8OxaXiGgtRvarfOYrINS
	NvuMvZ19QbEjmrHoGeOgdZspN/7lYuSZ3Z2U9x2KQmaC7ESpmggj5dI8C5aQNu/pU3j4weJNuMZ
	3bM+jLZUmpZCBA4B/SXTryYYnuec5kQig=
X-Received: by 2002:a05:600c:3b17:b0:477:54cd:200e with SMTP id 5b1f17b1804b1-48040a258d6mr85202485e9.1.1769013910648;
        Wed, 21 Jan 2026 08:45:10 -0800 (PST)
Received: from arrakeen.starnux.net ([2a01:e0a:3d9:2080:8261:5fff:fe11:bdda])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-480470401cbsm1211415e9.4.2026.01.21.08.45.09
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 21 Jan 2026 08:45:10 -0800 (PST)
From: Neil Armstrong <neil.armstrong@linaro.org>
To: khilman@baylibre.com, jbrunet@baylibre.com, 
 martin.blumenstingl@googlemail.com, devicetree@vger.kernel.org, 
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
 linux-amlogic@lists.infradead.org, Nick Xie <nick@khadas.com>
Cc: krzk+dt@kernel.org, robh@kernel.org, conor+dt@kernel.org, 
 xieqinick@gmail.com
In-Reply-To: <20260121014725.122722-1-nick@khadas.com>
References: <20260121014725.122722-1-nick@khadas.com>
Subject: Re: [PATCH v2] arm64: dts: amlogic: meson-s4-s905y4-khadas-vim1s:
 enable SDIO interface
Message-Id: <176901390954.10662.8672885431997370730.b4-ty@linaro.org>
Date: Wed, 21 Jan 2026 17:45:09 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.14.3
X-Spamd-Result: default: False [-1.96 / 15.00];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW_WITH_FAILURES(-0.50)[];
	R_DKIM_ALLOW(-0.20)[linaro.org:s=google];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FREEMAIL_CC(0.00)[kernel.org,gmail.com];
	FREEMAIL_TO(0.00)[baylibre.com,googlemail.com,vger.kernel.org,lists.infradead.org,khadas.com];
	RCPT_COUNT_TWELVE(0.00)[12];
	TAGGED_FROM(0.00)[bounces-258053-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	DMARC_POLICY_ALLOW(0.00)[linaro.org,none];
	DKIM_TRACE(0.00)[linaro.org:+];
	FROM_HAS_DN(0.00)[];
	TO_DN_SOME(0.00)[];
	R_SPF_SOFTFAIL(0.00)[~all:c];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[neil.armstrong@linaro.org,devicetree@vger.kernel.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MID_RHS_MATCH_FROM(0.00)[];
	ASN(0.00)[asn:7979, ipnet:2605:f480::/32, country:US];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[dfw.mirrors.kernel.org:rdns,dfw.mirrors.kernel.org:helo,linaro.org:mid,linaro.org:dkim]
X-Rspamd-Queue-Id: 96A985B11E
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

Hi,

On Wed, 21 Jan 2026 09:47:25 +0800, Nick Xie wrote:
> Enable the SDIO controller interface connected to the on-board
> AP6256 WiFi/BT module.
> 
> 

Thanks, Applied to https://git.kernel.org/pub/scm/linux/kernel/git/amlogic/linux.git (v6.20/arm64-dt)

[1/1] arm64: dts: amlogic: meson-s4-s905y4-khadas-vim1s: enable SDIO interface
      https://git.kernel.org/amlogic/c/854583f9992671411bad28bd8a3867afba7cce77

These changes has been applied on the intermediate git tree [1].

The v6.20/arm64-dt branch will then be sent via a formal Pull Request to the Linux SoC maintainers
for inclusion in their intermediate git branches in order to be sent to Linus during
the next merge window, or sooner if it's a set of fixes.

In the cases of fixes, those will be merged in the current release candidate
kernel and as soon they appear on the Linux master branch they will be
backported to the previous Stable and Long-Stable kernels [2].

The intermediate git branches are merged daily in the linux-next tree [3],
people are encouraged testing these pre-release kernels and report issues on the
relevant mailing-lists.

If problems are discovered on those changes, please submit a signed-off-by revert
patch followed by a corrective changeset.

[1] https://git.kernel.org/pub/scm/linux/kernel/git/amlogic/linux.git
[2] https://git.kernel.org/pub/scm/linux/kernel/git/stable/linux.git
[3] https://git.kernel.org/pub/scm/linux/kernel/git/next/linux-next.git

-- 
Neil


