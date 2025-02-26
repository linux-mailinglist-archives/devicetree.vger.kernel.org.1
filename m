Return-Path: <devicetree+bounces-151674-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id DC0BDA4683D
	for <lists+devicetree@lfdr.de>; Wed, 26 Feb 2025 18:40:55 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 8ECB01884C5E
	for <lists+devicetree@lfdr.de>; Wed, 26 Feb 2025 17:41:02 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A543F2253F2;
	Wed, 26 Feb 2025 17:40:51 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="c2MOR45W"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0213F222592
	for <devicetree@vger.kernel.org>; Wed, 26 Feb 2025 17:40:49 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1740591651; cv=none; b=CBjgetmOSJIHjveRqzh21utyLlk2hLzGWaFNojitFBAKAdv1KKB4ddq4kZyjFMQxb+cQbeWbDYThk2gAnuaiGGq6xktcHKS7nLuOnv3ZEdGOopaPeFuN7AyxIWE3Y50QnJlozCUnUYxcQJeGM3lb6IAj3r81Rh75cIIo5qxusWw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1740591651; c=relaxed/simple;
	bh=zxoFCEm/i4Fsrp5kMYsUFGNq4xymwxtSd66LlDonmFA=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=sE4gmAibiZZ8iGQPuNPLCGpuzcc1cET6TIzFmuSkHHGkLiucFMD2rcXm8PF2b9p9KDqiMizQ2P4S3rp5l9YFi0x8XPul3d2uF0tdptLgoDhe5rzyccwO0ZIn+rXDzF7MrF0hVqVDRWjGSHtYK4rW3FYwKI5hEmB5rFE9gaZNHQw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=c2MOR45W; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279873.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 51QA5DEV013437
	for <devicetree@vger.kernel.org>; Wed, 26 Feb 2025 17:40:48 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	Dx9NSFPUTbfMI71GbqxOdXWvocLSr95GYi65otaMCUM=; b=c2MOR45Wq+zUfJXB
	YFD2r5HLErySgksMaZ2bq4+++03Vpo8/PLPmzWEnPHttQjfT3sCdXaQKdp0+Dxc+
	Si6jRpK42MtSZFAgdHYTYODQPvrelvynFaoTk2JbJj1pPGDabxiYYMhc/k1ZNsxF
	TDwLq1nykwTGZUzSZzQKmMLWiYXABRBIXeIVIGxGc4faOnwvm+8wXX2glwBSYXIZ
	1xeTxU8WwQw8wQkr7zdr8Hq8pAKTmjMpUedRukD0/Rj0WDlO8ZuTvVVtSGfnpuTh
	UGqrMXa44biPffYeY1RxtuUH1MBLRUgrwzZ6UVlkC4CqBKoZxWXZ1VR8ErFaBgTU
	D9QfFA==
Received: from mail-qv1-f70.google.com (mail-qv1-f70.google.com [209.85.219.70])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 451prk2smp-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Wed, 26 Feb 2025 17:40:48 +0000 (GMT)
Received: by mail-qv1-f70.google.com with SMTP id 6a1803df08f44-6e892c72145so189386d6.1
        for <devicetree@vger.kernel.org>; Wed, 26 Feb 2025 09:40:48 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1740591648; x=1741196448;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=Dx9NSFPUTbfMI71GbqxOdXWvocLSr95GYi65otaMCUM=;
        b=Ju5yt7gbhAa/Q3Ot9iLn3hL424ep1ldd0LPlHvA+k9b0FR75xQxnkbhIrHJvcMtI55
         Jrfh4OmiDe/W8J/+8KHM3l6sVaTwZ4jJfQiCjvpyPlm4npb7vbDGxgrAlWzKWAkUewEG
         2+kAslpPcPEcFcbla/imECB2iULuyy72ZlhNqCxowO2EeMgnTz4izMa+0rYD26vv8wjA
         MZ5y8Y1ENB0xHU7fx9AVoowZvqetO4numYHTalX+F63pw32ejx/IfMtm3nxpjlCDZryC
         sHcEzzRK94EHFpkcF0W1VUoHQBX0NZ3qOLZx57t4S5g/LZaP+BfrGSIQcEDgUHtgpQS8
         x+Cg==
X-Forwarded-Encrypted: i=1; AJvYcCXGNpKiHXvZIL2fo6gOhFdfdj+H0FBhlHj8LIp7/CeRbEIdEW0mO08JpktfAFuVB6pwbb7ydcfbRRB4@vger.kernel.org
X-Gm-Message-State: AOJu0Yy3OFfWyLA7MAsUCA3b29+2IWhAtZoEDBrUaQ6fTLZqc8XD5JbU
	Ysn5oBWAgwSWvOip3CArSyWblYPqwxW9opDBB/+RGXldPc3sYC9PdocrqhmAracMz1nf8Z1KuE5
	BxHbVryp8Q8aMJ4Llsr6WYdUz6TGk725Vva9ZLo3BNkb8EWXFiBbogGMDAO2X
X-Gm-Gg: ASbGncuqqgWXI6KdWfGkNKc9IQBdcjz4hWoFGQ8ISWllGYkC2cqhhYBKCkflHpfIo4z
	oSA7xBDkEGt3qjRp3X7MLLxCSGi0bQWSDQtFXuERA8aSEQVHf/ficplrDapEaanZHjFXdlrzTa/
	NQwUxMWDXDTwnJx07ONJ4WdMA1Eqp8ZaLT7LEkYCen2cSiwXEEZ/1tDp4eHATdiUPwIUATeHoHL
	9DVo0HdRxflRrrpfPbOyleZGniZQ7A+wbR6qrxdGJIFnkiqDL4QI1Pzxi0jkJXXvS9+9MCUu1Sl
	KsDhY+Nt7GUGgcmJNklHSm9WygRFtcI2+hKlTwi2sVAL/i05TdhWOmPE1283tcdedPFGGw==
X-Received: by 2002:a0c:eb51:0:b0:6e8:8f31:3120 with SMTP id 6a1803df08f44-6e88f313983mr9688196d6.8.1740591647874;
        Wed, 26 Feb 2025 09:40:47 -0800 (PST)
X-Google-Smtp-Source: AGHT+IETLKJfnGGe63OoYuvkmyhbg6ykFKbgXEtFviZrtLEdWx7MZaKA72KFBrv7wh3/K01a8jQiRg==
X-Received: by 2002:a0c:eb51:0:b0:6e8:8f31:3120 with SMTP id 6a1803df08f44-6e88f313983mr9687976d6.8.1740591647542;
        Wed, 26 Feb 2025 09:40:47 -0800 (PST)
Received: from [192.168.65.90] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-abed205c7efsm366863966b.149.2025.02.26.09.40.45
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 26 Feb 2025 09:40:47 -0800 (PST)
Message-ID: <696aed52-7519-4351-a3f6-7b86778b18c3@oss.qualcomm.com>
Date: Wed, 26 Feb 2025 18:40:44 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 1/3] arm64: dts: qcom: qcm6490-fairphone-fp5: Add PTN36502
 redriver
To: Luca Weiss <luca.weiss@fairphone.com>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley
 <conor+dt@kernel.org>,
        cros-qcom-dts-watchers@chromium.org
Cc: ~postmarketos/upstreaming@lists.sr.ht, phone-devel@vger.kernel.org,
        linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
References: <20250226-fp5-pmic-glink-dp-v1-0-e6661d38652c@fairphone.com>
 <20250226-fp5-pmic-glink-dp-v1-1-e6661d38652c@fairphone.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20250226-fp5-pmic-glink-dp-v1-1-e6661d38652c@fairphone.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Proofpoint-GUID: ekZup1gnton4ETJvcRSGwMY0I29jTOg_
X-Proofpoint-ORIG-GUID: ekZup1gnton4ETJvcRSGwMY0I29jTOg_
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1057,Hydra:6.0.680,FMLib:17.12.68.34
 definitions=2025-02-26_04,2025-02-26_01,2024-11-22_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 bulkscore=0
 lowpriorityscore=0 priorityscore=1501 suspectscore=0 impostorscore=0
 phishscore=0 spamscore=0 mlxscore=0 mlxlogscore=856 malwarescore=0
 adultscore=0 clxscore=1015 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.19.0-2502100000 definitions=main-2502260139

On 26.02.2025 3:10 PM, Luca Weiss wrote:
> Add a node for the "Type-C USB 3.1 Gen 1 and DisplayPort v1.2 combo
> redriver" found on this device.
> 
> Signed-off-by: Luca Weiss <luca.weiss@fairphone.com>
> ---

Reviewed-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>

Konrad

