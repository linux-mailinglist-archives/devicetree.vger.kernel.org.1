Return-Path: <devicetree+bounces-233013-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 085ECC1E3AD
	for <lists+devicetree@lfdr.de>; Thu, 30 Oct 2025 04:43:52 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 8AE5F3ACC23
	for <lists+devicetree@lfdr.de>; Thu, 30 Oct 2025 03:43:49 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 1938D2D5C6C;
	Thu, 30 Oct 2025 03:43:44 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="Ff7b/zPO";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="am4a+kn9"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 922892D29CE
	for <devicetree@vger.kernel.org>; Thu, 30 Oct 2025 03:43:42 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761795824; cv=none; b=ZUT3wqNUT6QYePL81h4yV2tuEKUz0lris+FUdfy/vR8nDWODuhfYyxQ7XZdr7H3/Y9zKTlAKtmJFhxapCBJEBI7cMAOHbldvAwiDtQzMNPkZiLBzh1JJ8dz5kZfBRr5NL6TgMyCXyXT1t5uMBt6xChCCoF2uUf/B+awjAAe1ufE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761795824; c=relaxed/simple;
	bh=syWr0hrchEYBIUz0nvESOsKkTCKM8MAjLs9LG9A2Ri0=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=qRqF997mxytfh9mRiv9u9qUGOyZq61iv287LjaCV5sVNNg/Cj4f2cPssVDkFDQc7UhKJvniVSpG6psWwy9CVQdJZkufyGn00NS1dyClWfi2ALRYVp9gk63nUKm7wayc/Vqr/AhkGcL6fJ6tJCvAe7DeKb675+J/+sM8C8UkbhG4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=Ff7b/zPO; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=am4a+kn9; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279871.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 59U0iSUQ1994685
	for <devicetree@vger.kernel.org>; Thu, 30 Oct 2025 03:43:41 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	sHSWFWmnOzX1VHAiA276NE1gVjUwB6rf3KGgQY67Spo=; b=Ff7b/zPO8tvJceRY
	Cy74AMHIYHiNdUVuJcP4f/lSQDyMMcebAS0DE7AeVm+xAKnTzShtg34YkxNy/wdt
	0g/NgpqpoAnJcIwT+n9clchm94r9tbrElusIK7GlLiRc2pz1AFcKCCUJFZpQCbHb
	e2XH92o1WH8HIESZAW0yg4FczD58ri60/EcSr39tD7F2kPSrT5vBlNVHNi37cCeE
	s75H5V6v6imgELujCXf9R4NerDgKzEjBRpO/HBLA7QXsuw075f/x6sEFhGWdAZcV
	aTVcBDFbMl/YzO6id4gLeaZXeFKzfoEj8DDXlNudFrRmuwCUptl38Lt66V1h83z9
	QLLDUw==
Received: from mail-pl1-f198.google.com (mail-pl1-f198.google.com [209.85.214.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4a3wr70ctd-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Thu, 30 Oct 2025 03:43:41 +0000 (GMT)
Received: by mail-pl1-f198.google.com with SMTP id d9443c01a7336-290e4fade70so5180665ad.2
        for <devicetree@vger.kernel.org>; Wed, 29 Oct 2025 20:43:41 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1761795820; x=1762400620; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=sHSWFWmnOzX1VHAiA276NE1gVjUwB6rf3KGgQY67Spo=;
        b=am4a+kn9pM3fQ7lSfl9eDgL7UcHRBU0k8iuEBI9mSGpI6iIG0IxuzNzxGrQYsRY8ow
         +8ZF6Bb3HSbqBjzFzTPcqJH1eY8VYXXVa8WwELqg/yr7ul71zsbsKjHNRgBvsXCFVYQ3
         2e5L6BTzVobh/aqOtcOG77OH7Zvp83U2f/QvPs373V2aINt0U/MIbhlOp6b3IBQ73WaC
         y5s506DuIJDJrt+uOJPI66VPSb4+sU65XdqqqDeOho4skt/MNzBijB9WF14GlvH/OXFB
         GjOL5sKWZwcwvvyqOihTezNqPjWYTlimnEndhR6U0t2d6S2mrBjyQSy+kXRo1pEc4my2
         frcg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1761795820; x=1762400620;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=sHSWFWmnOzX1VHAiA276NE1gVjUwB6rf3KGgQY67Spo=;
        b=Wb4hNe4Uw3UEqGAFeA/2oEWBz34GFwXA0LfHGHgkVql5M4Df1J11SD5qcGNv+IqGj7
         FsuziwcQU+nKUwQ8cTaxg2/lPwG7FlN1/719yiKJN2JRBKWVEMWymkl94k2FH6h6kNrw
         dZQJbTa/3IWwvskcXUvPeH5Oz0BQXJoobCe71alg6BfDNR/NqG5q41WfDJ6U4HhpoxMg
         Hm/g26ff25lyEAxWTNuFE+AvaRUq+PCuVurgQRtxnse+UdCQ+bka5Zb8k1oWDNnLkx7T
         hyC/BYdGb/hyZltMh9vMemTIwKAbDMvQ05ClZP1iZ6dKR1+PYF1vPK+v5M7/sAiUSlkV
         X2xQ==
X-Forwarded-Encrypted: i=1; AJvYcCUhStDFW8JyuxFcvZbK8v2ZhGZkdcEjLSjJ6+tt7Ue5WqQz36+qX61WzaXBxrIGXVnerzQSJ4Xq5PFx@vger.kernel.org
X-Gm-Message-State: AOJu0Yx0ppra3CPhzihte98HH2lgqn+rQtfJRhE7HliZhugOn6EnrxKq
	mhwwPEAH7bis3qBgRjnARCedekhs2x588mCHhjWwdZN2vD+ZeAqch0isjpFkUuXR40ze47wruPQ
	uDS8d1ftPMU9P/hdFumHWV2DhX504KFoU7h9Ac87vivqMf4Pmteedo7c/cz7fWu+c
X-Gm-Gg: ASbGncu3iGmTB9IVse04S2K8QbypEbvhVpPG09xZ0COmpCWkYituxgaMLN6vkxhQSF5
	w/hay4kx9GfaT8siehAjIi9sckBexIwx5xuEjO7/G0+f/3l1ZtUu+MuwWB4KPnsL+3JLUiaBBEu
	WE/Cj2NwN6/RgNVU2K5XEYAOBWP4j2LphfSStrrveZBX7SwFCu0jjoueUjKRCUq4oVX3z9NdGNG
	o4apHyTZKfB59ZJD49R+FmzAAuQK0avP2+LuYAZkTBTY76lXUQH8Sm099xLq4D2roNa10l16ymd
	0qBH0UMFPDp93FRMybw/2Fig9TWB4gaQ/M5vaAtyKgUidq6Dtafbj2EK3+QlI7dkC+U71CKUHi/
	jHD2Dy+285JN2JirvL6Mhf1+bNHX9wRA=
X-Received: by 2002:a17:902:d487:b0:290:c07f:e8ee with SMTP id d9443c01a7336-294deee23a3mr66507345ad.43.1761795820117;
        Wed, 29 Oct 2025 20:43:40 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IEG8Tsm7zsMNvRb42NpHg0S5cqbhX8hvTZ+lzZFtUmt1DssbzW9YgQ30jiCbWgwAcLvsjL2Pw==
X-Received: by 2002:a17:902:d487:b0:290:c07f:e8ee with SMTP id d9443c01a7336-294deee23a3mr66506845ad.43.1761795819628;
        Wed, 29 Oct 2025 20:43:39 -0700 (PDT)
Received: from [10.218.35.45] ([202.46.22.19])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-29498d2333fsm166960675ad.50.2025.10.29.20.43.32
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 29 Oct 2025 20:43:39 -0700 (PDT)
Message-ID: <3dccca2d-272f-451a-9e38-901a6fa3a24c@oss.qualcomm.com>
Date: Thu, 30 Oct 2025 09:13:29 +0530
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v7 0/8] PCI: Enable Power and configure the TC9563 PCIe
 switch
To: Bjorn Helgaas <helgaas@kernel.org>
Cc: Bjorn Helgaas <bhelgaas@google.com>,
        Lorenzo Pieralisi <lpieralisi@kernel.org>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley
 <conor+dt@kernel.org>,
        chaitanya chundru <quic_krichai@quicinc.com>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>,
        cros-qcom-dts-watchers@chromium.org, Jingoo Han <jingoohan1@gmail.com>,
        Bartosz Golaszewski <brgl@bgdev.pl>,
        =?UTF-8?Q?Krzysztof_Wilczy=C5=84ski?= <kwilczynski@kernel.org>,
        Manivannan Sadhasivam <mani@kernel.org>,
        Catalin Marinas <catalin.marinas@arm.com>,
        Will Deacon <will@kernel.org>, amitk@kernel.org,
        linux-pci@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, linux-arm-msm@vger.kernel.org,
        jorge.ramirez@oss.qualcomm.com, linux-arm-kernel@lists.infradead.org,
        Dmitry Baryshkov <lumag@kernel.org>,
        Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>,
        Bartosz Golaszewski <bartosz.golaszewski@linaro.org>
References: <20251029232323.GA1602660@bhelgaas>
Content-Language: en-US
From: Krishna Chaitanya Chundru <krishna.chundru@oss.qualcomm.com>
In-Reply-To: <20251029232323.GA1602660@bhelgaas>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMDMwMDAyNyBTYWx0ZWRfX3YA/LiTXUzF1
 fiR5tPZvHWY0VdwN52t5xlBxE2zsqiCeJkJMZZfoR+ItK+C39SXyi/lpHic5yR5+SOiCYYRHuey
 YEKDQ/f2YXXKsoEij5KHxWT7ztA2/sbN/9nSCJ5/NzltG0JoK8c/FD77iJzcr8/1ZHrFo3DNbRU
 TvwDKgnbL2wOlJrRlPdE+rhxHcI33CdG+Fr0xZJxnTg3V4JYZR5OYhosqKheSS33UPjItd7C3fk
 W/Lp4WGSyy7QM6kHPuSBtOUXj0ZVFHp3Zu/nDey4yxuxpn0O1VJMnj7v2o2b5YO2Zqnh6XMtMFv
 9Gz5dtvCglQa+viJauazMwpLTlaLw3EHmPGrDHpTayFQGpqIyDthOAtJ22PAHLKNeBqk/jxAMYY
 badcN0tmUwBMb+tAA60UIkUZT7M3rw==
X-Authority-Analysis: v=2.4 cv=P+Y3RyAu c=1 sm=1 tr=0 ts=6902deed cx=c_pps
 a=MTSHoo12Qbhz2p7MsH1ifg==:117 a=fChuTYTh2wq5r3m49p7fHw==:17
 a=IkcTkHD0fZMA:10 a=x6icFKpwvdMA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=VwQbUJbxAAAA:8 a=EUspDBNiAAAA:8
 a=FxhApbZLZ_QfhaJha3gA:9 a=QEXdDO2ut3YA:10 a=GvdueXVYPmCkWapjIL-Q:22
X-Proofpoint-ORIG-GUID: 9RBE0Hr6hpM2tvgN7ejmRqrHA9gVTNI0
X-Proofpoint-GUID: 9RBE0Hr6hpM2tvgN7ejmRqrHA9gVTNI0
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2025-10-30_01,2025-10-29_03,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 clxscore=1015 suspectscore=0 spamscore=0 lowpriorityscore=0
 priorityscore=1501 phishscore=0 malwarescore=0 adultscore=0 impostorscore=0
 bulkscore=0 classifier=typeunknown authscore=0 authtc= authcc= route=outbound
 adjust=0 reason=mlx scancount=1 engine=8.22.0-2510240001
 definitions=main-2510300027


On 10/30/2025 4:53 AM, Bjorn Helgaas wrote:
> On Wed, Oct 29, 2025 at 04:59:53PM +0530, Krishna Chaitanya Chundru wrote:
>> TC9563 is the PCIe switch which has one upstream and three downstream
>> ports. To one of the downstream ports ethernet MAC is connected as endpoint
>> device. Other two downstream ports are supposed to connect to external
>> device. One Host can connect to TC956x by upstream port.
>>
>> TC9563 switch power is controlled by the GPIO's. After powering on
>> the switch will immediately participate in the link training. if the
>> host is also ready by that time PCIe link will established.
>>
>> The TC9563 needs to configured certain parameters like de-emphasis,
>> disable unused port etc before link is established.
>>
>> As the controller starts link training before the probe of pwrctl driver,
>> the PCIe link may come up as soon as we power on the switch. Due to this
>> configuring the switch itself through i2c will not have any effect as
>> this configuration needs to done before link training. To avoid this
>> introduce two functions in pci_ops to start_link() & stop_link() which
>> will disable the link training if the PCIe link is not up yet.
>>
>> This series depends on the https://lore.kernel.org/all/20250124101038.3871768-3-krishna.chundru@oss.qualcomm.com/
> What does this series apply to?  It doesn't apply cleanly to v6.18-rc1
> (the normal base for topic branches) or v6.18-rc3 or pci/next.
I sent this on top of rc3 as we have some dependencies with latest 
changes i.e ecam changes in dwc driver.
> I tried first applying the patches from
> https://lore.kernel.org/all/20250124101038.3871768-3-krishna.chundru@oss.qualcomm.com/,
> but those don't apply to -rc1 or -rc3 either.

This needs to be applied on the dts schema in github, it is already 
applied I will remove this reference in next
series.

- Krishna Chaitanya.

>
> Bjorn

