Return-Path: <devicetree+bounces-214768-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 9B8C1B4A539
	for <lists+devicetree@lfdr.de>; Tue,  9 Sep 2025 10:27:00 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 7D83F4E1896
	for <lists+devicetree@lfdr.de>; Tue,  9 Sep 2025 08:26:59 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D7F7A2459E1;
	Tue,  9 Sep 2025 08:26:55 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="OyuILiot"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3D402242D9E
	for <devicetree@vger.kernel.org>; Tue,  9 Sep 2025 08:26:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757406415; cv=none; b=kuuSLvYouEgs411L/Nl1wxXySYn+gmdNX7bWgbxWrNI1YAsTAJhmmhXvnNBEG3aQyzPO7+8iV5/oyPz1yKbJ2Pz4nPYQiJaAsZQ0euQfotgZM/d4IVOdgNaVDUagntXju8pF24pqRpCtsApe2PvG+0eG0T7yVV1c1yfcGJ2nle0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757406415; c=relaxed/simple;
	bh=P1GM3phe3ykV/SamJ41sqJjVV33ZjMdPB56k+xQB1PQ=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=JX+SgjV1ZD7WmZ5q9S0VfEvR+4UiZHU5hx6i2gBHAG2s9pm2s4WsdRy/dalMvR8R/zVn+lmdjoMkEnFc0U+vqoBCli83s2wfbDN6Ql2DEWxVX7X/NvobqxZnVmBRib6XJWH5n3mxa+JNfH2juf5S1dD0BLAxn8JXb3lKdDeMYrY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=OyuILiot; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279869.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 5896SY7V020800
	for <devicetree@vger.kernel.org>; Tue, 9 Sep 2025 08:26:53 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	dZ3qsIZRKMtmRP++MDCauSjBs0OndHKpMtXY+g98584=; b=OyuILiotbj8cEaWn
	s2F/Y5ZBVOVzC/IPMVdXFaZZQNzW3bNRbxcsVqs4pjeDfvfWbFFhirzGZ9dsVJ6c
	z0j5m0TdQRq5u2o6PxpAqBQlTtIITDwQ2DNzs+mb/2AFJYUxuiujI16iGRzr6RRE
	YP1OZ34LgzIannFM2L8ka7983hp/Mz9sY02fRtSdHr++WrS0kMEz3P7DOCwjZhA5
	dbCSG+aGbW8SkOdUY2zEKg5KW1uo0mjUPQAZvnhsgBNkfqNDGayUKXVJnLDO+rSH
	GexIcEPYlC6WcGHg5wA1ikBx/68Wn+OW/b8qzAo4kII3owTCarrNSzG1iwsysRN0
	0aJkcg==
Received: from mail-qv1-f72.google.com (mail-qv1-f72.google.com [209.85.219.72])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 490by8yjkh-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Tue, 09 Sep 2025 08:26:53 +0000 (GMT)
Received: by mail-qv1-f72.google.com with SMTP id 6a1803df08f44-70dca587837so8270186d6.3
        for <devicetree@vger.kernel.org>; Tue, 09 Sep 2025 01:26:53 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1757406412; x=1758011212;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=dZ3qsIZRKMtmRP++MDCauSjBs0OndHKpMtXY+g98584=;
        b=ckzZOrlI6UB7iGnmoKpPzakukRJchjpdwOYsEEg47l4ItHNMU4qn24c49ySFRv5mmz
         5J/ewWI0eNIoeVL6lM/mE9l3If700TuONvsJ0JByKArbW9xMYoHbbq9JuZRf4QRbxZok
         PakVfp6DOd/0c1Qb1FP4DXpWo11s9zHNq1t1b7hKfxe1sC3K/ugVhzN+h3rFvTxx1obp
         rrlQ2iqSJNLOHNDQW/iGl3+2twuRGQxsHRJCmUlrwvPAy+0OVzsi6FbTuzbUYrljA1n9
         kP7bRJset4T5/1A+5P9GhOgSM0cLwTNg+ZPbvlo6N9EfcSE0PNxoRPD97SW7y0cCWD3u
         0P9w==
X-Forwarded-Encrypted: i=1; AJvYcCXDXrWMFPe1p2fwS0x4d4zFMxnRRjlFPVHHE+4v8oy72PmxgKPdZ+2XhPsd4+daU3jlvasQLiyPZyMz@vger.kernel.org
X-Gm-Message-State: AOJu0YxCh0MhXE48DAQdMRUFHXBaXlrNPlITJodin9ds6agug06UT8Qd
	g875Z95n9QUv8hCOsbFMM98P4NpXWhq5QXx4y0bBB/weznVZlqmo4ln8AhSYZPpfgISY7LFzhd7
	nLTwW369UQuNtTzTCE49VNwrwnv4Z71i2xz/3wWxBtZ+Xb8hb9YjJFhg0B/D77G6a
X-Gm-Gg: ASbGncvPl8IK/gGrxFCHasgDZM9m/zVscpYpMhOf4o4Apub59prrdHqZuzJiCx2Vm2x
	EDRrsvo3UXNGfAiahfLywlagzE4oqv3F5pc3tQJvnLgGa3k9xhqDsP6Y5TNeBQ8RdOsS+V/Pkkn
	iWrVK6ky4cOoTL3B8Uq4lBFV4BPpQgxBOzMFU6mz/DyL+gxeiNrFM1mGTLsdxOOjntNOHAaU3Yn
	F/hNpZML+qhLjAIFb5OaJbXm+E2YSHiA/4tdm0lUqniHc5+2fovpGpPsMAr07NVbH2VAr0jGpq0
	8PvFHjH5vuTmRWWr4ZmUmQIemg+DnX3y7VIWmLF6l8dgPzDm8wp507t/7G5lfy0XHGDBmdRklyN
	KzkIBW4wqNA2mH3aTVgkQ5w==
X-Received: by 2002:a05:6214:2aa5:b0:734:4ca1:1da3 with SMTP id 6a1803df08f44-73946b9f476mr69425806d6.7.1757406412264;
        Tue, 09 Sep 2025 01:26:52 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IGGfWzUgli8sCKjybiZynjh0Hh9ipnr2D52Wv2AtFKxG9s4JCMp/u55EFix+07znAQjRv9wFA==
X-Received: by 2002:a05:6214:2aa5:b0:734:4ca1:1da3 with SMTP id 6a1803df08f44-73946b9f476mr69425626d6.7.1757406411355;
        Tue, 09 Sep 2025 01:26:51 -0700 (PDT)
Received: from [192.168.149.223] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id 4fb4d7f45d1cf-62bfe9a0198sm847373a12.10.2025.09.09.01.26.49
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 09 Sep 2025 01:26:50 -0700 (PDT)
Message-ID: <74d489a8-6a6c-4ee1-8b02-5ddbfbf64b8d@oss.qualcomm.com>
Date: Tue, 9 Sep 2025 10:26:47 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v10 2/4] arm64: dts: qcom: x1e80100: add video node
To: YijieYang <yijie.yang@oss.qualcomm.com>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, Wangao Wang <quic_wangaow@quicinc.com>
References: <20250909-hamoa_initial-v10-0-ec10057ffcd2@oss.qualcomm.com>
 <20250909-hamoa_initial-v10-2-ec10057ffcd2@oss.qualcomm.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20250909-hamoa_initial-v10-2-ec10057ffcd2@oss.qualcomm.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Authority-Analysis: v=2.4 cv=Yv8PR5YX c=1 sm=1 tr=0 ts=68bfe4cd cx=c_pps
 a=7E5Bxpl4vBhpaufnMqZlrw==:117 a=FpWmc02/iXfjRdCD7H54yg==:17
 a=IkcTkHD0fZMA:10 a=yJojWOMRYYMA:10 a=COk6AnOGAAAA:8 a=EUspDBNiAAAA:8
 a=0N2-J2CQ4XjjJXqxovsA:9 a=QEXdDO2ut3YA:10 a=pJ04lnu7RYOZP9TFuWaZ:22
 a=TjNXssC_j7lpFel5tvFf:22
X-Proofpoint-GUID: LDlwu_Of01htksvDmiKBGEUIgL3O_NTs
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwOTA2MDAxOCBTYWx0ZWRfXz/PT28C/OXuc
 k9ziUgjppimjGS3sW5/vACf75YOqC8xJha45s+XiCDIoQ++Tu/y3YcLFXfFsgwgMF37oeTZ0i53
 wBgieGRiM2LcdXZVt71VTYCrc2BTSSgoOW96aVxxWO2Z97k/HAT2km1PGaS2BfcwiINBNJCY/P5
 l0V8D+5Nw4Q6M6akFi8H1QNL598l6kOa5q9NA8ul8qeo2M/ocakyu16gpGALywqjwaiJsg5VFXO
 n+daWtwkqqtuUb/h3AtKpOrT1S+YfbQZx9ldNT6nhlYDN2ZAcbycYkb/qhEroiC1fiXhIwTtqMT
 ICR1QaXms8VBfDwrt3NKHYKvD2f/Pf/C3Im8943KDV8YTcefVLSQe85hCeaLxmiZ8jS1YJNGuFy
 IL+A2kRE
X-Proofpoint-ORIG-GUID: LDlwu_Of01htksvDmiKBGEUIgL3O_NTs
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1117,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-09-08_06,2025-09-08_02,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 bulkscore=0 malwarescore=0 suspectscore=0 phishscore=0 clxscore=1015
 spamscore=0 priorityscore=1501 impostorscore=0 adultscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.19.0-2507300000 definitions=main-2509060018

On 9/9/25 5:56 AM, YijieYang wrote:
> From: Wangao Wang <quic_wangaow@quicinc.com>
> 
> Add the IRIS video-codec node on X1E80100 platform to support video
> functionality.
> 
> Signed-off-by: Wangao Wang <quic_wangaow@quicinc.com>
> ---

Reviewed-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>

Konrad

