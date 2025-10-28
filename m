Return-Path: <devicetree+bounces-232182-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id DDE70C15369
	for <lists+devicetree@lfdr.de>; Tue, 28 Oct 2025 15:44:38 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 60D9A567CEE
	for <lists+devicetree@lfdr.de>; Tue, 28 Oct 2025 14:37:40 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 7A9273346A5;
	Tue, 28 Oct 2025 14:37:37 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="iEZ6x4AC"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D7E4321770A
	for <devicetree@vger.kernel.org>; Tue, 28 Oct 2025 14:37:35 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761662257; cv=none; b=VpArpyBKl3dnz69J/+SmxVq/UA5SWBYHDrsp3eglop2Yvt1UGdtcI5efYqi1rUzkrUYPH1RqkPTEhN8V+PW0NGDra/n+bgiWNh96FCjuoycgAygC7y13QgHxQI+afWLnY929m3xbK3YdMO1PX3P/MGytjuM/OCwfKqc13H7k8WM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761662257; c=relaxed/simple;
	bh=RlL+HspI/qKibOJ3Hm/qcxkCvXtTeg2FxvrSbq8tYKo=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=h5UfBqUehOKMlaCjAAsP7luQ5C3YGbWQTJi0/LCvtQQjgl4YZtkbrhNu8oRrzzoXDuelO+pgV1AvS26ugzCovrjCPqeMtIH1jNIVWuqQhWtp0fbKjpzmgi/VZr87AxByCEz9ARal6TuAwGSA6qZJQMEslbIXtmPyCirfnNEjVXk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=iEZ6x4AC; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279865.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 59SBcnw51559680
	for <devicetree@vger.kernel.org>; Tue, 28 Oct 2025 14:37:35 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	/rG46MMpKrRauqQ4haAq1ic3vjVmepSj7Kf1llU8TV0=; b=iEZ6x4ACCNTX+Qkj
	LerpyqWm+QvfYlmVDBKgpnJDIAN9SAAPvC6nnlidxd4A/LXOz9oamk7c9WDnMz53
	pMrkrmCbGR7BMvqM3IwGzBnuhdH45LbhRKbcxnjSngBeyiYvPp9NjfMooASqatrY
	67JQx4dRHhPjclbvNIf8D6irwmMy+XWF0uQqq9KrmjTKqXn4V4ZaEjgUHly8W/5m
	C+6a+Kd+OPrpYvvk1iOEs+XhH1S34j4R+ziwFdzl1Lgd8W8Q6hdW0Mzj0zAacRO4
	/7uOvxwOwqDshWAUdJuJUFUGMMj3yEzjTOifVthdunqgzhMuvEWAJSJXD8c63PU0
	bnPi0A==
Received: from mail-pg1-f198.google.com (mail-pg1-f198.google.com [209.85.215.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4a2w51rg4e-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Tue, 28 Oct 2025 14:37:35 +0000 (GMT)
Received: by mail-pg1-f198.google.com with SMTP id 41be03b00d2f7-b60992e3b27so4483375a12.3
        for <devicetree@vger.kernel.org>; Tue, 28 Oct 2025 07:37:34 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1761662254; x=1762267054;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=/rG46MMpKrRauqQ4haAq1ic3vjVmepSj7Kf1llU8TV0=;
        b=l0FyWsi5VUuzQ8yUsZkvAZKM20tfI9jYxsSq3C8FHAD+z+Q3eQ40VpNGpVMnHeHE1U
         GACrbgtGz6/GAU5aF5LzgaszHMFTgAfHXU6Y8w10ISgMpvUrjl/eQJpa5HG+YkFosHJa
         kr4qFVrp0QlwcYIh4FApXPvHf+t5JCvUq0J9m5Z38FXQPhLKNtoTWdtP09TAplRjQcG7
         7O4fqNcCTjZnDBY77Gfu6JULOTlVbwGtxoryOaPzrSmgsclTyeSBK4P46isRa+RuHOTx
         JlMsyeGFcdiYstCj1W6ktuAF3DcdaAhnqj56RBZRfk0/3AZK0SSo4bS+IFR+zGMb1TnL
         3O1w==
X-Forwarded-Encrypted: i=1; AJvYcCVTOuViNDkWRSlSrocLgy7dVGviY+pGeZzwp3nLpDU5UegJLdT92pTDPx1JTwgJvtURR016lJFqJrBm@vger.kernel.org
X-Gm-Message-State: AOJu0YwREASi4iy2oJqvQCHwC4I2RSITpmD7EJdb57ddeg6AL31Rlx9/
	k0DZ+yV1HAwxQIgQNyo4SBTjx8gYMGmKTO7t3mPtWez57Gb63a2ywmSu2V6ee1kyRzDZfXqZdND
	ZCBIusJkcDVyfuo+0T9INIZRZgiuhWomC9uZSVg3V5i2/vb+sjfejX9N5kTf2Jnqw
X-Gm-Gg: ASbGncsQSs5Jv/55VKU9fPfYhG8rjsQeuVKLHNhcIdiSPzPLrVtTab7Dywu8+BpiYsS
	iDuvhsTz2UHUbNsM9kW9tsXz5g0oFClh5zbu/suSSRoWU3pdgy1vW5iteYA+W/hTJxA7YkooNC4
	/CAgXzVmR1mu6B875xASPpVBwwfdk3q+CnPqaEi4CCpNLHzv5w0Z2jvLE+EPBwpYmA+vmIUPJdF
	7omaaoAaw7b7tqu3v7R85UWAvFiDmY90EKggLTyCwJUgt+hQAMZf/86Idtj1GvDE4+uvDX99x1Q
	xbwzrf+mgzMaGa1c1IGR6w9OE0rNpkp0gXq7epgeafECqupTl8yagncFSufXWpgYzFqBEUUIlOF
	26U0ZZNbt4J+NW1cQvcVQmL+b+eMIbw==
X-Received: by 2002:a17:902:cec8:b0:269:aba0:f0a7 with SMTP id d9443c01a7336-294cb37b846mr42602805ad.2.1761662254221;
        Tue, 28 Oct 2025 07:37:34 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IGNEIHDBFZq7QwFF8HDQMJV1KmXTeW/+0baTbAylgg4BeWPJ1O+kRI2qc8L1PgzmAvM7ihU7w==
X-Received: by 2002:a17:902:cec8:b0:269:aba0:f0a7 with SMTP id d9443c01a7336-294cb37b846mr42602425ad.2.1761662253506;
        Tue, 28 Oct 2025 07:37:33 -0700 (PDT)
Received: from [192.168.1.57] ([98.148.145.183])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-29498e42f34sm117630335ad.106.2025.10.28.07.37.31
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 28 Oct 2025 07:37:33 -0700 (PDT)
Message-ID: <3524e5c8-3848-4554-91cb-f2e034378013@oss.qualcomm.com>
Date: Tue, 28 Oct 2025 07:37:30 -0700
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v3 0/6] media: qcom: camss: Add Kaanapali support
To: Bryan O'Donoghue <bryan.odonoghue@linaro.org>,
        Hangxiang Ma <hangxiang.ma@oss.qualcomm.com>,
        Loic Poulain <loic.poulain@oss.qualcomm.com>,
        Robert Foss
 <rfoss@kernel.org>, Andi Shyti <andi.shyti@kernel.org>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>, Todor Tomov <todor.too@gmail.com>,
        Vladimir Zapolskiy <vladimir.zapolskiy@linaro.org>,
        Mauro Carvalho Chehab <mchehab@kernel.org>
Cc: linux-i2c@vger.kernel.org, linux-arm-msm@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        linux-media@vger.kernel.org, aiqun.yu@oss.qualcomm.com,
        tingwei.zhang@oss.qualcomm.com, trilok.soni@oss.qualcomm.com,
        yijie.yang@oss.qualcomm.com,
        Jingyi Wang <jingyi.wang@oss.qualcomm.com>,
        Atiya Kailany <atiya.kailany@oss.qualcomm.com>
References: <20251023-add-support-for-camss-on-kaanapali-v3-0-02abc9a107bf@oss.qualcomm.com>
 <22f63af8-281d-4783-b770-36cb1feb4732@linaro.org>
Content-Language: en-US
From: Vijay Kumar Tumati <vijay.tumati@oss.qualcomm.com>
In-Reply-To: <22f63af8-281d-4783-b770-36cb1feb4732@linaro.org>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit
X-Proofpoint-GUID: fs6x5HnLRB-EUHCmy5SHf7zvD_f265Ph
X-Authority-Analysis: v=2.4 cv=YMiSCBGx c=1 sm=1 tr=0 ts=6900d52f cx=c_pps
 a=Qgeoaf8Lrialg5Z894R3/Q==:117 a=BiHMn5M11h/vNwziJwzFrg==:17
 a=IkcTkHD0fZMA:10 a=x6icFKpwvdMA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=7mIJVjpd1DSiGoLQp9AA:9 a=3ZKOabzyN94A:10 a=QEXdDO2ut3YA:10
 a=x9snwWr2DeNwDh03kgHS:22
X-Proofpoint-ORIG-GUID: fs6x5HnLRB-EUHCmy5SHf7zvD_f265Ph
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMDI4MDEyMyBTYWx0ZWRfXxd18OMycLcRl
 Mh4/a5rxFd9/fFtj0fpvyvRW7U8i49wypz/s+OJSHuPlfyi+a5fHGQnCfcWIMyxOqZqHwviX3nJ
 YJXxFgxkTabVr8jRen8Vq2s4Ax2VHhX52lyoCALy/f6e5lAJ2CbCRS8uT3edIR0VQynfHb+jX71
 SxofOmtws35obfrZQzRXdNCsVuOUjxq00m/c5HbhLGDUGFtg9ILHqX+f4ZD6amvSitH0Nmh7VDx
 c44kgrfcqdZ6Or3ArNJ9yxta4n6EalOhsPE0xVN2VZoe9Woc2nt4y5yvG1ObaSNlvm0zkVSSXVE
 1uquOfAlkWjnyOWExDXFTtl3uTO1zLcrwVeQWdz6LwR/t8TXSA4gWSqwBymGzGpTXWO0ruPTHnc
 wpKlDRw973KiT8nWyowW3GLPS27wYg==
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-10-28_05,2025-10-22_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 phishscore=0 suspectscore=0 adultscore=0 clxscore=1015 priorityscore=1501
 lowpriorityscore=0 impostorscore=0 spamscore=0 bulkscore=0 malwarescore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2510020000 definitions=main-2510280123


On 10/28/2025 2:34 AM, Bryan O'Donoghue wrote:
> On 23/10/2025 10:14, Hangxiang Ma wrote:
>> - 3 x VFE, 5 RDI per VFE
>> - 2 x VFE Lite, 4 RDI per VFE Lite
>> - 3 x CSID
>> - 2 x CSID Lite
>> - 6 x CSI PHY
>>
>> This series has been tested using the following commands with a
>> downstream driver for S5KJN5 sensor.
>
> A few comments here:
>
> Publish the code ! Its actually in your interests to do so.
Hi Bryan, if you were talking about the sensor driver, sure, we will 
evaluate it. Hope it wouldn't block this series though. Thanks.
>
>>
>> - media-ctl --reset
>> - media-ctl -V '"msm_csiphy2":0[fmt:SGBRG10/4096x3072]'
>> - media-ctl -V '"msm_csid0":0[fmt:SGBRG10/4096x3072]'
>> - media-ctl -V '"msm_vfe0_rdi0":0[fmt:SGBRG10/4096x3072]'
>> - media-ctl -l '"msm_csiphy2":1->"msm_csid0":0[1]'
>> - media-ctl -l '"msm_csid0":1->"msm_vfe0_rdi0":0[1]'
>> - yavta  --capture=20 -I -n 5 -f SGBRG10P -s 4096x3072 -F /dev/video0
>
> Good to see, it would be nice if you guys could also start running the 
> RDI path through libcamera - softisp soon gpuisp and start showing 
> some realworld results.
>
> Not a requirement to merge this series but, a strong suggestion for 
> your own verification purposes.
>
> ---
> bod
Sure, we will start doing that. In fact, we tried and faced some 
dependency issues. Will reach out offline. Thanks.
>
>
>

