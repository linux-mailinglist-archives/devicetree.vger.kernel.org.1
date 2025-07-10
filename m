Return-Path: <devicetree+bounces-195005-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 1D1ACB00215
	for <lists+devicetree@lfdr.de>; Thu, 10 Jul 2025 14:35:38 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 2438E640882
	for <lists+devicetree@lfdr.de>; Thu, 10 Jul 2025 12:33:27 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C95072DBF45;
	Thu, 10 Jul 2025 12:31:42 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="YymyfFoH"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 546B225D550
	for <devicetree@vger.kernel.org>; Thu, 10 Jul 2025 12:31:41 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752150702; cv=none; b=WiabygY6s1o5Rh0czNkVvq8xgB6ifMI4psH2TC6DRexXFPIDaZJugqACxcWIJm0BO7y/u6S3pY3wZ5zedFls04OGac3NgFShUdKOgB4ZMfzax1J8WgJJXOilowYVfPxafo4x3cTIyUkSTV9r8xYlnKYBeGBkJTsHfbCfyvmTezM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752150702; c=relaxed/simple;
	bh=4UremFvQNIY6SzFGgvRQlyRj37Xoe27g/8jhdCjJf74=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=nZMCzmva2ZfrVHQZLl57adQ6R2JMKjhDqOcKR49LA+brAXIOTIkx1DhupMeCE4DcRg++Axox6/aripzZ5Yn97QbrHh6mnbE3tqQi+LDL60DqBkZB1wf6yRggcm6qp368ql6InQvwWxsEK3oi4P2h+NgZzmuqTzUANrir6sXQdFg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=YymyfFoH; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279863.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 56A8xRCU023127
	for <devicetree@vger.kernel.org>; Thu, 10 Jul 2025 12:31:40 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	iHPrDPbQBwwhRT62Gz3CAaiC6cJUX/A2VM2D2Eb46XU=; b=YymyfFoHa80NNStI
	Ok2AN6SGR0CYy/e4XN8Wq/bgrbE6JjZXYTyhqp2JSRWeinD9ixEIJ44YhYXLD1qi
	ukOhGgWuC/wlqHBgoPnDp9QHCdzd6xmqzloDsrsfJHeGWBN4jUxiCgfsWs5E2emJ
	/ax0bRcpU1I7CxHwUnH1fLbAJp179x24kObDlj97y3hs5IiM6eUNPeqwnXZKqYIO
	G0CvtMA+zwXMufX8G5bpBwXRvGckZCBnIe3kUBoMTZddyG7x/4anNmcKIGDdiRjl
	Ln4dfQlOO/dQegO1uZqWa5NFXGOFvtkWUi/jqFqp2vqUhb53HaosTze4cohD6Moy
	+zU0IQ==
Received: from mail-qk1-f197.google.com (mail-qk1-f197.google.com [209.85.222.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 47smbemxp3-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Thu, 10 Jul 2025 12:31:40 +0000 (GMT)
Received: by mail-qk1-f197.google.com with SMTP id af79cd13be357-7d097083cc3so24036085a.3
        for <devicetree@vger.kernel.org>; Thu, 10 Jul 2025 05:31:40 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1752150699; x=1752755499;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=iHPrDPbQBwwhRT62Gz3CAaiC6cJUX/A2VM2D2Eb46XU=;
        b=HazRIHUyZNdDfXnnOEbx9jMr6YgYs87PEJrfRekkMUh50RxiehyHWMDvvMHzUPw6uQ
         66lTs9/RXW65G2GJMiJnkU+e4M5m87/drgM2MVC7tcl0h2BUEnABGHOGRZE3GkPJAiS+
         LtpRkC4AhQLehAq50NOK2loEBUc/UoZG9GT+OaZo2q2621TD7y3R4ob7m5S977nPcBSy
         Zr5WhHTdb7OL/me3MeoE4aGD3Ix1g1WYghlFARgpVIygKD/tSXe9/CDD63kT42L22F9R
         rJlG1YWJhb/VK9JBxvGjLe4vuSPPqwMKNwLWjcJzbN8iPPz+R6VvRVTgmjESZyH1cNUS
         4rbg==
X-Forwarded-Encrypted: i=1; AJvYcCXQcHHJ4gP1AKUi/4sTNXsqgkm09R/gs9h6Hnl8mMGJSwuXNA6PdUAC9J4JuugwaR96U/0vpZjMa5lq@vger.kernel.org
X-Gm-Message-State: AOJu0Ywt1NLYvDZZmZ/rPlgVuKNFGP1F18Jjp8fF1MiizXCQYzm8ekxz
	gk5/cmpLfetY/FxrOeu/KTkOL6NbUsREwU7jdgaHhznPRNvaUa/W/AzKjK6GOhJ2rMMx/GKjnbY
	uDUH1M6SSkYtYfZ5nW0IUzAtQklio8XR75YEKsGnDJelD4pcYZ0NzhR/phq9H4pDL
X-Gm-Gg: ASbGncvF1+pCrDYtvs/vBCrOE+zXggCwaTyMmKVPbKzY59jjPy/LvonYmxDv5+8vM9Z
	luxSTJh+y37fI/g7g6PLMW+qY/4HFwyfdySsnPA4lBJs5m/d+NYzxp+Go2KKCS7wlX/lmBsfQqS
	FeHIjOMfD4x9P0Pt1PaGXVYGX04unmBj0qxhBkCG9ndDFYyD1bMCThsS2nqFISGByOh9631I9oq
	TA+Ypz86s1CG2cqs78fJX8DU7AM01v/thJENvIZ7E/6qWyPSix9RcwogPv29vmnnuK/6XTjZ7W0
	2ingMVajH3myV6t1isp0rFzEB3XVTcjchMy1QhxgHkUeZDlHqxUJRVxtYs5CD2GtDZO94zj0k+B
	y5LM=
X-Received: by 2002:a05:620a:f0b:b0:7c5:8f36:fbeb with SMTP id af79cd13be357-7db9035290dmr268995585a.12.1752150698957;
        Thu, 10 Jul 2025 05:31:38 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IH/0cQF10VQQBOW78DH3CzzkILAw56kd007Ppv4uFsJOvZmGIFgtlf9j9Oq5orSKWanbpLv4A==
X-Received: by 2002:a05:620a:f0b:b0:7c5:8f36:fbeb with SMTP id af79cd13be357-7db9035290dmr268993385a.12.1752150698546;
        Thu, 10 Jul 2025 05:31:38 -0700 (PDT)
Received: from [192.168.143.225] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-ae6e8294013sm123843566b.118.2025.07.10.05.31.36
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 10 Jul 2025 05:31:38 -0700 (PDT)
Message-ID: <87bd50f1-e4e5-4da4-be68-38badd691d93@oss.qualcomm.com>
Date: Thu, 10 Jul 2025 14:31:35 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v7 2/3] arm64: dts: qcom: x1-hp-x14: Unify HP Omnibook X14
 device tree structure
To: jens.glathe@oldschoolsolutions.biz,
        Bjorn Andersson
 <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
References: <20250710-hp-x14-x1p-v7-0-19c10c81713a@oldschoolsolutions.biz>
 <20250710-hp-x14-x1p-v7-2-19c10c81713a@oldschoolsolutions.biz>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20250710-hp-x14-x1p-v7-2-19c10c81713a@oldschoolsolutions.biz>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwNzEwMDEwNyBTYWx0ZWRfX3jChAUdIhYR+
 dPzyqRWxQXi/8e1o7kvtlU4NLgNXRU3/geiULyjhkKcFSiEr0hiQJrOSsUObaFlLE8dk1jSvUYp
 wn0TZLcCuZ6QbIF5eQeVKrxphaQqhYglahLJa6Ykgll2ScQy66Ukhx00uq64AixDw3RWLVpYUT2
 Ao3eHiWr4E2uL+ZeBnOW/U3/9EcTRwjkTgKwzueXcBfqzJoQGlg42+UyR9IWmkVTdX7LEyfxMXl
 MIFZusQeMRRcHKvffCWIlFkXi6HTtbR74flvFx72jIlbgj0wTvBKt0OmTIDagUS1yZwws+yIPnm
 iCoDBb7/bsg8wkugHk4ji5kXPWBqLhBztH1d4bwxJqTCpoNXS6LoJGc1+UR7Ceckd7/dugWvRW2
 Z9qZLGhOKhDe3oiJCRttNneaWx6JzgdD5Bz3Wf/Y7MGKBPwFHpCYnA2/I+kPcdHnm/MR5Ng9
X-Proofpoint-GUID: QCOCEGiq-BlUunuivWbdwcnM5tavoqLE
X-Proofpoint-ORIG-GUID: QCOCEGiq-BlUunuivWbdwcnM5tavoqLE
X-Authority-Analysis: v=2.4 cv=VpQjA/2n c=1 sm=1 tr=0 ts=686fb2ac cx=c_pps
 a=50t2pK5VMbmlHzFWWp8p/g==:117 a=FpWmc02/iXfjRdCD7H54yg==:17
 a=IkcTkHD0fZMA:10 a=Wb1JkmetP80A:10 a=gxl3bz0cAAAA:8 a=EUspDBNiAAAA:8
 a=l6tG3xHbnDtuU65x7AgA:9 a=QEXdDO2ut3YA:10 a=IoWCM6iH3mJn3m4BftBB:22
 a=kiRiLd-pWN9FGgpmzFdl:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.1.7,FMLib:17.12.80.40
 definitions=2025-07-10_02,2025-07-09_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 mlxscore=0 malwarescore=0 suspectscore=0 clxscore=1015 impostorscore=0
 phishscore=0 mlxlogscore=814 lowpriorityscore=0 adultscore=0
 priorityscore=1501 bulkscore=0 spamscore=0 classifier=spam authscore=0
 authtc=n/a authcc= route=outbound adjust=0 reason=mlx scancount=1
 engine=8.19.0-2505280000 definitions=main-2507100107

On 7/10/25 12:50 PM, Jens Glathe via B4 Relay wrote:
> From: Jens Glathe <jens.glathe@oldschoolsolutions.biz>
> 
> Extract common elements into a shared .dtsi file for HP Omnibook X14 to
> support both Hamoa (x1e*/x1p6*) and Purwa (x1p4*/x1*) variants.
> Required because the device trees are not compatible.
> 
> Signed-off-by: Jens Glathe <jens.glathe@oldschoolsolutions.biz>
> ---

Reviewed-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>

Konrad


