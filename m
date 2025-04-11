Return-Path: <devicetree+bounces-166133-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 3103CA86643
	for <lists+devicetree@lfdr.de>; Fri, 11 Apr 2025 21:25:40 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 27DFD4A0CF0
	for <lists+devicetree@lfdr.de>; Fri, 11 Apr 2025 19:25:40 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A695027EC68;
	Fri, 11 Apr 2025 19:25:35 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="VPdiGdvk"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 45F0827D764
	for <devicetree@vger.kernel.org>; Fri, 11 Apr 2025 19:25:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744399535; cv=none; b=HWiGs+pz6VWJcKxay4M4OjCDLe4vb4q4wt+9A2VTlWAtmv5WleK0YrzZvmPSPuI10xOt0GkXKd17/hDImT8D2a2OMyXO37iOSbT6RRnWsvj64jRbiDhcK8/W3T0tkIvYnhULh7K8btpty+99Sq14COvHLIMipsgB8OHKaASkFys=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744399535; c=relaxed/simple;
	bh=V0anQo1rxh4XE0m3zSwiP2GeM/s5e9XDDcmvcf/l5VE=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=DBhq6qdtO0LTV8TjmXZyT7pLFCxYAc4eCnPmozeAkO7TKF5TSX2S8XQe+a80YbK4zWaO5Lw+Y+m6dBDV726aVlhr+w3VoaOqAYFj+RTg2E+WwPUbxwJj35Ga9RueGuqqXZrPumSmmcYE/lg2qnDL8FzbWHk5kNxwsiogDQbh3ew=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=VPdiGdvk; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279863.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 53BFAG1f028897
	for <devicetree@vger.kernel.org>; Fri, 11 Apr 2025 19:25:33 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	9VH1A/ujECFcwD3gWjS1rTnxfuwqzakJlrQs995Lk7Q=; b=VPdiGdvkv8QNnVKt
	wO04rHDsWbvYpPMLw9gKuvhUH0cXMDbMPlvZfzIjMj0wTSjrs0CjQDjjUc9NrrJz
	m/2OpPyY1vSROvok3nOxyGp8Et9FKyDz0gUxXYXtnkPqF0cmn/lwmrv2UgiWykzv
	sDiVg3+lflMjvyWduFzeASB8hie0tbq9q3YqbeSYX0jZ6tM6BlmezNZTpyn+yHzP
	hvorOf2+LxgIEyfvu1L0ZoELjhAdTs3TOgFmLQFxe1Lntdam7n4X6oHOVMS3Ma4T
	isyWJehBv3ZFya9VD0NZS6cQVY3uEiG9wAWXFX3WIyDMQZT0tncUvYP1gjRih1fp
	Vee5oQ==
Received: from mail-qt1-f197.google.com (mail-qt1-f197.google.com [209.85.160.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 45twbuugpu-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Fri, 11 Apr 2025 19:25:33 +0000 (GMT)
Received: by mail-qt1-f197.google.com with SMTP id d75a77b69052e-476783cbdb8so5842231cf.1
        for <devicetree@vger.kernel.org>; Fri, 11 Apr 2025 12:25:32 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1744399532; x=1745004332;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=9VH1A/ujECFcwD3gWjS1rTnxfuwqzakJlrQs995Lk7Q=;
        b=ta66HlpgN5dil956xEBpyYCRsQv+1q5gitr0b4FmD3ATX5D4QbsyYsxpD5nvsIVdZp
         Dmq8dsAAtmWrPdvAcrOJ1FIaptBRuITrygEjDm2gOKgIvWUxUffoowFkkqfmBZR6D4ID
         deM4MAeDJGdctwr0Vohsxv9IBuvcZPUZ2fx9cK4vm2upf9ZW/qdtD/wlSea+6k5W0e1A
         miMxmsgLQbyGM9NFaObikNzJslCDPQz99zAHo81KrWYYk6/nsuVoFhScMoOJmZFCIKTB
         F3BtEbiCzXbwbh4rKnxokkMIYiikPMq9EDQ4h5w/wmjN+mrfhwFp7MILoo9af+oOQ2PM
         9Opw==
X-Forwarded-Encrypted: i=1; AJvYcCXLcW1eVdrc0uaAfK2i9SIy/ZOWmQFL8LI/WRHc9WtHfBFY65whgGJ4t7dG+3PtFlEfW+TWz+tfarZB@vger.kernel.org
X-Gm-Message-State: AOJu0Ywiai7Papid50nj4RQIb5gJ5XGcvcaM9y5kkSkBFp8hm2915H98
	QyUP4HNImJhq+t/HETQkD4kSWxn19o0cw2QHbIuwqLqNilwZAuN0uhFTCniYGq63c/dEB1lR0m2
	0Oa/iXPuV4tDFyPlxCQ/+MtGS6e6nXyHKkPyFWJ5yFfcnDlIldDv86/LVcXZc
X-Gm-Gg: ASbGncsIx3ucaomsR/nMKNHev8u7DQEWyYAjlxxZrL30F83GZlRhAAcwq6TXrGfcMXd
	lOdGEPUGc631WPWpCUy3ESbANqNYlYhHC6AamrvTCwM7uwpBQf/aKvXw67B6ycD3oG2zaGY88DN
	Vkj0wtUmmUwbnXptYI2z0FU1g+hGwuVEnwCQpss9xNJwS+fPSTgHjGkWPbUuDyDzMEZE5+qcG2d
	JuifldagULpBzYYA0CbYMHFs8a1oRSOxF+/p0plMexHXgiwK2P+dp6ES9Kdfzk69w5Ss88L2pQy
	Vc3HCXbrzD3jTnaLQRwaOsQyKbS53wT3g6zbvfnFigvGKyRxeW6KbJDtAj36h5rpfA==
X-Received: by 2002:a05:622a:cc:b0:477:5f29:dbc9 with SMTP id d75a77b69052e-479775dcc97mr20980101cf.13.1744399531817;
        Fri, 11 Apr 2025 12:25:31 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IE0GkTYT8sp70z92tpLERChqQZCSLS8yHt/ASTJmtZUW7ReS3382lVpeD20MinPQfD0hTs2nQ==
X-Received: by 2002:a05:622a:cc:b0:477:5f29:dbc9 with SMTP id d75a77b69052e-479775dcc97mr20979941cf.13.1744399531497;
        Fri, 11 Apr 2025 12:25:31 -0700 (PDT)
Received: from [192.168.65.90] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id 4fb4d7f45d1cf-5f36ef56e54sm1390299a12.18.2025.04.11.12.25.29
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 11 Apr 2025 12:25:31 -0700 (PDT)
Message-ID: <e19eddd1-0911-42c6-85e7-a9fbbeea778d@oss.qualcomm.com>
Date: Fri, 11 Apr 2025 21:25:28 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v1 1/1] arm64: dts: qcom: x1e80100-lenovo-yoga-slim7x:
 enable MICs LDO
To: Aleksandrs Vinarskis <alex.vinarskis@gmail.com>,
        Bjorn Andersson <andersson@kernel.org>, linux-arm-msm@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Cc: Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>
References: <20250411155852.4238-1-alex.vinarskis@gmail.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20250411155852.4238-1-alex.vinarskis@gmail.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Proofpoint-GUID: TIJoUPT-xP80eEI1m6JQhNY7tkjSssI6
X-Proofpoint-ORIG-GUID: TIJoUPT-xP80eEI1m6JQhNY7tkjSssI6
X-Authority-Analysis: v=2.4 cv=dbeA3WXe c=1 sm=1 tr=0 ts=67f96cad cx=c_pps a=EVbN6Ke/fEF3bsl7X48z0g==:117 a=FpWmc02/iXfjRdCD7H54yg==:17 a=IkcTkHD0fZMA:10 a=XR8D0OoHHMoA:10 a=pGLkceISAAAA:8 a=I4MXn53k6lXHh1bxTIIA:9 a=QEXdDO2ut3YA:10
 a=a_PwQJl-kcHnX1M80qC6:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1095,Hydra:6.0.680,FMLib:17.12.68.34
 definitions=2025-04-11_07,2025-04-10_01,2024-11-22_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 impostorscore=0
 suspectscore=0 mlxlogscore=881 phishscore=0 mlxscore=0 spamscore=0
 malwarescore=0 clxscore=1015 adultscore=0 priorityscore=1501
 lowpriorityscore=0 bulkscore=0 classifier=spam authscore=0 authtc=n/a
 authcc= route=outbound adjust=0 reason=mlx scancount=1
 engine=8.19.0-2502280000 definitions=main-2504110123

On 4/11/25 5:54 PM, Aleksandrs Vinarskis wrote:
> Particular device comes without headset combo jack, hence does not
> feature wcd codec IC. In such cases, DMICs are powered from vreg_l1b.
> Set regulator as always-on to enable microphones.
> 
> Signed-off-by: Aleksandrs Vinarskis <alex.vinarskis@gmail.com>
> ---

Can we bind it to the soundcard or something, so that we're not leaking
power?

Konrad

