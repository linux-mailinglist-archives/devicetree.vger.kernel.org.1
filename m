Return-Path: <devicetree+bounces-267728-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id UCwhF1xGnWmoOAQAu9opvQ
	(envelope-from <devicetree+bounces-267728-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 24 Feb 2026 07:34:04 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id B0EE5182755
	for <lists+devicetree@lfdr.de>; Tue, 24 Feb 2026 07:34:03 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 39B7F3072DBE
	for <lists+devicetree@lfdr.de>; Tue, 24 Feb 2026 06:34:02 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id BD5D6302146;
	Tue, 24 Feb 2026 06:34:01 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="Gd7ybnzY";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="VTYz4FK2"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 95D7D29AB05
	for <devicetree@vger.kernel.org>; Tue, 24 Feb 2026 06:34:00 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771914841; cv=none; b=eQoSlSkxsoIssF6e1p52kZ+jqArA9tSHebDosQthnWivTGqlnxMMhk5eAcQknVjhk+RS9tbMV/nlUoin1oCPHiruhlQYoH/PB2d2YHfyuJD8Q7nA7aamxf9smne3TiZgyPSFOyqKUW/Z9SSX00+2WEWgwoCvalAq2K0OoPdSpL0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771914841; c=relaxed/simple;
	bh=u5UlcmiHpgtttzIokC294u/zRDRF/DiVNXigM7PU8J4=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=ZvJNADPuSKSqlIuvvst/FF+Chv4n4Bmn9NEWQHepgW9wR4R5gzvIHIylTt+/rQbufjS9zUD2xbhf0LR3XpLUwHy+y5muMyhK+Wu2g3vsgPuR9OLrKnEjJlsqwj4ghxhSja7+zzkcYPi/mDqcKL4UWcGHxHmtF1oNPzQ9LqE/GoQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=Gd7ybnzY; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=VTYz4FK2; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279868.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 61O4Lv2p1754846
	for <devicetree@vger.kernel.org>; Tue, 24 Feb 2026 06:33:59 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	GtTg/lV2FQCNn2M866BO2tOb0k1oag4iQrelD4iYo00=; b=Gd7ybnzYqP5cBSmW
	ZJ88NHQyir385Wyu+zz1vecdNaYYmJvoFaM4nWa94SMaSltmQ+4bnqFJgdb+ATWk
	tlQvK+gFXDvwglKFi3q2p6XGLSmcnJyXgxeaodE4HyrVBo/P1WYCm5RsmvuYH6C6
	71XZpw/QvgRO8i33geZQy2bdSjt01qkUyeaVmMDYhd0sE1lOQ/mhMEQ3gRqAe1yP
	pz6IuTscu3G/o2nMavW9sni3+fnZlUpUz5a67CNMelfukOhZFGPk7M6ujsa39mDH
	2gr+mG0gm61G3jxaJk13RqMwbtqe7nBOTzODeUhXQOda0dqBl0pXTQuyI3K3FXpF
	6F7TKw==
Received: from mail-pj1-f72.google.com (mail-pj1-f72.google.com [209.85.216.72])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4cgn81b6u3-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Tue, 24 Feb 2026 06:33:59 +0000 (GMT)
Received: by mail-pj1-f72.google.com with SMTP id 98e67ed59e1d1-3562370038dso4707155a91.3
        for <devicetree@vger.kernel.org>; Mon, 23 Feb 2026 22:33:59 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1771914838; x=1772519638; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=GtTg/lV2FQCNn2M866BO2tOb0k1oag4iQrelD4iYo00=;
        b=VTYz4FK28UkGCOzQUh3ra6zCShkMUREqyXnqKvWbZljZhJwu0Hn6jHTHwNwe/P/JdV
         Xga/vw8cNjHMCLusfdszioyoIur0wBeX6ke3KoYjYs/TsvEfs8LyE0ix1t6MI8z3pn0Z
         BYsvfu9cP2qg8mfYdNkOWyWMnB6vk5L69rR0IxvRNkL4XFeI+LRzZtEkyX2PKVKuqjsb
         Rke72KtFHlve9Lks1bj21IiWs12BL5SvwoLItNG91nvobCkfovfaaEcTVWGQYCiFGbi0
         Jpy+Q/43mb/lLHnoLklvnrs8xakydcKc+Sy6G1rBjGzXFJBg2ACLoISS2Z9UrjSJzI1G
         s1nA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1771914838; x=1772519638;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=GtTg/lV2FQCNn2M866BO2tOb0k1oag4iQrelD4iYo00=;
        b=UTJUVBgoZkeV9n3VbcGhBuYB7GaHO42ti3iW+rygpnEcv2BNabLLqwkw3ZbkbakDNI
         BIKzfetaKncObCXLgFMlFNTy+HenjcFM3W3vGhn89UXsQP016IppkM/bbv5Vr0G9rUcS
         C6n/b3EolTorybdhv3Yl7rFurg4vF4Aj4/GwysSemPRADBfJkHNRvH8KZAPwkVMuJtaX
         loFALqasziMWUxhfuhaZUH9qX1fDa58woW3/5JtDOBuuOJOChb0Q8Nosy4wuurFx+NpK
         a3QF8Nly8yyPsMXViE1cl3Hd6xM8M6s/m63aL1ecUc2lRRo5qTBVbCibYxO1m9Astl5w
         nLcA==
X-Forwarded-Encrypted: i=1; AJvYcCWafV/lQmblXFHTpI3wi7xCKOgpmZkqNDeFDJeztkOyVFmWVomeJjvCbEJFt//RhvAaT0RSvJcfXi55@vger.kernel.org
X-Gm-Message-State: AOJu0YyK24qlGsxY84hLnkbFjjgceZbOYg6+wPrAqUwoGIuxqY+YoR+q
	jsQmaqiwIR9c+Sd8bjOi4H8fE5ddam/URxBykJ3ki4wouXq/TDtcCGLvAjf5d6GeVkUCDMvZZPI
	vrpEZKpFh/DIiDFddrw2UA9DydBZaGYAAMWBn9A1S73dXgfYVRX62cI45pC9bX6L+
X-Gm-Gg: ATEYQzwxILaUL5zOkrU1Ay+hLaPerAy4GgKOhx3eP3CgNRphJntDkosroduPLBpTXc7
	gxTu4Rv4txwIsyaDiMx8pkG8pAZRBwx9L16n7CugSJLAWgFTKl5Xm5yBxq0ixmP99vvkCSqB70o
	5mXK91dr0XvhIyVhrSovPsMVhB28xpXzcu1nMymdgLoUA1A9Zx0vLLMcMpOzRDBGQnSo8QETyJ7
	wjKFBiYkWpnYrqbNxi5p3HYbZonfkr4YNPgBqkaUX3j4d+y6Gx1oW6eUaRXHB+v2gjvAoSbA2Gi
	g4u13kRBPpH3loI5PR3ZfPM8sMBD8VWp1T++IOq+TcqX8QLRt6IbwMHMLZ4915htXJKvsviNXqx
	ksl5ItvyL7lgzO2CQBMx/HacfPQsKk+tOtUmU5mq1LK4ZlmYXhB3RH5Q=
X-Received: by 2002:a17:90b:2cc5:b0:356:35a5:4a64 with SMTP id 98e67ed59e1d1-358ae7c5003mr9638933a91.4.1771914838532;
        Mon, 23 Feb 2026 22:33:58 -0800 (PST)
X-Received: by 2002:a17:90b:2cc5:b0:356:35a5:4a64 with SMTP id 98e67ed59e1d1-358ae7c5003mr9638923a91.4.1771914838099;
        Mon, 23 Feb 2026 22:33:58 -0800 (PST)
Received: from [10.218.18.194] ([202.46.22.19])
        by smtp.gmail.com with ESMTPSA id 98e67ed59e1d1-358df5d089asm488789a91.14.2026.02.23.22.33.53
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 23 Feb 2026 22:33:57 -0800 (PST)
Message-ID: <40eb66b5-7f3d-4df5-b6db-719168d85b72@oss.qualcomm.com>
Date: Tue, 24 Feb 2026 12:03:51 +0530
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v3 0/2] arm64: dts: qcom:
 qcs6490-rb3gen2-industrial-mezzanine: Add TC9563 PCIe switch nodes
To: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley
 <conor+dt@kernel.org>,
        Manivannan Sadhasivam <manivannan.sadhasivam@oss.qualcomm.com>
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org,
        Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
References: <20260212-industrial-mezzanine-pcie-v3-0-1e152937a76a@oss.qualcomm.com>
 <3c06c3cd-cc10-4e2c-9001-9e0a4174d489@oss.qualcomm.com>
Content-Language: en-US
From: Sushrut Shree Trivedi <sushrut.trivedi@oss.qualcomm.com>
In-Reply-To: <3c06c3cd-cc10-4e2c-9001-9e0a4174d489@oss.qualcomm.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-Proofpoint-GUID: QSEh2R8P0Cm5TOpOogxGWIsY3LZRqy0T
X-Proofpoint-ORIG-GUID: QSEh2R8P0Cm5TOpOogxGWIsY3LZRqy0T
X-Authority-Analysis: v=2.4 cv=CbsFJbrl c=1 sm=1 tr=0 ts=699d4657 cx=c_pps
 a=RP+M6JBNLl+fLTcSJhASfg==:117 a=fChuTYTh2wq5r3m49p7fHw==:17
 a=IkcTkHD0fZMA:10 a=HzLeVaNsDn8A:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=ZpdpYltYx_vBUK5n70dp:22
 a=-kCUtytw42OpCi1CPN4A:9 a=QEXdDO2ut3YA:10 a=iS9zxrgQBfv6-_F4QbHw:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMjI0MDA1NSBTYWx0ZWRfXxTjILN38fPF8
 CuwinjNXxRlAc93L4ZGj5nHJEORVAzibcI2acp5iMyNO200Lk2Qls7gv/VTcN5j+lo04K+9eJB7
 4rQgxrQYd8KeFM5oRSV2DkjlAF7Z5xFHolI6wpOUJfI+eVoGbX9FPlm9n3hs2eUuLafNUQcSJ0a
 lwSLdKRsjwen+WgSbJJ2hlGnlDA/OQySQAUzPvYLQrLyWrtw9+rf9Wz9auGCW8N9DX4MoI9akM6
 3QeLCMEKh8bswSO0otYwXFThKi+9157eTwnyCeBXudbbUGWS04QvB/2oeANDhCE2m96ytAVu10L
 8n9q4TNALKscDC9heaMq9sBup+ZalXEF2rYpjvNRkkUemLrGlWcOwsgIlTK0hjSK4D1e3SNYmiT
 BlIdVLXxFR4aWSpSxW9V2vly2r/UWpvX5s0/D0Mro16o+ofOpXU/PDVhYclzH7c7WpZ4PcAXgFj
 jKWrUfrUMAUNRv4cgwA==
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-02-23_06,2026-02-23_03,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 lowpriorityscore=0 adultscore=0 impostorscore=0 priorityscore=1501
 suspectscore=0 phishscore=0 spamscore=0 malwarescore=0 clxscore=1015
 bulkscore=0 classifier=typeunknown authscore=0 authtc= authcc= route=outbound
 adjust=0 reason=mlx scancount=1 engine=8.22.0-2602130000
 definitions=main-2602240055
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-2.16 / 15.00];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[qualcomm.com,reject];
	R_DKIM_ALLOW(-0.20)[qualcomm.com:s=qcppdkim1,oss.qualcomm.com:s=google];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	DKIM_TRACE(0.00)[qualcomm.com:+,oss.qualcomm.com:+];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,qualcomm.com:dkim];
	RCVD_TLS_LAST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_FROM(0.00)[bounces-267728-lists,devicetree=lfdr.de];
	MIME_TRACE(0.00)[0:+];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	FROM_NEQ_ENVFROM(0.00)[sushrut.trivedi@oss.qualcomm.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	NEURAL_HAM(-0.00)[-0.999];
	RCPT_COUNT_SEVEN(0.00)[11];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Queue-Id: B0EE5182755
X-Rspamd-Action: no action


On 2/12/2026 5:18 PM, Konrad Dybcio wrote:
> On 2/12/26 11:44 AM, Sushrut Shree Trivedi wrote:
>> Add nodes for the two additional TC9563 PCIe switches present on the
>> QCOM RB3Gen2 Industrial Mezzanine platform.
>>
>> One of the TC9563 is connected directly to the PCIe0 root-port while
>> the second TC9563 switch is connected in cascade fashion to another
>> already available TC9563 switch on PCIe1 via the former's downstream
>> port (DSP). The final PCIe hierarchy on the Industrial Mezz platform
> 	^ +Mani is that PCIe terminology, or is that a Toshiba-ism?
The PCIe Spec actually uses the DSP terminology
under r6.2 sec 7.9.29: Streamlined Virtual Channel
Extended Capability (SVC)

"If the SVC Extended Capability structure is implemented in a
USP containing one or more Switch USP Functions, it must be
implemented in all associated Switch DSP Functions"

Sushrut
>
> Konrad

