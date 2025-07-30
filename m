Return-Path: <devicetree+bounces-200791-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 4BB95B15FE8
	for <lists+devicetree@lfdr.de>; Wed, 30 Jul 2025 14:01:41 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 5E3D93B31CB
	for <lists+devicetree@lfdr.de>; Wed, 30 Jul 2025 12:01:11 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 9E566202C45;
	Wed, 30 Jul 2025 12:01:37 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="dCFSCEjR"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 319BA23741
	for <devicetree@vger.kernel.org>; Wed, 30 Jul 2025 12:01:35 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1753876897; cv=none; b=Arg/aNgYNj2Tm1mp8DWWkNdJNMQJJ2BH/3gytaSkn5UnBGEwO4LSSfJ2k80vSTP7BdirwdM5nPlViJDxyJ8xiYxqSP8wIEyB7jyHwRkJpaqYJwHq/AoCyMC8GzDn6+y9UucmjYxumkcvaartMasOlxu12gZBIr1CEnrtvd91mHg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1753876897; c=relaxed/simple;
	bh=nENZrXVf0xEZ2aFw10idI8zS9pzQ3l3UevWHyh5TXeM=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=Ee1aZBBdiHF0NrQ5O7f7Jrcc9aryhCaYVdrEi+3yWkZaVMQJh2UKXESGi12yEB6RizdSCx45fuM5EMkdRiqb+iZxaqQCAshPkGZ5DKt22nn5MiEnAAew8hJsXqC1YeoXivnNTsb8+iiQnRzXBvAy53XC7nNchlxVh3XWpsaHz1Q=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=dCFSCEjR; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279870.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 56UBqpn8007467
	for <devicetree@vger.kernel.org>; Wed, 30 Jul 2025 12:01:35 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	h7P4JA0l+stHfoiUVQyDl4hdUnBTOoJrHehJ6ZePN5w=; b=dCFSCEjR282VRba1
	vkgZOkQcVGAHlpXo9djo/qAV3Vt8gviCpLBq67kVd1XG4YBbsi0ugU8i0psfi98M
	ARdp1Pk5H0Dql9iPnBVv6SKsl1wNL65/OcFamj+KjkVRi5esJ8LtkwS2byolC7zo
	yvcKHpo2YduoRKOMZAJmzHuv1Oc46hy6QeSSaoPoSziKZY76xSbN2KajvmzLv5g8
	ba6ZG7a3ZukeX4YQEiL5qh5aAJ7vp1MlvtmT1DMTWR+1tX+1m+4+VeFGEjYgSdjy
	QjREGi42gSCKQq/FAFo2CL6VAosmOxCNdVifoW7d5m5gCd9huTh+Mj+ipOtIH/Rm
	Gvu4zQ==
Received: from mail-vs1-f72.google.com (mail-vs1-f72.google.com [209.85.217.72])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 487jwer0t4-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Wed, 30 Jul 2025 12:01:35 +0000 (GMT)
Received: by mail-vs1-f72.google.com with SMTP id ada2fe7eead31-4fbf290e25cso9545137.2
        for <devicetree@vger.kernel.org>; Wed, 30 Jul 2025 05:01:35 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1753876894; x=1754481694;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=h7P4JA0l+stHfoiUVQyDl4hdUnBTOoJrHehJ6ZePN5w=;
        b=INkfbgxN1lsa4eSHuq/HBOqgV0Jmn+zekwjmEQ9fZVVjm/U6aTAH64aKFP3qUrKs9/
         okEBTnf2KpehiOubAN7DY21HA67yjyzGZNdBbVAfvFByCK6Kc6MihWACDgJsMzc0WRkP
         3FnsRbpGaKRmYXLEsYq/fMglNvp70eJMZgQ5G8tkDZWP5hetU62NzUt4xMZ5W28WYvff
         bX0Axgi+h/LPVoeCvoUSuzN1fDcs0049MkJEj0vsrT6hUqXMWTgP/BaVbz3kFhdHvnHa
         XxInBqW1kF0KoHIumGUFwUIQifnoxJxmGBSdqyBGWkxsEoBgTfcG3MXWAcXPERrmsASc
         fziQ==
X-Forwarded-Encrypted: i=1; AJvYcCVRcdfIBSeQEQN0QDzAPiWtrfxfcvhLKy4Zrdq22eK2NFIXD0sdDatCDV0c07JZjsyDSX7M6kBFAUpc@vger.kernel.org
X-Gm-Message-State: AOJu0YyYUy+B9tJefj3Iag/fUiLZEPC/Vyz6dxsgNRZOeaf1u8gHitYl
	I+hQ1yqAMjocamV6eW2INwNySgPTwCQUpOspZFC+yVATCPOeLKrCkRksKyRwqNq+gomy3Rp2AEY
	GcygGFWHheqKvVx2BmJ6X3VPLGRBiViJPvXYvqhvVFKt2Fv9PTdu+7Gt8vm2/LOcx
X-Gm-Gg: ASbGncuz0FKEgNVUqD6XMGULfSjRnv+isFHMfyqNqpxX7MCapS+NvWO8tbjt2gT5igG
	iEqu2itV+tduI4BtCPHGZYJOKzDGqEOwOLij27MiuajhVUUl2H08ByKMH4uHv9My+k8oDVMI5eO
	McRUhd+3WJJt9T7KjWBS1utCd4AxgCIibxHrMVrDbt4mCfwIFPP9YlCHzHtqW6EEhXznJRrC6lI
	BxIDBPam2qT0xKtw4gwVb04skIEZgRW1ah7lsJ/OI+cAvQqtdyaIQ3TA8i3TVTKTB+jbanJjuLt
	RYIJMwmRSiyq8C87XTFICzNWCXHV0hHPhlRdfV99OHbYhhouBCyrpg7QkT8WHuaHxQLOIBuRwjZ
	D4hwIH2hNnEXVj/XsAg==
X-Received: by 2002:a05:6102:5615:b0:4ec:c4fa:c23a with SMTP id ada2fe7eead31-4fbe8743c77mr527577137.1.1753876894205;
        Wed, 30 Jul 2025 05:01:34 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IHvqburrLqOLTBhCJ6VDYkYHQwA8Vqi6itxndJTY3cfPYNQiShJQvXD/euk52g60pv2Ga9FOw==
X-Received: by 2002:a05:6102:5615:b0:4ec:c4fa:c23a with SMTP id ada2fe7eead31-4fbe8743c77mr527548137.1.1753876893774;
        Wed, 30 Jul 2025 05:01:33 -0700 (PDT)
Received: from [192.168.43.16] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id 4fb4d7f45d1cf-61544a81df7sm3572090a12.59.2025.07.30.05.01.30
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 30 Jul 2025 05:01:32 -0700 (PDT)
Message-ID: <b99d2b54-b684-4efb-afc7-3a18635fcd5e@oss.qualcomm.com>
Date: Wed, 30 Jul 2025 14:01:29 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 3/3] arm64: dts: qcom: Add missing TCSR refclk to the eDP
 PHY
To: Abel Vesa <abel.vesa@linaro.org>, Vinod Koul <vkoul@kernel.org>,
        Kishon Vijay Abraham I <kishon@kernel.org>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley
 <conor+dt@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Dmitry Baryshkov <lumag@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>,
        Sibi Sankar <quic_sibis@quicinc.com>,
        Rajendra Nayak <quic_rjendra@quicinc.com>
Cc: Johan Hovold <johan@kernel.org>, Taniya Das <quic_tdas@quicinc.com>,
        Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>,
        linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        stable@vger.kernel.org
References: <20250730-phy-qcom-edp-add-missing-refclk-v1-0-6f78afeadbcf@linaro.org>
 <20250730-phy-qcom-edp-add-missing-refclk-v1-3-6f78afeadbcf@linaro.org>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20250730-phy-qcom-edp-add-missing-refclk-v1-3-6f78afeadbcf@linaro.org>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Proofpoint-ORIG-GUID: 2FSRTKigxQFWqegy-1Qzf1pViAgsrb-t
X-Authority-Analysis: v=2.4 cv=Wv0rMcfv c=1 sm=1 tr=0 ts=688a099f cx=c_pps
 a=DUEm7b3gzWu7BqY5nP7+9g==:117 a=FpWmc02/iXfjRdCD7H54yg==:17
 a=IkcTkHD0fZMA:10 a=Wb1JkmetP80A:10 a=VwQbUJbxAAAA:8 a=KKAkSRfTAAAA:8
 a=EUspDBNiAAAA:8 a=GIX-IF3Huo6piQy2-QAA:9 a=QEXdDO2ut3YA:10
 a=-aSRE8QhW-JAV6biHavz:22 a=cvBusfyB2V15izCimMoJ:22
X-Proofpoint-GUID: 2FSRTKigxQFWqegy-1Qzf1pViAgsrb-t
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwNzMwMDA4NSBTYWx0ZWRfXyvbMYG9ASlDU
 ttKMWLJ43MTOaray6sfZ3nz0Ox6xkGho5XcLA5bAe2P2DqX+2ROPXI8VN48f5zs+2HvGJKDdheb
 55eTDnWGLUvuRxQaBiLYf32HNQDEe+wXru3B+l2phE2tY2CnyN+Ekuw9I9YzjMpRl3eGc/9ej8E
 91mhu5QdfHFgSXDhwCbwudRAgISFcddUCvBAhcXYq0qNQvS+QC9Lg17nSsuVGtv7nLO8oMkeq3D
 wcx1ovtM2XA7g2QgPCLGZ/cLjOy+wjyu5+vA6HncuKai2UPylOp3QH27qnCE4qzKg9XT4O06REh
 Wsb80GE2ZPyCSvpmSv62YeH1NnMqzI0djAZOb/7Vr44d+8H7k5jYCH5UZIR8cTBH5x6MBaJrYBP
 qhmI9gxghrAJ5DVRKKM66sG29h5WsienbIjiSSoHVh1Hh9IKyz+SmcGNXWSx1Wj7dp9hbHX/
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-07-30_04,2025-07-30_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 spamscore=0 priorityscore=1501 malwarescore=0 clxscore=1015
 lowpriorityscore=0 bulkscore=0 mlxscore=0 adultscore=0 impostorscore=0
 phishscore=0 mlxlogscore=731 suspectscore=0 classifier=spam authscore=0
 authtc=n/a authcc= route=outbound adjust=0 reason=mlx scancount=1
 engine=8.19.0-2505280000 definitions=main-2507300085

On 7/30/25 1:46 PM, Abel Vesa wrote:
> The eDP PHY on X1E80100 needs the refclk which is provided
> by the TCSR CC. So add it to the PHY.
> 
> Cc: stable@vger.kernel.org # v6.9
> Fixes: 1940c25eaa63 ("arm64: dts: qcom: x1e80100: Add display nodes")
> Signed-off-by: Abel Vesa <abel.vesa@linaro.org>
> ---

Reviewed-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>

Konrad

