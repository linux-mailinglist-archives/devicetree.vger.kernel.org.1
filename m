Return-Path: <devicetree+bounces-195943-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 7EE07B03A2A
	for <lists+devicetree@lfdr.de>; Mon, 14 Jul 2025 10:58:50 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 8FA5D3BC91F
	for <lists+devicetree@lfdr.de>; Mon, 14 Jul 2025 08:58:22 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id EA91C23C51D;
	Mon, 14 Jul 2025 08:58:42 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="oVE8o/6b"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9227A239E67
	for <devicetree@vger.kernel.org>; Mon, 14 Jul 2025 08:58:40 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752483522; cv=none; b=sunaW3l00jrgukj1VsReNTK4cVNygAkvHIJ67e61heaDLgenDA5NBKzMI4c9hU4uLRmuz+BaiucbPorhYINuFgYatlbt+SEwge1ln1AI7zCxkf7GUdx3NjCtVg2PvCpMX3NwQ0hEK6rmsvtBEf2LI2jS8vS4KvWUa16ideBhWVE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752483522; c=relaxed/simple;
	bh=QiVcEFWR3A0fEZp/JWzDxq5uuw1b/SjZBvKgRWUUwHk=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=deKdlSi1DrxwJAy17p7RZquVtgpa08TWZ9JFk7blCi39UdKs/P3q2iRoIjlDJO4O09kpeZ1J//f7sfKEtaCzNvJjqlxjkCnqbLs4k2oDt9S8AoIZGpzZA5vnC0cvMpFR944JEQzB+bLqgrNFEc027zcoGeO1Ht1GnBkz7nI0suo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=oVE8o/6b; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279873.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 56DL5Kxp006253
	for <devicetree@vger.kernel.org>; Mon, 14 Jul 2025 08:58:39 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	eVFSQFBFf/hmbWz5fQBJA1oBoM/6k55vueTBlZ5GRIw=; b=oVE8o/6bscuHKq7J
	IW5N6KHrzpEo/H6P8ELGcZQbbiL/AvZtwBHw+hZnrkiaVs6CDSybdof1Tt/ogY+C
	Eezy6RrDjflRxkIfFH2ZJMarw81pvItkKYS4GI97axTyl4nirCjqA0qLR0vKfAsa
	Dwb1fHLhntSzm6edej+Tdn/Lqh4mAoMwUbg3ImwCtjCcNypowPEaWQt/0y5lPFbp
	2k0vs7IkYhlm/VpFdj+7CF01Np+dMlUiPiaC6ZZJMjZLt8zIkBeUOc+ZmneBQpku
	3F4KADkHtv8y/usjqruPzuoglpNo9fWJ0oDktIgm4oxI1n2d0p3iEbLB6Y5xQ1Sg
	OtT84A==
Received: from mail-qt1-f199.google.com (mail-qt1-f199.google.com [209.85.160.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 47ufxauxtb-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Mon, 14 Jul 2025 08:58:39 +0000 (GMT)
Received: by mail-qt1-f199.google.com with SMTP id d75a77b69052e-4ab7a01c38cso125311cf.3
        for <devicetree@vger.kernel.org>; Mon, 14 Jul 2025 01:58:39 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1752483519; x=1753088319;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=eVFSQFBFf/hmbWz5fQBJA1oBoM/6k55vueTBlZ5GRIw=;
        b=AxU5ksunZVZvjD9m3OkMj/xF9217H754wX4+J2Bd9vGqGOYQRa1yPWYDiZwnUvi2+g
         DuPRGiVhkm0dkHaSOfTuzLVH6pcdu+2BEz/DYNe9mUGMjnbVfsaus1HRVSLnjpHcyv4K
         TCqGlZ1Wx/lSVQqTaPETTXkoVsCdX4eDUoiJMH0o1rsbMBM595rKAmEHT0lyGh3dtNYG
         Gcypk+hz50TNATYREvx8DvRnQDYy1Y806YU7pM5+WfhFX/c14yZTvtYvsOzSY+mcEYMN
         TIm3T470Jnfg718BdjBnNQkv9ZOtn750q0Z0XQj3QDgFN5CnLVyS40tYWBL5WVtdSfAv
         uHkA==
X-Forwarded-Encrypted: i=1; AJvYcCWxQowRm9I08l+l566pxhCbIcrC+6DaK9YUJZwYjhcKns50MhFyyq9BIi3OHIDtVoqeTmCav2slBk/4@vger.kernel.org
X-Gm-Message-State: AOJu0Yz+w+2oHcde/HaDoW2gji8YE8GtemhhJJDX8MpM6rIgktUjQ3oS
	FX9/OxhGtfwOmIq9swCvrRBVvbW+xiOQyNZCi9NyktUVIpdw/ZWmbrWhCxBS63CYOOpI+Td1k16
	tl/SUehmE9xgEC7Wn8VSNPCqY1fgYcf601uClpCuvnpHck+5/IaxzHW4uuYwzYYSr
X-Gm-Gg: ASbGncuR3yQOJd2yOsEStCkbHUrdnVIP8kwavASBJcpH2fql5L+n520TA9oXHgCADJJ
	CaP1ISAgd3s0EUiNvmtV7BA9WeWdDJJFrK2DHYuL1u8vHzBwK18mI/vpJpxrYrPSXsaxMSvwDXA
	ON6I670iJP2vo9pzwkjqPuOXyLERXhqwXuxRe+P4MTMIV6Jrwv7g2eo5Rj6yzo7AhGJV2S+o7NC
	JVC6Us1Z3inYGrEUDKihzney5l3SUdbjTGzmBMpDoshGD3148aWzH8UU0BfJEzQGT7OFtpEcQUU
	O5F4PL4vwndB3kEYV1s5bVgXBERbtv4hDoUTifd9v7Vvbob043IUBQXyMHXliUQxYiOh517j9HE
	nh7CHI3Lo+8dML09lPDOA
X-Received: by 2002:a05:622a:6a04:b0:4ab:533c:109f with SMTP id d75a77b69052e-4ab533c1d38mr33202191cf.15.1752483518550;
        Mon, 14 Jul 2025 01:58:38 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IFyWKteUj8o5VODQK+2BJ0/X/YeuYekA6dRnqZzX1W2y2SY55bcGHUGGjZdrZb6seu9rPe14A==
X-Received: by 2002:a05:622a:6a04:b0:4ab:533c:109f with SMTP id d75a77b69052e-4ab533c1d38mr33202141cf.15.1752483518093;
        Mon, 14 Jul 2025 01:58:38 -0700 (PDT)
Received: from [192.168.143.225] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-ae6e7ee48f6sm802041966b.55.2025.07.14.01.58.36
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 14 Jul 2025 01:58:37 -0700 (PDT)
Message-ID: <55048b4e-6c80-4f4e-ac05-e2b8cb48203b@oss.qualcomm.com>
Date: Mon, 14 Jul 2025 10:58:35 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v3 1/2] arm64: dts: qcom: sm8450-qrd: add pmic glink node
To: Krishna Kurapati <krishna.kurapati@oss.qualcomm.com>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Rob Herring <robh@kernel.org>, Conor Dooley <conor+dt@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, neil.armstrong@linaro.org
Cc: linux-kernel@vger.kernel.org, devicetree@vger.kernel.org,
        linux-arm-msm@vger.kernel.org
References: <20250714045310.2092385-1-krishna.kurapati@oss.qualcomm.com>
 <20250714045310.2092385-2-krishna.kurapati@oss.qualcomm.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20250714045310.2092385-2-krishna.kurapati@oss.qualcomm.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Proofpoint-GUID: SUILAOKr4nnnmSAbJUhh325FQ5xRnE8h
X-Proofpoint-ORIG-GUID: SUILAOKr4nnnmSAbJUhh325FQ5xRnE8h
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwNzE0MDA1MSBTYWx0ZWRfX0G97l2PmQ/Gm
 vEHd1jjV4QADFAOrSMgJuCZKktcifUv9wY2YLovzh2ZQrQYmiOct/DpWZl2cZXJsZb1Ml8jdB/J
 Vt2CMxmU1GN8dJkVHylNlTZNO0gvJOX7ChJkl9Fx7ZiF1lQmMp1wNgzz55D1BzoYlR7ZslEQG9W
 m4Nf6BKbbJfYBtzlJn0HJzHcukSDFhqe/p5A+fl0iwr1qDEVmk4CctaPKzODZ5l4wLAjP5Ky092
 GrHBKUR1+TuHEmwV4QfuautkOBWNVS5XOJcV/4hIbwpGzkQSSWj62V9BqKQpCWTbWKcdBkjLQO0
 vS0UhKOrk7DhHMzVBTHavfvgoOGJAeVwEgUKRkdydTl47AZj9Iw/J+6KyeAfYjutLtqDqP9FU+U
 Ecl35slCj2ZbsCjEL9vWcWAIJbJy11YqtBTHr8uoenqo9W5vRotXopCZCH8OHVN92dpb9YVl
X-Authority-Analysis: v=2.4 cv=Xc2JzJ55 c=1 sm=1 tr=0 ts=6874c6bf cx=c_pps
 a=WeENfcodrlLV9YRTxbY/uA==:117 a=FpWmc02/iXfjRdCD7H54yg==:17
 a=IkcTkHD0fZMA:10 a=Wb1JkmetP80A:10 a=EUspDBNiAAAA:8 a=GY1l66hMsWQi9t9MqZEA:9
 a=QEXdDO2ut3YA:10 a=kacYvNCVWA4VmyqE58fU:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.1.7,FMLib:17.12.80.40
 definitions=2025-07-14_01,2025-07-09_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 bulkscore=0 mlxscore=0 priorityscore=1501 adultscore=0 mlxlogscore=874
 phishscore=0 suspectscore=0 spamscore=0 lowpriorityscore=0 impostorscore=0
 clxscore=1015 malwarescore=0 classifier=spam authscore=0 authtc=n/a authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.19.0-2505280000
 definitions=main-2507140051

On 7/14/25 6:53 AM, Krishna Kurapati wrote:
> Add the pmic glink node linked with the DWC3 USB controller
> switched to OTG mode and tagged with usb-role-switch.
> 
> Signed-off-by: Krishna Kurapati <krishna.kurapati@oss.qualcomm.com>
> ---
>  arch/arm64/boot/dts/qcom/sm8450-qrd.dts | 51 ++++++++++++++++++++++++-
>  1 file changed, 49 insertions(+), 2 deletions(-)
> 
> diff --git a/arch/arm64/boot/dts/qcom/sm8450-qrd.dts b/arch/arm64/boot/dts/qcom/sm8450-qrd.dts
> index 8c39fbcaad80..a5093eee3dea 100644
> --- a/arch/arm64/boot/dts/qcom/sm8450-qrd.dts
> +++ b/arch/arm64/boot/dts/qcom/sm8450-qrd.dts
> @@ -37,6 +37,49 @@ vph_pwr: vph-pwr-regulator {
>  		regulator-always-on;
>  		regulator-boot-on;
>  	};
> +
> +	pmic-glink {

Please move pmic-glink above vph-pwr-regulator (so it's alphabetically
sorted). The rest looks good

Konrad

