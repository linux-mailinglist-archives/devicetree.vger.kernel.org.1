Return-Path: <devicetree+bounces-131397-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id CFF819F30A7
	for <lists+devicetree@lfdr.de>; Mon, 16 Dec 2024 13:38:17 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 0C94C165F2C
	for <lists+devicetree@lfdr.de>; Mon, 16 Dec 2024 12:38:15 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 81559204C11;
	Mon, 16 Dec 2024 12:38:11 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="Onqa4AYK"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 06E1D1B2194
	for <devicetree@vger.kernel.org>; Mon, 16 Dec 2024 12:38:09 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1734352691; cv=none; b=gG2txd3VK63ZgS5PS2LVgm+bqVVo/DtGHzxnzE1rruxvsNd/P7deg8AY0aUB5X5nIpo9e/LJtp9eeaMZH58I5f/ckJWryEMRksNOK2HhDSmu0j65uk0CFvLkSiISsBU2z0v1E/yIHY03LcUPHTUYKd+9zJVTdMsD58KhTmVvH4o=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1734352691; c=relaxed/simple;
	bh=b75U/HA0CloJ0+/UzTC6aq4XLDPDoiTRS7cOJTC8ZYo=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=p6KY0Nf7QxCCon/itrtJ6qgRcCnZeb5JsrOpc2tTqn4cdBAA88Ow7nSlwn5VTWiQCfUDtDVyrFiy2GyQVhJxNThWNR22/SDsSEazlRpgat9fLpSZ15G0NGLHccGbx+AjrO9Gw3Zo7Mb3+0jkhpeL/0UIaJ1/ogP0TbOlssNCo/U=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=Onqa4AYK; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279873.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 4BG80cpA008344
	for <devicetree@vger.kernel.org>; Mon, 16 Dec 2024 12:38:09 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	pdnRoC01OFV41wLMXSS0ru37AeoKmw/OKRkPEM9jyW4=; b=Onqa4AYK2QDV++uT
	4AozVd46bZAyIYtEspwQst6eg4hJGOir5KYvf0fLpeSgZlsV1LlzEAJIDPTlyGsq
	8anMWI6Z0NPZPRTmcBwQjjoVqFO+88RwpbjOSojQ/oh9k/VTD8LREx6mSW7Akpy0
	j7KosvP0X/gl/7jYnxK9gqfuaojGUnoKbSonMmZVu4DlGqef9odV0H8cybxPbuEz
	7LEGXlJSPFfTEYl3WXVTj3daxgr/oWqXMFMOurQKpjbJSdMMg3tD613dT2tZSYjQ
	pCRiS9/L05b/piOivmeY1cvcqPzYC8hQWwR0rg1IZSygVvfwh4VUmsTf+yMq4nGl
	5kswKQ==
Received: from mail-qt1-f199.google.com (mail-qt1-f199.google.com [209.85.160.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 43jgas8rme-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Mon, 16 Dec 2024 12:38:08 +0000 (GMT)
Received: by mail-qt1-f199.google.com with SMTP id d75a77b69052e-467b09809easo1997591cf.1
        for <devicetree@vger.kernel.org>; Mon, 16 Dec 2024 04:38:08 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1734352688; x=1734957488;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=pdnRoC01OFV41wLMXSS0ru37AeoKmw/OKRkPEM9jyW4=;
        b=NnF8nB51M+NbtujKGBeJHlqChuHHHepMm0fhBf13fyuHVzCNjjip+S+FayHx6q4sRJ
         bI3PenZg5AT0fmGJ3+p9YeOMZuKGnvzu9HURFT6enHFR3b01Ulet/eacWuXC+3RHTKIN
         ivJf6lDLfSPVEz1LDLZ1zPx4tf2esi0UIaPYGzAG/VrOUn8BxINqZ9ZFv9kqAR19P1AS
         BL1Wp4R7RWKqjtZ5qCIX8dCzmbVmmAfuGSdnscJ1NwXIlZ+Dreg6nGagsrW8nE1bBWAs
         D8YrcmrSuwgIvamB7eWTNQBX9O/akCXY9EdKErTY+OdPvPD5S4DOlXnN23EnoJwsI3dV
         IEFA==
X-Forwarded-Encrypted: i=1; AJvYcCUW+uY9jCUt8ykHif8itwOqPBbdVt2PBmJkg2fAsKjs5nCkNibRNcKTi4fUEh5of/03JbwCRQqDyZS0@vger.kernel.org
X-Gm-Message-State: AOJu0YwANMtGYRzTBLQL7kyC/0/hS6tXAQp9TFAi+fVGsmWR8rl17gbe
	d0si1hxxhVcHxTHlGhHj4DXlx3Vb9OKpn0ugv5ADDxM6Kq+FDgw03sFyAKMbPWnZlksRpwp8WJe
	Qy6D0cQSXeOoe+DTsDq42eCvlmL/RZk6ToG8eDpcZLJixcjESeWmL+EtQXJ87
X-Gm-Gg: ASbGncunC2j7dwPsT6D8+KJApe3mVZy4/oYMy50yFs+GzH+yOyjSJ4qGNTVikqrqU0H
	t8KrkjbOHD5ZCvuKiyvu1Hy7mg6mKtdiXavXqaNMu0y+c/a5Pamr0w/O1w/dzSwFmyKZ2tQKQok
	bj7fN+BKaxll4d2IGc8EJ0Jwfjj0PcA8yx4Ca58Aom/1t8binV90hvT/UfoN2x3YPDorVKD5lEa
	ZJDIJiqlPnKGIeXfCN3MjhMtMURGofJr54jkmYNVsrqMC6xidIZ2UzNkN/Td4egUdOGgueTlgNt
	cWqeUlcIHX8Qn3Hrdv5eAUPVwVdn9IppQhs=
X-Received: by 2002:ac8:5790:0:b0:467:5931:f6a8 with SMTP id d75a77b69052e-467a586e7c4mr68200181cf.16.1734352688096;
        Mon, 16 Dec 2024 04:38:08 -0800 (PST)
X-Google-Smtp-Source: AGHT+IHBZq+xdirGGlvXjXKLslR6dJXMeyFlRPNL9zK3PD5HijaosBXr9Pya5+Lx8++owoZlIykajA==
X-Received: by 2002:ac8:5790:0:b0:467:5931:f6a8 with SMTP id d75a77b69052e-467a586e7c4mr68200011cf.16.1734352687718;
        Mon, 16 Dec 2024 04:38:07 -0800 (PST)
Received: from [192.168.65.90] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-aab9638ec48sm327517966b.147.2024.12.16.04.38.06
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 16 Dec 2024 04:38:07 -0800 (PST)
Message-ID: <14b1d2f7-0c0e-4976-b4c6-fe3b76b55d9f@oss.qualcomm.com>
Date: Mon, 16 Dec 2024 13:38:05 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v4 2/3] arm64: dts: qcom: qcs615: add UFS node
To: Xin Liu <quic_liuxin@quicinc.com>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley
 <conor+dt@kernel.org>,
        Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>
Cc: Vinod Koul <vkoul@kernel.org>, Kishon Vijay Abraham I
 <kishon@kernel.org>,
        Alim Akhtar <alim.akhtar@samsung.com>,
        Avri Altman <avri.altman@wdc.com>,
        Bart Van Assche <bvanassche@acm.org>, Andy Gross <agross@kernel.org>,
        linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        linux-scsi@vger.kernel.org, quic_jiegan@quicinc.com,
        quic_aiquny@quicinc.com, quic_tingweiz@quicinc.com,
        quic_sayalil@quicinc.com
References: <20241216095439.531357-1-quic_liuxin@quicinc.com>
 <20241216095439.531357-3-quic_liuxin@quicinc.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20241216095439.531357-3-quic_liuxin@quicinc.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Proofpoint-GUID: BV2U61kmHIShaCAlkLN9YSoTApH-mWNW
X-Proofpoint-ORIG-GUID: BV2U61kmHIShaCAlkLN9YSoTApH-mWNW
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1039,Hydra:6.0.680,FMLib:17.12.60.29
 definitions=2024-09-06_09,2024-09-06_01,2024-09-02_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 priorityscore=1501
 phishscore=0 adultscore=0 impostorscore=0 clxscore=1015 lowpriorityscore=0
 bulkscore=0 mlxlogscore=722 mlxscore=0 spamscore=0 suspectscore=0
 malwarescore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.19.0-2411120000 definitions=main-2412160107

On 16.12.2024 10:54 AM, Xin Liu wrote:
> From: Sayali Lokhande <quic_sayalil@quicinc.com>
> 
> Add the UFS Host Controller node and its PHY for QCS615 SoC.
> 
> Signed-off-by: Sayali Lokhande <quic_sayalil@quicinc.com>
> Reviewed-by: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
> Co-developed-by: Xin Liu <quic_liuxin@quicinc.com>
> Signed-off-by: Xin Liu <quic_liuxin@quicinc.com>
> ---

Reviewed-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>

Konrad

