Return-Path: <devicetree+bounces-130700-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id A5D049F0AB9
	for <lists+devicetree@lfdr.de>; Fri, 13 Dec 2024 12:19:04 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id B4B77169CF5
	for <lists+devicetree@lfdr.de>; Fri, 13 Dec 2024 11:19:01 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 4C70C1DE4E5;
	Fri, 13 Dec 2024 11:18:58 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="FHRzpVjj"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1BA261DDA33
	for <devicetree@vger.kernel.org>; Fri, 13 Dec 2024 11:18:55 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1734088738; cv=none; b=ly4UwCIUQaaiwX4obqjDM8I1Q/mKVdal+YxRYPCgqvXRmVIgYJZ+uDDLbjUaDOsH4fEt3gU6XI20ulMmq4w7wlY1k+khFSUNpjcIbizCIzrfeswLBHUs9uv/sFeCzbpj9/C8qWHRX+cIWGTL0laj21b4/2g1c5G3eRF2JW8FIBU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1734088738; c=relaxed/simple;
	bh=auNuVg+Uq01zi1bIh+gO7UoyVpAIBt6Xmw3RIjeDju0=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=YSiRMC7IZTjMaR8l1YseQis6jS7ZRwyaPvJwJWcg5xMSuDy5TeAimjq0WabCNKGpKvcle/J5FuMoBLmVR3Zd1aQOA+lFEVjHfrk8YiPKIST8Q3In2FQr5GcVr85vI7qRe56aAiFwMSrw189rbrm04eCKfms+fHbcWwjNa7Gjjlk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=FHRzpVjj; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279868.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 4BD35R4k001661
	for <devicetree@vger.kernel.org>; Fri, 13 Dec 2024 11:18:55 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	s/TQKENLvmprGOW1/Wu3SkBKRJf47l5oWgnMdRrCuEI=; b=FHRzpVjjz7wcMkwZ
	W27T6yxjzvmsYuiPzmedpeP4fEPqXr6E8enQCfNUhY4r6nSV2kcTJr7RhBt/QpOf
	XPwzkq1E4DQzdNH68VWyfT66rjvG1ns0/bS729Gca1mYJ6TcrmovRQcUkCTYrhkp
	WYvZEWlTuDym7+K19apfTZoHxejNVlDKG2s7sZWJbE20KWTknV6R1NhoTVHmVDI6
	lQg1xzYmwvGlx9r8oM/b79Tb7ehQkCej9xGeeswx5NtAg1NCsf1uXTc+6yXJXqA0
	9uXJiWzyZCJSmtlzm6ChMHl7RP6S4M5ZHMT098GGtDJG855QmqCAcUjTM5sh0qsd
	TV6weQ==
Received: from mail-qv1-f69.google.com (mail-qv1-f69.google.com [209.85.219.69])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 43fqes4mhd-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Fri, 13 Dec 2024 11:18:55 +0000 (GMT)
Received: by mail-qv1-f69.google.com with SMTP id 6a1803df08f44-6d887d2f283so4254316d6.0
        for <devicetree@vger.kernel.org>; Fri, 13 Dec 2024 03:18:54 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1734088734; x=1734693534;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=s/TQKENLvmprGOW1/Wu3SkBKRJf47l5oWgnMdRrCuEI=;
        b=SkMW6gKmvdtYVAGReKPGiWEhNDp81chJuudRDZrwjlWDYdxJE2Ax3cvRXAG3wuzFZ4
         97FQo+KY15PgiCVw9lhHcKY8HfmwQEVM9lZaD2b43Op2Q5yGqRWABl8Pk1ZMGd4voXLv
         01OIQFi2OoL3LZBSTmqd9ehYAyPnAIIjr170LwiIAqFYygey0Mt3iH5ltkDGrHj9xqF3
         eKt2oiCHj94Hr9+fWy1TOetYh3p+xRLCES3TLgvax29ev/0ZWVWnhbX5VzKDaPAAo5H5
         yK/RKxKZ7QK3TOy2g87AgexidFZIP3ri74Thlpu4KYsRUa12SKATP7p1bCJWivslu8ie
         BwBA==
X-Forwarded-Encrypted: i=1; AJvYcCUEAE+frWxaMGk6d8gTALj7S08upwFfpwTCMn8qrEWyzj6Ec5FrHRMUelKhPyBbgEpTlZ/f25bZc/Rt@vger.kernel.org
X-Gm-Message-State: AOJu0YwmgDKP2kcfva+j6+LU7a2vuuuUfwxMJsjbNVAFLdiKtgnfZuRp
	EX3/qRSchDI8Mxx3a7N3b29F0pHW582VPJO6tuOoK1o/YHLiyZYRPpQZdmDxMLYcxGDnA1cnvra
	8y2NMGqTnxuZpcccM8EwrBoX7dm8yGK/oDbf6Zb547n+Bvws4/d3Xid2/fdlT
X-Gm-Gg: ASbGnctOP5PEZY20WafunHDq+M+/r9L/DHkdFhYPfDcsIWhDkNHIcHP6TXh1hXjJSxj
	/qxbEVJUxNp/NziqKjukI1gyWQnoQKHlVj+ScRbDFFlJk9aRIkToLGkTSKj9sBA5W+ReSXQnSqu
	xxLIBMQyKinD22vsnqEnqDRyKC852enekSfALAyNiWxjpne+Z8yOyJOeLNf5/5ZsnkjJVDA0TqU
	IJfFhzOm9Z5WMmZtvvwWQPKjMFocT7HpSZABVCflsSQjaiEW3zNjY3rfDMGej/HRI8368eaj3D4
	ZACv5CvePkzx2G9Q4rvHc+A1V3bVIkk4vY/U
X-Received: by 2002:a05:620a:19a1:b0:7b6:c6f8:1d28 with SMTP id af79cd13be357-7b6fbce2263mr128315685a.0.1734088734252;
        Fri, 13 Dec 2024 03:18:54 -0800 (PST)
X-Google-Smtp-Source: AGHT+IHBR+cUBdvb74XuOejNI9mYSykpjh49aeXCJst5j85GNfPlE4TY4ja3JXn/U1G43w2NwwSbUA==
X-Received: by 2002:a05:620a:19a1:b0:7b6:c6f8:1d28 with SMTP id af79cd13be357-7b6fbce2263mr128313785a.0.1734088733880;
        Fri, 13 Dec 2024 03:18:53 -0800 (PST)
Received: from [192.168.58.241] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id 4fb4d7f45d1cf-5d149a48ab4sm11339660a12.27.2024.12.13.03.18.51
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 13 Dec 2024 03:18:52 -0800 (PST)
Message-ID: <d397065d-80fb-467e-bf41-0f5aad882a15@oss.qualcomm.com>
Date: Fri, 13 Dec 2024 12:18:50 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v8 5/5] arm64: dts: qcom:
 qcs6490-rb3gen2-vision-mezzanine: Add vision mezzanine
To: Vikram Sharma <quic_vikramsa@quicinc.com>, rfoss@kernel.org,
        todor.too@gmail.com, bryan.odonoghue@linaro.org, mchehab@kernel.org,
        robh@kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org,
        akapatra@quicinc.com, hariramp@quicinc.com, andersson@kernel.org,
        konradybcio@kernel.org, hverkuil-cisco@xs4all.nl,
        cros-qcom-dts-watchers@chromium.org, catalin.marinas@arm.com,
        will@kernel.org
Cc: linux-arm-kernel@lists.infradead.org, linux-media@vger.kernel.org,
        linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, kernel@quicinc.com
References: <20241206191900.2545069-1-quic_vikramsa@quicinc.com>
 <20241206191900.2545069-6-quic_vikramsa@quicinc.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20241206191900.2545069-6-quic_vikramsa@quicinc.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Proofpoint-GUID: t3vf64YiWRc9RhuoxpPme55EIMeSOfKu
X-Proofpoint-ORIG-GUID: t3vf64YiWRc9RhuoxpPme55EIMeSOfKu
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1039,Hydra:6.0.680,FMLib:17.12.60.29
 definitions=2024-09-06_09,2024-09-06_01,2024-09-02_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 spamscore=0 adultscore=0
 lowpriorityscore=0 impostorscore=0 clxscore=1015 malwarescore=0
 mlxlogscore=787 priorityscore=1501 bulkscore=0 phishscore=0 mlxscore=0
 suspectscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.19.0-2411120000 definitions=main-2412130078

On 6.12.2024 8:19 PM, Vikram Sharma wrote:
> The Vision Mezzanine for the RB3 ships with an imx577 camera sensor.
> Enable the IMX577 on the vision mezzanine.
> 
> An example media-ctl pipeline for the imx577 is:
> 
> media-ctl --reset
> media-ctl -v -V '"imx577 '19-001a'":0[fmt:SRGGB10/4056x3040 field:none]'
> media-ctl -V '"msm_csiphy3":0[fmt:SRGGB10/4056x3040]'
> media-ctl -V '"msm_csid0":0[fmt:SRGGB10/4056x3040]'
> media-ctl -V '"msm_vfe0_rdi0":0[fmt:SRGGB10/4056x3040]'
> media-ctl -l '"msm_csiphy3":1->"msm_csid0":0[1]'
> media-ctl -l '"msm_csid0":1->"msm_vfe0_rdi0":0[1]'
> 
> yavta -B capture-mplane -c -I -n 5 -f SRGGB10P -s 4056x3040 -F /dev/video0
> 
> Signed-off-by: Hariram Purushothaman <quic_hariramp@quicinc.com>
> Signed-off-by: Vikram Sharma <quic_vikramsa@quicinc.com>
> Signed-off-by: Trishansh Bhardwaj <quic_tbhardwa@quicinc.com>
> Reviewed-by: Bryan O'Donoghue <bryan.odonoghue@linaro.org>
> ---

Reviewed-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>

Konrad

