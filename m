Return-Path: <devicetree+bounces-266731-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id UIT5NkWAl2kOzQIAu9opvQ
	(envelope-from <devicetree+bounces-266731-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Thu, 19 Feb 2026 22:27:33 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [172.105.105.114])
	by mail.lfdr.de (Postfix) with ESMTPS id 56171162CA2
	for <lists+devicetree@lfdr.de>; Thu, 19 Feb 2026 22:27:33 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 49E663015885
	for <lists+devicetree@lfdr.de>; Thu, 19 Feb 2026 21:27:31 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 6BA1532938E;
	Thu, 19 Feb 2026 21:27:30 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b="GgpKtR6a"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-oa1-f47.google.com (mail-oa1-f47.google.com [209.85.160.47])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 960D8329365
	for <devicetree@vger.kernel.org>; Thu, 19 Feb 2026 21:27:27 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.160.47
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771536450; cv=none; b=kmL+ZtyTItyJ0b8DlYhzQTzn+Aztqm42ed5/iLaYF+5jWqlycq8cb0NZANPIo3QjNTf96hE1eFBNszRLBwqDcM+b0dssGwctP8kINBG5ns8xj1t1TlOwlLuUizefQbMehHPJ/i8zuxVZJjAh7sJXodbw2UfkyN5MKVcvDCt6lDg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771536450; c=relaxed/simple;
	bh=uAGBrIf0G4PtksC5eMQdKnqhc6vXfYYkalF3B3xNnBA=;
	h=Message-ID:Date:MIME-Version:Subject:From:To:Cc:References:
	 In-Reply-To:Content-Type; b=nP4cjYKDBEiJkHpbp87o8EXPamaJdboLnWRxVNNnqchBWH/nZW339l8CYXEqH+kqgNEG/WPJjbjDNUN36xFseby/FaygaML7DhAQVvxovDsW0z2CMS9bFenHUXcqeimQxY7cvRwJ5U5RxCcm2kkJ7cR+eUWqmsXLNEiyZexWWDc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com; spf=pass smtp.mailfrom=baylibre.com; dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b=GgpKtR6a; arc=none smtp.client-ip=209.85.160.47
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=baylibre.com
Received: by mail-oa1-f47.google.com with SMTP id 586e51a60fabf-404254ffe8aso908926fac.0
        for <devicetree@vger.kernel.org>; Thu, 19 Feb 2026 13:27:27 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20230601.gappssmtp.com; s=20230601; t=1771536446; x=1772141246; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:content-language:references
         :cc:to:from:subject:user-agent:mime-version:date:message-id:from:to
         :cc:subject:date:message-id:reply-to;
        bh=UA1VERvz5151jt2KdPat2DgK+V02UUk6l4sZ04x/A1s=;
        b=GgpKtR6aGP7idiUYNt2cYM6FhXS49LEVdgkg+d5gPQOk6ooxYU+JrN9UMretVowqUR
         Jj+AVBu3zTavQ4UQKfWJCDTfwP3ECznoPWhty2152bdA2EgJ8PBJgRV9eiB8t+ue/lW3
         myYZrV+MGB62O5uJEK/QLBYE/9WthXH/YePRs6hQd2/52x71u70l5bOu7TXwwjGRb97o
         4Bv7xAR/DH9WPmVh4GJxmtBSi0x/6YCwdmszVL/bsQUPVUjM9hWkQ5ddxDR8wy6/nCv+
         XHUm17PE9aQekZgTDdoh1Tvb6Lr60oKO3eWHoP3426toYsYSuO0DtD5xvIaSb8kfCFYt
         /Zog==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1771536446; x=1772141246;
        h=content-transfer-encoding:in-reply-to:content-language:references
         :cc:to:from:subject:user-agent:mime-version:date:message-id:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=UA1VERvz5151jt2KdPat2DgK+V02UUk6l4sZ04x/A1s=;
        b=N/FJoiSa8bV663YuveXL1hu7P1wGOcsR/ULJmxAx8UUMAheNpqQbXtaUWWyJBQtV37
         IXwL2sZACygkGPdhcETqfpvgBs8muYW7PDmltTOuztYcVC+zEzT1Rj3JoL5HEZCPXqIV
         k1/oCKKEd9o1CwBx3c0Of67idHmlSoYQlfqN90kTnlP6XZ495uJ3rpmDQ0mdqGbIq6Jb
         cVzL/8b9LD59Z/hImveS8b8r2kQuQTWdXoIik8lPAr1lRWNZIn9GKqNLH7mTI2nMhJ8c
         FjmAPYwO2oic8c9C7TrL7faynnztSLe6TNIXv612ReFUrS/UfsUrgTS83FYCtiwum7qk
         kpBQ==
X-Forwarded-Encrypted: i=1; AJvYcCX678ZpG4rwUBv2Ov/Fyubvk+KAuQTvvhObnuSo0QX5EyeLXpiwRuIrsZoAhHqKUo+Di3LVrGruy6BK@vger.kernel.org
X-Gm-Message-State: AOJu0YxmPiV4AK3s1qByNDENH6REEd8C4PqdvYCpggBI7lnZe5IfSFmn
	gg+zW9LggGjEkzXjwRRxZmq6J8LMElqee4o9boH79ERMG/6dFVORVmzs8LuEJFVkr4c=
X-Gm-Gg: AZuq6aLfVsUNx/uEp6jZl6GwTZge5ZcvHNDgKbf5MgyfL3ndc4pWI+dgdTOYK/SR0PR
	kI2z56o1JbOA27TFvVr41S6W/VeUkOtvFqq8OiOiPbRp+SNVnPSkzIm39lgFJiahhtFs+uVSOUn
	qANZElXmHPgorJ1ZnI3hcEfguVdobHpcNIcd1LVEdSk+WLMKJKEuqD26BARDRjTwwGy1qg3HoKX
	1TxZAd7EQUvJ3TZtqvEEfEAqasUQLvON/d8f+LkyYJvHWKNbnysdkugby1XsVDH39BivSd90e7L
	he8NQ3vmoAm+C32aWg9DUjvtuNc94ijcw570pMCIB1qB4+RGFKRd5hTRaqRXp2JbNI/Kk6RmmY2
	8ce5uBbLuTu1yK8edXmMyLEbTKPpDiAPrFcGSxOkQuMurazTlBJ2PIZKdq3ZeC1kqZ0UrA3Q8wQ
	YsgNL/b8rxEZUR5rcBu/rjLSgSrIPkZEIvVahKL1fcNYFFa3z1nJR0k8L2AFIuJAQ2do+JWg==
X-Received: by 2002:a05:6870:326e:b0:404:1ec2:562c with SMTP id 586e51a60fabf-4154539ed1emr1793941fac.6.1771536446376;
        Thu, 19 Feb 2026 13:27:26 -0800 (PST)
Received: from ?IPV6:2600:8803:e7e4:500:d4c1:bce:26a1:c903? ([2600:8803:e7e4:500:d4c1:bce:26a1:c903])
        by smtp.gmail.com with ESMTPSA id 586e51a60fabf-40f062ee328sm18930333fac.4.2026.02.19.13.27.25
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 19 Feb 2026 13:27:25 -0800 (PST)
Message-ID: <5e6fbdcc-6a19-4d99-af5f-50ba8fa529bb@baylibre.com>
Date: Thu, 19 Feb 2026 15:27:24 -0600
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v5 05/18] clk: mediatek: Add MT8189 vlpckgen clock support
From: David Lechner <dlechner@baylibre.com>
To: "irving.ch.lin" <irving-ch.lin@mediatek.com>,
 Michael Turquette <mturquette@baylibre.com>, Stephen Boyd
 <sboyd@kernel.org>, Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley
 <conor+dt@kernel.org>, Matthias Brugger <matthias.bgg@gmail.com>,
 AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>,
 Richard Cochran <richardcochran@gmail.com>,
 Bartosz Golaszewski <brgl@kernel.org>, Chen-Yu Tsai <wenst@chromium.org>,
 Miles Chen <miles.chen@mediatek.com>
Cc: linux-clk@vger.kernel.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-mediatek@lists.infradead.org, netdev@vger.kernel.org,
 Project_Global_Chrome_Upstream_Group@mediatek.com,
 Qiqi Wang <qiqi.wang@mediatek.com>, sirius.wang@mediatek.com,
 vince-wl.liu@mediatek.com, jh.hsu@mediatek.com
References: <20260202062840.342707-1-irving-ch.lin@mediatek.com>
 <20260202062840.342707-6-irving-ch.lin@mediatek.com>
 <b7fd3dfe-c141-4164-80c2-ddc1f79374f8@lechnology.com>
Content-Language: en-US
In-Reply-To: <b7fd3dfe-c141-4164-80c2-ddc1f79374f8@lechnology.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.16 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	R_SPF_ALLOW(-0.20)[+ip4:172.105.105.114];
	R_DKIM_ALLOW(-0.20)[baylibre-com.20230601.gappssmtp.com:s=20230601];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-266731-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	FROM_HAS_DN(0.00)[];
	FREEMAIL_TO(0.00)[mediatek.com,baylibre.com,kernel.org,gmail.com,collabora.com,chromium.org];
	FORGED_SENDER_MAILLIST(0.00)[];
	DMARC_NA(0.00)[baylibre.com];
	RCPT_COUNT_TWELVE(0.00)[23];
	MIME_TRACE(0.00)[0:+];
	DKIM_TRACE(0.00)[baylibre-com.20230601.gappssmtp.com:+];
	ASN(0.00)[asn:63949, ipnet:172.105.96.0/20, country:SG];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[dlechner@baylibre.com,devicetree@vger.kernel.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-0.998];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[baylibre-com.20230601.gappssmtp.com:dkim,tor.lore.kernel.org:helo,tor.lore.kernel.org:rdns,baylibre.com:mid]
X-Rspamd-Queue-Id: 56171162CA2
X-Rspamd-Action: no action

On 2/19/26 2:44 PM, David Lechner wrote:
> On 2/2/26 12:28 AM, irving.ch.lin wrote:
>> From: Irving-CH Lin <irving-ch.lin@mediatek.com>
>>
>> Add support for the MT8189 vlpckgen clock controller, which provides
>> muxes and dividers for clock selection in vlp domain for other IP blocks.
>>
>> Signed-off-by: Irving-CH Lin <irving-ch.lin@mediatek.com>
>> ---
> 
> 
>> +static const char * const vlp_aud_adc_parents[] = {
>> +	"clk26m",
>> +	"vowpll",
>> +	"aud_adc_ext",
> 
> I could not find a matching clock name for "aud_adc_ext" in any
> of the other clock drivers. Which clock is this (i.e. what is the
> macro name in mediatek,mt8189-clk.h)?

I was able to solve this one. It is a fixed clock. It seems to be
missing from the devicetree, so I will comment there instead.

> 
>> +	"osc_d10"
>> +};
>> +


