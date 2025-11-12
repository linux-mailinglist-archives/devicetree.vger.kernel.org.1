Return-Path: <devicetree+bounces-237473-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 8345DC515F8
	for <lists+devicetree@lfdr.de>; Wed, 12 Nov 2025 10:34:55 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 225743A1F4B
	for <lists+devicetree@lfdr.de>; Wed, 12 Nov 2025 09:29:07 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 0D9922D7DC2;
	Wed, 12 Nov 2025 09:29:06 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="CRdelMCq";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="XdG6aPPg"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A21251FF5F9
	for <devicetree@vger.kernel.org>; Wed, 12 Nov 2025 09:29:04 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762939745; cv=none; b=FAdaFzjxlqwyX1QC4QHydwXov5ZonuHuhBhWX/EQdFVJY9Nec7fPBBxYC/63XWKWCxCuxHIpEO6jtwBgiF84NYPmXSMokfXKv3O5xK6Y8LHsZIuGT8SB+UbnaAaAFs8BE7vs6qzUV4Wk44pc4w7MbFijZ8VxWXyR30ntVEeW1Nk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762939745; c=relaxed/simple;
	bh=f/uh7xMVxW56p6zWC3Gy7P+W5GuXMtMZmawcVdJ3TIM=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=dtZzphEqq5BbuiIe1hfN1S23aY1GW3uoT3rfY1Wc134iycbDS/hLDGOhZEN7+bO4HDLqR6fKApPprjG3MCUQyoBNMYKCIK2H29lEG9aCOQ/UOFM111M+9VJ4Fv7c5SMdBk8EEX5FcTp9ZMVxc285iLhvPWV6yeHAwNxAFZOHlFQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=CRdelMCq; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=XdG6aPPg; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279865.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 5AC7baCo3503482
	for <devicetree@vger.kernel.org>; Wed, 12 Nov 2025 09:29:04 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	ESOOWg8JEZjuFVpbTTjzjvm+h9Zxz/dEl8JzPniKi9o=; b=CRdelMCqVNjEradS
	Ob2EU8riVoS5Q86XLzCiEyXVvMOBAv6mH1zZsVhU5NhODAlmKxHxMezzbjfBnO2a
	0VYY/XWsk4lizbM55i0E5EPOfWqLBlQCsnjwYjSvuFLopudlt8dk7iMc56zGM0eK
	sDHsy67N3u51mOn3ozNbf7ntlQUPRJPG4BJmFTUCQT/gEbs4ZQRhOcpKd6gDcFjS
	yUYe+NuJ/1EOiG7CKJGFEYgwa711pWxH6T1OWG1lryFR9MqE8BCk6+catgcuy9AU
	swbqTcMrO803pDSbRGTgcjOer3jgfN+F5/M9JujJBR/kFJGP9StGUDT4mTDt1QuY
	9YpOnQ==
Received: from mail-qt1-f200.google.com (mail-qt1-f200.google.com [209.85.160.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4acdcc1rt0-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Wed, 12 Nov 2025 09:29:03 +0000 (GMT)
Received: by mail-qt1-f200.google.com with SMTP id d75a77b69052e-4ed5ff5e770so1304171cf.3
        for <devicetree@vger.kernel.org>; Wed, 12 Nov 2025 01:29:03 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1762939743; x=1763544543; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=ESOOWg8JEZjuFVpbTTjzjvm+h9Zxz/dEl8JzPniKi9o=;
        b=XdG6aPPgWyqvXjLKyzCQGS4bZ05p1yr+RLV6Ysm2s9X80LhwRBEwRV+T1o8Mf4MPAG
         suvqnjkrY9h2Raopy9qmA/KHNBBwtLUDbATj/omrNV7kcyucM65l2JmLQehlXAAcdBD0
         4p8Dsz/3T6nSZmfgclhDyhQ2yScBArCydZPnrHfO+aLKvtdhQeoJNIlLQioPiA5FycG5
         G54IbBUtIG/JUMlZI9KEesNxcQsqCQt/Q2D8xGs4USN9QmGyDA+rM0K0Fos1rqQUaU5x
         +NKMsuFFnBsbXdk0HRGYCTDA/7ksLg8yG39RDtlaMu4KCerKzkyUVlNGDBf0FkjBiUlt
         +Z8A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1762939743; x=1763544543;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=ESOOWg8JEZjuFVpbTTjzjvm+h9Zxz/dEl8JzPniKi9o=;
        b=U9ebcBuiye6QY/4J7YfXWQ94H/JqoKu3zF1L1M0rxDOT/THLxu4QJdX+lrq123fa5D
         3jV8+5D+4DmOxfwTFLSAbsUOJW3ULEvE+R93u3IUQTrJJGh2MTvV/twNSY7Py7p//EyB
         Vw7ipnBxe/b9jz8yTm3n/YGFzAvPjKDXwkIxC3/u6NyaH9L7L3WMaqwgjiqow9Dk55uN
         D72WcIA5YHX1foL7GQMxRwpLE8dLy//5GaaafmlnIFHGPANQGy0e3iZN5bprurVRA5Df
         B13u53opvd6rClEardMtwdS4DnhKQN/DSNHi5pp1jCVCRNUEIwe46y4m/0xUW8HS/WAh
         Qa6g==
X-Forwarded-Encrypted: i=1; AJvYcCULuHNqTcY2psfm+vGnPJGWY5bxDhljWKtUORZQAR9jogCQM27U2+Qj52s2it+Bmpw39Aq1arGs3Mm/@vger.kernel.org
X-Gm-Message-State: AOJu0YztF/2IhWmfs14D7wIdfXBPvSpkZbU7cPEgHz+9jXdKcFgm5p6V
	xXbztORjTVp/QVO9vOUAlLneH5xf26kP3c2hchw41s0Z8JS5bZc1vmhUcrVt6AWbC5f26+QNqQx
	q/i+MgEIxixW9gQtpO7c3cpwYkteCs2RCBlaxyhZWwfd10clWxjoZby4LZ2WVxw/j
X-Gm-Gg: ASbGnctl+3QAeXYRCss/2EIBYBqAMBPUIECFUkme8N0tJhPdELaBh1+a6b5gJlmVF6U
	/ctwqvjf1A1zcHm3UGpTQZ8I6iNvo65f1VIaDOKpKxqHvoenMgLLPBZf6eNK0Fj1MvF8bColy6R
	Ddw/OFZeVM6+pf7fp/A87S30VVpAEGoqt1OYofl2k2320RZHzws6+zHwE/Pzh1mUeoHAkiQHMOp
	AvDJs4/YzB+k42kxJ5B8RVg1D5f0/zaB6Q9BJNdkN6nRCNZlRC+In85NzpEjwlSgGuwb++Cx/wc
	D6GL9qnBWGwFoAtWlcoTUVkW2u0izWh2SihSwwjFunrCFluY7P1GBgLuKZq/jfyb2poJkrLJtig
	oF4eXdOqiJoVRa1YAlOLhFZRAbMY44fP9fsMnF+1CavaM99NIpwmeRcIy
X-Received: by 2002:ac8:5856:0:b0:4ed:94e7:97bc with SMTP id d75a77b69052e-4eddbc95295mr20899731cf.3.1762939742846;
        Wed, 12 Nov 2025 01:29:02 -0800 (PST)
X-Google-Smtp-Source: AGHT+IFxXDkLREXGIGU0plkUZzQNFHAnbqVG9tKUgJHlDX4gOeECyx8+IjT5CefAqXJmbC4nZB6Eog==
X-Received: by 2002:ac8:5856:0:b0:4ed:94e7:97bc with SMTP id d75a77b69052e-4eddbc95295mr20899671cf.3.1762939742482;
        Wed, 12 Nov 2025 01:29:02 -0800 (PST)
Received: from [192.168.119.202] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-b72bf97d3c0sm1608794866b.36.2025.11.12.01.29.00
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 12 Nov 2025 01:29:02 -0800 (PST)
Message-ID: <5f26380d-4e2f-4de9-bcb2-54ae78495165@oss.qualcomm.com>
Date: Wed, 12 Nov 2025 10:28:59 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH V5 2/3] arm64: dts: qcom: sm8750-mtp: Add SDC2 node for
 sm8750 mtp board
To: Sarthak Garg <sarthak.garg@oss.qualcomm.com>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, quic_nguyenb@quicinc.com,
        quic_rampraka@quicinc.com, quic_pragalla@quicinc.com,
        quic_sayalil@quicinc.com, quic_nitirawa@quicinc.com,
        quic_bhaskarv@quicinc.com, kernel@oss.qualcomm.com,
        Abel Vesa <abel.vesa@linaro.org>
References: <20251112071234.2570251-1-sarthak.garg@oss.qualcomm.com>
 <20251112071234.2570251-3-sarthak.garg@oss.qualcomm.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20251112071234.2570251-3-sarthak.garg@oss.qualcomm.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Proofpoint-GUID: GrqTqSpjvPXpQtTo9sRA29fdBxAJD_41
X-Proofpoint-ORIG-GUID: GrqTqSpjvPXpQtTo9sRA29fdBxAJD_41
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMTEyMDA3NSBTYWx0ZWRfX2K6iXCR7QyJ2
 qDorG52gVqWwvlJuUUF5932or9e6+X8lky5LOvzzyKrYzyA0UxWWe2/y8/tTszOqvSF2wZ/hPxJ
 fT6XPro0YpRm2cRlJBlFpZaQ3SYle+ksP7HaKtvMnttKlT9IP60to9ElWORffQjTuoeRgDrBNwi
 UMbpFJkEwZ9uYYAm6UvPNJjR/BApiWhnPOknlnRbLiSMB/i0B9Krtx/fjsvgoB0YOLvFm5a3ysL
 Kyyh98S3PSv85xL/FUDiNYarHEaHfD3R+Lfs69FQwLTXFRf/9zZME7NaRG3Tvj1WV4QWWZADD6E
 Fo9C405ldEQjFK7J781Gfe5ums1Ya0QmsQNOhTjfCi4Tgo3XGDdQ0tQ6LWEDZPGSjV8kIsGt37E
 961ugL2n1p/gaBto9S6+3mKIBgrdtw==
X-Authority-Analysis: v=2.4 cv=L/0QguT8 c=1 sm=1 tr=0 ts=6914535f cx=c_pps
 a=JbAStetqSzwMeJznSMzCyw==:117 a=FpWmc02/iXfjRdCD7H54yg==:17
 a=IkcTkHD0fZMA:10 a=6UeiqGixMTsA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=EUspDBNiAAAA:8 a=KKAkSRfTAAAA:8
 a=UtbPLzXqTwk2hxi6kqQA:9 a=QEXdDO2ut3YA:10 a=l-yEoJkE5-sA:10
 a=zgiPjhLxNE0A:10 a=uxP6HrT_eTzRwkO_Te1X:22 a=cvBusfyB2V15izCimMoJ:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2025-11-12_03,2025-11-11_03,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 priorityscore=1501 malwarescore=0 bulkscore=0 lowpriorityscore=0
 clxscore=1015 adultscore=0 suspectscore=0 spamscore=0 impostorscore=0
 phishscore=0 classifier=typeunknown authscore=0 authtc= authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.22.0-2510240001
 definitions=main-2511120075

On 11/12/25 8:12 AM, Sarthak Garg wrote:
> Enable SD Card host controller for sm8750 mtp board.
> 
> Signed-off-by: Sarthak Garg <sarthak.garg@oss.qualcomm.com>
> Reviewed-by: Abel Vesa <abel.vesa@linaro.org>
> ---

Reviewed-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>

Konrad

