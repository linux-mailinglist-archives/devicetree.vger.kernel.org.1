Return-Path: <devicetree+bounces-188467-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 420E3AE3D21
	for <lists+devicetree@lfdr.de>; Mon, 23 Jun 2025 12:47:02 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id EBBA7169514
	for <lists+devicetree@lfdr.de>; Mon, 23 Jun 2025 10:43:41 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 1CA862441AA;
	Mon, 23 Jun 2025 10:40:35 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="Qt/lZXde"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A45B423D28F
	for <devicetree@vger.kernel.org>; Mon, 23 Jun 2025 10:40:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750675235; cv=none; b=ApRQYiHZBrzOun7hbvAVmJN99GhmYTRK2CCeQvwvTzD7NLGT9xk2yaLgCn0mz3edwBXJ9RPV7ZSnlH4bfXXsOx0qhoiXBb7Y/hGZSHPGbLEC7446M+G6HbC/93cTFcIj1sEx8d81ZB5ElcnKQP+CstHJ+D23WRHpP7TyRlcwXB4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750675235; c=relaxed/simple;
	bh=KHd7ek7wScTW5BMWrwQrgcBrFmEZsNhi4ty1GF+C6vM=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=KTZtfKncTDtyrFUqJVg5NwWyWAD6k4toftE4o+sZMeH0boq9aSfQ5KfO/xCbcvnMIvbbhwl4jpapSGokI0/X7kuGJUYUmJ8ycuwCfzZ+V7e9mM49fNh5fTk4ohXbCVJ61QhP0BsApEO/vPGJv/3bVkuBLco9tQKSCCZg84RhCkg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=Qt/lZXde; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279863.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 55N97r3p010397
	for <devicetree@vger.kernel.org>; Mon, 23 Jun 2025 10:40:33 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	AFgHeL5Gs2jCvYUfdp7Tl3i7xt8xQpcA+8DI3691EVc=; b=Qt/lZXdeRPNUExJj
	j+lB6sPYre8ajxlImVPVvMvbl2W52LDb+cwMZK6R6+PNFfcjvriqrcBacV6UlgQ4
	sbbFc3isdWkysM6FOYcWGkkM9wKU4cfTwCHo47uV67BKzjJoGGGDxRMDtfCufzHE
	WJy7SsIOdvK/VJeHLE2O6pH5qRp07Q0Qq7gVbVvRikkejd5mzE/ukmstEKp+u4vS
	ybMSNzI0YnG3YoqffjtXsdF+tpNBtVsIbrIuPBLQx7CKB3xvB54rhenRmYMCtLMZ
	mp6Mvm3Nq5qG9KIBSAilLmo2n7n76Lzk6TvbVPlEVDxtl/NVdVn8q7zJKIhFcXLL
	uxMl0Q==
Received: from mail-qk1-f198.google.com (mail-qk1-f198.google.com [209.85.222.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 47emcmhxgh-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Mon, 23 Jun 2025 10:40:32 +0000 (GMT)
Received: by mail-qk1-f198.google.com with SMTP id af79cd13be357-7d3ba561898so71969485a.3
        for <devicetree@vger.kernel.org>; Mon, 23 Jun 2025 03:40:31 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1750675224; x=1751280024;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=AFgHeL5Gs2jCvYUfdp7Tl3i7xt8xQpcA+8DI3691EVc=;
        b=YAXQ3ohojdXpJtgMw4PmI3ZLP8vkyac8svziXGlkQG2zDPWuN5ImyuG4LfRqjoOhBZ
         bA5eEdTGz9sguoMzfJFLVeIe8suJTyggFP6jwvMKCCNcW2x65DplsbOG2tHGrVXzqu39
         iBUoXmdmo6xQYU4tTIQFjZJNf0bL237gY7H5wcp1wMlCO+S1Puw5DmExfDnTQDtrpwXV
         nacOIN3aqt9MYT70wZN52M6akkay/N0/BdBHKqeLy4kHGq23HMRsA+ObPC7ht8qfi3lF
         B/ZVAnCgOCZuLmADrU5SVcfVTF0IBiGX+eCdMDp3K2cSZY5S5p3HDHVeBgMyKpXZyguP
         uEyw==
X-Forwarded-Encrypted: i=1; AJvYcCUMep/qoyu8mH71by0TaIro2J6QXH1B68jUzfWdOsgxdYeU8MGOzPbxvKFck+OpFtwZtb1iLRtYn03Q@vger.kernel.org
X-Gm-Message-State: AOJu0YxkdAC+Mz49NRcfvk8GAtKe/ZAvkYt1cKARlUmlyGuMRYhs58D7
	kTo8MV1eDGxVVNwrhU6UXlvhg7kEh74xCbgHXTBbfq+VhLGhUYIWNYuKwn8FZK9bOaZAD0c5tZ8
	fVUaA9reh3SXGeWErm1zCzzpxP5hDs7ql49ksrVYcSHORul2BJV3etMhF5fB0BTUR
X-Gm-Gg: ASbGncvW8ZWiRV8ZGJnrvDAzzyhzHNNcEdXoTsPZV/TiXRiQIAoPXIhtpxjVQhmio/8
	naiHwLfH3gh2SW6Lb8VgrIU8uY9ym6A8FTiqV2buFpZaaH/IkbRD5g5hnrqNRs51lBEdckWw7u1
	oCB55Q5WFk/AmCqaeO32c74+aVSPWk0epPAF/L3dZe/icGPLY3UNLg5r8iHhFy3S1gvT4+nvozl
	sDb7cq2zgbJn7oW69tLPy6pH/gA1YMi2LYZ8FfwPKov+Cyo7BCwrutxoHPmhe2SmLT5e/8lm+AF
	bBiBQjpkxQFjQq3Xa45/59VOMkHHgSEkANbuUhDrVyDDqh0EzV3lXKF0nylkjwWcLBrvt3LbnS4
	NDlI=
X-Received: by 2002:a05:622a:1aa0:b0:47a:e6e1:c071 with SMTP id d75a77b69052e-4a77a21e46dmr74611211cf.7.1750675223942;
        Mon, 23 Jun 2025 03:40:23 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IF2f1QQK1CX9KeTJNYGyibcvCyULu4j7WMWuIlqzfC1HVlyjzcYFejOgtkDsDfuQaX9s7pQDA==
X-Received: by 2002:a05:622a:1aa0:b0:47a:e6e1:c071 with SMTP id d75a77b69052e-4a77a21e46dmr74611001cf.7.1750675223466;
        Mon, 23 Jun 2025 03:40:23 -0700 (PDT)
Received: from [192.168.143.225] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-ae0a18d9887sm3419866b.11.2025.06.23.03.40.21
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 23 Jun 2025 03:40:23 -0700 (PDT)
Message-ID: <c198b946-0599-4254-8ad6-3d897e047928@oss.qualcomm.com>
Date: Mon, 23 Jun 2025 12:40:20 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 3/5] ARM: dts: qcom: msm8960: disable gsbi1 and gsbi5
 nodes in msm8960 dtsi
To: Antony Kurniawan Soemardi <linux@smankusors.com>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, Max Shevchenko <wctrl@proton.me>,
        Rudraksha Gupta <guptarud@gmail.com>
References: <20250623-msm8960-sdcard-v2-0-340a5e8f7df0@smankusors.com>
 <20250623-msm8960-sdcard-v2-3-340a5e8f7df0@smankusors.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20250623-msm8960-sdcard-v2-3-340a5e8f7df0@smankusors.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Proofpoint-GUID: 2elz9MiNgRMFGMrcpivN6cBuOCkZSOqP
X-Proofpoint-ORIG-GUID: 2elz9MiNgRMFGMrcpivN6cBuOCkZSOqP
X-Authority-Analysis: v=2.4 cv=J+eq7BnS c=1 sm=1 tr=0 ts=68592f20 cx=c_pps
 a=qKBjSQ1v91RyAK45QCPf5w==:117 a=FpWmc02/iXfjRdCD7H54yg==:17
 a=IkcTkHD0fZMA:10 a=6IFa9wvqVegA:10 a=wxLWbCv9AAAA:8 a=EUspDBNiAAAA:8
 a=qfpFch6WGoqHJWfhXuAA:9 a=QEXdDO2ut3YA:10 a=NFOGd7dJGGMPyQGDc5-O:22
 a=QJY96suAAestDpCc5Gi9:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwNjIzMDA2NCBTYWx0ZWRfX+CzCYJf3sM1S
 wRk4HWQ3P+SkQCPQVE/t2RD82BaHR2mv/U06zItXUAfIvm6MnmYNhoWzNeHfPTZ/vvC8+uOvwJw
 ZG/FaoK2Y3gKpS9b9MYzWxFTN/+vXWiY42Vq0CBEu+ozG/GV0xKrwSSfzzgF+OdtmMM39/lECvq
 Ip1QD94gqnF2BshxztEKvlq5NRdsy6LXNECcNkCuqO/mnG3amOLgqiGD8Tbcy4IfBfkxmTVQf0+
 INZCNXEXeMlg4WZ6L21R/eiUK6yulNXCLnKJjxSFcNrOGdrUoLO+c87nNdx7YBgzxZuREO482fe
 LBocJPQqm0JUfpPT67KnC/XBQx8gHwG2Y6gjX216IAG2dqrFr4+Wo52XmOYx3bRIjafjEM7ZvmB
 3g45fc6g9qnrG5n11lNF8R6n2elezsbEg79lz+ZrRq6Y0JUTsUs+bCWjgqimSMoHHnmBMLK4
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.0.736,FMLib:17.12.80.40
 definitions=2025-06-23_03,2025-06-23_02,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 bulkscore=0 mlxlogscore=884 adultscore=0 impostorscore=0 clxscore=1015
 spamscore=0 malwarescore=0 phishscore=0 priorityscore=1501 suspectscore=0
 mlxscore=0 lowpriorityscore=0 classifier=spam authscore=0 authtc=n/a authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.19.0-2505280000
 definitions=main-2506230064

On 6/22/25 8:26 PM, Antony Kurniawan Soemardi wrote:
> Not all devices use gsbi1 and gsbi5, so these nodes should be disabled
> in the SoC dtsi, following the existing pattern used for gsbi3. The
> upstream samsung-expressatt and msm8960-cdp devices already have status
> "okay" for these nodes, so this change should not break existing
> functionality.
> 
> This eliminates the following error messages when gsbi nodes are not
> configured in the board's device tree:
> [    1.109723] gsbi 16000000.gsbi: missing mode configuration
> [    1.109797] gsbi 16000000.gsbi: probe with driver gsbi failed with error -22
> 
> (Note: Xperia SP doesn't use gsbi5)
> 
> Signed-off-by: Antony Kurniawan Soemardi <linux@smankusors.com>
> ---

Reviewed-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>

Konrad

