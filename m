Return-Path: <devicetree+bounces-69497-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 9166C8CFFFE
	for <lists+devicetree@lfdr.de>; Mon, 27 May 2024 14:26:48 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 1DCE62839EB
	for <lists+devicetree@lfdr.de>; Mon, 27 May 2024 12:26:47 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 3128915E5AD;
	Mon, 27 May 2024 12:26:43 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=suse.com header.i=@suse.com header.b="NQA7PTxb"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ed1-f45.google.com (mail-ed1-f45.google.com [209.85.208.45])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 329D315DBC7
	for <devicetree@vger.kernel.org>; Mon, 27 May 2024 12:26:40 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.45
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1716812803; cv=none; b=EIdoFhodHb+SNj+doavtztmRvZrxwx0sSkR+Q1qlvFoU+GEki+1MHTu9zBzNbSRlDkcy4dMXmye8TxtmTMeQFarxVAfILppDt7lVChvAVNq3W/GaR8hivBWK4WnsnY3t4v3OjbR0PJxZmCHihV/wBTNYdtYRNtCOweJdaMWssto=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1716812803; c=relaxed/simple;
	bh=uEBh5knVxjgMQ2FRyTCSQ4x+NhsByRN32pPubCK078Q=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=RjRMy4CM+pwmp9bhuRER910JMcF+gd1KTn//QT7mofmOzsWdiQFO3sqgq2vp+mwcOn5MnQG2rHaqbSKwj0/cCVGtbRVpjTUlRYpHLuPKFFmvzrxg55FnmLe++5bdhHzbUbDHmV+yHZRS/LXXw53Co1UvyBC0W5TZBdDj8hYxmug=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=suse.com; spf=pass smtp.mailfrom=suse.com; dkim=pass (2048-bit key) header.d=suse.com header.i=@suse.com header.b=NQA7PTxb; arc=none smtp.client-ip=209.85.208.45
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=suse.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=suse.com
Received: by mail-ed1-f45.google.com with SMTP id 4fb4d7f45d1cf-5788eaf5366so1999348a12.2
        for <devicetree@vger.kernel.org>; Mon, 27 May 2024 05:26:40 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=suse.com; s=google; t=1716812799; x=1717417599; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=+Z0jYksGWYDCzEC0W0rvVy6TJouZUOtG78WV9BnuANE=;
        b=NQA7PTxbCPG0ilvX5Jmqt9nVvq7Q9khn1iJbRYalCvF8/5AF3M0Vc7K5j2wDUY0Q5X
         bi4LLvY41IHuf1Fu5WQNOQKFlmlUHIrFucZS394h00CW8cZz6aEtwEQGBj2LBeJJXLIA
         zOCBJjXbVBcNzz+9QNqFkVv+b0Qmm0GuBuADFSnU2qxCRSxnTiZXUQ7GLTPFJG8c/j2F
         0tTc5qGV0SpG6KuB+eGCohUSIRDiphWhEjJto/z7A6iJ+ygJrBi78zNNF6UTqiQKdMKl
         bS75WclvfdTksam1E4TmvTcOIKlVJlZ9BspwboQNQ4BbvrF5Lx2IuHUZEVpbwl1subnV
         ZZSw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1716812799; x=1717417599;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=+Z0jYksGWYDCzEC0W0rvVy6TJouZUOtG78WV9BnuANE=;
        b=cOfpOyDsO0mBF2BCgY71p3FIjLSRixZbsPCqsB0MMzkX4LsYL+xXVpT4W9h7Y/zzVp
         VV1Ki7/+fECwfmkCmb2CfckqgyRwCPcJsdIuS+M0FvvZZug5f8t+lPcFwchdLXfPUmPI
         CEQz4zEpaXCH7lczOzyqjjegGLb5WLeGK/9HiLIs6cC+DAgc1uwJe47vHYTHvVanYJ0N
         PGloYJCuNBBEJsTHR36lcr8rO1xzk6EomOed5wDsC/du/tPbvEnMfb/W4CiJb45XHASd
         0Z07kGEMdQ8U+kPBkCm9gRxbl6UMDEOkV/gOdy4kgtzL8F18ear64SrcI/gHTgKglTtD
         jCHw==
X-Forwarded-Encrypted: i=1; AJvYcCXbHXwwv3OOnO9CpvzfAc3Qa7zlErtVUvN53hXLWWLbRQyfLXr8j9qghNSibBUDyci7Mk2sPQTxTwWb6Xue5GTkqhaq+COlDYDVoQ==
X-Gm-Message-State: AOJu0Yw0LDXB3pi+79y1kqJ5SshooGe9Q5SKXw+Z+re3KPPOY2DUIHd9
	Zg0aqJoVOcPUm91XUQsTTVpxDNjTBJXHyjofBHl9SktRptv9mTICCe3rhaQRIlc=
X-Google-Smtp-Source: AGHT+IGdiAI18N5SLWq542WfS9dm3HTYqjqz0CDg1sVYs7nLcvCMNTWyAiOq78S1awvR6RQ9LsxoIA==
X-Received: by 2002:a17:906:478c:b0:a5a:7a1:5d9c with SMTP id a640c23a62f3a-a6265146984mr646663766b.62.1716812799534;
        Mon, 27 May 2024 05:26:39 -0700 (PDT)
Received: from ?IPV6:2001:a61:139b:bf01:e8eb:4d8f:8770:df82? ([2001:a61:139b:bf01:e8eb:4d8f:8770:df82])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-a626c817bffsm488121266b.32.2024.05.27.05.26.38
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 27 May 2024 05:26:39 -0700 (PDT)
Message-ID: <ceb1f7b3-2787-4166-846f-2427b44b3e62@suse.com>
Date: Mon, 27 May 2024 14:26:36 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v3 4/6] power: supply: lenovo_yoga_c630_battery: add
 Lenovo C630 driver
To: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>,
 Sebastian Reichel <sre@kernel.org>, Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley
 <conor+dt@kernel.org>, Bjorn Andersson <andersson@kernel.org>,
 Hans de Goede <hdegoede@redhat.com>,
 =?UTF-8?Q?Ilpo_J=C3=A4rvinen?= <ilpo.jarvinen@linux.intel.com>,
 Bryan O'Donoghue <bryan.odonoghue@linaro.org>,
 Heikki Krogerus <heikki.krogerus@linux.intel.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Konrad Dybcio <konrad.dybcio@linaro.org>
Cc: linux-pm@vger.kernel.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, platform-driver-x86@vger.kernel.org,
 linux-usb@vger.kernel.org, linux-arm-msm@vger.kernel.org,
 Nikita Travkin <nikita@trvn.ru>
References: <20240527-yoga-ec-driver-v3-0-327a9851dad5@linaro.org>
 <20240527-yoga-ec-driver-v3-4-327a9851dad5@linaro.org>
Content-Language: en-US
From: Oliver Neukum <oneukum@suse.com>
In-Reply-To: <20240527-yoga-ec-driver-v3-4-327a9851dad5@linaro.org>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit

On 27.05.24 12:03, Dmitry Baryshkov wrote:

Hi,

> +struct yoga_c630_psy {
> +	struct yoga_c630_ec *ec;
> +	struct device *dev;
> +	struct device_node *of_node;
> +	struct notifier_block nb;
> +	struct mutex lock;
> +
> +	struct power_supply *adp_psy;
> +	struct power_supply *bat_psy;
> +
> +	unsigned long last_status_update;
> +
> +	bool adapter_online;
> +
> +	bool unit_mA;
> +
> +	unsigned int scale;

why do you store unit_mA and scale? This looks redundant and like a source
of confusion to me.

	Regards
		Oliver

