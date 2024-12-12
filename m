Return-Path: <devicetree+bounces-130448-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id DDE009EFD59
	for <lists+devicetree@lfdr.de>; Thu, 12 Dec 2024 21:23:42 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 9D88D28A334
	for <lists+devicetree@lfdr.de>; Thu, 12 Dec 2024 20:23:41 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 7F0341A08DB;
	Thu, 12 Dec 2024 20:23:38 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="K9A/j7Y0"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 01F531885B3
	for <devicetree@vger.kernel.org>; Thu, 12 Dec 2024 20:23:36 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1734035018; cv=none; b=AdAfkjUVEUzI7jYvhg63628LtdrO8d7lRE635K8vhTM752rtyfGzjloVc2HgvS5zmihwdf9qfHpA1ImcgzIn0r1gBwuIV5TFkhKjJx0DWDj621LKPva04XmUrWk98/Xgl7rE8vcLz8SaDVxzKyd5Spg4Tw+AfLfE+l68+nIEDyw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1734035018; c=relaxed/simple;
	bh=58VR6ynHeJBjF2wjvzDJ/0nEnN6Qrr0p4Z+fxi3zYY0=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=GUkqnHqaKslfCUCQwpEjFspIFDmZKWNnkTW/XnE074Bl3hwS6zHYBdqEn0Rxhky+WJyitz+kXH5/wlsA72sHpf+31UcfT4t+5SSZJSQI/yDGwBVUMu8eZVkGRrfol99LYBcwYx7urF36NH68LnA+n2OH6pv4Alan1Ezu1rbds7c=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=K9A/j7Y0; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279873.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 4BCH86Mj030073
	for <devicetree@vger.kernel.org>; Thu, 12 Dec 2024 20:23:36 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	VNXApAYoczOqOShC9/nuP5LeZOoo0SiKoAlZLTUHdmU=; b=K9A/j7Y030siSI8z
	tTroda5moKcL/HVclNY4TNJcLbkiPIOmImNJs4aAVMwN0yVDeqtuchXxneHr+Q8Q
	TTmclWBOh2GFejy7OEtcDpp69Cbgdnkv6+QJPVyyNA2bXdiGNGagCO60RUadmYjU
	ynCEMYGjHl76UY38l8ue/gP72dupsMreds2htevNpyw4mZJFniCxGT8+KVRWYjoH
	2oTLQOVGGYYVffzSWyUK9Npk74U4ep4mvgyA4f3nRv7WOZG75S/4K32hbhri6C6o
	LSsiwUdYdskgxQl/CSWLKEZWRF1ixK7TOFk6sJAj2ZL7ydXd+F8cKTqSofvtnuFr
	k1HV+w==
Received: from mail-qv1-f72.google.com (mail-qv1-f72.google.com [209.85.219.72])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 43dxw4cj36-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Thu, 12 Dec 2024 20:23:35 +0000 (GMT)
Received: by mail-qv1-f72.google.com with SMTP id 6a1803df08f44-6d904ac0ea2so1723666d6.2
        for <devicetree@vger.kernel.org>; Thu, 12 Dec 2024 12:23:35 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1734035015; x=1734639815;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=VNXApAYoczOqOShC9/nuP5LeZOoo0SiKoAlZLTUHdmU=;
        b=tkLuG5QtbuaKAXpdmGWNT5U0OvaLhv1DAd1t6hJlpi1/SvTNtn9of/JaoV48Jkc0zP
         qINx72w3gjHCiZ3UyRzyfpx59P2Mf3hMN/Yh0+/ZhSAN6A/z/pSluU0bbshXqLjc59hP
         aO5Rl0PicWsPG+X1LrIym86uSK3BB0QL8abi3yvv15cMX/sS8rHAx7oYusjMbB83f0qI
         AJFoR/b2NAyTHnoW2IP14bloJbeO+vMDutkS3NllXUUC35hj+52r3jsUpjsouSZHooB0
         4hzae6Em9Gw+lccwNyXnPK91vNMSCbONEqDLvyTsK1MDGOTy2tFbT+oZMlA5fdRgLxu1
         EP0A==
X-Forwarded-Encrypted: i=1; AJvYcCVLnbW8h6s01ZQ+BARjg5rNWwpa5Tp0W02+VQR7oQHHfZ3m/PRI9IFwbQoEwFoqRA0ZZbePlQ9vhMxE@vger.kernel.org
X-Gm-Message-State: AOJu0Yyb642KP+S3ffjvKp7n309LC4GeBczKVaupguNtoTfsESd2PEtS
	eXjYGZDeJuX6YgRZryviIhjKeYl/f+YuZNdz797os/pikLhbPWLRaLkWGISRY92xPK18iWQrZEF
	diWoycLWGnRhbCMYGPFxqy3TUXAJFyyFLuFen3QCQXFrJvfLvNxvsulFWFQBY
X-Gm-Gg: ASbGnctKqOmiA/eb1e0TRc1hn7ALXIJPEBBWESWZSqE3lwKqq/Y328ShsfjOIjKqFuB
	nAxedMut3FdSgF9yy2QUBKyWO5TnX/QwldiX6qPd1bLjLZ2ieaF0JeBUeOVsqhiCdAfGilTJaUR
	SZlViLVR5ccW6yn4uxDFJwPu299yxK0t7vWxWt+3/vPcwHM+uHZ+62PGb0gpCFPsCYXiwWfmE08
	hdatZ+/fgQpZcEUnaNderpbh7+v1zLAkkVE98Jhkq0bJOcGmBt8zfpMNgMXbFDGjND8mNo2+4fW
	lMkCPRyUuX0F2C5ZNE4+3vr/POJb1mKmEJyenQ==
X-Received: by 2002:a05:620a:46a6:b0:7a9:a632:48ad with SMTP id af79cd13be357-7b6f899dee8mr85394585a.11.1734035014938;
        Thu, 12 Dec 2024 12:23:34 -0800 (PST)
X-Google-Smtp-Source: AGHT+IExvgte1ZPFoPbfx/Uyj2kPoFMZrbkappIQUOqxNtdLoWEyz3keckd/ZXR+X87+mI4tFu8iRQ==
X-Received: by 2002:a05:620a:46a6:b0:7a9:a632:48ad with SMTP id af79cd13be357-7b6f899dee8mr85393485a.11.1734035014578;
        Thu, 12 Dec 2024 12:23:34 -0800 (PST)
Received: from [192.168.212.120] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-aa69ad40b4asm499841666b.33.2024.12.12.12.23.32
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 12 Dec 2024 12:23:34 -0800 (PST)
Message-ID: <ec7b07f8-3fae-4604-88d0-28515c6668c3@oss.qualcomm.com>
Date: Thu, 12 Dec 2024 21:23:32 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH] arm64: dts: qcom: qcs615: Add CPU capacity and DPC
 properties
To: Lijuan Gao <quic_lijuang@quicinc.com>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>
Cc: kernel@quicinc.com, linux-arm-msm@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
References: <20241211-add_cpu_capacity_and_dpc_properties-v1-1-03aaee023a77@quicinc.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20241211-add_cpu_capacity_and_dpc_properties-v1-1-03aaee023a77@quicinc.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Proofpoint-ORIG-GUID: E7dk_J11apRHG4mGjgQXPCLQVGMQMzr7
X-Proofpoint-GUID: E7dk_J11apRHG4mGjgQXPCLQVGMQMzr7
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1039,Hydra:6.0.680,FMLib:17.12.60.29
 definitions=2024-09-06_09,2024-09-06_01,2024-09-02_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 impostorscore=0 bulkscore=0
 suspectscore=0 priorityscore=1501 adultscore=0 mlxlogscore=865
 clxscore=1015 spamscore=0 mlxscore=0 lowpriorityscore=0 phishscore=0
 malwarescore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.19.0-2411120000 definitions=main-2412120148

On 11.12.2024 10:35 AM, Lijuan Gao wrote:
> Add "capacity-dmips-mhz" and "dynamic-power-coefficient" to the QCS615 SoC.
> They are used to build the energy model, which in turn is used by EAS to
> take placement decisions.
> 
> Signed-off-by: Lijuan Gao <quic_lijuang@quicinc.com>
> ---

Reviewed-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>

Konrad

