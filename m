Return-Path: <devicetree+bounces-247408-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id A1803CC7938
	for <lists+devicetree@lfdr.de>; Wed, 17 Dec 2025 13:23:10 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 18198312CDC7
	for <lists+devicetree@lfdr.de>; Wed, 17 Dec 2025 12:16:49 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D1EFB33C533;
	Wed, 17 Dec 2025 12:16:39 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="NaxEUkm7";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="YKR/TbPT"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4D66031064A
	for <devicetree@vger.kernel.org>; Wed, 17 Dec 2025 12:16:38 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765973799; cv=none; b=bChfmP8gjw0z2b+bCYmrJhJDvTB3p6Eq75PYcZk9onGBbcAu5ikigdgg4rSiJDBsuXd0ciAZI+yoOa3jENeqrfTTLqXJ7ek/v0f8dOm+YezvCPUyEmidKjfGev+QdsgNe1KpzDWDpSrTh7xUSON0vnzC7NWnJeQJWYUKHTTPVtQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765973799; c=relaxed/simple;
	bh=4UUbDKvfJnySqHMPn8srcX5wl+pBd5iFYc+gAGYdNuM=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=JsAGBsys4d476UTqzl2M2EfYiro/KXNFrqBFc+Fy9CGa5wjZ01C549IM0RL0oa+/0Ujp0PjooXAZvtp6dx8/FbtFw5C3Li/dsCPtSErUBUwqVUlCgapydrK+7i1xV3982Qg7uezZX/0fOhC2nKMIGMwE492zq6pVUqPI9sD1HPI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=NaxEUkm7; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=YKR/TbPT; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279869.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 5BHCCubG3311473
	for <devicetree@vger.kernel.org>; Wed, 17 Dec 2025 12:16:37 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	4UUbDKvfJnySqHMPn8srcX5wl+pBd5iFYc+gAGYdNuM=; b=NaxEUkm7JpyfreOy
	SGOcK8Qn//pAVifi528kz2lmMbR0aFu+8OkQ0NGNiE+cAK/aS5PgoZ3UCL0ou5BP
	YWBNCUfXdARzNfvCYE6bvlhwUMjxjxT/0tDPLozEzGgeVZkLjjd0/J3Qgb6i+J+e
	eBA8OEgR7eCyjBh6z7M9uV+68zZuaG6reyvcQ13QxFbl+MJ21ADw3XCNe3KycOsh
	Xi/ixuGJYwQBVegd4u5w2pFan5GrJ0N7lk/h+/SlgqCGchtAd8kc9WBB7EmeiQ0p
	ILgDmGlRGoMoMxnlkNKSegCDh7MHS2P/EP7DvSJI406GVNvna9ktka6dem2eEKUt
	WtrTUQ==
Received: from mail-qt1-f198.google.com (mail-qt1-f198.google.com [209.85.160.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4b3nkkhd6p-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Wed, 17 Dec 2025 12:16:37 +0000 (GMT)
Received: by mail-qt1-f198.google.com with SMTP id d75a77b69052e-4ee23b6b6fdso13017291cf.0
        for <devicetree@vger.kernel.org>; Wed, 17 Dec 2025 04:16:37 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1765973796; x=1766578596; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=4UUbDKvfJnySqHMPn8srcX5wl+pBd5iFYc+gAGYdNuM=;
        b=YKR/TbPT5g+b7qjCASJJXBzC6m7f0L8w9yZCqs6R10NJwe2s4mcV4NTYZb1LhVwqhy
         O4CVEF5ZQTZhVSTu0WAElTv1fd5Y0MxZsI8AIWWQuJwvv9HHRci/9VyEfLrI23nPF/4U
         zqKEbvQ84+ZQk1hVSz9X1UUplKaPSyClm8vtnpyiYCxCe1+zHUmGXnkuakCJ0b2OAR7G
         WakglWcc9UOB1zZoTDnAutGugBqpqBpXsCdOz9Wf/FER8ebzorSaszgirzNq990m0Na8
         SVw4d9x8qi0Z+/ygJTlhoN2k2UvrwyOKWLZLNvwuBdJFkFywAxQlFDfiprB1v/ny+sRe
         SG2A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1765973796; x=1766578596;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=4UUbDKvfJnySqHMPn8srcX5wl+pBd5iFYc+gAGYdNuM=;
        b=qvQEbHO1PhBLZmHn+o8qLLE/AJcaxn5Ie/l1HhzW9FPuMny+wB3ZVOPU20HiXIHMN/
         sJByNF1cmSQRZEKeoSHBusdaKNgM55lKCujmGTAEYV5GmHbx2O9ulLDXh+KZAqOvp2A2
         2j/EzM1rmpxhh3KnUtbgtUJGRls04ewXsLyntGAtBhPv099OFQ7RszQIJWP1MSIr6Wxj
         qRjmgYTgtmLp840GoWXNqV0aG2HtwBjUIlQyBrzQdMMpjghcI5HiV18InOzixTKREuIy
         IP8hbl6Mj/jJYtG34vQyKMajkiWXKEZ+PeZiMW/jXzyAQ6PTypcgFSiCWYPAK0AhGZrc
         5XTw==
X-Forwarded-Encrypted: i=1; AJvYcCXjCEfrAs/64LI/NpRWamxJoKG7EbZyJsLDzELeUXQdw3iTn9YRCMMzW/xOpre7+uR0YEJ0G3oir62z@vger.kernel.org
X-Gm-Message-State: AOJu0Yyl1VZL/Ab92aqHvHc64NtdDiSqbyL1skhfXnPixDXIbFx8l4DJ
	ES7IYeCre4hWdm0grNe8mAyG10aJO3Mvg578/UceImypxbfGxUMvsKXcHveEBnnMoNQ1hpB7R5a
	lC1QUNmiwdslQSnzSwWhafyGMO1eIoiYIBjkMe9OQcfsMJ1ikeiklQKf+uTAZ/qHu
X-Gm-Gg: AY/fxX5PJdfcEAFhzLjqFhvWELsad/dqgoXiSHV62zjtd96iIhN21RywGC/DMnSXD/d
	KW8B3K3PAW7aGlb4n6lUQQ1OmxPhQ0myPKbmSMcSiB4LiOau/BoQwye9/zv6KRYItMLcvz+hseY
	KEP39Ik5RDtxdc90D2DgAu8RzT/ft0AWzUzjb9gbgupLW/RtRik+0NLWrvtn5pK0JZifuvb6Htn
	vcwrCis6qMcVtphPUITCKPWKjIX8T/fB4cNYFMo5KJzGFQ1K/URcPtOHqyeH+V/y8NbVWFEskSR
	I/DBZeq7xP/12VMssL2bDzh0CvsMWCV4gF9T3m8d3OAUjIKtEYbjZqED7pygAjwV2+uMT0zhjeh
	sO5npX/mH7OHlSLxfPKx9wKrhD4JxTi3gUOZ4q5lJ1Ed4S7pgCa7kczLBSSCl60AnIA==
X-Received: by 2002:ac8:584a:0:b0:4d0:3985:e425 with SMTP id d75a77b69052e-4f1d05c4201mr187004141cf.7.1765973796326;
        Wed, 17 Dec 2025 04:16:36 -0800 (PST)
X-Google-Smtp-Source: AGHT+IFJN5acTOjObdEbmCvFz2ySx2Z/+Q93C7nsNct5e75/+BD6gdkMs45m+fLOQa4xV8/snhRMbg==
X-Received: by 2002:ac8:584a:0:b0:4d0:3985:e425 with SMTP id d75a77b69052e-4f1d05c4201mr187003851cf.7.1765973795908;
        Wed, 17 Dec 2025 04:16:35 -0800 (PST)
Received: from [192.168.119.72] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-b7cfa2ebafcsm1954317166b.28.2025.12.17.04.16.34
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 17 Dec 2025 04:16:35 -0800 (PST)
Message-ID: <038ef14e-addb-42db-8b15-b62ddb2c1a07@oss.qualcomm.com>
Date: Wed, 17 Dec 2025 13:16:33 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 1/2] DT: add bindings for QCC2072 Add DT compatible string
 "qcom,qcc2072-bt" to yaml file.
To: Vivek Kumar Sahu <vivesahu@qti.qualcomm.com>,
        Marcel Holtmann <marcel@holtmann.org>,
        Luiz Augusto von Dentz <luiz.dentz@gmail.com>,
        Rob Herring
 <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Bartosz Golaszewski <brgl@bgdev.pl>,
        Balakrishna Godavarthi <quic_bgodavar@quicinc.com>,
        Rocky Liao <quic_rjliao@quicinc.com>
Cc: quic_mohamull@quicinc.com, quic_hbandi@quicinc.com,
        linux-bluetooth@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, linux-arm-msm@vger.kernel.org
References: <20251217112850.520572-1-vivesahu@qti.qualcomm.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20251217112850.520572-1-vivesahu@qti.qualcomm.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Proofpoint-GUID: 0lVGm9zbDukcVAsAsiUM9UFaKTYsnDux
X-Proofpoint-ORIG-GUID: 0lVGm9zbDukcVAsAsiUM9UFaKTYsnDux
X-Authority-Analysis: v=2.4 cv=f/RFxeyM c=1 sm=1 tr=0 ts=69429f25 cx=c_pps
 a=mPf7EqFMSY9/WdsSgAYMbA==:117 a=FpWmc02/iXfjRdCD7H54yg==:17
 a=IkcTkHD0fZMA:10 a=wP3pNCr1ah4A:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=EUspDBNiAAAA:8 a=Gh5RWWm45Uqc4OsgibgA:9
 a=QEXdDO2ut3YA:10 a=dawVfQjAaf238kedN5IG:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMjE3MDA5NSBTYWx0ZWRfX3tB4V/AodByo
 1EjLwEXRZuDALpeDz0OTQRPlm/Zn7YoOqxFaRTgNBGZgAnaz97Jnzxe47MTae90dX4TfK8PODkh
 3MSaPAEjvrNW5ghPMQDmAwbzsnmk6UL169n8qd2ADKetRYFLdHkQHt5+p+xfOgzgnJ1Qks7Xl0z
 mCFXE+Z2HtRGlyKZIssxXmlhXXf0wJ3iVUEaccJQr5lIYOmqKXq577tVoRsJbZxX8xUfw8OrYjD
 jyh3MvBpFIYk77KZsCKmDAalTyAIFwfjdY+twZ4I5a8Ubzmo8swINejx9sRdOD35zI+ECppWaZO
 bXHSjMTUbx9hWJABtqkCm+fNia+1szod8rA40V4ZyslcHe7lAI9kppFxaLfULsnxNWb7NK4BBot
 CuaJsstbO8EYs+tnewAyIXZElWCMvA==
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2025-12-17_01,2025-12-16_05,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 spamscore=0 phishscore=0 suspectscore=0 lowpriorityscore=0 clxscore=1015
 priorityscore=1501 malwarescore=0 adultscore=0 bulkscore=0 impostorscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2510240001 definitions=main-2512170095

On 12/17/25 12:28 PM, Vivek Kumar Sahu wrote:
> Signed-off-by: Vivek Kumar Sahu <vivesahu@qti.qualcomm.com>
> ---

You made no effort to analyze the contents of the file, or what
a valid contribution would look like.

Please read go/upstream and check out the previous changes to
this file.

Konrad

