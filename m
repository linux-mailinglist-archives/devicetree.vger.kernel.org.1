Return-Path: <devicetree+bounces-169911-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 7B79DA98A3D
	for <lists+devicetree@lfdr.de>; Wed, 23 Apr 2025 15:01:41 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 522E11886279
	for <lists+devicetree@lfdr.de>; Wed, 23 Apr 2025 13:01:44 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 15B632F872;
	Wed, 23 Apr 2025 13:01:21 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="jebbOYq2"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 885E833F9
	for <devicetree@vger.kernel.org>; Wed, 23 Apr 2025 13:01:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1745413281; cv=none; b=p4m4NhgZ6+x+3pwyJnQtUCaz2DL1ORp663GdphylALAn3J0YM8hcmhOAGQ9T/2bgAhAFHFfS5EZEuh4rj9X0J7w+vfzpbyTznTM2OAigwIgXkwPWtd+CyPyyd+C5kXHMMF2rbrSOjhzRzSwndIe5q0XBDdZTy3EXZNfzjnGRkvE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1745413281; c=relaxed/simple;
	bh=wd9BuDyfY2g+YcmDFO0GJF3WmdKVfVi8IfjkUW9YZzU=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=CUtVHfodgD66Vk58x9X1/1fbUX83dt6ZVWkLrMRZDV2HPSG1mnln93+kwV+e6Fv+1C4ZPlEN6Ea/BHmyh+vD7r+Znb/bUox0WO76MyPp92GnxIF/L4T2eU4fAIWXoB0Ao9t1wGRWK60GmvFxuKA02Vx5PpHvUrzRJ8O+F+QMNVI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=jebbOYq2; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279872.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 53NAgJ04016813
	for <devicetree@vger.kernel.org>; Wed, 23 Apr 2025 13:01:15 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	xPikF6CHMtboH8wVgZUcnmTj+ScLp41cXAhI3chWQ6s=; b=jebbOYq2L4NxvuWT
	OgGT6NlsvwUlxEMsseGJeXf+uSDT3Phwfeia/pLvt2f9Mnd3upe0+fLHgPZxcmYs
	cSyStGCmznyp94Ooi/KJGUQXCvp4rv/3pmWuXf2Z4yLlAvoZqHOXUdUnOcIBckFf
	QAMokAIUHz7BXCsvvbKnS195TQ1Uzbpk2Ua2wF4j1BKE3djSoH3htCccvH9nzC25
	g4E7BSfqA7CoIQvAGQemCJrVKhA3dQJb+cavut9Zp+vK54xBguiVItxHrop4Rf6t
	Cd4mng7hAS2DtGBoB5+xU1iTO/pqAKxjQkj76N0GNGSWPCWAB4BMFsf4nhzpv3BR
	65supg==
Received: from mail-qk1-f199.google.com (mail-qk1-f199.google.com [209.85.222.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 466jh026ax-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Wed, 23 Apr 2025 13:01:12 +0000 (GMT)
Received: by mail-qk1-f199.google.com with SMTP id af79cd13be357-7c54788bdf7so28803285a.2
        for <devicetree@vger.kernel.org>; Wed, 23 Apr 2025 06:01:12 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1745413272; x=1746018072;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=xPikF6CHMtboH8wVgZUcnmTj+ScLp41cXAhI3chWQ6s=;
        b=gUtu/XYLADQDjQ0JwNv+LDMdoR16eqQqEiMxCHVvLah4p96WQ91b4fwXGEDEekpvFt
         xkPh13Fy8zXGZq0/x0PuIHb2xuY/IBMYRHXMBiQQbRknbYle65nnve0vLpyt5txJk+YU
         W8hrnza0FiFWoo+hl/EaJYzpyhZxtAz/MegrH+KQ+3/2c7yQwcE5ADjlA7jcX9wvI0go
         l/Fsp+Yb7wt2maWDziVnLVfaMkacnnX6U9joVBl+v92SbtsZbmLZ1lEpBzaSNro8J4Gm
         Uacy3Tos04kUz+0EiJQIsMTr9Puc1n88n2y5ioMiBFzsbKZtCPCUme2aLjCbpvllVARf
         yIUw==
X-Forwarded-Encrypted: i=1; AJvYcCXZNVUhGbo3iuQZFM4UrapZN/J56IRa9MFFxxrFiah9F5FCudBDPdOjBnhGaZDNOiJYKkh5NmFOrMYs@vger.kernel.org
X-Gm-Message-State: AOJu0Yx6B6eJ58LdtD/13+7uUq6G+iVIFcKhUP/KwuJuMadqA3kXe4Tz
	uPTMKStQSPIubs22dNmsmTn/DGOFnzZI8vO9s26S248nhcr8bDwECBNurIZPAq5NFYfZJH9JFi7
	B+U8rPOnlSH4tKFcC4Efxv7iPmMtgfCYV9/t95g8LMyEcQ0JAFOivkaaoEK+S
X-Gm-Gg: ASbGncuunvAW6zqyCqb4XmlzxXvgqXLlGqem//lRtmrEZ6D44sy2W10SlRurPUN99G3
	kN0/RvjbcWrGy/slkWmX1SFgllubis0QsdxpqUbpPTFAsh4tFKJ+mjm7NJP0jkkRnYuA/099Nro
	5q9DRxZTpFDJiD8hrH11KBHp6ky3++f+v90DJQbqUp26In27xSA7kFp66YFSbSDsc+Bd3YLJyZ0
	bjgL/STjd5EQDn0KuGNPR1pbwS5PxSVn+VYrpD4cBxTbgrs4kMJkYQwwdmFfuOM56l0GDO+44FE
	pZP+aBl11+Eui4RVYx+4w4AFC4TKG1cZ7h0/P91Ps1bADmuHf5OvTYm3ukL7oZzWwCU=
X-Received: by 2002:a05:620a:2584:b0:7c7:a574:c0ac with SMTP id af79cd13be357-7c94d234d2bmr199585485a.3.1745413271774;
        Wed, 23 Apr 2025 06:01:11 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IEvC0BBlTo+m5g1Fq3RkWdluOAVAwUmBFljOPIeXR01i5VEzyjJw3LAtEQjfmCHpr6YmNfHig==
X-Received: by 2002:a05:620a:2584:b0:7c7:a574:c0ac with SMTP id af79cd13be357-7c94d234d2bmr199580785a.3.1745413271071;
        Wed, 23 Apr 2025 06:01:11 -0700 (PDT)
Received: from [192.168.65.183] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-acb6eefc72fsm809912366b.101.2025.04.23.06.01.08
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 23 Apr 2025 06:01:10 -0700 (PDT)
Message-ID: <6662b275-6b8e-40be-b62f-c17ae8e63dfa@oss.qualcomm.com>
Date: Wed, 23 Apr 2025 15:01:07 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 0/9] Enable QUPs and Serial on SA8255p Qualcomm
 platforms
To: Praveen Talari <quic_ptalari@quicinc.com>,
        Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
        Jiri Slaby <jirislaby@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley
 <conor+dt@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>,
        Viresh Kumar <vireshk@kernel.org>, Nishanth Menon <nm@ti.com>,
        Stephen Boyd <sboyd@kernel.org>,
        "Rafael J. Wysocki" <rafael@kernel.org>, linux-arm-msm@vger.kernel.org,
        linux-kernel@vger.kernel.org, linux-serial@vger.kernel.org,
        devicetree@vger.kernel.org, linux-pm@vger.kernel.org
Cc: psodagud@quicinc.com, djaggi@quicinc.com, quic_msavaliy@quicinc.com,
        quic_vtanuku@quicinc.com, quic_arandive@quicinc.com,
        quic_mnaresh@quicinc.com, quic_shazhuss@quicinc.com
References: <20250418151235.27787-1-quic_ptalari@quicinc.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20250418151235.27787-1-quic_ptalari@quicinc.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwNDIzMDA5MSBTYWx0ZWRfX0Qnd4ONDUqMT +ScuGtE+6+yJkBBDqJJKmkTgzTtkbcEOtFYX0pMNxgPDJAw+iJQTVZ3LTSzsyfQ3SHw8Quqax2c oUqArcZAOTtVek8vMDxlJ4RlCk4Sz0p3LqTFsgt9dMiblpIObvd/mhMjgphC+zBwOKl4CKJO7JV
 0QZF6poCPabC4e1eDYz++3Q36NOJHdH3qPKMcdWcH5wFkEY+w6xveWCA9+xcPVUBefjHq3cG44O cfe3VohAsfqaW2YqjvcbCjtSmqEFKGVNZfevHQtOuLaggACJd09MhFeSD3oGu0oxBcKd0qw6YEt XKya9U+VmnCmSRniCNWx5Ci1yLLTi7znnqX+NXyuObDzzljHNcq61GvKctr137pRn01hT6dp4FD
 8+yTx7uHFZRcBN4OwsD2rh6oJh9uthxy57B0iY+AGjle2NGMjrVKGMAF/gaD//cMVxwPrfZv
X-Proofpoint-GUID: -Rz4Cf-XHjiBmQg_nWckkIxZWfkFIARI
X-Authority-Analysis: v=2.4 cv=ZuTtK87G c=1 sm=1 tr=0 ts=6808e498 cx=c_pps a=HLyN3IcIa5EE8TELMZ618Q==:117 a=FpWmc02/iXfjRdCD7H54yg==:17 a=IkcTkHD0fZMA:10 a=XR8D0OoHHMoA:10 a=NEAV23lmAAAA:8 a=TM_zcG2lH5YfWnRg5aMA:9 a=QEXdDO2ut3YA:10
 a=bTQJ7kPSJx9SKPbeHEYW:22
X-Proofpoint-ORIG-GUID: -Rz4Cf-XHjiBmQg_nWckkIxZWfkFIARI
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.0.680,FMLib:17.12.80.40
 definitions=2025-04-23_08,2025-04-22_01,2025-02-21_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 phishscore=0 clxscore=1015
 impostorscore=0 bulkscore=0 mlxscore=0 adultscore=0 lowpriorityscore=0
 mlxlogscore=903 priorityscore=1501 malwarescore=0 suspectscore=0
 spamscore=0 classifier=spam authscore=0 authtc=n/a authcc= route=outbound
 adjust=0 reason=mlx scancount=1 engine=8.19.0-2504070000
 definitions=main-2504230091

On 4/18/25 5:12 PM, Praveen Talari wrote:
> The Qualcomm automotive SA8255p SoC relies on firmware to configure
> platform resources, including clocks, interconnects and TLMM. The device
> drivers request resources operations over SCMI using power and
> performance protocols.
> 
> The SCMI power protocol enables or disables resources like clocks,
> interconnect paths, and TLMM (GPIOs) using runtime PM framework APIs,
> such as resume/suspend, to control power states(on/off).
> 
> The SCMI performance protocol manages UART baud rates, with each baud
> rate represented by a performance level. Drivers use the
> dev_pm_opp_set_level() API to request the desired baud rate by
> specifying the performance level.
> 
> The QUP drivers are SCMI clients, with clocks, interconnects, pinctrl
> and power-domains abstracted by a SCMI server.

So I recently started working on abstracting away power controls from
the SE protocol drivers into a single place, among other improvements

A snapshot of this work is available here

https://github.com/quic-kdybcio/linux/commits/topic/single_node_genise/

(not yet 100% ready..)

I think it'd make sense to get it done first, so that we can condense
most of your changes in the common driver, where we'd swap out the clock
handling for perf level setting instead

Konrad

