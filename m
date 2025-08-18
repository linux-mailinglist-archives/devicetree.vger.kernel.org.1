Return-Path: <devicetree+bounces-205630-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id D8EABB29A2F
	for <lists+devicetree@lfdr.de>; Mon, 18 Aug 2025 08:53:55 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 91FC37A4F34
	for <lists+devicetree@lfdr.de>; Mon, 18 Aug 2025 06:52:07 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B9E76271450;
	Mon, 18 Aug 2025 06:53:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="MjLmYYl7"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 598D2275845
	for <devicetree@vger.kernel.org>; Mon, 18 Aug 2025 06:53:31 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755500013; cv=none; b=qQ4dzzFV4zBA1xXZmM2GVdht0U+6qiNEleJxHigCB1KQQKrejo3mywuSvYDMt43SYh6clVQogrV0GAAqcv0qj7APToIppn3RmijbHElSqxeWamSfSoFQiAydTbRP5FlZaxxsgI5Bg/CKD2whb/A/gcK41vtvtVmG6I2ERDv2hjc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755500013; c=relaxed/simple;
	bh=EinHQ+DSGbJ3pcgkQafq1Ku/ePXDAA7sMkuDT8sNcik=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=uzVhO3WEzYNRNWh0d4x3cvRDXKaR3wYjXcerS2Fz2s+sDWF3m9UPzaG1pinUDI/RclUF8MyoA5W++3P1X5XGlv4MItM0UglrFq2v9MVmNSSzVwg7BLhCNHMj0mpQnc0YYQgWAQ66P9//9Bss9sAgwFgDrCJm5Za6KaYSp7l2hHM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=MjLmYYl7; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279870.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 57HHlXps006647
	for <devicetree@vger.kernel.org>; Mon, 18 Aug 2025 06:53:30 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	J8ulHSBYS2RPj5dpKiV9mZ+6G9RRs1klwA3DWPRwV2Q=; b=MjLmYYl7UiAjpN1x
	FwVeRfAJ77j8gKfc3dSyDgr2FnCSBwR6Kg7bXthHF2WGE4eQS7+QGk1HdxVEN2w7
	AE1ehXkRjMfve9g3wGXlvUs5L7cSiyHY+6WnZLtnzvRog42wT0FjCLFr1873NoFK
	sqnNnwDcQDDT/Oq3RBBDn1NR0CQ74J5D2Z+S5yRj105iBKuy7sXqd1wtBgno4c4H
	mvbsi8LzzUSv8RwQCE4JWybXweboQVrkmUiyW6u3dQnaXziBEcSCiS+B/nPS+eub
	IKyrPB4Gv1jYItXKJIgvXbZoKqVw6AfZeMkU3K8rXNp4VIM6Pa0osOwYcijetbnP
	Eubnkg==
Received: from mail-pl1-f199.google.com (mail-pl1-f199.google.com [209.85.214.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 48jj2ubknk-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Mon, 18 Aug 2025 06:53:30 +0000 (GMT)
Received: by mail-pl1-f199.google.com with SMTP id d9443c01a7336-24457f59889so38751985ad.0
        for <devicetree@vger.kernel.org>; Sun, 17 Aug 2025 23:53:30 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1755500009; x=1756104809;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=J8ulHSBYS2RPj5dpKiV9mZ+6G9RRs1klwA3DWPRwV2Q=;
        b=ZXCO4T/LYlgsnP7LhLwgV+Zvb1OOMJH0T/RLU7QkH7MjmO7+46xj9K/UoiR9kM3zpm
         CTrUuJHKowFZ1V3lIZRfiXyrkEds6SDmJoHueAUpX+g11SZ+73uSbFtq2pVaeGz4pyAa
         t5Br1+NEBJ8PPhFAEakoMWY1Gcm9glVggp/nDXFB5S3OK9rOgpk6OAIzSCvA7qeZjYd5
         JE/ORXF+x8RGMfj0/ZyE0bRqIguTv73U5n3bdpyoDecc36QwoUHQ/3H196kFCGlxRv4X
         XUg31jntcH1jd4Z2JCJj3ELqG3KcA4pDbUVmSlOo01nxuDL/BCmKp7hA0uUKpLvt3/pn
         YOoQ==
X-Forwarded-Encrypted: i=1; AJvYcCVxWgAc0cjK1lIpLXMZtqKhQ9UCc4tMEu7/KXZ08YNGtp3K8yFOr4KKyOEYnoLJbBc+qgCTyvkt92Ht@vger.kernel.org
X-Gm-Message-State: AOJu0YxJ+UTjLWR8nvV7jOrqeBuCJeO1E+WZrb0mR3y1NnR55A19soDd
	NI/I9aK1MFTfOKNWSfsy2yxSkQZ9Phlnw6+M3VPh8vAHYSIzNQNrGRYxrg9sBZt2sm96XqZIn0M
	MPYM4wpR4ER0L+Y9MiiGQJ94vQj3LoI41+Km5CsSDjJRI3Amx4W/uBuKuJRp+PkHX
X-Gm-Gg: ASbGnctInh7cpQywGdtgULSSX7frDJUl6A/T9s/yT7iz0pVfJTgC13OrkQbYQy3Y+p+
	ev7NWyvmPXy/eKF+yGFWQJv37968//4WnuNvz9FwyLWioXEHT3jj5eLlKKKlWMXDOresDcbKor9
	dQH5mZOpKqshQ4qAJrsWRPxc+qvVufe36bdzQD8jgU01DenQz1uZbBfrGrs5I0wcULXuQG/JHTy
	nz1VJ19QI4uZwdq+BWY/Rm8ATXrtXysA3Q4l0HzR5q7E+V2bskffNHq1l4i7UQ8I9onzYBOi0DO
	pv7sY2bplrPo31nlIaAzLeUuQro8tq7ap8GBP8d0MRzr4+S+McIDgiWX7hXPX+f3IYZFARGrOKQ
	rz0Th
X-Received: by 2002:a17:902:ce89:b0:240:1bba:fc7d with SMTP id d9443c01a7336-2446d8ac792mr188538255ad.33.1755500009046;
        Sun, 17 Aug 2025 23:53:29 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IFT5Pt7gz6aj1Of1k780efYDT8e9XXEtt8qMHpKItHgK7LXJKm3SLl9VhFlh0djlPVc8CtUfw==
X-Received: by 2002:a17:902:ce89:b0:240:1bba:fc7d with SMTP id d9443c01a7336-2446d8ac792mr188537905ad.33.1755500008638;
        Sun, 17 Aug 2025 23:53:28 -0700 (PDT)
Received: from [10.218.15.248] ([202.46.22.19])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-2446d5769a9sm70671905ad.151.2025.08.17.23.53.24
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 17 Aug 2025 23:53:28 -0700 (PDT)
Message-ID: <c8dc3383-be77-4075-9e04-f5ea693e37a2@oss.qualcomm.com>
Date: Mon, 18 Aug 2025 12:22:29 +0530
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH V2 2/2] arm64: dts: qcom: qcs615: Add OSM l3 interconnect
 provider node and CPU OPP tables to scale DDR/L3
To: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
Cc: Georgi Djakov <djakov@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley
 <conor+dt@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>,
        Sibi Sankar
 <quic_sibis@quicinc.com>,
        Odelu Kukatla <quic_okukatla@quicinc.com>,
        Mike Tipton <mike.tipton@oss.qualcomm.com>,
        Imran Shaik <quic_imrashai@quicinc.com>, linux-arm-msm@vger.kernel.org,
        linux-pm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
References: <20250804061536.110-1-raviteja.laggyshetty@oss.qualcomm.com>
 <20250804061536.110-3-raviteja.laggyshetty@oss.qualcomm.com>
 <bsrhqkrzdapg72o6h6yx3pw6fjeseolt7zmq5fpvfhhdg7ktyv@zz3ueam6lcqh>
Content-Language: en-US
From: Raviteja Laggyshetty <raviteja.laggyshetty@oss.qualcomm.com>
In-Reply-To: <bsrhqkrzdapg72o6h6yx3pw6fjeseolt7zmq5fpvfhhdg7ktyv@zz3ueam6lcqh>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Authority-Analysis: v=2.4 cv=MJ9gmNZl c=1 sm=1 tr=0 ts=68a2cdea cx=c_pps
 a=JL+w9abYAAE89/QcEU+0QA==:117 a=fChuTYTh2wq5r3m49p7fHw==:17
 a=IkcTkHD0fZMA:10 a=2OwXVqhp2XgA:10 a=COk6AnOGAAAA:8 a=EUspDBNiAAAA:8
 a=GIfAjeyzppbQgaMxSMoA:9 a=QEXdDO2ut3YA:10 a=324X-CrmTo6CU4MGRt3R:22
 a=TjNXssC_j7lpFel5tvFf:22
X-Proofpoint-ORIG-GUID: eo8baUvd07LKABTW72C_3lFyOP1a2xuB
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwODE2MDAzMSBTYWx0ZWRfXxYtDGUkBpqCn
 UssGmgV/g3+AozSYIEpgAXS3GyhDcQdqmpXxdaci7M5Fss/5xAee5ilmiFHHTaJAu3cCNj1Iun6
 GI8dPkLaUPwAcbtXIIk4n3WJ4FCWef5BVUjTj/aUPMe4wlwDxauDzEO0AiyZMPTY/tDLQ3Kr1pH
 MLAwevLI24Dm5r5uvfAzYL6HhmgpNCkVMgUl/kgOvgokOCV0EgjrwmrhXOGiOtiabekvDyax81i
 auYVFSF4kdVHDCcku8QxjHkZDbZHiHC5L/Y2ysPJydN1o8UUOuAmNdADqoHreEybJ9boST/FhTu
 DbwsweJS9QLTJAmW27bTOFWq4+f6krUmvY00DKRdeJDihPcLgr7VBnm179iXjTFCzJ9XW1IkDH1
 TAPn7Con
X-Proofpoint-GUID: eo8baUvd07LKABTW72C_3lFyOP1a2xuB
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-08-18_03,2025-08-14_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 adultscore=0 impostorscore=0 phishscore=0 bulkscore=0 malwarescore=0
 spamscore=0 clxscore=1015 priorityscore=1501 suspectscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.19.0-2507300000 definitions=main-2508160031



On 8/4/2025 11:58 AM, Dmitry Baryshkov wrote:
> On Mon, Aug 04, 2025 at 06:15:36AM +0000, Raviteja Laggyshetty wrote:
>> Add Operation State Manager (OSM) L3 interconnect provide node and OPP
>> tables required to scale DDR and L3 per freq-domain on QCS615 SoC.
>> As QCS615 and SM8150 SoCs have same OSM hardware, added SM8150
>> compatible as fallback for QCS615 OSM device node.
>>
>> Depends-on: <20250702-qcs615-mm-cpu-dt-v4-v5-3-df24896cbb26@quicinc.com>
> 
> Yuck. It's not a way to define dependencies.

Will add the dependency using b4 --edit-deps instead of Depends-on

> 
>> Signed-off-by: Raviteja Laggyshetty <raviteja.laggyshetty@oss.qualcomm.com>
>> Signed-off-by: Imran Shaik <quic_imrashai@quicinc.com>
> 
> And the comment regarding SoB chain wasn't addressed.
> 
>> ---
>>  arch/arm64/boot/dts/qcom/sm6150.dtsi | 148 +++++++++++++++++++++++++++
>>  1 file changed, 148 insertions(+)
>>
>>  			};
>>  		};
>>  
>> +		osm_l3: interconnect@18321000 {
>> +			compatible = "qcom,qcs615-osm-l3", "qcom,sm8150-osm-l3", "qcom,osm-l3";
>> +			reg = <0 0x18321000 0 0x1400>;
> 
> reg = <0x0 0x18321000 0x0 0x1400>;

I will fix this in next revision.

Thanks,
Raviteja

> 
>> +
>> +			clocks = <&rpmhcc RPMH_CXO_CLK>, <&gcc GPLL0>;
>> +			clock-names = "xo", "alternate";
>> +
>> +			#interconnect-cells = <1>;
>> +		};
>> +
>>  		usb_1_hsphy: phy@88e2000 {
>>  			compatible = "qcom,qcs615-qusb2-phy";
>>  			reg = <0x0 0x88e2000 0x0 0x180>;
>> -- 
>> 2.43.0
>>
> 




