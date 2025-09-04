Return-Path: <devicetree+bounces-212777-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 6297AB43B92
	for <lists+devicetree@lfdr.de>; Thu,  4 Sep 2025 14:28:23 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id CC9F5189423C
	for <lists+devicetree@lfdr.de>; Thu,  4 Sep 2025 12:28:43 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 828A42ECD1D;
	Thu,  4 Sep 2025 12:28:19 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="JN3bF89Z"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0CE592EB5CE
	for <devicetree@vger.kernel.org>; Thu,  4 Sep 2025 12:28:17 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756988899; cv=none; b=IfC6CcHkW5VR+y2H1rJbzII9jlyHmRcnhmmdaH1z7Fjehjbtoihi4JyO/khxXZuvSni+P2GXuag4/VFCTzLR2KpHWXlvy4QO5+GwMeJPpEVtav7lvQIbCo8pBPEzJzWo4oG7swA5ZpGhAGC23vRiuE1fKI/+REEfjOqqRtdR+kQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756988899; c=relaxed/simple;
	bh=iZ1yconFgP4SU+f/2nEV3Iq/VVfOyxDTTCJZle5egt8=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=SJgurUcOgheM777KqNmCgPLhWdmL+4Yz423/u1qwBs3wegdF5jybEsgYEFE1wB+EBSar4LaPq/4JX0T1LJSciQTZsfRlMCBhRFvpzzFGra+KYrNmhzh6nF5u7ZuA/sIAwr9ma9waTTkP/oXkK/pERBCFT0IcsJQplozLVxT5Jk8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=JN3bF89Z; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279869.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 5849X9eD007609
	for <devicetree@vger.kernel.org>; Thu, 4 Sep 2025 12:28:17 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	cTkNPIlvtexAzRNVdxPe6P4Vsr6y+Ml/PHeKH4/6EBc=; b=JN3bF89Z0/kGEe74
	+d+OkDoXnmO7Pt1aqyPMYxptJs630LQsAAxVl7AGY58FHfo0+PgzoTBBdVlKBItm
	FOBXShPAWqxRb24FQZbr+YIa5SrT2/ljBq+xbJYxoXxCMcgOkrd2g+qlMBEErR35
	rEn6JDu3kbXZgOQPe92kx4drtyKt7XyrVoTOAzlDgo4M9yze1D68n7ivrpEpbzDO
	odHfTAUQd1hYws9+5ERImSeOQOJzLdJRAlPZPd73P6sddwMH6Rya5yvyBJZ5BEi+
	GZaqaJ1mjmS5jES+/e82FjacbksNdUjEfwjJ+ie14HajZDhzTG12TNKDYcFsqstZ
	Q5LRqQ==
Received: from mail-qt1-f200.google.com (mail-qt1-f200.google.com [209.85.160.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 48ura8ybd7-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Thu, 04 Sep 2025 12:28:16 +0000 (GMT)
Received: by mail-qt1-f200.google.com with SMTP id d75a77b69052e-4b2967fd196so2182921cf.3
        for <devicetree@vger.kernel.org>; Thu, 04 Sep 2025 05:28:16 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1756988896; x=1757593696;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=cTkNPIlvtexAzRNVdxPe6P4Vsr6y+Ml/PHeKH4/6EBc=;
        b=BxRRH5DuQRYBC56Ej7jnmxrU/f0AVqMzlGzicd9+dE9ALc+J6x923/j/NF7tO07LPp
         zRopIq7WKD2j7yHnp/7Z2K0uMkYbqVbpwCjA/xaJY+a2zJSVXUHAE3I+lf+JL1mK2bEE
         jXDrRUnrpsB5YET/s0mjbJrg6/UKSPRqf21Wtrcp/c2A2IC9nZwvY0BELU3hNOQ21miQ
         osnn+gsVDCuPuyCRcBxDLFda/jE/V+v5YBj44T/R5KDKpSoXtGq8Y9cgu2bqTpByBlGJ
         eZRxaQKosPLh/Xn78Df/7HkXCK8VrQtggIODdWhERKSC6avnpvm0eXJiorQCtowIQXD1
         gOLw==
X-Forwarded-Encrypted: i=1; AJvYcCWqNEOS51bsuI56ncbeaooWh2e2vwMKslZuCLdZHJ/kBr4bN5tyl+Rl/VeSBqlY2QhbIQlnoEb4XcmY@vger.kernel.org
X-Gm-Message-State: AOJu0YyS87XH0Ac5drzyqGCP9B+xuQsHBF6hVZrsw+0dx9aJ1OWo29i0
	3BqmwaCdRIoQ+5SIH7KagdRQHSi32GHjzE06PxfZtORf9VCOyivEIAMiKRfqm/406Wmur+5OoMs
	79zeUDEKn1fE1H69cOBwikwT8gHXo5eW8LbT2fFmI1bGpUE5ev70sRsV54mp2rbt5
X-Gm-Gg: ASbGnctIrfGSbbo7i2WBEjeTCkAmo8V6fcI5ocOIAa9gAvl5amznF2BnL+nayL+8nQ2
	GYkzPPAT62wf6vvNTJe3rogSoja8XmkS0JgatoxaTlINZ5Ocacm9JZumNLEN+YDYQPikSGdAinW
	i5+0AUAj6xqbWnekbQFoOUUojQrooFSK9/IeSBMUhjBHrn/nlGai8wURpA9L1qRT5dumQpaisUz
	dtogRRCQ5B0z/dLW38DivpKl4J05CGRsku0iKWDpBL9mA3vtJs49g/FtzQPtnQEx+3QBMvcnbB5
	1CyYtUVyFUr+fmSSQCSLVLoSG3C8Zk/TfQtZFFasbB69dBWiYTtpaQ+NGb330tVRmIjoBUnXfYf
	gklkXU0r58PR/yY2R2Tqv7g==
X-Received: by 2002:a05:622a:5817:b0:4b3:4b14:b421 with SMTP id d75a77b69052e-4b34b14bacemr76921961cf.10.1756988896011;
        Thu, 04 Sep 2025 05:28:16 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IGKNLr2UG0L6qxbC6a5kcKv9i9FUtalfXAqyO8H2z7P9qA2jLyWbD9ZRvkUjs8xg0e9iD5JmA==
X-Received: by 2002:a05:622a:5817:b0:4b3:4b14:b421 with SMTP id d75a77b69052e-4b34b14bacemr76921691cf.10.1756988895551;
        Thu, 04 Sep 2025 05:28:15 -0700 (PDT)
Received: from [192.168.149.223] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id 4fb4d7f45d1cf-61cfc52ade4sm14078747a12.45.2025.09.04.05.28.12
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 04 Sep 2025 05:28:14 -0700 (PDT)
Message-ID: <105b3ce5-8934-444c-8cdf-e338af3e3552@oss.qualcomm.com>
Date: Thu, 4 Sep 2025 14:28:12 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v9 5/8] arm64: dts: qcom: qcs6490-rb3gen2: Add WSA8830
 speakers amplifier
To: Mohammad Rafi Shaik <mohammad.rafi.shaik@oss.qualcomm.com>,
        Srinivas Kandagatla <srini@kernel.org>,
        Liam Girdwood <lgirdwood@gmail.com>, Mark Brown <broonie@kernel.org>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley
 <conor+dt@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>
Cc: cros-qcom-dts-watchers@chromium.org, linux-arm-msm@vger.kernel.org,
        linux-sound@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, kernel@oss.qualcomm.com,
        prasad.kumpatla@oss.qualcomm.com,
        Prasad Kumpatla <quic_pkumpatl@quicinc.com>
References: <20250903151337.1037246-1-mohammad.rafi.shaik@oss.qualcomm.com>
 <20250903151337.1037246-6-mohammad.rafi.shaik@oss.qualcomm.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20250903151337.1037246-6-mohammad.rafi.shaik@oss.qualcomm.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Proofpoint-ORIG-GUID: fMxCF1uxnvw02hAEZ_iW6WFidcAeMlyK
X-Proofpoint-GUID: fMxCF1uxnvw02hAEZ_iW6WFidcAeMlyK
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwODMwMDAyMCBTYWx0ZWRfX60uO4oNF9IUy
 Gcum8J3e1T1VQ8NrKFkPOtxqHPum+LUwYRhA83PpmKXR3+Gk54y3te1zhUeiRtdOv3BJgEc5XRq
 cWqEdvEmMXQP9JUHM1VJVbkZnxINdXZ0pAISSHnJ54r7rQK4+R21DXPBIUVHe/g6T9ir1Mnivus
 YGo3SiTaDk1AKV7p9lI1NBcBdBqQfY/WvHFswmylqorQepLM2qIDzDPBM1KkS2jhMor/XujQVax
 fAoTMOIxtI9d+RKWZCOS/W3gP+ghZojVn7KuxZmD//SuMD3hvmqvUSb/zOYflE6aumhbvhmtNfg
 WHzNrkdhYmIMv98EViZpyQcoUUe7Z7VrjqYp1UuH7RiktJjFGbe0VPyPqhoWywFOp8ZB2RMmdwY
 +vvN46XG
X-Authority-Analysis: v=2.4 cv=VNndn8PX c=1 sm=1 tr=0 ts=68b985e0 cx=c_pps
 a=JbAStetqSzwMeJznSMzCyw==:117 a=FpWmc02/iXfjRdCD7H54yg==:17
 a=IkcTkHD0fZMA:10 a=yJojWOMRYYMA:10 a=COk6AnOGAAAA:8 a=EUspDBNiAAAA:8
 a=MRceF3MI-pe3xWiB1lEA:9 a=QEXdDO2ut3YA:10 a=uxP6HrT_eTzRwkO_Te1X:22
 a=TjNXssC_j7lpFel5tvFf:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1117,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-09-04_04,2025-09-04_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 suspectscore=0 spamscore=0 impostorscore=0 malwarescore=0 bulkscore=0
 clxscore=1015 adultscore=0 priorityscore=1501 phishscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.19.0-2507300000 definitions=main-2508300020

On 9/3/25 5:13 PM, Mohammad Rafi Shaik wrote:
> Add nodes for WSA8830 speakers amplifier on qcs6490-rb3gen2 board.
> 
> Enable lpass_wsa and lpass_va macros along with pinctrl settings
> for audio.
> 
> Co-developed-by: Prasad Kumpatla <quic_pkumpatl@quicinc.com>
> Signed-off-by: Prasad Kumpatla <quic_pkumpatl@quicinc.com>
> Signed-off-by: Mohammad Rafi Shaik <mohammad.rafi.shaik@oss.qualcomm.com>
> ---

Reviewed-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>

Konrad

