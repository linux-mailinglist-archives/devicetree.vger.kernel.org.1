Return-Path: <devicetree+bounces-225025-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from dfw.mirrors.kernel.org (dfw.mirrors.kernel.org [142.0.200.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 967B4BC99E9
	for <lists+devicetree@lfdr.de>; Thu, 09 Oct 2025 16:50:11 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.mirrors.kernel.org (Postfix) with ESMTPS id 6A5FE4FD47F
	for <lists+devicetree@lfdr.de>; Thu,  9 Oct 2025 14:48:08 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D10E42EB84B;
	Thu,  9 Oct 2025 14:47:57 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="SZM2f7S7"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 491A12EA753
	for <devicetree@vger.kernel.org>; Thu,  9 Oct 2025 14:47:56 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760021277; cv=none; b=p4St0OlsJS2yZmZnCLykAfRwb/a0Esl1LCCd+PFiYIh0tuFbVvIcx1YzFh54SqHxY5w8F4waNubpgb5JKKtI5AtteF3aLWTK5ffPap9Q7gSHi2lR+YjtYtdnxEjHmVCp+exIrbIsxtuvQmhYdGmp6Gv/m9tNwWr5DkHcB2FITxQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760021277; c=relaxed/simple;
	bh=JebSc/8bvcUimgMsNd/lWd6nM62WGBHCTAHCfkSxQWw=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=qYIHHIISrxnpbvO5138tRmv6wuM3dpu2wPlzAmtx/vAn13OZBAPPZSDT96O65CfRJu5oQFQgdYI79NitEudC820DmWx8cswSHBtapDHhbldKA6CrxSseZX6IghXCcOdsKz71AB5DFnzWTJbMKqdXqQNLOdGv6oIqhjrCSWBPdEw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=SZM2f7S7; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279870.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 5996ELw0019211
	for <devicetree@vger.kernel.org>; Thu, 9 Oct 2025 14:47:55 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	keuwE60fL3CMGjPR1k/+ByDPG5LTHeSrV5RbukXg+LE=; b=SZM2f7S7PIqjbWJ9
	+9J8GwCkD1+bfzo2VJrkjNyx7Ezihft6ecbEG8trPG6arcDuw7BNYQxO27S284OS
	gjZ13Fyd1GmPsKgRm0mdZ1SOkJEDF82dhQ72fELRXjdR8uqfI/j4a5qCnb13WyLH
	ghb0Oag1ARok/vHkoCwfVVFTF85QuoixMONNjR53JXfateJqdslvT4w9i7Z0W/uk
	Ms3iEfoCLvA+9zTbn0r0TBfuM1GxuR4eyVsa21F2DvK+luw95VfEnyHK/a4z7OPU
	waYNpKqvKZl8jajCxZQ5Kr956BcH9JKdkEmEX/7LOgp4Mi1flYrqP3SkQOePmgcc
	JFwNBQ==
Received: from mail-qt1-f200.google.com (mail-qt1-f200.google.com [209.85.160.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 49nv4nu77p-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Thu, 09 Oct 2025 14:47:55 +0000 (GMT)
Received: by mail-qt1-f200.google.com with SMTP id d75a77b69052e-4e4b4e6f75fso4104201cf.1
        for <devicetree@vger.kernel.org>; Thu, 09 Oct 2025 07:47:55 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1760021274; x=1760626074;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=keuwE60fL3CMGjPR1k/+ByDPG5LTHeSrV5RbukXg+LE=;
        b=hZl6Zej11bOG8whs/chPk+2qA/qoE3KbTCfyCq/9pZ7dA9wkrI9qFlrMMabj6YHctu
         ZCAR1iuBu27iSbBS540B6Yfq1jwDVkHXZ5Bmsw2n198UeRKtY7uOjH3ghHzCaPIQBQ/W
         KJlRrQ6HUnQoNHzQy69dHhwhhI7Ps51SDkP+GenXThIb65STbIb9Qj3alIUlPAckMDdH
         Dtarn9kiD3TBkOxslag4vyEGnyUwiQlek3mLjRE0VHv0WCwpuTX6pY612eIlbiOkfKUs
         XRg6fD4fPZ7illOdt6lwKVXjXRrnd4E/gU95P57VrbV5lNrE2YbZKxfuJelDAKbDvAwb
         jD0Q==
X-Forwarded-Encrypted: i=1; AJvYcCW9iU4jTlfmg6XD0Fyl1GURe2ioUXMhEG6TvZurJYLZlRpQc5bTWyRGbbdTJ4dEidZ7aF5a3ijUwMlK@vger.kernel.org
X-Gm-Message-State: AOJu0Yyyju3RoxvHZFtbVOUOPBqPwPFqOWD6PTmrq6nchjiOOTa8jotk
	ApS6N5pN3ckODPlaK+sP0xwdrj85dsMwgPL2qAbIaWquo7g2Ml1hWrraBl/GzuxAQMu2t0mVuvf
	x6l6Rg1AXXLA0REjCzwz9KD0XnvW9CzlLvmESSUQfbDTZdHFst1WBhkIQ5UZovRSd
X-Gm-Gg: ASbGncs/eM0QDPZMnRym01V5sMe2hagOAEYF9zPcbK2q4W9aMqBohRVTxstbALJ8sBP
	WXtUmFPE/Qi09/SkTHk3EAWLQZFtVIKcyqVCkK3JBTTwtPPs+UJJ/IeVJ8kBo97tf/bDTDTQo5U
	QHGgCJqaZJ5QfcJMwuLa7qC9IcEiitcRJKLk12z30LBUQdK/tNk5rvCatkVdnv+BSlggjt7frsW
	011l76w7686PSNxNk1NiXvA2utxDZM598g5WiGtV9rWvPsQVqOeFokCCs8judA73z1k+81ZO+jx
	FykH1dqmhRR3Pbn3eaj89tUFV6C8VHhLrrmKTaWY/Ol1GA4e9dKLuIf74A/s0aQAXCzYWgg7aUo
	QhxviOzIQXNvPPUv6hqEZ+9EvTIw=
X-Received: by 2002:a05:622a:6788:b0:4e6:fa1b:3c74 with SMTP id d75a77b69052e-4e6fa1b3dc0mr21483821cf.4.1760021274125;
        Thu, 09 Oct 2025 07:47:54 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IHucPuwt48acjEjaqleOEWnw/8ACTq2+92kgGJ2zdigPQCuo5wdaNFzwbwUde+dJsC4Wv8fgA==
X-Received: by 2002:a05:622a:6788:b0:4e6:fa1b:3c74 with SMTP id d75a77b69052e-4e6fa1b3dc0mr21483571cf.4.1760021273550;
        Thu, 09 Oct 2025 07:47:53 -0700 (PDT)
Received: from [192.168.149.223] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-b4865e7c47fsm1928735666b.37.2025.10.09.07.47.51
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 09 Oct 2025 07:47:53 -0700 (PDT)
Message-ID: <d597ca50-c52a-46f5-b884-17ab8fa780c1@oss.qualcomm.com>
Date: Thu, 9 Oct 2025 16:47:50 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 4/4] arm64: dts: qcom: qcm6490-fairphone-fp5: Add UW
 cam actuator
To: Griffin Kroah-Hartman <griffin.kroah@fairphone.com>,
        Mauro Carvalho Chehab <mchehab@kernel.org>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley
 <conor+dt@kernel.org>, devicetree@vger.kernel.org,
        Daniel Scally <djrscally@gmail.com>,
        Sakari Ailus <sakari.ailus@linux.intel.com>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>,
        =?UTF-8?Q?Andr=C3=A9_Apitzsch?=
 <git@apitzsch.eu>,
        Luca Weiss <luca.weiss@fairphone.com>
Cc: linux-media@vger.kernel.org, linux-kernel@vger.kernel.org,
        linux-arm-msm@vger.kernel.org
References: <20251009-dw9800-driver-v2-0-3c33ccd1d741@fairphone.com>
 <20251009-dw9800-driver-v2-4-3c33ccd1d741@fairphone.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20251009-dw9800-driver-v2-4-3c33ccd1d741@fairphone.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Proofpoint-ORIG-GUID: YE8rQ3fkdOs-wSP7PyXM47vCFKFfe85u
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMDA4MDEyMSBTYWx0ZWRfX277dwoJ6pfDv
 C3lWGimBqffjp0SkEUUcT/FIWAllmNdyMMg7rT55I+U8vofbbIyoUD7BrRLiGmy7qZE6+trZRnL
 vIoB31ArTlqXJqSWXskCvXsb8vdvgT/jeqXjteJb0FXzycLQMsDiO5PfLA1uZEsuFN4aDld6Ams
 LQZFrpZyQigwPpt6kNJU3O+p0JgmF/fqpzRgNSBVzA1DuqmV5NUZb2O4nYGVk5pzmamTJg+JxTJ
 BbKiYTHtqbXgrWrTY/DlGsfVxJLr/0tQGIieiaSS0aBFbpQnMSPJmhzY1eOHbMzZkMkAf9vVDqn
 3kGFFR/CZM8iBQcJrH8Pgn8kX53UyaQYgKg3dzD4Jgnpx/DcGNw3D08KrgsjyHhmaAuLB0uC/Jy
 l3wN0B+3/29S7fJ4lLlh40UFGdzwzA==
X-Proofpoint-GUID: YE8rQ3fkdOs-wSP7PyXM47vCFKFfe85u
X-Authority-Analysis: v=2.4 cv=b6a/I9Gx c=1 sm=1 tr=0 ts=68e7cb1b cx=c_pps
 a=JbAStetqSzwMeJznSMzCyw==:117 a=FpWmc02/iXfjRdCD7H54yg==:17
 a=IkcTkHD0fZMA:10 a=x6icFKpwvdMA:10 a=6H0WHjuAAAAA:8 a=EUspDBNiAAAA:8
 a=WWQFUNGd85j635JlVwcA:9 a=QEXdDO2ut3YA:10 a=uxP6HrT_eTzRwkO_Te1X:22
 a=Soq9LBFxuPC4vsCAQt-j:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1117,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-10-09_05,2025-10-06_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 bulkscore=0 suspectscore=0 lowpriorityscore=0 adultscore=0 phishscore=0
 clxscore=1015 spamscore=0 impostorscore=0 malwarescore=0 priorityscore=1501
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.19.0-2510020000 definitions=main-2510080121

On 10/9/25 4:35 PM, Griffin Kroah-Hartman wrote:
> Add a node for the Dongwoon DW9800K actuator, used for focus of the
> ultra-wide camera sensor.
> 
> Tested-by: Luca Weiss <luca.weiss@fairphone.com>
> Signed-off-by: Griffin Kroah-Hartman <griffin.kroah@fairphone.com>
> ---

Reviewed-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>

Konrad

