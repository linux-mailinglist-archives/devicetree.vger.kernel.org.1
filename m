Return-Path: <devicetree+bounces-233609-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 582CDC23F7E
	for <lists+devicetree@lfdr.de>; Fri, 31 Oct 2025 10:00:03 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 953EB1A2294E
	for <lists+devicetree@lfdr.de>; Fri, 31 Oct 2025 08:58:20 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 449BF325488;
	Fri, 31 Oct 2025 08:57:47 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="HSKXpXsb";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="Bh6dcn88"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CF5D931814C
	for <devicetree@vger.kernel.org>; Fri, 31 Oct 2025 08:57:45 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761901067; cv=none; b=gRLCqF+1DnM2iIQPaa7EscR+FxZP4UeULBgJtiNp9HyoKSQCAcuec+f5LcVZU6JaoXUi+p7z08hYBTEOZGs5AjTnNfV9BIi/9KP/pO4qkCxFlcHXKbJG02uLdsoW0ZAcjE1h3cZlzeB9pS+1GYLlIXXXEj2Dlglsxve1O9u+mFQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761901067; c=relaxed/simple;
	bh=bNGqZbxihhh8ZM8J02vzVpuZCERlaf9gZph121pkYCQ=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=kd8tqXX1iOvL2PzkCsQYtcH1nrp37+3e641ETphyQst32UlrCghuIlpzw1QgFZVJX+eyz7AsUwlEBeXM2n4LsIOcSZExdNBXAgk6rOWuY0C9Hkoz6X0v3hM0IEP2mO7izck+R74OL8CQSeirdU6ulJ1IZX8gVQ9wLsWELhK5WN0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=HSKXpXsb; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=Bh6dcn88; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279864.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 59V8o4G0898088
	for <devicetree@vger.kernel.org>; Fri, 31 Oct 2025 08:57:45 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	GaJvVZVi/qoSvZutu9WPcFmfGA+T6c27YzRimaE4g3U=; b=HSKXpXsb3hH4isTT
	6HsA+BHXCHrjxphZBPCR03tzGijypWyyLvhhlZGGBwr6i6btTCqwPhXIxhJTMvZQ
	+5AcXSbxffuC7k9GVLuIXPItLRSdMDzTvQ6wIqKwu9/OxM0Ude82Jj5MHrJwkaRB
	uuRUkZDWV8tzrSn+cY999s3eElh33gEZJKPByCtGOOcS7k1AneM84Yu3xnraAfHN
	2P/Lmr933C0YE2MOrDYMUwC234O75EcxwoMXTgQ8yXm6Nr7pNo7sy7XDNAwwh+km
	tS/+QFA826miIf5KEoySo4CPXbgf5kRl3TcZkQrTooxQ9wNb/aY7jX0IohJr8UwG
	YbhNKg==
Received: from mail-qt1-f198.google.com (mail-qt1-f198.google.com [209.85.160.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4a4gb21eyf-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Fri, 31 Oct 2025 08:57:45 +0000 (GMT)
Received: by mail-qt1-f198.google.com with SMTP id d75a77b69052e-4e8934ae68aso6137901cf.2
        for <devicetree@vger.kernel.org>; Fri, 31 Oct 2025 01:57:44 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1761901064; x=1762505864; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=GaJvVZVi/qoSvZutu9WPcFmfGA+T6c27YzRimaE4g3U=;
        b=Bh6dcn88AU6v8GrMJYGwiurBe4sHq5NTfKXEx+PVIX/4MOVsUielnHoKVOGeF+tTx9
         Dln09Wdc6T/QqtId3hLKNO7kdb9UzrKdQMbmXnoFrASc58NysLUKJjrnQFWlqb1TD+hZ
         m9H4tiH6LpuP/ZlprO1a4JAY+NcCiN4+JSCm1tvWhJNXaomLjUakHqGDA7T5YTe6G8MZ
         ScuEuUVQMhnoxDwXJ+Hafpi7M5mfHbJNAp0Avsdx6ZtVqvY0mMuszle+N5nWJrnZdCHQ
         KBC+WPE7awyod11vm5kZIUUyNY4lqIP73T8fFQ+spLL1ee0pWlzRkrfdnCrDjjWkykWV
         fugg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1761901064; x=1762505864;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=GaJvVZVi/qoSvZutu9WPcFmfGA+T6c27YzRimaE4g3U=;
        b=wkCv4LIDZ9rKEKNDjIE9QZGsX+HD6E+AQFCRunKocZSX92aiHqOfgT5RFeqsiFhS1p
         pnzB5MV3ZGTH/GbSaMLMVK0SpeYkp91yZ3Tcomj6aiWj7WruKyP0UIx9gxaZMBE+sxrG
         W6Kv4rA0uVHSbnuVF8UTOpRiMRc7hCyL3Q+Ch+LWIioYYZMYafZJMxjsR2hb0PHnVpn9
         AfmLmABjjGV6CFK8sIkd45y6kKAscG4mkdIqZSE6GkgkdJ++Ho/aB4yFDcCo5ujwAdat
         WGKMs5tcJ41a6fC0yFlwY38MMyCdTMytgkNU3wvdylhSGYcdt/cR/arGGu07ofrY+/SR
         CSaA==
X-Forwarded-Encrypted: i=1; AJvYcCV+q3NGnjRcj4Xmqp9D9N71+a3+SVTvzf5HpHO8gqjl3vfbXbKIivXxfSrGdN/JaJx8GDCrcxNubidP@vger.kernel.org
X-Gm-Message-State: AOJu0YzNcGu7a9DRVXTmVrZbZUU3QGS6/GIdTt0se/ECkYHqHcxFPWtv
	s6pXBp1g96ko5iR1M8cS5k3d89plCKvIXqlUOlp5BwiOHmoChfTgaifwKEbfHfJhZny5XNP+ToL
	kXMMAgzRN/2g0M9I/JJ2xSMAy2Gbg6I+EEMQk73P0SVanuPTsntpn1D8BJ4Jw/uow
X-Gm-Gg: ASbGncsIrfo9CduThi03Yqp/ye5pyN6LKRi+zACoXo20hu/m666P5sp+7fduqSGagQY
	I7O9AdiReScPjV7HI8Ky6queKc4Dn21s/2yqJeG4bQmYAnbB3YEz54AO5QroUNTCjYefXdzMRZ/
	Nlvn7+m9sbtgxku0YzcSJ/b4dYvNDQ7lneI+LOnHbOcouVBFkFGGPzzwipUd16Y2UWd9OnrqPho
	nMUjuDjhUozq+L3rjn3bMWV2D1+RKhNqmKYLQcatdVble89sEsu7mc0GttQICO3qa+/YUKcpJ4q
	ehh0wdnZ46tFe4vSfT47yne43dmzKQLuQ6E5teYwfQJ3R9v8tzOzvX8tyvOKguoOCyu1g9m3QFA
	W0yqQew+cvUgmiJOU+PUpWR++0mUeH2V0M4ABsP9YeB9u1ySpdTox5RJi
X-Received: by 2002:a05:622a:ce:b0:4ed:2f2b:aadb with SMTP id d75a77b69052e-4ed3100954dmr19658691cf.12.1761901063980;
        Fri, 31 Oct 2025 01:57:43 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IGl9blk7ijqkr5rpwUUW4nIIZVw2skP8seOcSCI7SDxhd4gKnkwI+5IUk8YhqUmXBl3g0Ixsw==
X-Received: by 2002:a05:622a:ce:b0:4ed:2f2b:aadb with SMTP id d75a77b69052e-4ed3100954dmr19658491cf.12.1761901063525;
        Fri, 31 Oct 2025 01:57:43 -0700 (PDT)
Received: from [192.168.119.202] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-b70779762e9sm123101366b.7.2025.10.31.01.57.42
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 31 Oct 2025 01:57:43 -0700 (PDT)
Message-ID: <600ec6ce-4411-4d65-b483-c571502b7455@oss.qualcomm.com>
Date: Fri, 31 Oct 2025 09:57:41 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 3/3] arm64: dts: qcom: rename x1p42100 to purwa
To: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley
 <conor+dt@kernel.org>,
        cros-qcom-dts-watchers@chromium.org
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
References: <20251030-rename-dts-2-v1-0-80c0b81c4d77@oss.qualcomm.com>
 <20251030-rename-dts-2-v1-3-80c0b81c4d77@oss.qualcomm.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20251030-rename-dts-2-v1-3-80c0b81c4d77@oss.qualcomm.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Authority-Analysis: v=2.4 cv=efswvrEH c=1 sm=1 tr=0 ts=69047a09 cx=c_pps
 a=mPf7EqFMSY9/WdsSgAYMbA==:117 a=FpWmc02/iXfjRdCD7H54yg==:17
 a=IkcTkHD0fZMA:10 a=x6icFKpwvdMA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=EUspDBNiAAAA:8 a=QDRpGmHLnzjZVnEgbfQA:9
 a=QEXdDO2ut3YA:10 a=dawVfQjAaf238kedN5IG:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMDMxMDA4MSBTYWx0ZWRfX5gkor2qs8hFp
 7wBBlpU2MUKvWyzDNYzq/kPy9ZAbl2erHYSRXegqlrVVdSqjc1DfyjoEBWS+ChdXT8jlEGFNUNr
 QpmkoUC1UkU2MQr5vp6Rg3ofv2vHA72zU/myL9SUbJAjn0cTcnxA+yAWs7rZOijqte65TkQ+zGE
 A9VAdM7oUIWlgd/O0kce5CL8aCiEfv3SlGCXnrVYY8fYlyK2eZqGSvJRrPygmokmCEy9MVKYg3x
 ho/Atm1x89/WjVMYgyx4FZqtjzRi745OC0Gjrvq9go4hGTPF9VVSJ5LOWICIGFG/oLac7Jnz2yi
 C12TINqTtUECoKg/2J/QF9RXEviKZg1Xd0VuQ+jQeQMP9+qfMi2y6PY/1AqBcpGXvQoBVbYmyeJ
 DvSMCXVxBmR71AJvyuN34G9DLyTF2A==
X-Proofpoint-GUID: E4x6LZUMpk0ytAi9j356FCmVpzC6uR91
X-Proofpoint-ORIG-GUID: E4x6LZUMpk0ytAi9j356FCmVpzC6uR91
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2025-10-31_02,2025-10-29_03,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 bulkscore=0 malwarescore=0 phishscore=0 impostorscore=0 lowpriorityscore=0
 priorityscore=1501 spamscore=0 clxscore=1015 adultscore=0 suspectscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2510240001 definitions=main-2510310081

On 10/30/25 7:20 PM, Dmitry Baryshkov wrote:
> Follow the example of other platforms and rename X1P42100 to purwa.dtsi.
> 
> Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
> ---

Reviewed-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>

Konrad

