Return-Path: <devicetree+bounces-275613-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id iEdmM2zftGk1twAAu9opvQ
	(envelope-from <devicetree+bounces-275613-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Sat, 14 Mar 2026 05:09:16 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [IPv6:2600:3c04:e001:36c::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 92C7B28B87D
	for <lists+devicetree@lfdr.de>; Sat, 14 Mar 2026 05:09:16 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 1CD353027DB6
	for <lists+devicetree@lfdr.de>; Sat, 14 Mar 2026 04:09:15 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 7A3E3334C11;
	Sat, 14 Mar 2026 04:09:11 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="EIFypa/m"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f46.google.com (mail-wm1-f46.google.com [209.85.128.46])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 03F132DB7BD
	for <devicetree@vger.kernel.org>; Sat, 14 Mar 2026 04:09:09 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.46
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773461351; cv=none; b=Vo1pgzH5f3FypxroWCIfSujELdDtV5JhRZAtqNiQPEeBNRZwuFWGFfRczcHirjR4lLioblkJgXY5jGAx4aYriAi2o7OCJPlcDzbSXchX3Kzqsyhq0Fl34vmZz575Rm4N3SMQckseo5Nrxymtkxgvzy+kxdfpP72gqRgOTtjiiUY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773461351; c=relaxed/simple;
	bh=PJN4+9Mca0Th0PJtmzAQpFS+PGYcX6JdGcwqPdpN9ew=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=kYQQvoIenn0U5lOKTwHVY/whr3KvLT2eswbOkANmYOuDLYPuK95T1WNcI1qYj6rZZaVjIaQd8qACyZtQy0bILs2avQZErw0LQ5AHWadM7UZhydd+KnhIdtOXkNuPR749UtKfOfYogSAgu2Wbt5Nuox0c7ZMtTtUcFG3s26lX8R0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=EIFypa/m; arc=none smtp.client-ip=209.85.128.46
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wm1-f46.google.com with SMTP id 5b1f17b1804b1-4853c3c2fe7so16981695e9.0
        for <devicetree@vger.kernel.org>; Fri, 13 Mar 2026 21:09:09 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1773461348; x=1774066148; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:content-language:from
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=PJN4+9Mca0Th0PJtmzAQpFS+PGYcX6JdGcwqPdpN9ew=;
        b=EIFypa/mJu7qpKhQJN693xvhM0oQS7HOlBR48/cViFU2Q5PDhkGOUy+uJ/TyqIGFQJ
         iasDs8h3NJ1o0iCDWvemmqfVDRgDVSmuKQkVSHK65GLYbdVTGV6kzt7zbe8WthC6DORZ
         InnshsedSCIelSwTICuICDS22Zwhr+khW+4RxC4DhB+hPgnh4h6WW0+QFh+sAxHsJFw9
         bWSayoETx0FJmPzvAgPPmzE/J2p6rzOqaGpzKA4mCdWAT4+nUJ9bkZraYYX8lguvbAqn
         mplUiU3UuvQPfxmZyoaLB4ftbDc4n7/B+TZpECuvDjzQxnCkvGVlGl9Ylf6F/ezQfP2I
         /4MQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1773461348; x=1774066148;
        h=content-transfer-encoding:in-reply-to:content-language:from
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=PJN4+9Mca0Th0PJtmzAQpFS+PGYcX6JdGcwqPdpN9ew=;
        b=huhbl3UJVPIrQWsuzcL0a3Y/fTmMsAA8BC9x+tcxJUsKyfc5EHQSo/Z/gCUSvc2z7x
         ljcn08agTG3m+pWkK3wy03FMa8BgKQ1icBiYraJJQqgjC19N8QrKfhC6Zd5IKD68VXdT
         XHaewscBemKrG9dAMk0UeP09cDHH8CSEK+SQbmvpMQPFNM5YWc4hfAYNgE9vd4EtFCjm
         PqI7gVJbah/oaeKFs88OnIN6TIyDuN33fwlEnf6xFrA/nXLqIbitmtoI78FGcGoUn4u/
         LSxErghSO+O55FD/tpZWEoBNXphl6vGK5nkem7mcAp6SbTXc+qWpwPzFvFQHZRSgsZTS
         AbCA==
X-Forwarded-Encrypted: i=1; AJvYcCUKIca5VOFxaYo1MJhZrG9b8BbaFKTvGxd3Adp2NNwRcxKn/TyAujhcWqp5HqvJWeXE2QqTEi3S2Dfn@vger.kernel.org
X-Gm-Message-State: AOJu0Yy68sfVhEoCsmtkyTO6ADaWatQGIO1zrVitKEKFQkPNcMDAyigt
	Zp9qngh2PUfPOxikJ1piBpE6Jr6aR/1dXcBKA+qSGvdT2WQhdeenXjKx72m01vgkZ70=
X-Gm-Gg: ATEYQzxlo4J45t4Ke+cqtMNNpBXrJWdHnGxo0+oICrVy9rLYUqVszHTe6d0V+yjmMN/
	TQpWmrEWmSlPkY3h6+MeVPoXBgDEesYpzXWKFTGbgRx0scYpuYWM/k64hDsmJf6LTk2ivkBO+4z
	FyvG7jNDTJJsPa/hBEpPvODzhS/X2pmg2QqS9zESjBBg+pESmO6ET5ZENUc7Pmo/zX3VpqbCYdc
	Ut020CAWqGyU9gL+MnzfAt2T69165udrOv/VerXGRk6pA3SMhciXQ/b3XzKvqeug9Q1jU/KW/Xx
	5kijSVCFwyq5cGV7d9KpC/wqjXP1XbObZ5GCE4vpO8WsXK9b2gdHG24EFrnw7R6s7879pJXDCO5
	4vIGwWdsgPBw2MtYkOxMmtsfTeAVoNTxxll2/6eU1C3rg2ms7fJDapNwQA0bNRl+mC60lWKlSyj
	WOb0AXsI9ymxPV52s0YaWHwyJM+FJ3gejbPj4=
X-Received: by 2002:a05:600d:6451:10b0:485:39b2:a47c with SMTP id 5b1f17b1804b1-48556705319mr65207605e9.25.1773461348314;
        Fri, 13 Mar 2026 21:09:08 -0700 (PDT)
Received: from [192.168.0.101] ([109.76.226.20])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-439fe19ac34sm23085560f8f.3.2026.03.13.21.09.07
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 13 Mar 2026 21:09:07 -0700 (PDT)
Message-ID: <ca7d675d-139d-4fbd-b57e-5b233a0e2922@linaro.org>
Date: Sat, 14 Mar 2026 04:09:06 +0000
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v4 0/5] Add driver for EC found on Qualcomm reference
 devices
To: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
Cc: Anvesh Jain P <anvesh.p@oss.qualcomm.com>,
 Sibi Sankar <sibi.sankar@oss.qualcomm.com>, Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley
 <conor+dt@kernel.org>, Hans de Goede <hansg@kernel.org>,
 =?UTF-8?Q?Ilpo_J=C3=A4rvinen?= <ilpo.jarvinen@linux.intel.com>,
 Bjorn Andersson <andersson@kernel.org>,
 Konrad Dybcio <konradybcio@kernel.org>, linux-arm-msm@vger.kernel.org,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 platform-driver-x86@vger.kernel.org,
 Maya Matuszczyk <maccraft123mc@gmail.com>
References: <20260313-v04-add-driver-for-ec-v4-0-ca9d0efd62aa@oss.qualcomm.com>
 <132116be-2964-4b98-be2b-1baae5bfb58e@linaro.org>
 <19e8837b-d711-4d0e-ba9c-e9b2c8330969@oss.qualcomm.com>
 <aabf9bfa-aa90-411c-b9f6-706f963a5ab0@linaro.org>
 <azoaku7s3lxgcccc2rrp2bljbvqeitax2bl47k7eemy6uhcr2g@kveqod2tstgk>
From: Bryan O'Donoghue <bryan.odonoghue@linaro.org>
Content-Language: en-US
In-Reply-To: <azoaku7s3lxgcccc2rrp2bljbvqeitax2bl47k7eemy6uhcr2g@kveqod2tstgk>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[linaro.org,none];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c04:e001:36c::/64:c];
	R_DKIM_ALLOW(-0.20)[linaro.org:s=google];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FREEMAIL_CC(0.00)[oss.qualcomm.com,kernel.org,linux.intel.com,vger.kernel.org,gmail.com];
	TAGGED_FROM(0.00)[bounces-275613-lists,devicetree=lfdr.de];
	FROM_HAS_DN(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[15];
	MIME_TRACE(0.00)[0:+];
	DKIM_TRACE(0.00)[linaro.org:+];
	ASN(0.00)[asn:63949, ipnet:2600:3c04::/32, country:SG];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[bryan.odonoghue@linaro.org,devicetree@vger.kernel.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[linaro.org:dkim,linaro.org:mid,tor.lore.kernel.org:helo,tor.lore.kernel.org:rdns]
X-Rspamd-Queue-Id: 92C7B28B87D
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

On 13/03/2026 17:17, Dmitry Baryshkov wrote:
>> Fan Count == 0 || Thermistor == 0 => error and probe() fail.
> WHy? EC is still there. QUite useless though.

You want to register when zero fans are found, zero thermistors... ?

That's a bit fruity.

---
bod

