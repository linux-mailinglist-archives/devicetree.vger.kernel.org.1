Return-Path: <devicetree+bounces-264389-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 8MQ2KG4gi2lBQQAAu9opvQ
	(envelope-from <devicetree+bounces-264389-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 10 Feb 2026 13:11:26 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [172.232.135.74])
	by mail.lfdr.de (Postfix) with ESMTPS id 432E511A920
	for <lists+devicetree@lfdr.de>; Tue, 10 Feb 2026 13:11:26 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id 89ECF3008D6F
	for <lists+devicetree@lfdr.de>; Tue, 10 Feb 2026 12:11:25 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id AEFE132861F;
	Tue, 10 Feb 2026 12:11:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="dZ22dP46";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="eL9uYyMr"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9B643328253
	for <devicetree@vger.kernel.org>; Tue, 10 Feb 2026 12:11:21 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770725482; cv=none; b=UO6390KX3YvBZLBqOshiZcjgvbqSiHub5hm7JXhTrxeG/nwsFgpWKSRoNrwzl1FVOiAy3FPLrFeo8EhoNw1i0SN30mzI7XQfbXA0C+lpCGlP5QyHguw0IFIFzc9BJ5/g7OgDoW5zV+a5KU1HddOTKN1Hnim4fmyHcRMAeNEv42Y=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770725482; c=relaxed/simple;
	bh=142drCgTks99HM430Xd8Lb3C78zqfH13zuJmV4x4yyE=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=OQWScwMBI827GAtNq2jJ/Rqbo1scn7SVzXjJSaN8viA3zKmatW4pCOPSXBxTiBC21ksvwHBEYU7CMQVF+jm3cNAPhzNBiFKMf+HfFLinCjt9nk5RbLg1wMIouNBs/uz1Z0TfPYcI3FsK1+e8e2GuwQCSngKDW5ZD9awKVcIbw/o=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=dZ22dP46; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=eL9uYyMr; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279864.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 61A7uu3f857404
	for <devicetree@vger.kernel.org>; Tue, 10 Feb 2026 12:11:21 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	zLIqZx4pR3vXekB7QkxU1CKhDizraSJLDhVZT3DZtRo=; b=dZ22dP46UUv2Gghl
	r1Ja7SlBT8d8kqDyQCX8tji/YlhrKjCuVJhL7GWxclGSWhXJamwBH4eWdbdevKVj
	yZ90BNb++Wecw5ZoOgzl9APp0Eq+CRmXAGiUMfvl5kdsujmNWbtHydkZAy7S78LM
	E7TDH3aOd695/se0PSM+ejkPq9x7faR5iysFon7ipoOVZ92HggS/YxCS8poDcGsR
	9KAbTEJueJkL07uPTXadH4W4ad1dxCUyU5FiYsUO3OfVuEa9Cq5ncDoJF3tVdeI0
	Wq0OFGXuBxoDTBwu3ANpBjdGA4/gYDP8CwcrmXG3A2aM9dLDdT8kJ8O/wg6bxnbf
	u1vbWg==
Received: from mail-dl1-f70.google.com (mail-dl1-f70.google.com [74.125.82.70])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4c7ga644e5-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Tue, 10 Feb 2026 12:11:21 +0000 (GMT)
Received: by mail-dl1-f70.google.com with SMTP id a92af1059eb24-124a95b6f61so4947380c88.0
        for <devicetree@vger.kernel.org>; Tue, 10 Feb 2026 04:11:21 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1770725480; x=1771330280; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=zLIqZx4pR3vXekB7QkxU1CKhDizraSJLDhVZT3DZtRo=;
        b=eL9uYyMrS9N9BiQMbTxK8YMLarYOegLDCyhDALfpcWA0PDr50QQDlybMRiw98Q6CrO
         JKnBX8wUe0yuG2RA6DORIsr0gVnB1ESyaC3Dpyhv4joQ+990Ruv6g6uVkNfPY+JVwgNo
         WLggreaUEzMzavEwd8kRH0k8W8O324iqwjo0SUTKYgjl7Mn85JAcS4rStOeH8s4bdh7z
         jzg8YYWmUL8uZWRn30t6L/+DGdXeT9W8NpayUNTYRnmqPoVA1WfIMSVEHM0p+BlNoyD8
         BvkqWgCJ8ogTTlWj8P5cPzgEHgW9LcuKbqPH0P0BEdIv8WK8okdQEHYNEBOZXZFIEZvY
         lPEg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1770725480; x=1771330280;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=zLIqZx4pR3vXekB7QkxU1CKhDizraSJLDhVZT3DZtRo=;
        b=MD38HbG3GTRyg6vzrO7wa6hO+zLD6mypgb4GSb6n9jDTOMwySfw5I/7jyAbclvDmdB
         JSUYabuUEL8HEvBT75xXjYucd4K+YsCQ2d5prY8GR8s/XRFqoedV43i7p0GhNp+FBUet
         S0VzmiOJ+ZrHCuic4N23LtElLc5FlBmmWktPjr1xRZqbsIgQbWJPVywwqZXr4yjZGVcI
         HNGGG90e1JoTCwsDERz5ABWhdC8WHmTF1wgTZZG9SOdPaA4ZVSI5D6hSD8Xpr9BXm0yt
         Is+6bs74i/klFYcIDHFkxR85hTWLWFwKEqcXOoo7kCx1nBzNlwIPo9tbFV81xLo5GXnr
         wYMg==
X-Forwarded-Encrypted: i=1; AJvYcCXzpQuKXt0g1yZyMZ2nby9tlRw29y93CldHR8Yh/uUZkw3ho+PT8GJpW3Ynv82a5WDKtdeilX4wFCNx@vger.kernel.org
X-Gm-Message-State: AOJu0YxuNHHjNDPRilkfUf7aqpP3KvCHwe6p+rgbhU1KQBl5WIwg8OR9
	3QrrlnaVog703d5opRJ+Kfyqh+fSOBgn4+B6CcpDc63dO/5XHV+rHQjD7oI0efI/vcpWnIaFFsY
	k3xcovsDOe8hCbaBcM802RZOrlLEMtR2CmXQUCgPCU+6DRDN5MELYFKZre6bmsB8d
X-Gm-Gg: AZuq6aLq9t8011ZW48RnpEDvAFCh3bJRJgUVCORq/BccxEUb/92AqVIxc4Ln922arvn
	iuyFgSl3ktsa6s5mkPW4FVI5P5C27bmNpNFZfLf7O1hkkWP/ifhu+ayAzxcGJAMl5agjgLTQLNw
	AXxflpmCb8H/Lkk3U6kGGH865PYLnow0c8+/54+5FC0ZVOSOHKcckeuezPbV1Wbs1IfBUzL+ubv
	htR7cbT4jx+Hu2XLuXNhikiOFrfWxMzMJm4rIoBr0S+hGwJoN/YvjBWrhGsAEWK1nLtYgw4oYq+
	6Df9klgXZJuEnUekRFO+RpOtJYuZed2NoThDYAG/04bWivVyMZ1VP3LHxCVUwsby6vyG55Q+toe
	PBuGxzONg7zVoBVSxS246zoZ1zoiNPpprVTU26MWl/iUHFTve
X-Received: by 2002:a05:7022:910:b0:123:3461:99be with SMTP id a92af1059eb24-127040153ffmr8274114c88.21.1770725480321;
        Tue, 10 Feb 2026 04:11:20 -0800 (PST)
X-Received: by 2002:a05:7022:910:b0:123:3461:99be with SMTP id a92af1059eb24-127040153ffmr8274090c88.21.1770725479713;
        Tue, 10 Feb 2026 04:11:19 -0800 (PST)
Received: from [10.218.16.122] ([202.46.22.19])
        by smtp.gmail.com with ESMTPSA id a92af1059eb24-127041e61b9sm12883089c88.8.2026.02.10.04.11.15
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 10 Feb 2026 04:11:19 -0800 (PST)
Message-ID: <cbc0b42d-fb5f-45b8-9074-d0bcc64a9de1@oss.qualcomm.com>
Date: Tue, 10 Feb 2026 17:41:13 +0530
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v3 2/2] Bluetooth: qca: add QCC2072 support
To: Bartosz Golaszewski <brgl@kernel.org>
Cc: quic_mohamull@quicinc.com, quic_hbandi@quicinc.com,
        linux-bluetooth@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, linux-arm-msm@vger.kernel.org,
        Marcel Holtmann <marcel@holtmann.org>,
        Luiz Augusto von Dentz <luiz.dentz@gmail.com>,
        Rob Herring
 <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Balakrishna Godavarthi <quic_bgodavar@quicinc.com>,
        Rocky Liao <quic_rjliao@quicinc.com>
References: <20260209080613.217578-1-vivek.sahu@oss.qualcomm.com>
 <20260209080613.217578-3-vivek.sahu@oss.qualcomm.com>
 <CAMRc=MfT7ourMH+ShJpnBAjv_uOb_ds0rxJOYaz_HsoT45dJYA@mail.gmail.com>
Content-Language: en-US
From: Vivek Sahu <vivek.sahu@oss.qualcomm.com>
In-Reply-To: <CAMRc=MfT7ourMH+ShJpnBAjv_uOb_ds0rxJOYaz_HsoT45dJYA@mail.gmail.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-Proofpoint-ORIG-GUID: jG0vvIuYiWGIc3MMkDqz9ugz892bPUKB
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMjEwMDEwMiBTYWx0ZWRfX8Gmk5EKkD1vW
 tY/+CqFJyOweXT4g25ZKvzXofKkB5lhS3KYr5whxTl2fpjP2BHqWIejYgE+tSOcqUm8beshckX0
 eX0QpGTNvXBZEVwJUl6zf3SwvyLTsSto1OM7l4m27PqJx5we08GKIy14dvynIwwDRLWTR1NcaEa
 qLWczYKUFlpbwB35hIGieXOrTvP6yCopctVC5hrEvXbM60eO0bz6CAROLw02W/VWxXLt9X8cgWK
 FGIANjgX1qttpRAnws5kDN8KM4Jks8+znsjm+MTYBy1XNKMFWjTM2mRMdgC0HnUOQhOmrM9OH1v
 4nQa7fKSvEvc5teXbB16H41ubrzwy4VEhWf+qJMnGNDsMieO114hoN+OZVgDJ7Xec1qqyzjZMFh
 l2NaFg1ZmuMKTAlHDmjOpSKoPONtQp1//ZZGO1j7KeOR2xH/pgIh3q+ZutGxfnY17UHDag7klC3
 MIaysOuq3SZxlQaWiBA==
X-Authority-Analysis: v=2.4 cv=WK1yn3sR c=1 sm=1 tr=0 ts=698b2069 cx=c_pps
 a=SvEPeNj+VMjHSW//kvnxuw==:117 a=fChuTYTh2wq5r3m49p7fHw==:17
 a=IkcTkHD0fZMA:10 a=HzLeVaNsDn8A:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=Mpw57Om8IfrbqaoTuvik:22 a=GgsMoib0sEa3-_RKJdDe:22
 a=EUspDBNiAAAA:8 a=HN2rxSbq-rsLsfjk2icA:9 a=QEXdDO2ut3YA:10
 a=Kq8ClHjjuc5pcCNDwlU0:22
X-Proofpoint-GUID: jG0vvIuYiWGIc3MMkDqz9ugz892bPUKB
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-02-10_01,2026-02-10_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 bulkscore=0 priorityscore=1501 suspectscore=0 adultscore=0 malwarescore=0
 clxscore=1015 impostorscore=0 lowpriorityscore=0 phishscore=0 spamscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2601150000 definitions=main-2602100102
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-2.16 / 15.00];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[qualcomm.com,reject];
	R_DKIM_ALLOW(-0.20)[qualcomm.com:s=qcppdkim1,oss.qualcomm.com:s=google];
	R_SPF_ALLOW(-0.20)[+ip4:172.232.135.74:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-264389-lists,devicetree=lfdr.de];
	FREEMAIL_CC(0.00)[quicinc.com,vger.kernel.org,holtmann.org,gmail.com,kernel.org];
	DBL_BLOCKED_OPENRESOLVER(0.00)[qualcomm.com:email,qualcomm.com:dkim,sto.lore.kernel.org:helo,sto.lore.kernel.org:rdns,oss.qualcomm.com:mid,oss.qualcomm.com:dkim];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[14];
	MIME_TRACE(0.00)[0:+];
	DKIM_TRACE(0.00)[qualcomm.com:+,oss.qualcomm.com:+];
	ASN(0.00)[asn:63949, ipnet:172.232.128.0/19, country:SG];
	TO_DN_SOME(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[vivek.sahu@oss.qualcomm.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Queue-Id: 432E511A920
X-Rspamd-Action: no action


On 2/9/2026 5:04 PM, Bartosz Golaszewski wrote:
> On Mon, 9 Feb 2026 09:06:13 +0100, Vivek Sahu
> <vivek.sahu@oss.qualcomm.com> said:
>> QCC2072 is a family of WiFi/BT connectivity chip.
>> It requires different firmware files and has different
>> configurations , so add it as a separate SoC type.
>>
>> Correct the sorting of other chipsets for better readability.
>>
>> The firmware for these chips has been recently added to the
>>      linux-firmware repository and will be a part of the upcoming
>>      release.
> Something is wrong with formatting here.
>
> I would personally split the sorting and support for the new model into two
> patches - without and with functional changes respectively - for easier review.
>
> Bartosz

Yes, I'm now splitting this patch into 2 parts, one for sorting another 
one for new model

support. Please ignore this patch.

Sorting change has been raised with tittle "[PATCH v1] Bluetooth: qca: 
Refactor code on

the basis of chipset names". Please approve it at quickest so that we 
can raise new model

addition code changes on top of that.


