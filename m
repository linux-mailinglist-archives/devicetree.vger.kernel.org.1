Return-Path: <devicetree+bounces-248966-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [172.232.135.74])
	by mail.lfdr.de (Postfix) with ESMTPS id F234ACD7C7F
	for <lists+devicetree@lfdr.de>; Tue, 23 Dec 2025 03:01:14 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id 6A624300094C
	for <lists+devicetree@lfdr.de>; Tue, 23 Dec 2025 02:01:14 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 2CEEB202C48;
	Tue, 23 Dec 2025 02:01:13 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="KQ0RakS1";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="GQzNhReC"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BE04F7082F
	for <devicetree@vger.kernel.org>; Tue, 23 Dec 2025 02:01:11 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766455273; cv=none; b=oFhxatJXYkZcT5qAF0VFMuXWi8AMSRV6tgKDlmBT0wczchYlcZtXDuzaSJ87bQkb67bz5wrdyY7B4CjZJGkB9JT0P0RRzBcKquljPgiG9pxwx6Th/pmf3nFnczsEp4zjA9cddaicbTGtRJAuJ3lDITLfLwU1NrVXQw24jBOJsdQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766455273; c=relaxed/simple;
	bh=5XILKwM1zUCkPNFPgBJVO0VqFRH93jWJg6urthwgWBA=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=YXtTUElNXmKBml176PKo0zbiRPyl/8EJyTjo6ZzMDhzbNL9UQimX6N1CebxvHEGjLqXqDxq1OhsJvgpfZ/KgJ52VtBaV/m+CrbQLL+CewqQAPquivFOySa6SNnqkhW8QForIKGJ1FvFXNza9lf0TDLkDaPJVF3MVEoh87dQp2sY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=KQ0RakS1; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=GQzNhReC; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279862.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 5BMEC1In1568831
	for <devicetree@vger.kernel.org>; Tue, 23 Dec 2025 02:01:11 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	CnurDZ0wT1xrsan4bndi1j6HFiEONKCW0WPRXigA3Pc=; b=KQ0RakS1bUo1WgHN
	3Xw321kAPJ5DNGP71izy1/VpNVYhT9zNGY3h08fjYFmsLqIt9PkC6HbwR5zC6t9D
	vgE8liJ4C722Bm2sypBQKg0gaPMBJSWdfPDmU5DwPU20Qqk3LNvbmoNu32i/ou/a
	c2SVoYjMxaFMaeQ5hz5SlS6Yf+QdqzABh/iioRCKnh6ZXUo9l/cL3bCNAgAZUFDj
	GFrWKUNjXN/aQYS+WxOAOGru4qNfqGTTIHZsYk51NzfjCpG7CxzPH+P4mCD6IrzR
	/RCp7wnrZLOorf4F/vMBksMMsplCy/Kx3rtloNKTM2pEZtilJ52N3BZ9w/+xKMO3
	o8FNuA==
Received: from mail-pf1-f197.google.com (mail-pf1-f197.google.com [209.85.210.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4b76yy1rrf-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Tue, 23 Dec 2025 02:01:10 +0000 (GMT)
Received: by mail-pf1-f197.google.com with SMTP id d2e1a72fcca58-7b6b194cf71so8540685b3a.3
        for <devicetree@vger.kernel.org>; Mon, 22 Dec 2025 18:01:10 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1766455259; x=1767060059; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=CnurDZ0wT1xrsan4bndi1j6HFiEONKCW0WPRXigA3Pc=;
        b=GQzNhReC89YK0ZesUl6LzE41irIKkyfRcUqyHMaB8gqZcMKySQHXckTCuFCkIb0gj0
         86nICN17UAe0JKDm/3LuhklklR7fkCt9UkAz4FO7SkJL8mKPujJW9Zt1am/xOC3/ZFPR
         4f5AJjUk7yDcmomJojqGXHsThDX30qZz6/MfW1mC5EHAfGQ6Ec7Vru/B6whNMyv6nVlt
         pO5oqcmL8mzAi80t1b8kiuQQds7uH2Yt5lLFwMl47/+/1Bl59/SXxNbZwGU9/TYPWQ2M
         JIfqYhCs2j9S2LV+CvxN8eYj6cbqoRaPhjaVUWE0sh3AYuV5bgGlXe+Pn++Ziv0Ko3rR
         3ppg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1766455259; x=1767060059;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=CnurDZ0wT1xrsan4bndi1j6HFiEONKCW0WPRXigA3Pc=;
        b=TMD9m9UkWEq7oWQ4dX1svYar6mC5aq6NK4W+Sg7mWXJfvbdVkSuQKE2VJpPzqMBE9M
         OiT/rSJRUBkGYfLBIjcMteKyRFhcXONSXP8Fy+y+bYg/Beq5t9UIx2GRA1Otb3jdzygc
         R6gHDNlHZPubnqIYyo4ulQMaF2lfQIaYEPveSu370lT1mbR101egXO8PjTATQuOeDZWT
         w0k2SOREFPo+P/j25HuJD30nb23yWHEOC4/bSIx+Qvp0GJNE1EqkCut5N3QCRqg3gmOL
         pjnOU9d7QcE6FstSG7fKSIN+i0yAMHBpv8hyq7J7tpAcykVaYywL2wjaIPddp0doeLu9
         1NhQ==
X-Forwarded-Encrypted: i=1; AJvYcCWmuQz22F1F6fDADtxCEFZBqJbfX72lI/Vu1lE0+W8lhS2wSm+ydkIobK5k8xjh7M4OB+D515x832+Z@vger.kernel.org
X-Gm-Message-State: AOJu0YycW9MfqvU9ABgNvtqLCFuLWidL9Qx2kNsgBPtZxdbwq+tvHeqj
	dLSN+Tl6JM5AoPQ4DWr54uromDUicbcfJqgqyB0guZPSL293VHcBSpc+BxJbc3XuHbvuLpRcLUu
	QI+UuTCYhb9WKaUc7kqwp/sRg34njx7SqWneEtEe7wZ/8l/1pTlQ0rElP10kUaGBt
X-Gm-Gg: AY/fxX7sOahl8TWctbD0FLIG6PzkZxrOCf77doiE8aE6QNQYRtq6oi4AfhFgFIDt6hT
	DM1UDG4G9ZB3AyI3L/oDa9xJyfyx+0vrbqtYYTHjWrJfDcW69EP1Qu6wRtZDTJy7HMwx7eJzsCw
	wjZ4c/4SurAgsrdiY74I4hmLwN4ZJ+5gizYBpGhEx9vLL8FIw5aPz3T2/vy3tT3IuTsQexWSmtG
	O178ekA1bAEsrlPlmzP4eeCatLZcqTCiw9sqwjkmzpzPrS35eZpDZoiDGSTAjC+kbOOEdWgBpSN
	41/x+vy5lDSZfUUCT6jQI7Op/jUyU6412qlPQAhkZYKwrDWeWSouCWFcdR6fxxsTF3c5/tRj3/n
	j7XdNR0H4af0ilI83giBnxlZOiRaw9h7bwH4rlhBv3ZNRRkvwEqCj2hAVtTcmeZuwDXSCzndEBH
	NQ
X-Received: by 2002:a05:6a21:6da2:b0:2dc:40f5:3c6c with SMTP id adf61e73a8af0-376aacfc5dfmr11879352637.54.1766455258958;
        Mon, 22 Dec 2025 18:00:58 -0800 (PST)
X-Google-Smtp-Source: AGHT+IH25vbWFU0p71Tep6FZOAmX7HMXPPX1Wvh0SDZmjWFXpUcRbXxv1IUkjtawMQgiFrIMlNyx0Q==
X-Received: by 2002:a05:6a21:6da2:b0:2dc:40f5:3c6c with SMTP id adf61e73a8af0-376aacfc5dfmr11879305637.54.1766455258383;
        Mon, 22 Dec 2025 18:00:58 -0800 (PST)
Received: from [10.133.33.8] (tpe-colo-wan-fw-bordernet.qualcomm.com. [103.229.16.4])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-2a2f3d5dea1sm107249835ad.81.2025.12.22.18.00.55
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 22 Dec 2025 18:00:58 -0800 (PST)
Message-ID: <862aa161-fd99-4938-98c5-73593b03d215@oss.qualcomm.com>
Date: Tue, 23 Dec 2025 10:00:53 +0800
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 3/4] arm64: dts: qcom: Commonize IQ-X-IOT DTSI
To: Krzysztof Kozlowski <krzk@kernel.org>
Cc: andersson@kernel.org, konradybcio@kernel.org, robh@kernel.org,
        krzk+dt@kernel.org, conor+dt@kernel.org, linux-arm-msm@vger.kernel.org,
        linux-kernel@vger.kernel.org, devicetree@vger.kernel.org
References: <20251222-purwa-v1-0-14ab9316e5ff@oss.qualcomm.com>
 <20251222060335.3485729-3-yijie.yang@oss.qualcomm.com>
 <20251222-fluorescent-turkey-of-gallantry-df0906@quoll>
Content-Language: en-US
From: Yijie Yang <yijie.yang@oss.qualcomm.com>
In-Reply-To: <20251222-fluorescent-turkey-of-gallantry-df0906@quoll>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMjIzMDAxNSBTYWx0ZWRfX61t9n/wBHbE1
 y9b38ZjB1onbBXaDnrfZJyfBSAahCgaPXXISG5jxsaDwNLCICbeA7foER86RqAmzldqcAoAT55s
 A0OAZbJUPRPDK2BMt7NWDnSmeD2ShQTvl0ZZSNle8kWjEqQIW7NHDXB2se59m3Le94hja0yYgbm
 FAvkldnk2hCRSQrVm4gebE6DGu0mv0UK5B+Sd6YbkTj6lw3DVVuyr7gHExHszKUx6MT2O+batHD
 8Nqk3RM6kfl/tmncQ+V1NL+JPPsuIhGx4rnjVWPmOZYQXPjsb/R9nNrP5nbs0gUGyF1YvxpOYUb
 ten08vYpw2Raa9OimSanKEzBa1HOEGDGuVpMGVAknZYrCtlhJ+P7ZcMop0xcJaetFHALLAnmyZB
 /OvzukSzWQPkuoC1RLSiM5HPcg2aN7y1bSZCJMAKKq54Kf0s5kwDxj3R/79QjPBCe3ySN6ieULB
 +rF4SYyJ08aaJ1zZdDA==
X-Authority-Analysis: v=2.4 cv=Zb0Q98VA c=1 sm=1 tr=0 ts=6949f7e6 cx=c_pps
 a=rEQLjTOiSrHUhVqRoksmgQ==:117 a=nuhDOHQX5FNHPW3J6Bj6AA==:17
 a=IkcTkHD0fZMA:10 a=wP3pNCr1ah4A:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=EUspDBNiAAAA:8 a=qwzK7WmDVYCsVKynHC0A:9
 a=QEXdDO2ut3YA:10 a=2VI0MkxyNR6bbpdq8BZq:22
X-Proofpoint-ORIG-GUID: uYRgPpBOgHhPcDZdrZwFSKrSECcDVYHC
X-Proofpoint-GUID: uYRgPpBOgHhPcDZdrZwFSKrSECcDVYHC
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2025-12-22_04,2025-12-22_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 lowpriorityscore=0 priorityscore=1501 malwarescore=0 impostorscore=0
 phishscore=0 spamscore=0 bulkscore=0 adultscore=0 suspectscore=0
 clxscore=1015 classifier=typeunknown authscore=0 authtc= authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.22.0-2512120000
 definitions=main-2512230015



On 12/22/2025 5:11 PM, Krzysztof Kozlowski wrote:
> On Mon, Dec 22, 2025 at 02:03:28PM +0800, YijieYang wrote:
>> From: Yijie Yang <yijie.yang@oss.qualcomm.com>
>>
>> HAMOA-IOT-EVK and PURWA-IOT-EVK share a similar board design. Extract
>> the common components into separate files for better maintainability.
> 
> SoMs do not share actual hardware. DTSI does not represent what looks
> similar to you, but actually common parts.

The two SOMs share the same hardware except for the SoC. What are your 
suggestions for the file architecture?

> 
> Best regards,
> Krzysztof
> 

-- 
Best Regards,
Yijie


