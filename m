Return-Path: <devicetree+bounces-188482-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 3D068AE3DCA
	for <lists+devicetree@lfdr.de>; Mon, 23 Jun 2025 13:20:00 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id D8025188FC4B
	for <lists+devicetree@lfdr.de>; Mon, 23 Jun 2025 11:20:15 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id AA09F23817F;
	Mon, 23 Jun 2025 11:19:55 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="CjNt/pWK"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 319901B808
	for <devicetree@vger.kernel.org>; Mon, 23 Jun 2025 11:19:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750677595; cv=none; b=XL9iZ+oIR3ckjUxHSQ4jyNLMrpz5ygBuJoJ9Vol/OWDksmrLkjFfwmugI6r3f6xLN4uBcUkpjc993qdyGvQFlzcLVEaA3ij/XadjGoNEYPiTJkTKsYXVsBvoXAFK3w49KcEHWkqthYg7dUsEDftkZKwI2Y+fyd1c/AKnF7F2aog=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750677595; c=relaxed/simple;
	bh=SAX/4gVNCkszlA4kN/MJxlF4iWqpz8DqffG0LjHMHn0=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=avjbWmZJguzJTpCmK/BvLi/2j7yem5tbylM8fiUntsg1dgY98d2fSQeNru/TcmAbgtb4XWhCsGbAtGA5qK4+m/qJWRdwNs2CIicV8a3qyhqr14OrJlG/MGlLlDaDyhO8V0ilQ7xgJkrvToqwUYzoYqliMzZsyGoSLYWXJEzBQR8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=CjNt/pWK; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279870.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 55N92cKB014675
	for <devicetree@vger.kernel.org>; Mon, 23 Jun 2025 11:19:53 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	7zKQIAVsdldY9upKrkZv5EtVBOTxNNZ0b5TunOsRvzY=; b=CjNt/pWKALLATVmK
	Nx1yNvJX0afa3tS7XhO3li9kwLbqCCvvBmiiDBrg8SW6RQOSguwn9ZfDrM+ayoZC
	AloKtX4p4fZo7tZ5JPrTHsINcrpl/3RRR6XJk79nIUFZ2gfM2ac96+lJ53bWI83e
	98wUve2dR3JKbzRZjw6KRDo6eeNz9H+a+RdTnl+rAw5W14/WGx3zCsTYagVonreS
	zPn/SVotxdE2w+LjlVJLNUjZ3HJEvt1PAmb1VbqDtNpzlSLmCdwdztCPe/0MwyQ6
	7lmaaWK2Lwr2OO9Uaub+BB4KvW15wAfkL1AjRlxltBfEip9o0GTwxXo+OdpFml5B
	bSmUsg==
Received: from mail-qk1-f198.google.com (mail-qk1-f198.google.com [209.85.222.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 47f3xu0cva-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Mon, 23 Jun 2025 11:19:53 +0000 (GMT)
Received: by mail-qk1-f198.google.com with SMTP id af79cd13be357-7c5af539464so115420885a.0
        for <devicetree@vger.kernel.org>; Mon, 23 Jun 2025 04:19:53 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1750677592; x=1751282392;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=7zKQIAVsdldY9upKrkZv5EtVBOTxNNZ0b5TunOsRvzY=;
        b=sbdJt0D1x8/8/1jj7vk6QAqLLGw++SJ6fL01GbyUNZyoiSwI5xce08JNuZAXExXOge
         4Nr1xinmKj+UncoweVTJTBrWwVisKIscHpsBDFoTshY392heG0VH3jNsXAGTYgV5vyd7
         Qkg+IN34iinq8Qc5Fa7V5M6vqOK6PecZW5cCIEhwQRDYrh8x4IUR+oaoWQbqM+LKOSvL
         Fvpe1Mbg/xIzUw+OkHMhCr/BtcM8VtEMGciuvLtPjos1Vb7lTiOqqMHvShrLm8s/nJko
         ROWeYEWZ3EBDETJZtjGdclWr5zahe8T1Pac2qWDaHvLoy335aFnNkNSwW7rGKbCcRdwR
         KQbg==
X-Forwarded-Encrypted: i=1; AJvYcCW02CeL+KaSWKgno1i3Vax7r1HKrsXpbgw5gg8MBwTX0Pw7myAgdSIGBHUZNoW1jKS7X4gTHu0ORvd8@vger.kernel.org
X-Gm-Message-State: AOJu0YxVG9ueUovpEUonFgSubJG2vtD9N2VLSj+JZ5QqS+b49bwi9HVt
	O/srSz3NFY+O+I0tyWWeTZVNwAC4hK4ZUh994TqSMxugqr+2S12SC2UbFNjmEgsmTDey2GuEl8/
	ZY1noS5HR9w2gTtMVw1qaDpbdl5ZJixQphAGn3FetF5HDDndrMygDQhdtXXiOcILR
X-Gm-Gg: ASbGnctJRFmBja/QPlZhn/kCqvmt05hboeLRakxw4/GQv8c/dCVmXnXSYWTWO7HQaMW
	voOpHimC9Kbzi4Xz4hsNe4qtcuqqEv55cugaD/A7ZN1pg7AWV5vKE5H30+cuG30sqkISSywuSae
	jUkOGxlvLwY5nyqSodPixm3UUYa6C/c/84qOS5CB1mj6fajhVhhcV1l992uuoO6i/QSv3IsXHWD
	94XvMQQvJbNmZXKMz08cmrl8inj8uRI2MCkbSsQ89QAWk5p5D3qQcqpAr+n+3kQnKRdUCydEfRF
	rAx0c/okpUf/Ad5XUtyKVlkM55dDlCDFNWrOAJ3EoFeGH1jHxNMTEUi43CjKyXRkdjE9wvtcnla
	z0os=
X-Received: by 2002:a05:620a:178d:b0:7c5:ac06:af8 with SMTP id af79cd13be357-7d3f9920ff3mr524117085a.9.1750677592205;
        Mon, 23 Jun 2025 04:19:52 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IHHqPoH6QmN0MGatJznqXrfBJU91ugdsW9S22UakSW0tiObJMZH8PiX02io1ERTh2F295E7ew==
X-Received: by 2002:a05:620a:178d:b0:7c5:ac06:af8 with SMTP id af79cd13be357-7d3f9920ff3mr524114885a.9.1750677591576;
        Mon, 23 Jun 2025 04:19:51 -0700 (PDT)
Received: from [192.168.143.225] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-ae0541b74cesm706297266b.142.2025.06.23.04.19.49
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 23 Jun 2025 04:19:51 -0700 (PDT)
Message-ID: <1f7af719-a945-400c-8caf-16e6e55b2484@oss.qualcomm.com>
Date: Mon, 23 Jun 2025 13:19:48 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 5/5] ARM: dts: qcom: add device tree for Sony Xperia SP
To: Antony Kurniawan Soemardi <linux@smankusors.com>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, Max Shevchenko <wctrl@proton.me>,
        Rudraksha Gupta <guptarud@gmail.com>
References: <20250623-msm8960-sdcard-v2-0-340a5e8f7df0@smankusors.com>
 <20250623-msm8960-sdcard-v2-5-340a5e8f7df0@smankusors.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20250623-msm8960-sdcard-v2-5-340a5e8f7df0@smankusors.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwNjIzMDA2NyBTYWx0ZWRfX21b//wjZ9/sE
 Q55+qvwDaJdT1jmtbFgoTOC2Rq7+SS2V+1c3Jq04WDI8+806dIGKgVoxElM9X27UarZRartijay
 +Ir11dsX4bZvfZ8IVI0Kct0VrSpbbfzoCvuiqWG94DPmGpYq0wWWHMuOaajjlnyM34YJ2ySStzn
 gRjGkxpjXiHyJFwU3Qo+mCtygiRDu4zexS6K3ju+0fzAVHIKISEFYtW3q+vP8Vah42smm/1SxuR
 nW8/8Us8xnNC0epGYxguJ0JFNHeAX0KN3BbTfCqXDkYR7pM9y9foJ089NdKmtB0yAl6zq5PZ5WX
 ujC96DqupQwnu06kO2eQBPpNMfEURav2JkMO8NfG0gHoQro+k0nhogBKxJqi9kLwSBf+GTC6UVH
 8v8f2Kt6eTO46KqmIVEuQB9xLONFQGxi1mhjEBLoZHIfm4riM/vVhh1x9gUUNYTYNdUVqkR0
X-Authority-Analysis: v=2.4 cv=SvuQ6OO0 c=1 sm=1 tr=0 ts=68593859 cx=c_pps
 a=qKBjSQ1v91RyAK45QCPf5w==:117 a=FpWmc02/iXfjRdCD7H54yg==:17
 a=IkcTkHD0fZMA:10 a=6IFa9wvqVegA:10 a=Gbw9aFdXAAAA:8 a=wxLWbCv9AAAA:8
 a=EUspDBNiAAAA:8 a=sfE0evLFWE0D8gplxDEA:9 a=QEXdDO2ut3YA:10
 a=NFOGd7dJGGMPyQGDc5-O:22 a=9vIz8raoGPyDa4jBFAYH:22 a=QJY96suAAestDpCc5Gi9:22
X-Proofpoint-ORIG-GUID: Xi38Azft-6bvqqRzk2Ber8fbOm4PUpRi
X-Proofpoint-GUID: Xi38Azft-6bvqqRzk2Ber8fbOm4PUpRi
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.0.736,FMLib:17.12.80.40
 definitions=2025-06-23_03,2025-06-23_02,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 clxscore=1015 priorityscore=1501 lowpriorityscore=0 suspectscore=0
 impostorscore=0 spamscore=0 phishscore=0 adultscore=0 malwarescore=0
 mlxlogscore=993 bulkscore=0 mlxscore=0 classifier=spam authscore=0 authtc=n/a
 authcc= route=outbound adjust=0 reason=mlx scancount=1
 engine=8.19.0-2505280000 definitions=main-2506230067

On 6/22/25 8:26 PM, Antony Kurniawan Soemardi wrote:
> Add initial device tree support for the Sony Xperia SP (codename:
> sony-huashan), a smartphone based on the Qualcomm MSM8960T SoC.
> 
> There are two variants of the Xperia SP, one without LTE and one with
> LTE. This device tree should work for both variants, though it has only
> been tested on the non-LTE variant.
> 
> The following are currently supported:
> - Serial console support via gsbi8
> - GPIO keys for volume up/down buttons
> - PM8921 keypad with camera focus/capture keys
> - eMMC (sdcc1) and micro SD card (sdcc3) support
> - USB OTG support
> 
> Other hardware features are not yet implemented.
> 
> Booting notes:
> Booting a kernel requires using the Sony ELF boot image format, which
> embeds the kernel, ramdisk, RPM firmware, and cmdline. This can be
> created using the `mkelf` tool. For example:
> 
>   python2 mkelf.py -o boot.img \
>     kernel+dtb@0x80208000 \
>     ramdisk.img@0x81900000 \
>     RPM.bin@0x00020000,rpm \
>     cmdline.txt@cmdline
> 
> The resulting `boot.img` can then be flashed via fastboot. A detailed
> guide, including an alternative method, is available at:
> https://wiki.postmarketos.org/wiki/Sony_Xperia_SP_(sony-huashan)
> 
> Signed-off-by: Antony Kurniawan Soemardi <linux@smankusors.com>
> ---

Reviewed-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>

Konrad

