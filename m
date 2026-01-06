Return-Path: <devicetree+bounces-251928-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [104.64.211.4])
	by mail.lfdr.de (Postfix) with ESMTPS id 44B98CF866F
	for <lists+devicetree@lfdr.de>; Tue, 06 Jan 2026 14:00:22 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id B9C393017025
	for <lists+devicetree@lfdr.de>; Tue,  6 Jan 2026 13:00:17 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B5A7D32E696;
	Tue,  6 Jan 2026 13:00:15 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="TRS+iD20";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="PyEHG7xu"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0448A326D55
	for <devicetree@vger.kernel.org>; Tue,  6 Jan 2026 13:00:13 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767704415; cv=none; b=jK5xqp8XyRCTZI6+S2EK/6Tt1DUOdoyTErqoopYIKIFYUtSwPsMt/A8WWIQev/NbGRxbmGlcm27ZQAqWkivFEW7oimI3OkekU0Whg1OQNwHQZIvBaVWzzViHV6jcFxk6HSszxp/OdLMpVTocBRQ6OTSJ6r42HGkJFpRdM14cyPs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767704415; c=relaxed/simple;
	bh=0om2bX45QNGjgdqYVBRYqDITF50Dzz/TKfhxXmJQ3ok=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=nK8+K7qu7QkeaEdygctRLChnpk94giEMCmIqc0CFptzZwCd5OdbhBISjOgbzkugmBeEohbspkmnSoFODoret20L3JrAagYjVR5ShLuv4yCRBr5Ui+syEbwcNseRR4iEnTGGcDXl8H7XXMWsETITqENl6hShKy2wqloWCQOYrVRI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=TRS+iD20; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=PyEHG7xu; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279864.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 606AgXUd1462305
	for <devicetree@vger.kernel.org>; Tue, 6 Jan 2026 13:00:13 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	huXgOWlwMM/3UBQ256PZnVk2f03NpWBmmvrJXgXD0Ak=; b=TRS+iD206qbp/Mkt
	9OdYG4UisDFYd5ntCFRwFJ4HZaVAhjc73UvHfPF2sV+0KWWDWhvhgyWgDcwdyrFi
	npyzzP2A3ZGUZCfZ7K73l9nknH5H270HR0PikxT3sSj89UrAvmch17byE5+eJrWo
	K6dU/LjC/EhbcKwUXp+Vpr6Z+JuEqJ5aSm1NPdKL5zRJatwEuFbF1324Dxvi8gBK
	RQEoWDurhc0bIm7C1OWOg2KSqyOyHSPF/BfrqeiRpS2Z/9vTBcQktf6a2m+kSeTs
	KFjsgT8XqSNzHrMx3zERwRSrsV8iU/X0YHJzuvfFjOQAPZvmo+Kh/zDGTM10ymWg
	ZxVtVg==
Received: from mail-pg1-f197.google.com (mail-pg1-f197.google.com [209.85.215.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4bh0vm0b6p-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Tue, 06 Jan 2026 13:00:13 +0000 (GMT)
Received: by mail-pg1-f197.google.com with SMTP id 41be03b00d2f7-b993eb2701bso975644a12.0
        for <devicetree@vger.kernel.org>; Tue, 06 Jan 2026 05:00:12 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1767704412; x=1768309212; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=huXgOWlwMM/3UBQ256PZnVk2f03NpWBmmvrJXgXD0Ak=;
        b=PyEHG7xusrseNzo5jedutcub7PuuSnxtF16/xqn2CPu3WHbkmonFlpPaX3KMn38cGG
         SF2qYAZDPsixOkE3Q2dgA6cV5o00E2sjE1DQwvM88pvKG/ovROGB+bUQdX0orL6BzlY4
         c+AB3ZAZ7p0siU1UAuAC62CJj1x0G98+2Bh8d6X/APCuO+1b5b91+V4u1UPzVvQRc35N
         b2IBY1Yp7oa85YFrr9+Q5SSeDLqunhKL/6CQQH58RxE1HB/wzuuJ4Jid+Gjj9tMwW9sG
         2YznFiaN4zTVSuv19VJ1Ho2qheSWmQI6WhNLoSUSgyBk+NtuWq/qYACRhlaQGeicA7/q
         R7XA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1767704412; x=1768309212;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=huXgOWlwMM/3UBQ256PZnVk2f03NpWBmmvrJXgXD0Ak=;
        b=w9ylNsWwmzPV81rXGoyy8QpjYb+pnzDoGjbk3+Kq+6zz/aP71JQlHrpRpDwrEymlk4
         J2nc8bEW30ULC/KHYPg8eL87Y1Z0wOiNxVPk38hkxGr69D2Sii2lXk1Z+foeA1wObtSY
         A2DmSJqYg3uVEd+UW/1jQbwHMlzj1Q/lm/kJN3x3emwBV4aZWhDE95CgFIeiuAZr9h6y
         Oo0jLWAkTWLJDfJGBqnHRnsmAwoRBbyedNHtNXtPjJ/vaHIKy527xY9S0S1N+JlsB2o8
         TuqNf+iH9EZPf/vGapfs7X2J4h6Og+YQJS9L6zhW0KOaYch4F7dFW5dlBCWXtgCNun8x
         giEQ==
X-Forwarded-Encrypted: i=1; AJvYcCV6IVELeiPE9RrrdV8Z6ZyHWJxx3mUNxeepbrzaR89EcOhd2snK0fWWTC7eeqNI1MbtSNleZTyHC7t0@vger.kernel.org
X-Gm-Message-State: AOJu0YzVs6tmKaWnGefh6yIdtRUGK7PE+tOg0epG56H+hialSQLa57J7
	CSqs3VpyhwbNQDMLx07Hoz9Aj4Sygm1QP+kK7nSI0LvXHztISlNte3szMp58ad6xga/F1Tfrc5W
	NUaldKf1bShebrjz/boke+PwP58xmMmwFlx4bJxMXgxZ9Ah7HDSL2kA1lxTXIGprJ
X-Gm-Gg: AY/fxX4uNBT4TIIa8Q+AAP5GU//22iYk4rhPBoETrRNRgAL5yHtuKKI7kke252BSQgX
	zuAfCewedgIMQ5TZasi6HsiD04NW0Hp4NB7JDkNlepUnsytXUo49m6WISx8VePn5jk48vH+3qaw
	7tcNjwlfBDvCosYHw69OoZjrir13RDsC5iUjM8JKn9jtt8EdVuxXsx0lc+2WO6fDpMO3EZCqPNm
	Rbx88Y/snzO8G29OnwMSoGMcPFSH0keXByQfZ1ENRPubxnXCuJfXK9eN1w7BUb7XEwF9KbCgq4+
	cveNkgPdbg/v3zq3Ef2q3A+wZVvDeVCTHjfOF+vJRrJZN9Jie8TEV4VldsPUkfhXCz72OxrvsIR
	xns7sUccj7t+Po7L/zvuWWyZzbuPRo+fKDJrtyEnbMX2anYluxjI=
X-Received: by 2002:a17:903:1a08:b0:2a0:8f6f:1a0d with SMTP id d9443c01a7336-2a3e2d4a754mr28040045ad.61.1767704411957;
        Tue, 06 Jan 2026 05:00:11 -0800 (PST)
X-Google-Smtp-Source: AGHT+IEj1eTxDDzV+0Q9BC5FCCAwWShTr88gsLB31ddtNM4i8U1yoesSaOsi/0lEA1kMP18LZTgfqA==
X-Received: by 2002:a17:903:1a08:b0:2a0:8f6f:1a0d with SMTP id d9443c01a7336-2a3e2d4a754mr28039695ad.61.1767704411315;
        Tue, 06 Jan 2026 05:00:11 -0800 (PST)
Received: from [10.217.216.105] ([202.46.22.19])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-2a3e3cc8803sm22780885ad.71.2026.01.06.05.00.06
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 06 Jan 2026 05:00:10 -0800 (PST)
Message-ID: <e396bef2-e5bf-4e6d-98f4-37977d5d93ec@oss.qualcomm.com>
Date: Tue, 6 Jan 2026 18:30:05 +0530
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH V3 3/4] arm64: dts: qcom: hamoa: Add UFS nodes for
 x1e80100 SoC
To: Manivannan Sadhasivam <manivannan.sadhasivam@oss.qualcomm.com>
Cc: vkoul@kernel.org, neil.armstrong@linaro.org, robh@kernel.org,
        krzk+dt@kernel.org, conor+dt@kernel.org, martin.petersen@oracle.com,
        andersson@kernel.org, konradybcio@kernel.org,
        taniya.das@oss.qualcomm.com, dmitry.baryshkov@oss.qualcomm.com,
        linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        linux-scsi@vger.kernel.org, nitin.rawat@oss.qualcomm.com,
        Konrad Dybcio
 <konrad.dybcio@oss.qualcomm.com>,
        Abel Vesa <abel.vesa@oss.qualcomm.com>
References: <20260105144643.669344-1-pradeep.pragallapati@oss.qualcomm.com>
 <20260105144643.669344-4-pradeep.pragallapati@oss.qualcomm.com>
 <7gi7sh5psh5v4y5mrbgln6j2cjeu5mogdw2n3a6znjtqyjcyuk@kxpe566v57p3>
Content-Language: en-US
From: Pradeep Pragallapati <pradeep.pragallapati@oss.qualcomm.com>
In-Reply-To: <7gi7sh5psh5v4y5mrbgln6j2cjeu5mogdw2n3a6znjtqyjcyuk@kxpe566v57p3>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-Authority-Analysis: v=2.4 cv=Pa3yRyhd c=1 sm=1 tr=0 ts=695d075d cx=c_pps
 a=rz3CxIlbcmazkYymdCej/Q==:117 a=fChuTYTh2wq5r3m49p7fHw==:17
 a=IkcTkHD0fZMA:10 a=vUbySO9Y5rIA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=VwQbUJbxAAAA:8 a=EUspDBNiAAAA:8
 a=CRlJY8YO9k0lXNWMlzEA:9 a=QEXdDO2ut3YA:10 a=bFCP_H2QrGi7Okbo017w:22
X-Proofpoint-GUID: LV3l6NYyHIzsiWh23HwLBZOAb_SI9ugt
X-Proofpoint-ORIG-GUID: LV3l6NYyHIzsiWh23HwLBZOAb_SI9ugt
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMTA2MDExMiBTYWx0ZWRfX/PjkukIyOSFe
 uwyKWEmidqx6ynbBlgE11kA2OVnJdd7v1DLhWwK4BPkw4la/P6vt6Zg7/ip0Ve7nY45rVHp47DB
 I4gEf/nc2u6o2AkNg/cyFKcWgp3au0krrKQmxnV6pVrsoSzizdBMie/6plZFtbFg9KBgaNLYy5g
 FPFuuuqIFZwJMR5wq7Kw6JN6oXyInZ7t2QhAwCnbixWynh+SHgcUdNZCt5fp7EI2Myq+/bbWm6U
 VjiFvm5znN7mbn5usyuRgRGZs3UuAhtNtZyxbNvMd0umip+7SfjHQ8YrGXjFN0aQpduhij3FmI4
 zimaqfER8shD/KQL9p/bls3GSNsq0JFdZfVlNgeKYPyjBO+5XMdQoa4a6ooLPCx7cK5YYboIh8L
 O5e63tKQP83DDwFs+PTGryKy9WMeZTT3ENjSikW5q4HRNjFID1HimrnEIrFw1ymVG6e0KXalQlU
 dN8XepsXiuAv9HKJ6sw==
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2026-01-06_01,2026-01-06_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 impostorscore=0 clxscore=1015 priorityscore=1501 lowpriorityscore=0
 spamscore=0 adultscore=0 suspectscore=0 phishscore=0 malwarescore=0
 bulkscore=0 classifier=typeunknown authscore=0 authtc= authcc= route=outbound
 adjust=0 reason=mlx scancount=1 engine=8.22.0-2512120000
 definitions=main-2601060112



On 1/6/2026 1:36 PM, Manivannan Sadhasivam wrote:
> On Mon, Jan 05, 2026 at 08:16:42PM +0530, Pradeep P V K wrote:
>> Add UFS host controller and PHY nodes for x1e80100 SoC.
>>
> 
> Minor nits below. With those fixed,
> 
> Reviewed-by: Manivannan Sadhasivam <mani@kernel.org>
> 
>> Reviewed-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
>> Reviewed-by: Abel Vesa <abel.vesa@oss.qualcomm.com>
>> Reviewed-by: Taniya Das <taniya.das@oss.qualcomm.com>
>> Signed-off-by: Pradeep P V K <pradeep.pragallapati@oss.qualcomm.com>
>> ---
>>   arch/arm64/boot/dts/qcom/hamoa.dtsi | 123 +++++++++++++++++++++++++++-
>>   1 file changed, 120 insertions(+), 3 deletions(-)
>>
>> diff --git a/arch/arm64/boot/dts/qcom/hamoa.dtsi b/arch/arm64/boot/dts/qcom/hamoa.dtsi
>> index f7d71793bc77..33899fa06aa4 100644
>> --- a/arch/arm64/boot/dts/qcom/hamoa.dtsi
>> +++ b/arch/arm64/boot/dts/qcom/hamoa.dtsi
>> @@ -835,9 +835,9 @@ gcc: clock-controller@100000 {
>>   				 <0>,
>>   				 <0>,
>>   				 <0>,
>> -				 <0>,
>> -				 <0>,
>> -				 <0>;
>> +				 <&ufs_mem_phy 0>,
>> +				 <&ufs_mem_phy 1>,
>> +				 <&ufs_mem_phy 2>;
>>   
>>   			power-domains = <&rpmhpd RPMHPD_CX>;
>>   			#clock-cells = <1>;
>> @@ -3848,6 +3848,123 @@ pcie4_phy: phy@1c0e000 {
>>   			status = "disabled";
>>   		};
>>   
>> +		ufs_mem_phy: phy@1d80000 {
>> +			compatible = "qcom,x1e80100-qmp-ufs-phy",
>> +				     "qcom,sm8550-qmp-ufs-phy";
>> +			reg = <0x0 0x01d80000 0x0 0x2000>;
>> +
>> +			clocks = <&rpmhcc RPMH_CXO_CLK>,
>> +				 <&gcc GCC_UFS_PHY_PHY_AUX_CLK>,
>> +				 <&tcsr TCSR_UFS_PHY_CLKREF_EN>;
>> +
>> +			clock-names = "ref",
>> +				      "ref_aux",
>> +				      "qref";
>> +			resets = <&ufs_mem_hc 0>;
>> +			reset-names = "ufsphy";
>> +
>> +			power-domains = <&gcc GCC_UFS_MEM_PHY_GDSC>;
>> +
>> +			#clock-cells = <1>;
>> +			#phy-cells = <0>;
>> +
>> +			status = "disabled";
>> +		};
>> +
>> +		ufs_mem_hc: ufs@1d84000 {
> 
> ufshc@
ok, i will update in the next patchset.
> 
>> +			compatible = "qcom,x1e80100-ufshc",
>> +				     "qcom,sm8550-ufshc",
>> +				     "qcom,ufshc",
>> +				     "jedec,ufs-2.0";
> 
> Drop jedec compatible as Qcom UFS controller cannot fallback to generic ufshc
> driver.
"jedec,ufs-2.0" was set to const in dt-bindings, dropping now will lead 
to dtbs_check failures. is it ok, if i continue with it ?
> 
> - Mani
> 


