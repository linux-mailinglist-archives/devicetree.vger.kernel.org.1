Return-Path: <devicetree+bounces-269148-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 8JvQDPlloWkCsgQAu9opvQ
	(envelope-from <devicetree+bounces-269148-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Fri, 27 Feb 2026 10:38:01 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [IPv6:2600:3c04:e001:36c::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 9D0531B56F5
	for <lists+devicetree@lfdr.de>; Fri, 27 Feb 2026 10:38:00 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id CB37B30A35FA
	for <lists+devicetree@lfdr.de>; Fri, 27 Feb 2026 09:35:18 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 0FC3F38B7D4;
	Fri, 27 Feb 2026 09:35:18 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="pD49iwOU";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="GjpwP8yT"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E370828504D
	for <devicetree@vger.kernel.org>; Fri, 27 Feb 2026 09:35:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772184917; cv=none; b=lZpPWHf327tGTthe7eZaWlBSL0+3kogJet4mPq2OhxA4OU7S79Kh8qPpw8DTIuZ7zei+iHoK0ZUAs+vVjdW1puJY5VfAyxK3gcTx2vJjjeJ/t5Qh2CzpisdDWPMp4UmsFeiUMpHhFsyrQXCl7A/K2QvfG6hvZZn2ZCO2geEEG8w=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772184917; c=relaxed/simple;
	bh=/D0gi3aoeLq+XBFLUHEjo0XS4gE6a55Euh+WzD6ZeXs=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=myu5G5ofLVHc9PJr03o8ld2OAYMfr3wIqPRa787NsRweZxEDvoMRmXJA1qPo+iWSL3lhuVR493r5exon4KjuKNuhVw1+2JV3G7N6TE2hIZLJAwUvfrLPHiycGSoj3Z8Yvv0xdyy/v9uHw0OtpRgmBPgQlBDn0E0gtOKSFc3Dp1c=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=pD49iwOU; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=GjpwP8yT; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279866.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 61R2KQs11601652
	for <devicetree@vger.kernel.org>; Fri, 27 Feb 2026 09:35:16 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	6xdyDhKWmYiO2wmW9pxHVpHSeSQBV3OpLENsiatFnmA=; b=pD49iwOU8+PrxhJM
	CdDOqIdJBJSHcH6DPSrb4XDEfUFIHlkk+HCYGZ5xNkf4OExW5QYSYJeg6fhaT3gp
	NOUTsjLY6XU0yb+EuF0KQBWqW8dtHfWkj7hGM/S3I/GZARMh/FL3jTaD+b569Mcf
	wm5DUf9ESPRuqHrQvVXLAeUkmz5DM0UDmeulnnx0fip6/d0DqhsfBff8v/e4gy82
	+2PB8U+OSfesXxt9oB8CGbTlVq5BJq9KbISS17ZnTDB7NNXVKCllurdp7xH4V6cv
	5RHmKu3FrZGCYCQXjkrQlXPzWCmUjK+TF5BXIBa1IoIWXbPmKPusQgtwmjYMlD+K
	IXvdwg==
Received: from mail-pg1-f198.google.com (mail-pg1-f198.google.com [209.85.215.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4cjt99u1gm-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Fri, 27 Feb 2026 09:35:16 +0000 (GMT)
Received: by mail-pg1-f198.google.com with SMTP id 41be03b00d2f7-c6e1d32a128so1151109a12.3
        for <devicetree@vger.kernel.org>; Fri, 27 Feb 2026 01:35:16 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1772184915; x=1772789715; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=6xdyDhKWmYiO2wmW9pxHVpHSeSQBV3OpLENsiatFnmA=;
        b=GjpwP8yTkZYMeAcS2v8zfVU7xLVP41mwTcYBVrvgnIC1iAVwoOU+viNkuiUTS4ZUzn
         jexlr0dMW9jtrCXvpdb2TTA/rpUCI1v8YsfHTsSFuTdLDWMlGx7PspMIv1WAVFzFDzFI
         DwEAJSI8upZmfSc77Dwr0O4r0bhQg4NZhInSLgMfCGCqJrlaXCuat9eBhkbs4JCr2sFg
         APxq5/kc8le+8dmT7cyf+H74KBdn+oy4teR1HSNdXUqm3q6Pl8MjqkE4iV9GGi3nURqS
         nFQtc4BWzhm6p6FxlIgnY2EDAB9PXsdLKvPunczFCLcO9KrdElFkf13slQajikInIfiB
         4d5Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1772184915; x=1772789715;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=6xdyDhKWmYiO2wmW9pxHVpHSeSQBV3OpLENsiatFnmA=;
        b=Ts3wg6exeiOUJct57RI1NyIYXWf4ugT1M2v0kWyKaEOJt+i7zV6vbk8akoDtSDoGSq
         P/0yQ9M2yT+3z60Z40tc4CHBkv5NxxtF9oRrcM6ZHBcCXGyblg7kHPU++/SBLxCWuqDx
         pXgC5bY18OH7KDXxtnE6CEXC0s5VrzQ1WiM61W4w0fdMFs8OZKD6NxzrN0fYtzLl65Iy
         Wha7P7C6Chy/jw5C7VuqYmjvFdqRm3vV1bnNqH/1I0hcQvF2oHbdpRN2Dct1whYjQlnV
         W/k5RAYfro5VPXexrD85s6NOTw1osEaZNV9MrnB+N57x2C66Cm03NViy+AG8IjfK8d+D
         hyow==
X-Forwarded-Encrypted: i=1; AJvYcCWM28jpeCouWxeVDKaBnSc8CQvqpk/LLw9NpkIni/eNYEwXnV6ybC6lo5CSt/3FnofDKgewRPTkm/aX@vger.kernel.org
X-Gm-Message-State: AOJu0YwfJzC5BrKb3dyXNg47BQAmiYK9bulGBtfqxCI/jCmayvtGUvRW
	Ck0Yt28ul9uPQX6EOlTUhwk9QSZFxnjmd0yExgUZQGjx5RjiCsfn6mF9pVR2dnwMM3lTnPuVbdY
	aoHDh/wjzIpuaGX97I83r0qKYBTTjSC4AkKriOkxWsbdBzKCnjrj8z7LdlwphcvEX
X-Gm-Gg: ATEYQzwW4nIQ2a5xMyw8+TzfDtExofdGj7NKJlyQQgIkzMZIStM1cS15Mgd0X7RnxUJ
	pRH3PhQZ8bdHKCmx4CUJaLn2nkWx/NUphTx38+i3HdrqeKN0MhFqQoQt0UfAfeA68bP33PuWySb
	Ej450qFesWaLDfgdXHKBq3yzo4aqIVShJYgPLrwX62Y8vWj6SFnUfC3fqV+mNv6RZXdDhp8YKSC
	AmwQ2ZlUbSZpnCRIXHO6Hmc0rzKIhJ8hvLwCFdx3bDo6XokMg1+WgZw4kMCJDwrYg8imHAu1zrU
	TeWmF+vXb5/OoBFqNmFgXRKWm4DOmC6uqEZE/Z8mEVRuq8k6IQY9WTsrSUYUO8x7r6ass7/45Ph
	dZdegYVOR8dffR/I5h16xQJ7YBIOvfZsgQz+rT8D6GUU89AJaJCWBSGfhxHPb3zUYig==
X-Received: by 2002:a05:6a00:94c1:b0:81e:7496:f826 with SMTP id d2e1a72fcca58-8274d9ebac7mr2340052b3a.31.1772184915532;
        Fri, 27 Feb 2026 01:35:15 -0800 (PST)
X-Received: by 2002:a05:6a00:94c1:b0:81e:7496:f826 with SMTP id d2e1a72fcca58-8274d9ebac7mr2340034b3a.31.1772184915097;
        Fri, 27 Feb 2026 01:35:15 -0800 (PST)
Received: from [10.151.37.217] ([202.46.23.19])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-82739d4dc6dsm4680574b3a.6.2026.02.27.01.35.10
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 27 Feb 2026 01:35:14 -0800 (PST)
Message-ID: <3f236e2b-4e07-4487-88e2-83891388d352@oss.qualcomm.com>
Date: Fri, 27 Feb 2026 15:05:09 +0530
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v8 4/5] watchdog: qcom: add support to get the bootstatus
 from IMEM
To: Guenter Roeck <linux@roeck-us.net>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley
 <conor+dt@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>,
        Wim Van Sebroeck <wim@linux-watchdog.org>,
        Rajendra Nayak <quic_rjendra@quicinc.com>
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, linux-watchdog@vger.kernel.org,
        Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
References: <20260226-wdt_reset_reason-v8-0-011c3a8cb6ff@oss.qualcomm.com>
 <20260226-wdt_reset_reason-v8-4-011c3a8cb6ff@oss.qualcomm.com>
 <52bf19af-7cf3-4e20-89ad-813fad8aa9c1@roeck-us.net>
Content-Language: en-US
From: Kathiravan Thirumoorthy <kathiravan.thirumoorthy@oss.qualcomm.com>
In-Reply-To: <52bf19af-7cf3-4e20-89ad-813fad8aa9c1@roeck-us.net>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit
X-Authority-Analysis: v=2.4 cv=IZWKmGqa c=1 sm=1 tr=0 ts=69a16554 cx=c_pps
 a=Qgeoaf8Lrialg5Z894R3/Q==:117 a=j4ogTh8yFefVWWEFDRgCtg==:17
 a=IkcTkHD0fZMA:10 a=HzLeVaNsDn8A:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=YMgV9FUhrdKAYTUUvYB2:22
 a=43ht1-M-mn3fQUkTlsUA:9 a=3ZKOabzyN94A:10 a=QEXdDO2ut3YA:10
 a=x9snwWr2DeNwDh03kgHS:22
X-Proofpoint-GUID: RSaspkuzaJYkhlH4eDin-jYTPsnzSHxl
X-Proofpoint-ORIG-GUID: RSaspkuzaJYkhlH4eDin-jYTPsnzSHxl
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMjI3MDA4MiBTYWx0ZWRfX6Vzeu9v0LJn1
 CgU3yorhLE7h2v1GimOHvIJNAVQbHQDCqCLlvR41fpIlg0yWh3/dSCmlxthxBHKC9gZRL3BBDkh
 L9vkttkWkbLMrlYEucHNBMpd1i4Jm11WzDL60zS9fCfgFCrK7Ziwv6tf2TXhYUHOBccIfBrwLn3
 oqneKPuEqGjS5BZIrZlvc1H2zUU/+xxFQvIoFbrYnAScyDM+4AYxSWCRF4M0DLx5k+YFHkWAG7C
 /VVENdWuKSkStIUMytperFy90qEfyTuA2xp0buXjgbxAZ5FNv6/D3uM1XRl0btoER8QFDxEzPeC
 wlZFjIQNBIFavMbGDHZnw7Qe1YqB2WSP/hPQ/O7e6hYCcJZ5FGT9j2rhx0OzvpbyIx+lkE5qsGG
 PGz6r0JKlcGuZ1/gKpX4xYGd1XjG0bx1aRaaSM597sl1zQCuiZZZXyajMdo3QKHoyKcA4cIHEtH
 6ZmtW8WhT0j7nbErf/A==
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-02-27_01,2026-02-26_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 bulkscore=0 impostorscore=0 clxscore=1015 adultscore=0 lowpriorityscore=0
 priorityscore=1501 suspectscore=0 malwarescore=0 spamscore=0 phishscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2602130000 definitions=main-2602270082
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[qualcomm.com,reject];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c04:e001:36c::/64:c];
	R_DKIM_ALLOW(-0.20)[qualcomm.com:s=qcppdkim1,oss.qualcomm.com:s=google];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	MIME_TRACE(0.00)[0:+];
	RCPT_COUNT_TWELVE(0.00)[13];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_FROM(0.00)[bounces-269148-lists,devicetree=lfdr.de];
	DKIM_TRACE(0.00)[qualcomm.com:+,oss.qualcomm.com:+];
	RCVD_TLS_LAST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[tor.lore.kernel.org:helo,tor.lore.kernel.org:rdns,oss.qualcomm.com:mid,oss.qualcomm.com:dkim,qualcomm.com:dkim];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[kathiravan.thirumoorthy@oss.qualcomm.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c04::/32, country:SG];
	NEURAL_HAM(-0.00)[-0.999];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Queue-Id: 9D0531B56F5
X-Rspamd-Action: no action


On 2/27/2026 1:12 PM, Guenter Roeck wrote:
>>   -    if (readl(wdt_addr(wdt, WDT_STS)) & 1)
>> -        wdt->wdd.bootstatus = WDIOF_CARDRESET;
>> +    ret = qcom_wdt_get_bootstatus(dev, wdt, data->wdt_reason_val);
>> +    if (ret)
>> +        return ret;
>
> Why is reporting the boot status so important that the failure to read it
> results in refusing to instantiate the driver ? That warrants a detailed
> explanation, even more so since it is not backward compatible.


Ack. Let me just log the error message and continue the probe.


>
> Guenter 

