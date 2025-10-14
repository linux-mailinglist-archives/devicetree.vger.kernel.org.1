Return-Path: <devicetree+bounces-226447-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 6F4B1BD8B94
	for <lists+devicetree@lfdr.de>; Tue, 14 Oct 2025 12:20:46 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 0D9823B62F8
	for <lists+devicetree@lfdr.de>; Tue, 14 Oct 2025 10:20:45 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E8DBD2EF65C;
	Tue, 14 Oct 2025 10:20:42 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="bK0kaZ/L"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8EE382D248E
	for <devicetree@vger.kernel.org>; Tue, 14 Oct 2025 10:20:41 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760437242; cv=none; b=N3LBI0qqKQlEE14jrJfv+pknCpvsFUrzRj2XPtCHXdi0t4gJq37Db9qtMDdEYE6ooeMSl8aqrtxPHrjGjiHFfcuXEPzetNdO4LfHdZK2wcKzkoj5lYaKvHljbpYMqLFtLt3SJIsffjomyS/pHN9Spcn4VsQsbdN+Fh10Ne4CX5o=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760437242; c=relaxed/simple;
	bh=+2ZSg9gGJunWQCgc7+1XgNDm2+FG38YtZxEeD+FZuus=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=llfxXlHTr2TL94vcKJuMu/hhiLAnofHv7xRI2VVH2emXwyWLaCb9bKVGZ57IMfsouDVPcxh89zG3+y094E3aaOJA8+Z/8grVcI37U6aTMo+rKLBWumZWPnj3ujxZYI9NeOLkgQRCaNfj2k0msUAAQxidAvvotImbCqSrRtZyHZc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=bK0kaZ/L; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279864.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 59E87gVR027219
	for <devicetree@vger.kernel.org>; Tue, 14 Oct 2025 10:20:41 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	g2kEdtMvDPt+rqvURw8acoIqtysfSNK7vYwUQNqZU+w=; b=bK0kaZ/LrwoKKi0p
	XypjxupzGHGUP87OAqbmX/hn93c3WYD+NSzxoZo9IeSESbK91D75ItUqooYfIs83
	5yYh5NJtye4qiEBD6GuYXfrCPyNi7tMwrznIqtOpIfsSV8Wg8VuYuewTjjt6alWc
	RKdeHdK1Sa5/VhxLJwHseYKxZ7o3c68Z+c1dBDHe5Koe/7Z3VUMjf17wvdpne7+e
	x+RpVv2oho3quVuIl97bXNq2jEySoNs3s3BVBOiik2vjYosi84wl+oh2QgjfisRV
	uKL3NLBQ9xrk6Gdwg+/SIOyedXBZ75MtpIYx/QlSdgDIRDV/Hqv7NAGSe0p2JOWS
	64yYTQ==
Received: from mail-qk1-f200.google.com (mail-qk1-f200.google.com [209.85.222.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 49qgdfyxn8-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Tue, 14 Oct 2025 10:20:40 +0000 (GMT)
Received: by mail-qk1-f200.google.com with SMTP id af79cd13be357-85e23ce41bdso292977385a.3
        for <devicetree@vger.kernel.org>; Tue, 14 Oct 2025 03:20:40 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1760437239; x=1761042039;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=g2kEdtMvDPt+rqvURw8acoIqtysfSNK7vYwUQNqZU+w=;
        b=WUciRrWIS95U4QFy7PBDfd62SK9K9TJa9EEFmA+O92VJ725uc/afKrfokZpuOFmXAD
         DhQkizsgVYKi97SgDmPhkmisAyYPhAt7+DOfHiVhAhoef+f0CkZuUPMHweCWkEL8ODsp
         P/PMmDvIs5ZoftxGgpooraEz9ocDwsEc5Bt5HntjHaYOpo8vutQssjaEMZYwEl820T5+
         P9YC5EWSTLk3E3A3ypD0PhoBfVnvH4J5+EWplcM27q1Zl9Tu8B6Kv7V/s8hRo4IvMYd4
         424Ajam5kzuT7z2/hqe76KIQDfdHv3sD8O+kea3b/LfldqPT15bH9tAk5vDj0WM4KJ06
         +rHw==
X-Forwarded-Encrypted: i=1; AJvYcCWAArt5gbPgBcyjOjTfPYIgZlJngoSExeNxtm9wHfU8rpMJ1Y3MTDydovzcMcFW9uJZ+cHiHWNZHlsq@vger.kernel.org
X-Gm-Message-State: AOJu0YwFaRtD3VWArIMR8/g3AUVyTNS6jjCWRqyfx+t2zpnnwGWbcg/N
	/12PWm/LnC6OaYsiz6OHeO0mqI5829uFnWvZAhREkUWMFpZL18fZh0lx9nnaTJIIkkcTdilJy7Q
	lfyt/sjmr8ti9e9Db3n5AwbMnhu0GpFU51ScgqZfUKFuP3Hvj+8rFEvS5lC12QKB1
X-Gm-Gg: ASbGncvouG5JQq1K730LDA+z59QlEXcL+O66YBCeQtUK/E/SWfhfCc4dFG/rY1Tuz9W
	8TOtHIo4sVwtiQthE17lUA7TWw4B5cyNbzq4ErjSjiz0ni7LCoi5w1KQWo64kPyefxpfFVEo5hd
	oxKtpvB+sbQlMoS+F/3JsEVcHy0EH/PkKUHDMhcQ416DrQCPmM473laCeC1gePsKhLqKiKF1o93
	sDLQ5ga+dMwvBfSP8iQkelYj3+im8NsyvRe9o+RWRFtElhErIZHDULm4kGyQwgB1p9lpVlNrGls
	iNssO56h7v8aY8ZUp3IVgm2GPvuFz92VAPYKTh573nA7sKVW5ocnyyiaedqoPNo6/ozlWIwjiig
	D1MzSndUptgo6wuFc0cgGRw==
X-Received: by 2002:a05:620a:3905:b0:878:7b3e:7bbf with SMTP id af79cd13be357-883527ca0b4mr2301899685a.3.1760437239569;
        Tue, 14 Oct 2025 03:20:39 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IEToilszXXVl6TOFI/ery5IS7Gp+zKZiJJRhsldaBWvmJKNQriMnvgZYNnBuORieNhVzsn2HQ==
X-Received: by 2002:a05:620a:3905:b0:878:7b3e:7bbf with SMTP id af79cd13be357-883527ca0b4mr2301897685a.3.1760437239106;
        Tue, 14 Oct 2025 03:20:39 -0700 (PDT)
Received: from [192.168.149.223] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-b55d67c9b68sm1119466766b.32.2025.10.14.03.20.37
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 14 Oct 2025 03:20:38 -0700 (PDT)
Message-ID: <c84bec69-dcd0-4443-b1df-6590426d6598@oss.qualcomm.com>
Date: Tue, 14 Oct 2025 12:20:36 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 2/3] arm64: dts: qcom: sm8550-qrd: Enable CAMSS and S5K3M5
 camera sensor
To: Vladimir Zapolskiy <vladimir.zapolskiy@linaro.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>
Cc: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>, linux-arm-msm@vger.kernel.org,
        devicetree@vger.kernel.org
References: <20251013235500.1883847-1-vladimir.zapolskiy@linaro.org>
 <20251013235500.1883847-3-vladimir.zapolskiy@linaro.org>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20251013235500.1883847-3-vladimir.zapolskiy@linaro.org>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMDExMDAyNSBTYWx0ZWRfX542xLg46aHRP
 eEkOpxyex5bV87WLaLKFpGBuYRp+zPGBXwHnFYPqVhsbxiQFZaSFYGzs0Bmvm6Uq9rjL7edU+IO
 FhZpwP2jikoExGBKzaMExHpwHNx0dP6JiAFEE+YlZnsHGzDKBP8byPslIz8iatM0fUV9A2Jt3IX
 IRs2udvQ2hrRj3Hb1Fop/M7qto1N0v+1DFevy0ly67gAh8YU7hPPTCrd2OiYDSy3W6KHbPuX7E6
 svUv7maEn08p0EzumcYVUxel08uMcfrVIAjQf7sLmlkysUoRG8VOvVkEeD3f3blwYmu7cguWNAu
 UCdxnWP3f8b/D7l7PUyg8YYI9VD2mjBCsS/vzkIYtIrz2lYyksz782tfO6OC4J93VXVKQU9xf7p
 UZ+H+LtJrsUDbYx9mDNlMRwQHM/G+w==
X-Proofpoint-GUID: nhp2iqx4Sba6lCAarskwfWv6R7F4N3UF
X-Proofpoint-ORIG-GUID: nhp2iqx4Sba6lCAarskwfWv6R7F4N3UF
X-Authority-Analysis: v=2.4 cv=J4ynLQnS c=1 sm=1 tr=0 ts=68ee23f8 cx=c_pps
 a=hnmNkyzTK/kJ09Xio7VxxA==:117 a=FpWmc02/iXfjRdCD7H54yg==:17
 a=IkcTkHD0fZMA:10 a=x6icFKpwvdMA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=KKAkSRfTAAAA:8 a=EUspDBNiAAAA:8 a=11TjR-Pfd0tNEpgAFlIA:9 a=QEXdDO2ut3YA:10
 a=NXw8GaxpU7kA:10 a=PEH46H7Ffwr30OY-TuGO:22 a=cvBusfyB2V15izCimMoJ:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-10-14_02,2025-10-13_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 impostorscore=0 lowpriorityscore=0 priorityscore=1501 adultscore=0
 bulkscore=0 suspectscore=0 clxscore=1015 phishscore=0 spamscore=0
 malwarescore=0 classifier=typeunknown authscore=0 authtc= authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.19.0-2510020000
 definitions=main-2510110025

On 10/14/25 1:54 AM, Vladimir Zapolskiy wrote:
> Enable CAMSS IP and Samsung S5K3M5 camera sensor on SM8550-QRD board.
> 
> Signed-off-by: Vladimir Zapolskiy <vladimir.zapolskiy@linaro.org>
> ---

Reviewed-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>

Konrad

