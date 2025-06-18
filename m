Return-Path: <devicetree+bounces-187300-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 94D28ADF72F
	for <lists+devicetree@lfdr.de>; Wed, 18 Jun 2025 21:50:17 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 62C563AC2E3
	for <lists+devicetree@lfdr.de>; Wed, 18 Jun 2025 19:49:53 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 3E3D4219A71;
	Wed, 18 Jun 2025 19:50:13 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="hDnOKgRN"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 941DE217F2E
	for <devicetree@vger.kernel.org>; Wed, 18 Jun 2025 19:50:11 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750276213; cv=none; b=bnsjfGvoq6qv9R9295IiYENViE5wFvxV+IEmkFQAneCN5swYZgw9ZKLvmySkSV4M6jgRx8QQu+v2qKryz+F6jYNQRDopE0FQlHijWM9Q+lAwMQ0rirjG4GqkEtgSdk+FRqUc/kBKP9lQMVzcevZ+P3WvlPPoIMPPzuG1h7997MM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750276213; c=relaxed/simple;
	bh=luoJ2EhFdNRnqQJG9cSh5+lCaNdS01/9QmmpcN3PjGI=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=VhtViDTFHUb1XTl+3ol9PIbCzpccwz5OMepTtNjcuknxbwM6O1DaMD1nfpScvrWhp0HO54/HsOUW1A6Lp5vFvfTJUcnq0wezuyHoDhwrczNCqoM7VlpNwTgpk7qcvRmW2t4UpKhEsWFwm+YcWDG/AVpNL0Ks49/nhhTYnHOSp5M=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=hDnOKgRN; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279866.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 55IH0Img013131
	for <devicetree@vger.kernel.org>; Wed, 18 Jun 2025 19:50:11 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	Eb0PR7MC8vATjVfhJQjNH3z5UBkyJTka8cUrPI6EnrQ=; b=hDnOKgRNDff/Lyaw
	quOkZ8IaI5VQYSbR6zgdrzmzL9ZzoMT3n9PDasulA3H8vuV9yVM9bDkjTutLKlIp
	cG4bra97nsK3EVP++Y2r9jhzwqHwGsR4/cYkni9bvcEhCg13DVs9DlDR6/7P3OZu
	wtBKcA/ojneNcgQLpnanKt605HR0zMGoQA3h/7Ig+mzgEfydcTA7vcmf5rp0FEXQ
	gRCVyZpgiVNbAsDnB/AQfD38TM6PuoWaha/4wVq/asD38Plw/yMT1CtUk5IVryHp
	0VLNfxQ4Pt1L8b/9GEm0mExQGcumVzVgtDiTRLrvOC02LF1EGjUlr7XMQQotDnqX
	gBpn6A==
Received: from mail-qk1-f199.google.com (mail-qk1-f199.google.com [209.85.222.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4792ca5jmv-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Wed, 18 Jun 2025 19:50:10 +0000 (GMT)
Received: by mail-qk1-f199.google.com with SMTP id af79cd13be357-7c5af539464so1581485a.0
        for <devicetree@vger.kernel.org>; Wed, 18 Jun 2025 12:50:10 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1750276209; x=1750881009;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=Eb0PR7MC8vATjVfhJQjNH3z5UBkyJTka8cUrPI6EnrQ=;
        b=XjckehnGZgco5EllRra+GzmTXsIK1ypGv8uUYbl7CvrU/IJtZkLcqQIVdB+ROGtRYO
         pKXwplWedmCO0Yf3zCjaMKWWB6dlgS3S+G1E2pcz4lJ2z35OzSY6Dd5WsxTyF+ZULT8S
         jD44Qt0/AkjAcwPy3nPuX7IFkiPm+F7n2mQozMa1xHMRgeO6SKizpGJpKgBWv8KQBVDb
         flyaNvLPSNlOBZpvo1CuSiCJU5wLDICBfehufxnpnWNZ9fiTYBUK3vDaNgKzobcskJrC
         xCIRVYbQyFlu1jlpe5zmwX5htYnolINV13AeGxXGo5+J1+Q2CJj3qmqvRz10E2OjmGJy
         Ltzg==
X-Forwarded-Encrypted: i=1; AJvYcCUCC9bXzNaofkO3Fb5pYNG9f/tvTK3EAbAUrWnmtQUjzehFvKuAq+CTmBTyS+IwA2xegvheknCUDsmv@vger.kernel.org
X-Gm-Message-State: AOJu0YxI7B5+WSimJ4eKtl7L3M1qg0K7k9nX3BlsxFA6uptm963wi1y6
	CnBm28HyrbdzYnb3KXyUumKgdMdRGqWxEMhZ4fy6elTzBMRogA2OzoXCdq/vVle5yE4cUxir7kh
	b1bJbsKp9cNf5dftxFVeQ9raMbEwDvt0HwnM46gDxvWfmPu59TahKIOLmQzaaMvf3
X-Gm-Gg: ASbGncs+xubFFKPDa59I97YLRvAcc15megZ0RUZ8gK3fC1bYZfLQ8L58LnLVGlEHtLF
	e8yg1e4B3HWThX9jKXYVH4GpaShVFXv3JsWgC4Z5KHtvPM9ck7PdrAnrbNvtejz5nQHHVs+1b3z
	5SFUQunTxg5apXqUJhZaRVwtIPPVXdK12GY2Mk7nPyitdH6jxxRYJGGykiQHmCLCvvvxO6cRbpq
	1l5+J69pJSD1Y27IADJympDMzLM1h37Cjc4HlihBnJ4s/fL4iG7qWZyYqIRKNxa+pfADlqI4rBD
	IX0QqY/wLW4jjuTwqdSkkfyp1GjPDGeJxzJNUuzXBnrCcKBWldyMi7OezCo6W5OSNAEk19Pmcg3
	2fX0=
X-Received: by 2002:a05:620a:414a:b0:7cd:4a08:ea12 with SMTP id af79cd13be357-7d3dddd3dcamr452894685a.0.1750276209392;
        Wed, 18 Jun 2025 12:50:09 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IFL3SJd4iFzCwT5g6MhwkHB+B/Bg64lwAFozgDBTuMDs9zJo+cDkA5jqPxifdTnFFGAD0h1eQ==
X-Received: by 2002:a05:620a:414a:b0:7cd:4a08:ea12 with SMTP id af79cd13be357-7d3dddd3dcamr452892985a.0.1750276208907;
        Wed, 18 Jun 2025 12:50:08 -0700 (PDT)
Received: from [192.168.143.225] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-adec81c0135sm1090314466b.47.2025.06.18.12.50.07
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 18 Jun 2025 12:50:08 -0700 (PDT)
Message-ID: <f2b806af-510c-4f33-a4be-9c84a37cd247@oss.qualcomm.com>
Date: Wed, 18 Jun 2025 21:50:06 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 1/3] arm64: dts: qcom: sar2130p: use TAG_ALWAYS for MDSS's
 mdp0-mem path
To: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley
 <conor+dt@kernel.org>,
        Dmitry Baryshkov <lumag@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org,
        Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
References: <20250618-sar2130p-fix-mdss-v1-0-78c2fb9e9fba@oss.qualcomm.com>
 <20250618-sar2130p-fix-mdss-v1-1-78c2fb9e9fba@oss.qualcomm.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20250618-sar2130p-fix-mdss-v1-1-78c2fb9e9fba@oss.qualcomm.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Proofpoint-GUID: r7Y0Oi70QTo9w-C-nozxZkxtBQjJ1UDR
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwNjE4MDE2OCBTYWx0ZWRfX7hPAcux7KULr
 Flf7UO6dq574Roi18W0i1FETf2B1TDEk31B0f+9J7LV231BB7qZMEiDHsB836e6hvjjNQvMDSUU
 Qd12NC+Pw965KOre7FFeOARAY89KJDgqoHJdY/+ZQSjwbsoLVQlPG8aAlGFTBUp9fR2ZO5dCesx
 a0rwjJynufKHyRslNutBET8khU/wd0sO/uj6NOPnh7LE0fjclBl2+JtCdgYYG2X4Ws4u+nvYUf9
 SPkHCCF1qimzAll36yzdp6SDv5AhuH3guVxACEhim9sdU3R3+rU7xN0r/6BZPtwMVmEVseHWBJH
 kX4rXm4Pa0PUClzuTECMtBxQ8TTO2NWTjjGUlkw6nbjwBb7bVpOmJXjMjzAYCvwPqyedzM2Qz4S
 P2ic/vYTWbSvF0IQ6NnJm7zfGblPfy1TYEu57JIi6BtInJ4D290OQEQGmRlTiv3x6AIoyT1q
X-Proofpoint-ORIG-GUID: r7Y0Oi70QTo9w-C-nozxZkxtBQjJ1UDR
X-Authority-Analysis: v=2.4 cv=etffzppX c=1 sm=1 tr=0 ts=68531872 cx=c_pps
 a=HLyN3IcIa5EE8TELMZ618Q==:117 a=FpWmc02/iXfjRdCD7H54yg==:17
 a=IkcTkHD0fZMA:10 a=6IFa9wvqVegA:10 a=EUspDBNiAAAA:8 a=LxG8ozSyjN6uvR1bqNQA:9
 a=QEXdDO2ut3YA:10 a=bTQJ7kPSJx9SKPbeHEYW:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.0.736,FMLib:17.12.80.40
 definitions=2025-06-18_05,2025-06-18_03,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 clxscore=1015 impostorscore=0 adultscore=0 spamscore=0 malwarescore=0
 priorityscore=1501 suspectscore=0 phishscore=0 mlxlogscore=738
 lowpriorityscore=0 bulkscore=0 mlxscore=0 classifier=spam authscore=0
 authtc=n/a authcc= route=outbound adjust=0 reason=mlx scancount=1
 engine=8.19.0-2505280000 definitions=main-2506180168

On 6/18/25 7:49 PM, Dmitry Baryshkov wrote:
> Switch the main memory interconnect of the MDSS device to use
> QCOM_ICC_TAG_ALWAYS instead of _ACTIVE_ONLY.
> 
> Fixes: 541d0b2f4dcd ("arm64: dts: qcom: sar2130p: add display nodes")
> Suggested-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
> Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
> ---

Reviewed-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>

Konrad

