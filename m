Return-Path: <devicetree+bounces-204799-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id A9D0BB26E73
	for <lists+devicetree@lfdr.de>; Thu, 14 Aug 2025 20:02:22 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id D41DC3B88CC
	for <lists+devicetree@lfdr.de>; Thu, 14 Aug 2025 17:59:57 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 54D383101C2;
	Thu, 14 Aug 2025 17:55:13 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="cvYMDrSp"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B90B63101B5
	for <devicetree@vger.kernel.org>; Thu, 14 Aug 2025 17:55:11 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755194113; cv=none; b=UE6F5pggueUzo5r2T0uWU4KV0CX7zbV96rnsh/9z8zpNUjY8mvy7h5UovGLR/pat8YK05FU8c2z7VNHNlM38sl9VPBmHtFkMd/02CiD2nYCVF/6+YQp1HMxQ6sCC2y2wKLN1x02a72kq/zkLnm/lQ7j7PRu4khKuoJ0RnzJ/TTQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755194113; c=relaxed/simple;
	bh=ORCr42UJalAW1unb7vVLUdGNfgegDf8AmnRiPFr+gZ4=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=tyyVK3QgYe2m/wjDfKI+48qFVdAcY16MKPXucOYCo2piTiKVfxRkNil8s55JyM4NenahgCg7l23qZDrPPZ5f+QZVHL8YVROgsJMGRCvtpjAxknG0MmfrAw/J5FyY1skGJk3c/t4uwuco1oRG9Ty7zc1XZapLYOpMIXfb4OedXCU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=cvYMDrSp; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279870.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 57EHYKhY002778
	for <devicetree@vger.kernel.org>; Thu, 14 Aug 2025 17:55:10 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	JZv3VRcqeZuhnmVMXAw6lrB7bSuJ+i+L/0SR4ZWbkJE=; b=cvYMDrSprDWLWbxp
	zaw5oMUMuGctihW/6VWy80KPDvx76RKWLbOaKudnoAZethxxV6FRe4H/3XnFqxVv
	nlNZ9uJnC9idUa02KXVNM4VLyK9RiFJVYaDIKBsKWH2mSl4MB1z791VetiZxrDh/
	n10Hl2sfMZJbbMNC2RKCqDKvbxYkIWJ7OkE/c0IpGeiE0eSWakvLIzTSojPXz8b5
	HUQXcBJzuGEuewQl3X1KD86aRqCDOr/04hckvzQcHRNnHFdzy367cXyXx3YL/3vL
	i7xdDIBFsyBjTU30jdvmwNcopub4ExOjdSONjgDd4+hp4sDIDS+lOFGWRXVtSe9A
	tyJ3Pw==
Received: from mail-pl1-f197.google.com (mail-pl1-f197.google.com [209.85.214.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 48dxdv8q1q-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Thu, 14 Aug 2025 17:55:10 +0000 (GMT)
Received: by mail-pl1-f197.google.com with SMTP id d9443c01a7336-244581ce13aso21082615ad.2
        for <devicetree@vger.kernel.org>; Thu, 14 Aug 2025 10:55:10 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1755194109; x=1755798909;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=JZv3VRcqeZuhnmVMXAw6lrB7bSuJ+i+L/0SR4ZWbkJE=;
        b=On3wl9WCrhyzad+hKOd3tOcrvXcGjbYJTFr9zL9cTQVKNPNKDZktoP9RHOpdiXy9UK
         Xj20ZF1pytRRqU/BnsmKnxr7A0pwa9mIMHtrHPRh7tUiLXaLqdL5U/pFd3kZC9x2S7ym
         Ub2KCJduiKI1fgQU1rUmtOOVR39h7gkyzhjH1usYOdryJSegwoVzkAJIhhC8+5O22gVX
         z5JJOJACfN5p7LqBBt/wCzPvNMkHJtjdycVl0Ii6jkYxFiyuOzivKWvPWLuUoNfRsXPM
         6Oxurk1xPgvpkBk7Q0feJU3JAu1/10L3iQfHC2UBQTb6YSDDsg+RbN1oQKnFd8Kzn8qv
         Iraw==
X-Forwarded-Encrypted: i=1; AJvYcCVzpOjMuZ6Kj1RJQDxSIVc04eiEsmfpFgQ4otE2sZye5HbyUbxIcO9o67a+9LoABCoRP6HyqrR3lsIv@vger.kernel.org
X-Gm-Message-State: AOJu0YzdlL4g57+CESgZz6xO1w4LOxrb4Wtg9ZTJMOPOmp5pTeGwpLbe
	gdp5oCDkKj2i6Ftx6VJAFDCRZja56WuAgVV/d20nTuWFpvY7DRG48TbYcOSYPyw1R/DnLuFoQzb
	KY9Fz02jrqu/s7+Hcg5TIC6BsQYKAvPDXTtrT7j8h45KRSfcpG0namzalOE/93L01
X-Gm-Gg: ASbGncstwahnxG2jfYOYzGsiAggmtmXF6D4M0hoY2qTLhkxXu/EN9sFmfezFRb1sDJ/
	wCSrne/sVBElJwZVSpRAAU2R2sEogvfKY323tbTCMLx8muSWYrLs+NLoFMr/4Of9e34TxubmvTB
	Vn1HZX1Qw0ecFM8vEBBEI1xmDfpkEy/IqVHAC+uKGCW1jId/GblUdRE9p+p7F2rU3bRGwSMWDFQ
	7j22uD1ycpHp52g/ObcClzDt0S9vSQ3NCxpKOXGRnMStPxrkvaGqshz9/Fh0otSPe+RFCzDlG5J
	+ItjNaZ0zFFlELMa8vj7bO96zPEDkODQs9wxK+TyrnvAvxOy5amDv1YX55tYh0CEiCbK
X-Received: by 2002:a17:902:e78e:b0:242:460e:4ab8 with SMTP id d9443c01a7336-244586dbc4dmr58394025ad.46.1755194109356;
        Thu, 14 Aug 2025 10:55:09 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IF7GjEYwKJ4eUG2s8iqD1mFqhdTADJ5UyumLsiIQwOIDf3LkbwscHxfBfaO3NFffYdyQqpu4g==
X-Received: by 2002:a17:902:e78e:b0:242:460e:4ab8 with SMTP id d9443c01a7336-244586dbc4dmr58393645ad.46.1755194108881;
        Thu, 14 Aug 2025 10:55:08 -0700 (PDT)
Received: from [192.168.0.195] ([49.204.31.133])
        by smtp.gmail.com with ESMTPSA id 41be03b00d2f7-b422bac0391sm29539707a12.37.2025.08.14.10.55.04
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 14 Aug 2025 10:55:08 -0700 (PDT)
Message-ID: <9994318f-4c66-4400-a588-721e7832bcb1@oss.qualcomm.com>
Date: Thu, 14 Aug 2025 23:25:03 +0530
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v4 2/7] dt-bindings: clock: qcom: Document the Glymur SoC
 TCSR Clock Controller
To: Krzysztof Kozlowski <krzk@kernel.org>
Cc: Bjorn Andersson <andersson@kernel.org>,
        Michael Turquette <mturquette@baylibre.com>,
        Stephen Boyd
 <sboyd@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley
 <conor+dt@kernel.org>,
        Taniya Das <quic_tdas@quicinc.com>,
        Ajit Pandey <quic_ajipan@quicinc.com>,
        Imran Shaik <quic_imrashai@quicinc.com>,
        Jagadeesh Kona <quic_jkona@quicinc.com>, linux-arm-msm@vger.kernel.org,
        linux-clk@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
References: <20250813-glymur-clock-controller-v4-v4-0-a408b390b22c@oss.qualcomm.com>
 <20250813-glymur-clock-controller-v4-v4-2-a408b390b22c@oss.qualcomm.com>
 <20250814-warping-hawk-of-brotherhood-0a34be@kuoka>
Content-Language: en-US
From: Taniya Das <taniya.das@oss.qualcomm.com>
In-Reply-To: <20250814-warping-hawk-of-brotherhood-0a34be@kuoka>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Authority-Analysis: v=2.4 cv=IuYecK/g c=1 sm=1 tr=0 ts=689e22fe cx=c_pps
 a=cmESyDAEBpBGqyK7t0alAg==:117 a=/kiP2gCwObMqexHosDfpNA==:17
 a=IkcTkHD0fZMA:10 a=2OwXVqhp2XgA:10 a=P-IC7800AAAA:8 a=rVg30yMsodvzwDQ_i0MA:9
 a=QEXdDO2ut3YA:10 a=1OuFwYUASf3TG4hYMiVC:22 a=d3PnA9EDa4IxuAV0gXij:22
X-Proofpoint-ORIG-GUID: FmFDEo-d1Q-ZN7ihMMHnU0XyaV-PaCSY
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwODA5MDAyNSBTYWx0ZWRfX9KQMRpeKZqKZ
 EjidR25nL9e+lpzApKCZsUBDYkpZpJTKXrhLVp9624vma6o8Dn/hGEmMdRJLVktKQj62xvcZKwV
 oUab9FwXi0MJEorqKawNKjswwIFbP1s5S9M7W6Q3lZH14M0aZjoKJZcmpdMqqX5NcSdVOl64eI5
 oZzkzCkJ48RYw6L5FddUY3T4K6UYSz18F8/FjEQceNReJ8hhqLTp+KUurGjYR5NT3njStJ+cKWI
 VNGvzKm5TdoOmjhi6zEO8EPQbcfpPiZTFy1BZUJJGuxczuehQNB21MlIIQCdPaF3o8fPAWnFTpq
 dmWpIzoPQe1I8Vh+lr1XZnft1FBT0Y6nQQfYIj/qFRn2sATHEXjIN7h8sJYDIbLoBnZ6zpZ1xUj
 31jfbCiu
X-Proofpoint-GUID: FmFDEo-d1Q-ZN7ihMMHnU0XyaV-PaCSY
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-08-13_02,2025-08-14_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 impostorscore=0 malwarescore=0 spamscore=0 priorityscore=1501 adultscore=0
 clxscore=1015 phishscore=0 suspectscore=0 bulkscore=0 classifier=typeunknown
 authscore=0 authtc= authcc= route=outbound adjust=0 reason=mlx scancount=1
 engine=8.19.0-2507300000 definitions=main-2508090025



On 8/14/2025 1:37 PM, Krzysztof Kozlowski wrote:
> On Wed, Aug 13, 2025 at 01:25:18PM +0530, Taniya Das wrote:
>> The Glymur SoC TCSR block provides CLKREF clocks for EDP, PCIe, and USB. Add
>> this to the TCSR clock controller binding together with identifiers for
>> the clocks.
> 
> If there is going to be resend:
> 
> Please wrap commit message according to Linux coding style / submission
> process (neither too early nor over the limit):
> https://elixir.bootlin.com/linux/v6.4-rc1/source/Documentation/process/submitting-patches.rst#L597


Sure will fix Krzysztof in the next patchset.

-- 
Thanks,
Taniya Das


