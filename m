Return-Path: <devicetree+bounces-179223-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 3F438ABF512
	for <lists+devicetree@lfdr.de>; Wed, 21 May 2025 15:02:01 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id BC7EF3ADB47
	for <lists+devicetree@lfdr.de>; Wed, 21 May 2025 13:00:33 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id EC8CF82D98;
	Wed, 21 May 2025 13:00:43 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="bxWJOdko"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 78F3C22E3F9
	for <devicetree@vger.kernel.org>; Wed, 21 May 2025 13:00:41 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747832443; cv=none; b=AiCsC4O7O9zkvdn1x5Xv5eau23E2t4kvBOLhNGIZpZeYp9ZQEog8Es7dwHxC7llmAUezVS7/qld26HO0r5sTTcbfWyGhmqqLYDbiFXUBy4cHRPv8nrZy+sRtFOMs5aRL1q/U0NbpELy/onUOokxrFZZRCBEDjecBES99AFuCiA0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747832443; c=relaxed/simple;
	bh=lYzq7FnKukIi50yWRCJdbpDI7oekzUVqld5ufIZMPro=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=Ukw9OBcWY3rsK3jD6xIAuXVpLRCLD3+UGwu7jH26hq71EUcg0NNeWAnLGjUUoVoIwAovcu+ozQAH/JF2oER1WlNrXxa+V/oa3pfw+4aTPOGT4ffZWaf8WTDXwLM9HPlnBEZ6TN06nmsmsVIlC4BickmgSp+7gvhtS2gYC6WxUmk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=bxWJOdko; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279862.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 54L9XO3v029186
	for <devicetree@vger.kernel.org>; Wed, 21 May 2025 13:00:40 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=Yns8J8yDIbLcf0BsCQyO2F82
	y37jhFFOk2oNKiqIfAc=; b=bxWJOdkoC1gAaaHmK+d9NwpVqkp4DDu7jdw+LyEq
	lWXmq49tw8TF9IZsk2bS5abm8AClZa5zbNH9H82tOOC0deLKxyg+zhKvHeNDaIGs
	sWLhW4XIBCv/KcnoHt4OP2wt3ltV8cmHoxFyPqhrJJLv8hlPJ7lVEz0vst/y8uA0
	wV9JiZ2hWxyY2XjFPxEG1bSCNiGhpA1GAfXCI9OFp+FhyWBPwo4ciI5O9nwTcT6h
	1zQmqTwq/oIvGAzhm7iaH0WihntDXhYbznHKZLyBee3+yhXrRFhDJPOHAPqf1nrM
	38ZCUhrSe3vAV4uEnAeUAZMVUh+977njzitVyOlX9cGNHg==
Received: from mail-qt1-f199.google.com (mail-qt1-f199.google.com [209.85.160.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 46rwf431n9-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Wed, 21 May 2025 13:00:40 +0000 (GMT)
Received: by mail-qt1-f199.google.com with SMTP id d75a77b69052e-47693206f16so127577271cf.1
        for <devicetree@vger.kernel.org>; Wed, 21 May 2025 06:00:40 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1747832439; x=1748437239;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=Yns8J8yDIbLcf0BsCQyO2F82y37jhFFOk2oNKiqIfAc=;
        b=YJCPQqvV7wnarQounOkoUmcPx/Icjqz32LVM/fJISSsMJn4qNqAkE42hiU9EA3Q9x6
         u/Osud39AUR8qj3olz5XV+218uUU8fW+x1dk4WwtjyiD3aHM33/sXZpnNCHqwTJN+/Sl
         0Ooxyg5hw+HYkge20/8DAyxlI/fWA6fWHdeqLLANltdBhUVp3ROhvKN2YXMpOKy4/xfF
         W9ISKJoRV7JT+XDa810Qi8Zwx1NAIVu7iF0GbfraxO1oMN/lNGX1rXKACGFRlC1ZnxUg
         iLJmvzQgyoas+qLt8MIPZkdh4JciJXX+G6a3LcIx3yqqVTD39NX+sEv/qTDQyCUinTIR
         H1lw==
X-Forwarded-Encrypted: i=1; AJvYcCWc5boEhbJYwluQQRpcSgs98Xd8JzMfKzYJRYAJsxqVNb0/wozr+HK0vrLcZ5Ks4rbyvF3y3zwC9VQy@vger.kernel.org
X-Gm-Message-State: AOJu0Yyj62UYuCAlOCU+0ldn26sejbLu1WNjTgJdGYFJYeaWOmAs0y/6
	dcwAb/klKyVfRODyx2giZWzgfjWVYDdvEXPpYP/kwkjYhThiADCbJj32fixymtqXcKbjLikCPcA
	+ykBJqmE8AEpJ80wIt6hgZGhnwuL33w97kwiardoE3zdZ5Vs/FcsfyaePzKH+0+ls5YePgubjYq
	w=
X-Gm-Gg: ASbGncuuWTCRBDUTwz+wEA0Sf0N+VZisguBguhn7M6HDJOlrqxyq+Sv8t/URuk+rtcH
	lU9xYt1EVb0M5BBuZvkVtTX+B7fFSycEM3pFk9iF4tRorzrlK++yiX5sKRp7X3OonQxYoU+z1u6
	kEQQVOIn0YzFCIkKSb2VvD4FPq/KrXhVyjc9sqbJBDcO6I7T7G9ot2h+gFxkI+ZhF8Xq305yC6Z
	oQdLo7OALlv7fDDrm+41Ba4KgWMkIbjv8Y7KGbMzv2PQWwtlVSge0FFqMoJG9M9N+cei9D8V6YI
	CmcYy374JNN0JM7cPpp5YmFZOroK+SlfUhsizOBNc48X1HPynSWZ3A09OqMui4NEcojxaPizn9I
	=
X-Received: by 2002:a05:622a:2605:b0:476:5fd5:4de7 with SMTP id d75a77b69052e-494ae401f5dmr381873771cf.41.1747832438911;
        Wed, 21 May 2025 06:00:38 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IFYl5pptmjhlEarjw0/xJJoxQp/LNVGwVPm9hkPN2JKLgqOynQ02b10fOufgyOCowuR//KNMQ==
X-Received: by 2002:a05:620a:390e:b0:7cd:1f0f:f61d with SMTP id af79cd13be357-7cd467aada1mr3619274285a.54.1747832427545;
        Wed, 21 May 2025 06:00:27 -0700 (PDT)
Received: from eriador.lumag.spb.ru (2001-14ba-a0c3-3a00--7a1.rev.dnainternet.fi. [2001:14ba:a0c3:3a00::7a1])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-550ed3e3b84sm2577007e87.192.2025.05.21.06.00.26
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 21 May 2025 06:00:26 -0700 (PDT)
Date: Wed, 21 May 2025 16:00:25 +0300
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: Krzysztof Kozlowski <krzk@kernel.org>
Cc: Vladimir Zapolskiy <vladimir.zapolskiy@linaro.org>,
        Wenmeng Liu <quic_wenmliu@quicinc.com>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>, bryan.odonoghue@linaro.org,
        todor.too@gmail.com, rfoss@kernel.org, linux-arm-msm@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        linux-media@vger.kernel.org
Subject: Re: [PATCH 2/2] arm64: dts: qcom: qcs615: Enable camss for
 qcs615-adp-air
Message-ID: <6mlnju3b5ecynlmlsmqot2i2y5fkeg7zl7nbzklmq3gcbp24dy@74sht2d4w2uo>
References: <20250520-qcs615-adp-air-camss-v1-0-ac25ca137d34@quicinc.com>
 <20250520-qcs615-adp-air-camss-v1-2-ac25ca137d34@quicinc.com>
 <748f96f7-d690-4823-845f-67642db97a06@linaro.org>
 <dabed183-6907-4483-8c79-616aafaf2851@quicinc.com>
 <76052af9-96c2-46d6-85c6-65998c389554@linaro.org>
 <9babbddc-5c45-4ef4-8fbc-0da64ce99a42@kernel.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <9babbddc-5c45-4ef4-8fbc-0da64ce99a42@kernel.org>
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwNTIxMDEyNiBTYWx0ZWRfX70CHb3mNTm/2
 SpKEM/0w391ccY+J4vK3w5yzMNDAgxcDbQRo4Vc9Iu23eAKq2JYrnNvSwo6233Yhs9ZfhHkkYj9
 VT+Gv/ue+L/r4qmTdrt8Yz+/VS+Dmi3is9+XGrdteNNC0hgQmTlo6j6y6fHclGS69NnVlrEfK6e
 SScS/Qr/ksNgJ75KNywioxkWKTPDc3Q/CUL7dTx1MG9dxuwwk10SgASZDn0JM46IZNu1RNcQV1r
 FiZI+KwTyWAF7k7z9ANYKcNIHhD84c0uNqqQRdmJaTIm0LRy/TXr8c5xnsR8Fi22s90jSf1ELTQ
 +lickeoTHR3oA5e40XB8yJHWqT/k3/z9VuZfAfI8O6oDeH1BFpCeoWCl6Q8bpZLJzAhZIQT8FZQ
 EVMr3xsPC7f7FZ2O+VB3DUyTNbNr4fBWUGEyDGNjXlIw4M9BiFymls1sri/x8NYYNrdAPqRX
X-Proofpoint-GUID: WgoBmylPE4eq1mBqDfzaZNO4uoYyVN72
X-Authority-Analysis: v=2.4 cv=Ws8rMcfv c=1 sm=1 tr=0 ts=682dce78 cx=c_pps
 a=WeENfcodrlLV9YRTxbY/uA==:117 a=xqWC_Br6kY4A:10 a=kj9zAlcOel0A:10
 a=dt9VzEwgFbYA:10 a=gFR2S-RVxxBBcq25oecA:9 a=CjuIK1q_8ugA:10
 a=kacYvNCVWA4VmyqE58fU:22
X-Proofpoint-ORIG-GUID: WgoBmylPE4eq1mBqDfzaZNO4uoYyVN72
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.0.736,FMLib:17.12.80.40
 definitions=2025-05-21_04,2025-05-20_03,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 spamscore=0 malwarescore=0 clxscore=1015 suspectscore=0 mlxscore=0
 bulkscore=0 phishscore=0 priorityscore=1501 impostorscore=0
 lowpriorityscore=0 mlxlogscore=742 adultscore=0 classifier=spam authscore=0
 authtc=n/a authcc= route=outbound adjust=0 reason=mlx scancount=1
 engine=8.19.0-2505160000 definitions=main-2505210126

On Wed, May 21, 2025 at 08:04:10AM +0200, Krzysztof Kozlowski wrote:
> On 21/05/2025 07:52, Vladimir Zapolskiy wrote:
> >> We can perform validation through the CSID TPG(Test Pattern Generator),
> >> so I enabled CAMSS.
> >>
> > 
> > Since this is just a test of CAMSS without any sensors/CSIPHY, then
> > 
> > 1. camss-csiphy-3ph-1-0.c changes from the series have never been tested
> >     and added as dead code, it shall be removed from the series,
> > 2. adding voltage regulators to the board dts is void and shall be removed.
> > 
> > Not to substitute but in addition to the above it's still doubtful, if just
> > a hardware/driver test configuration deserves to be added into the dts.
> No, it does not deserve to be added. It's useless code in upstream. They
> just want to push whatever they had downstream and drop their patch count.

I doubt that they had camss downstream.

-- 
With best wishes
Dmitry

