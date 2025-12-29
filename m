Return-Path: <devicetree+bounces-250287-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 5712BCE81A9
	for <lists+devicetree@lfdr.de>; Mon, 29 Dec 2025 21:08:11 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 5FCB630133AC
	for <lists+devicetree@lfdr.de>; Mon, 29 Dec 2025 20:08:07 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C681525783C;
	Mon, 29 Dec 2025 20:08:06 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="NwoXZg7N";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="i2hFpioB"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 43D64253B59
	for <devicetree@vger.kernel.org>; Mon, 29 Dec 2025 20:08:04 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767038886; cv=none; b=ZfhU7IciXcW7jSsLwdcYERWJ/bOpknZWAn8YoBeVDC9gIRXrO7fU7NjU14U6uWtYkR/5FjnKHcO4fYtQCVimNVGcrnZYLxuPCrUIfN9DWQeVlLFDMjmj0TIwRKMzKNu2oZh9skOcYJ/nLTLRFjgryf8UGcs5frSt9Jjsy3vW+6E=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767038886; c=relaxed/simple;
	bh=O3TIQe3eBg6hoOPn8aZAIRDkP8OO4TZCgG5EdJrD3BM=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=MQhWvN724aAVZftrIHDrveOnnhu3GUapWhZGSyb2jlkv/RgiiVt8seGpL/TZbkFcbB6LbH7f8IUs5mi/iwr1l8y0QGOsmoSEjZqhykPO/wmacDykHIRDps25NqZUU6wS0zj3jMkN3bwmpOjhIk+2SwvMBUROEJT4zK9jdUp7XU8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=NwoXZg7N; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=i2hFpioB; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279866.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 5BTId5111463361
	for <devicetree@vger.kernel.org>; Mon, 29 Dec 2025 20:08:04 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	5N8eqncn4n2+tB7oUw8zh56HuDzDVdscCzUPZ2gpa8I=; b=NwoXZg7NC/FaGOFC
	m5kz22shEhAO7wd1F281vf9zHXZot8iFWRRFZuHpAHY2FQWLnL/rFPF9T5YfZisM
	GxvEVeXeE/njt4iaRTLDfKXiN3KsojNeMrxAJIZwEO3vCU4eevvTXC85RupqNiTt
	3se6+qoNLV/4IY0yg4jq3xBfxhOYoDgNQFVQXihqiSpPT71eOt4HuAejBNVL6Tbc
	N6Op4CrwdDhMbsxCUCRhhHLf83LUwm7Krh3v67p9D8LTlASVZ8v9RIUCEjot03AS
	JcoG2RDpC6OIwsj6rN4Ar0MbnhXIhlyQInhV8i3sMlfZplQT7evIUqZ+QHaa5nph
	N7mHeQ==
Received: from mail-qk1-f200.google.com (mail-qk1-f200.google.com [209.85.222.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4ba8r6d85d-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Mon, 29 Dec 2025 20:08:04 +0000 (GMT)
Received: by mail-qk1-f200.google.com with SMTP id af79cd13be357-8b24a25cff5so2665788185a.2
        for <devicetree@vger.kernel.org>; Mon, 29 Dec 2025 12:08:04 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1767038883; x=1767643683; darn=vger.kernel.org;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:from:to
         :cc:subject:date:message-id:reply-to;
        bh=5N8eqncn4n2+tB7oUw8zh56HuDzDVdscCzUPZ2gpa8I=;
        b=i2hFpioB2Taoy1UdhyAoozTSleKcyruIKt/ekcKWOVJJ8gwv+mHKllevQBFJd+w27h
         pVuAYlCKAFO2xh7VKEcX2YrpxdpAwLxZ+VqYcE6oRNjUmE8xMlYkIvzvDitEOfD+X2TJ
         OBEouY+PGAfQCWCS/W05W1rgFVi+O+l+EwRPLIXUP5+VxT8/BZqbgJKSHWjAariYmviU
         RWlXGijYOdlqYpnrmON6HUtHZ36KNG2HxhO1aF3Hh3LcwBNcBPSsV9T7fp/tJ+1djedg
         2D5qDCOFJsQp2y/wrEuuDiMoWS3oxsT8oOoxsPlxHFC5yEsMz29ufg6/fMIqFmQhQ4iv
         jQvA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1767038883; x=1767643683;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=5N8eqncn4n2+tB7oUw8zh56HuDzDVdscCzUPZ2gpa8I=;
        b=QcRpIoxVNWuU37mgAlw8yeMhUA2/2PWBOcxyjzctRZvIDkmW2aap0Fg9FPqS0eI9JA
         JYaUB5eXUdyfaD5YVE00/bZRCxcvzDUjaYn2241HJ2CdhFpTRudhRjhBT+s2OJQz6g8p
         VNO0ROEDKG2tRxf0eKy8c4s+sCV6Pei20NeJYJCOcRsdCx7a7etl7wxEOyoFnV/HqEMb
         KZIuHRhZNBG9zz7kfCtP/1YKwkd30T93SWxQCcwKDKEIikSuPLU3X9nPxLQGUj9yoKxU
         RryDRU4iCqqKbOwzOSERa7E7p9CQOzQxgudtXnFNqWHwEwaFCH49exYz1Z+FGwbFRXhP
         YtDg==
X-Forwarded-Encrypted: i=1; AJvYcCXxt7ZwDM6OTWXu+w0Jt7jVZpeKlr7jxBkyGESR5jTsfz1CHWWL9hAhDx4rnSQ0y8nmVLNqG7uK3tS0@vger.kernel.org
X-Gm-Message-State: AOJu0YwTNTREtHGfom39rSVx5a4Q8MROBO/pWyQAyNtM9wUoLNW+AYgK
	qDqHQoyrL8MJeTInwL7yCUKF3GE5ZUsAhB9dNaeCFtBd8QGk98ofVqm1R6GGnDimDddIMNed1+z
	uaBVfNsWtcYtvOPuEX+FNkEvlTMnfpw9lyyT3lKhDzzh6oH3kdoZZqrChQKXqoyCB
X-Gm-Gg: AY/fxX6HF5mZiQfJv24pvlOJXMQSPHvo2Zin3Ei1ddfFP0smjMvR71kWSGGdH6vyxAl
	/MgM9YJi758BpWUSc5m9KQm/m8WwR8391JjYBGm4ICuQIOk6V1XGKlgmxaxyFmKBFPRbhXakVIf
	kd4a3bztlau/m9/f4xocHsOg9G8x9tiW9EsMaBpodsnAAkmj/EneuY6KAYYt8ouIuca8Y5KTixL
	MtIA2hu2F0fqLrrLA5tGJqWXV8wxfKbnLxyPnx+hyrKq2nmmTRG5D2JBS8OZV6KIp/PPKohVLzL
	iyjRKb8l3cEPkS2iLQ/RWAcsL55aiELdy1794wiXF1ZImYMd4i6KcHiKxpS3hWtNJ3rGzE+A+zj
	TdxyL7LKz6Wv+fY780gAfOz8XLIIMOOKbVjDOHn5NMrWm47tTn/fvzIgU4pYaWee0DK6XAdJ+/w
	HZwVSZSJQTGKrFPGLfdn9+2oc=
X-Received: by 2002:a05:622a:4183:b0:4f1:e97b:2896 with SMTP id d75a77b69052e-4f4abd753bfmr524445551cf.46.1767038883204;
        Mon, 29 Dec 2025 12:08:03 -0800 (PST)
X-Google-Smtp-Source: AGHT+IHcRYYoEvRrwZEufw0pP3LR+wrKH1npB7/g9zRl9nzTVfBsAlV8HMP1uikUn3AtdF+Ss0MUjA==
X-Received: by 2002:a05:622a:4183:b0:4f1:e97b:2896 with SMTP id d75a77b69052e-4f4abd753bfmr524444811cf.46.1767038882583;
        Mon, 29 Dec 2025 12:08:02 -0800 (PST)
Received: from umbar.lan (2001-14ba-a073-af00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a073:af00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-59a185d5ea6sm9465233e87.5.2025.12.29.12.08.01
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 29 Dec 2025 12:08:01 -0800 (PST)
Date: Mon, 29 Dec 2025 22:08:00 +0200
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: Krzysztof Kozlowski <krzk@kernel.org>
Cc: Yijie Yang <yijie.yang@oss.qualcomm.com>,
        Tingwei Zhang <tingwei.zhang@oss.qualcomm.com>, andersson@kernel.org,
        konradybcio@kernel.org, robh@kernel.org, krzk+dt@kernel.org,
        conor+dt@kernel.org, linux-arm-msm@vger.kernel.org,
        linux-kernel@vger.kernel.org, devicetree@vger.kernel.org
Subject: Re: [PATCH 3/4] arm64: dts: qcom: Commonize IQ-X-IOT DTSI
Message-ID: <j7i2oryel7d5u6gsbb54iaer7amqre2vzwkb6fieybascvonwi@bmt7zmcvg7yi>
References: <20251222-purwa-v1-0-14ab9316e5ff@oss.qualcomm.com>
 <20251222060335.3485729-3-yijie.yang@oss.qualcomm.com>
 <20251222-fluorescent-turkey-of-gallantry-df0906@quoll>
 <b8f0e8d9-449e-4f32-832e-f1d5597ff496@oss.qualcomm.com>
 <6421f044-2b07-4518-9edc-b9b2ef49f4fb@kernel.org>
 <8bcf058f-5bf9-46ce-a188-e94954101f2f@oss.qualcomm.com>
 <4f79d090-7d1c-4fb3-a835-a7e4ff96f79c@oss.qualcomm.com>
 <448f2efa-5b1e-4855-a62d-2e375938b36f@kernel.org>
 <c7983b8c-5085-43a0-bd5e-1194df2f0ee5@oss.qualcomm.com>
 <a2b62af6-fe17-4c4b-9dea-4ba9cf312765@kernel.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <a2b62af6-fe17-4c4b-9dea-4ba9cf312765@kernel.org>
X-Authority-Analysis: v=2.4 cv=Raidyltv c=1 sm=1 tr=0 ts=6952dfa4 cx=c_pps
 a=hnmNkyzTK/kJ09Xio7VxxA==:117 a=xqWC_Br6kY4A:10 a=IkcTkHD0fZMA:10
 a=wP3pNCr1ah4A:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=EUspDBNiAAAA:8 a=-EYVSfHI5QxSVCcxwr0A:9 a=3ZKOabzyN94A:10 a=QEXdDO2ut3YA:10
 a=PEH46H7Ffwr30OY-TuGO:22
X-Proofpoint-ORIG-GUID: QMC__f2lHmz2sHXFHmIPe1ETZv9264zP
X-Proofpoint-GUID: QMC__f2lHmz2sHXFHmIPe1ETZv9264zP
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMjI5MDE4NCBTYWx0ZWRfX7PLaK6ktDZjL
 ajyZQaI6+jOHOYIKCPCc7E3VMuiIx0yjkQ/+x5G90wbG2v6K+n4AWZW8Ob23tc7o6aGZffxw/cW
 PoLI/nn4Mm9zYqn77NEtmERlKVZk/WnKXB4LvugnmVDAwvDvJP8MIs1SwKyDjUpBiqogXjoNwB4
 SHVtQZn0Lfp9S40Bs4WbHDZcbm5S+YPZkkzd04jObE/YZ8P2zx4k8msqx632pXrNHAjZDbIV3sM
 oOptrdI5dcidui52W4Gx/cQvPEzNWdrOE1RvmRmqTkt1Fvau5Q4faTU4t8nCi7cQViGTZS1I1CR
 sDgbeu8sd1o+ImBI1ocG+r2pJmDXUb/jmejz/NBkvNmMbAsbpN4Co9FbjynqfY+dxv7NlRWmet0
 QEoBx3gRw0yKGXr9nbPx6+3SYT1PjbzDdA9LoobgUPZiakh6J4cEvyFg+22TARN9aeL+N8Z2POL
 XAq0hDeHjhwZQHenAcw==
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2025-12-29_06,2025-12-29_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 adultscore=0 clxscore=1015 phishscore=0 impostorscore=0 suspectscore=0
 lowpriorityscore=0 bulkscore=0 malwarescore=0 spamscore=0 priorityscore=1501
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2512120000 definitions=main-2512290184

On Mon, Dec 29, 2025 at 09:47:05AM +0100, Krzysztof Kozlowski wrote:
> On 29/12/2025 08:38, Yijie Yang wrote:
> > 
> > 
> > On 12/29/2025 3:21 PM, Krzysztof Kozlowski wrote:
> >> On 29/12/2025 02:23, Tingwei Zhang wrote:
> >>>
> >>>
> >>> On 12/24/2025 8:12 AM, Tingwei Zhang wrote:
> >>>>
> >>>> On 12/23/2025 9:41 PM, Krzysztof Kozlowski wrote:
> >>>>> On 23/12/2025 04:38, Tingwei Zhang wrote:
> >>>>>> On 12/22/2025 5:11 PM, Krzysztof Kozlowski wrote:
> >>>>>>> On Mon, Dec 22, 2025 at 02:03:28PM +0800, YijieYang wrote:
> >>>>>>>> From: Yijie Yang <yijie.yang@oss.qualcomm.com>
> >>>>>>>>
> >>>>>>>> HAMOA-IOT-EVK and PURWA-IOT-EVK share a similar board design. Extract
> >>>>>>>> the common components into separate files for better maintainability.
> >>>>>>> SoMs do not share actual hardware. DTSI does not represent what looks
> >>>>>>> similar to you, but actually common parts.
> >>>>>> Purwa SOM board and Hamoa SOM board share same design. They share same PCB.
> >>>>>> The difference is only on chip. Purwa SOM board has Purwa and Hamoa SOM board
> >>>>>> has Hamoa on it.
> >>>>> I do not speak about boards. Read carefully feedback and respond to the
> >>>>> actual feedback, not some other arguments.
> >>>>>
> >>>>> NAK
> >>>> In this change, the SoM hardware except SoC is described by iq-x-iot-som.dtsi since it's common between Hamoa and Purwa. Hamoa and Purwa SoC hardware is described in hamoa.dtsi and purwa.dtsi. Hamoa-iot-som.dtsi includes iq-x-iot-som.dtsi and hamoa.dtsi. This change could reduce the duplicate code and review effort on a totally new purwa-iot-som.dtsi. If we found any bug, it can be fixed in one common file instead of two separate files. Same idea is used in x1-crd.dtsi. X1e80100-crd.dts include x1-crd.dtsi and hamoa.dtsi.
> >>> Krzysztof,
> >>> Please let me know your opinion on this. This could be a common case for
> >>> Hamoa/Purwa boards share same PCB. Share same dtsi file like x1-crd.dtsi
> >>
> >> It's not the same PCB.  You did not really respond to my first message,
> >> so I responded to you - I do not speak about boards. Then again you did
> >> not respond to it and brought some irrelevant arguments.
> >>
> >>> would reduce maintenance effort.
> >>
> >> Does not matter, I do not question this. Why are you responding to some
> >> questions which were never asked?
> >>
> >> DTSI represents actual shared physical aspect and you cannot share SoM
> >> physically. It's not the same PCB, because you do not have a socket on
> >> the SoM.
> > 
> > x1e80100-crd and x1p42100-crd are different boards, yet they share the 
> > same x1-crd.dtsi. Why can’t we apply the same approach here?
> 
> 
> You should ask the authors there, not me. I presume that the baseboard
> is the same or very similar. Or pieces of the baseboard are re-used
> which could be visible in the schematics (same MCN numbers etc).

For me this sounds like a new rule, which didn't exist beforehand. We
have enough foo-common.dtsi fragments, covering similar phones, but we
never required the knowledge of those phones having the same PCB.

-- 
With best wishes
Dmitry

