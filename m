Return-Path: <devicetree+bounces-312826-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id zNDhBRlTMmpvygUAu9opvQ
	(envelope-from <devicetree+bounces-312826-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 17 Jun 2026 09:56:09 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [104.64.211.4])
	by mail.lfdr.de (Postfix) with ESMTPS id 110F76974EA
	for <lists+devicetree@lfdr.de>; Wed, 17 Jun 2026 09:56:08 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=gmail.com header.s=20251104 header.b="CIYNIdc/";
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-312826-lists+devicetree=lfdr.de@vger.kernel.org" designates 104.64.211.4 as permitted sender) smtp.mailfrom="devicetree+bounces-312826-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=pass (policy=none) header.from=gmail.com;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id B73FE3002507
	for <lists+devicetree@lfdr.de>; Wed, 17 Jun 2026 07:56:03 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E61CE3C1F5E;
	Wed, 17 Jun 2026 07:55:57 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ej1-f53.google.com (mail-ej1-f53.google.com [209.85.218.53])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3C3133C2770
	for <devicetree@vger.kernel.org>; Wed, 17 Jun 2026 07:55:51 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781682957; cv=none; b=qkMZPyQRzHdutprS0R7saEaNtyUd54MaMqgDLQBoE82//jWabsXRUoETmNtT3Yj+8rmIxYfKqwGj06VLv/ZjQQ6hccV+zmuTbJaG+6zcXKn3s0y60M480F8NTeyVCECIwMRi8wXHs54XlIJAtAf46UgVnZ2MifFqlZGDga0F30c=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781682957; c=relaxed/simple;
	bh=DvRso/AOe3/Ackbv/gV5sQBWqnK8QzSsKJ4M2Q0oQKU=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=P2CK7uHykoBcXl6bEA6D4CnifkHj9/tFxThkpNrNXyXomYmEW0tvr/BAq105OPIYihbI1Qe2xv7+sy9odKEGpIycA71B7uPW5ZhzZ3pWIV2WtXBOnedwHr8t1+7K+DhM9l2r3H1rbyxwF2+ree113lUWPFSXBopPSmrzDbR6Q1Y=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=CIYNIdc/; arc=none smtp.client-ip=209.85.218.53
Received: by mail-ej1-f53.google.com with SMTP id a640c23a62f3a-bec2ddee9bbso1085346366b.3
        for <devicetree@vger.kernel.org>; Wed, 17 Jun 2026 00:55:50 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1781682949; x=1782287749; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=1v5FlOwlP3qv5NVsuERde6s+iLytWjSY6IwbQXfaxfI=;
        b=CIYNIdc/grYpIwkfVs4SAfHcZ1uEiJvUQGqNTRBBYZrXuLpkz9/Cli0iqMCmHCv7H5
         X1NrzEO4FulgqAkyco0GNA3cyiMtpfA4a5sWy1i+Ldp2OJsPx5NWJWQxb+U09Dez3viO
         6Dte8pVGantoPBldXWM+vfoQis9TmxMDpt8Ys6eh0g4fwagZHu5QOW8sCxBzwWryX2tj
         RFPnOJW5foZLG9ChOuPD8io0+ONRNhyTR1ExYfH5pV2nAASCqIzPnB4hV3hauyklalPN
         5w6qtLe1CJu/EbrCDe79crhjbvUJoSQECW6u/opRiioDH2hXmvYpZfIFofPjLFl63OF7
         fWbA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1781682949; x=1782287749;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=1v5FlOwlP3qv5NVsuERde6s+iLytWjSY6IwbQXfaxfI=;
        b=Ocoxe7o0q2re0G9ji1rmb010jh+xUtaSxcfgToZJwG4tL+IL5Sdn0LPztC6JYK47cH
         uBV9fYqbwm4S99R2RfH7jqvxBa5birBJwg/p+JB1odIc5YGopEpvXh82Ql8Z4dZiR80U
         NbS27CVlNECy3SzIq6eFaYLBXLADge3rkIJn5d3LqqnZUmXNFdB9KRHXmpWhmwrwO8/Q
         LMUkMrV8N9SeM8m0Ey2D170zJvBaY2u6W+P8qwCmlqr2WDlyISH+dksDXfS6juBXcu8E
         tOGzux2UaRj227D6Yy/OsQYUq56aS7NR+LUXPCUNGmkGrYjno7imwZkMoDPuAHgg5W17
         v/UA==
X-Forwarded-Encrypted: i=1; AFNElJ9woAdNuaCbCDu8EarM668YZmOYW7mKCOWJ4rKHlCcZguYWYj32p2fov1AToEIKwYiThnAzd9FtjaEm@vger.kernel.org
X-Gm-Message-State: AOJu0Yz5Ch2vjS9RSv5E8aS+tJOH0D2K95V60lJ1XP/aTd+3pbSzt1HT
	vI3wD5fe/7kjr8xfS3oK632A7pNAS+1pM4UaxKsasq83FebcDNnawDDX
X-Gm-Gg: Acq92OGXO/Bi/6A2TzeIAyiWrgbvOVcS+w05JAn0bUPjTzZAzr0qfrfsWPA8vee0PRo
	v6HOCuFtz0lv5hn9GUZmACjSfOBpezi8c2/fwae6HO+ZFb+QhUZzUJSuX3C7YbkVh9CIYE1Xj1w
	3JwVGBXbmZWz0l44tl83PdgMPz0Idn1jCHV+fEE9wTqE9hyyJyr/56+jrUkDtS4s2QH3k2pxksB
	LNG9h1EMN3AkuvhT/BJhq86F0ZR6bjLI0iolg7zsYviNCLvhUXs7OJzRLWV24gwkyd6kn2aPcsv
	3pQhzUB/uGF/gOZ9WwHqpv+CAywFfENcz1eENeBWH6+qcRuWSGc65aemmPN7SC/+7fcfRM4Xrtu
	lp114Sxnp5o1D/ObuxJC6HMf0B427oyOzuuw0B3gcKH7zlYxVJCiaKDmtG2KR9bxIv/0MSva3/0
	zHaCpGjmrPXAAS2GDo1lvCTgvB+mNsI9mIGieYcIs/XEaXvkt4WFv+R0DCaQgI
X-Received: by 2002:a17:906:2092:b0:c06:3267:4483 with SMTP id a640c23a62f3a-c0632674b69mr38913666b.36.1781682948974;
        Wed, 17 Jun 2026 00:55:48 -0700 (PDT)
Received: from [192.168.1.30] (161-53-210-87.ftth.glasoperator.nl. [87.210.53.161])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-bfdb7b6d9b7sm752527166b.41.2026.06.17.00.55.48
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 17 Jun 2026 00:55:48 -0700 (PDT)
Message-ID: <3bc5c1f5-8994-48b7-a376-39afc7e429e4@gmail.com>
Date: Wed, 17 Jun 2026 09:55:47 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v9 2/2] arm64: dts: qcom: Add Xiaomi 12 Lite 5G (taoyao)
 DTS
To: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>, devicetree@vger.kernel.org
Cc: linux-arm-msm@vger.kernel.org, andersson@kernel.org,
 konradybcio@kernel.org, robh@kernel.org, krzk+dt@kernel.org,
 conor+dt@kernel.org, linux-kernel@vger.kernel.org,
 dmitry.baryshkov@oss.qualcomm.com
References: <20260608143329.252033-1-zstaseg@gmail.com>
 <20260608143329.252033-3-zstaseg@gmail.com>
 <8b8fe93b-3df4-4dd4-acd6-3e87401071f9@oss.qualcomm.com>
Content-Language: en-US
From: Stanislav Zaikin <zstaseg@gmail.com>
In-Reply-To: <8b8fe93b-3df4-4dd4-acd6-3e87401071f9@oss.qualcomm.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-Rspamd-Action: no action
X-Spamd-Result: default: False [-2.16 / 15.00];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_SPF_ALLOW(-0.20)[+ip4:104.64.211.4:c];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20251104];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-312826-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:konrad.dybcio@oss.qualcomm.com,m:devicetree@vger.kernel.org,m:linux-arm-msm@vger.kernel.org,m:andersson@kernel.org,m:konradybcio@kernel.org,m:robh@kernel.org,m:krzk+dt@kernel.org,m:conor+dt@kernel.org,m:linux-kernel@vger.kernel.org,m:dmitry.baryshkov@oss.qualcomm.com,m:krzk@kernel.org,m:conor@kernel.org,s:lists@lfdr.de];
	FROM_HAS_DN(0.00)[];
	FORGED_SENDER(0.00)[zstaseg@gmail.com,devicetree@vger.kernel.org];
	TO_DN_SOME(0.00)[];
	DKIM_TRACE(0.00)[gmail.com:+];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORWARDED(0.00)[lists@lfdr.de];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	ASN(0.00)[asn:63949, ipnet:104.64.192.0/19, country:SG];
	FREEMAIL_FROM(0.00)[gmail.com];
	FORGED_SENDER_FORWARDING(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[zstaseg@gmail.com,devicetree@vger.kernel.org];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	ALIAS_RESOLVED(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	RCPT_COUNT_SEVEN(0.00)[10];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sin.lore.kernel.org:rdns,sin.lore.kernel.org:helo,qualcomm.com:email,vger.kernel.org:from_smtp]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 110F76974EA

On 6/16/26 12:01 PM, Konrad Dybcio wrote:
> On 6/8/26 4:33 PM, Stanislav Zaikin wrote:
>> Xiaomi 12 Lite 5G is a handset released in 2022
>>
>> This commit has the following features working:
>> - Display (with simple fb)
>> - Touchscreen
>> - UFS
>> - Power and volume buttons
>> - Pinctrl
>> - RPM Regulators
>> - Remoteprocs - wifi, bluetooth
>> - USB (Device Mode)
>>
>> Signed-off-by: Stanislav Zaikin <zstaseg@gmail.com>
>> ---
> 
> [...]
> 
>> +&ipa {
>> +	firmware-name = "qcom/sm7325/xiaomi/taoyao/ipa_fws.mbn";
>> +
>> +	status = "okay";
>> +};
> 
>  From make dtbs_check:
> 
> qcom/sm7325-xiaomi-taoyao.dtb: ipa@1e40000 (qcom,sc7280-ipa): 'memory-region' is a required property
> 
> Please fix that (or disable IPA)
> 
> Otherwise:
> 
> Reviewed-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
> 
> Konrad

Thank you for the review.

This patch depends on [0]. With [0] patch applied, dtbs_check passes w/o 
warnings.

[0] 
https://lore.kernel.org/all/20260517-ipa-loader-v1-6-3c3764c1b4a3@oss.qualcomm.com/

--
Best regards,
Stanislav


