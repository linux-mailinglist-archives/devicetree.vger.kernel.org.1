Return-Path: <devicetree+bounces-271647-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id +E47Cne4qWlEDAEAu9opvQ
	(envelope-from <devicetree+bounces-271647-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Thu, 05 Mar 2026 18:08:07 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id BC089215DC1
	for <lists+devicetree@lfdr.de>; Thu, 05 Mar 2026 18:08:06 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 7720830ADBAB
	for <lists+devicetree@lfdr.de>; Thu,  5 Mar 2026 17:07:12 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C514B84039;
	Thu,  5 Mar 2026 17:07:11 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="a4bEybrX";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="Typ50wuy"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 06F093DFC7F
	for <devicetree@vger.kernel.org>; Thu,  5 Mar 2026 17:07:09 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772730431; cv=none; b=C9U7QsLW8Npwi5tpKL1iK7QWG8iEzvO1gVq3InsMvMUhlhUASXtiKi3xM46Otz5woKBosoZ7mtLcw3WbTemP8SA7SxZTkK6OADytcYm7jRhR7RcCCMNkhlr4hYPI8d0dk+G9z3Tr2KnIjzX7BQ11uNt2ihyA/6/TDbnwomhWzkU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772730431; c=relaxed/simple;
	bh=pgP0q4kVsHFcrHbvYtzYON7ox6KLWsq/00U7ee8fSJk=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=ZhOZObzr3THUNsHfwmyOTAZV/8xNg/eQ3qLW2cV5wVYcShcVygR+awYGKxg/0uXBbOV6gkoPfWujdY9KKs8idHgn924rd8ewKIGfLU+c3o3aQKa+hZl/SfOKCHVLG4mkWwWgnYAYXZ94W6TezpK4rFIcUohHUMJ9TikJPsX3rYk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=a4bEybrX; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=Typ50wuy; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279867.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 625AFp1p861670
	for <devicetree@vger.kernel.org>; Thu, 5 Mar 2026 17:07:09 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	P9amGm3yXPjWRedkzMCt3rIna/u2e58sR65tEMjLkZI=; b=a4bEybrXskoGZv0G
	azDDjfpL2IOffTbrcBuFG67SPotuiTOys4t+8fwGZFuXAThGyia+MdFPamiAnnkT
	StMJYJp2iyF90+1NwpdnGs78OqSctI1r60JSwVcog+/aLGd44RS4ysAda3s0lxqQ
	klZ/sO1w1Uec0bLVnGgh6xrBTPw+tZmyopB25LlZvQYB2mG8SUoS8GLMK2bU/NhQ
	rkuJpbieG8FfRmrqYDDqq6vEH8BYNzpwVSjJnvkgwkebOqqiUpqe8dejBshev8NJ
	zAVC02J3kIE3bAHpvFLVsT3d+xAg1u+TQF6Dx4lQFS98Wr+QdvpIbr1K+gr5ovi1
	Z9rqYg==
Received: from mail-pl1-f198.google.com (mail-pl1-f198.google.com [209.85.214.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4cps0wc5ej-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Thu, 05 Mar 2026 17:07:09 +0000 (GMT)
Received: by mail-pl1-f198.google.com with SMTP id d9443c01a7336-2ae5031c6b1so42717395ad.0
        for <devicetree@vger.kernel.org>; Thu, 05 Mar 2026 09:07:08 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1772730428; x=1773335228; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=P9amGm3yXPjWRedkzMCt3rIna/u2e58sR65tEMjLkZI=;
        b=Typ50wuySwlOR5roqdDNG8zr4zyB9KbOQ2f6J0KTSizJM/A2Q/ROXAJ7E3O40STX6z
         Uh9x8ego73/dseTIQTtNIK5nAmHfYtcEnCKQGoR88KwmmFXrQjmZCjmxToGCW2IE8AjE
         05LPO8y7WEuEffHzoDzgSmNLnmwW4PWlF4ahpu/D+5q0owd09V7rnKr3Io9HP/YSBOcK
         DXSiDJ0yyoerM1gATDTBOpShW0nFTsxySPjDX69tkEtfnGLvHsfJ/3bqIHcSNMV0hwx9
         DKspq49g62iIXIXYC5yubTDWMal2E/KG1l2gxse7hNAocGJmTQzRcbnucf22d2yxjWLK
         SpBA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1772730428; x=1773335228;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=P9amGm3yXPjWRedkzMCt3rIna/u2e58sR65tEMjLkZI=;
        b=U3+GFyCgzmDSst7oL8Omczchu3QhOUCiXM0/kfH13VBoQBuNjRKzRaAdJITIPjBqRs
         wTXvel+VE1XMXgcVLZRpOJ14gRi/BeWulbHwht22z7Yfx6joAsk4bAvvRvJ6xFShVbyj
         /khP1syGQ7Fqh5wXpG1EL1cYNMrOvuNbHJltheIxHAnotGpNu0E7KuIxpX2z8PGH65wQ
         k5n+Nblk2pxtw4ROdozh6qYY47uergufHwOZ4DB2fDiD5c5jGRSNsfK/aZkCRTLtHT7t
         Mq0DJJ/B1Dk1F7lBcnrWF9hnDHaWO3c+X0ygyx5xNDr1E31B3+npnMiwlRC2E0ueiFrk
         dXcg==
X-Forwarded-Encrypted: i=1; AJvYcCWwrp2u30sTZ1wyNjKHGTp12+EtBSaM3GT+sTKiXg8lZywXqXEe85lMGRoH/4HdbdXVk8xheGuZv2i6@vger.kernel.org
X-Gm-Message-State: AOJu0Yxyq6Lv51qrJIOL3BEqI1yPDqQbNO2WK2A7YjRwzgE3KLY0XFGR
	V6J3OqDLSfaApB8yJ5ysahWVNfMYk7J+GKN/uvX3di4/SBuqhIhFPv8unGB4PBmEVh62p59gxsn
	3jcfwmawUMKV5+FLurPOebYpKGv5keYrszO8CFGfM9Cd29uvLhlw3c5hQxN+g7sgZ
X-Gm-Gg: ATEYQzy2g9c4+HwHtAvYFJVCr+Co3dNemVEjIN6cNrHz3Cr5qVsHXShREwHG3AS+C3a
	rjm4ssFG/l8ZTbBbO1WQHCcv3ugAROWjB3aIlc2/WdNHLLpoaIM4euwY5ZH58ZykzX9XYwINH8q
	A7LkKd6pFSBPHyPn5Vish26CTBskracvjI38PkGdsTMBxh4K7IhHgnaE/FiHVI/WlLPgSgymIzt
	Gw5TkXSwBy3DRU1l6uSeUVTAf+Itt7GlUnXE2N5fr1IWpogPx80XRdFP2hbLC/yJfsUEASrD02Q
	bNxLVeGYBHBS4GMDOm8nR7PpJe++Bj0tzDg9apGFaoWFkahNQuJ07Y7GQdU7xH40cmr6ND+BLni
	8Qfj2wCP5+81hUzzHdJXQR690GO0iYFf/Jizs2AOmXgx2L81BjraDaPY=
X-Received: by 2002:a17:90b:3e4c:b0:359:2d1c:9206 with SMTP id 98e67ed59e1d1-359bb45b0b8mr219574a91.33.1772730427699;
        Thu, 05 Mar 2026 09:07:07 -0800 (PST)
X-Received: by 2002:a17:90b:3e4c:b0:359:2d1c:9206 with SMTP id 98e67ed59e1d1-359bb45b0b8mr219498a91.33.1772730426982;
        Thu, 05 Mar 2026 09:07:06 -0800 (PST)
Received: from [192.168.29.31] ([49.43.226.5])
        by smtp.gmail.com with ESMTPSA id 98e67ed59e1d1-359aa2c02casm1708265a91.8.2026.03.05.09.06.58
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 05 Mar 2026 09:07:06 -0800 (PST)
Message-ID: <1f75b250-c3b5-45da-bc82-aeadf44dfea4@oss.qualcomm.com>
Date: Thu, 5 Mar 2026 22:36:26 +0530
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v20 06/10] power: reset: Add psci-reboot-mode driver
To: Bartosz Golaszewski <brgl@kernel.org>
Cc: Florian Fainelli <florian.fainelli@broadcom.com>,
        Krzysztof Kozlowski <krzk@kernel.org>,
        Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>,
        Mukesh Ojha <mukesh.ojha@oss.qualcomm.com>,
        Andre Draszik <andre.draszik@linaro.org>,
        Kathiravan Thirumoorthy <kathiravan.thirumoorthy@oss.qualcomm.com>,
        linux-pm@vger.kernel.org, linux-kernel@vger.kernel.org,
        linux-arm-kernel@lists.infradead.org, linux-arm-msm@vger.kernel.org,
        devicetree@vger.kernel.org, Srinivas Kandagatla <srini@kernel.org>,
        Lorenzo Pieralisi <lpieralisi@kernel.org>,
        Arnd Bergmann <arnd@arndb.de>, Bjorn Andersson <andersson@kernel.org>,
        Sebastian Reichel <sre@kernel.org>, Rob Herring <robh@kernel.org>,
        Souvik Chakravarty <Souvik.Chakravarty@arm.com>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Andy Yan
 <andy.yan@rock-chips.com>,
        Matthias Brugger <matthias.bgg@gmail.com>,
        Mark Rutland <mark.rutland@arm.com>,
        Conor Dooley <conor+dt@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>,
        John Stultz
 <john.stultz@linaro.org>,
        Moritz Fischer <moritz.fischer@ettus.com>,
        Sudeep Holla <sudeep.holla@kernel.org>
References: <20260304-arm-psci-system_reset2-vendor-reboots-v20-0-cf7d346b8372@oss.qualcomm.com>
 <20260304-arm-psci-system_reset2-vendor-reboots-v20-6-cf7d346b8372@oss.qualcomm.com>
 <CAMRc=MewwLTsaHCOR2iVYZRM6kWptQfZuTe=2i_pfpTwjFKEpQ@mail.gmail.com>
Content-Language: en-US
From: Shivendra Pratap <shivendra.pratap@oss.qualcomm.com>
In-Reply-To: <CAMRc=MewwLTsaHCOR2iVYZRM6kWptQfZuTe=2i_pfpTwjFKEpQ@mail.gmail.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-Proofpoint-GUID: kwFfwH9R5uW4wjgOCzmUJcBiGoGKw6cf
X-Authority-Analysis: v=2.4 cv=BNK+bVQG c=1 sm=1 tr=0 ts=69a9b83d cx=c_pps
 a=MTSHoo12Qbhz2p7MsH1ifg==:117 a=mvMbtr4cKWCpcPtdaitTtQ==:17
 a=IkcTkHD0fZMA:10 a=Yq5XynenixoA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=eoimf2acIAo5FJnRuUoq:22
 a=EUspDBNiAAAA:8 a=xSGJYzCLABdN7Qz2ucIA:9 a=QEXdDO2ut3YA:10
 a=GvdueXVYPmCkWapjIL-Q:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMzA1MDEzOSBTYWx0ZWRfX2x4i/7uBNJzJ
 yCrdxXDbvFbGGaSLzMooR1WGbctzP/R6xQe/Nfa2q9AUav8nRVfsgwuNEJF3PlPdTRIFHK+XR74
 tpOOebXGPZnDx6g/D8Vc3Utd5+Ll7LyaSbFSSO2PwwXjUas4dBsMSVvd/e8/7VQAveUNf8bX1wY
 zeIH+bM/P2mRzdudYiNZ48R9lAMmoONc/rxiu5hDJBc5Z4B2x9135hw0gAjeBzOjl3R8wNysBnd
 YB2pxR4/QpneFUGsZMmc83hiINspK2NI2du+pjIRnXxhgoJpVjgKt4yISVeW1VjC1bRmh/zSl+o
 A9RpO6NM/IsNtlkvn/pHpWtR4SvXvpFgPtmC8Nv2J5+nIikJrBn0HkBJWWoDXJDmZ9DNZWiUmX5
 TgddDfiRdAGw3tqbPmVedHJv+or2/Lt6+FT1bd6Ou39FiZ/kiXJPAoyQe4HRB6/nz+qYA9F/WzR
 BsdusZdNjMoEF0LlF/g==
X-Proofpoint-ORIG-GUID: kwFfwH9R5uW4wjgOCzmUJcBiGoGKw6cf
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1143,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-03-05_04,2026-03-04_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 phishscore=0 malwarescore=0 spamscore=0 clxscore=1015 impostorscore=0
 adultscore=0 bulkscore=0 lowpriorityscore=0 suspectscore=0 priorityscore=1501
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2602130000 definitions=main-2603050139
X-Rspamd-Queue-Id: BC089215DC1
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[qualcomm.com,reject];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	R_DKIM_ALLOW(-0.20)[qualcomm.com:s=qcppdkim1,oss.qualcomm.com:s=google];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FREEMAIL_CC(0.00)[broadcom.com,kernel.org,oss.qualcomm.com,linaro.org,vger.kernel.org,lists.infradead.org,arndb.de,arm.com,rock-chips.com,gmail.com,ettus.com];
	TAGGED_FROM(0.00)[bounces-271647-lists,devicetree=lfdr.de];
	DBL_BLOCKED_OPENRESOLVER(0.00)[qualcomm.com:dkim,qualcomm.com:email,oss.qualcomm.com:dkim,oss.qualcomm.com:mid,sea.lore.kernel.org:rdns,sea.lore.kernel.org:helo];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[28];
	MIME_TRACE(0.00)[0:+];
	DKIM_TRACE(0.00)[qualcomm.com:+,oss.qualcomm.com:+];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[shivendra.pratap@oss.qualcomm.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Action: no action



On 05-03-2026 15:32, Bartosz Golaszewski wrote:
> On Wed, 4 Mar 2026 19:03:06 +0100, Shivendra Pratap
> <shivendra.pratap@oss.qualcomm.com> said:
>> PSCI supports different types of resets like COLD reset, ARCH WARM
>> reset, vendor-specific resets. Currently there is no common driver that
>> handles all supported psci resets at one place. Additionally, there is

[snip..]

>> +static int psci_reboot_mode_register_device(struct faux_device *fdev)
>> +{
>> +	struct reboot_mode_driver *reboot;
>> +	int ret;
>> +
>> +	reboot = devm_kzalloc(&fdev->dev, sizeof(*reboot), GFP_KERNEL);
> 
> Have you verified that the faux device is actually getting bound? This is not
> probe(), you don't supply any faux operations when calling faux_device_create().

yes. It was verified. faux device got created like below and the 
end-to-end use-cases are also working fine.

few logs from device:
--
# find / -name psci-reboot-mode
/sys/devices/faux/psci-reboot-mode
/sys/bus/faux/devices/psci-reboot-mode
/sys/bus/faux/drivers/faux_driver/psci-reboot-mode

# ls ./sys/devices/faux/psci-reboot-mode
driver     subsystem  uevent

--

> 
> You should pass the address of this function in faux_device_ops instead of
> calling it directly.

In last patch, we were using a probe function. As faux_device_create, 
calls the probe from its internal operations, "of_node" can only be 
assigned from inside of faux device probe.

As our primary requirement is to assign reboot-mode of_node to the faux 
device, thought to make it this way. (As we did not want to assign it 
inside the faux device probe).

thanks,
Shivendra

