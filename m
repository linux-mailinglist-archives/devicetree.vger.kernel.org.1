Return-Path: <devicetree+bounces-221370-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 7B2BDB9EFDE
	for <lists+devicetree@lfdr.de>; Thu, 25 Sep 2025 13:49:12 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 35A753ABD9C
	for <lists+devicetree@lfdr.de>; Thu, 25 Sep 2025 11:49:11 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 0CFB52FB975;
	Thu, 25 Sep 2025 11:49:07 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="mOIzC4YF"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9718D2E7BBA
	for <devicetree@vger.kernel.org>; Thu, 25 Sep 2025 11:49:05 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758800946; cv=none; b=Pv60GlElMNMN7jQXP5eHkjoxknZ/uRKrkssClxW+VNgqwWElqRut/akwrGMVEo4PJZP3m+MPTAJb9Z5u5Qlmxaj3VKuHP5F8nLHpM5bLFrDx4VB+F/KG1ktSXMBIUS+3vkYkzMF4mBTcvtI1Q4BWz8DydiR7OrRSfkX18uq+lLM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758800946; c=relaxed/simple;
	bh=toxgSbOuMYd0l1zBSSHDfmkI9Q5eCWB7QxXd6A9cDi0=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=atI4gZFITAYVX1+F7L6wReFYu9xmTF22uiecgrhq/mKnAacPGTI2MaxeYuM/mR/jxiUMSP20zJ4VukaaLYyg526q73HPZKnv8Thqw6btFvH9k49Dzo0Af3RAVz3xlXrwr/UyUEp0WsgOv5vYfBWFJw/uVQ+uRuSoqJ1L5fZYrZg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=mOIzC4YF; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279864.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 58P4bJZJ029400
	for <devicetree@vger.kernel.org>; Thu, 25 Sep 2025 11:49:05 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	nX/7+Es5CEXVgmPLU51KFWh1W5gFD+wvMunPIFeNs98=; b=mOIzC4YF+zV4gcYV
	DVX2M16FN1bj/oQfzLXzFrje37j2ogmMyB9d4Ols67RKZOTJ6WdzGxVyyTiHHL27
	N2TpLQWURenH+h1Q1Pv2+xoWYZ+VTZEBuUtRaMVmBmKsyqB+OHa96CXOt8w3MF9N
	aR9dpanx+JpxN5TzuMa5Cd//D7gHlYpS1kW7aQWEwsPX8N1coiG9yUEZpN7kpuvW
	WqGUM26PdwDavOH+FRNtewWGg67tWfNQPP3M0z/taVCJBf9V0gKgKE/L/LaK2UMn
	alZE+bwczoVPCgDZo1GLvGRz94vFOB4b2TdWiUFNsEXW3W7qgDOY9oBi/3zldFIj
	nKqAbw==
Received: from mail-qt1-f198.google.com (mail-qt1-f198.google.com [209.85.160.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 49cxup15q6-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Thu, 25 Sep 2025 11:49:04 +0000 (GMT)
Received: by mail-qt1-f198.google.com with SMTP id d75a77b69052e-4d8c35f814eso1661351cf.0
        for <devicetree@vger.kernel.org>; Thu, 25 Sep 2025 04:49:04 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1758800943; x=1759405743;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=nX/7+Es5CEXVgmPLU51KFWh1W5gFD+wvMunPIFeNs98=;
        b=wo6/Lo/kYgLSv/QtzhJu3OaoZswWXBc1pQ2iq6YjMxcBkcoKmmd8CRfq1GAiuh+Y3O
         w4NrC/AdCqJYPF7AEQ3Qb2jfseOsRnWdiB3Xq2+2/wNue7O4XYWVurug5KvBWYUTl0DQ
         MaLerJaMqwYvQOTCadRq3MNOTj/+daKYDK5npmI9Yld4A5NkqMAQ+TOXY+hPa2UfAhGl
         43FZiQsR1YaqsVEWmw1XmALGSkDOyLzW2stv0MxXDCN+iRh1Cq/kNRBYxu2PSNK02EFt
         fvz2M4Ol8IKG8hpZkYv2+n4psynYrWZFQg9OZbmdGxhnZPtufZ2LSqqtC4enm6sbhXmo
         TaYw==
X-Forwarded-Encrypted: i=1; AJvYcCVkCQi+pyXT9TrktHGlHTcq/KnAvFyjwK316Hs6DDhrlqwJSnaQJTD5azAcS6atDFnivWglMtEXRzQt@vger.kernel.org
X-Gm-Message-State: AOJu0Ywf6F7EcTOtgSRLfkZmmI9Mp9yRjv3CI5Aup7nNVQ6Gp3Br0kQL
	h3YPSmEmxjZgZhfNvXRU2DBzCeIxbJHw1lwIiTjf/Gn9ntw+dov48yVr3++ZkPJwROeMJYKy/Qb
	CnJHeFMjbaeKYYp+yMZM/AYqR+0RkQ/w+fLj4BVlZHkVFYDRBN1KpUmgXUEgJ0xIq7V6rjFYL
X-Gm-Gg: ASbGncuOt8PDTAMPNh/7E5uHfZrDEOSDKwF0sjjtVSTNa5XbfMImY2QbG6f48KlSLHp
	ygFK5fWxKAzSbC4jFk4r6l+6aCkWll2vbyaMu/aAJVj+bB4V/WdkmvlAcHt38ariXu0FcJcIhl3
	0/4xcCdCGqtqAvreZZejXD5/DbLVSMH8zhaxFIav57dlHOx/dldLkhMYleQ/S79iK2fFQ36j57R
	FbWdztCeSKb4gx8udDzfAAhxqNLroksd2v/cEjDsSiKpzMZYmgpq1R5kK8I+aKIeY9BGWuBmTeq
	EtNp4VSXKoW+rxEpNAyxjKSnyNJQnuOklnDfy1DFa8pNn9nflbogKasuJ4lQkxGsa/PtgwxY4Pq
	S6oGZceACc8CN0FHYxo7YDg==
X-Received: by 2002:a05:622a:1988:b0:4d9:7eeb:3f76 with SMTP id d75a77b69052e-4da4b42881bmr27497501cf.8.1758800943249;
        Thu, 25 Sep 2025 04:49:03 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IGVDTxNrr1MXCU1YXwmH3hI/4HBUQONc/+oEm+jljQypOdh5NlhLYUBxtFh9nstaa+aDjP86A==
X-Received: by 2002:a05:622a:1988:b0:4d9:7eeb:3f76 with SMTP id d75a77b69052e-4da4b42881bmr27497281cf.8.1758800942641;
        Thu, 25 Sep 2025 04:49:02 -0700 (PDT)
Received: from [192.168.149.223] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-b353e5d155asm159172266b.6.2025.09.25.04.48.59
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 25 Sep 2025 04:49:02 -0700 (PDT)
Message-ID: <39f6f7af-4b0a-496f-9391-880932634551@oss.qualcomm.com>
Date: Thu, 25 Sep 2025 13:48:58 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 3/3] crypto: qce: add support for QCE major version 6
To: Jingyi Wang <jingyi.wang@oss.qualcomm.com>,
        Herbert Xu <herbert@gondor.apana.org.au>,
        "David S. Miller" <davem@davemloft.net>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley
 <conor+dt@kernel.org>, Vinod Koul <vkoul@kernel.org>,
        Thara Gopinath <thara.gopinath@gmail.com>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, linux-crypto@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        aiqun.yu@oss.qualcomm.com, tingwei.zhang@oss.qualcomm.com,
        trilok.soni@oss.qualcomm.com, yijie.yang@oss.qualcomm.com,
        Gaurav Kashyap <gaurav.kashyap@oss.qualcomm.com>
References: <20250924-knp-crypto-v1-0-49af17a231b7@oss.qualcomm.com>
 <20250924-knp-crypto-v1-3-49af17a231b7@oss.qualcomm.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20250924-knp-crypto-v1-3-49af17a231b7@oss.qualcomm.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Authority-Analysis: v=2.4 cv=B4a50PtM c=1 sm=1 tr=0 ts=68d52c30 cx=c_pps
 a=mPf7EqFMSY9/WdsSgAYMbA==:117 a=FpWmc02/iXfjRdCD7H54yg==:17
 a=IkcTkHD0fZMA:10 a=yJojWOMRYYMA:10 a=EUspDBNiAAAA:8 a=um4aV7xw4E9mcPOvuVgA:9
 a=QEXdDO2ut3YA:10 a=zgiPjhLxNE0A:10 a=dawVfQjAaf238kedN5IG:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwOTI1MDA0MiBTYWx0ZWRfX4lmVB1UdIppd
 T0KuWqlvurhnfKl33SS2XTMDftVKeiNZlQYjy4kUH/HiySuZtNCaxIXRVk5gcnM9s4+fY/y4Mrm
 2d7mskublYDRmL9ULSdj+3KzU30Lcegj3QL+cjC7E652YaYcjh362slG89px2n4VHVDmkDJg90x
 4rICYBuCW3xu6cPPkCO2lp3a4bPhyAdUCAsABx1a6aSKNvmj9s6uN0AIOhw4nDBTd3oybT7Nq91
 OaZw5wJZiyCxi0XSxs1sHIsr/d94oyLJs48LmhuZmESyKbBZ9S6a1elkFeHtkDj4dgoAKSfxEa0
 0+Eu+75+KgS35otCnwEs8PCWS64peznIsBSCvOA0cvX+1RJ7GYUrXhjck2QFsLUitNFJE+y9Hol
 FfrHpQ7t
X-Proofpoint-GUID: ixEn4EMK4H2mFLqL6ciyyhG4LJFVhFqI
X-Proofpoint-ORIG-GUID: ixEn4EMK4H2mFLqL6ciyyhG4LJFVhFqI
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1117,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-09-25_01,2025-09-24_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 bulkscore=0 impostorscore=0 suspectscore=0 priorityscore=1501 adultscore=0
 phishscore=0 clxscore=1015 spamscore=0 malwarescore=0 classifier=typeunknown
 authscore=0 authtc= authcc= route=outbound adjust=0 reason=mlx scancount=1
 engine=8.19.0-2507300000 definitions=main-2509250042

On 9/25/25 1:38 AM, Jingyi Wang wrote:
> From: Gaurav Kashyap <gaurav.kashyap@oss.qualcomm.com>
> 
> The Qualcomm General Purpose Crypto Engine (GPCE) has
> upgraded to version 6 on newer socs, this makes the
> version check logic obsolete and needs to be updated
> to account for v6.0.
> 
> As part of this, unnecessary version macros has also
> been removed.
> 
> Signed-off-by: Gaurav Kashyap <gaurav.kashyap@oss.qualcomm.com>
> Signed-off-by: Jingyi Wang <jingyi.wang@oss.qualcomm.com>
> ---

This commit message does not reflect what the code does (or at
least it does so very indirectly)

You can instead title the commit message "fix version check" and
mention in the commit text that this is necessary e.g. for v6

Konrad

