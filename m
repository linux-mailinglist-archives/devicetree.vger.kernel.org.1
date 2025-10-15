Return-Path: <devicetree+bounces-226969-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id EB34EBDD313
	for <lists+devicetree@lfdr.de>; Wed, 15 Oct 2025 09:47:41 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 31C341890F69
	for <lists+devicetree@lfdr.de>; Wed, 15 Oct 2025 07:48:05 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 3790E31355F;
	Wed, 15 Oct 2025 07:47:37 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="GTGvq6sc"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A03C22C026F
	for <devicetree@vger.kernel.org>; Wed, 15 Oct 2025 07:47:35 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760514457; cv=none; b=m7gYQtOIzZ9yPEsUmr6GPBuWqiTVSC9ymzDUcDNoucYuWxncZG1p3Wr3iotKj8A9/WIVtRMuyfTAGY/e6pTVgQcxML0MUzGqYfjjUybRW2XhLM6pUCIW9HlzMARpC3Mm9g1F+wUvhdtudRjaZmEIbuGyb5KE7zGt68bU2uUGZkY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760514457; c=relaxed/simple;
	bh=JBySYm7jCnLNR7S47OJWMx5tSg66aDYRas2A7H3BfRg=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=cIobQUri80HGty6H5ffJo0uC/6wLgtx6jKuo7MdKgwjEuWur5CM+JZhI+cFu6fEcBkskwDdkZMdh56MUM2ubkiZQ4n8/zkgvmrxhnGC2KKh1oO7LVtfpFh+Ce3Czg2+bniww1sknoLkRMfbcFC+bUR7PujqhV2kbOOnaL5TFUeA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=GTGvq6sc; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279869.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 59F2s9ov016154
	for <devicetree@vger.kernel.org>; Wed, 15 Oct 2025 07:47:34 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	3wzEuS4KgwUf/si4HCRP4Xjfg9FTP53VK8rld0Pt2hw=; b=GTGvq6sc6JxH0BRj
	ATrPrb5KfpdAAosrchw3H6kaMELoxGWp3yqbmmH/y8D0AjUvLOxzprSudsU1bZ+Q
	TxBCCCTKBjaI+EbGlJyNHNMwPGIDwH5Yq/0K58KY45PtKXZtRE0EtZUy/BiR9bdB
	7RfKDLwEGUEoLtyTJztloXRJp5obqdVQWiYMSUyr4qsnc+iyh27XpAyRk+n6bbBf
	i99KG671HDGIGK8V9oiQ+AFQo2ieOzwDQVXf+HCFcS/uAtIJR/bLuJCyUVulwGCF
	iWatMZCyif/690rRFP6oj6A8romXj3CPAjlRaWDSVFR1BzUDFyvbObTo1uhbBSub
	m8pakw==
Received: from mail-pl1-f200.google.com (mail-pl1-f200.google.com [209.85.214.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 49qfdkbjb6-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Wed, 15 Oct 2025 07:47:34 +0000 (GMT)
Received: by mail-pl1-f200.google.com with SMTP id d9443c01a7336-27ee41e062cso141978935ad.1
        for <devicetree@vger.kernel.org>; Wed, 15 Oct 2025 00:47:34 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1760514453; x=1761119253;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=3wzEuS4KgwUf/si4HCRP4Xjfg9FTP53VK8rld0Pt2hw=;
        b=usA0QQZZ+J7mRVxBV+ZlyH1FHAE8gPfMq0cfHEaxc+DD9r0SLAA6BZokCjuKl2QIzp
         1XxNSZzk/17aeoMzizAuNUzpNr0I9fiFgc7VxXAZLEQxsZXbfjvl73XYXq5PXsRTOqqd
         /pHnSTrm8p+LisYmdSJSqZmegmoHnpPVJParVUgZM/PfjKprt14EIB4bk+SSq8T9sBdy
         mQOslkZpI8cRy5JyeJNRmGrJj6bCkOgnVDaZpiTXFwfD9WZfAPfFueJyWsuf5wed1pkA
         R/J+gYOKSB3hbJIeazr8qX0La/vydcTjQnCrY5WsGZZqnqAbWN5/PCkIAe9aGUzxhRYE
         ldHA==
X-Forwarded-Encrypted: i=1; AJvYcCVJbU9Ync2qRPA1axcWRdzoW/98ZJqmbciuZ0DdZkrJiKbGIiQOhmvXzeBeIlgJTE9MXUEqYOv1Z/rc@vger.kernel.org
X-Gm-Message-State: AOJu0YwFmMpcRfQucGZTeOBul/AyQIy/T2Gb3uzlOTJa4Do7VNC5V1zg
	a6trTd+XUfKTrsYy3rmkv2d2JOsOx2AZ7tIklv19bNdL0/RarfILehOLCTU+lGIlfP2jxY3BmWg
	whs91kUABHXyN+3FlUnsKIRf509sNHLGImqAkNPAOKI+Ib4j159SMjeJRXw7V4ltP
X-Gm-Gg: ASbGncs27AEc4m7VZ0/OCzZtIDyQXrE9EukspO4M8trUpcI/N9inpRSOfNoooZhgPoo
	Aj+zftoGeyqlPnZMWbx8FVnVx63LbNaQLc+jty0vlnAvx896jChBPDgJAMaJWh7YLycsv60jTut
	OEcMwJ5vAI313bvl7Oe13Bo27ObLeu3bB/TsaJYofflRbKAkZ6rfaxqIo3nn/M8O09d2claPNb0
	sVvoRhTRtX8Glcb2S88zy5GiGKmnyiLFLZDZ0vXUO5SFpJeAq0OYyrabO5kEuZYGGlATqVZMDgM
	BFYg0hEEYpoJqJJ6KEPBekDpSaLMaxMG9EAS1+lXs6uh90t3JU5MNcnmmNoUO2LISmSaXIEtnA=
	=
X-Received: by 2002:a17:903:2343:b0:248:fc2d:3a21 with SMTP id d9443c01a7336-29027290194mr277067295ad.4.1760514452617;
        Wed, 15 Oct 2025 00:47:32 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IGhzyOtK2t73BdHuEH9yQdQ6LRCYOnKx0D9BJpdqWj+pdvXaadxnVohWazYDT43ZnK/Q6nPCw==
X-Received: by 2002:a17:903:2343:b0:248:fc2d:3a21 with SMTP id d9443c01a7336-29027290194mr277066685ad.4.1760514451980;
        Wed, 15 Oct 2025 00:47:31 -0700 (PDT)
Received: from [10.216.0.133] ([202.46.23.19])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-29034de658bsm187706535ad.22.2025.10.15.00.47.19
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 15 Oct 2025 00:47:31 -0700 (PDT)
Message-ID: <1bf62073-fae9-dd49-c908-193c06cdda84@oss.qualcomm.com>
Date: Wed, 15 Oct 2025 13:17:01 +0530
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:102.0) Gecko/20100101
 Thunderbird/102.5.1
Subject: Re: [PATCH v16 07/14] firmware: psci: Implement vendor-specific
 resets as reboot-mode
Content-Language: en-US
To: Pavan Kondeti <pavan.kondeti@oss.qualcomm.com>
Cc: Bartosz Golaszewski <bartosz.golaszewski@linaro.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Sebastian Reichel <sre@kernel.org>, Rob Herring <robh@kernel.org>,
        Sudeep Holla <sudeep.holla@arm.com>,
        Souvik Chakravarty <Souvik.Chakravarty@arm.com>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley
 <conor+dt@kernel.org>,
        Andy Yan <andy.yan@rock-chips.com>,
        Mark Rutland <mark.rutland@arm.com>,
        Lorenzo Pieralisi <lpieralisi@kernel.org>,
        Arnd Bergmann <arnd@arndb.de>, Konrad Dybcio <konradybcio@kernel.org>,
        cros-qcom-dts-watchers@chromium.org, Vinod Koul <vkoul@kernel.org>,
        Catalin Marinas <catalin.marinas@arm.com>,
        Will Deacon <will@kernel.org>,
        Florian Fainelli <florian.fainelli@broadcom.com>,
        Moritz Fischer <moritz.fischer@ettus.com>,
        John Stultz <john.stultz@linaro.org>,
        Matthias Brugger <matthias.bgg@gmail.com>,
        Krzysztof Kozlowski <krzk@kernel.org>,
        Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>,
        Mukesh Ojha <mukesh.ojha@oss.qualcomm.com>,
        Stephen Boyd <swboyd@chromium.org>,
        Andre Draszik
 <andre.draszik@linaro.org>,
        Kathiravan Thirumoorthy <kathiravan.thirumoorthy@oss.qualcomm.com>,
        linux-pm@vger.kernel.org, linux-kernel@vger.kernel.org,
        devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
        linux-arm-msm@vger.kernel.org,
        Elliot Berman <quic_eberman@quicinc.com>,
        Srinivas Kandagatla <srini@kernel.org>,
        Umang Chheda <umang.chheda@oss.qualcomm.com>
References: <20251015-arm-psci-system_reset2-vendor-reboots-v16-0-b98aedaa23ee@oss.qualcomm.com>
 <20251015-arm-psci-system_reset2-vendor-reboots-v16-7-b98aedaa23ee@oss.qualcomm.com>
 <3978e740-0589-4872-8f2f-1162084d3818@quicinc.com>
From: Shivendra Pratap <shivendra.pratap@oss.qualcomm.com>
In-Reply-To: <3978e740-0589-4872-8f2f-1162084d3818@quicinc.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Proofpoint-ORIG-GUID: PfkEuIO-C_hn1v8Xh50NBUUzV03QyZVw
X-Authority-Analysis: v=2.4 cv=MrNfKmae c=1 sm=1 tr=0 ts=68ef5196 cx=c_pps
 a=IZJwPbhc+fLeJZngyXXI0A==:117 a=j4ogTh8yFefVWWEFDRgCtg==:17
 a=IkcTkHD0fZMA:10 a=x6icFKpwvdMA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=R8NOTgI61i89tWg-cvsA:9 a=QEXdDO2ut3YA:10 a=uG9DUKGECoFWVXl0Dc02:22
X-Proofpoint-GUID: PfkEuIO-C_hn1v8Xh50NBUUzV03QyZVw
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMDExMDAxOCBTYWx0ZWRfX5aNOMAquDtKH
 iMPIfcRSVHP+Qq3YdPugJz44cxyFy54y60J2+1HyVozenWhUmzF3Wg4WW+gWackZMDq1bXwY+bt
 wbd5cthR0hTYi8skBLcMIjvDG/XJ0NmhlENSpogd+pOEJlvuP1f7yqPl14/U8MDopMD84uPCfG/
 VWrsr7LaDIRZxP/s5QT+Ko/+mRRhh5w9fI/+VTWqIzfLoeouCidmjeGUCtMZnI8pDiKmNhYKX8l
 Ws9kJB72d1CWecTr5lteqI9m5THbp/3J8g/SmaM5tW3L//Z5npTSTqfbmrz48ILfIMmA9zh/yTs
 /KTVL8zhfKCZmq/NtpYGaJ7jcMhlqykCO95Eld9988/WIeHtSFGZUcD9oiQKwf0CA4NNZaA1u5t
 1IepjCpU9izafasogiu/06A8rr8P6g==
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-10-15_03,2025-10-13_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 spamscore=0 bulkscore=0 clxscore=1015 adultscore=0 phishscore=0
 impostorscore=0 priorityscore=1501 malwarescore=0 lowpriorityscore=0
 suspectscore=0 classifier=typeunknown authscore=0 authtc= authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.19.0-2510020000
 definitions=main-2510110018



On 10/15/2025 12:25 PM, Pavan Kondeti wrote:
> On Wed, Oct 15, 2025 at 10:08:22AM +0530, Shivendra Pratap wrote:
>> +static int __init psci_init_vendor_reset(void)
>> +{
>> +	struct reboot_mode_driver *reboot;
>> +	struct device_node *psci_np;
>> +	struct device_node *np;
>> +	int ret;
>> +
>> +	if (!psci_system_reset2_supported)
>> +		return -EINVAL;
>> +
>> +	psci_np = of_find_compatible_node(NULL, NULL, "arm,psci-1.0");
>> +	if (!psci_np)
>> +		return -ENODEV;
>> +
>> +	np = of_find_node_by_name(psci_np, "reboot-mode");
>> +	if (!np) {
>> +		of_node_put(psci_np);
>> +		return -ENODEV;
>> +	}
>> +
>> +	ret = atomic_notifier_chain_register(&panic_notifier_list, &psci_panic_block);
>> +	if (ret)
>> +		goto err_notifier;
>> +
>> +	reboot = kzalloc(sizeof(*reboot), GFP_KERNEL);
>> +	if (!reboot) {
>> +		ret = -ENOMEM;
>> +		goto err_kzalloc;
>> +	}
>> +
>> +	reboot->write = psci_set_vendor_sys_reset2;
>> +	reboot->driver_name = "psci";
>> +
>> +	ret = reboot_mode_register(reboot, of_fwnode_handle(np));
>> +	if (ret)
>> +		goto err_register;
>> +
> 
> minor nit: np and psci_np reference must be dropped since we are done
> using it.

Ack. Sure. thanks. Will update this.

thanks,
Shivendra

