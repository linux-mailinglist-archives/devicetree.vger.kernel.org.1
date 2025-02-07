Return-Path: <devicetree+bounces-144162-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id B1FC0A2D0E7
	for <lists+devicetree@lfdr.de>; Fri,  7 Feb 2025 23:47:27 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 761807A3A8D
	for <lists+devicetree@lfdr.de>; Fri,  7 Feb 2025 22:46:31 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 85E6E1A5BAD;
	Fri,  7 Feb 2025 22:47:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="hZ+oJS/w"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CC00F191F62
	for <devicetree@vger.kernel.org>; Fri,  7 Feb 2025 22:47:20 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1738968442; cv=none; b=lTwEduE7SrVR1KQIhlK9wa+UR7iS+7ElV4D7CvJ768kNwK0oKqkR0mjK5ERXNOlymop7Dy4R5FohhO6Tpj7M4iMw5k40p9g5jtslAtlbfzKldkgZEOtPXV8S/MTIXglDNHzOGzCVi7TZJPSh6D5dkf18oYlp5h3KHvW9DK5MCwQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1738968442; c=relaxed/simple;
	bh=Q1fbi3F8LKnBa1vR6e0w8SK35bgu0+iWdIMrLyuScbQ=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=CXMvpjNUrplT5oPtDaCdbxzUG3sE1t0vBuMgiNcbcI7xpnqDI45bNpNxeIOQz4y/2pgwJ030kOKI3zuNqLdI9zGIipCTcj0W9OEOWPA2cAsh3xHitddhBXyPQ93NQAE23BeoZS4W/SCmfocHogBzo/TKGKLUbbR9zm3lmElz3Ko=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=hZ+oJS/w; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279869.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 517FSkgt006629
	for <devicetree@vger.kernel.org>; Fri, 7 Feb 2025 22:47:19 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	GSfrT82LSQv1cmL5Q6NuLOzNcusRp2aoe4uqa6zAbDk=; b=hZ+oJS/wbJgwqJBl
	nyf2cAtw3hj0J0dYY+QaMuFSG6sVkBGmKo5JSCgv+HNmXu+OCOm6LVDnAOIDrNBk
	Zwnm3lvIhAka2ikEuLSrVlsB9YPq8CSW/gvN77nvjIzZp8p7P0WLDFoCqkze23Mu
	HkazSrVSCvVr3/dyrggSKeQo4UVWWLK66NrMTE2W158jd018dNEpHwZNMMLVEAyQ
	XSJXAdUns4rHpOR40ZBDOV30M+Bn9OOZTs1vcByoQS3kFMdkOxNHV/X7GEjPz52y
	zbx1XO/hME/l/sN8b98DlnrpHvLBJOxHyd4BDWo9iBX4p417t/j5R8s8Yg5xsUWh
	ffZF+w==
Received: from mail-qt1-f197.google.com (mail-qt1-f197.google.com [209.85.160.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 44nmuqs02f-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Fri, 07 Feb 2025 22:47:19 +0000 (GMT)
Received: by mail-qt1-f197.google.com with SMTP id d75a77b69052e-4679fb949e8so4340371cf.1
        for <devicetree@vger.kernel.org>; Fri, 07 Feb 2025 14:47:19 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1738968439; x=1739573239;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=GSfrT82LSQv1cmL5Q6NuLOzNcusRp2aoe4uqa6zAbDk=;
        b=W14XI3l2ySU2UtB8OEd9SpFutBOwfmqZS6Wd5MqOHoNxVWATursYsk965OyvzjMpWa
         yHDw/D/VYI2UdS9k4sejl9Y4Yq7ezjv+JE910hf2mXFryHNhZJLr+D5hViCZJLVCaCFq
         5mYsiTBoJDykgh/4StHXrnTzu0vyFnZAmI37LiVeN1QZAoEVJz4Zv5Ll/BXrj0TfOoDO
         +Ihy4PG3tFwt3MQ0Z8vIvEtjlzvjhzdj6dTSFjTsLpfPNh58XVKJePudYbvwMFfKNloA
         +TQzJ72GyBhQdDj7XcoTmJaenPogSrl4Fgs4kgl+66sSkl2Y7H5rkMUVBHe3pOcpAar8
         4uiA==
X-Forwarded-Encrypted: i=1; AJvYcCVKbayozDWIMqjRVLQ5atj0fRcfPw4OCY2FWWP+Crc3i+lunXGloY0OysxSR66Zc6bgLwxJEnXb40xe@vger.kernel.org
X-Gm-Message-State: AOJu0YxJUceA2aD5kinLZMSp4B3HC6rQyk06J7aCwUZ8ekpvwPuNN7D/
	Gbs/mnRXflGPHvvhB7zKio3kLsmt5RC60HBI2WARK2E8LqpkYbL9bHh4DmqD55HyCMERFNGETxv
	1lTJbLxzYwtnwRl7g4I9PEI3nQPBlrpfcw/BE7gQ5Pxiq7UFY6UeZPV3JUT0P
X-Gm-Gg: ASbGncvtan8S8wyHQFJgdNZWoLcH6Yo2Lus6qjX+mMXT0/syD8k/wtjgyoxYKcyZWH2
	9nPA5BMfJHsBEbNBkywmQ+zdKozP8xKrLFMh3dAcoWEGIU4WJ2MCOlVJHWc66I/bTtLf75qx8xz
	POJfJCRBkHL6BJqZjalU0oFvqXkb8b2uMOK0TPtp9jVXIK6vIofvcckpRbdN8qu1+y40FLyr2CK
	JbcGJdEZzmiJ6wMFIOpyRdKx3zsEKHe/QAMdeOqVjeSfvKCpaOjwjrTfMI82Xjq/zqKpwrpZg2G
	tAG4Cjw8rFfJLe9fQGq5lmHeCfndlBQGA8MKj7N00gPiMSGjbDgUQIMFvJU=
X-Received: by 2002:a05:622a:1b87:b0:467:6bbf:c1ab with SMTP id d75a77b69052e-471679c7d79mr29186371cf.3.1738968438738;
        Fri, 07 Feb 2025 14:47:18 -0800 (PST)
X-Google-Smtp-Source: AGHT+IGSsJAkiNdMntxbj6WaJ97FcSyVaatuMmgkKKnf1mFsTb8a3C0KJ8abaktCJbg7NroLAnIrZA==
X-Received: by 2002:a05:622a:1b87:b0:467:6bbf:c1ab with SMTP id d75a77b69052e-471679c7d79mr29186181cf.3.1738968438388;
        Fri, 07 Feb 2025 14:47:18 -0800 (PST)
Received: from [192.168.65.90] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id 4fb4d7f45d1cf-5dcf1b7ad6fsm3197436a12.18.2025.02.07.14.47.13
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 07 Feb 2025 14:47:17 -0800 (PST)
Message-ID: <c6352263-8329-4409-b769-a22f98978ac8@oss.qualcomm.com>
Date: Fri, 7 Feb 2025 23:47:12 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 0/5] Add UFS support for SM8750
To: Melody Olvera <quic_molvera@quicinc.com>, Vinod Koul <vkoul@kernel.org>,
        Kishon Vijay Abraham I <kishon@kernel.org>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley
 <conor+dt@kernel.org>,
        Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>,
        Alim Akhtar <alim.akhtar@samsung.com>,
        Avri Altman <avri.altman@wdc.com>,
        Bart Van Assche <bvanassche@acm.org>,
        Bjorn Andersson
 <andersson@kernel.org>,
        Andy Gross <agross@kernel.org>, Konrad Dybcio <konradybcio@kernel.org>,
        Satya Durga Srinivasu Prabhala <quic_satyap@quicinc.com>,
        Trilok Soni <quic_tsoni@quicinc.com>
Cc: linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        linux-scsi@vger.kernel.org, Nitin Rawat <quic_nitirawa@quicinc.com>,
        Manish Pandey <quic_mapa@quicinc.com>
References: <20250113-sm8750_ufs_master-v1-0-b3774120eb8c@quicinc.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20250113-sm8750_ufs_master-v1-0-b3774120eb8c@quicinc.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Proofpoint-ORIG-GUID: KLcsyZQmGYjiQ7A0crzic07mj2tJdkGB
X-Proofpoint-GUID: KLcsyZQmGYjiQ7A0crzic07mj2tJdkGB
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1057,Hydra:6.0.680,FMLib:17.12.68.34
 definitions=2025-02-07_10,2025-02-07_03,2024-11-22_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 malwarescore=0 bulkscore=0
 spamscore=0 impostorscore=0 adultscore=0 phishscore=0 suspectscore=0
 clxscore=1015 mlxlogscore=999 priorityscore=1501 lowpriorityscore=0
 mlxscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.19.0-2501170000 definitions=main-2502070172

On 13.01.2025 10:46 PM, Melody Olvera wrote:
> Add UFS support for SM8750 SoCs.
> 
> Signed-off-by: Melody Olvera <quic_molvera@quicinc.com>
> ---
> Nitin Rawat (5):
>       dt-bindings: phy: qcom,sc8280xp-qmp-ufs-phy: Document the SM8750 QMP UFS PHY
>       phy: qcom-qmp-ufs: Add PHY Configuration support for SM8750
>       dt-bindings: ufs: qcom: Document the SM8750 UFS Controller
>       arm64: dts: qcom: sm8750: Add UFS nodes for SM8750 SoC
>       arm64: dts: qcom: sm8750: Add UFS nodes for SM8750 QRD and MTP boards

You still need the same workaround 8550/8650 have in the UFS driver
(UFSHCD_QUIRK_BROKEN_LSDBS_CAP) for it to work reliably, or at least
that was the case for me on a 8750 QRD.

Please check whether we can make that quirk apply based on ctrl
version or so, so that we don't have to keep growing the compatible
list in the driver.

Konrad

