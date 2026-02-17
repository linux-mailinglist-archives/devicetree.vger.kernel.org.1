Return-Path: <devicetree+bounces-266120-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id kOHrBlhklGkFDgIAu9opvQ
	(envelope-from <devicetree+bounces-266120-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 17 Feb 2026 13:51:36 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [172.105.105.114])
	by mail.lfdr.de (Postfix) with ESMTPS id 9558714C1C3
	for <lists+devicetree@lfdr.de>; Tue, 17 Feb 2026 13:51:35 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 832393028658
	for <lists+devicetree@lfdr.de>; Tue, 17 Feb 2026 12:51:34 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A5EBF35505F;
	Tue, 17 Feb 2026 12:51:30 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="Feb49PJs";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="kH85NwAH"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 767B8355056
	for <devicetree@vger.kernel.org>; Tue, 17 Feb 2026 12:51:29 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771332690; cv=none; b=jWBI0GxeX9I8dBRVuXoPTa93KS86HxpTfotdozKmImw8SlEGpsQrOeDPB/AGaSmJnxItaNNltdtJQYRz/8lb5VZ8fUcOKuuDCHRVM/t3aYq9+YbmU40ZgGSvbOw5v812UQXs7FVHZr1un7NSU6tGDR92uYSSaI9cC02FtRa22Xk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771332690; c=relaxed/simple;
	bh=Ca3zSXt8QGtVOUGGIoxDeLx7u9+fOCOqDTWoTo2FmJA=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=TvjAhvWsAkn5TagHDRErBt8aO/m2vR61vWCwokfPGSniivEEuJuSp9ooe8UhOnlqhheueQUPpVkja5Dbuu0Idtm1BpHJBAqqCzd7pWdIERMVpB635CfthAmls/lmbgPxYf8duIWBIA/V7+t8ib1ndXOg3kTsB3r6I8RokJg0xUs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=Feb49PJs; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=kH85NwAH; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279864.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 61H9L4BI1544897
	for <devicetree@vger.kernel.org>; Tue, 17 Feb 2026 12:51:29 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	asaSuZLFZGJBkgVGIsOK4VggmZQuyypXqKdUggUVJh4=; b=Feb49PJsHWiHVOed
	tqFLfjMEJqVsssCzoNDvHM49DwOnTQrFcnXTwDvCrTMpcHr2awSOlfdT7s5YJRyo
	aEg5/f6TaX0mpHFY3i5NIJBC0LnWjv2sc2eJ5ASzdY0IhocssV1Ha+JJQozZRhLL
	DPmss3aPZt+oWJ/wOs1GNBOIHKt4hVY5GI3FiZ6l5SS/VCoJ6PdTAgEippwQeSvS
	efzaY6j78PyH7cuRvY069ZZA0RDMLu3w1SpdyAc/UY8CSfLzYilDuNZTKl2LXwoE
	YaeqwG+wCE++kDohWncstcmwu1Q4ROsFt2TWI0LlWy160CEpfRIGlVVz63k90rW9
	tfSY+w==
Received: from mail-dy1-f199.google.com (mail-dy1-f199.google.com [74.125.82.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4cc7ajt888-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Tue, 17 Feb 2026 12:51:28 +0000 (GMT)
Received: by mail-dy1-f199.google.com with SMTP id 5a478bee46e88-2ba67282cabso14468125eec.1
        for <devicetree@vger.kernel.org>; Tue, 17 Feb 2026 04:51:28 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1771332688; x=1771937488; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=asaSuZLFZGJBkgVGIsOK4VggmZQuyypXqKdUggUVJh4=;
        b=kH85NwAHZvk5rSI59fZsSBM5JBJfPEMpc2dcQM+QuL1aKiZUvhTCS0PZk1wUe9ll6q
         +KopGukydeZtbBat8ef2ufEdijZX8ksQ3REtNIQXwthgMZUbgSN2+YR9dWHE1IYUeDLa
         syrYDTu/EtuqHfB9lERGgWwrDyj1YZ16sepZuqAMIN9LkksRFRsFza8X+Wd8u0L4uy+l
         FTp4JpDe0QPfu0kajKa2bivSiN5zB7Jb2B0bmmDyf5eGrFVsKJjmT9Erf7/ZyV+yY+Zd
         37brRn64p4Vj1bLNyXY1SJvarUkJMloJSsiI2btIxL7HNYI1SnoazOWYLTDFCHGbdZpq
         SNUw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1771332688; x=1771937488;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=asaSuZLFZGJBkgVGIsOK4VggmZQuyypXqKdUggUVJh4=;
        b=iuA2CYHUho3tjIwxFcT4GvIsHkHlZPXVm7/+lP6mdJHiwGrt8g5sTbw/uxaSn0vpYK
         gv797JgKILgVL6cyEFjBuTcd1787seIDriRw37184p7A76edugGyZtCY1HaN+Kd4Tm6F
         AjBs+AieTVFdbOSt0LlamuZykcx62Sto2JnwVN/PLwi7pmlETjAJoCnb1Kat3Y3Bb6Bx
         NqYjA0Pkyr0EGNUNjOr3MVsQfNBle0U6E12Bs0Rk6ST1rOUMUD9AAsyCld5zQMka6HTH
         WZHm5w3MiKTfBhDoyXUC0M+i0z2duq8asaru7qYoj6u8Edb5/JknZG2dLe4sMp21oSYA
         hFWA==
X-Forwarded-Encrypted: i=1; AJvYcCU0WRbuawNBkwO1c2xczJD0XG/4Sd45nY6HkmPRdDJ+I+mPguBNHHDAP8Xi0cPocHHXtp4jl7Zt3jt2@vger.kernel.org
X-Gm-Message-State: AOJu0YwfwVaDd/T8b+b1Y743w0zwjooOeaDtrWnlBY63ykQuO1fL0+Af
	1D1HlXHli9g6BeyRWwqXUmO1pUdfv43e42gKck7TzhAQCvwj695SJm5RCSUzY/BI1PCEPbd7G8v
	AHlQqLnMiq9cuTY6yyws7n9qcLIrJVlz+e3Lmnpg7qkk3GE7moPrFtjsLI4uWmOuvAXKbTK8g
X-Gm-Gg: AZuq6aIPa9KSttmHKGIb3YpXFhyinWvj6v2iJVy/X1Q9JVUVFJvQlMG1DtGoyVmPOiA
	yldbiDH9wzv4hIFcurRsr8btEYIemoUO+Lr5Kfgb7E+n08DG51wcgZwZ59/bMhBp28X5skA5NLg
	a9oTuBcQaazLtIK+Fudfq6aSTGjk8OR1QLuMgs6i1HvC4yqxB0mDAWXyB75ym/yCp+K7A03v/+S
	z1NQgFHMo4UcpRYQrCb2GhGVlYfAphYjiwg3ypvU8W51k3KXBFaLA4IOK/+Ib6NRh9+0OsSj9B3
	fXT3z261ljcDFADNm8udZ6eeXHBfWSfEn9VAqsgaOhHKGM7Be402KyDhRlaD1d5MFRpuLoJlVzg
	tHHYzboHgF5K+VfTedADctPO6n0x/iA02i1pb3Z4vqU+fcr38
X-Received: by 2002:a05:7022:439b:b0:11b:9386:a3c5 with SMTP id a92af1059eb24-12741bebf03mr5406397c88.48.1771332687834;
        Tue, 17 Feb 2026 04:51:27 -0800 (PST)
X-Received: by 2002:a05:7022:439b:b0:11b:9386:a3c5 with SMTP id a92af1059eb24-12741bebf03mr5406377c88.48.1771332687205;
        Tue, 17 Feb 2026 04:51:27 -0800 (PST)
Received: from [10.218.16.122] ([202.46.22.19])
        by smtp.gmail.com with ESMTPSA id a92af1059eb24-12742c64282sm17876010c88.5.2026.02.17.04.51.22
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 17 Feb 2026 04:51:26 -0800 (PST)
Message-ID: <cdbef8d2-df96-4a41-98eb-3acc747a0aaf@oss.qualcomm.com>
Date: Tue, 17 Feb 2026 18:21:19 +0530
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v4 2/2] Bluetooth: qca: add QCC2072 support
To: Krzysztof Kozlowski <krzk@kernel.org>
Cc: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>,
        Bartosz Golaszewski <brgl@kernel.org>,
        Marcel Holtmann
 <marcel@holtmann.org>,
        Luiz Augusto von Dentz <luiz.dentz@gmail.com>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Balakrishna Godavarthi <quic_bgodavar@quicinc.com>,
        Rocky Liao <quic_rjliao@quicinc.com>, quic_mohamull@quicinc.com,
        quic_hbandi@quicinc.com, janaki.thota@oss.qualcomm.com,
        linux-arm-msm@vger.kernel.org, linux-bluetooth@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
References: <20260217054731.3058567-1-vivek.sahu@oss.qualcomm.com>
 <20260217054731.3058567-3-vivek.sahu@oss.qualcomm.com>
 <mt4vrzmq7caqddwtz7nc3tn33zxh7uupoxfmk5pfqobhuex43f@se64qz7qvuh6>
 <19d3cced-f630-4a6b-853e-3798487fd769@oss.qualcomm.com>
 <20260217-mighty-organic-oxpecker-2ed848@quoll>
Content-Language: en-US
From: Vivek Sahu <vivek.sahu@oss.qualcomm.com>
In-Reply-To: <20260217-mighty-organic-oxpecker-2ed848@quoll>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMjE3MDEwNiBTYWx0ZWRfX/ZOWZtg/hPEw
 jUFTQhQ+qHoEVe2PsZMYAHv89z/+6GKTUY/MgQpyQp1nSdQgKhhjyGeZ4QuJBOcd+YwvhV8BUzg
 nDiI/6iUbF37QR2MYJiXQ6JO5FxJ5J10H1AGX13Nn147w2Hrn2r8RQiSCDCI8nXW5eYr3g3L6pb
 QktjYRNIdJ+lEJ2sXF3+G6tpxussktXBKqbWEzu+7obIRZVDKwB8ZXNNPMWDvweosYeDxqh4YZN
 b7840fbm6+xsPTtZpN1qMFqdr2Wm+cVDUT10kp3pcmh8us7yVDbd6o2NL9atnVwrCpuzVEFuPoV
 EXzO5SsCjtEv3OhhwFFZ2dH9/Uz93OJb3r0IZ+AOsU4rt2lEWDRY5tJG4rsVtmRt0SO2e7uxUxw
 oWm1KEetx7pmx64gwkXbSn/MghEPW5BK0+G5Ed/97fdMogsqC5Es9+CesnVCSfIBWFnkfzuujku
 mb3uXhbYiz/I6SKn/Cg==
X-Proofpoint-ORIG-GUID: TONYQwE4Gd3s2aMUUkOosCSJqJLLmuz3
X-Authority-Analysis: v=2.4 cv=BryQAIX5 c=1 sm=1 tr=0 ts=69946450 cx=c_pps
 a=cFYjgdjTJScbgFmBucgdfQ==:117 a=fChuTYTh2wq5r3m49p7fHw==:17
 a=IkcTkHD0fZMA:10 a=HzLeVaNsDn8A:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=Mpw57Om8IfrbqaoTuvik:22 a=GgsMoib0sEa3-_RKJdDe:22
 a=IBWEejItevxuk87JBWgA:9 a=QEXdDO2ut3YA:10 a=scEy_gLbYbu1JhEsrz4S:22
X-Proofpoint-GUID: TONYQwE4Gd3s2aMUUkOosCSJqJLLmuz3
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-02-17_01,2026-02-16_04,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 impostorscore=0 spamscore=0 lowpriorityscore=0 suspectscore=0 phishscore=0
 clxscore=1015 adultscore=0 bulkscore=0 priorityscore=1501 malwarescore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2601150000 definitions=main-2602170106
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-2.16 / 15.00];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[qualcomm.com,reject];
	R_DKIM_ALLOW(-0.20)[qualcomm.com:s=qcppdkim1,oss.qualcomm.com:s=google];
	R_SPF_ALLOW(-0.20)[+ip4:172.105.105.114:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-266120-lists,devicetree=lfdr.de];
	FREEMAIL_CC(0.00)[oss.qualcomm.com,kernel.org,holtmann.org,gmail.com,quicinc.com,vger.kernel.org];
	DBL_BLOCKED_OPENRESOLVER(0.00)[qualcomm.com:dkim,tor.lore.kernel.org:helo,tor.lore.kernel.org:rdns,oss.qualcomm.com:mid,oss.qualcomm.com:dkim];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[17];
	MIME_TRACE(0.00)[0:+];
	DKIM_TRACE(0.00)[qualcomm.com:+,oss.qualcomm.com:+];
	ASN(0.00)[asn:63949, ipnet:172.105.96.0/20, country:SG];
	TO_DN_SOME(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[vivek.sahu@oss.qualcomm.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Queue-Id: 9558714C1C3
X-Rspamd-Action: no action



On 2/17/2026 1:23 PM, Krzysztof Kozlowski wrote:
> On Tue, Feb 17, 2026 at 01:17:29PM +0530, Vivek Sahu wrote:
>>>> +		case QCA_QCC2072:
>>>> +			snprintf(config.fwname, sizeof(config.fwname),
>>>> +				 "qca/ornnv%02x.bin", rom_ver);
>>>> +			break;
>>>>    		case QCA_WCN3950:
>>>>    			if (le32_to_cpu(ver.soc_id) == QCA_WCN3950_SOC_ID_T)
>>>>    				variant = "t";
>>>> diff --git a/drivers/bluetooth/btqca.h b/drivers/bluetooth/btqca.h
>>>> index 8f3c1b1c77b3..a175ac31e7b2 100644
>>>> --- a/drivers/bluetooth/btqca.h
>>>> +++ b/drivers/bluetooth/btqca.h
>>>> @@ -158,6 +158,7 @@ enum qca_btsoc_type {
>>>>    	QCA_WCN6750,
>>>>    	QCA_WCN6855,
>>>>    	QCA_WCN7850,
>>>> +	QCA_QCC2072,
>>>
>>> Why not keep it sorted?
>>>
>> As mentioned in the cover letter "qca_btsoc_type" enum in
>> drivers/bluetooth/btqca.h contains all the soc type which need to be enabled
>> for BT enablement on the target device. There are few places where logic of
>> framing packets transferring between SoC  and Host depends on the which
>> generation of the chip it is, refer api "qca_read_soc_version". So It is not
>> sorted in btqca.h file.
> 
> Neither in previous patch comments nor here you respond to actual
> comment. You just write something completely irrelevant.
> 
> I don't think any of this should be considered if you are not
> responding to actual comments.
> 
> 
> Best regards,
> Krzysztof
> 
There is high impact on the existing design if i make this enum sorted. 
We are considering your comments regarding sorting for next commit not 
for this commit. Can we have approval for this commit if all other 
changes looks fine.

