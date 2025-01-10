Return-Path: <devicetree+bounces-137424-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id A0262A0906E
	for <lists+devicetree@lfdr.de>; Fri, 10 Jan 2025 13:31:57 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 4551A16B972
	for <lists+devicetree@lfdr.de>; Fri, 10 Jan 2025 12:31:47 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 5635420E320;
	Fri, 10 Jan 2025 12:28:20 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="ifSRdC7r"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C19CF20E318
	for <devicetree@vger.kernel.org>; Fri, 10 Jan 2025 12:28:18 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736512100; cv=none; b=dbsRxWL8J9RjyIe4wg9DrmfmnsutGRvW9mdORohuP4Z8MWf4VN6p5+5leL3LpT1SqJlhEWGOPpwezG8+JmhCtmXIDDY+QIeJoApF1kCrNHKmq3O+bsNsCV152NJwJ+BnjOu1KGfEV9f90zhtl2Qd5KeOlJ/L6z4VZV+CY1mtfGU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736512100; c=relaxed/simple;
	bh=9mgZHNGBzLOQuXSB+jkyfWeQuF5YUIZNGRd6gKBxgek=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=h/a9G3ZZ1BRADcGQdH52SQHKG6D/H9IUMO0uev40X/xKKG/PWXYFEpS3Z/Kmx8edejq2WOrgntT+GWH2WFXO3lB5YYvbYWBZUxS8fUnfNvdWRF/AjxupHp+SCmM2oap5pHAJAeltqIcFpH3WhhIFZfbf0cnh/2D3Nz6eRUM0Sxc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=ifSRdC7r; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279863.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 50A9HkTP027885
	for <devicetree@vger.kernel.org>; Fri, 10 Jan 2025 12:28:18 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	5Lq9dyuLus20yp4kplmjOnFQeKKs+HMiGfzSgt3azWY=; b=ifSRdC7rkMwAg0n+
	4THTTeHh/w5QuUff9OOajJx6xu5NUkIT4DtOc6dkU9RsqmRQRUkF9UMqMbfP7OD/
	y6y/7BaWtlxXqcfvbGU+Gwl1zHsjv9GDaQMQEKMxCbyI3XT8RJNdOe7j+fe8G6HP
	/Xa0IzxnNPRgdSaRtfjBiarB7sNsgniI65NhmhlnqMJgc5qXiv8ZiKEPFAA3ygXb
	BcOxET3Wpa8nfZ7G2oY/neWC6j4qKuSL7u6oWSr24wLot+U4I/tKs/RpyRvX1bn7
	E/mZxvUF7f4zamqpqf+0tbpotKgQlSeaDimsiuzL50dUxQ5x94UpzUwWwb7oqT/n
	zgCHSg==
Received: from mail-qt1-f198.google.com (mail-qt1-f198.google.com [209.85.160.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4430swgg9b-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Fri, 10 Jan 2025 12:28:17 +0000 (GMT)
Received: by mail-qt1-f198.google.com with SMTP id d75a77b69052e-467975f1b53so5049691cf.3
        for <devicetree@vger.kernel.org>; Fri, 10 Jan 2025 04:28:17 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1736512096; x=1737116896;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=5Lq9dyuLus20yp4kplmjOnFQeKKs+HMiGfzSgt3azWY=;
        b=Sof70MSIHj78n0w9WHhLDYzOxY1IfTcSXIRTNCbCjA0l18isfCzlz0urOof/3FWBB9
         XWTw7zoMmvwm1cDfaASk6eXfCxREdgjYOtDW1Ze+CROeiHi9qV4bCgcnkEkYepKxp1Bd
         05VDWpn7JHM0r8IRsOYA7NHmbxPFdkt1b4amoq40SKPwxHDI2HPFouSrdsEJDHW2bhP3
         98ePVx/CSVBcI6gHpHJP8Pd5SS7S+ew74N1G2RIy4u9reWqQlW2k1oRtQuAj+27fjMcI
         ab/CC3/+4prYRt2B4RinpGBLEUvIDTcriMGHxDFQtMgIWsYAvpeWvLqA4RDLT6eHoPEo
         Luiw==
X-Forwarded-Encrypted: i=1; AJvYcCVjD8AH6p+EG+o0SHVBd9cEfXafRc9Clj8JYPv1MAwsePOjWdh/TD6T03mAP54DelfAqthmEfGrsjOw@vger.kernel.org
X-Gm-Message-State: AOJu0Yz+OlupfqWGMGXnaRwy2PAK0wtWmfwQ7ixUepARfkUPU01Vd4A1
	IJgtyqiF1oMqxMg6ss43ac81MjUu7DwOUENeG/y3LNAzqebyvIdO8LSC54WTpIovp/km2p9ugLC
	MSQ/Kj8aOkRFH8lH4OYQMVvpju6ThX5N/rILH3TlpoRGvBOGRNY5fPAuBaREn
X-Gm-Gg: ASbGncvqrrY/rlF8eO8oNOXYcVZQNRUQVk3Xopfa/3DqFeEYTnP9KIPiR+s6KatdflQ
	+klnQ5Kbb7S3KAzrdTU1MQu61b1iMDr4eMgujUPIXj7erwa1Hmhu4TsIGhfTKW42fvZ6S7e7ZAJ
	rwd+v1a7Iybl2UpmbrBBT/HjWSM8pH4d5eLs7QCYARAEo9go6kfGG3wDxAkrHLHE3KFJ7eqwK8F
	AhgXgngzqg9JqqMy8qqN2besFS6YpgR08M0hxaSQzDifw/ESv7fWKcFRBuOA0qwxGW4qAMYcpjD
	dgw7iRcBQZfG8pKEiBied+d7nO2XAaVNfg8=
X-Received: by 2002:a05:622a:401a:b0:46c:78cc:e53 with SMTP id d75a77b69052e-46c78cc0f32mr45291271cf.0.1736512096461;
        Fri, 10 Jan 2025 04:28:16 -0800 (PST)
X-Google-Smtp-Source: AGHT+IGB7BuZgxjZZXc0Iv1450j7nE/9I//uHvCF6onNzcuH1Yn7yj6fVcJxeBrNjKccMHbS0VLMAQ==
X-Received: by 2002:a05:622a:401a:b0:46c:78cc:e53 with SMTP id d75a77b69052e-46c78cc0f32mr45291211cf.0.1736512096080;
        Fri, 10 Jan 2025 04:28:16 -0800 (PST)
Received: from [192.168.65.90] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id 4fb4d7f45d1cf-5d99008c2d7sm1622982a12.3.2025.01.10.04.28.14
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 10 Jan 2025 04:28:15 -0800 (PST)
Message-ID: <2e240422-b964-42ce-b537-413b1d8ae07d@oss.qualcomm.com>
Date: Fri, 10 Jan 2025 13:28:13 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH] arm64: dts: qcom: sc8280xp: correct usb phy power supply
To: Pengyu Luo <mitltlatltl@gmail.com>,
        Bjorn Andersson
 <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
References: <20250110092326.167575-1-mitltlatltl@gmail.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20250110092326.167575-1-mitltlatltl@gmail.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Proofpoint-GUID: lsTor-tjmJG2TVyWWwqosLc1655hCsH2
X-Proofpoint-ORIG-GUID: lsTor-tjmJG2TVyWWwqosLc1655hCsH2
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1039,Hydra:6.0.680,FMLib:17.12.60.29
 definitions=2024-09-06_09,2024-09-06_01,2024-09-02_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 lowpriorityscore=0
 bulkscore=0 adultscore=0 malwarescore=0 suspectscore=0 clxscore=1015
 phishscore=0 spamscore=0 mlxscore=0 mlxlogscore=790 priorityscore=1501
 impostorscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.19.0-2411120000 definitions=main-2501100097

On 10.01.2025 10:23 AM, Pengyu Luo wrote:
> On this platform, according to dsdt tables, usb{0,1} phy consume the
> following regulators. usb2 phy should be corrected also, usb2 in dsdt
> is a little complicated, so correct usb{0,1} only for now.
> 
> 	usb0	usb1	voltage	consumer
> hsphy:
> 	l1c	l1c	1.8v	vdda18-supply
> 	l9d	l4b	0.912v	vdda-pll-supply
> 	l7d	l13c	3.072v	vdda33-supply
> qmpphy:
> 	l4d	l3b	1.2v	vdda-phy-supply
> 	l6d	l6b	0.88v	vdda-pll-supply

Looking at the CRD schematics, it should instead be:

USB0	USB1	VOLT		NAME
L1B	L8D	0.9ish		PHY
L4D	L4D	1.2		PLL

I'm hoping I'm reading those right, it's not super obvious

Konrad


