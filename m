Return-Path: <devicetree+bounces-269338-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id eJaaLvy8oWmswAQAu9opvQ
	(envelope-from <devicetree+bounces-269338-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Fri, 27 Feb 2026 16:49:16 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [IPv6:2600:3c09:e001:a7::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 5EE271BA446
	for <lists+devicetree@lfdr.de>; Fri, 27 Feb 2026 16:49:16 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id 901483087D51
	for <lists+devicetree@lfdr.de>; Fri, 27 Feb 2026 15:42:25 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id CAEF743D51A;
	Fri, 27 Feb 2026 15:42:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="o4zSXWb5"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f53.google.com (mail-wm1-f53.google.com [209.85.128.53])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4803C40FDB0
	for <devicetree@vger.kernel.org>; Fri, 27 Feb 2026 15:42:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.53
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772206943; cv=none; b=PhsTG1Y56vVzGRK9pVvcR+m6R7pl4pjTSgzQY4zP/GUGfX1Bmo9NUP1NASsGAzwOW+zWkjQGB35xtxmIotSMi9/mIbz3ZDUzS7MdUQR+UCOh5vvCG91uU5AyJ5AiCAeDUsvfHuWqfuHhMhqIdFURLXCVch/OVMGcQOAuOnBrLN0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772206943; c=relaxed/simple;
	bh=xHYW3p+5GVfDn8x6oFMyWCK6CrLKRkNsDbg87Yl2z8k=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=aIKrzu2CgJW4MIzvkum40b2LXRRk8l5Y4La3daSh5NerDRdAOyO2ylpxKhOvEflEhKFbGikRcGBdIpYAL0sQUcpimXRIuzUpaHlVHv48ncrPQMHblkkh11KOqGcsdA2sw4SfZtaoLOLkMmgWlDILFrZX9lNWdtvqaV0O5Y5IlVw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=o4zSXWb5; arc=none smtp.client-ip=209.85.128.53
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wm1-f53.google.com with SMTP id 5b1f17b1804b1-4836f363ad2so25320985e9.1
        for <devicetree@vger.kernel.org>; Fri, 27 Feb 2026 07:42:22 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1772206941; x=1772811741; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:content-language:from
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=9wzqme1k+Wy+/3yspGSINYIH3f7UH5wA3CsIMcq2UIg=;
        b=o4zSXWb5oeEIvPb4mrMDF6IKH/xoKT74sKzJM0PTHy2wGFz3fFja40UDgCZtZf+ZTP
         lRSI79c0+6QQcEquu8o+F05cYoM/tAVGEQhAvvTMWHKos/fAjoxX7E+c7NQRKiapMS2/
         dc0X1cNUof8Voy9tbrrarcEKxx3+icaDKouZi8INrbOs3Oo6GqXmBq5DbSAqgFiNv8UB
         hMxQdi2aF93KtCfssdyfLyyIcE3O2XoyXrBEyJZAVH1xOOfr5lKb4RGo/xQzR+zLZYz9
         NU2j7rvyqRL3GJAiyBWfisiCZI9EyxHVTCtiTkMy2VaZ67sVC7ASHuT5ct5Ci39GaJ+v
         088Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1772206941; x=1772811741;
        h=content-transfer-encoding:in-reply-to:content-language:from
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=9wzqme1k+Wy+/3yspGSINYIH3f7UH5wA3CsIMcq2UIg=;
        b=MyNVeXMY2j/PpbCXc4MtGGmqdrPGOLunp4e8i2Wbph3S//CoeqaGhZTbPpUzE+0OmS
         PFMVlyoRuBE8guaK2NXEckOtF3En4lfLvhTQMnhVXsa2spisQy/Uzh4lwwLEfYF/lMQo
         V91tJffgD6UfkavEFKo0sg8H7II8UHlbsSpcdh3PqD1DvcI2y2/CnKH1v9kxPVgGN+30
         6Kfczuiqyad8fsHZ98hYnNpdRywzDa2ttmU1ej+EPw0xKlpH/CUe0ISR1lztAXOO3eg7
         PAQc7qC/J15h8rG/W99Gw3l801SvvoMyAJf4kidCG2E3DFPcODxZZM+ZTV/85A3+8EFc
         4blg==
X-Forwarded-Encrypted: i=1; AJvYcCWAfRPRvb1bntSLsbZcd5RVYVHgZryimKiM5Uw/6pNlYj9o5Ou4L2LiLF7SryHLwJ/wMtvbp5itTSki@vger.kernel.org
X-Gm-Message-State: AOJu0YwHLhP74YpyxK7sQyY6pm9OKZRZ0wpPtLzDl3yeCzYPzkPJuqyO
	oGUCxLr9Gcsrsb6K3SRRg5kZBUOg4W5QnxiUkoxK8baTwUNFKCdrlMwENz2KljUGfSs=
X-Gm-Gg: ATEYQzyoDV+ELlouduO6qag3w6saV7wsXfrhCi9T4cN/5Arj/YwztVDlBH4E8PNZx4e
	R0LeEoc/gXis4SVtkDZrz4awrO6c4Zp3iSepUGhKq4VNwVKEVX6HfoAu0BHZsAnFPXU+yX2R7S8
	X28XJ4Zp4lO36HiwjsvpgC6h2IEmgVh+n9W/n2KHdhvC++hkreO/FpIR6ZTkVsMrTNNXgPePKHO
	lL9HjFVPZ50bemcjKyv6P8Z8B43ufN3tqWYC2WJt34wgSr3/h8zFfdQ2/hAPLne8GbtCY0+JikW
	ZuOVr0Ay4Kv+WK8C68nnPvjnNhlHfXG34tZ+F8EbX3eTxJV/FkFaTcX8tzPFCp3689Dpng+8B5V
	vRRgyvxdQNWHf2uyNAh0BAss9oZv8u+XMulm+8GnAf2RLRL54xzcvJO2OMW6XBbQ2XEC1oiEmIP
	9G57l8rmVcxDPvTfohjgMhKtiqc/zA8gjFLJdEkzfmJ10KJc+UBQXJFFBmXStyL/KZ
X-Received: by 2002:a05:600c:c4a6:b0:480:1d0b:2d32 with SMTP id 5b1f17b1804b1-483c9bc0344mr52202975e9.12.1772206940611;
        Fri, 27 Feb 2026 07:42:20 -0800 (PST)
Received: from [192.168.0.40] (188-141-3-146.dynamic.upc.ie. [188.141.3.146])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-483bfb77466sm83821705e9.5.2026.02.27.07.42.18
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 27 Feb 2026 07:42:20 -0800 (PST)
Message-ID: <c84f0e40-50d9-4c99-92dd-00bcfc554d83@linaro.org>
Date: Fri, 27 Feb 2026 15:42:17 +0000
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 0/7] media: iris: add support for kaanapali platform
To: Vikash Garodia <vikash.garodia@oss.qualcomm.com>,
 Dikshita Agarwal <dikshita.agarwal@oss.qualcomm.com>,
 Abhinav Kumar <abhinav.kumar@linux.dev>, Bryan O'Donoghue <bod@kernel.org>,
 Mauro Carvalho Chehab <mchehab@kernel.org>, Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley
 <conor+dt@kernel.org>, Saravana Kannan <saravanak@kernel.org>,
 Joerg Roedel <joro@8bytes.org>, Will Deacon <will@kernel.org>,
 Robin Murphy <robin.murphy@arm.com>,
 Stefan Schmidt <stefan.schmidt@linaro.org>,
 Hans Verkuil <hverkuil@kernel.org>, Krzysztof Kozlowski <krzk@kernel.org>,
 Vishnu Reddy <busanna.reddy@oss.qualcomm.com>,
 Hans Verkuil <hverkuil+cisco@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, linux-media@vger.kernel.org,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 iommu@lists.linux.dev
References: <20260227-kaanapali-iris-v2-0-850043ac3933@oss.qualcomm.com>
From: Bryan O'Donoghue <bryan.odonoghue@linaro.org>
Content-Language: en-US
In-Reply-To: <20260227-kaanapali-iris-v2-0-850043ac3933@oss.qualcomm.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[linaro.org,none];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c09:e001:a7::/64:c];
	R_DKIM_ALLOW(-0.20)[linaro.org:s=google];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	MIME_TRACE(0.00)[0:+];
	RCPT_COUNT_TWELVE(0.00)[22];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_FROM(0.00)[bounces-269338-lists,devicetree=lfdr.de];
	DKIM_TRACE(0.00)[linaro.org:+];
	RCVD_TLS_LAST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FROM_HAS_DN(0.00)[];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[bryan.odonoghue@linaro.org,devicetree@vger.kernel.org];
	ASN(0.00)[asn:63949, ipnet:2600:3c09::/32, country:SG];
	NEURAL_HAM(-0.00)[-1.000];
	TAGGED_RCPT(0.00)[devicetree,dt,cisco];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[linaro.org:mid,linaro.org:dkim,sto.lore.kernel.org:helo,sto.lore.kernel.org:rdns]
X-Rspamd-Queue-Id: 5EE271BA446
X-Rspamd-Action: no action

On 27/02/2026 14:11, Vikash Garodia wrote:
> Qualcomm kaanapali platform have a newer generation of video IP iris4.
> The hardware have evolved mostly with respect to higher number of power
> domains as well as multiple clock sources.
> 
> Considering iris as a client driver, it adds the handling for multiple
> stream ids from VPU via iommu-map.
> 
> This series is depend on the below series:
> https://lore.kernel.org/all/20260226074245.3098486-1-vijayanand.jitta@oss.qualcomm.com/
> 
> Following patches were dropped in v2, as per the comments, and would
> be posted separately. This series depends on these patches for
> functionality.
> - https://lore.kernel.org/all/20260126-kaanapali-iris-v1-2-e2646246bfc1@oss.qualcomm.com/
> - https://lore.kernel.org/all/20260126-kaanapali-iris-v1-3-e2646246bfc1@oss.qualcomm.com/
> 
> Patch #4 is also posted alongwith below series. If the other series is
> picked earlier, then this patch can be dropped from this series.
> https://lore.kernel.org/all/20260227-iris_sc7280_gen2_support-v2-1-7e5b13d26542@oss.qualcomm.com/

For the record this series is blocked on this:

https://lore.kernel.org/all/20260226074245.3098486-1-vijayanand.jitta@oss.qualcomm.com/ 


---
bod

