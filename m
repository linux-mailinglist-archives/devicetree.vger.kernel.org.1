Return-Path: <devicetree+bounces-250200-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 77D91CE6C50
	for <lists+devicetree@lfdr.de>; Mon, 29 Dec 2025 13:54:28 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 35C933009814
	for <lists+devicetree@lfdr.de>; Mon, 29 Dec 2025 12:54:27 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 5276C31D750;
	Mon, 29 Dec 2025 12:54:25 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="Xw2YxRya";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="JpJ0hwBI"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EA05F3126AE
	for <devicetree@vger.kernel.org>; Mon, 29 Dec 2025 12:54:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767012865; cv=none; b=BgOs9Y5PXxNF1rdHU1PuVz2TydHLWenLSZ54C4+sU9gIVGTd8M3TzwsKnWFOp6ShZD5YLvH9fCw6bDH4sIDcrZd0h0lpbh1uFC2JE77Spii/l6P4X8/pR0cqNlEG5XBV4X89d6PCs/R9tvUNUHOjBWW3b30b3mp/NUiwkjwTEw0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767012865; c=relaxed/simple;
	bh=Ywq+qat8veOaPUJ/o2Dy8je2/ymLEQvhBnUFK/B0CTo=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=quRfR04dKa9wqV0xkA0jB5xKWPsn9yHs6URFhcX1Bx1TMQ8UIQkQx0lWuSgJlK9xJfpVY53IkShX+7EREgeM5HaY0XHEkgrSD/j7/ycFxfNQ+n7J/kNhsKZzO0V5aAcH3kg3nW/+LCULRBUW7p7sduJVzz0zA5NnTBpI/GKdxnU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=Xw2YxRya; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=JpJ0hwBI; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279867.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 5BTA50at956298
	for <devicetree@vger.kernel.org>; Mon, 29 Dec 2025 12:54:23 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	NLVhadAPx+W4sRb+akST4Yy+lIb9kNuFObaO4aJRIsI=; b=Xw2YxRyaxKqNHnd4
	CtFJRDEln1KJetD44mrVjxwDdDdNgDJc3MsFyraWmuhqZ32QvYmoqIFDtglDzwFE
	TlClHBu/PGShuR4sD9LS/bBOVHVo9KmRGUl8RUP5UqMGdO9SCwOrdY73jCdwwGzM
	VjqigOwdlFH4h5rNxYNYOlp0d3DJQTTeS0LdKydclwXVgKbEA385FT/dv9hSGMgg
	5ia76MY/LEUv8rzaoZaUveG35XTcYITWg3k0pIsKpNjV03+ZHWfqCIGyk7caeApt
	3b8SBOmBbSudod6madHa5d1w9caJl37rH10WnvFrM9ncBvEaZzzWXWjYIWZwTuDc
	DfnIaQ==
Received: from mail-qt1-f200.google.com (mail-qt1-f200.google.com [209.85.160.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4bbqk189u6-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Mon, 29 Dec 2025 12:54:23 +0000 (GMT)
Received: by mail-qt1-f200.google.com with SMTP id d75a77b69052e-4ed767bf637so2392781cf.1
        for <devicetree@vger.kernel.org>; Mon, 29 Dec 2025 04:54:23 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1767012862; x=1767617662; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=NLVhadAPx+W4sRb+akST4Yy+lIb9kNuFObaO4aJRIsI=;
        b=JpJ0hwBIqto3FH+NoR6tcoQIe3C4bt50SAOjVMyWDzFyHph7k6jasMGMrfhvyRmUbC
         pajcsYbUyK3XsxMHuvOjlkSqcFMLOXTJNw9DsqZV5QVQfPcu+fysfIPuF2Y8Q5vXGEAd
         gONPIV+7j/eQGcm4eoQYIBy2Jv0zlii6QFZWCYNapoDCJQrkgR81X9HxaeercJZCIMoO
         gMULiyL9jnC74vwv3c6J8tPS7FKbK6a+LIcw6L8PnY+ocWpkKwE9eZ2Rb0JSc4vCIU//
         6fK2xceaEjPEiWWiEgm/9arUSTazqjaqIhPSOW1R2YNFXF7SLCuanNlmMMFmAqtwJiiI
         N6OA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1767012862; x=1767617662;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=NLVhadAPx+W4sRb+akST4Yy+lIb9kNuFObaO4aJRIsI=;
        b=SPCe8YfNEDhQ6srmZDUWGQ8SNO/MdxD5zqadnQNZvzAMntRS/BUPJJGI8WABXkXyWO
         lhyx/sqCRtlCf9fPjAZJAEi+Cst9Mvsbu84WoJEAQDCowwv0Z5FLmaOCf5kmaL9z3aFC
         SfuExRFrCz8jcIh85e9Q1PrfmI6P0/4qzRYznNJQL1KeaJHxcsTcgGEFi8qK2XNJ0vLt
         wouoLsZUFmXeLN/cwi53WUZOMNbVG7mCKlfySznC8+x6iawgS/dVKPlzH2Ma15gdpESc
         uu+I0zdR/3AT86mAyxMRkO9YL1G8uia4wnyuZN2oQBjk4APLJZU4ueTsRTtjScuLSucR
         W5qQ==
X-Forwarded-Encrypted: i=1; AJvYcCURZAb8LKuv9E6JN3mjUaEgOi6QYMK2CA+uCBWGGOqXcWhxYp7NZxtGaDhG9ATZBX0zZVl3sMyv9rfd@vger.kernel.org
X-Gm-Message-State: AOJu0Yw3T0ulJZ6+tQXR53+TSqgIOgVlh6TNKW6xCmHVi/tjdnl7fr4S
	Fz5bl8q6f1THII5cHgsJf+GqyUTgNB9TIAUDfmu1wPQb8DKndiJEFCWM9NGY7w4QszZKctor+FO
	20edTIhBClcibopX2SRXGJPGgaDUZzCJCDj4LCSHre0P68LuS1CjXVKAeSbP84R4T
X-Gm-Gg: AY/fxX7ftyjjt0uwHOHgUfLk8RfLceMIkQBWCJ5s1/dT5i4lsJkRdYwNY70BozYfKFb
	Bw2tLCUdbFsUzBFNEjovf4rYsmeT0D15L36pS7TEbaF+VjdFvRoDjDTE3Ur4w9nqXQHOUHf5o/f
	HehbgPDjC2wc7ekZIiUfcP1KlL6reQyuXRnTIH4ejIbPVQVCypa02/NQhqWET8+6V7Y1dlgh6m6
	02pgk81tWF5fD6lwp/PVJiwlEwMINbhK97UdSeD5/qQLaRgK6TyWUUfh055YRpAwn8eKxS1acfn
	EQzfsy73digxIy8cDmZLkXu0KY+2W3nwNWHg22+BxEde53IEKmHfQNXu/w9Q9YwjURspW4exifQ
	cUo5U1vgtwpwruBvj8h7+g2Qawcvc1783m3uVqxOhwm1kytdiJEZtTnWOGrrLhYIChA==
X-Received: by 2002:ac8:58ce:0:b0:4ee:1c71:71e1 with SMTP id d75a77b69052e-4f4abdb158cmr317143811cf.6.1767012862080;
        Mon, 29 Dec 2025 04:54:22 -0800 (PST)
X-Google-Smtp-Source: AGHT+IFDTbH9paS8iD+8PShRAogQ36e3KaIf/wn4/5WKMCeQiZIf99+6FbyMDr76P2qUlp1RiOn4SQ==
X-Received: by 2002:ac8:58ce:0:b0:4ee:1c71:71e1 with SMTP id d75a77b69052e-4f4abdb158cmr317143601cf.6.1767012861632;
        Mon, 29 Dec 2025 04:54:21 -0800 (PST)
Received: from [192.168.119.72] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-b8037ad8577sm3311502166b.24.2025.12.29.04.54.19
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 29 Dec 2025 04:54:21 -0800 (PST)
Message-ID: <bd496706-4cf9-4829-8cc8-322bccf58e27@oss.qualcomm.com>
Date: Mon, 29 Dec 2025 13:54:19 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2] arm64: dts: qcom: lemans: add QCrypto node
To: Abhinaba Rakshit <abhinaba.rakshit@oss.qualcomm.com>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org,
        Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
References: <20251224-enable-qualcomm-crypto-engine-for-lemans-v2-1-a707e3d38765@oss.qualcomm.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20251224-enable-qualcomm-crypto-engine-for-lemans-v2-1-a707e3d38765@oss.qualcomm.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Proofpoint-ORIG-GUID: t7wbOLk6UtK1g-gLzpBRAod8Ooo3-cqf
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMjI5MDExOSBTYWx0ZWRfX+UOifHov8cSq
 YWSwlJ75UfeT5qQIsNBv2EaIsV1mAdL2z7U3/1PXD60iOEkz2Z7FajfcmDcCj+nuKsq+/n1/xlJ
 ZLmeTEKRTmuBC8N+LRLTCMD82gEBKw+oM9L5G59l14wmEubgacITzjKTAND03aYwC1MCPnGEq9E
 yElk6NZLSQyG58Gd7C0evRC9RzdvmH8J+OibsH6Mkosm063FWXsftQ6Ku4WFb6gDszpy6Ezs6Z7
 aC2hgzzuJrz8eq6fP0Xv41LxiNVzZJ2/oVb8gVW+LtgRF16yYDdLIqaBESyy5/w8CqDf/iX0cyR
 QdCYOtdwi/WY4iHt1cmao8K+9NOwm5F66TqZ4GIg8VvxPMTqRlYjD+pdEBSYSNkijSPhdJ1Q93S
 /61Nr180/u85eXy24sFnYnQvtuxGCEKs+GN2Ir5ClqD+Iu4Ao5PnifzGbX+kjft+DWGEeJmLKl4
 YdyLKPZT+2/803jaQiQ==
X-Authority-Analysis: v=2.4 cv=Tf6bdBQh c=1 sm=1 tr=0 ts=695279ff cx=c_pps
 a=JbAStetqSzwMeJznSMzCyw==:117 a=FpWmc02/iXfjRdCD7H54yg==:17
 a=IkcTkHD0fZMA:10 a=wP3pNCr1ah4A:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=EUspDBNiAAAA:8 a=BncDaAcCVASL_8A1HS4A:9
 a=QEXdDO2ut3YA:10 a=uxP6HrT_eTzRwkO_Te1X:22
X-Proofpoint-GUID: t7wbOLk6UtK1g-gLzpBRAod8Ooo3-cqf
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2025-12-29_04,2025-12-29_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 bulkscore=0 clxscore=1015 impostorscore=0 suspectscore=0 malwarescore=0
 spamscore=0 lowpriorityscore=0 phishscore=0 priorityscore=1501 adultscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2512120000 definitions=main-2512290119

On 12/24/25 11:20 AM, Abhinaba Rakshit wrote:
> Add Qualcomm Crypto Engine device node for LeMans platform.
> 
> QCE and Crypto DMA nodes patch was applied as part of the
> commit 7ff3da43ef44 ("arm64: dts: qcom: sa8775p: add QCrypto nodes"),
> however was partially reverted by commit 92979f12a201 ("arm64: dts: qcom:
> sa8775p: Partially revert "arm64: dts: qcom: sa8775p: add QCrypto nodes"")
> due to compatible-string being miss-matched against schema.
> 
> Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
> Signed-off-by: Abhinaba Rakshit <abhinaba.rakshit@oss.qualcomm.com>
> ---

Reviewed-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>

Konrad

