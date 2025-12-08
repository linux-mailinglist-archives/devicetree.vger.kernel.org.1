Return-Path: <devicetree+bounces-245067-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 2DB88CABE48
	for <lists+devicetree@lfdr.de>; Mon, 08 Dec 2025 04:01:06 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 425AD300E3DE
	for <lists+devicetree@lfdr.de>; Mon,  8 Dec 2025 03:00:32 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 88D5A29BD89;
	Mon,  8 Dec 2025 03:00:31 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="M8ygcDIJ";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="V1NvqpqH"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 23C7A2D73A6
	for <devicetree@vger.kernel.org>; Mon,  8 Dec 2025 03:00:29 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765162831; cv=none; b=McgGF0i8/7gPuh/rUDqj3QPySazkPtx/P3jqAqE4ryuEvtqW2tRy2VFPqjidXbixGSkcyD6bzAtR5PukUbKZdQW5wev80Q4nDq7fM9G6eY8HgEW3Ngb2xoiWlVaWvIMsl3xR2MRc5uqa+729qqTf2eaFMuFdPFoHURBl+YHseAA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765162831; c=relaxed/simple;
	bh=N/aURwOKm8m82Y4TzW82Q+SRPVHXZPxl0CHjB/Np+HI=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=EIvUIXtZu9Ud0a7dy+LNMwVF4zA3cvFHtuYQF7zBRBS9QTJd82wIRgWyoiqJPfuuf/qAx7hzAKgmUov3/Qe1HRAEv54uUDc2J2YXT7OJ2m2GvxIdvaFqXRmlhn/N5eL0b8ZgKSnJ2nd84RUX0Z4RH87g/E27DhiSo4ufRMU0Rh0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=M8ygcDIJ; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=V1NvqpqH; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279863.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 5B7Mur8I2928399
	for <devicetree@vger.kernel.org>; Mon, 8 Dec 2025 03:00:29 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	UuZXkW9N/+qvH9TJ97EOKlEtVWGPCbZ06eNFAXBvA+U=; b=M8ygcDIJb1LEUb1e
	bTx8siiOmY/UQT51mc1a3I1huGK7nvLeMNr15MxU15aERVRIP3XFmlIM4v/k5jh3
	465abbXheew3xEFRaEADJo1d+KW+Xpk000murApqktUMkgsBjx2nP4EsD6i0V/Y6
	TpGO6ojVBltPVRTnc3Z4iOt2YOnBL5Nxvts2Mih/pZKYuYEor8cFOiuwwTXjxQbz
	2dZNl6CdVdNjw5F4uRllFQRRLiJfQ65oyxEyvnRKmEsiBzdAicuUHsW8I0UHXjEm
	1Jf8IGZkPNqfwXvYp7N2wU2ZctJ4MkAB9R8GW4OleZCgSBBFEqGZaXhcHcSSqszy
	ApNZ0w==
Received: from mail-pl1-f200.google.com (mail-pl1-f200.google.com [209.85.214.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4awhaqrdw1-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Mon, 08 Dec 2025 03:00:29 +0000 (GMT)
Received: by mail-pl1-f200.google.com with SMTP id d9443c01a7336-297f8a2ba9eso82921845ad.3
        for <devicetree@vger.kernel.org>; Sun, 07 Dec 2025 19:00:29 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1765162829; x=1765767629; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:autocrypt:content-language
         :from:references:cc:to:subject:user-agent:mime-version:date
         :message-id:from:to:cc:subject:date:message-id:reply-to;
        bh=UuZXkW9N/+qvH9TJ97EOKlEtVWGPCbZ06eNFAXBvA+U=;
        b=V1NvqpqHqgSyfVoFydCgSJ+zAxqARuuDZvZcixNVdBExfMENpDREd42SduErc2xbvQ
         gjytm6LyAkRepGE7dVvLVwXvO4ypXwETg+i9M39GJipJRZO6IBizNTDP06Z9fJb83qhJ
         UXi2tH348A2iTLn2DLcLfwBQ5wHTkJ3L3XBt3T8WeyVwRM6WEh7z5wl13/tKKfgvsT/o
         +8y2SeGQhH4jHjXvPQDGACzAiFSK2YQxdfP5wjeka6wsaMUZN0rDeEJ+gOeqiy9Fw2TQ
         gdJoR1eyJa0GO5Mp7/ZZ060FXEWQxsqcnqVlGPyF0geer3e7VaoSVR6YBDQ5ZT5ivKu8
         y78w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1765162829; x=1765767629;
        h=content-transfer-encoding:in-reply-to:autocrypt:content-language
         :from:references:cc:to:subject:user-agent:mime-version:date
         :message-id:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=UuZXkW9N/+qvH9TJ97EOKlEtVWGPCbZ06eNFAXBvA+U=;
        b=BbsiMKLPQc0bjm5P7vMfqhhYgz3tSyk62QPLG7fsDzgsS4uWYwYmgvI1GeK7RlbDbu
         t+2iqBO3gGm2gpk23O5B0HNwLWDAmz7TbIkv8lY2ZmkdRavLBSD2/VRZA67WvQVBcg8u
         Y8bLG4pVoUghFSsMGOfVPtFYzIrtFrAqPE8cgygot+RBT4Int+ZYQuz2XmxPTuihcCnf
         x4w/knUzF0xxzrgJkYqLDfTv58HDsO/Pa1Owtnm7bJUtnFj8YqYYOU5juY5nzRUjmwT4
         woa0XtZawVqMq9Pz0ogeCyPMs1Bt9nr/hW5+mIWrftI1YBiKAKQEzMuDSQk96NDg0iuY
         W5PQ==
X-Forwarded-Encrypted: i=1; AJvYcCXP58QNu0PlsYmFtUUloM6LOYXKa/0tq95knSs2YfzdhlO8ayJOQWy/yEqioaLtDTH5mdzyBu5EkLjX@vger.kernel.org
X-Gm-Message-State: AOJu0YwQ24inpXlEH1rnjA4K+yFqT2Guj3wmJOJG1U64V0q11D0ul41M
	lnQH5Adq7FNTQs2+PCXyKWO0wyfD7cnKPfzDqznbzw47yxDWJ/wvEhBvXQJQY4wIJ6DEIdccinS
	JOnUhEU+1AhpTqjCdaMkRtqFpNBmNYKwgi3p/Vg3poR4I5IaEx5vMKHU0kXR5ueIF
X-Gm-Gg: ASbGncvZ5YijmH7rUJuIf3yHfGSp1a5EkxEUAQV3PAoAvS48JnJfvH7AT+8A0yALjQx
	ohaXtwhK5x6j3ZhHFbMT/t7C6X8liHBqRiQuwqXG84aOIxPnbA0q9ZB7iLnl75DJnvcRpywnmK8
	7oO4qPZSPW6rx37TcUjp3ZTY8UsqPIz+81GXQEptVmcfAvuJuQeoQHkjmvkhNf7YlrzltCh/Nwx
	6o1P3glPEpLil++wnsc3A92RcU1rkrnYMceEaxyXTt2xt9lsb+yTxocYFOTBU7GwvDgj+nC3elO
	waZoGz0EODCUK0QmA1yg2c2m1m2m2Lh585lCksdzMiz3ht9cMiYOCXLzBRIe3tPjGDawScuKXmH
	CunDtqxH08OqgOK0xu73EQpq1QMW72gvM+Ya3pOqpgTYIuT6VM8KVNNR0p7eFLdOAYBz3
X-Received: by 2002:a17:903:950:b0:28e:756c:707e with SMTP id d9443c01a7336-29df5ab1c85mr52777015ad.33.1765162828690;
        Sun, 07 Dec 2025 19:00:28 -0800 (PST)
X-Google-Smtp-Source: AGHT+IGFDeghQsyVix0IEGgi16XKm22l9UL5a+cNjeshX+qXHaMVXECb0Qdz7jhA1NW5/+t/npNONg==
X-Received: by 2002:a17:903:950:b0:28e:756c:707e with SMTP id d9443c01a7336-29df5ab1c85mr52776755ad.33.1765162828133;
        Sun, 07 Dec 2025 19:00:28 -0800 (PST)
Received: from [10.200.7.150] (fs98a57d9d.tkyc007.ap.nuro.jp. [152.165.125.157])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-29daeaab9e6sm107286235ad.71.2025.12.07.19.00.25
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 07 Dec 2025 19:00:27 -0800 (PST)
Message-ID: <67dc2a3d-9432-4d07-b23a-fd34a106275e@oss.qualcomm.com>
Date: Mon, 8 Dec 2025 04:00:23 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2] dt-bindings: usb: maxim,max3421: convert to DT schema
To: Rodrigo Gobbi <rodrigo.gobbi.7@gmail.com>, gregkh@linuxfoundation.org,
        robh@kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org,
        davidm@egauge.net
Cc: ~lkcamp/patches@lists.sr.ht, linux-usb@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
References: <20251107001812.10180-1-rodrigo.gobbi.7@gmail.com>
From: Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>
Content-Language: en-US
Autocrypt: addr=krzysztof.kozlowski@oss.qualcomm.com; keydata=
 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
 cwzYbmi/Et7T2+47PN9NZAOyb771QoVr8A==
In-Reply-To: <20251107001812.10180-1-rodrigo.gobbi.7@gmail.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMjA4MDAyMyBTYWx0ZWRfX7BDVQMm8jnyD
 nP4YsY6N2KdsaSzUSp5cNKlMwQWaI8wQYpM3odsF40RuqwCB4cjZeqtFHKlZju22yQ6qAqoCose
 X0L3aL46ap48zIFQaIuwoZumsKsmpeDju0OfPvo/Zg4vO/vDw8j+LI/ZIfaFQ//q5ZiEnZYYl7X
 fQGQILhYYj85QRBEXHOQurctrIGP6xK6Y8z1itty42cOIksCVdgqV49/+OBJ0TAWAueZD49rYV3
 /0SeQhX+uxZriYWNsrmXMtzG4DgkAlrgzB6cI2Zk1tEqSu7DhkMOpgcqRJGiuuRgGS3x6SQ5eCa
 ElOwQJjqaoxdGGdMHfsrdRVimtusfMqIalm+64DV4EV/+zI+/GpW+Lw1GmWCIHiPPQ28/VQjVDe
 XXTCdHYiCLR7TexC0zIZQeshgye1sw==
X-Proofpoint-GUID: Oy51_WNZ6qksunW6X2GxxsiXsZgOQFeU
X-Authority-Analysis: v=2.4 cv=ItUTsb/g c=1 sm=1 tr=0 ts=69363f4d cx=c_pps
 a=IZJwPbhc+fLeJZngyXXI0A==:117 a=vTE1kzb4AqIx7XBf0Bkr0A==:17
 a=IkcTkHD0fZMA:10 a=wP3pNCr1ah4A:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=pGLkceISAAAA:8 a=EUspDBNiAAAA:8
 a=hPhRZHPQVzjdZgZYjaoA:9 a=QEXdDO2ut3YA:10 a=uG9DUKGECoFWVXl0Dc02:22
X-Proofpoint-ORIG-GUID: Oy51_WNZ6qksunW6X2GxxsiXsZgOQFeU
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2025-12-06_02,2025-12-04_04,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 phishscore=0 impostorscore=0 bulkscore=0 malwarescore=0 spamscore=0
 clxscore=1015 priorityscore=1501 adultscore=0 suspectscore=0
 lowpriorityscore=0 classifier=typeunknown authscore=0 authtc= authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.22.0-2510240001
 definitions=main-2512080023

On 07/11/2025 01:06, Rodrigo Gobbi wrote:
> Convert legacy maxim,max3421.txt to proper format.
> 
> Signed-off-by: Rodrigo Gobbi <rodrigo.gobbi.7@gmail.com>
> ---
> Hi, all


Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>

You might need to resend it, quite likely it is not anymore in Greg's
inbox. Please include above tag when resending and please resend AFTER
the merge window.

Best regards,
Krzysztof


