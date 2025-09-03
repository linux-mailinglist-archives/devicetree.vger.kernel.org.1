Return-Path: <devicetree+bounces-212175-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from dfw.mirrors.kernel.org (dfw.mirrors.kernel.org [142.0.200.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 14A81B41EF2
	for <lists+devicetree@lfdr.de>; Wed,  3 Sep 2025 14:29:25 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.mirrors.kernel.org (Postfix) with ESMTPS id E05244E18D1
	for <lists+devicetree@lfdr.de>; Wed,  3 Sep 2025 12:29:23 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id CAAA22FDC2F;
	Wed,  3 Sep 2025 12:29:18 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="ktaQ4/hw"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 685EA2FD1BF
	for <devicetree@vger.kernel.org>; Wed,  3 Sep 2025 12:29:17 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756902558; cv=none; b=MhYf4UEbHrG07+Jr5MRIJ3wWtx20Tgqwl1X7Eh57Sd61q47JSu03xultNWzJkK+TgYZFe/PU9xCcbbpFJbcC/M2v3W9DqW4UrEMYJKsef1BOeALRYS+lsCjDe7WFOQGEQAgfi4MsYAVHM+5gqlaFfvMqJBpAvHJR/GjeEQmWa08=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756902558; c=relaxed/simple;
	bh=A9dV9MzzRS7f7sUmnjGGXBEY4rJvJ9sPSX+m6Kb3Hy8=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=QAHFVAExkKYlWQoiMXtn6IP+h+gLDMh2ep+ivBFaw0CHZjoLh5GWA+9bJ/WpMQBfpIgN8iukgNVKLrt8LHgIzbWVa/mCcajKitX52693lF3ubVRdd2IFoJWV/Sh0X3qjpiJ3COpSK7RYOzpx+fh6bkStOhGQstdHgrOfBldeWB8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=ktaQ4/hw; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279867.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 583BExxg022961
	for <devicetree@vger.kernel.org>; Wed, 3 Sep 2025 12:29:16 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	iJkiE1eASptH+38OuzSM8e8j/YvwckD1P++seiOH/6E=; b=ktaQ4/hw0RXqJQcW
	orKU/NIKtA4oz1uuQ/u9nH7pzROaaeOEWbG+RGzd+5H73sRS7NP9Gqn3I2n8OYnl
	Kb5bq7DQgsB8nihYtM2dfpuRxu1f4O2hcjzBqWkMKin+h6LjZgQQghKP7CuMY3jo
	RUr/HTRWT9TRs2Wu8Jbxl0Oz8ZDiPtFV2nhUEMSYDbgsJMP81Ob4MvNqRWfR63Uu
	CGkyhNi02mDwa12V/cCT93voqHAzt6Asi6Lu3Ss/fwfn3d2b/I/Vyk9rAi8ytaGS
	GWCHOpOnrW4jPCWboawHPqL7rrnxUlIUgRPd4+spMEk7JxFBxAgKPVeheE+2flm+
	zVPlEg==
Received: from mail-qt1-f198.google.com (mail-qt1-f198.google.com [209.85.160.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 48uq0ekrns-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Wed, 03 Sep 2025 12:29:16 +0000 (GMT)
Received: by mail-qt1-f198.google.com with SMTP id d75a77b69052e-4b3387c826eso12203511cf.2
        for <devicetree@vger.kernel.org>; Wed, 03 Sep 2025 05:29:16 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1756902555; x=1757507355;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=iJkiE1eASptH+38OuzSM8e8j/YvwckD1P++seiOH/6E=;
        b=gKE9/oOVNHGFJkoGo/+IpzXcpJxbAxMdS3bkShxijaKioPruiHOblzdljKtvOAIELf
         q898UWyx+yozP6NgdG/gZmtEvj6OALR6lbzsjLd95vPrNS2yDT3TCD35bVhjVSsf/3w0
         2BIsz0ZXPC24fSJq3NF89h5QD9/Fvzu+2K6hkIl4JYzvuOw7V50GbtPLILFZexsjQ4+3
         C24G7sm9dMCSmkcaZViwfYfH3tnL2Te42wMRzBPP6GPg+5S7YC8obxY0m+iqW6v+wqGd
         Tmv6G/vcShgQTsFeKEEXFEzZXgc8OWgJsKUNEOgT8t7jA5begvSb8CIAA6Zfkny14UnQ
         3T8A==
X-Forwarded-Encrypted: i=1; AJvYcCWniUo303paSaeGPKukaoPA064bjUz3LyQ3jfw4PyAkFzVAlRUPZM2SrPN/Pi4pMhJl6Li+CcrCbvv6@vger.kernel.org
X-Gm-Message-State: AOJu0YwAek2+O1mMw6gvQTJhLydtH+GaP/OraVl2hri/ioQ6kWiIVeh8
	uoykp3BCHFzkWupkPD7ZsFgcaRkr3EfIFcYOMsd8wsBhxYTAvo1DTMIec7RzD+WeiMrNXyTdUh1
	a7DzxcPamqoTW2+8UmmmMJJAnVFuKi1nAqRGQLSAKQ0KqBKd/p0A5BwuGgAptmVtT
X-Gm-Gg: ASbGnct/Yg+EvaMLdEgKW6v8AO3YcFQUFJXrVAbU0BlxulCuQ6IFeVPI3UwlZjPGDdL
	Jyop1BcWPzoDwpLXI46W3soma4kf9oUVx/FHL23xz6YdvQ0Icz5l1d6foTkaQMhQQlUNcaxVNHx
	kiA3HkP0aemB5fvFYzlnuu4DZlNScztSWXpjHdeR3poothVSlpNheRFiKxBUs42sVbOF1JOdyfA
	IzAaLsRDZonbkamO0Prtn5adONoU91YrBPHeYuDw3g+NTFgQKoROXEoyVqpBQ8zDDdc3qss192x
	qFXlXr3W5q4iqqTjCt0TfvAsze4trZwGwWNLrMUHW0S/LnVG+qwx0/ngDhz/x/6nXNtwQQShFQn
	UxlFdn23baJetOGjKlOhM5w==
X-Received: by 2002:ac8:5d87:0:b0:4ab:5c58:bb25 with SMTP id d75a77b69052e-4b313dd02a0mr130174001cf.1.1756902555225;
        Wed, 03 Sep 2025 05:29:15 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IEJ1Zwf24euReXChwxJjl+rksidozMJsPEhiBEXPVc2h9t0ygR1jUfMZwAeRpN+DG+rD3vmEw==
X-Received: by 2002:ac8:5d87:0:b0:4ab:5c58:bb25 with SMTP id d75a77b69052e-4b313dd02a0mr130173701cf.1.1756902554729;
        Wed, 03 Sep 2025 05:29:14 -0700 (PDT)
Received: from [192.168.149.223] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-b046cd5c274sm117531466b.98.2025.09.03.05.29.12
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 03 Sep 2025 05:29:14 -0700 (PDT)
Message-ID: <39c258b4-cd1f-4fc7-a871-7d2298389bf8@oss.qualcomm.com>
Date: Wed, 3 Sep 2025 14:29:11 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 04/13] arm64: dts: qcom: lemans-evk: Add nvmem-layout
 for EEPROM
To: Wasim Nazir <wasim.nazir@oss.qualcomm.com>,
        Ulf Hansson <ulf.hansson@linaro.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley
 <conor+dt@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>,
        Richard Cochran <richardcochran@gmail.com>
Cc: kernel@oss.qualcomm.com, linux-mmc@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        linux-arm-msm@vger.kernel.org, netdev@vger.kernel.org,
        Monish Chunara <quic_mchunara@quicinc.com>
References: <20250903-lemans-evk-bu-v2-0-bfa381bf8ba2@oss.qualcomm.com>
 <20250903-lemans-evk-bu-v2-4-bfa381bf8ba2@oss.qualcomm.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20250903-lemans-evk-bu-v2-4-bfa381bf8ba2@oss.qualcomm.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Proofpoint-GUID: VfOBMBZXu5Nv8uX-LS53jnSnq-wTmziz
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwODMwMDAwNCBTYWx0ZWRfXwYppPSXHHHaO
 CRwZINXvZdYLNLhurzLjOX/y+7nmZFdD5VLfIUAIG+xFhMFZZO2fng+z2iDsfUnrYPJ0W2wOYOY
 vEbC7vC+hyGehv+FIS4Fhpdjjxo79xmiM9t+KvjIHsXhz6pgsq0EGQ994hTd/xu8IjO1VACbzm2
 gBC0L/8qvusF0bOOHobLad590+SjgrGgyovUVqqbFV6kNWLqdZGELAcvdoAqRoixfJ0o6t1aK71
 OkDxmQplzXuuyS5BE/JrJbqJu5BL7RrkdQHqYkYCpQwblveb5odAwnYwUiCQu5l8U858xyc8Ght
 2ezbfvDlaQm+qA8DpTseCAtBxOuTCSuc7AOqqwxub0iEYwruym2mvzUrt9b9Mb2+k4IxjL4yiEF
 tdNljUey
X-Proofpoint-ORIG-GUID: VfOBMBZXu5Nv8uX-LS53jnSnq-wTmziz
X-Authority-Analysis: v=2.4 cv=ea09f6EH c=1 sm=1 tr=0 ts=68b8349c cx=c_pps
 a=mPf7EqFMSY9/WdsSgAYMbA==:117 a=FpWmc02/iXfjRdCD7H54yg==:17
 a=IkcTkHD0fZMA:10 a=yJojWOMRYYMA:10 a=COk6AnOGAAAA:8 a=UjL6BNg2kQWBM-km_-QA:9
 a=QEXdDO2ut3YA:10 a=zZCYzV9kfG8A:10 a=dawVfQjAaf238kedN5IG:22
 a=TjNXssC_j7lpFel5tvFf:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1117,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-09-03_06,2025-08-28_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 impostorscore=0 suspectscore=0 clxscore=1015 malwarescore=0 phishscore=0
 bulkscore=0 spamscore=0 priorityscore=1501 adultscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.19.0-2507300000 definitions=main-2508300004

On 9/3/25 1:47 PM, Wasim Nazir wrote:
> From: Monish Chunara <quic_mchunara@quicinc.com>
> 
> Define the nvmem layout on the EEPROM connected via I2C to enable
> structured storage and access to board-specific configuration data,
> such as MAC addresses for Ethernet.

The commit subject should emphasize the introduction of the EEPROM
itself, with the layout being a minor detail, yet the description of
its use which you provided is important and welcome

Konrad

