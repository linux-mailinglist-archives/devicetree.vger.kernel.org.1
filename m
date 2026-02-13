Return-Path: <devicetree+bounces-265258-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id qAhfBO3EjmnCEgEAu9opvQ
	(envelope-from <devicetree+bounces-265258-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Fri, 13 Feb 2026 07:30:05 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [IPv6:2600:3c04:e001:36c::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 7D806133420
	for <lists+devicetree@lfdr.de>; Fri, 13 Feb 2026 07:30:04 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 49D5B300D905
	for <lists+devicetree@lfdr.de>; Fri, 13 Feb 2026 06:29:57 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 645FA26F291;
	Fri, 13 Feb 2026 06:29:56 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="TvV3d3Va"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lj1-f180.google.com (mail-lj1-f180.google.com [209.85.208.180])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 17F4D261B8A
	for <devicetree@vger.kernel.org>; Fri, 13 Feb 2026 06:29:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.180
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770964196; cv=none; b=WHEPgBJUxSOFhk9RMIepqV7ivskQhX/peMHsuTzgEo8xNbdKtUZZkNlnMeQ2/PzHoQ26BWsYCLGthNgOZwsJ/5dU7aswAhxXwoSLltcHNnV7PbqcKIT3yBlUSx4fek1J1Q5W4Nhdvc28fQQ2z9iG8oEfpyokLBAuSlD9O8pU+gU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770964196; c=relaxed/simple;
	bh=kCswgtylYBaH+vm/oPXmR7sifyk95YR7in+IPuGhek8=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=YTSeEkqDZC4zj7g3vncZS9s1ffC0DIQtJS1BnKVA4AI7s0HJXHRepr5PZDev13sFUn0wPMMs9ZMgc21ZwdIo/0+KnSSnVPTHtRpahQQ/wMF6Hc3g1fQMHY3Zr66zTth0CgzG3hb0WbRa0JgiwTfLJTJahsO6W6rPL6qxzyHIiAs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=TvV3d3Va; arc=none smtp.client-ip=209.85.208.180
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lj1-f180.google.com with SMTP id 38308e7fff4ca-38708d20d2eso689591fa.1
        for <devicetree@vger.kernel.org>; Thu, 12 Feb 2026 22:29:54 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1770964193; x=1771568993; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to:subject
         :user-agent:mime-version:date:message-id:from:to:cc:subject:date
         :message-id:reply-to;
        bh=OUbCeLqkSBbz9Qag85Qyx4nbeZ0oQ9o4jeNsX3hpN7E=;
        b=TvV3d3Va8K1iBsadKDQqIW603oHKx8o3Xuto8XmG4SPghONKlNfmUGxssGv15pFmlh
         f0Um43LcP8I2FfsUTbgckiZx9nyDPOWbG7jS3qUisOTpOL1Y+sIxPouZ7+xzF2YeeckY
         nycxvmGg8UNHNVMTMjZQpIETgFT0uZ+O4N8Jlf6j5uHeg4Vxl3hxhiYlq+DsbcXoVDad
         tOnWCFbYNs7IkbS1tWzHUWDaFsIcnedDoJdbesHm5tb5iAdvT/48kRyQJskIMD2oIveg
         GXSRJCyFbfaxt8r+k0912VwGZJ+CcFwnFkWFxtBNhG3MhdjKyZLll0CTgp7N+uo8gVqP
         lOIg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1770964193; x=1771568993;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to:subject
         :user-agent:mime-version:date:message-id:x-gm-gg:x-gm-message-state
         :from:to:cc:subject:date:message-id:reply-to;
        bh=OUbCeLqkSBbz9Qag85Qyx4nbeZ0oQ9o4jeNsX3hpN7E=;
        b=pqpwBwd+EAlZKTHSwvXApWpOBY/V2sguReM2/4DSqQRs0kX/75y+tKAF5nKW4yT9KM
         +KUMPs8OAwSGYqzITzmjQ+DZvPMeazhSlEx3nXKOBg/pvCEsBBEyQ+3pDwLqVC89WFJu
         YiIjQlFnuS8axZ5n+Jvg5ivLqMDi9IpNmv6F2SmpmlzaI35DohaLOOPeDC/TK108w97q
         JLkQdgXnE2PyrCIChYs8sUFcE7SGOuHCk9WlPkibxLJQVslYbDzr3SBB5/usz2SZLH9Z
         Y1BKsfTkdiKnjGDpK+QXikhRz2adAcoED1Y1aFSizsftka+BHX9kwUzBHhIYHNSeYjj6
         WGRg==
X-Forwarded-Encrypted: i=1; AJvYcCVCzjnFFgw0SmDDVtiHuH44QptFKfPcqu2VUBWHzPtcdD0ltJuy4/HMuARr1sG1WiLHNJiIwCiBkA+R@vger.kernel.org
X-Gm-Message-State: AOJu0YxhDLrD2txbsrUqhDGYKm6RMvwIWJSAKu0puaevDlDxrSnKFGGA
	mNk4ap9fE0YRtkT81T7DZ7JOwcT2NtX88mrIvQ2XHvon2Z0wS5eLwmgyVNA8GO87ens=
X-Gm-Gg: AZuq6aLEHhQk9JkIhLkGbJsJi9I7wkeShd2KjNNP+bozFppbrqQjqEozaVHDypSwQJQ
	j2X/lGpoFRo5ANxba/tA+NSTtYxfijhjPc2JxNpjw/xY0FP0NtPPRMq2E0xqavzfWwMWnKNwOPk
	Ipo5Ue5y2TKqKM0vbMvB0BPzPEP4PVkIgXSdnxLN3+hysru3P9Owz2SKSu0msNShawKLDLJ42ut
	q2NhWWQzQH2uPsVr9w4BPFWiPRh9DlYK7CScdC7FwLTDNLUHmwNV+Me2HR4jYkZmxlUfxjgDMBb
	GJfTdkAPEMOFzfQFWJfa3croJuYNNt4xvVlpvCh2t+a/poquOGcpyx+mZhUkttEy8jb6Hnzt0B6
	PrE8EyhUhaU80WbGFp1wVXRgBuLnLYIdKaOu56hoMkQ2g3JfN/dxxWPvv/Uuca4hIcAUvuk3KU5
	7VmbQ/b/6L7A+U2uMisGeY1iGh3Rb+BR+ZeSWfHAptd9MRthl68StbWTlIod1Fm7P1AnGI+4vzZ
	5UKAw==
X-Received: by 2002:a2e:be2b:0:b0:387:170:73ff with SMTP id 38308e7fff4ca-387ed8ce87emr2166921fa.4.1770964193194;
        Thu, 12 Feb 2026 22:29:53 -0800 (PST)
Received: from [192.168.1.100] (91-159-24-186.elisa-laajakaista.fi. [91.159.24.186])
        by smtp.gmail.com with ESMTPSA id 38308e7fff4ca-387068925a8sm11374891fa.8.2026.02.12.22.29.51
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 12 Feb 2026 22:29:51 -0800 (PST)
Message-ID: <e63b5a65-3c59-433f-a8cf-93bac14aead0@linaro.org>
Date: Fri, 13 Feb 2026 08:29:42 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v8 0/7] media: i2c: IMX355 for the Pixel 3a
To: Richard Acayan <mailingradian@gmail.com>,
 Mauro Carvalho Chehab <mchehab@kernel.org>, Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley
 <conor+dt@kernel.org>, Robert Foss <rfoss@kernel.org>,
 Todor Tomov <todor.too@gmail.com>,
 Bryan O'Donoghue <bryan.odonoghue@linaro.org>,
 Bjorn Andersson <andersson@kernel.org>,
 Konrad Dybcio <konradybcio@kernel.org>, Tianshu Qiu
 <tian.shu.qiu@intel.com>, Sakari Ailus <sakari.ailus@linux.intel.com>,
 linux-media@vger.kernel.org, devicetree@vger.kernel.org,
 linux-arm-msm@vger.kernel.org
Cc: Robert Mader <robert.mader@collabora.com>,
 David Heidelberg <david@ixit.cz>, phone-devel@vger.kernel.org
References: <20260210020207.10246-1-mailingradian@gmail.com>
 <aYvLppaYsNDDD4DX@rdacayan>
From: Vladimir Zapolskiy <vladimir.zapolskiy@linaro.org>
In-Reply-To: <aYvLppaYsNDDD4DX@rdacayan>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[linaro.org,none];
	R_DKIM_ALLOW(-0.20)[linaro.org:s=google];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c04:e001:36c::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-265258-lists,devicetree=lfdr.de];
	FREEMAIL_TO(0.00)[gmail.com,kernel.org,linaro.org,intel.com,linux.intel.com,vger.kernel.org];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[18];
	FROM_HAS_DN(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c04::/32, country:SG];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[vladimir.zapolskiy@linaro.org,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[linaro.org:+];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	TO_DN_SOME(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[tor.lore.kernel.org:helo,tor.lore.kernel.org:rdns,linaro.org:mid,linaro.org:dkim]
X-Rspamd-Queue-Id: 7D806133420
X-Rspamd-Action: no action

On 2/11/26 02:21, Richard Acayan wrote:
> On Mon, Feb 09, 2026 at 09:01:59PM -0500, Richard Acayan wrote:
>> This adds support for the IMX355 in devicetree and adds support for the
>> Pixel 3a front camera.
>>
>> Changes since v7 (https://lore.kernel.org/r/20260117040657.27043-1-mailingradian@gmail.com):
>> - restrict data-lanes to 4 (4/7)
> 
> Apparently the 4th patch has been blocked by Gmail.

To complete the series you can send it by

   git send-email --in-reply-to="<20260210020207.10246-1-mailingradian@gmail.com>" <snip> v8-0004-*

-- 
Best wishes,
Vladimir

