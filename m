Return-Path: <devicetree+bounces-267343-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id gMMEDeItnGmIAgQAu9opvQ
	(envelope-from <devicetree+bounces-267343-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Mon, 23 Feb 2026 11:37:22 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [104.64.211.4])
	by mail.lfdr.de (Postfix) with ESMTPS id 60B7A174FD4
	for <lists+devicetree@lfdr.de>; Mon, 23 Feb 2026 11:37:21 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id 9866930185EB
	for <lists+devicetree@lfdr.de>; Mon, 23 Feb 2026 10:36:28 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B37D0353EE3;
	Mon, 23 Feb 2026 10:36:25 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="iDQ4/T74";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="RQrVZlED"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 86A0334F48B
	for <devicetree@vger.kernel.org>; Mon, 23 Feb 2026 10:36:24 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771842985; cv=none; b=d47JvO0OS6xbJhdhJIrTsMS/N6yJZM1elwB5TLiHl8V7KZsXPdO5eYeqqE9Z7zqEnAwvSGt6iTxiguz/MtLbdVeE9F210QsjgzjW/+4XPqM9HGWHP5rQ5/XN5hm2gDsAMBVmnWpAGQzKBHTv+CetRvKWz/lGBc4Ar1X+7UeRvsQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771842985; c=relaxed/simple;
	bh=Xn+1zTTFtq55v4w02sQWFwcs7QYOK7aASkErT+H8ax0=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=mQhUKw9KmNXsUdSwhS6nz4ThZBSFiaAwmRE6RbGgpi0/4eTy3sOjGhumk0i3T5bkvA5wEI8pPWZRfr7LnOm3ytrNAJXlp2l8Y3q9U5trTWeGDSgWZYL85MF6q7V9bTamHYp4+Vwn7MbH14P6a1Yev5JmtTra0bGzMXCVAqySAL0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=iDQ4/T74; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=RQrVZlED; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279862.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 61N8csdQ1857015
	for <devicetree@vger.kernel.org>; Mon, 23 Feb 2026 10:36:24 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	3Xkn073FswYoq2RHLeHUASEdoTfzR895pPeKhQjlfa0=; b=iDQ4/T74ff50sqBu
	blr9FPZuCvPPS43H9PlX7eDG6geW5mbUR3vUj4BFVjYCYbZTdfHxlDHXM5KC3aV7
	Cl9T5ft5lAbcGTx0TaQu80lLKZTEUrC6Z+twVMi9XcwQcAAGbqDU+Mo+NWBQlKbz
	+NR6T37MlAR2DO0CEiUOIzC6gaiQRFWXA1zmVZD9eIPrNJuP1gxTTFQ3xx5Jm+Ri
	mO5ozk8LbMhnJKVr1P6n2wnigg50yqtyMnoP2umahsheHlLpKJPUucDvu6ludymd
	dFpRjNllofsfzvipQoCAKkFqBAHY3SJOhI2vqykiyhosI29ZDAG6dptQLPgOenSP
	IV1pDQ==
Received: from mail-pl1-f198.google.com (mail-pl1-f198.google.com [209.85.214.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4cf5vgve9q-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Mon, 23 Feb 2026 10:36:23 +0000 (GMT)
Received: by mail-pl1-f198.google.com with SMTP id d9443c01a7336-2a7b8fe7c71so24844675ad.0
        for <devicetree@vger.kernel.org>; Mon, 23 Feb 2026 02:36:23 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1771842983; x=1772447783; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=3Xkn073FswYoq2RHLeHUASEdoTfzR895pPeKhQjlfa0=;
        b=RQrVZlEDrle1vpX1bPHa2omo1a/98Lr5/y7BHrP5TMeBnaVCSLWGXGfxqowWEAwkYD
         1Lz/1cf0v7bmy2i6LonfUt7FeRIkGIOOFe4Ye1WiLzo4h/tqjhbusGfcM74/2NzvhiIv
         N8E/IhS6fCq8w5QKCvxcScVoCdberNbGKwwwDFrseyb2EHtc5xzZf3I4OZASgE4YZIdY
         NUj3eyLOid6fiTHwGKslVtPvcJ9B/V77reVHpAvzfWqq/zU6oh1p4TKQ4jzGidBUcqgF
         tmLSErcxMDVbd7RE/9ZXeR6+vQL1ds8aHGSrnq3PtEQ0iKaWjX46uwhlloxjWGNgSd2J
         dX2A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1771842983; x=1772447783;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=3Xkn073FswYoq2RHLeHUASEdoTfzR895pPeKhQjlfa0=;
        b=IjcKmESMKDWWxb5GZKrO4B54htIf/B/e+/dJwl/Ti9MKx+MY0hG/fED8rWZ2+otkJQ
         FdeLo+OpkjiL8OfuHytfoOv41jdAWLc68a6Qn/IDCg/Gr1dNXa51VkalbNMUcy9Mrun2
         SVyrNxNjtHDTWfYRBzVzvysdkjxS9S2l6a7tbWlyKoE502UaGWuT1hpZzx11fIwohoaU
         HoWEA8H74OHNAU+Yw4QzNMcwh0Un31cD/HHZme2cU0Wtz+dEXsmynmRPXkxB5Wc6CnFA
         SkOVfDrb9CQfbCqypG3+/lZlfBGRozVA03pMK602Ok8Sy1FPXx36kYANHOfDeRjBg+wb
         IQOg==
X-Forwarded-Encrypted: i=1; AJvYcCW2yUH0KKug1YzLnSRLgyUbNSqNHe84aXzTUDNieTUVbhzxI55rBVfPX2wpTwSJFp9pdUtRmpqHlwJb@vger.kernel.org
X-Gm-Message-State: AOJu0YyyZgMC0ALlolA8XA57cl/uu1eBTsExP4TCUE/BKQWWdH+Bbb9X
	S0kkqdMXdUiNx1eIN8kHenv0bwryMoIcaAtPsafbB5QPo0crNnMpLv20F7cxoxfbNDAiJGVwv4h
	eCTB6dgW9NtL+SshwxCP0mxb7YmKBG9ymlSYGCDJmXkZ1gAjd7h6OjijwWEOLps5I
X-Gm-Gg: ATEYQzzkNDlF3XRtP5TkAloYOr8kWYlHIORB8OlFp1FPm5JB3hJPRELqwpaJSKgvLk4
	GopgiYxifLcfi/NcfIvKg7g9oluYIkU8UFh9D/d9nlaSHvfqjkIrk2AZMHMcTmA/cSGdAQhn2Nk
	e666ThUgyKRG1tXwqLLp4hrfzWbE+4nSvlDJ3TRveoJkCvr5zNl3bTKJoxmz3r1JX+cdgjzraAH
	cosE91Z8R14lzId61Adzf81IQBfNN8M0+EOFPVVr/H+clp2ASfwoBwvCeJkka86GyGCbW37vS3/
	tGnU9Ab5a0JYMrnBZ0O0yWRbOfl7R5Q/lzxvN+0Yipa5P5AUQHLtMmweuKHuBkII7/zwjzRE9gO
	z2f3xNbD1m1QitBx6GBOCRmnfDwtFLcVbEY3VzZr9JqXDQHUPUA==
X-Received: by 2002:a17:903:2f87:b0:2a0:992c:1ddd with SMTP id d9443c01a7336-2ad745498femr52545915ad.8.1771842983046;
        Mon, 23 Feb 2026 02:36:23 -0800 (PST)
X-Received: by 2002:a17:903:2f87:b0:2a0:992c:1ddd with SMTP id d9443c01a7336-2ad745498femr52545755ad.8.1771842982551;
        Mon, 23 Feb 2026 02:36:22 -0800 (PST)
Received: from [10.218.41.33] ([202.46.22.19])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-2ad74f5dc87sm72038965ad.22.2026.02.23.02.36.17
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 23 Feb 2026 02:36:21 -0800 (PST)
Message-ID: <6d9b9e85-5a54-461d-8f34-daf0c042b2b4@oss.qualcomm.com>
Date: Mon, 23 Feb 2026 16:06:16 +0530
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 1/1] arm64: dts: qcom: monaco-evk: Add Interface Plus
 Mezzanine
To: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>,
        Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
Cc: andersson@kernel.org, konradybcio@kernel.org, robh@kernel.org,
        krzk+dt@kernel.org, conor+dt@kernel.org, richardcochran@gmail.com,
        linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, mohd.anwar@oss.qualcomm.com,
        krishna.chundru@oss.qualcomm.com, monish.chunara@oss.qualcomm.com
References: <20260222173545.3627478-1-umang.chheda@oss.qualcomm.com>
 <20260222173545.3627478-2-umang.chheda@oss.qualcomm.com>
 <at7j3kbdixd7aveiol37pwgudl2hcogtdrvdgcvgbbm3t5irfc@4nvv5ptoezyk>
 <4ae0dd46-5f5f-403b-bbc6-1094159be302@oss.qualcomm.com>
 <01593963-2bff-4a8c-a6f9-c62bcf21ccaf@oss.qualcomm.com>
Content-Language: en-US
From: Umang Chheda <umang.chheda@oss.qualcomm.com>
In-Reply-To: <01593963-2bff-4a8c-a6f9-c62bcf21ccaf@oss.qualcomm.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMjIzMDA5MSBTYWx0ZWRfXyLxIpH7B0MTI
 z4GBwlhqt/mp0oZ8kk8kSeFd31bhK2ZeXTTYgnSpeqJpfhf1aeO+YbxNlluMmJt0DxPYX9tt32O
 h8vWy1ncR00SqozD6qTnqSPchhvWOzqJJblgCuc+KYdmTMzYO8mwtKPN4ztazy9gFDy08Lfa5ot
 KHJv654uLQ3BUytgNwl0P3ddHTCbAI5D4qV1Hi8115LpeZjCjs3fwJ1DNZfAMLqkMT8I6YJT4lm
 80w2+d0hmNNQTyjG8G+KNeErX8DK5Iqy/3q18N9He0NRMTspad8+h7nEcdiVKtbpaRyBdevrhOD
 m5KbdxEujfBz5gVkp5BejousIBwn1J2dP9/13h1hFQiat5IeNduIFkHD26mTVZO/jwoNG0SBYgm
 Bgg7D73p1xjTB9ywNPF3bLFpmZqAgvJl+uHHN/BKX49k+izy76pH4AqyEhLaSym0nPaugLo/oTa
 0t44JoZTbzxrR7AVc6Q==
X-Authority-Analysis: v=2.4 cv=W+A1lBWk c=1 sm=1 tr=0 ts=699c2da7 cx=c_pps
 a=MTSHoo12Qbhz2p7MsH1ifg==:117 a=fChuTYTh2wq5r3m49p7fHw==:17
 a=IkcTkHD0fZMA:10 a=HzLeVaNsDn8A:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=_K5XuSEh1TEqbUxoQ0s3:22
 a=Xo7WPeB2ktV0wMHuqZ8A:9 a=3ZKOabzyN94A:10 a=QEXdDO2ut3YA:10
 a=GvdueXVYPmCkWapjIL-Q:22
X-Proofpoint-GUID: c7LFSzbGirVmteHMKhWMfV6NHbZZpiVw
X-Proofpoint-ORIG-GUID: c7LFSzbGirVmteHMKhWMfV6NHbZZpiVw
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-02-23_02,2026-02-20_04,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 impostorscore=0 lowpriorityscore=0 phishscore=0 suspectscore=0 spamscore=0
 bulkscore=0 adultscore=0 priorityscore=1501 clxscore=1015 malwarescore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2602130000 definitions=main-2602230091
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-2.16 / 15.00];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[qualcomm.com,reject];
	R_SPF_ALLOW(-0.20)[+ip4:104.64.211.4:c];
	R_DKIM_ALLOW(-0.20)[qualcomm.com:s=qcppdkim1,oss.qualcomm.com:s=google];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCPT_COUNT_TWELVE(0.00)[14];
	FREEMAIL_CC(0.00)[kernel.org,gmail.com,vger.kernel.org,oss.qualcomm.com];
	MIME_TRACE(0.00)[0:+];
	TAGGED_FROM(0.00)[bounces-267343-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	DKIM_TRACE(0.00)[qualcomm.com:+,oss.qualcomm.com:+];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sin.lore.kernel.org:helo,sin.lore.kernel.org:rdns,qualcomm.com:dkim,oss.qualcomm.com:mid,oss.qualcomm.com:dkim];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[umang.chheda@oss.qualcomm.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	ASN(0.00)[asn:63949, ipnet:104.64.192.0/19, country:SG];
	NEURAL_HAM(-0.00)[-1.000];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Queue-Id: 60B7A174FD4
X-Rspamd-Action: no action


On 2/23/2026 3:29 PM, Konrad Dybcio wrote:
> On 2/23/26 10:47 AM, Umang Chheda wrote:
>> Hello Dmitry,
>>
>> On 2/22/2026 11:57 PM, Dmitry Baryshkov wrote:
>>> On Sun, Feb 22, 2026 at 11:05:45PM +0530, Umang Chheda wrote:
>>>> The Interface Plus [IFP] Mezzanine is an hardware expansion add-on
>>>> board designed to be stacked on top of Monaco EVK.
>>>>
>>>> It has following peripherals :
>>>>
>>>> - 4x Type A USB ports in host mode.
>>>> - TC9563 PCIe switch, which has following three downstream ports (DSP) :
>>>>    - 1st DSP connects M.2 E-key connector for connecting WLAN endpoints.
>>> Nit: routed to? Is that M.2 only suitable for WLANs? What is "WLAN
>>> endpoints"?
>>> routed to?
>> If I understand correctly - you mean change string "connects M.2 E-Key connector" to 
>> "routed to M.2 E-Key connector" ?
>>  
>>
>>> Is that M.2 only suitable for WLANs?
>> Yes, this is suitable only for the WLAN module.
> If I remove that WLAN module and insert an SSD through an adapter, will
> the board spontaneously explode?
>
> "intended for" is less ominous..


Hmm Yes I agree -- will re-phrase the above statement to something like below :

"The first downstream port (DSP) is routed to an M.2 E‑Key connector, intended for WLAN modules.”

>
> Konrad


Thanks,
Umang


